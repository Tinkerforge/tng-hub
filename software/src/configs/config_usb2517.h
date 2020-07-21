/* tng-hub
 * Copyright (C) 2020 Olaf Lüke <olaf@tinkerforge.com>
 *
 * config_usb2517.h: Configuration USB2517 USB Hub IC
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

#ifndef CONFIG_USB2517_H
#define CONFIG_USB2517_H

#define USB2517_SMB_ADDRESS      0b01011000

#define USB2517_SMB_RCC_CLK      RCC_PERIPHCLK_I2C1
#define USB2517_SMB_SYS_CLK      RCC_I2C1CLKSOURCE_SYSCLK

#define USB2517_SMB_SDA_PIN      GPIO_PIN_7
#define USB2517_SMB_SDA_PORT     GPIOB
#define USB2517_SMB_SDA_AF       GPIO_AF1_I2C1
#define USB2517_SMB_SCL_PIN      GPIO_PIN_8
#define USB2517_SMB_SCL_PORT     GPIOB
#define USB2517_SMB_SCL_AF       GPIO_AF1_I2C1

#define USB2517_SMB_TIMING       0xb0240F13  // 100kHz
//#define USB2517_SMB_TIMING       0x50330309  // 400kHz
#define USB2517_SMB_INSTANCE     I2C1
#define USB2517_SMB_TIMEOUT      1000

#define USB2517_SMB_IRQ          I2C1_IRQn
#define USB2517_SMB_IRQ_HANDLER  I2C1_IRQHandler

#define USB2517_RESET_PIN        GPIO_PIN_14
#define USB2517_RESET_PORT       GPIOA

#endif