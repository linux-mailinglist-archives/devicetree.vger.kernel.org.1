Return-Path: <devicetree+bounces-128177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1315F9E7B1E
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 22:38:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ADFF61885D72
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 21:38:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1890022C6D3;
	Fri,  6 Dec 2024 21:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="bVYIlK8p"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219F722C6C0;
	Fri,  6 Dec 2024 21:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733521111; cv=none; b=jfalXIuuatG4fFFbOwt8wWcb4ZMY//h5AxuY4QPvzUV137L6KCdLIZFou4AKwSkMPwLizprCJ1yKXN8ic/AY5fmiL2YELWk6iNXhTGR3SUAQfvFulR9yezou0NGc1dBs7bPYg1sgIbvP6YxNmsxh/5JhBIYHHfB0MJ9sBQ4eGoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733521111; c=relaxed/simple;
	bh=FCtnhbVEcG5ti3rCOK0E+j3X+Qb8gnnrlgtrfN0YO8Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=fG4fyGXkigizuRkVxoVSEkz0nD2T+9kbhuT3JPw6GIB9gNvgEtw98p4F6/1RhZW9jy0p73gc0aiSqgksKBiGGRxitUD2FCeO82q0QxjDIWyq1HwFVtf4kbvtvgDU3Y1+tMooLADnLnuIUtZAzw4H1HqDKU8ap1GcG9TyDco3ZoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=bVYIlK8p; arc=none smtp.client-ip=198.47.19.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 4B6Lc3VO117629;
	Fri, 6 Dec 2024 15:38:03 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1733521083;
	bh=5Vbbde26YMC8xR8A9dVdNntJv9l2JlGijS55Ah+v7GI=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=bVYIlK8p4slFDMDphnXG7AK2GKIMje38NJuxi7/owRG4hp7tMiiVSK02QxBCRy+Lr
	 lksuUs3Y3aBZLPF80akt4gwRd8XCSwfq+5FYDlxpANj7wr/EHAi/ay3GuMv0/dZ3t4
	 2vhreTdw/3diAIElwsGGVLTHHHY2hBz8FfUt4+Pc=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4B6Lc30d006880;
	Fri, 6 Dec 2024 15:38:03 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 6
 Dec 2024 15:38:03 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 6 Dec 2024 15:38:03 -0600
Received: from [10.249.42.149] ([10.249.42.149])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4B6Lc3Ws090555;
	Fri, 6 Dec 2024 15:38:03 -0600
Message-ID: <4f69afd7-67e2-4ba7-a6c5-5da47911e278@ti.com>
Date: Fri, 6 Dec 2024 15:38:02 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] leds: lp8864: New driver
To: "A. Sverdlin" <alexander.sverdlin@siemens.com>,
        <linux-leds@vger.kernel.org>, <devicetree@vger.kernel.org>
CC: <dri-devel@lists.freedesktop.org>, Lee Jones <lee@kernel.org>,
        Daniel
 Thompson <danielt@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>, Pavel
 Machek <pavel@ucw.cz>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20241206212421.1132578-1-alexander.sverdlin@siemens.com>
 <20241206212421.1132578-3-alexander.sverdlin@siemens.com>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20241206212421.1132578-3-alexander.sverdlin@siemens.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

On 12/6/24 3:24 PM, A. Sverdlin wrote:
> From: Alexander Sverdlin <alexander.sverdlin@siemens.com>
> 
> Add driver for TI LP8864, LP8864S, LP8866 4/6 channel LED-backlight drivers
> with I2C interface.
> 
> Link: https://www.ti.com/lit/gpn/lp8864-q1
> Link: https://www.ti.com/lit/gpn/lp8864s-q1
> Link: https://www.ti.com/lit/gpn/lp8866-q1
> Link: https://www.ti.com/lit/gpn/lp8866s-q1
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@siemens.com>
> ---
>   MAINTAINERS                |   7 +
>   drivers/leds/Kconfig       |  12 ++
>   drivers/leds/Makefile      |   1 +
>   drivers/leds/leds-lp8864.c | 320 +++++++++++++++++++++++++++++++++++++
>   4 files changed, 340 insertions(+)
>   create mode 100644 drivers/leds/leds-lp8864.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 21f855fe468bc..a89f0b9d991fb 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -23262,6 +23262,13 @@ S:	Supported
>   F:	Documentation/devicetree/bindings/iio/dac/ti,dac7612.yaml
>   F:	drivers/iio/dac/ti-dac7612.c
>   
> +TEXAS INSTRUMENTS' LB8864 LED BACKLIGHT DRIVER
> +M:	Alexander Sverdlin <alexander.sverdlin@siemens.com>
> +L:	linux-leds@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/leds/backlight/ti,lp8864.yaml
> +F:	drivers/leds/leds-lp8864.c
> +
>   TEXAS INSTRUMENTS' SYSTEM CONTROL INTERFACE (TISCI) PROTOCOL DRIVER
>   M:	Nishanth Menon <nm@ti.com>
>   M:	Tero Kristo <kristo@kernel.org>
> diff --git a/drivers/leds/Kconfig b/drivers/leds/Kconfig
> index b784bb74a8378..6d0e88e501614 100644
> --- a/drivers/leds/Kconfig
> +++ b/drivers/leds/Kconfig
> @@ -511,6 +511,18 @@ config LEDS_LP8860
>   	  on the LP8860 4 channel LED driver using the I2C communication
>   	  bus.
>   
> +config LEDS_LP8864
> +	tristate "LED support for the TI LP8864/LP8866 4/6 channel LED drivers"
> +	depends on LEDS_CLASS && I2C && OF
> +	select REGMAP_I2C
> +	help
> +	  If you say yes here you get support for the TI LP8864-Q1,
> +	  LP8864S-Q1, LP8866-Q1, LP8866S-Q1 4/6 channel LED backlight
> +	  drivers with I2C interface.
> +
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called leds-lp8864.
> +
>   config LEDS_CLEVO_MAIL
>   	tristate "Mail LED on Clevo notebook"
>   	depends on LEDS_CLASS && BROKEN
> diff --git a/drivers/leds/Makefile b/drivers/leds/Makefile
> index 18afbb5a23ee5..f66bf2e13665f 100644
> --- a/drivers/leds/Makefile
> +++ b/drivers/leds/Makefile
> @@ -57,6 +57,7 @@ obj-$(CONFIG_LEDS_LP55XX_COMMON)	+= leds-lp55xx-common.o
>   obj-$(CONFIG_LEDS_LP8501)		+= leds-lp8501.o
>   obj-$(CONFIG_LEDS_LP8788)		+= leds-lp8788.o
>   obj-$(CONFIG_LEDS_LP8860)		+= leds-lp8860.o
> +obj-$(CONFIG_LEDS_LP8864)		+= leds-lp8864.o
>   obj-$(CONFIG_LEDS_LT3593)		+= leds-lt3593.o
>   obj-$(CONFIG_LEDS_MAX5970)		+= leds-max5970.o
>   obj-$(CONFIG_LEDS_MAX77650)		+= leds-max77650.o
> diff --git a/drivers/leds/leds-lp8864.c b/drivers/leds/leds-lp8864.c
> new file mode 100644
> index 0000000000000..da02e29bbf4b7
> --- /dev/null
> +++ b/drivers/leds/leds-lp8864.c
> @@ -0,0 +1,320 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * TI LP8864/LP8866 4/6 Channel LED Driver
> + *
> + * Copyright (C) 2024 Siemens AG
> + *
> + * Based on LP8860 driver by Dan Murphy <dmurphy@ti.com>
> + */
> +
> +#include <linux/gpio/consumer.h>
> +#include <linux/i2c.h>
> +#include <linux/init.h>
> +#include <linux/leds.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/of.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/slab.h>
> +
> +#define LP8864_BRT_CONTROL		0x00
> +#define LP8864_USER_CONFIG1		0x04
> +#define   LP8864_BRT_MODE_MASK		GENMASK(9, 8)
> +/* Brightness controlled by DISPLAY_BRT register */
> +#define   LP8864_BRT_MODE_REG		BIT(9)
> +#define LP8864_SUPPLY_STATUS		0x0e
> +#define LP8864_BOOST_STATUS		0x10
> +#define LP8864_LED_STATUS		0x12
> +/* Writeable bits in the LED_STATUS register */
> +#define   LP8864_LED_STATUS_WR_MASK	GENMASK(14, 9)
> +
> +/* Textual meaning for every register bit */
> +static const char *const lp8864_supply_status_msg[] = {
> +	NULL, "Vin under-voltage fault",
> +	NULL, "Vin over-voltage fault",
> +	NULL, "Vdd under-voltage fault",
> +	NULL, "Vin over-current fault",
> +	NULL, "Missing charge pump fault",
> +	NULL, "Charge pump fault",
> +	NULL, "Missing boost sync fault",
> +	NULL, "CRC error fault ",
> +};
> +
> +/* Textual meaning for every register bit */
> +static const char *const lp8864_boost_status_msg[] = {
> +	NULL, "Boost OVP low fault",
> +	NULL, "Boost OVP high fault",
> +	NULL, "Boost over-current fault",
> +	NULL, "Missing boost FSET resistor fault",
> +	NULL, "Missing MODE SEL resistor fault",
> +	NULL, "Missing LED resistor fault",
> +	NULL, "ISET resistor short to ground fault",
> +	NULL, "Thermal shutdown fault",
> +};
> +
> +/* Textual meaning for every register bit */
> +static const char *const lp8864_led_status_msg[] = {
> +	"LED 1 fault",
> +	"LED 2 fault",
> +	"LED 3 fault",
> +	"LED 4 fault",
> +	"LED 5 fault",
> +	"LED 6 fault",
> +	"LED open fault",
> +	"LED internal short fault",
> +	"LED short to GND fault",
> +	NULL, NULL, NULL,
> +	"Invalid string configuration fault",
> +	NULL,
> +	"I2C time out fault",
> +};
> +
> +/**
> + * struct lp8864_led
> + * @client: Pointer to the I2C client
> + * @led_dev: led class device pointer
> + * @regmap: Devices register map
> + * @led_status_mask: Helps to report LED fault only once
> + */
> +struct lp8864_led {
> +	struct i2c_client *client;
> +	struct led_classdev led_dev;
> +	struct regmap *regmap;
> +	u16 led_status_mask;
> +};
> +
> +static int lp8864_fault_check(struct lp8864_led *led)
> +{
> +	int ret, i;
> +	unsigned int buf;
> +
> +	ret = regmap_read(led->regmap, LP8864_SUPPLY_STATUS, &buf);
> +	if (ret)
> +		goto err;
> +
> +	for (i = 0; i < ARRAY_SIZE(lp8864_supply_status_msg); i++)
> +		if (lp8864_supply_status_msg[i] && buf & BIT(i))
> +			dev_err(&led->client->dev, "%s\n",
> +				lp8864_supply_status_msg[i]);
> +
> +	/*
> +	 * Clear bits have an index preceding the corresponding Status bits;
> +	 * both have to be written "1" simultaneously to clear the corresponding
> +	 * Status bit.
> +	 */
> +	if (buf)
> +		ret = regmap_write(led->regmap, LP8864_SUPPLY_STATUS,
> +				   buf >> 1 | buf);
> +	if (ret)
> +		goto err;
> +
> +	ret = regmap_read(led->regmap, LP8864_BOOST_STATUS, &buf);
> +	if (ret)
> +		goto err;
> +
> +	for (i = 0; i < ARRAY_SIZE(lp8864_boost_status_msg); i++)
> +		if (lp8864_boost_status_msg[i] && buf & BIT(i))
> +			dev_err(&led->client->dev, "%s\n",
> +				lp8864_boost_status_msg[i]);
> +
> +	if (buf)
> +		ret = regmap_write(led->regmap, LP8864_BOOST_STATUS,
> +				   buf >> 1 | buf);
> +	if (ret)
> +		goto err;
> +
> +	ret = regmap_read(led->regmap, LP8864_LED_STATUS, &buf);
> +	if (ret)
> +		goto err;
> +
> +	/*
> +	 * Clear already reported faults that maintain their value until device
> +	 * power-down
> +	 */
> +	buf &= ~led->led_status_mask;
> +
> +	for (i = 0; i < ARRAY_SIZE(lp8864_led_status_msg); i++)
> +		if (lp8864_led_status_msg[i] && buf & BIT(i))
> +			dev_err(&led->client->dev, "%s\n",
> +				lp8864_led_status_msg[i]);
> +
> +	/*
> +	 * Mark those which maintain their value until device power-down as
> +	 * "already reported"
> +	 */
> +	led->led_status_mask |= buf & ~LP8864_LED_STATUS_WR_MASK;
> +
> +	/*
> +	 * Only bits 14, 12, 10 have to be cleared here, but others are RO,
> +	 * we don't care what we write to them.
> +	 */
> +	if (buf & LP8864_LED_STATUS_WR_MASK)
> +		ret = regmap_write(led->regmap, LP8864_LED_STATUS,
> +				   buf >> 1 | buf);
> +	if (ret)
> +		goto err;
> +
> +	return 0;
> +
> +err:
> +	dev_err(&led->client->dev, "Cannot read/clear faults (%pe)\n",
> +		ERR_PTR(ret));
> +
> +	return ret;
> +}
> +
> +static int lp8864_brightness_set(struct led_classdev *led_cdev,
> +				 enum led_brightness brt_val)
> +{
> +	struct lp8864_led *led = container_of(led_cdev, struct lp8864_led,
> +					      led_dev);
> +	unsigned int val = brt_val * 0xffff / LED_FULL;
> +	int ret;
> +
> +	ret = lp8864_fault_check(led);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_write(led->regmap, LP8864_BRT_CONTROL, val);
> +	if (ret)
> +		dev_err(&led->client->dev, "Cannot write BRT_CONTROL\n");
> +
> +	return ret;
> +}
> +
> +static enum led_brightness lp8864_brightness_get(struct led_classdev *led_cdev)
> +{
> +	struct lp8864_led *led = container_of(led_cdev, struct lp8864_led,
> +					      led_dev);
> +	unsigned int buf;
> +	int ret;
> +
> +	ret = regmap_read(led->regmap, LP8864_BRT_CONTROL, &buf);
> +	if (ret) {
> +		dev_err(&led->client->dev, "Cannot read BRT_CONTROL\n");
> +		return ret;
> +	}
> +
> +	return buf * LED_FULL / 0xffff;
> +}
> +
> +static int lp8864_init(struct lp8864_led *led)
> +{
> +	int ret;
> +
> +	/* Control brightness by DISPLAY_BRT register */
> +	ret = regmap_update_bits(led->regmap, LP8864_USER_CONFIG1,
> +				 LP8864_BRT_MODE_MASK, LP8864_BRT_MODE_REG);
> +	if (ret) {
> +		dev_err(&led->client->dev, "Cannot write USER_CONFIG1\n");
> +		return ret;
> +	}
> +
> +	return lp8864_fault_check(led);
> +}

Why is this a function? It is only called once in probe() and it
is very short, just put this code inline down in probe().

> +
> +static const struct regmap_config lp8864_regmap_config = {
> +	.reg_bits		= 8,
> +	.val_bits		= 16,
> +	.val_format_endian	= REGMAP_ENDIAN_LITTLE,
> +	.cache_type		= REGCACHE_NONE,

No caching is the default, you can drop this line.

Or maybe you could enable caching instead.

> +};
> +
> +static void lp8864_disable_gpio(void *data)
> +{
> +	struct gpio_desc *gpio = data;
> +
> +	gpiod_set_value(gpio, 0);
> +}
> +
> +static int lp8864_probe(struct i2c_client *client)
> +{
> +	int ret;
> +	struct lp8864_led *led;
> +	struct device_node *np = dev_of_node(&client->dev);
> +	struct device_node *child_node;
> +	struct led_init_data init_data = {};
> +	struct gpio_desc *enable_gpio;
> +
> +	led = devm_kzalloc(&client->dev, sizeof(*led), GFP_KERNEL);
> +	if (!led)
> +		return -ENOMEM;
> +
> +	child_node = of_get_next_available_child(np, NULL);
> +	if (!child_node) {
> +		dev_err(&client->dev, "No LED function defined\n");
> +		return -EINVAL;
> +	}
> +
> +	ret = devm_regulator_get_enable_optional(&client->dev, "vled");
> +	if (ret && ret != -ENODEV)
> +		return dev_err_probe(&client->dev, ret,
> +				     "Failed to enable vled regulator (%pe)\n",
> +				     ERR_PTR(ret));
> +
> +	enable_gpio = devm_gpiod_get_optional(&client->dev, "enable",
> +					      GPIOD_OUT_HIGH);
> +	if (IS_ERR(enable_gpio))
> +		return dev_err_probe(&client->dev, PTR_ERR(enable_gpio),
> +				     "Failed to get enable GPIO (%pe)\n",
> +				     enable_gpio);

dev_err_probe() already prints out the (%pe) error for you, so you
can drop that extra output.

> +
> +	ret = devm_add_action_or_reset(&client->dev, lp8864_disable_gpio,
> +				       enable_gpio);

You never do anything with this ret value.

> +
> +	led->client = client;
> +	led->led_dev.brightness_set_blocking = lp8864_brightness_set;
> +	led->led_dev.brightness_get = lp8864_brightness_get;
> +
> +	i2c_set_clientdata(client, led);

You don't need this if no where else you do i2c_get_clientdata().

> +
> +	led->regmap = devm_regmap_init_i2c(client, &lp8864_regmap_config);
> +	if (IS_ERR(led->regmap)) {
> +		dev_err(&client->dev, "Failed to allocate register map (%pe)\n",
> +			led->regmap);

dev_err_probe()?

Andrew

> +		return PTR_ERR(led->regmap);
> +	}
> +
> +	ret = lp8864_init(led);
> +	if (ret)
> +		return ret;
> +
> +	init_data.fwnode = of_fwnode_handle(child_node);
> +	init_data.devicename = "lp8864";
> +	init_data.default_label = ":display_cluster";
> +
> +	ret = devm_led_classdev_register_ext(&client->dev, &led->led_dev,
> +					     &init_data);
> +	if (ret)
> +		dev_err(&client->dev, "Failed to register LED device (%pe)\n",
> +			ERR_PTR(ret));
> +
> +	return ret;
> +}
> +
> +static const struct i2c_device_id lp8864_id[] = {
> +	{ "lp8864" },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(i2c, lp8864_id);
> +
> +static const struct of_device_id of_lp8864_leds_match[] = {
> +	{ .compatible = "ti,lp8864" },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, of_lp8864_leds_match);
> +
> +static struct i2c_driver lp8864_driver = {
> +	.driver = {
> +		.name	= "lp8864",
> +		.of_match_table = of_lp8864_leds_match,
> +	},
> +	.probe		= lp8864_probe,
> +	.id_table	= lp8864_id,
> +};
> +module_i2c_driver(lp8864_driver);
> +
> +MODULE_DESCRIPTION("Texas Instruments LP8864/LP8866 LED driver");
> +MODULE_AUTHOR("Alexander Sverdlin <alexander.sverdlin@siemens.com>");
> +MODULE_LICENSE("GPL");

