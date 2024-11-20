Return-Path: <devicetree+bounces-123337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A99F9D4132
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 18:33:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 07A6BB25C9F
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 17:33:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEDF6156654;
	Wed, 20 Nov 2024 17:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQKbUoXF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 906E113AD20;
	Wed, 20 Nov 2024 17:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732124017; cv=none; b=kqVkkvLhCFQ+Qz5HTNayftZn/lAfCUdJeieUqeiwWNlvkBsnf5f9zcs1ppwR7YiWJ70u/YcepjdVZXkKp0/f6m1zo6i3LvRO2occpNv7OuExOH5J0iJLML+rqfiTAhO8xXYzGLBJ1AOQxPx5AcRkDf3aD9Ul9qIuIsfPSNWva8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732124017; c=relaxed/simple;
	bh=Xa7vYTnftHu29oUNBK+NS8MndvafhORfQIrSYwQA7Gg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YhxQRN71m0udw7lCvnWbrzjq6fcMsX3kEIAs0ZUD2m65WkUjXJ99hTKosW3K9iAGfD6e0ZWFIWUL71enreW61wdifiMrYYgCB2ofqXuoyTnBYuStTZBQQNngKlOH/gcA0p6QXt5zCcQzl0Y/qjdA8suIPv+W5BvNDz6CkzkXkec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQKbUoXF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE8F5C4CECD;
	Wed, 20 Nov 2024 17:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732124017;
	bh=Xa7vYTnftHu29oUNBK+NS8MndvafhORfQIrSYwQA7Gg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=oQKbUoXFqXZRB3i/lGZaHzuewDiUh7/oSGylBDpf6idbNehEOHkG68pPErLrCMwwX
	 8k/miagmAPLJuGTYhqHT8Z80vO+JMSR45LpA2rZiKxxaBWO1bqILMIy7t1cKv1dL1t
	 v0jedW688DIymSQRBFFNkhS0ASIPp6XIOH/HhFjqeZsQyYvGyMG4gGfluhMToggURQ
	 K7aWeInxnfdfrChlLJQUAnvq1AX02jDUwhPY2EWmkYR/N3nyxaz03ocrF7IvAVviBN
	 iwER4xfA8xvlpBeZI5BSPn2/HPjIROLLnnlrQpqIFwFWdO+C5S5bSa7cSWf7WRi2Pr
	 DsEVvticjaWOg==
Message-ID: <690f0efc-e27a-435d-842e-dd38ca24ea4f@kernel.org>
Date: Wed, 20 Nov 2024 18:33:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] iio: light: Add APDS9160 ALS & Proximity sensor
 driver
To: mgonellabolduc@dimonoff.com, Jonathan Cameron <jic23@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Bill Wendling
 <morbo@google.com>, Justin Stitt <justinstitt@google.com>
Cc: Mikael Gonella-Bolduc <m.gonella.bolduc@gmail.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, llvm@lists.linux.dev,
 Hugo Villeneuve <hvilleneuve@dimonoff.com>
References: <20241119-apds9160-driver-v1-0-fa00675b4ea4@dimonoff.com>
 <20241119-apds9160-driver-v1-2-fa00675b4ea4@dimonoff.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20241119-apds9160-driver-v1-2-fa00675b4ea4@dimonoff.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/11/2024 21:36, Mikael Gonella-Bolduc via B4 Relay wrote:
> From: Mikael Gonella-Bolduc <mgonellabolduc@dimonoff.com>
> 
> APDS9160 is a combination of ALS and proximity sensors.
> 
> This patch add supports for:
>     - Intensity clear data and illuminance data
>     - Proximity data
>     - Gain control, rate control
>     - Event thresholds
> 
> Signed-off-by: Mikael Gonella-Bolduc <mgonellabolduc@dimonoff.com>
> ---
>  MAINTAINERS                  |    7 +
>  drivers/iio/light/Kconfig    |   13 +
>  drivers/iio/light/Makefile   |    1 +
>  drivers/iio/light/apds9160.c | 1420 ++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 1441 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index b878ddc99f94e7f6e8fa2c479c5a3f846c514730..5e57b4a19f2eccf317cda62c98d5e7545fdd185b 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -3694,6 +3694,13 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
>  F:	drivers/iio/light/apds9306.c
>  
> +AVAGO APDS9160 AMBIENT LIGHT SENSOR AND PROXIMITY DRIVER
> +M:	Mikael Gonella-Bolduc <mgonellabolduc@dimonoff.com>
> +L:	linux-iio@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/iio/light/avago,apds9160.yaml
> +F:	drivers/iio/light/apds9160.c
> +
>  AVIA HX711 ANALOG DIGITAL CONVERTER IIO DRIVER
>  M:	Andreas Klinger <ak@it-klinger.de>
>  L:	linux-iio@vger.kernel.org
> diff --git a/drivers/iio/light/Kconfig b/drivers/iio/light/Kconfig
> index f2f3e414849ab12a7c0ea2b08e9a3310eb18ebb7..69a59c6759acea89241ab76bfcdfafe3e5824066 100644
> --- a/drivers/iio/light/Kconfig
> +++ b/drivers/iio/light/Kconfig
> @@ -63,6 +63,19 @@ config AL3320A
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called al3320a.
>  
> +config APDS9160
> +	tristate "APDS9160 combined als and proximity sensors"
> +	select REGMAP_I2C
> +	select IIO_BUFFER
> +	select IIO_KFIFO_BUF
> +	depends on I2C
> +	help
> +	   Say Y here if you want to build a driver for Broadcom APDS9160
> +	   combined ambient light and proximity sensor chip.
> +
> +	   To compile this driver as a module, choose M here: the
> +	   module will be called apds9160. If unsure, say N here.
> +
>  config APDS9300
>  	tristate "APDS9300 ambient light sensor"
>  	depends on I2C
> diff --git a/drivers/iio/light/Makefile b/drivers/iio/light/Makefile
> index 321010fc0b938a9a7fed6d7ec41c718f56fc83a6..6d62571ae2af9bf1edcc77d7ea244a0f10bf7b4c 100644
> --- a/drivers/iio/light/Makefile
> +++ b/drivers/iio/light/Makefile
> @@ -9,6 +9,7 @@ obj-$(CONFIG_ADJD_S311)		+= adjd_s311.o
>  obj-$(CONFIG_ADUX1020)		+= adux1020.o
>  obj-$(CONFIG_AL3010)		+= al3010.o
>  obj-$(CONFIG_AL3320A)		+= al3320a.o
> +obj-$(CONFIG_APDS9160)		+= apds9160.o
>  obj-$(CONFIG_APDS9300)		+= apds9300.o
>  obj-$(CONFIG_APDS9306)		+= apds9306.o
>  obj-$(CONFIG_APDS9960)		+= apds9960.o
> diff --git a/drivers/iio/light/apds9160.c b/drivers/iio/light/apds9160.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..cb855f20725dba9fea1390a955889d905fd7eb4f
> --- /dev/null
> +++ b/drivers/iio/light/apds9160.c
> @@ -0,0 +1,1420 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/**
> + * This file is part of the APDS9160 sensor driver.
> + * Chip is combined proximity and ambient light sensor.
> + * Author: Mikael Gonella-Bolduc <m.gonella.bolduc@gmail.com>
> + */
> +
> +#include <linux/acpi.h>
> +#include <linux/module.h>
> +#include <linux/init.h>
> +#include <linux/interrupt.h>
> +#include <linux/delay.h>
> +#include <linux/mutex.h>
> +#include <linux/err.h>
> +#include <linux/irq.h>
> +#include <linux/i2c.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/regmap.h>
> +#include <linux/iio/iio.h>
> +#include <linux/iio/buffer.h>
> +#include <linux/iio/events.h>
> +#include <linux/iio/kfifo_buf.h>
> +#include <linux/iio/sysfs.h>
> +
> +#define APDS9160_DRIVER_NAME "apds9160"
> +#define APDS9160_REGMAP_NAME "apds9160_regmap"
> +#define APDS9160_STARTUP_DELAY 25000 /* us */
> +#define APDS9160_REG_CNT 37
> +
> +/** Main control register */
> +#define APDS9160_REG_CTRL 0x00
> +#define APDS9160_REG_CTRL_SWRESET BIT(4) /* 1: Activate reset */
> +#define APDS9160_REG_CTRL_MODE_RGB BIT(2) /* 0: ALS & IR, 1: RGB & IR */
> +#define APDS9160_REG_CTRL_EN_ALS BIT(1) /* 1: ALS active */
> +#define APDS9160_REG_CTLR_EN_PS BIT(0) /* 1: PS active */
> +
> +/** Status register  */
> +#define APDS9160_REG_SR_LS_INT BIT(3)
> +#define APDS9160_REG_SR_LS_NEW_DATA BIT(2)
> +#define APDS9160_REG_SR_PS_INT BIT(1)
> +#define APDS9160_REG_SR_PS_NEW_DATA BIT(0)
> +
> +/* Interrupt configuration register */
> +#define APDS9160_REG_INT_CFG 0x19
> +#define APDS9160_REG_INT_CFG_EN_LS BIT(2) /* LS int enable */
> +#define APDS9160_REG_INT_CFG_EN_PS BIT(0) /* PS int enable */
> +#define APDS9160_REG_INT_PST 0x1A
> +
> +/* Proximity registers */
> +#define APDS9160_REG_PS_LED 0x01
> +#define APDS9160_REG_PS_PULSES 0x02
> +#define APDS9160_REG_PS_MEAS_RATE 0x03
> +#define APDS9160_REG_PS_THRES_HI_LSB 0x1B
> +#define APDS9160_REG_PS_THRES_HI_MSB 0x1C
> +#define APDS9160_REG_PS_THRES_LO_LSB 0x1D
> +#define APDS9160_REG_PS_THRES_LO_MSB 0x1E
> +#define APDS9160_REG_PS_DATA_LSB 0x08
> +#define APDS9160_REG_PS_DATA_MSB 0x09
> +#define APDS9160_REG_PS_CAN_LEVEL_DIG_LSB 0x1F
> +#define APDS9160_REG_PS_CAN_LEVEL_DIG_MSB 0x20
> +#define APDS9160_REG_PS_CAN_LEVEL_ANA_DUR 0x21
> +#define APDS9160_REG_PS_CAN_LEVEL_ANA_CURRENT 0x22
> +
> +/* Light sensor registers */
> +#define APDS9160_REG_LS_MEAS_RATE 0x04
> +#define APDS9160_REG_LS_GAIN 0x05
> +#define APDS9160_REG_LS_DATA_CLEAR_LSB 0x0A
> +#define APDS9160_REG_LS_DATA_CLEAR 0x0B
> +#define APDS9160_REG_LS_DATA_CLEAR_MSB 0x0C
> +#define APDS9160_REG_LS_DATA_ALS_LSB 0x0D
> +#define APDS9160_REG_LS_DATA_ALS 0x0E
> +#define APDS9160_REG_LS_DATA_ALS_MSB 0x0F
> +#define APDS9160_REG_LS_THRES_UP_LSB 0x24
> +#define APDS9160_REG_LS_THRES_UP 0x25
> +#define APDS9160_REG_LS_THRES_UP_MSB 0x26
> +#define APDS9160_REG_LS_THRES_LO_LSB 0x27
> +#define APDS9160_REG_LS_THRES_LO 0x28
> +#define APDS9160_REG_LS_THRES_LO_MSB 0x29
> +#define APDS9160_REG_LS_THRES_VAR 0x2A
> +
> +/** Part identification number register */
> +#define APDS9160_REG_ID 0x06
> +
> +/** Status register */
> +#define APDS9160_REG_SR 0x07
> +#define APDS9160_REG_SR_DATA_ALS BIT(3)
> +#define APDS9160_REG_SR_DATA_PS BIT(0)
> +
> +/* Supported ID:s */
> +#define APDS9160_PART_ID_0 0x00
> +#define APDS9160_PART_ID_MASK 0xF0
> +#define APDS9160_PART_REV_MASK 0x0F
> +
> +#define APDS9160_PS_THRES_MAX 0x7FF
> +#define APDS9160_LS_THRES_MAX 0xFFFFF
> +#define APDS9160_CMD_LS_RESOLUTION_25MS 0x04
> +#define APDS9160_CMD_LS_RESOLUTION_50MS 0x03
> +#define APDS9160_CMD_LS_RESOLUTION_100MS 0x02
> +#define APDS9160_CMD_LS_RESOLUTION_200MS 0x01
> +#define APDS9160_PS_DATA_MASK 0x7FF
> +
> +#define APDS9160_DEFAULT_LS_GAIN 3
> +#define APDS9160_DEFAULT_LS_RATE 100
> +#define APDS9160_DEFAULT_PS_RATE 100
> +#define APDS9160_DEFAULT_PS_CANCELLATION_LEVEL 0
> +#define APDS9160_DEFAULT_PS_ANALOG_CANCELLATION 0
> +#define APDS9160_DEFAULT_PS_GAIN 1
> +#define APDS9160_DEFAULT_PS_CURRENT 100
> +#define APDS9160_DEFAULT_PS_RESOLUTION 0x03 // 11 bits
> +
> +// clang-format off
> +static const struct reg_default apds9160_reg_defaults[] = {
> +	{ APDS9160_REG_CTRL, 0x00 }, /* Sensors disabled by default  */
> +	{ APDS9160_REG_PS_LED, 0x33 }, /* 60 kHz frequency, 100 mA pulse current */
> +	{ APDS9160_REG_PS_PULSES, 0x08 }, /* 8 pulses */
> +	{ APDS9160_REG_PS_MEAS_RATE, 0x05 },
> +	{ APDS9160_REG_LS_MEAS_RATE, 0x22 },
> +	{ APDS9160_REG_LS_GAIN, 0x01 },
> +	{ APDS9160_REG_INT_CFG, 0x10 },
> +	{ APDS9160_REG_INT_PST, 0x00 },
> +	{ APDS9160_REG_PS_THRES_HI_LSB, 0xFF },
> +	{ APDS9160_REG_PS_THRES_HI_MSB, 0x07 },
> +	{ APDS9160_REG_PS_THRES_LO_LSB, 0x00 },
> +	{ APDS9160_REG_PS_THRES_LO_MSB, 0x00 },
> +	{ APDS9160_REG_PS_CAN_LEVEL_DIG_LSB, 0x00 },
> +	{ APDS9160_REG_PS_CAN_LEVEL_DIG_MSB, 0x00 },
> +	{ APDS9160_REG_PS_CAN_LEVEL_ANA_DUR, 0x00 },
> +	{ APDS9160_REG_PS_CAN_LEVEL_ANA_CURRENT, 0x00 },
> +	{ APDS9160_REG_LS_THRES_UP_LSB, 0xFF },
> +	{ APDS9160_REG_LS_THRES_UP, 0xFF },
> +	{ APDS9160_REG_LS_THRES_UP_MSB, 0x0F },
> +	{ APDS9160_REG_LS_THRES_LO_LSB, 0x00 },
> +	{ APDS9160_REG_LS_THRES_LO, 0x00 },
> +	{ APDS9160_REG_LS_THRES_LO_MSB, 0x00 },
> +	{ APDS9160_REG_LS_THRES_VAR, 0x00 },
> +};
> +// clang-format on
> +
> +static const struct regmap_range apds9160_readable_ranges[] = {
> +	regmap_reg_range(APDS9160_REG_CTRL, APDS9160_REG_LS_THRES_VAR),
> +};
> +
> +static const struct regmap_access_table apds9160_readable_table = {
> +	.yes_ranges = apds9160_readable_ranges,
> +	.n_yes_ranges = ARRAY_SIZE(apds9160_readable_ranges),
> +};
> +
> +static const struct regmap_range apds9160_writeable_ranges[] = {
> +	regmap_reg_range(APDS9160_REG_CTRL, APDS9160_REG_LS_GAIN),
> +	regmap_reg_range(APDS9160_REG_INT_CFG, APDS9160_REG_LS_THRES_VAR),
> +};
> +
> +static const struct regmap_access_table apds9160_writeable_table = {
> +	.yes_ranges = apds9160_writeable_ranges,
> +	.n_yes_ranges = ARRAY_SIZE(apds9160_writeable_ranges),
> +};
> +
> +static const struct regmap_range apds9160_volatile_ranges[] = {
> +	regmap_reg_range(APDS9160_REG_SR, APDS9160_REG_LS_DATA_ALS_MSB),
> +};
> +
> +static const struct regmap_access_table apds9160_volatile_table = {
> +	.yes_ranges = apds9160_volatile_ranges,
> +	.n_yes_ranges = ARRAY_SIZE(apds9160_volatile_ranges),
> +};
> +
> +static const struct regmap_config apds9160_regmap_config = {
> +	.name = APDS9160_REGMAP_NAME,
> +	.reg_bits = 8,
> +	.val_bits = 8,
> +	.use_single_read = true,
> +	.use_single_write = true,
> +
> +	.rd_table = &apds9160_readable_table,
> +	.wr_table = &apds9160_writeable_table,
> +	.volatile_table = &apds9160_volatile_table,
> +
> +	.reg_defaults = apds9160_reg_defaults,
> +	.num_reg_defaults = ARRAY_SIZE(apds9160_reg_defaults),
> +	.max_register = APDS9160_REG_CNT,
> +	.cache_type = REGCACHE_RBTREE,
> +};
> +
> +static const struct iio_event_spec apds9160_ps_event_spec[] = {
> +	{
> +		.type = IIO_EV_TYPE_THRESH,
> +		.dir = IIO_EV_DIR_RISING,
> +		.mask_separate = BIT(IIO_EV_INFO_VALUE),
> +	},
> +	{
> +		.type = IIO_EV_TYPE_THRESH,
> +		.dir = IIO_EV_DIR_FALLING,
> +		.mask_separate = BIT(IIO_EV_INFO_VALUE),
> +	},
> +	{
> +		.type = IIO_EV_TYPE_THRESH,
> +		.mask_separate = BIT(IIO_EV_INFO_ENABLE),
> +	},
> +};
> +
> +static const struct iio_event_spec apds9160_als_event_spec[] = {
> +	{
> +		.type = IIO_EV_TYPE_THRESH,
> +		.dir = IIO_EV_DIR_RISING,
> +		.mask_separate = BIT(IIO_EV_INFO_VALUE),
> +	},
> +	{
> +		.type = IIO_EV_TYPE_THRESH,
> +		.dir = IIO_EV_DIR_FALLING,
> +		.mask_separate = BIT(IIO_EV_INFO_VALUE),
> +	},
> +	{
> +		.type = IIO_EV_TYPE_THRESH,
> +		.mask_separate = BIT(IIO_EV_INFO_ENABLE),
> +	},
> +};
> +
> +static const struct iio_chan_spec apds9160_channels[] = {
> +	{
> +		/* Proximity sensor channel */
> +		.type = IIO_PROXIMITY,
> +		.address = APDS9160_REG_PS_DATA_LSB,
> +		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
> +		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SAMP_FREQ) |
> +					    BIT(IIO_CHAN_INFO_CALIBSCALE) |
> +					    BIT(IIO_CHAN_INFO_HARDWAREGAIN) |
> +					    BIT(IIO_CHAN_INFO_CALIBBIAS),
> +		.channel = 0,
> +		.indexed = 0,
> +		.scan_index = -1,
> +
> +		.event_spec = apds9160_ps_event_spec,
> +		.num_event_specs = ARRAY_SIZE(apds9160_ps_event_spec),
> +	},
> +	{
> +		/* Proximity sensor led current */
> +		.type = IIO_CURRENT,
> +		.output = 1,
> +		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
> +		.scan_index = -1,
> +	},
> +	{
> +		/* Clear channel */
> +		.type = IIO_INTENSITY,
> +		.address = APDS9160_REG_LS_DATA_CLEAR_LSB,
> +		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
> +		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_INT_TIME) |
> +					    BIT(IIO_CHAN_INFO_HARDWAREGAIN) |
> +					    BIT(IIO_CHAN_INFO_SCALE),
> +		.channel2 = IIO_MOD_LIGHT_CLEAR,
> +		.modified = 1,
> +		.scan_index = -1,
> +
> +		.event_spec = apds9160_als_event_spec,
> +		.num_event_specs = ARRAY_SIZE(apds9160_als_event_spec),
> +	},
> +	{
> +		/* Illuminance */
> +		.type = IIO_LIGHT,
> +		.address = APDS9160_REG_LS_DATA_ALS_LSB,
> +		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
> +		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),
> +		.scan_index = -1,
> +	}
> +};
> +
> +/* Attributes */
> +// clang-format off
> +static const int apds9160_als_rate_map[][2] = {
> +	{ 25, 0x00 },
> +	{ 50, 0x01 },
> +	{ 100, 0x02 },
> +	{ 200, 0x03 }
> +};
> +
> +static const int apds9160_als_gain_map[][2] = {
> +	{ 1, 0x00 },
> +	{ 3, 0x01 },
> +	{ 6, 0x02 },
> +	{ 18, 0x03 },
> +	{ 64, 0x04 }
> +};
> +
> +static const int apds9160_ps_gain_map[][2] = {
> +	{ 1, 0x00 },
> +	{ 2, 0x01},
> +	{ 4, 0x02},
> +	{ 8, 0x03}
> +};
> +
> +static const int apds9160_ps_rate_map[][2] = {
> +	{ 25, 0x03 },
> +	{ 50, 0x04 },
> +	{ 100, 0x05 },
> +	{ 200, 0x06 },
> +	{ 400, 0x07 }
> +};
> +
> +static const int adps9160_ps_led_current_map[][2] = {
> +	{ 10, 0x00 },
> +	{ 25, 0x01 },
> +	{ 50, 0x02 },
> +	{ 100, 0x03 },
> +	{ 150, 0x04},
> +	{ 175, 0x05 },
> +	{ 200, 0x06 }
> +};
> +// clang-format on
> +
> +struct apds9160_scale {
> +	int itime;
> +	int gain;
> +	int scale1;
> +	int scale2;
> +};
> +
> +static const struct apds9160_scale apds9160_als_scale_map[] = {
> +	{
> +		.gain = 1,
> +		.itime = 25,
> +		.scale1 = 3272,
> +		.scale2 = 1000,
> +	},
> +	{
> +		.gain = 1,
> +		.itime = 50,
> +		.scale1 = 1639,
> +		.scale2 = 1000,
> +	},
> +	{
> +		.gain = 1,
> +		.itime = 100,
> +		.scale1 = 819,
> +		.scale2 = 1000,
> +	},
> +	{
> +		.gain = 3,
> +		.itime = 25,
> +		.scale1 = 1077,
> +		.scale2 = 1000,
> +	},
> +	{
> +		.gain = 3,
> +		.itime = 50,
> +		.scale1 = 538,
> +		.scale2 = 1000,
> +	},
> +	{
> +		.gain = 3,
> +		.itime = 100,
> +		.scale1 = 269,
> +		.scale2 = 1000,
> +	},
> +	{
> +		.gain = 6,
> +		.itime = 25,
> +		.scale1 = 525,
> +		.scale2 = 1000,
> +	},
> +	{
> +		.gain = 6,
> +		.itime = 50,
> +		.scale1 = 263,
> +		.scale2 = 1000,
> +	},
> +	{
> +		.gain = 6,
> +		.itime = 100,
> +		.scale1 = 131,
> +		.scale2 = 1000,
> +	},
> +	{
> +		.gain = 18,
> +		.itime = 25,
> +		.scale1 = 169,
> +		.scale2 = 1000,
> +	},
> +	{
> +		.gain = 18,
> +		.itime = 50,
> +		.scale1 = 84,
> +		.scale2 = 1000,
> +	},
> +	{
> +		.gain = 18,
> +		.itime = 100,
> +		.scale1 = 42,
> +		.scale2 = 1000,
> +	},
> +	{
> +		.gain = 64,
> +		.itime = 25,
> +		.scale1 = 49,
> +		.scale2 = 1000,
> +	},
> +	{
> +		.gain = 64,
> +		.itime = 50,
> +		.scale1 = 25,
> +		.scale2 = 1000,
> +	},
> +	{
> +		.gain = 64,
> +		.itime = 100,
> +		.scale1 = 12,
> +		.scale2 = 1000,
> +	},
> +};
> +
> +static IIO_CONST_ATTR(in_intensity_integration_time_available, "25 50 100 200");
> +static IIO_CONST_ATTR(in_proximity_sampling_frequency_available,
> +		      "25 50 100 200 400");
> +static IIO_CONST_ATTR(in_intensity_hardwaregain_available, "1 3 6 18 64");
> +static IIO_CONST_ATTR(in_proximity_hardwaregain_available, "1 2 4 8");
> +static IIO_CONST_ATTR(out_current_available, "10 25 50 100 150 175 200");
> +
> +static struct attribute *apds9160_attributes[] = {
> +	&iio_const_attr_in_intensity_integration_time_available.dev_attr.attr,
> +	&iio_const_attr_in_intensity_hardwaregain_available.dev_attr.attr,
> +	&iio_const_attr_in_proximity_sampling_frequency_available.dev_attr.attr,
> +	&iio_const_attr_in_proximity_hardwaregain_available.dev_attr.attr,
> +	&iio_const_attr_out_current_available.dev_attr.attr,
> +	NULL,
> +};
> +
> +static const struct attribute_group apds9160_attribute_group = {
> +	.attrs = apds9160_attributes,
> +};
> +
> +static const struct reg_field apds9160_reg_field_ls_en =
> +	REG_FIELD(APDS9160_REG_CTRL, 1, 1);
> +
> +static const struct reg_field apds9160_reg_field_ps_en =
> +	REG_FIELD(APDS9160_REG_CTRL, 0, 0);
> +
> +static const struct reg_field apds9160_reg_field_int_ps =
> +	REG_FIELD(APDS9160_REG_INT_CFG, 0, 0);
> +
> +static const struct reg_field apds9160_reg_field_int_als =
> +	REG_FIELD(APDS9160_REG_INT_CFG, 2, 2);
> +
> +static const struct reg_field apds9160_reg_field_ps_overflow =
> +	REG_FIELD(APDS9160_REG_PS_DATA_MSB, 3, 3);
> +
> +static const struct reg_field apds9160_reg_field_als_rate =
> +	REG_FIELD(APDS9160_REG_LS_MEAS_RATE, 0, 2);
> +
> +static const struct reg_field apds9160_reg_field_als_gain =
> +	REG_FIELD(APDS9160_REG_LS_GAIN, 0, 2);
> +
> +static const struct reg_field apds9160_reg_field_ps_rate =
> +	REG_FIELD(APDS9160_REG_PS_MEAS_RATE, 0, 2);
> +
> +static const struct reg_field apds9160_reg_field_als_res =
> +	REG_FIELD(APDS9160_REG_LS_MEAS_RATE, 4, 6);
> +
> +static const struct reg_field apds9160_reg_field_ps_current =
> +	REG_FIELD(APDS9160_REG_PS_LED, 0, 2);
> +
> +static const struct reg_field apds9160_reg_field_ps_gain =
> +	REG_FIELD(APDS9160_REG_PS_MEAS_RATE, 6, 7);
> +
> +static const struct reg_field apds9160_reg_field_ps_resolution =
> +	REG_FIELD(APDS9160_REG_PS_MEAS_RATE, 3, 4);
> +
> +struct apds9160_chip {
> +	struct i2c_client *client;
> +	struct iio_dev *indio_dev;
> +	struct regmap *regmap;
> +	struct mutex lock; /* avoid parallel access */

That's terrible comment. It is obvious what mutex is doing. We all know.

Instead, say exactly which parts are protected. I see you are protecting
regmap which is obviously wrong - regmap handles this...

> +
> +	struct regmap_field *reg_enable_ps;
> +	struct regmap_field *reg_enable_als;
> +	struct regmap_field *reg_int_ps;
> +	struct regmap_field *reg_int_als;
> +	struct regmap_field *reg_ps_overflow;
> +	struct regmap_field *reg_als_rate;
> +	struct regmap_field *reg_als_resolution;
> +	struct regmap_field *reg_ps_rate;
> +	struct regmap_field *reg_als_gain;
> +	struct regmap_field *reg_ps_current;
> +	struct regmap_field *reg_ps_gain;
> +	struct regmap_field *reg_ps_resolution;
> +
> +	/* State data */
> +	u8 revision;

Drop, not used.

Drop all such unused members.

> +	int als_int;
> +	int ps_int;
> +
> +	/* Configuration values */
> +	int als_itime;
> +	int als_hwgain;
> +	int als_scale1;
> +	int als_scale2;
> +	int ps_rate;
> +	int ps_cancellation_level;
> +	int ps_cancellation_analog;
> +	int ps_current;
> +	int ps_gain;
> +};
> +
> +static const struct i2c_device_id apds9160_id[] = { { APDS9160_DRIVER_NAME, 0 },
> +						    {} };
> +
> +/** Called when mutex is locked */
> +static void apds9160_set_scale(struct apds9160_chip *data)
> +{
> +	for (int idx = 0; idx < ARRAY_SIZE(apds9160_als_scale_map); idx++) {
> +		if (data->als_hwgain == apds9160_als_scale_map[idx].gain &&
> +		    data->als_itime == apds9160_als_scale_map[idx].itime) {
> +			data->als_scale1 = apds9160_als_scale_map[idx].scale1;
> +			data->als_scale2 = apds9160_als_scale_map[idx].scale2;
> +		}
> +	}
> +}
> +
> +static int apds9160_set_ps_rate(struct apds9160_chip *data, int val)
> +{
> +	int ret = -EINVAL;
> +	int idx;
> +
> +	dev_dbg(&data->client->dev, "%s - set rate to %i\n", __func__, val);
> +	for (idx = 0; idx < ARRAY_SIZE(apds9160_ps_rate_map); idx++) {
> +		if (apds9160_ps_rate_map[idx][0] == val) {
> +			mutex_lock(&data->lock);
> +			ret = regmap_field_write(data->reg_ps_rate,
> +						 apds9160_ps_rate_map[idx][1]);
> +			if (!ret)
> +				data->ps_rate = val;
> +			mutex_unlock(&data->lock);
> +			break;
> +		}
> +	}
> +
> +	return ret;
> +}
> +
> +static int apds9160_set_ps_gain(struct apds9160_chip *data, int val)
> +{
> +	int ret = -EINVAL;
> +	int idx;
> +
> +	dev_dbg(&data->client->dev, "%s - set gain to %i\n", __func__, val);
> +	for (idx = 0; idx < ARRAY_SIZE(apds9160_ps_gain_map); idx++) {
> +		if (apds9160_ps_gain_map[idx][0] == val) {
> +			mutex_lock(&data->lock);
> +			ret = regmap_field_write(data->reg_ps_gain,
> +						 apds9160_ps_gain_map[idx][1]);
> +			if (!ret)
> +				data->ps_gain = val;
> +			mutex_unlock(&data->lock);
> +			break;
> +		}
> +	}
> +
> +	return ret;
> +}
> +
> +/**
> + * The PS intelligent cancellation level register allows for an on-chip substraction
> + * of the ADC count caused by unwanted reflected light from PS ADC output.
> + */
> +static int apds9160_set_ps_cancellation_level(struct apds9160_chip *data,
> +					      int val)
> +{
> +	int ret = -EINVAL;
> +	__le16 buf;
> +
> +	dev_dbg(&data->client->dev, "%s - set cancellation level to %i\n",
> +		__func__, val);
> +	if (val < 0 || val > 0xFFFF)
> +		return ret;
> +
> +	mutex_lock(&data->lock);
> +	buf = cpu_to_le16(val);
> +	ret = regmap_bulk_write(data->regmap, APDS9160_REG_PS_CAN_LEVEL_DIG_LSB,
> +				&buf, 2);
> +	if (!ret)
> +		data->ps_cancellation_level = val;
> +	mutex_unlock(&data->lock);
> +	return ret;
> +}
> +
> +/**
> + * This parameter determines the cancellation pulse duration in each of the PWM pulse.
> + * The cancellation is applied during the integration phase of the PS measurement.
> + * Duration is programmed in half clock cycles
> + */
> +static int apds9160_set_ps_analog_cancellation(struct apds9160_chip *data,
> +					       int val)
> +{
> +	int ret = -EINVAL;
> +
> +	dev_dbg(&data->client->dev, "%s - set analog cancellation to %i\n",
> +		__func__, val);
> +	if (val < 0 || val > 0x3F)
> +		return ret;

No, return -EINVAL. This applies everywhere

> +
> +	mutex_lock(&data->lock);
> +	ret = regmap_write(data->regmap, APDS9160_REG_PS_CAN_LEVEL_ANA_DUR,
> +			   val);
> +	if (!ret)
> +		data->ps_cancellation_analog = val;
> +	mutex_unlock(&data->lock);

Missing blank line, always.

> +	return ret;
> +}
> +

All these functions look poor to me. First: dev_dbg on every entry, even
with some useful data, is sign this is just not ready yet. Second, it is
really unclear to me what mutex protects here. Jonathan probably will
clarify it better how mutex should be used in IIO drivers.


> +static int apds9160_configure(struct iio_dev *indio_dev)
> +{
> +	struct apds9160_chip *chip = iio_priv(indio_dev);
> +
> +	return apds9160_chip_init(chip);
> +}
> +
> +static int apds9160_regfield_init(struct apds9160_chip *data)
> +{
> +	struct device *dev = &data->client->dev;
> +	struct regmap *regmap = data->regmap;
> +
> +	data->reg_int_als = devm_regmap_field_alloc(dev, regmap,
> +						    apds9160_reg_field_int_als);
> +	if (IS_ERR(data->reg_int_als)) {
> +		dev_err(dev, "INT ALS reg field init failed\n");

Hm? Is this allocation error? ENOMEM must not have dev_err.

> +		return PTR_ERR(data->reg_int_als);
> +	}
> +
> +	data->reg_int_ps =
> +		devm_regmap_field_alloc(dev, regmap, apds9160_reg_field_int_ps);

Fix wrapping everywhere. See coding style.

> +	if (IS_ERR(data->reg_int_ps)) {
> +		dev_err(dev, "INT ps reg field init failed\n");
> +		return PTR_ERR(data->reg_int_ps);
> +	}
> +
> +	data->reg_enable_als =
> +		devm_regmap_field_alloc(dev, regmap, apds9160_reg_field_ls_en);
> +	if (IS_ERR(data->reg_enable_als)) {
> +		dev_err(dev, "Enable ALS reg field init failed\n");
> +		return PTR_ERR(data->reg_enable_als);
> +	}
> +
> +	data->reg_enable_ps =
> +		devm_regmap_field_alloc(dev, regmap, apds9160_reg_field_ps_en);
> +	if (IS_ERR(data->reg_enable_ps)) {
> +		dev_err(dev, "Enable PS reg field init failed\n");
> +		return PTR_ERR(data->reg_enable_ps);
> +	}
> +
> +	data->reg_ps_overflow = devm_regmap_field_alloc(
> +		dev, regmap, apds9160_reg_field_ps_overflow);
> +	if (IS_ERR(data->reg_ps_overflow)) {
> +		dev_err(dev, "PS overflow reg field init failed\n");
> +		return PTR_ERR(data->reg_ps_overflow);
> +	}
> +
> +	data->reg_als_rate = devm_regmap_field_alloc(
> +		dev, regmap, apds9160_reg_field_als_rate);
> +	if (IS_ERR(data->reg_als_rate)) {
> +		dev_err(dev, "ALS measurement rate field init failed\n");
> +		return PTR_ERR(data->reg_als_rate);
> +	}
> +
> +	data->reg_als_resolution = devm_regmap_field_alloc(
> +		dev, regmap, apds9160_reg_field_als_res);
> +	if (IS_ERR(data->reg_als_resolution)) {
> +		dev_err(dev, "ALS resolution field init failed\n");
> +		return PTR_ERR(data->reg_als_resolution);
> +	}
> +
> +	data->reg_ps_rate = devm_regmap_field_alloc(dev, regmap,
> +						    apds9160_reg_field_ps_rate);
> +	if (IS_ERR(data->reg_ps_rate)) {
> +		dev_err(dev, "PS measurement rate field init failed\n");
> +		return PTR_ERR(data->reg_ps_rate);
> +	}
> +
> +	data->reg_als_gain = devm_regmap_field_alloc(
> +		dev, regmap, apds9160_reg_field_als_gain);
> +	if (IS_ERR(data->reg_als_gain)) {
> +		dev_err(dev, "ALS gain field init failed\n");
> +		return PTR_ERR(data->reg_als_gain);
> +	}
> +
> +	data->reg_ps_current = devm_regmap_field_alloc(
> +		dev, regmap, apds9160_reg_field_ps_current);
> +	if (IS_ERR(data->reg_ps_current)) {
> +		dev_err(dev, "PS current field init failed\n");
> +		return PTR_ERR(data->reg_ps_current);
> +	}
> +
> +	data->reg_ps_gain = devm_regmap_field_alloc(dev, regmap,
> +						    apds9160_reg_field_ps_gain);
> +	if (IS_ERR(data->reg_ps_gain)) {
> +		dev_err(dev, "PS gain field init failed\n");
> +		return PTR_ERR(data->reg_ps_gain);
> +	}
> +
> +	data->reg_ps_resolution = devm_regmap_field_alloc(
> +		dev, regmap, apds9160_reg_field_ps_resolution);
> +	if (IS_ERR(data->reg_ps_resolution)) {
> +		dev_err(dev, "PS resolution field init failed\n");
> +		return PTR_ERR(data->reg_ps_resolution);
> +	}
> +
> +	return 0;
> +}
> +
> +static int apds9160_disable(struct apds9160_chip *data)
> +{
> +	int ret;
> +
> +	ret = regmap_field_write(data->reg_enable_als, 0);
> +	if (ret)
> +		return ret;
> +
> +	return regmap_field_write(data->reg_enable_ps, 0);
> +}
> +
> +static int apds9160_shutdown(struct iio_dev *indio_dev)
> +{
> +	struct apds9160_chip *data = iio_priv(indio_dev);
> +
> +	return apds9160_disable(data);
> +}
> +
> +static void apds9160_remove(struct i2c_client *client)
> +{
> +	struct iio_dev *indio_dev = i2c_get_clientdata(client);
> +
> +	struct apds9160_chip *data = iio_priv(indio_dev);
> +
> +	iio_device_unregister(indio_dev);

Why not devm?

> +	apds9160_disable(data);

Remove() is always, always placed immediately after probe.

This and one more hint suggest you took some poor downstream source as
template. That is not how you are supposed to work. Take newest,
revewied driver as template instead.


> +}
> +
> +static const struct iio_buffer_setup_ops apds9160_buffer_setup_ops = {
> +	.postenable = apds9160_configure,
> +	.predisable = apds9160_shutdown,
> +};
> +
> +static const struct iio_info apds9160_info = {
> +	.attrs = &apds9160_attribute_group,
> +	.read_raw = apds9160_read_raw,
> +	.write_raw = apds9160_write_raw,
> +	.read_event_value = apds9160_read_event,
> +	.write_event_value = apds9160_write_event,
> +	.read_event_config = apds9160_read_event_config,
> +	.write_event_config = apds9160_write_event_config,
> +};
> +
> +static int apds9160_probe(struct i2c_client *client)
> +{
> +	struct apds9160_chip *chip;
> +	struct iio_dev *indio_dev;
> +	int err;
> +
> +	dev_info(&client->dev,
> +		 "Loading proximity/ambient light sensor driver\n");

Drop, driver should be silent on success.


> +	indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*chip));
> +	indio_dev->info = &apds9160_info;
> +	indio_dev->name = APDS9160_DRIVER_NAME;
> +	indio_dev->channels = apds9160_channels;
> +	indio_dev->num_channels = ARRAY_SIZE(apds9160_channels);
> +	indio_dev->modes = INDIO_DIRECT_MODE;
> +
> +	err = devm_iio_kfifo_buffer_setup(&client->dev, indio_dev,
> +					  &apds9160_buffer_setup_ops);
> +	if (err)
> +		return err;
> +
> +	chip = iio_priv(indio_dev);
> +	i2c_set_clientdata(client, indio_dev);
> +	chip->client = client;
> +	chip->regmap = devm_regmap_init_i2c(client, &apds9160_regmap_config);
> +	if (IS_ERR(chip->regmap)) {
> +		dev_err(&client->dev, "regmap initialization failed.\n");

return dev_err_probe

> +		return PTR_ERR(chip->regmap);
> +	}
> +
> +	chip->client = client;
> +	chip->indio_dev = indio_dev;
> +	mutex_init(&chip->lock);
> +
> +	err = apds9160_detect(chip);
> +	if (err < 0) {
> +		dev_err(&client->dev, "apds9160 not found\n");
> +		return err;
> +	}
> +
> +	err = apds9160_regfield_init(chip);
> +	if (err)
> +		return err;
> +
> +	err = apds9160_chip_init(chip);
> +	if (err)
> +		return err;
> +
> +	if (client->irq > 0) {
> +		err = devm_request_threaded_irq(
> +			&client->dev, client->irq, NULL, apds9160_irq_handler,

Odd wrapping.

> +			IRQF_TRIGGER_FALLING | IRQF_ONESHOT, "apds9160_event",
> +			indio_dev);
> +		if (err) {
> +			dev_err(&client->dev, "request irq (%d) failed\n",
> +				client->irq);

dev_err_probe

> +			goto fail;
> +		}
> +	} else {
> +		dev_info(&client->dev,
> +			 "init: no IRQ defined, ps/als interrupts disabled\n");

dev_dbg, unless this is important, but if user decided to skip
interrupts, why would you ping them all the time? It's concious choice.
Hardware design. You cannot change hardware once it is released...

> +	}
> +
> +	err = iio_device_register(indio_dev);
> +	if (err)
> +		goto fail;
> +
> +	return 0;

Missing blank line

> +fail:
> +	apds9160_disable(chip);
> +	return err;
> +}
> +
> +static const struct of_device_id apds9160_of_match[] = {
> +	{ .compatible = "avago,apds9160" },
> +	{ .compatible = "broadmobi,apds9160" },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, apds9160_of_match);
> +
> +static struct i2c_driver apds9160_driver = {
> +	.driver	  = {
> +		.name	= APDS9160_DRIVER_NAME,
> +		.owner = THIS_MODULE,

Uh, this was dropped like 10 years ago... Please use recent driver as
your template. Otherwise you repeat all the issues we fixed.


> +		.of_match_table = apds9160_of_match,
> +	},
> +	.probe    = apds9160_probe,
> +	.remove	  = apds9160_remove,
> +	.id_table = apds9160_id,
> +};
> +
> +MODULE_DEVICE_TABLE(i2c, apds9160_id);

This ALWAYS is next to the table.

> +module_i2c_driver(apds9160_driver);
> +MODULE_DESCRIPTION("APDS9160 combined ALS and proximity sensor");
> +MODULE_AUTHOR("Mikael Gonella-Bolduc <m.gonella.bolduc@gmail.com>");
> +MODULE_LICENSE("GPL");
> +MODULE_VERSION("1.0");

Drop

> 


Best regards,
Krzysztof

