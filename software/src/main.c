/* tng-hub
 * Copyright (C) 2019-2020 Olaf Lüke <olaf@tinkerforge.com>
 *
 * main.c: Initialization for TNG-HUB
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

#include "configs/config.h"

#include "bricklib2/tng/tng.h"
#include "bricklib2/logging/logging.h"
#include "hub.h"
#include "usb2517.h"
#include "pac1933.h"

int main(void) {
	logging_init();
	logd("Start TNG-HUB\n\r");

	hub_init();
	usb2517_init();
	pac1933_init();

	while(true) {
		hub_tick();
		tng_tick();
		usb2517_tick();
		pac1933_tick();
	}
}
