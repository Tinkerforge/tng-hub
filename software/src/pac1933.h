/* tng-hub
 * Copyright (C) 2020 Olaf Lüke <olaf@tinkerforge.com>
 *
 * pac1933.h: Driver for PAC1933 energy monitor
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

#ifndef PAC1933_H
#define PAC1933_H

#include "configs/config.h"

#include <stdint.h>

typedef struct {
	I2C_HandleTypeDef i2c;
} PAC1933;

extern PAC1933 pac1933;

void pac1933_tick(void);
void pac1933_init(void);

#endif