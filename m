Return-Path: <devicetree+bounces-244936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B6CD5CAA50C
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 12:27:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A776B300B6AE
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 11:27:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B3662F1FD1;
	Sat,  6 Dec 2025 11:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wanadoo.fr header.i=@wanadoo.fr header.b="Dv1cvYak"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.smtpout.orange.fr (smtp-71.smtpout.orange.fr [80.12.242.71])
	(using TLSv1.2 with cipher AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A75681F875A;
	Sat,  6 Dec 2025 11:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.12.242.71
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765020461; cv=none; b=k33Tt/XYSOJrlecwhiJkEvTLtNj3k05nOEqjnZ2kXILPr/u7yi4jIjOvBEG2HjcHCPsvDbRfFIE5F60jo1Wa1Wc31qJ1ft2ftTVrWMJFZ8fJeqjUH4x9VvgZEGISCkZPTzqNvtSH4Jyyglmo+z33QS/EYAkoNLbZFWjghTaxWwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765020461; c=relaxed/simple;
	bh=hii068F3KbgumOsAfO8xCUal0EPtE5ouidBwEDQtYaU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iGwpUHMCJBIrL86mmiH5rL4De3dLyi/bZ1rC/+v3U3O4CfbggN4j02c7RAhOzr//ijtdeABcYMUpJLBrru0Z7lWWy72NPfLw0OLsMdZe/CsK3gPPgQ8LK91iaw0iMuFLgeLCQmL78eBiRI7lprEV0E8/t4t94IbEUQmic+k8GTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=wanadoo.fr; spf=pass smtp.mailfrom=wanadoo.fr; dkim=pass (2048-bit key) header.d=wanadoo.fr header.i=@wanadoo.fr header.b=Dv1cvYak; arc=none smtp.client-ip=80.12.242.71
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=wanadoo.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wanadoo.fr
Received: from [IPV6:2a01:cb10:785:b00:8347:f260:7456:7662]
 ([IPv6:2a01:cb10:785:b00:8347:f260:7456:7662])
	by smtp.orange.fr with ESMTPA
	id RqIpvLNzzprvxRqIpvLnbb; Sat, 06 Dec 2025 12:18:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1765019897;
	bh=J6E/8F3q2cZsVYqLNny0ynAV2xtNiuPpv9dnjaTz57U=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=Dv1cvYakGXmyjP1HKoAmh71ETXlbYxa7OF2sDk5coZ6q5DYgXd6AzsoZz6WzXGj0m
	 8jnJLD2sfXo7AxMiLStMY0uGn/mbb2t33wDDpoyNOSAcsuUCfsSq1JMP95CVI5h9ZB
	 nIx9RLbGZ9uhklAtjK7m11Zo6zbx/XnBSMiM2ScdEFjOur3ySVBhfK7YTw2ooSZ/OG
	 agi3zNcm7v3cTfLBH1v/G4fZjU8slJ8sTgv90bqdfrjCGyVkR6kAygW4DIt7dQ+zoB
	 f3q/o+aPRifWcWjUoqi4Lcz35lGF0qRkAt5g29QLWf0M6gPYc4usryGFDEbQv/hzdR
	 WrSMdz15TP6FA==
X-ME-Helo: [IPV6:2a01:cb10:785:b00:8347:f260:7456:7662]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sat, 06 Dec 2025 12:18:17 +0100
X-ME-IP: 2a01:cb10:785:b00:8347:f260:7456:7662
Message-ID: <f69062aa-e9e8-44c9-ad84-d9263747528c@wanadoo.fr>
Date: Sat, 6 Dec 2025 12:18:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/4] led: sony-cronos-smc: Add RGB LED driver for Sony
 Cronos SMC
To: tpearson@raptorengineering.com
Cc: Georgy.Yakovlev@sony.com, conor+dt@kernel.org,
 devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
 lee@kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 sanastasio@raptorengineering.com
References: <20251204185015.1364439-1-tpearson@raptorengineering.com>
 <20251204185015.1364439-4-tpearson@raptorengineering.com>
Content-Language: en-US, fr-FR
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20251204185015.1364439-4-tpearson@raptorengineering.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Le 04/12/2025 à 19:50, Timothy Pearson a écrit :
> The Sony Cronos Platform Controller is a multi-purpose platform controller with
> an integrated multi-channel RGB LED controller.  The LED controller is a
> pseudo-RGB device with only two states for each of the RGB subcomponents of
> each LED, but is exposed as a full RGB device for ease of integration with
> userspace software.  Internal thresholding is used to convert the color values
> to the required on/off RGB subcomponent controls.
> 
> Signed-off-by: Timothy Pearson <tpearson-z0qzliK6Om0mgXJStvpl+vpXobYPEAuW@public.gmane.org>
> ---
>   drivers/leds/Kconfig            |  19 ++
>   drivers/leds/Makefile           |   1 +
>   drivers/leds/leds-sony-cronos.c | 378 ++++++++++++++++++++++++++++++++
>   3 files changed, 398 insertions(+)
>   create mode 100644 drivers/leds/leds-sony-cronos.c

Hi,

kernel test robot has complained, so it is still time to suggest some 
small clean-ups, if of any interest.

...

> diff --git a/drivers/leds/Makefile b/drivers/leds/Makefile
> index 9a0333ec1a86..6dbcf747cab6 100644
> --- a/drivers/leds/Makefile
> +++ b/drivers/leds/Makefile
> @@ -84,6 +84,7 @@ obj-$(CONFIG_LEDS_POWERNV)		+= leds-powernv.o
>   obj-$(CONFIG_LEDS_PWM)			+= leds-pwm.o
>   obj-$(CONFIG_LEDS_QNAP_MCU)		+= leds-qnap-mcu.o
>   obj-$(CONFIG_LEDS_REGULATOR)		+= leds-regulator.o
> +obj-$(CONFIG_LEDS_SONY_CRONOS)		+= leds-sony-cronos.o

Keep alphabetical order?

>   obj-$(CONFIG_LEDS_SC27XX_BLTC)		+= leds-sc27xx-bltc.o
>   obj-$(CONFIG_LEDS_ST1202)		+= leds-st1202.o
>   obj-$(CONFIG_LEDS_SUN50I_A100)		+= leds-sun50i-a100.o
> diff --git a/drivers/leds/leds-sony-cronos.c b/drivers/leds/leds-sony-cronos.c
> new file mode 100644
> index 000000000000..ce71a8b6ce94
> --- /dev/null
> +++ b/drivers/leds/leds-sony-cronos.c
> @@ -0,0 +1,378 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * LED driver for Sony Cronos SMCs
> + * Copyright (C) 2012 Dialog Semiconductor Ltd.
> + * Copyright (C) 2023 Sony Interactive Entertainment
> + * Copyright (C) 2025 Raptor Engineering, LLC
> + */
> +
> +#include <linux/kernel.h>
> +#include <linux/leds.h>
> +#include <linux/module.h>
> +#include <linux/led-class-multicolor.h>
> +#include <linux/mfd/sony-cronos.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>

Sometimes, it is preferred to keep #include in alphabetic order.

> +
> +/* Masks and Bit shifts */
> +#define CRONOS_LEDS_STATUS_FLASHING_MASK	0x40
> +#define CRONOS_LEDS_STATUS_FLASHING_SHIFT	6
> +#define CRONOS_LEDS_STATUS_COLOR_MASK		0x07
> +#define CRONOS_LEDS_STATUS_COLOR_SHIFT		0

...

> +enum sony_cronos_led_id {
> +	LED_ID_CCM1_STATUS = 0x00,
> +	LED_ID_CCM2_STATUS,
> +	LED_ID_CCM3_STATUS,
> +	LED_ID_CCM4_STATUS,
> +	LED_ID_SWITCH_STATUS,
> +	LED_ID_SMC_STATUS,
> +
> +	LED_ID_CCM1_LINK,
> +	LED_ID_CCM2_LINK,
> +	LED_ID_CCM3_LINK,
> +	LED_ID_CCM4_LINK,
> +	LED_ID_SWITCH_LINK,
> +
> +	LED_ID_CCM1_POWER,
> +	LED_ID_CCM2_POWER,
> +	LED_ID_CCM3_POWER,
> +	LED_ID_CCM4_POWER,
> +
> +	LED_ID_COUNT,

Unneeded trailing comma after a terminator.
Moreover, LED_ID_COUNT looks unused. Is it needed?

> +};
> +
> +enum sony_cronos_led_type {
> +	LED_TYPE_STATUS,
> +	LED_TYPE_LINK,
> +	LED_TYPE_POWER,
> +};

...

> +static int cronos_led_color_store(struct sony_cronos_smc *chip, struct sony_cronos_led *led)
> +{
> +	u8 byte;
> +	u8 color_mask;
> +	u8 color_shift;
> +	u8 color_key_red;
> +	u8 color_key_green;
> +	u8 color_key_blue;
> +	int ret;
> +
> +	if (led->led_type == LED_TYPE_STATUS) {
> +		color_mask = CRONOS_LEDS_STATUS_COLOR_MASK;
> +		color_shift = CRONOS_LEDS_STATUS_COLOR_SHIFT;
> +	} else if (led->led_type == LED_TYPE_LINK) {
> +		color_mask = CRONOS_LEDS_LINK_COLOR_MASK;
> +		color_shift = CRONOS_LEDS_LINK_COLOR_SHIFT;
> +	} else if (led->led_id == LED_ID_CCM1_POWER) {
> +		color_mask = CRONOS_LEDS_CCM1_POWER_COLOR_MASK;
> +		color_shift = CRONOS_LEDS_CCM1_POWER_COLOR_SHIFT;
> +	} else if (led->led_id == LED_ID_CCM2_POWER) {
> +		color_mask = CRONOS_LEDS_CCM2_POWER_COLOR_MASK;
> +		color_shift = CRONOS_LEDS_CCM2_POWER_COLOR_SHIFT;
> +	} else if (led->led_id == LED_ID_CCM3_POWER) {
> +		color_mask = CRONOS_LEDS_CCM3_POWER_COLOR_MASK;
> +		color_shift = CRONOS_LEDS_CCM3_POWER_COLOR_SHIFT;
> +	} else if (led->led_id == LED_ID_CCM4_POWER) {
> +		color_mask = CRONOS_LEDS_CCM4_POWER_COLOR_MASK;
> +		color_shift = CRONOS_LEDS_CCM4_POWER_COLOR_SHIFT;
> +	} else
> +		return ret;
> +
> +	switch (led->led_type) {
> +	case LED_TYPE_POWER:
> +		color_key_red = LED_COLOR_POWER_RED;
> +		color_key_green = LED_COLOR_POWER_GREEN;
> +		/* Blue channel does not exist for CCM power LEDs */
> +		color_key_blue = LED_COLOR_POWER_OFF;
> +		break;
> +	default:
> +		color_key_red = LED_COLOR_RED;
> +		color_key_green = LED_COLOR_GREEN;
> +		color_key_blue = LED_COLOR_BLUE;
> +	}
> +
> +	/* Assemble SMC color command code */
> +	byte = LED_COLOR_POWER_OFF;
> +	if (led->subled_info[0].brightness > 128)
> +		byte |= color_key_red;
> +	if (led->subled_info[1].brightness > 128)
> +		byte |= color_key_green;
> +	if (led->subled_info[2].brightness > 128)
> +		byte |= color_key_blue;
> +
> +	ret = regmap_update_bits(chip->regmap, led->led_register, color_mask, byte << color_shift);
> +	if (ret) {
> +		dev_err(chip->dev, "Failed to set color value 0x%02x to LED register 0x%02x", byte,

Missing \n at the end of the message.

> +			led->led_register);
> +		return ret;
> +	}
> +	return 0;
> +}

...

> +static const struct of_device_id sony_cronos_led_of_id_table[] = {
> +	{ .compatible = "sie,cronos-led", },
> +	{},

Unneeded trailing comma after a terminator.

> +};
> +MODULE_DEVICE_TABLE(of, sony_cronos_led_of_id_table);

...

CJ

