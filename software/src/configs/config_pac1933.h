/* tng-hub
 * Copyright (C) 2020 Olaf Lüke <olaf@tinkerforge.com>
 *
 * config_pac1933.h: Configuration PAC1933 energy monitor
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

#ifndef CONFIG_PAC1933_H
#define CONFIG_PAC1933_H

#define PAC1933_ADDRESS      0b00111110

#define PAC1933_RCC_CLK      RCC_PERIPHCLK_I2C2
#define PAC1933_SYS_CLK      RCC_I2C2CLKSOURCE_SYSCLK

#define PAC1933_SDA_PIN      GPIO_PIN_11
#define PAC1933_SDA_PORT     GPIOB
#define PAC1933_SDA_AF       GPIO_AF1_I2C2
#define PAC1933_SCL_PIN      GPIO_PIN_13
#define PAC1933_SCL_PORT     GPIOB
#define PAC1933_SCL_AF       GPIO_AF5_I2C2

#define PAC1933_TIMING       0xb0240F13  // 100kHz
//#define PAC1933_SMB_TIMING       0x50330309  // 400kHz
#define PAC1933_INSTANCE     I2C2
#define PAC1933_TIMEOUT      1000

#endif