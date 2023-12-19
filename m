Return-Path: <devicetree+bounces-27054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B8D81910E
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 20:54:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A54F286F35
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 19:54:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73C2F39857;
	Tue, 19 Dec 2023 19:54:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8492439864
	for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 19:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rFgAP-0002WC-OQ; Tue, 19 Dec 2023 20:54:13 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rFgAM-0005Sc-UO; Tue, 19 Dec 2023 20:54:12 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rFgAN-007pE3-U7; Tue, 19 Dec 2023 20:54:11 +0100
Date: Tue, 19 Dec 2023 20:54:11 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Henrik Rydberg <rydberg@bitmath.org>, linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Jeff LaBundy <jeff@labundy.com>,
	catalin.popescu@leica-geosystems.com,
	mark.satterthwaite@touchnetix.com, bartp@baasheep.co.uk,
	hannah.rossiter@touchnetix.com,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Gregory Clement <gregory.clement@bootlin.com>,
	bsp-development.geo@leica-geosystems.com
Subject: Re: [PATCH v5 3/3] Input: Add TouchNetix axiom i2c touchscreen driver
Message-ID: <20231219195411.nlbeo3hvvem6cmgm@pengutronix.de>
References: <20231211121430.1689139-1-kamel.bouhara@bootlin.com>
 <20231211121430.1689139-4-kamel.bouhara@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231211121430.1689139-4-kamel.bouhara@bootlin.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi Kamel,

On 23-12-11, Kamel Bouhara wrote:
> Add a new driver for the TouchNetix's axiom family of
> touchscreen controllers. This driver only supports i2c
> and can be later adapted for SPI and USB support.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
>  MAINTAINERS                                  |   1 +
>  drivers/input/touchscreen/Kconfig            |  12 +
>  drivers/input/touchscreen/Makefile           |   1 +
>  drivers/input/touchscreen/touchnetix_axiom.c | 667 +++++++++++++++++++
>  4 files changed, 681 insertions(+)
>  create mode 100644 drivers/input/touchscreen/touchnetix_axiom.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 4752d8436dbb..337ddac6c74b 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -21436,6 +21436,7 @@ M:	Kamel Bouhara <kamel.bouhara@bootlin.com>
>  L:	linux-input@vger.kernel.org
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/input/touchscreen/touchnetix,ax54a.yaml
> +F:	drivers/input/touchscreen/touchnetix_axiom.c
>  
>  THUNDERBOLT DMA TRAFFIC TEST DRIVER
>  M:	Isaac Hazan <isaac.hazan@intel.com>
> diff --git a/drivers/input/touchscreen/Kconfig b/drivers/input/touchscreen/Kconfig
> index e3e2324547b9..f36bee8d8696 100644
> --- a/drivers/input/touchscreen/Kconfig
> +++ b/drivers/input/touchscreen/Kconfig
> @@ -803,6 +803,18 @@ config TOUCHSCREEN_MIGOR
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called migor_ts.
>  
> +config TOUCHSCREEN_TOUCHNETIX_AXIOM
> +	tristate "TouchNetix AXIOM based touchscreen controllers"
> +	depends on I2C
> +	help
> +	  Say Y here if you have a axiom touchscreen connected to
> +	  your system.
> +
> +	  If unsure, say N.
> +
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called axiom.
> +
>  config TOUCHSCREEN_TOUCHRIGHT
>  	tristate "Touchright serial touchscreen"
>  	select SERIO
> diff --git a/drivers/input/touchscreen/Makefile b/drivers/input/touchscreen/Makefile
> index 62bd24f3ac8e..8e32a2df5e18 100644
> --- a/drivers/input/touchscreen/Makefile
> +++ b/drivers/input/touchscreen/Makefile
> @@ -88,6 +88,7 @@ obj-$(CONFIG_TOUCHSCREEN_SUR40)		+= sur40.o
>  obj-$(CONFIG_TOUCHSCREEN_SURFACE3_SPI)	+= surface3_spi.o
>  obj-$(CONFIG_TOUCHSCREEN_TI_AM335X_TSC)	+= ti_am335x_tsc.o
>  obj-$(CONFIG_TOUCHSCREEN_TOUCHIT213)	+= touchit213.o
> +obj-$(CONFIG_TOUCHSCREEN_TOUCHNETIX_AXIOM)	+= touchnetix_axiom.o
>  obj-$(CONFIG_TOUCHSCREEN_TOUCHRIGHT)	+= touchright.o
>  obj-$(CONFIG_TOUCHSCREEN_TOUCHWIN)	+= touchwin.o
>  obj-$(CONFIG_TOUCHSCREEN_TS4800)	+= ts4800-ts.o
> diff --git a/drivers/input/touchscreen/touchnetix_axiom.c b/drivers/input/touchscreen/touchnetix_axiom.c
> new file mode 100644
> index 000000000000..4ade2d1adba0
> --- /dev/null
> +++ b/drivers/input/touchscreen/touchnetix_axiom.c
> @@ -0,0 +1,667 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * TouchNetix axiom Touchscreen Driver
> + *
> + * Copyright (C) 2020-2023 TouchNetix Ltd.
> + *
> + * Author(s): Bart Prescott <bartp@baasheep.co.uk>
> + *            Pedro Torruella <pedro.torruella@touchnetix.com>
> + *            Mark Satterthwaite <mark.satterthwaite@touchnetix.com>
> + *            Hannah Rossiter <hannah.rossiter@touchnetix.com>
> + *            Kamel Bouhara <kamel.bouhara@bootlin.com>
> + *
> + */
> +#include <linux/bitfield.h>
> +#include <linux/crc16.h>
> +#include <linux/delay.h>
> +#include <linux/device.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/i2c.h>
> +#include <linux/input.h>
> +#include <linux/input/mt.h>
> +#include <linux/interrupt.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +
> +#define AXIOM_PROX_LEVEL		-128
> +/*
> + * Register group u31 has 2 pages for usage table entries.
> + */
> +#define AXIOM_U31_MAX_USAGES		((2 * AXIOM_COMMS_PAGE_SIZE) / AXIOM_U31_BYTES_PER_USAGE)
> +#define AXIOM_U31_BYTES_PER_USAGE	6
> +#define AXIOM_U31_PAGE0_LENGTH		0x0C
> +#define AXIOM_U31_BOOTMODE_MASK		BIT(7)
> +#define AXIOM_U31_DEVID_MASK		GENMASK(14, 0)
> +
> +#define AXIOM_CMD_HEADER_READ_MASK	BIT(15)
> +#define AXIOM_U41_MAX_TARGETS		10
> +
> +#define AXIOM_U46_AUX_CHANNELS		4
> +#define AXIOM_U46_AUX_MASK		GENMASK(11, 0)
> +
> +#define AXIOM_COMMS_MAX_USAGE_PAGES	3
> +#define AXIOM_COMMS_PAGE_SIZE		256
> +#define AXIOM_COMMS_REPORT_LEN_MASK	GENMASK(6, 0)
> +
> +#define AXIOM_REPORT_USAGE_ID		0x34
> +#define AXIOM_DEVINFO_USAGE_ID		0x31
> +#define AXIOM_USAGE_2HB_REPORT_ID	0x01
> +#define AXIOM_USAGE_2AUX_REPORT_ID	0x46
> +#define AXIOM_USAGE_2DCTS_REPORT_ID	0x41
> +
> +#define AXIOM_PAGE_OFFSET_MASK		GENMASK(6, 0)
> +
> +struct axiom_devinfo {
> +	u16 device_id;
> +	u8 fw_minor;
> +	u8 fw_major;
> +	u8 fw_info_extra;
> +	u8 tcp_revision;
> +	u8 bootloader_fw_minor;
> +	u8 bootloader_fw_major;
> +	u16 jedec_id;
> +	u8 num_usages;
> +} __packed;
> +
> +/*
> + * Describes parameters of a specific usage, essentially a single element of
> + * the "Usage Table"
> + */
> +struct axiom_usage_entry {
> +	u8 id;
> +	u8 is_report;
> +	u8 start_page;
> +	u8 num_pages;
> +};
> +
> +/*
> + * Represents state of a touch or target when detected prior a touch (eg.
> + * hover or proximity events).
> + */
> +enum axiom_target_state {
> +	AXIOM_TARGET_STATE_NOT_PRESENT = 0,
> +	AXIOM_TARGET_STATE_PROX = 1,
> +	AXIOM_TARGET_STATE_HOVER = 2,
> +	AXIOM_TARGET_STATE_TOUCHING = 3,
> +};
> +
> +struct axiom_u41_target {
> +	enum axiom_target_state state;
> +	u16 x;
> +	u16 y;
> +	s8 z;
> +	bool insert;
> +	bool touch;
> +};
> +
> +struct axiom_target_report {
> +	u8 index;
> +	u8 present;
> +	u16 x;
> +	u16 y;
> +	s8 z;
> +};
> +
> +struct axiom_cmd_header {
> +	__le16 target_address;
> +	__le16 length;
> +} __packed;
> +
> +struct axiom_data {
> +	struct axiom_devinfo devinfo;
> +	struct device *dev;
> +	struct gpio_desc *reset_gpio;
> +	struct i2c_client *client;
> +	struct input_dev *input_dev;
> +	u32 max_report_len;
> +	char rx_buf[AXIOM_COMMS_MAX_USAGE_PAGES * AXIOM_COMMS_PAGE_SIZE];
> +	struct axiom_u41_target targets[AXIOM_U41_MAX_TARGETS];
> +	struct axiom_usage_entry usage_table[AXIOM_U31_MAX_USAGES];

Still, why do you not use 0xff as max value? This elimates looping over
the usage table within axiom_usage_to_target_address() since you can
use the usage directly via ts->usage_table[usage] IIRC.

> +	bool usage_table_populated;
> +	struct regulator *vdda;
> +	struct regulator *vddi;
> +};
> +
> +/*
> + * axiom devices are typically configured to report
> + * touches at a rate of 100Hz (10ms). For systems
> + * that require polling for reports.
> + * When reports are polled, it will be expected to
> + * occasionally observe the overflow bit being set
> + * in the reports. This indicates that reports are not
> + * being read fast enough.
> + */
> +#define POLL_INTERVAL_DEFAULT_MS 10
> +
> +/* Translate usage/page/offset triplet into physical address. */
> +static u16 axiom_usage_to_target_address(struct axiom_data *ts, char usage, char page,
> +					 char offset)
> +{
> +	u32 i;
> +
> +	/* At the moment the convention is that u31 is always at physical address 0x0 */
> +	if (!ts->usage_table_populated) {
> +		if (usage == AXIOM_DEVINFO_USAGE_ID)
> +			return ((page << 8) + offset);
> +		else
> +			return 0xffff;
> +	}
> +
> +	for (i = 0; i < ts->devinfo.num_usages; i++) {
> +		if (ts->usage_table[i].id != usage)
> +			continue;
> +
> +		if (page >= ts->usage_table[i].num_pages) {
> +			dev_err(ts->dev, "Invalid usage table! usage: %u, page: %u, offset: %u\n",
> +				usage, page, offset);
> +			return 0xffff;
> +		}
> +		break;
> +	}
> +
> +	return ((ts->usage_table[i].start_page + page) << 8) + offset;
> +}
> +
> +static int axiom_i2c_read(struct i2c_client *client, u8 usage, u8 page, u8 *buf, u16 len)
> +{
> +	struct axiom_data *ts = i2c_get_clientdata(client);
> +	struct axiom_cmd_header cmd_header;
> +	struct i2c_msg msg[2];
> +	int error;
> +
> +	cmd_header.target_address = cpu_to_le16(axiom_usage_to_target_address(ts, usage, page, 0));
> +	cmd_header.length = cpu_to_le16(len | AXIOM_CMD_HEADER_READ_MASK);
> +
> +	msg[0].addr = client->addr;
> +	msg[0].flags = 0;
> +	msg[0].len = sizeof(cmd_header);
> +	msg[0].buf = (u8 *)&cmd_header;
> +
> +	msg[1].addr = client->addr;
> +	msg[1].flags = I2C_M_RD;
> +	msg[1].len = len;
> +	msg[1].buf = (char *)buf;
> +
> +	error = i2c_transfer(client->adapter, msg, ARRAY_SIZE(msg));
> +	if (error != ARRAY_SIZE(msg)) {
> +		dev_err(&client->dev,
> +			"Failed reading usage %#x page %#x, error=%d\n",
> +			usage, page, error);
> +		return -EIO;
> +	}
> +
> +	usleep_range(250, 300);
> +
> +	return 0;
> +}
> +
> +/*
> + * One of the main purposes for reading the usage table is to identify
> + * which usages reside at which target address.
> + * When performing subsequent reads or writes to AXIOM, the target address
> + * is used to specify which usage is being accessed.
> + * Consider the following discovery code which will build up the usage table.
> + */
> +static u32 axiom_populate_usage_table(struct axiom_data *ts)
> +{
> +	struct axiom_usage_entry *usage_table;
> +	u32 max_report_len = 0;
> +	char *rx_data = ts->rx_buf;
> +	u32 usage_id;
> +	int error;
> +
> +	usage_table = ts->usage_table;
> +
> +	/* Read the second page of usage u31 to get the usage table */
> +	error = axiom_i2c_read(ts->client, AXIOM_DEVINFO_USAGE_ID, 1, rx_data,
> +			       (AXIOM_U31_BYTES_PER_USAGE * ts->devinfo.num_usages));
> +	if (error)
> +		return error;
> +
> +	for (usage_id = 0; usage_id < ts->devinfo.num_usages; usage_id++) {
> +		u16 offset = (usage_id * AXIOM_U31_BYTES_PER_USAGE);
> +		u8 id = rx_data[offset + 0];
> +		u8 start_page = rx_data[offset + 1];
> +		u8 num_pages = rx_data[offset + 2];
> +		u32 max_offset = ((rx_data[offset + 3] & AXIOM_PAGE_OFFSET_MASK) + 1) * 2;
> +
> +		if (!num_pages)
> +			usage_table[usage_id].is_report = true;
> +
> +		/* Store the entry into the usage table */
> +		usage_table[usage_id].id = id;
> +		usage_table[usage_id].start_page = start_page;
> +		usage_table[usage_id].num_pages = num_pages;
> +
> +		dev_dbg(ts->dev, "Usage u%02x Info: %*ph\n", id,
> +			AXIOM_U31_BYTES_PER_USAGE, &rx_data[offset]);
> +
> +		/* Identify the max report length the module will receive */
> +		if (usage_table[usage_id].is_report && max_offset > max_report_len)
> +			max_report_len = max_offset;
> +	}
> +
> +	ts->usage_table_populated = true;
> +
> +	return max_report_len;
> +}
> +
> +static int axiom_discover(struct axiom_data *ts)
> +{
> +	int error;
> +
> +	/*
> +	 * Fetch the first page of usage u31 to get the
> +	 * device information and the number of usages
> +	 */
> +	error = axiom_i2c_read(ts->client, AXIOM_DEVINFO_USAGE_ID, 0, (char *)&ts->devinfo,
> +			       AXIOM_U31_PAGE0_LENGTH);
> +	if (error)
> +		return error;
> +
> +	dev_dbg(ts->dev, "  Boot Mode      : %s\n",
> +		FIELD_GET(AXIOM_U31_BOOTMODE_MASK, ts->devinfo.device_id) ? "BLP" : "TCP");
> +	dev_dbg(ts->dev, "  Device ID      : %04lx\n",
> +		FIELD_GET(AXIOM_U31_DEVID_MASK,	ts->devinfo.device_id));
> +	dev_dbg(ts->dev, "  Firmware Rev   : %02x.%02x\n", ts->devinfo.fw_major,
> +		ts->devinfo.fw_minor);
> +	dev_dbg(ts->dev, "  Bootloader Rev : %02x.%02x\n", ts->devinfo.bootloader_fw_major,
> +		ts->devinfo.bootloader_fw_minor);
> +	dev_dbg(ts->dev, "  FW Extra Info  : %04x\n", ts->devinfo.fw_info_extra);
> +	dev_dbg(ts->dev, "  Silicon        : %04x\n", ts->devinfo.jedec_id);
> +	dev_dbg(ts->dev, "  Number usages        : %04x\n", ts->devinfo.num_usages);
> +
> +	ts->max_report_len = axiom_populate_usage_table(ts);
> +	if (!ts->max_report_len || !ts->devinfo.num_usages)
> +		return -EINVAL;
> +
> +	dev_dbg(ts->dev, "Max Report Length: %u\n", ts->max_report_len);
> +
> +	return 0;
> +}
> +
> +/*
> + * Support function to axiom_process_u41_report.
> + * Generates input-subsystem events for every target.
> + * After calling this function the caller shall issue
> + * a Sync to the input sub-system.
> + */
> +static bool axiom_process_u41_report_target(struct axiom_data *ts,
> +					    struct axiom_target_report *target)
> +{
> +	struct input_dev *input_dev = ts->input_dev;
> +	struct axiom_u41_target *target_prev_state;
> +	enum axiom_target_state current_state;
> +	bool update = false;
> +	int slot;
> +
> +	/* Verify the target index */
> +	if (target->index >= AXIOM_U41_MAX_TARGETS) {
> +		dev_dbg(ts->dev, "Invalid target index! %u\n", target->index);
> +		return false;
> +	}
> +
> +	target_prev_state = &ts->targets[target->index];
> +
> +	current_state = AXIOM_TARGET_STATE_NOT_PRESENT;
> +
> +	if (target->present) {
> +		if (target->z >= 0)
> +			current_state = AXIOM_TARGET_STATE_TOUCHING;
> +		else if (target->z > AXIOM_PROX_LEVEL && target->z < 0)
> +			current_state = AXIOM_TARGET_STATE_HOVER;
> +		else if (target->z == AXIOM_PROX_LEVEL)
> +			current_state = AXIOM_TARGET_STATE_PROX;
> +	}
> +
> +	if (target_prev_state->state == current_state &&
> +	    target_prev_state->x == target->x &&
> +	    target_prev_state->y == target->y &&
> +	    target_prev_state->z == target->z) {
> +		return false;
> +	}
> +
> +	slot = target->index;
> +
> +	dev_dbg(ts->dev, "U41 Target T%u, slot:%u present:%u, x:%u, y:%u, z:%d\n",
> +		target->index, slot, target->present,
> +		target->x, target->y, target->z);
> +
> +	switch (current_state) {
> +	case AXIOM_TARGET_STATE_NOT_PRESENT:
> +	case AXIOM_TARGET_STATE_PROX:
> +		if (!target_prev_state->insert)
> +			break;
> +		update = true;
> +		target_prev_state->insert = false;
> +		input_mt_slot(input_dev, slot);
> +
> +		if (!slot)
> +			input_report_key(input_dev, BTN_TOUCH, 0);
> +
> +		input_mt_report_slot_inactive(input_dev);
> +		/*
> +		 * make sure the previous coordinates are
> +		 * all off screen when the finger comes back
> +		 */
> +		target->x = 65535;
> +		target->y = 65535;
> +		target->z = AXIOM_PROX_LEVEL;
> +		break;
> +	case AXIOM_TARGET_STATE_HOVER:
> +	case AXIOM_TARGET_STATE_TOUCHING:
> +		target_prev_state->insert = true;
> +		update = true;
> +		input_mt_slot(input_dev, slot);
> +		input_report_abs(input_dev, ABS_MT_TRACKING_ID, slot);
> +		input_report_abs(input_dev, ABS_MT_POSITION_X, target->x);
> +		input_report_abs(input_dev, ABS_X, target->x);
> +		input_report_abs(input_dev, ABS_MT_POSITION_Y, target->y);
> +		input_report_abs(input_dev, ABS_Y, target->y);
> +
> +		if (current_state == AXIOM_TARGET_STATE_TOUCHING) {
> +			input_report_abs(input_dev, ABS_MT_DISTANCE, 0);
> +			input_report_abs(input_dev, ABS_DISTANCE, 0);
> +			input_report_abs(input_dev, ABS_MT_PRESSURE, target->z);
> +			input_report_abs(input_dev, ABS_PRESSURE, target->z);
> +		} else {
> +			input_report_abs(input_dev, ABS_MT_DISTANCE, -target->z);
> +			input_report_abs(input_dev, ABS_DISTANCE, -target->z);
> +			input_report_abs(input_dev, ABS_MT_PRESSURE, 0);
> +			input_report_abs(input_dev, ABS_PRESSURE, 0);
> +		}
> +
> +		if (!slot)
> +			input_report_key(input_dev, BTN_TOUCH, (current_state ==
> +					 AXIOM_TARGET_STATE_TOUCHING));
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	target_prev_state->state = current_state;
> +	target_prev_state->x = target->x;
> +	target_prev_state->y = target->y;
> +	target_prev_state->z = target->z;
> +
> +	return update;
> +}
> +
> +/*
> + * U41 is the output report of the 2D CTS and contains the status of targets
> + * (including contacts and pre-contacts) along with their X,Y,Z values.
> + * When a target has been removed (no longer detected),
> + * the corresponding X,Y,Z values will be zeroed.
> + */
> +static bool axiom_process_u41_report(struct axiom_data *ts, char *rx_buf)
> +{
> +	struct axiom_target_report target;
> +	bool update_done = false;
> +	u16 target_status;
> +	u32 i;
> +
> +	target_status = ((rx_buf[1]) | (rx_buf[2] << 8));
> +
> +	for (i = 0; i < AXIOM_U41_MAX_TARGETS; i++) {
> +		char target_step = i * 4;
> +
> +		target.index = i;
> +		target.present = ((target_status & (1 << i)) != 0) ? 1 : 0;
> +		target.x = (rx_buf[(target_step + 3)] | (rx_buf[target_step + 4] << 8));
> +		target.y = (rx_buf[(target_step + 5)] | (rx_buf[target_step + 6] << 8));
> +		target.z = (s8)(rx_buf[i + 43]);
> +		update_done |= axiom_process_u41_report_target(ts, &target);
> +	}
> +
> +	return update_done;
> +}
> +
> +/*
> + * U46 report contains a low level measurement data generated by the CDS
> + * algorithms from the AUX channels. This information is useful when tuning
> + * multi-press to assess mechanical consistency in the unit's construction.
> + */
> +static void axiom_process_u46_report(struct axiom_data *ts, char *rx_buf)
> +{
> +	struct input_dev *input_dev = ts->input_dev;
> +	u32 event_value;
> +	u16 aux_value;
> +	u32 i = 0;
> +
> +	for (i = 0; i < AXIOM_U46_AUX_CHANNELS; i++) {
> +		char target_step = i * 2;
> +
> +		aux_value = ((rx_buf[target_step + 2] << 8) | (rx_buf[target_step + 1]))
> +			     & AXIOM_U46_AUX_MASK;
> +		event_value = (i << 16) | (aux_value);
> +		input_event(input_dev, EV_MSC, MSC_RAW, event_value);
> +	}
> +}
> +
> +/*
> + * Validates the crc and demultiplexes the axiom reports to the appropriate
> + * report handler
> + */
> +static int axiom_handle_events(struct axiom_data *ts)
> +{
> +	struct input_dev *input_dev = ts->input_dev;
> +	char *report_data = ts->rx_buf;
> +	struct device *dev = ts->dev;
> +	u16 crc_report;
> +	u16 crc_calc;
> +	int error;
> +	char len;
> +
> +	error = axiom_i2c_read(ts->client, AXIOM_REPORT_USAGE_ID, 0, report_data,
> +			       ts->max_report_len);
> +	if (error)
> +		return error;
> +
> +	len = (report_data[0] & AXIOM_COMMS_REPORT_LEN_MASK) << 1;
> +	if (!len) {
> +		dev_err(dev, "Zero length report discarded.\n");
> +		return -ENODATA;
> +	}
> +
> +	/* Validate the report CRC */
> +	crc_report = (report_data[len - 1] << 8) | (report_data[len - 2]);
> +	/* Length is in 16 bit words and remove the size of the CRC16 itself */
> +	crc_calc = crc16(0, report_data, (len - 2));
> +
> +	if (crc_calc != crc_report) {
> +		dev_err(dev,
> +			"CRC mismatch! Expected: %#x, Calculated CRC: %#x.\n",
> +			crc_report, crc_calc);
> +		return -EINVAL;
> +	}
> +
> +	switch (report_data[1]) {
> +	case AXIOM_USAGE_2DCTS_REPORT_ID:
> +		if (axiom_process_u41_report(ts, &report_data[1])) {
> +			input_mt_sync_frame(input_dev);
> +			input_sync(input_dev);
> +		}
> +		break;
> +
> +	case AXIOM_USAGE_2AUX_REPORT_ID:
> +		/* This is an aux report (force) */
> +		axiom_process_u46_report(ts, &report_data[1]);
> +		input_mt_sync(input_dev);
> +		input_sync(input_dev);
> +		break;
> +
> +	case AXIOM_USAGE_2HB_REPORT_ID:
> +		/* This is a heartbeat report */
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static void axiom_i2c_poll(struct input_dev *input_dev)
> +{
> +	struct axiom_data *ts = input_get_drvdata(input_dev);
> +
> +	axiom_handle_events(ts);
> +}
> +
> +static irqreturn_t axiom_irq(int irq, void *dev_id)
> +{
> +	struct axiom_data *ts = dev_id;
> +
> +	axiom_handle_events(ts);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static void axiom_reset(struct gpio_desc *reset_gpio)
> +{
> +	gpiod_set_value_cansleep(reset_gpio, 1);
> +	usleep_range(1000, 2000);
> +	gpiod_set_value_cansleep(reset_gpio, 0);
> +	msleep(110);
> +}
> +
> +static int axiom_i2c_probe(struct i2c_client *client)
> +{
> +	struct device *dev = &client->dev;
> +	struct input_dev *input_dev;
> +	struct axiom_data *ts;
> +	u32 startup_delay_ms;
> +	u32 poll_interval;
> +	int target;
> +	int error;
> +
> +	ts = devm_kzalloc(dev, sizeof(*ts), GFP_KERNEL);
> +	if (!ts)
> +		return -ENOMEM;
> +
> +	ts->client = client;
> +	i2c_set_clientdata(client, ts);
> +	ts->dev = dev;
> +
> +	ts->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
> +	if (IS_ERR(ts->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(ts->reset_gpio), "failed to get reset GPIO\n");
> +
> +	if (ts->reset_gpio)
> +		axiom_reset(ts->reset_gpio);
> +
> +	ts->vddi = devm_regulator_get_optional(dev, "VDDI");

A rough review, this can't work since you made the regulator names
lower-case. Same below.

> +	if (!IS_ERR(ts->vddi)) {

No !IS_ERR is required here since we do require it from API pov. DTS
enabled platforms will provide a dummy regulator if not specified, ACPI
is not supported right now so you don't need to care about. Same below.

> +		error = regulator_enable(ts->vddi);

If we don't provide any (runtime-)pm you can use:
devm_regulator_get_enable(). Same below.

> +		if (error)
> +			return dev_err_probe(&client->dev, error,
> +					     "Failed to enable VDDI regulator\n");
> +	}
> +
> +	ts->vdda = devm_regulator_get_optional(dev, "VDDA");
> +	if (!IS_ERR(ts->vdda)) {
> +		error = regulator_enable(ts->vdda);
> +		if (error) {
> +			dev_err(dev, "Failed to get VDDA regulator\n");
> +			regulator_disable(ts->vddi);
> +			return error;
> +		}
> +		if (!device_property_read_u32(dev, "startup-time-ms", &startup_delay_ms))
							^
This property is not documented and also is related to the regulator
itself.

> +			msleep(startup_delay_ms);
> +	}
> +
> +	error = axiom_discover(ts);
> +	if (error)
> +		return dev_err_probe(dev, error, "Failed touchscreen discover\n");
> +
> +	input_dev = devm_input_allocate_device(ts->dev);
> +	if (!input_dev)
> +		return -ENOMEM;
> +
> +	input_dev->name = "TouchNetix axiom Touchscreen";
> +	input_dev->phys = "input/axiom_ts";
> +
> +	/* Single Touch */
> +	input_set_abs_params(input_dev, ABS_X, 0, 65535, 0, 0);
> +	input_set_abs_params(input_dev, ABS_Y, 0, 65535, 0, 0);
> +
> +	/* Multi Touch */
> +	/* Min, Max, Fuzz (expected noise in px, try 4?) and Flat */
> +	input_set_abs_params(input_dev, ABS_MT_POSITION_X, 0, 65535, 0, 0);
> +	/* Min, Max, Fuzz (expected noise in px, try 4?) and Flat */
> +	input_set_abs_params(input_dev, ABS_MT_POSITION_Y, 0, 65535, 0, 0);
> +	input_set_abs_params(input_dev, ABS_MT_TOOL_TYPE, 0, MT_TOOL_MAX, 0, 0);
> +	input_set_abs_params(input_dev, ABS_MT_DISTANCE, 0, 127, 0, 0);
> +	input_set_abs_params(input_dev, ABS_MT_PRESSURE, 0, 127, 0, 0);
> +
> +	input_set_capability(input_dev, EV_KEY, BTN_TOUCH);
> +
> +	/* Registers the axiom device as a touchscreen instead of a mouse pointer */
> +	error = input_mt_init_slots(input_dev, AXIOM_U41_MAX_TARGETS, INPUT_MT_DIRECT);
> +	if (error)
> +		return error;
> +
> +	/* Enables the raw data for up to 4 force channels to be sent to the input subsystem */
> +	set_bit(EV_REL, input_dev->evbit);
> +	set_bit(EV_MSC, input_dev->evbit);
> +	/* Declare that we support "RAW" Miscellaneous events */
> +	set_bit(MSC_RAW, input_dev->mscbit);
> +
> +	ts->input_dev = input_dev;
> +	input_set_drvdata(ts->input_dev, ts);
> +
> +	/* Ensure that all reports are initialised to not be present. */
> +	for (target = 0; target < AXIOM_U41_MAX_TARGETS; target++)
> +		ts->targets[target].state = AXIOM_TARGET_STATE_NOT_PRESENT;
> +
> +	error = input_register_device(input_dev);
> +	if (error)
> +		return dev_err_probe(ts->dev, error,
> +				     "Could not register with Input Sub-system.\n");
> +
> +	error = devm_request_threaded_irq(dev, client->irq, NULL,
> +					  axiom_irq, IRQF_ONESHOT, dev_name(dev), ts);
> +	if (error < 0) {
> +		dev_warn(dev, "Request irq failed, falling back to polling mode");

Why do you print a warning? I thought this is possible use-case in case
that the IRQ line was not connected "on purpose".

> +		error = input_setup_polling(input_dev, axiom_i2c_poll);
> +		if (error)
> +			return dev_err_probe(ts->dev, error, "Unable to set up polling mode\n");
> +
> +		if (!device_property_read_u32(ts->dev, "poll-interval", &poll_interval))

Nit: poll_intervall can be local within this if block:

		u32 poll_interval = POLL_INTERVAL_DEFAULT_MS;

> +			input_set_poll_interval(input_dev, poll_interval);
> +		else
> +			input_set_poll_interval(input_dev, POLL_INTERVAL_DEFAULT_MS);

and this else can be dropped.

> +	}
> +
> +	return 0;
> +}
> +
> +static const struct i2c_device_id axiom_i2c_id_table[] = {
> +	{ "ax54a" },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(i2c, axiom_i2c_id_table);
> +
> +static const struct of_device_id axiom_i2c_of_match[] = {
> +	{ .compatible = "touchnetix,ax54a", },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, axiom_i2c_of_match);
> +
> +static struct i2c_driver axiom_i2c_driver = {
> +	.driver = {
> +		   .name = "axiom",
> +		   .of_match_table = axiom_i2c_of_match,
> +	},
> +	.id_table = axiom_i2c_id_table,
> +	.probe = axiom_i2c_probe,
> +};
> +module_i2c_driver(axiom_i2c_driver);
> +MODULE_AUTHOR("Bart Prescott <bartp@baasheep.co.uk>");
> +MODULE_AUTHOR("Pedro Torruella <pedro.torruella@touchnetix.com>");
> +MODULE_AUTHOR("Mark Satterthwaite <mark.satterthwaite@touchnetix.com>");
> +MODULE_AUTHOR("Hannah Rossiter <hannah.rossiter@touchnetix.com>");
> +MODULE_AUTHOR("Kamel Bouhara <kamel.bouhara@bootlin.com>");
> +MODULE_DESCRIPTION("TouchNetix axiom touchscreen I2C bus driver");
> +MODULE_LICENSE("GPL");
> -- 
> 2.25.1
> 
> 

