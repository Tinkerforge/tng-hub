/* tng-hub
 * Copyright (C) 2020 Olaf Lüke <olaf@tinkerforge.com>
 *
 * pac1933.c: Driver for PAC1933 energy monitor
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

#include "pac1933.h"

#include "configs/config_pac1933.h"

#include "bricklib2/logging/logging.h"

PAC1933 pac1933;

void pac1933_write_register(uint8_t reg, uint8_t length, uint8_t *data) {
	if(length > 128) {
		return;
	}
	
	uint8_t buffer[129] = {0};
	buffer[0] = reg;
	memcpy(&buffer[1], data, length);

	HAL_StatusTypeDef status;
	if((status = HAL_I2C_Master_Transmit(&pac1933.i2c, PAC1933_ADDRESS, buffer, length+1, PAC1933_TIMEOUT)) != HAL_OK) {
		loge("write HAL_I2C_Master_Transmit Error %d\n\r", status);
	}
}


void pac1933_read_register(uint8_t reg, uint8_t length, uint8_t *data) {
	HAL_StatusTypeDef status;
	if((status = HAL_I2C_Master_Transmit(&pac1933.i2c, PAC1933_ADDRESS, &reg, 1, PAC1933_TIMEOUT)) != HAL_OK) {
		loge("read HAL_I2C_Master_Transmit Error %d\n\r", status);
	}

	if((status = HAL_I2C_Master_Receive(&pac1933.i2c, PAC1933_ADDRESS, data, length, PAC1933_TIMEOUT)) != HAL_OK) {
		loge("read HAL_I2C_Master_Receive Error %d\n\r", status);
	}
}

void pac1933_tick(void) {
	uint8_t send = 0;
	pac1933_write_register(0x00, 1, &send);

	uint8_t vbus[3][2] = {{0, 0}, {0, 0}, {0, 0}};
	pac1933_read_register(0x07, 2, vbus[0]);
	pac1933_read_register(0x08, 2, vbus[1]);
	pac1933_read_register(0x09, 2, vbus[2]);
	uint32_t voltage[3] = {0, 0, 0};

	for(uint8_t ch = 0; ch < 3; ch++) {
		voltage[ch] = (vbus[ch][0] << 8) | vbus[ch][1];
		voltage[ch] = voltage[ch] * 32000/0xFFFF;
	}
	logd("VBus 0: %dmV, VBus 1: %dmV, VBus 2: %dmV\n\r", voltage[0], voltage[1], voltage[2]);

	uint8_t vsense[3][2] = {{0, 0}, {0, 0}, {0, 0}};
	pac1933_read_register(0x0b, 2, vsense[0]);
	pac1933_read_register(0x0c, 2, vsense[1]);
	pac1933_read_register(0x0d, 2, vsense[2]);
	uint32_t current[3] = {0, 0, 0};

	for(uint8_t ch = 0; ch < 3; ch++) {
		current[ch] = (vsense[ch][0] << 8) | vsense[ch][1];
		current[ch] = current[ch] * 5000/0xFFFF;
	}
	logd("VSense 0: %dmA, VSense 1: %dmA, VSense 2: %dmA\n\r", current[0], current[1], current[2]);

	system_timer_sleep_ms(1);

}

void pac1933_init_i2c(void) {
	// Enable clocks
	__HAL_RCC_I2C2_CLK_ENABLE();
	__HAL_RCC_GPIOB_CLK_ENABLE();

	// Configure SDA
	GPIO_InitTypeDef gpio_sda = {
		.Pin       = PAC1933_SDA_PIN,
		.Mode      = GPIO_MODE_AF_OD,
		.Pull      = GPIO_PULLUP,
		.Speed     = GPIO_SPEED_FREQ_HIGH,
		.Alternate = PAC1933_SDA_AF
	};
	HAL_GPIO_Init(PAC1933_SDA_PORT, &gpio_sda);

	// Configure SCL
	GPIO_InitTypeDef gpio_scl = {
		.Pin       = PAC1933_SCL_PIN,
		.Mode      = GPIO_MODE_AF_OD,
		.Pull      = GPIO_PULLUP,
		.Speed     = GPIO_SPEED_FREQ_HIGH,
		.Alternate = PAC1933_SCL_AF
	};
	HAL_GPIO_Init(PAC1933_SCL_PORT, &gpio_scl);

	pac1933.i2c.Instance                  = PAC1933_INSTANCE;
	pac1933.i2c.Init.Timing               = 0x00E0D3FF; //PAC1933_TIMING;
	pac1933.i2c.Init.DualAddressMode      = I2C_DUALADDRESS_DISABLE;
	pac1933.i2c.Init.OwnAddress1          = 0x00;
	pac1933.i2c.Init.AddressingMode       = I2C_ADDRESSINGMODE_7BIT;
	pac1933.i2c.Init.OwnAddress2          = 0x00;
	pac1933.i2c.Init.GeneralCallMode      = I2C_GENERALCALL_DISABLE;
	pac1933.i2c.Init.NoStretchMode        = I2C_NOSTRETCH_DISABLE;  

	HAL_StatusTypeDef status;
	if((status = HAL_I2C_Init(&pac1933.i2c)) != HAL_OK) {
		loge("HAL_I2C_Init Error %d\n\r", status);
	}

	HAL_I2CEx_ConfigAnalogFilter(&pac1933.i2c, I2C_ANALOGFILTER_ENABLE);
}

void pac1933_init(void) {
	logd("pac1933_init\n\r");
	pac1933_init_i2c();

	uint8_t ids[3] = {0, 0, 0};
	logd("pac1933_read_register fd\n\r");
	pac1933_read_register(0xFD, 1, &ids[0]);
	logd("pac1933_read_register fe\n\r");
	pac1933_read_register(0xFE, 1, &ids[1]);
	logd("pac1933_read_register ff\n\r");
	pac1933_read_register(0xFF, 1, &ids[2]);

	logd("PAC 1933: Product ID %x, Manufacturer ID %x, Revision ID %x\n\r", ids[0], ids[1], ids[2]);
}