/* tng-hub
 * Copyright (C) 2020 Olaf Lüke <olaf@tinkerforge.com>
 *
 * usb2517.h: Driver for USB2517 USB hub
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

#ifndef USB2517_H
#define USB2517_H

#include "configs/config.h"

#include <stdint.h>

typedef struct {
	uint16_t vid;
	uint16_t pid;
	uint16_t did;
	uint8_t  cfg[3];
	uint8_t  nrd;
	uint8_t  pds;
	uint8_t  pdb;
	uint8_t  maxps;
	uint8_t  maxpb;
	uint8_t  hcmcs;
	uint8_t  hcmcb;
	uint8_t  pwrt;
	uint16_t langid;
	uint8_t  mfr_str_len;
	uint8_t  prd_str_len;
	uint8_t  ser_str_len;
	char     mfr_str[0x54-0x16];
	char     prd_str[0x92-0x54];
	char     ser_str[0xD0-0x92];
	uint8_t  reserved1[0xF6-0xD0];
	uint8_t  boostup;
	uint8_t  boost75;
	uint8_t  boost40;
	uint8_t  reserved2;
	uint8_t  prtsp;
	uint8_t  prtr12;
	uint8_t  prtr34;
	uint8_t  prtr56;
	uint8_t  prtr7;
	uint8_t  stcd;
} __attribute__((__packed__)) USB2517Memory;

typedef struct {
	SMBUS_HandleTypeDef smbus;
} USB2517;

extern USB2517 usb2517;

void usb2517_tick(void);
void usb2517_init(void);

#endif