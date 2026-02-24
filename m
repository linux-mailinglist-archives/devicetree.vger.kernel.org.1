Return-Path: <devicetree+bounces-268090-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPaMLo0qnmn5TgQAu9opvQ
	(envelope-from <devicetree+bounces-268090-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 23:47:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3E918DA5D
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 23:47:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 001863109B1E
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 22:42:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D89734B1A3;
	Tue, 24 Feb 2026 22:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R6Zrs70Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f54.google.com (mail-dl1-f54.google.com [74.125.82.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 036821C84B8
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 22:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771972937; cv=none; b=OjOZqWNTaoRmMN3ZJcW9/5dBeRbTLMMG8gTeYASVCeuxdcNOykI8LizaBvpZgXCliFyvd5LfNOxbnhtmpiFMST1Tg6/BlNkS8tmf+fSJsu1OJDYbMna3LIGQvNKXG77yaOKpax1mBamsybIAKQCfJo+yXOJOngMGRwZn38/HpvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771972937; c=relaxed/simple;
	bh=FC5gjeSfV6B51mX7QB5l8gNECupkSpJM7ZuhLKvpmHM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oyBu0lA+FqkNOB2ipquQIBuSxCuFuWKO/F4P5mKeKerk1LSIHUklHHiWFBA8PBFxwI27vKAM3WSzkYYMx8TwYTLUfXrZl9AFU3GfSDdwWU8pAXM6bcetMS+LNmqW/IA6WZf/JfisZiMnvTWNuZ20wHzKG1D76XdCigi4knU25u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R6Zrs70Q; arc=none smtp.client-ip=74.125.82.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f54.google.com with SMTP id a92af1059eb24-12758ce1e8dso1769523c88.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 14:42:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771972934; x=1772577734; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zVVsLnBcvyWXnBNjAvKz4iaySgoUxpk/aOB6vGuPVF0=;
        b=R6Zrs70Q3pV+Oel8AhnSZldgXapHS7ZquHSfq73V4i7AogWFysvWeKE3O3+uGVD41U
         2NwjOwONB2PxSPMOgrvxKFcGBvQzuJl//zNy9AsQf9Lm9rZ4y006Hf8mXe0YK6KUfUJx
         SqS95eXLLz52V6HjiH+QAl3xnLcEEPGVVBwyJ89mVbKkniEIRjDFGasqaAFtL3P9OYNA
         afOWnlIQBxUdIQELjg4p1ouEYMZUWYKaNXLYfcwhE691lLy+brzIuNDMD+W7M3HPrmmg
         A3vqJ803YuNLU3tRzn+nrdXhj5+uEKIR/d8eyi0I4H1qZNHBedDNn9G1Ecr2dmwP+jNd
         sYwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771972934; x=1772577734;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zVVsLnBcvyWXnBNjAvKz4iaySgoUxpk/aOB6vGuPVF0=;
        b=hBS3C+xE8L3NO0GqTnIrPsRFifhF+U9S8B9hLC7SxDDQOOOpbaVUA+nW0SPNDzeXI4
         JgAnWGU5u8smLFo28Ya/nUQ8THcKEGFqAblG4z6UU7UnYyjjBXt7gGf59WA4P2J6oVTZ
         EpJGd1t50yaWkzQQQBwB9tFvEcyK+Hzz7Mla4zkc6kyAE1Z/J43kSTsOIUQv/jKo35mv
         MO0PMxuw8X+IBN5SChnlvCERDZy7NAv30rkLP4ZHyw+xZxPUEGyEza9W9EUA+bJCu+hz
         UWL6a3eWHTYp5pJ2LvDjsgzPVzd8D44DuzRNJJOB+4R2xTO0WNAlV2OqgbadXewc8XRu
         akiA==
X-Forwarded-Encrypted: i=1; AJvYcCW3eMoW/P2oJODlYGdH0CJPpn3p5i1vPLmT8k1/o4++gSzbD4lCSWwJym2z3U7qgpEsGBpp8Ws0U95H@vger.kernel.org
X-Gm-Message-State: AOJu0YxoBpdTLiv/buvQMIQvthL0SD6ASQ3Otx0aQX0VP5lwBBq2bbYa
	C6odTmp/Q32ntYD4Upw0/bajR6VurF5Hdt2kq9HxtalawxIThRHskdJr
X-Gm-Gg: ATEYQzylLoXivbIYObi0C9NK2/hZRqBGRu9/1aU81nHV73F9J+3KIRGD6r8AWbv4/cf
	0ETmou7bKmzim+MAIs8w9yjsp3oL+wKCfaCrLFb9caBixaIOI4rPyNaroaEjjg7TybICnX/GIv5
	kGUkyEdbyyoHl7YBG3TrpB0xBwds9rqeybnKKk98Ag+VMBZXFNkS2YyDWUWD6ib9C5p13EDd9zN
	zKtJGdq1iJyRLpL8CMx2YY3/chvXpQkAIC+n8SN41evpUhiG5Rk26MIZGHBAOr/cOtD5veQ5WQi
	2DLN7sKjuDrsjvFUnESZwBFa40zkQHX//jz13chkAeK8AXduNJ5GWAWlD43oOPQCSWLRM+Fjdau
	Lr/FH3gO/SqdmQgvOgTjeGg0wkT1cC/KVGx2iQI9NcsNQekXRLpRv82Nhfl3hSkYrAnNARcom1G
	4zcNqpw8ZeQPcT45RIY0MTqJcPI4fJpiVlAVB9+5gJB2mtn4/jF9WJK+aJzUAdpzSj
X-Received: by 2002:a05:7022:4a3:b0:11b:ca88:c503 with SMTP id a92af1059eb24-1276acda3e1mr6567263c88.3.1771972933984;
        Tue, 24 Feb 2026 14:42:13 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:e1d3:e70f:c61b:7501])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1276af7b4c7sm11692428c88.9.2026.02.24.14.42.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 14:42:13 -0800 (PST)
Date: Tue, 24 Feb 2026 14:42:10 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: marcpaolo.sosa@analog.com
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] input: misc: add driver for max16150
Message-ID: <aZ4nA33Lc73L1D2y@google.com>
References: <20260223-max16150-v1-0-38e2a4f0d0f1@analog.com>
 <20260223-max16150-v1-2-38e2a4f0d0f1@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223-max16150-v1-2-38e2a4f0d0f1@analog.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-268090-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6F3E918DA5D
X-Rspamd-Action: no action

Hi Marc,

On Mon, Feb 23, 2026 at 07:03:40PM +0800, Marc Paolo Sosa via B4 Relay wrote:
> From: Marc Paolo Sosa <marcpaolo.sosa@analog.com>
> 
> MAX16150/MAX16169 nanoPower Pushbutton On/Off Controller
> 
> Signed-off-by: Marc Paolo Sosa <marcpaolo.sosa@analog.com>
> ---
>  drivers/input/misc/Kconfig    |   9 +++
>  drivers/input/misc/Makefile   |   1 +
>  drivers/input/misc/max16150.c | 161 ++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 171 insertions(+)
> 
> diff --git a/drivers/input/misc/Kconfig b/drivers/input/misc/Kconfig
> index 94a753fcb64f..a31d3d2a7fd6 100644
> --- a/drivers/input/misc/Kconfig
> +++ b/drivers/input/misc/Kconfig
> @@ -178,6 +178,15 @@ config INPUT_E3X0_BUTTON
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called e3x0_button.
>  
> +config INPUT_MAX16150_PWRBUTTON
> +	tristate "MAX16150/MAX16169 Pushbutton driver"
> +	help
> +	  Say Y here if you want to enable power key reporting via
> +	  MAX16150/MAX16169 nanoPower Pushbutton On/Off Controller.
> +
> +	  To compile this driver as a module, choose M here. The module will
> +	  be called max16150.
> +
>  config INPUT_PCSPKR
>  	tristate "PC Speaker support"
>  	depends on PCSPKR_PLATFORM
> diff --git a/drivers/input/misc/Makefile b/drivers/input/misc/Makefile
> index 415fc4e2918b..c2c1c45f2df6 100644
> --- a/drivers/input/misc/Makefile
> +++ b/drivers/input/misc/Makefile
> @@ -52,6 +52,7 @@ obj-$(CONFIG_INPUT_IQS7222)		+= iqs7222.o
>  obj-$(CONFIG_INPUT_KEYSPAN_REMOTE)	+= keyspan_remote.o
>  obj-$(CONFIG_INPUT_KXTJ9)		+= kxtj9.o
>  obj-$(CONFIG_INPUT_M68K_BEEP)		+= m68kspkr.o
> +obj-$(CONFIG_INPUT_MAX16150_PWRBUTTON)	+= max16150.o
>  obj-$(CONFIG_INPUT_MAX7360_ROTARY)	+= max7360-rotary.o
>  obj-$(CONFIG_INPUT_MAX77650_ONKEY)	+= max77650-onkey.o
>  obj-$(CONFIG_INPUT_MAX77693_HAPTIC)	+= max77693-haptic.o
> diff --git a/drivers/input/misc/max16150.c b/drivers/input/misc/max16150.c
> new file mode 100644
> index 000000000000..ae353b926afc
> --- /dev/null
> +++ b/drivers/input/misc/max16150.c
> @@ -0,0 +1,161 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Analog Devices MAX16150/MAX16169 Pushbutton Driver
> + *
> + * Copyright 2025 Analog Devices Inc.
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/init.h>
> +#include <linux/input.h>
> +#include <linux/interrupt.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/kernel.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/platform_device.h>
> +#include <linux/property.h>
> +
> +#define MAX16150_LONG_INTERRUPT 120000000
> +
> +struct max16150_chip_info {
> +	bool has_clr_gpio;
> +};
> +
> +struct max16150_device {
> +	struct input_dev *input;
> +	struct gpio_desc *gpiod;
> +	struct gpio_desc *clr_gpiod;
> +	const struct max16150_chip_info *chip_info;
> +	u64 low, high, duration;

I do not think you need to store "high" and "duration", just "press"
time. I also do not think you need nanosecond resilution, jiffies will
do.

> +	unsigned int keycode;
> +};
> +
> +static irqreturn_t max16150_irq_handler(int irq, void *_max16150)
> +{
> +	struct max16150_device *max16150 = _max16150;
> +	int value;
> +
> +	value = gpiod_get_value(max16150->gpiod);
> +
> +	if (!value) {
> +		max16150->low = ktime_get_ns();
> +		return IRQ_HANDLED;
> +	}
> +
> +	max16150->high = ktime_get_ns();
> +	if (max16150->low) {
> +		max16150->duration = max16150->high - max16150->low;
> +
> +		if (max16150->duration > MAX16150_LONG_INTERRUPT) {

time_after() is probably what you need here.

> +			gpiod_set_value(max16150->clr_gpiod, 1);
> +			input_report_key(max16150->input, max16150->keycode, 1);
> +			input_sync(max16150->input);

Why is press not reported right away?

> +			input_report_key(max16150->input, max16150->keycode, 0);
> +			input_sync(max16150->input);
> +		}
> +
> +		max16150->low = 0;
> +	}
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static const struct max16150_chip_info max16150_variant_a = {
> +	.has_clr_gpio = true,
> +};
> +
> +static const struct max16150_chip_info max16150_variant_b = {
> +	.has_clr_gpio = false,
> +};
> +
> +static int max16150_probe(struct platform_device *pdev)
> +{
> +	const struct max16150_chip_info *chip_info;
> +	struct max16150_device *max16150;
> +	struct device *dev = &pdev->dev;
> +	int err, irq, ret;

Why do you need both err and ret?

> +	u32 keycode;
> +
> +	chip_info = device_get_match_data(dev);
> +	if (!chip_info)
> +		return -EINVAL;
> +
> +	max16150 = devm_kzalloc(dev, sizeof(*max16150), GFP_KERNEL);
> +	if (!max16150)
> +		return -ENOMEM;
> +
> +	max16150->chip_info = chip_info;
> +
> +	max16150->input = devm_input_allocate_device(dev);
> +	if (!max16150->input)
> +		return -ENOMEM;
> +
> +	max16150->input->name = "MAX16150 Pushbutton";
> +	max16150->input->phys = "max16150/input0";
> +	max16150->input->id.bustype = BUS_HOST;
> +
> +	keycode = KEY_POWER;
> +	ret = device_property_read_u32(dev, "linux,code", &keycode);

	err = ...

> +	if (ret)
> +		return dev_err_probe(dev, ret, "Failed to get keycode\n");
> +
> +	max16150->keycode = keycode;
> +
> +	input_set_capability(max16150->input, EV_KEY, max16150->keycode);
> +
> +	max16150->gpiod = devm_gpiod_get(dev, "interrupt", GPIOD_IN);
> +	if (IS_ERR(max16150->gpiod))
> +		return dev_err_probe(dev, PTR_ERR(max16150->gpiod),
> +				     "Failed to get interrupt GPIO\n");
> +
> +	if (chip_info->has_clr_gpio) {
> +		max16150->clr_gpiod = devm_gpiod_get(dev, "clr", GPIOD_OUT_HIGH);
> +		if (IS_ERR(max16150->clr_gpiod))
> +			return dev_err_probe(dev, PTR_ERR(max16150->clr_gpiod),
> +					     "Failed to get clr GPIO\n");
> +
> +		if (!max16150->clr_gpiod)


How would we end up here? You are using devm_gpiod_get() which will
never return NULL GPIO descriptor.

> +			return dev_err_probe(dev, -ENODEV,
> +						 "clr GPIO is mandatory\n");
> +
> +		if (max16150->clr_gpiod) {
> +			fsleep(1000);
> +			gpiod_set_value(max16150->clr_gpiod, 0);
> +		}
> +	}
> +
> +	irq = gpiod_to_irq(max16150->gpiod);
> +	if (irq < 0)
> +		return dev_err_probe(dev, irq,
> +				     "MAX16150: Failed to map GPIO to IRQ");

As Rob said in DT binding review use interrupts property and separate
IRQ and GPIO handling.

> +
> +	err = devm_request_irq(dev, irq, max16150_irq_handler,
> +			       IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
> +			       "max16150_irq", max16150);
> +	if (err)
> +		return err;
> +
> +	return input_register_device(max16150->input);

	err = input_register_device(...);
	if (err)
		return err;
	
	return 0;

> +}
> +
> +static const struct of_device_id max16150_of_match[] = {
> +	{ .compatible = "adi,max16150a", .data = &max16150_variant_a },
> +	{ .compatible = "adi,max16150b", .data = &max16150_variant_b },
> +	{ .compatible = "adi,max16169a", .data = &max16150_variant_a },
> +	{ .compatible = "adi,max16169b", .data = &max16150_variant_b },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, max16150_of_match);
> +
> +static struct platform_driver max16150_driver = {
> +	.probe  = max16150_probe,
> +	.driver = {
> +		.name = "max16150",
> +		.of_match_table = max16150_of_match,
> +	},
> +};
> +module_platform_driver(max16150_driver);
> +
> +MODULE_AUTHOR("Marc Paolo Sosa <marcpaolo.sosa@analog.com>");
> +MODULE_DESCRIPTION("MAX16150/MAX16169 Pushbutton Driver");
> +MODULE_LICENSE("GPL");

Thanks.

-- 
Dmitry

