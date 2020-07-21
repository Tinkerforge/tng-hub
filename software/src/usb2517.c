/* tng-hub
 * Copyright (C) 2020 Olaf Lüke <olaf@tinkerforge.com>
 *
 * usb2517.c: Driver for USB2517 USB hub
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

#include "usb2517.h"

#include "configs/config_usb2517.h"

#include "bricklib2/logging/logging.h"

#define USB_UTF16_LE(ascii) (ascii), 0

#define USB2517_MFR_STR \
	USB_UTF16_LE('T'), USB_UTF16_LE('i'), USB_UTF16_LE('n'), USB_UTF16_LE('k'), USB_UTF16_LE('e'), USB_UTF16_LE('r'), USB_UTF16_LE('f'), USB_UTF16_LE('o'), \
	USB_UTF16_LE('r'), USB_UTF16_LE('g'), USB_UTF16_LE('e'), USB_UTF16_LE(' '), USB_UTF16_LE('G'), USB_UTF16_LE('m'), USB_UTF16_LE('b'), USB_UTF16_LE('H'),

#define USB2517_PRD_STR \
	USB_UTF16_LE('T'), USB_UTF16_LE('N'), USB_UTF16_LE('G'), USB_UTF16_LE('-'), USB_UTF16_LE('H'), USB_UTF16_LE('U'), USB_UTF16_LE('B'), USB_UTF16_LE(' '), \
	USB_UTF16_LE('('), USB_UTF16_LE('7'), USB_UTF16_LE(' '), USB_UTF16_LE('p'), USB_UTF16_LE('o'), USB_UTF16_LE('r'), USB_UTF16_LE('t'), USB_UTF16_LE(')'),

USB2517Memory usb2517_memory = {
	.vid         = 0x4223,              // VID  (0x0424)  // TODO: UPDATE ME!!!
	.pid         = 0x2517,              // PID            // TODO: UPDATE ME!!!
	.did         = 0x0000,              // DID
	.cfg         = {0x9b, 0x20, 0x01},  // Config Data 1-3
	.nrd         = 0x00,                // Non-Removable Devices
	.pds         = 0x00,                // Port Disable (Self)
	.pdb         = 0x00,                // Port Disable (Bus)
	.maxps       = 0x01,                // Max Power (Self)
	.maxpb       = 0x32,                // Max Power (Bus)
	.hcmcs       = 0x01,                // Hub Controller Max Current (Self)
	.hcmcb       = 0x32,                // Hub Controller Max Current (Bus)
	.pwrt        = 0x32,                // Power-on Time
	.langid      = 0x0409,              // Language ID (EN US)
	.mfr_str_len = 16,                  // Manucacturer String Length
	.prd_str_len = 16,                  // Product String Length
	.ser_str_len = 0,                   // Serial Number String Length
	.mfr_str     = {USB2517_MFR_STR},   // Manufacturer String
	.prd_str     = {USB2517_PRD_STR},   // Product String
	.ser_str     = "",                  // Serial Number
	.boostup     = 0x00,                // Boost Up
	.boost75     = 0x00,                // Boost 7:5
	.boost40     = 0x00,                // Boost 4:0
	.prtsp       = 0x00,                // Port Swap
	.prtr12      = 0x00,                // Port Remap 12
	.prtr34      = 0x00,                // Port Remap 34
	.prtr56      = 0x00,                // Port Remap 56
	.prtr7       = 0x00,                // Port Remap 7
	.stcd        = 0x01                 // Status/Command (-> attach)
};

USB2517 usb2517;

void USB2517_SMB_IRQ_HANDLER(void) {
	HAL_SMBUS_EV_IRQHandler(&usb2517.smbus);
	HAL_SMBUS_ER_IRQHandler(&usb2517.smbus);
}

void usb2517_tick(void) {

}

void usb2517_init_smbus(void) {
	// Enable clocks
	RCC_PeriphCLKInitTypeDef rcc = {
		.PeriphClockSelection = USB2517_SMB_RCC_CLK,
		.I2c1ClockSelection = USB2517_SMB_SYS_CLK
	};
	HAL_RCCEx_PeriphCLKConfig(&rcc);
	__HAL_RCC_I2C1_CLK_ENABLE();
	__HAL_RCC_GPIOB_CLK_ENABLE();

	// Configure SDA
	GPIO_InitTypeDef gpio_sda = {
		.Pin       = USB2517_SMB_SDA_PIN,
		.Mode      = GPIO_MODE_AF_OD,
		.Pull      = GPIO_PULLUP,
		.Speed     = GPIO_SPEED_FREQ_HIGH,
		.Alternate = USB2517_SMB_SDA_AF
	};
	HAL_GPIO_Init(USB2517_SMB_SDA_PORT, &gpio_sda);

	// Configure SCL
	GPIO_InitTypeDef gpio_scl = {
		.Pin       = USB2517_SMB_SCL_PIN,
		.Mode      = GPIO_MODE_AF_OD,
		.Pull      = GPIO_PULLUP,
		.Speed     = GPIO_SPEED_FREQ_HIGH,
		.Alternate = USB2517_SMB_SCL_AF
	};
	HAL_GPIO_Init(USB2517_SMB_SCL_PORT, &gpio_scl);

	HAL_NVIC_SetPriority(USB2517_SMB_IRQ, 0, 0);
	HAL_NVIC_EnableIRQ(USB2517_SMB_IRQ);

	usb2517.smbus.Instance                  = USB2517_SMB_INSTANCE;
	usb2517.smbus.Init.Timing               = USB2517_SMB_TIMING;
	usb2517.smbus.Init.AnalogFilter         = SMBUS_ANALOGFILTER_ENABLE;
	usb2517.smbus.Init.OwnAddress1          = 0x00;
	usb2517.smbus.Init.AddressingMode       = SMBUS_ADDRESSINGMODE_7BIT;
	usb2517.smbus.Init.DualAddressMode      = SMBUS_DUALADDRESS_DISABLE;
	usb2517.smbus.Init.OwnAddress2          = 0x00;
	usb2517.smbus.Init.GeneralCallMode      = SMBUS_GENERALCALL_DISABLE;
	usb2517.smbus.Init.NoStretchMode        = SMBUS_NOSTRETCH_DISABLE;  
	usb2517.smbus.Init.PacketErrorCheckMode = SMBUS_PEC_DISABLE;
	usb2517.smbus.Init.PeripheralMode       = SMBUS_PERIPHERAL_MODE_SMBUS_HOST;
	usb2517.smbus.Init.SMBusTimeout         = 0;

	HAL_StatusTypeDef status;
	if((status = HAL_SMBUS_Init(&usb2517.smbus)) != HAL_OK) {
		loge("HAL_SMBUS_Init Error %d\n\r", status);
	}
}

void usb2517_init(void) {
	usb2517_init_smbus();

	// USB Reset
	__HAL_RCC_GPIOA_CLK_ENABLE();
	GPIO_InitTypeDef gpio_usb_reset = {
		.Pin   = USB2517_RESET_PIN,
		.Mode  = GPIO_MODE_OUTPUT_PP,
		.Speed = GPIO_SPEED_FREQ_LOW
	};
	HAL_GPIO_Init(USB2517_RESET_PORT, &gpio_usb_reset);

	HAL_GPIO_WritePin(USB2517_RESET_PORT, USB2517_RESET_PIN, GPIO_PIN_RESET);
	system_timer_sleep_ms(10);
	HAL_GPIO_WritePin(USB2517_RESET_PORT, USB2517_RESET_PIN, GPIO_PIN_SET);
	system_timer_sleep_ms(10);

	logd("Start initial USB hub code load (%d bytes)\n\r", sizeof(USB2517Memory));
	for(uint8_t i = 0; i < sizeof(USB2517Memory)/16; i++) {
		uint8_t data[18] = {i*16, 16};
		memcpy(&data[2], ((uint8_t *)&usb2517_memory) + i*16, 16);
		HAL_StatusTypeDef status;
		if((status = HAL_SMBUS_Master_Transmit_IT(&usb2517.smbus, USB2517_SMB_ADDRESS, data, 18, SMBUS_FIRST_AND_LAST_FRAME_NO_PEC)) != HAL_OK) {
			loge("HAL_SMBUS_Master_Transmit_IT Error %d\n\r", status);
		}

		// TODO: Add Timeout?
		while(HAL_SMBUS_GetState(&usb2517.smbus) != HAL_SMBUS_STATE_READY);
	}
}