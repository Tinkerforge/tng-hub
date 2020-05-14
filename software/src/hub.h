/* tng-hub-bricklet
 * Copyright (C) 2020 Olaf Lüke <olaf@tinkerforge.com>
 *
 * hub.h: Driver for TNG HUB
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

#ifndef HUB_H
#define HUB_H

#include <stdint.h>
#include <stdbool.h>

#define HUB_MEASURE_PERIOD_US 4  // 250khz
#define HUB_BUFFER_SIZE 256
#define HUB_DMA_BUFFER_SIZE 4096

typedef struct {
    uint64_t buffer_timestamps[256];
    uint8_t  buffer_values[256];
    uint8_t  buffer_start_index;
    uint8_t  buffer_end_index;

    uint8_t last_value;

	uint8_t queue_type;
	uint32_t queue_period;
    bool queue_callback_enabled;

    uint8_t dma_buffer[HUB_DMA_BUFFER_SIZE];
    uint16_t dma_buffer_start_index;
    uint64_t dma_buffer_counter;
    uint64_t dma_buffer_start_time;
} HUB;

extern HUB hub;

void hub_tick(void);
void hub_init(void);
uint8_t hub_get_value(void);

#endif