Return-Path: <devicetree+bounces-33668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C138B835FAE
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:29:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7180F28CA71
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 10:29:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 318C13A1C9;
	Mon, 22 Jan 2024 10:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zzImZ57Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B63F3B782
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 10:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705919292; cv=none; b=OMyGxyPInY4KEkB6u8sQ7drLSlaKbcsyg5VaSngzf9q8irXAyEhu++xKRlkhLns4k+te3I7CpVZ/NpoDWlAl53Hk/t1VaoKk8aVMOKsg5neZIWwLBzor2tahAFx7qnmDVRgUgG6vcmzDrfyqW8fXTd1F/oouVfiordHueCpVw80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705919292; c=relaxed/simple;
	bh=vBIE41DUABMzuSycmktCw+6jZ56ZuxnAcG4FIrlwI+M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WPQx+62v4Iy0jzVeOp0YR685T9/wuwDFLKqHIO0rl2gqKDSCDLsxmDWEP7JSt0kUf6+owAWkTHlM7dix1rqbecPIEIYkFpbGU7NqI8UB6bmMfoXfks3QYUgC6yRpUB1eOABN50GUTE9yTC1YL2+N7g7qqq/le+kbPdbUGwjcaaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zzImZ57Q; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-337d90030bfso2643271f8f.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 02:28:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705919287; x=1706524087; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cTCtw5roejauRZb1rW/DubsmSIQ5L20XK+iYbkTVegQ=;
        b=zzImZ57QX/bpTF/L4To311Ve/zqhohbDwdNcjW+APzzlug+Si3r1pwvmakgRr8Wt3p
         PZClsgEw0IG6A679xyaGI9Thb6mSd9XTAUD2CGN0tFdU5Jz5dl/SZlqN1zgj4XxC5yVS
         RrpGWr+JrQdvRrtk4KkDejKz6TbMYqKTNomaP09V2bd3mJIHanK0FpXJZ+Oy+I0M4Uxn
         AsS5YMQSVSJEt2YTf1v9G6O4Thoc5ecedAmgnN2scx/cyY0SI27E4bfFRvrsmLTGvHEV
         RgfrpHKJAIXbvaXUz4Zaq8RcaziE9JRM1KNFOx9RT+guvP58EQnVGX+PYzOa+jqoQIKf
         Sk8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705919287; x=1706524087;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cTCtw5roejauRZb1rW/DubsmSIQ5L20XK+iYbkTVegQ=;
        b=RmHVbDQ/NB2KLc5FO+fZ3Uwpz3IlL3OIH+/otzdrATi+R0Da/Y3/ompTzUEO/zRTST
         9P/RqLp7wzznajcBmyENOtsW3dU5DfSnbQ/31GQ4mOtcSZkse69gJL58+x5efNrXe6Y9
         Vy+5DRxjaKJ+6cpj6u+XZ66RUFUZS79gPkZG4VkwM1Qea/7MHpz01dRXTEx/IHZMBAuZ
         vquBCru7p6jhHn0MkRSp2xvZjzTyx57K6VyXabGN0BaZwgiAD/0tgItTniJQIyu2WezX
         VjBp8Kj3ZM2hJAuzxLEENf8QgPXOhg5sELh68qEIHc//Sy9p7JEmNZa32jW+2d/spcOP
         euUA==
X-Gm-Message-State: AOJu0YxgOAH4QAeVT0Hn8uHIwaKjW+HR2GYNfNzZRjfOh1/0oNu0N8Px
	ozp3nPCh/FOaam1kLcV46hFVs4k47B1WJg8UP9tdp7e4zMm5DCsfzllkAVXRcBs=
X-Google-Smtp-Source: AGHT+IFJN44C0XBmIhDGOu0CvPL9d8S5H/kcyzcz9lspP4Nm5ugoGJW4ka/39Dgy0iB6yMbk94G+Nw==
X-Received: by 2002:a05:6000:104:b0:337:ac2c:cfd9 with SMTP id o4-20020a056000010400b00337ac2ccfd9mr1170855wrx.196.1705919287545;
        Mon, 22 Jan 2024 02:28:07 -0800 (PST)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id n17-20020a5d67d1000000b003392f229b60sm3819885wrw.40.2024.01.22.02.28.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 02:28:07 -0800 (PST)
Date: Mon, 22 Jan 2024 10:28:05 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Duje =?utf-8?Q?Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Lee Jones <lee@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Helge Deller <deller@gmx.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Karel Balej <balejk@matfyz.cz>,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-fbdev@vger.kernel.org
Subject: Re: [PATCH v3 3/3] backlight: Add Kinetic KTD2801 backlight support
Message-ID: <20240122102805.GB8596@aspen.lan>
References: <20240120-ktd2801-v3-0-fe2cbafffb21@skole.hr>
 <20240120-ktd2801-v3-3-fe2cbafffb21@skole.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240120-ktd2801-v3-3-fe2cbafffb21@skole.hr>

On Sat, Jan 20, 2024 at 10:26:45PM +0100, Duje Mihanović wrote:
> KTD2801 is a LED backlight driver IC found in samsung,coreprimevelte.
> The brightness can be set using PWM or the ExpressWire protocol. Add
> support for the KTD2801.
>
> Signed-off-by: Duje Mihanović <duje.mihanovic@skole.hr>

As Linus W. said, this is looking really nice now. Thanks!

Just a couple of nits below.


> diff --git a/drivers/video/backlight/Kconfig b/drivers/video/backlight/Kconfig
> index 51387b1ef012..585a5a713759 100644
> --- a/drivers/video/backlight/Kconfig
> +++ b/drivers/video/backlight/Kconfig
> @@ -183,6 +183,14 @@ config BACKLIGHT_KTD253
>  	  which is a 1-wire GPIO-controlled backlight found in some mobile
>  	  phones.
>
> +config BACKLIGHT_KTD2801
> +	tristate "Backlight Driver for Kinetic KTD2801"
> +	depends on GPIOLIB || COMPILE_TEST

As patch 1 feedback, seems odd for the client to be responsible for
this. It should be managed in LEDS_EXPRESSWIRE.


> +	select LEDS_EXPRESSWIRE
> +	help
> +	  Say Y to enable the backlight driver for the Kinetic KTD2801 1-wire
> +	  GPIO-controlled backlight found in Samsung Galaxy Core Prime VE LTE.
> +
>  config BACKLIGHT_KTZ8866
>  	tristate "Backlight Driver for Kinetic KTZ8866"
>  	depends on I2C
> diff --git a/drivers/video/backlight/ktd2801-backlight.c b/drivers/video/backlight/ktd2801-backlight.c
> new file mode 100644
> index 000000000000..7b9d1a93aa71
> --- /dev/null
> +++ b/drivers/video/backlight/ktd2801-backlight.c
> @@ -0,0 +1,143 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Datasheet:
> + * https://www.kinet-ic.com/uploads/web/KTD2801/KTD2801-04b.pdf
> + */
> +#include <linux/backlight.h>
> +#include <linux/bits.h>
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/leds-expresswire.h>
> +#include <linux/platform_device.h>
> +#include <linux/property.h>
> +
> +/* These values have been extracted from Samsung's driver. */
> +#define KTD2801_EXPRESSWIRE_DETECT_DELAY_US	150
> +#define KTD2801_EXPRESSWIRE_DETECT_US		270
> +#define KTD2801_SHORT_BITSET_US			5
> +#define KTD2801_LONG_BITSET_US			(3 * KTD2801_SHORT_BITSET_US)
> +#define KTD2801_DATA_START_US			5
> +#define KTD2801_END_OF_DATA_LOW_US		10
> +#define KTD2801_END_OF_DATA_HIGH_US		350
> +#define KTD2801_PWR_DOWN_DELAY_US		2600

These are a little pointless now. They are all single use constants
and have little documentary value.

The lack of documentary value is because, for example,
KTD2801_EXPRESSWIRE_DETECT_DELAY_US, is assigned to a structure
field called detect_delay_us.

Likewise I doubt that explicitly stating that long_bitset_us is 3x
bigger than short_bitset_us is important for future driver maintainance.


> +
> +#define KTD2801_DEFAULT_BRIGHTNESS	100
> +#define KTD2801_MAX_BRIGHTNESS		255
> +
> +const struct expresswire_timing ktd2801_timing = {
> +	.poweroff_us = KTD2801_PWR_DOWN_DELAY_US,
> +	.detect_delay_us = KTD2801_EXPRESSWIRE_DETECT_DELAY_US,
> +	.detect_us = KTD2801_EXPRESSWIRE_DETECT_US,
> +	.data_start_us = KTD2801_DATA_START_US,
> +	.short_bitset_us = KTD2801_SHORT_BITSET_US,
> +	.long_bitset_us = KTD2801_LONG_BITSET_US,
> +	.end_of_data_low_us = KTD2801_END_OF_DATA_LOW_US,
> +	.end_of_data_high_us = KTD2801_END_OF_DATA_HIGH_US
> +};
> +
> +struct ktd2801_backlight {
> +	struct expresswire_common_props props;
> +	struct backlight_device *bd;
> +	bool was_on;
> +};
> +
> +static int ktd2801_update_status(struct backlight_device *bd)
> +{
> +	struct ktd2801_backlight *ktd2801 = bl_get_data(bd);
> +	u8 brightness = (u8) backlight_get_brightness(bd);
> +
> +	if (backlight_is_blank(bd)) {
> +		expresswire_power_off(&ktd2801->props);
> +		ktd2801->was_on = false;
> +		return 0;
> +	}
> +
> +	if (!ktd2801->was_on) {
> +		expresswire_enable(&ktd2801->props);
> +		ktd2801->was_on = true;
> +	}
> +
> +	expresswire_start(&ktd2801->props);
> +
> +	for (int i = 7; i >= 0; i--)
> +		expresswire_set_bit(&ktd2801->props, !!(brightness & BIT(i)));

The !! is redundant... but, as previous feedback, I think writing a u8
should be in the library code anyway.

> +	expresswire_end(&ktd2801->props);
> +	return 0;
> +}
> +
> <snip>


Daniel.

