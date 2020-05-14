/* tng-hub
 * Copyright (C) 2020 Olaf Lüke <olaf@tinkerforge.com>
 *
 * communication.h: TFP protocol message handling
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

#ifndef COMMUNICATION_H
#define COMMUNICATION_H

#include <stdint.h>
#include <stdbool.h>

#include "bricklib2/protocols/tfp/tfp.h"
#include "bricklib2/tng/tng.h"

// Default functions
TNGHandleMessageResponse handle_message(const void *data, void *response);
void communication_tick(void);
void communication_init(void);

// Constants
#define HUB_CHANNEL_0 0
#define HUB_CHANNEL_1 1
#define HUB_CHANNEL_2 2
#define HUB_CHANNEL_3 3
#define HUB_CHANNEL_4 4
#define HUB_CHANNEL_5 5
#define HUB_CHANNEL_6 6
#define HUB_CHANNEL_7 7

#define HUB_QUEUE_TYPE_EDGE_TRIGGERED 0
#define HUB_QUEUE_TYPE_FIXED_PERIOD 1

#define HUB_COPY_STATUS_OK 0
#define HUB_COPY_STATUS_DEVICE_IDENTIFIER_INCORRECT 1
#define HUB_COPY_STATUS_MAGIC_NUMBER_INCORRECT 2
#define HUB_COPY_STATUS_LENGTH_MALFORMED 3
#define HUB_COPY_STATUS_CRC_MISMATCH 4

// Function and callback IDs and structs
#define FID_GET_VALUE 1
#define FID_GET_SELECTED_VALUE 2
#define FID_GET_QUEUE_VALUE 3
#define FID_SET_QUEUE_CONFIGURATION 4
#define FID_GET_QUEUE_CONFIGURATION 5
#define FID_SET_QUEUE_VALUE_CALLBACK_CONFIGURATION 6
#define FID_GET_QUEUE_VALUE_CALLBACK_CONFIGURATION 7

#define FID_CALLBACK_EDGE_TRIGGERED_VALUE 8
#define FID_CALLBACK_FIXED_PERIOD_VALUE_LOW_LEVEL 9

typedef struct {
	TFPMessageHeader header;
} __attribute__((__packed__)) GetValue;

typedef struct {
	TFPMessageHeader header;
	uint64_t timestamp;
	uint8_t value[1];
} __attribute__((__packed__)) GetValue_Response;

typedef struct {
	TFPMessageHeader header;
	uint8_t channel;
} __attribute__((__packed__)) GetSelectedValue;

typedef struct {
	TFPMessageHeader header;
	uint64_t timestamp;
	bool value;
} __attribute__((__packed__)) GetSelectedValue_Response;

typedef struct {
	TFPMessageHeader header;
} __attribute__((__packed__)) GetQueueValue;

typedef struct {
	TFPMessageHeader header;
	uint64_t timestamp;
	uint8_t value[1];
	uint16_t queue_size_remaining;
} __attribute__((__packed__)) GetQueueValue_Response;

typedef struct {
	TFPMessageHeader header;
	uint8_t queue_type;
	uint32_t period;
} __attribute__((__packed__)) SetQueueConfiguration;

typedef struct {
	TFPMessageHeader header;
} __attribute__((__packed__)) GetQueueConfiguration;

typedef struct {
	TFPMessageHeader header;
	uint8_t queue_type;
	uint32_t period;
} __attribute__((__packed__)) GetQueueConfiguration_Response;

typedef struct {
	TFPMessageHeader header;
	bool enable;
} __attribute__((__packed__)) SetQueueValueCallbackConfiguration;

typedef struct {
	TFPMessageHeader header;
} __attribute__((__packed__)) GetQueueValueCallbackConfiguration;

typedef struct {
	TFPMessageHeader header;
	bool enabled;
} __attribute__((__packed__)) GetQueueValueCallbackConfiguration_Response;

typedef struct {
	TFPMessageHeader header;
	uint64_t timestamp;
	uint8_t value[1];
	uint16_t queue_size_remaining;
} __attribute__((__packed__)) EdgeTriggeredValue_Callback;

typedef struct {
	TFPMessageHeader header;
	uint64_t timestamp;
	uint16_t values_length;
	uint16_t values_chunk_offset;
	uint8_t values_chunk_data[52];
} __attribute__((__packed__)) FixedPeriodValueLowLevel_Callback;


// Function prototypes
TNGHandleMessageResponse get_value(const GetValue *data, GetValue_Response *response);
TNGHandleMessageResponse get_selected_value(const GetSelectedValue *data, GetSelectedValue_Response *response);
TNGHandleMessageResponse get_queue_value(const GetQueueValue *data, GetQueueValue_Response *response);
TNGHandleMessageResponse set_queue_configuration(const SetQueueConfiguration *data);
TNGHandleMessageResponse get_queue_configuration(const GetQueueConfiguration *data, GetQueueConfiguration_Response *response);
TNGHandleMessageResponse set_queue_value_callback_configuration(const SetQueueValueCallbackConfiguration *data);
TNGHandleMessageResponse get_queue_value_callback_configuration(const GetQueueValueCallbackConfiguration *data, GetQueueValueCallbackConfiguration_Response *response);

// Callbacks
bool handle_edge_triggered_value_callback(void);
bool handle_fixed_period_value_low_level_callback(void);

#define COMMUNICATION_CALLBACK_TICK_WAIT_MS 1
#define COMMUNICATION_CALLBACK_HANDLER_NUM 2
#define COMMUNICATION_CALLBACK_LIST_INIT \
	handle_edge_triggered_value_callback, \
	handle_fixed_period_value_low_level_callback, \


#endif
