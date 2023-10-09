Return-Path: <devicetree+bounces-6881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EFA7BD69B
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 11:21:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 76E6B1C2091D
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 09:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AD15FC02;
	Mon,  9 Oct 2023 09:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dfWobpuG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504BC8C16
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 09:21:10 +0000 (UTC)
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3951B6
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 02:21:07 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5041bb9ce51so5392744e87.1
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 02:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696843266; x=1697448066; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jcRTJtu5/xplXYf4mxgpTZIYcsNwbD0mhUQlRdvZ5Jw=;
        b=dfWobpuGkVeAzfhXUsLhRoViJ2LS6VUQHiI2HwMK/LQ7JQ+b6zOEm4HaPCqg+SrS79
         1G+LR5mmt1yTCJIgJ5v+5wu4kQDxUL9fikkmJsb1GhxiRBRLJnXb2v49AOD0wwZ8xP8P
         /uz3T5uE3oSSqkg4R+bSkb1bW2rIhpmYPwIQLgJRfyN6ZkUDv7c/EQcqkucYuwZsTC/D
         jWZyyg+e6vyiWkXRyzqfxq9O6RvFJKIco6OkMhuzEi9XQX9A8uPAYAa6PKOnNiLihCEv
         SYX+fl/JbwdnxqWZ8OoIH/ClSdZ/PUE4R6XW6Qkwe9q6BwjhQFwbx5ZPO1mBUqvHCglJ
         Keiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696843266; x=1697448066;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jcRTJtu5/xplXYf4mxgpTZIYcsNwbD0mhUQlRdvZ5Jw=;
        b=XmqeYOziQjoWH0kywlDdlfBhN/efwzFOigSh8vPkNQNV4GG5kd6iaGCcytw8XNCudI
         8J6QVWgQ5ci+GnFWXlYO4AEogyG6ZFkHseR/5Fn7eGOhPSYjyj38uul4JpZ8mxmiltc1
         keTqx1eS0cXpVyCZHPnv5YoEdpZyLDt5sLknwD4KNozLnC791huqFeGBZUPYbp4FqeBJ
         dJ2+IKYTkq8MOeCDQb9C4t6oxSd2xhi5lCfpnMOgW+w92Rq9qY2h3GJlnQYAn1QuaTZ8
         gxWm2oK+YDvZMNHokt8TIn0QD1EfWkB26LL3x8zlTLoOcCkHxobYyf7fqSbbFwIHPUCe
         Ft6A==
X-Gm-Message-State: AOJu0YxNV3KHEVOMmv/mozI9HHup7fjufYRtmLoczej3OnD+oIQz17Aa
	CPeiuWT8JJzrKr1/5DsAx5zxzw==
X-Google-Smtp-Source: AGHT+IGht+RvnWroW3ujbIVtFNoEpt6TS29+ZsWLWowpvwWhX2hK9fCxDFD93GaUGI0u0FoeaydCUg==
X-Received: by 2002:a05:6512:68a:b0:503:26bc:b08f with SMTP id t10-20020a056512068a00b0050326bcb08fmr15658141lfe.24.1696843265916;
        Mon, 09 Oct 2023 02:21:05 -0700 (PDT)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id n5-20020a05600c294500b003fc02e8ea68sm12764192wmd.13.2023.10.09.02.21.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Oct 2023 02:21:05 -0700 (PDT)
Date: Mon, 9 Oct 2023 10:21:03 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Duje =?utf-8?Q?Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Lee Jones <lee@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Helge Deller <deller@gmx.de>,
	Karel Balej <balejk@matfyz.cz>, dri-devel@lists.freedesktop.org,
	linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 2/2] backlight: Add Kinetic KTD2801 driver
Message-ID: <20231009092103.GB96854@aspen.lan>
References: <20231005-ktd2801-v1-0-43cd85b0629a@skole.hr>
 <20231005-ktd2801-v1-2-43cd85b0629a@skole.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231005-ktd2801-v1-2-43cd85b0629a@skole.hr>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Oct 05, 2023 at 08:49:09PM +0200, Duje Mihanović wrote:
> Add driver for the Kinetic KTD2801 backlight driver.
>
> Signed-off-by: Duje Mihanović <duje.mihanovic@skole.hr>
> ---
>  MAINTAINERS                                 |   6 ++
>  drivers/video/backlight/Kconfig             |   7 ++
>  drivers/video/backlight/Makefile            |   1 +
>  drivers/video/backlight/ktd2801-backlight.c | 151 ++++++++++++++++++++++++++++
>  4 files changed, 165 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 35977b269d5e..7da78f06a65d 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -11777,6 +11777,12 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/leds/backlight/kinetic,ktd253.yaml
>  F:	drivers/video/backlight/ktd253-backlight.c
>
> +KTD2801 BACKLIGHT DRIVER
> +M:	Duje Mihanović <duje.mihanovic@skole.hr>
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/leds/backlight/kinetic,ktd2801.yaml
> +F:	drivers/video/backlight/ktd2801-backlight.c
> +
>  KTEST
>  M:	Steven Rostedt <rostedt@goodmis.org>
>  M:	John Hawley <warthog9@eaglescrag.net>
> diff --git a/drivers/video/backlight/Kconfig b/drivers/video/backlight/Kconfig
> index 51387b1ef012..a2b268293345 100644
> --- a/drivers/video/backlight/Kconfig
> +++ b/drivers/video/backlight/Kconfig
> @@ -183,6 +183,13 @@ config BACKLIGHT_KTD253
>  	  which is a 1-wire GPIO-controlled backlight found in some mobile
>  	  phones.
>
> +config BACKLIGHT_KTD2801
> +	tristate "Backlight Driver for Kinetic KTD2801"
> +	depends on GPIOLIB || COMPILE_TEST
> +	help
> +	  Say Y to enable the backlight driver for the Kinetic KTD2801 1-wire
> +	  GPIO-controlled backlight found in Samsung Galaxy Core Prime VE LTE.
> +
>  config BACKLIGHT_KTZ8866
>  	tristate "Backlight Driver for Kinetic KTZ8866"
>  	depends on I2C
> diff --git a/drivers/video/backlight/Makefile b/drivers/video/backlight/Makefile
> index f72e1c3c59e9..b33b647f31ca 100644
> --- a/drivers/video/backlight/Makefile
> +++ b/drivers/video/backlight/Makefile
> @@ -35,6 +35,7 @@ obj-$(CONFIG_BACKLIGHT_HP680)		+= hp680_bl.o
>  obj-$(CONFIG_BACKLIGHT_HP700)		+= jornada720_bl.o
>  obj-$(CONFIG_BACKLIGHT_IPAQ_MICRO)	+= ipaq_micro_bl.o
>  obj-$(CONFIG_BACKLIGHT_KTD253)		+= ktd253-backlight.o
> +obj-$(CONFIG_BACKLIGHT_KTD2801)		+= ktd2801-backlight.o
>  obj-$(CONFIG_BACKLIGHT_KTZ8866)		+= ktz8866.o
>  obj-$(CONFIG_BACKLIGHT_LM3533)		+= lm3533_bl.o
>  obj-$(CONFIG_BACKLIGHT_LM3630A)		+= lm3630a_bl.o
> diff --git a/drivers/video/backlight/ktd2801-backlight.c b/drivers/video/backlight/ktd2801-backlight.c
> new file mode 100644
> index 000000000000..24a5f9e5d606
> --- /dev/null
> +++ b/drivers/video/backlight/ktd2801-backlight.c
> @@ -0,0 +1,151 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +#include <linux/backlight.h>
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/property.h>
> +
> +#define EW_DELAY	150
> +#define EW_DET		270
> +#define LOW_BIT_HIGH	5
> +#define LOW_BIT_LOW	(4 * HIGH_BIT_LOW)
> +#define HIGH_BIT_LOW	5
> +#define HIGH_BIT_HIGH	(4 * HIGH_BIT_LOW)

These names are pretty cryptic (they don't even mention that they
are time values and that the unit is microseconds). They also look
like they were derived by tuning so comments would be nice explaining
where they come from (or, failing that, why they are correct).


> +#define DS		5
> +#define EOD_L		10
> +#define EOD_H		350
> +#define PWR_DOWN_DELAY	2600
> +
> +#define KTD2801_DEFAULT_BRIGHTNESS	100
> +#define KTD2801_MAX_BRIGHTNESS		255
> +
> +struct ktd2801_backlight {
> +	struct device *dev;
> +	struct backlight_device *bd;
> +	struct gpio_desc *desc;
> +	bool was_on;
> +};
> +
> +static int ktd2801_update_status(struct backlight_device *bd)
> +{
> +	struct ktd2801_backlight *ktd2801 = bl_get_data(bd);
> +	u8 brightness = (u8) backlight_get_brightness(bd);
> +
> +	if (backlight_is_blank(bd)) {
> +		gpiod_set_value(ktd2801->desc, 1);
> +		udelay(PWR_DOWN_DELAY);
> +		ktd2801->was_on = false;
> +		return 0;
> +	}
> +
> +	if (!ktd2801->was_on) {
> +		gpiod_set_value(ktd2801->desc, 0);
> +		udelay(EW_DELAY);
> +		gpiod_set_value(ktd2801->desc, 1);
> +		udelay(EW_DET);
> +		gpiod_set_value(ktd2801->desc, 0);
> +		ktd2801->was_on = true;
> +	}

Isn't this implementing the same single GPIO line protocol used by
drivers/leds/flash/leds-ktd2692.c?

If so, it would be good to pull the expresswire handling into a library
so it can be shared between drivers. leds-ktd2692.c does a pretty
good job of decomposing the expresswire management into functions (e.g.
separating data framing from setting of control values). Expresswire is
a data framing protocol rather than a bus so I think just implementing
it as library code is probably sufficient.

Also, can the expresswire code have protocol-violation watchdogs that
trigger a re-transmit of the message if we get pre-empted in the middle
of sending a message to the backlight (see calls to ktime_get_ns() in
ktd253-backlight.c ).


> +
> +	gpiod_set_value(ktd2801->desc, 0);
> +	udelay(DS);
> +
> +	for (int i = 0; i < 8; i++) {
> +		u8 next_bit = (brightness & 0x80) >> 7;
> +
> +		if (!next_bit) {
> +			gpiod_set_value(ktd2801->desc, 1);
> +			udelay(LOW_BIT_LOW);
> +			gpiod_set_value(ktd2801->desc, 0);
> +			udelay(LOW_BIT_HIGH);
> +		} else {
> +			gpiod_set_value(ktd2801->desc, 1);
> +			udelay(HIGH_BIT_LOW);
> +			gpiod_set_value(ktd2801->desc, 0);
> +			udelay(HIGH_BIT_HIGH);
> +		}
> +		brightness <<= 1;
> +	}
> +	gpiod_set_value(ktd2801->desc, 1);
> +	udelay(EOD_L);
> +	gpiod_set_value(ktd2801->desc, 0);
> +	udelay(EOD_H);
> +	return 0;
> +}
> +
> +static const struct backlight_ops ktd2801_backlight_ops = {
> +	.update_status = ktd2801_update_status,
> +};
> +
> +static int ktd2801_backlight_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct backlight_device *bd;
> +	struct ktd2801_backlight *ktd2801;
> +	u32 brightness, max_brightness;
> +	int ret;
> +
> +	ktd2801 = devm_kzalloc(dev, sizeof(*ktd2801), GFP_KERNEL);
> +	if (!ktd2801)
> +		return -ENOMEM;
> +	ktd2801->dev = dev;

This appears to be a write-only variable.

Overall the driver looks good but it would be nice to figure out how to
share expresswire framing between drivers (don't worry about ktd253, it
uses a different protocol).


Daniel.

