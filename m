Return-Path: <devicetree+bounces-49680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5B58775F5
	for <lists+devicetree@lfdr.de>; Sun, 10 Mar 2024 10:26:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 569222823C8
	for <lists+devicetree@lfdr.de>; Sun, 10 Mar 2024 09:26:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B2DF1DA3A;
	Sun, 10 Mar 2024 09:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ravnborg.org header.i=@ravnborg.org header.b="HWl8yCaX";
	dkim=permerror (0-bit key) header.d=ravnborg.org header.i=@ravnborg.org header.b="kr87XSiC"
X-Original-To: devicetree@vger.kernel.org
Received: from mailrelay5-1.pub.mailoutpod2-cph3.one.com (mailrelay5-1.pub.mailoutpod2-cph3.one.com [46.30.211.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03FC71DFD2
	for <devicetree@vger.kernel.org>; Sun, 10 Mar 2024 09:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.30.211.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710062781; cv=none; b=ulchesT3H8D1WwPIg5gQc7qBVmaI3n8I5Ua6N55o66DsR0mYCyfe3GnAA2D8mE3pn13fbY8f/HLEkTZtZ62I7c9gNR7f50HrYxH9lO5tU8+XRfq2e/aYpLZleAYrUEvtko2IEHHsy8RzgQF8lrjDrIxcMjvHDnkgwnSFvrpKvqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710062781; c=relaxed/simple;
	bh=WhsHVvaF1vXL3YSneiKe2MV5hhS81gBwkb8r9J/m+4c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A6lqaPwdnjv5t1uBWK8XDX2ax9SpNUWYHZf/V8i8gdYtQpHkUFxDP/6UGU8DhGAqZKDxsj/2grRYM49ug4aYOh+MgIo2xNtEcGd71skihY+Ubq9Vx1K+eRiSvCkhTbZxhXTXuR8jBMwHHYmv/rfTZnpn8Lu24KDcg3YvLFK6Pww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ravnborg.org; spf=none smtp.mailfrom=ravnborg.org; dkim=pass (2048-bit key) header.d=ravnborg.org header.i=@ravnborg.org header.b=HWl8yCaX; dkim=permerror (0-bit key) header.d=ravnborg.org header.i=@ravnborg.org header.b=kr87XSiC; arc=none smtp.client-ip=46.30.211.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ravnborg.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ravnborg.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=+WfJ7IZT4YujSG0MObaMV24x5YmLTfgI703rzFU8kQo=;
	b=HWl8yCaXGa14chA+vkSRZwH+v91wkd36QtHu8oxkQgGl6eO4UhQRhLTVNbpZycM6MMOESkD6nJBON
	 FvkVWhug0ViBU2pur4q9LaLhpXqqzdockH4ZDfvm69O/g/7Ie1bU3cyUbjdR/h0nXyagCUGI41jMAH
	 k0x6600Nd7ASrWwulyXKsOPOAmRRSTmCP9BbXyj4eSJyxvw5qrKMAN8vfZPgamN7f5Mc4OCTJ7vHyn
	 7OQhiCAo25x5e29I/ibaftk32eQ+ltT/WC0b2BqHQfr0rc7Op/QYXcPaE9dtmmPnemyhfvoMZStRkt
	 an/HjplwTuuMRrnd/aMTdVcdBRI8lIw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=+WfJ7IZT4YujSG0MObaMV24x5YmLTfgI703rzFU8kQo=;
	b=kr87XSiCoYZ2IS7ijW+9XG72kcSOfIqj7F+9LjcZSOXLu4KwSTSOiuKAJ6eK22kCRFnugbInrmXhv
	 Lw9Tli3Cw==
X-HalOne-ID: 1444c15d-dec0-11ee-9c81-657a30c718c6
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay5.pub.mailoutpod2-cph3.one.com (Halon) with ESMTPSA
	id 1444c15d-dec0-11ee-9c81-657a30c718c6;
	Sun, 10 Mar 2024 09:25:07 +0000 (UTC)
Date: Sun, 10 Mar 2024 10:25:06 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Patrick Gansterer <paroga@paroga.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	Lee Jones <lee@kernel.org>,
	Daniel Thompson <daniel.thompson@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v3 2/2] backlight: Add new lm3509 backlight driver
Message-ID: <20240310092506.GA981663@ravnborg.org>
References: <20240309132521.1290173-1-paroga@paroga.com>
 <20240309132521.1290173-2-paroga@paroga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240309132521.1290173-2-paroga@paroga.com>

Hi Patrick,

a few comments in the following.

	Sam

On Sat, Mar 09, 2024 at 02:24:56PM +0100, Patrick Gansterer wrote:
> This is a general driver for LM3509 backlight chip of TI.
> LM3509 is High Efficiency Boost for White LEDs and/or OLED Displays with
> Dual Current Sinks. This driver supports OLED/White LED select, brightness
> control and sub/main control.
> The datasheet can be found at http://www.ti.com/product/lm3509.
> 
> Signed-off-by: Patrick Gansterer <paroga@paroga.com>
> ---
>  drivers/video/backlight/Kconfig     |   7 +
>  drivers/video/backlight/Makefile    |   1 +
>  drivers/video/backlight/lm3509_bl.c | 340 ++++++++++++++++++++++++++++
>  3 files changed, 348 insertions(+)
>  create mode 100644 drivers/video/backlight/lm3509_bl.c
> 
> diff --git a/drivers/video/backlight/Kconfig b/drivers/video/backlight/Kconfig
> index ea2d0d69bd8c..96ad5dc584b6 100644
> --- a/drivers/video/backlight/Kconfig
> +++ b/drivers/video/backlight/Kconfig
> @@ -366,6 +366,13 @@ config BACKLIGHT_AAT2870
>  	  If you have a AnalogicTech AAT2870 say Y to enable the
>  	  backlight driver.
>  
> +config BACKLIGHT_LM3509
> +	tristate "Backlight Driver for LM3509"
> +	depends on I2C
> +	select REGMAP_I2C
> +	help
> +	  This supports TI LM3509 Backlight Driver
> +
>  config BACKLIGHT_LM3630A
>  	tristate "Backlight Driver for LM3630A"
>  	depends on I2C && PWM
> diff --git a/drivers/video/backlight/Makefile b/drivers/video/backlight/Makefile
> index 06966cb20459..51a4ac5d0530 100644
> --- a/drivers/video/backlight/Makefile
> +++ b/drivers/video/backlight/Makefile
> @@ -35,6 +35,7 @@ obj-$(CONFIG_BACKLIGHT_HP700)		+= jornada720_bl.o
>  obj-$(CONFIG_BACKLIGHT_IPAQ_MICRO)	+= ipaq_micro_bl.o
>  obj-$(CONFIG_BACKLIGHT_KTD253)		+= ktd253-backlight.o
>  obj-$(CONFIG_BACKLIGHT_KTZ8866)		+= ktz8866.o
> +obj-$(CONFIG_BACKLIGHT_LM3509)		+= lm3509_bl.o
>  obj-$(CONFIG_BACKLIGHT_LM3533)		+= lm3533_bl.o
>  obj-$(CONFIG_BACKLIGHT_LM3630A)		+= lm3630a_bl.o
>  obj-$(CONFIG_BACKLIGHT_LM3639)		+= lm3639_bl.o
> diff --git a/drivers/video/backlight/lm3509_bl.c b/drivers/video/backlight/lm3509_bl.c
> new file mode 100644
> index 000000000000..bfad0aaffa0d
> --- /dev/null
> +++ b/drivers/video/backlight/lm3509_bl.c
> @@ -0,0 +1,340 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +#include <linux/backlight.h>
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/i2c.h>
> +#include <linux/module.h>
> +#include <linux/regmap.h>
> +
> +#define LM3509_NAME "lm3509_bl"
> +
> +#define LM3509_SINK_MAIN 0
> +#define LM3509_SINK_SUB 1
> +#define LM3509_NUM_SINKS 2
> +
> +#define LM3509_DEF_BRIGHTNESS 0x12
> +#define LM3509_MAX_BRIGHTNESS 0x1F
> +
> +#define REG_GP 0x10
> +#define REG_BMAIN 0xA0
> +#define REG_BSUB 0xB0
> +#define REG_MAX 0xFF
> +
> +enum {
> +	REG_GP_ENM_BIT = 0,
> +	REG_GP_ENS_BIT,
> +	REG_GP_UNI_BIT,
> +	REG_GP_RMP0_BIT,
> +	REG_GP_RMP1_BIT,
> +	REG_GP_OLED_BIT,
> +};
> +
> +struct lm3509_bl {
> +	struct regmap *regmap;
> +	struct backlight_device *bl_main;
> +	struct backlight_device *bl_sub;
> +	struct gpio_desc *reset_gpio;
> +};
> +
> +struct lm3509_bl_led_pdata {
> +	const char *label;
> +	int led_sources;
> +	u32 brightness;
> +	u32 max_brightness;
> +};
> +
> +static void lm3509_reset(struct lm3509_bl *data)
> +{
> +	if (data->reset_gpio) {
> +		gpiod_set_value(data->reset_gpio, 1);
> +		udelay(1);
> +		gpiod_set_value(data->reset_gpio, 0);
> +		udelay(10);
> +	}
> +}
> +
> +static int lm3509_update_status(struct backlight_device *bl,
> +				unsigned int en_mask, unsigned int br_reg)
> +{
> +	struct lm3509_bl *data = bl_get_data(bl);
> +	int ret;
> +	bool en;
> +
> +	ret = regmap_write(data->regmap, br_reg, bl->props.brightness);

Here you can use backlight_get_brightness() thus avoiding direct access
to backlight internal properties.

> +	if (ret < 0)
> +		return ret;
> +
> +	en = bl->props.power <= FB_BLANK_NORMAL;
Use backlight_is_blank() here.

	Sam



> +	return regmap_update_bits(data->regmap, REG_GP, en_mask,
> +				  en ? en_mask : 0);
> +}
> +
> +static int lm3509_main_update_status(struct backlight_device *bl)
> +{
> +	return lm3509_update_status(bl, BIT(REG_GP_ENM_BIT), REG_BMAIN);
> +}
> +
> +static const struct backlight_ops lm3509_main_ops = {
> +	.options = BL_CORE_SUSPENDRESUME,
> +	.update_status = lm3509_main_update_status,
> +};
> +
> +static int lm3509_sub_update_status(struct backlight_device *bl)
> +{
> +	return lm3509_update_status(bl, BIT(REG_GP_ENS_BIT), REG_BSUB);
> +}
> +
> +static const struct backlight_ops lm3509_sub_ops = {
> +	.options = BL_CORE_SUSPENDRESUME,
> +	.update_status = lm3509_sub_update_status,
> +};
> +
> +static struct backlight_device *
> +lm3509_backlight_register(struct device *dev, const char *name_suffix,
> +			  struct lm3509_bl *data,
> +			  const struct backlight_ops *ops,
> +			  const struct lm3509_bl_led_pdata *pdata)
> +
> +{
> +	struct backlight_device *bd;
> +	struct backlight_properties props;
> +	const char *label = pdata->label;
> +	char name[64];
> +
> +	memset(&props, 0, sizeof(props));
> +	props.type = BACKLIGHT_RAW;
> +	props.brightness = pdata->brightness;
> +	props.max_brightness = pdata->max_brightness;
> +	props.power = pdata->brightness > 0 ? FB_BLANK_UNBLANK :
> +					      FB_BLANK_POWERDOWN;
props.power is not supposed to be set by the user - is is maintained by
the backlight core.


	Sam

