/* tng-hub-bricklet
 * Copyright (C) 2020 Olaf Lüke <olaf@tinkerforge.com>
 *
 * hub.c: Driver for TNG HUB 
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

#include "hub.h"

#include "configs/config_hub.h"
#include "bricklib2/os/coop_task.h"
#include "bricklib2/logging/logging.h"
#include "bricklib2/hal/system_timer/system_timer.h"

#include <string.h>

HUB hub;

volatile bool test = false; // TODO: Remove this when we move from 072 to 070

void hub_init(void) {
	memset(&hub, 0, sizeof(HUB));

	__HAL_RCC_GPIOB_CLK_ENABLE();
	__HAL_RCC_GPIOA_CLK_ENABLE();

	// USB Reset
	GPIO_InitTypeDef gpio_out = {
		.Mode  = GPIO_MODE_OUTPUT_PP,
		.Speed = GPIO_SPEED_FREQ_LOW
	};

/*
	gpio_out.Pin = GPIO_PIN_14;
	HAL_GPIO_Init(GPIOA, &gpio_out);
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_14, GPIO_PIN_SET);
*/

	gpio_out.Pin = HUB_SW_24_ENABLE_PIN;
	HAL_GPIO_Init(HUB_SW_24_ENABLE_PORT, &gpio_out);

	gpio_out.Pin = HUB_SW_5_ENABLE_PIN;
	HAL_GPIO_Init(HUB_SW_5_ENABLE_PORT, &gpio_out);

	HAL_GPIO_WritePin(HUB_SW_5_ENABLE_PORT, HUB_SW_5_ENABLE_PIN, GPIO_PIN_SET);
	HAL_GPIO_WritePin(HUB_SW_24_ENABLE_PORT, HUB_SW_24_ENABLE_PIN, GPIO_PIN_SET);
}

inline void hub_tick(void) {

}
