Return-Path: <devicetree+bounces-1843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AB97A89B1
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 18:43:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9009E281CCE
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 16:43:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC9A73E475;
	Wed, 20 Sep 2023 16:43:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1AC339BB
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 16:43:27 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEA2BDE
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 09:43:24 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50337b43ee6so102499e87.3
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 09:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695228203; x=1695833003; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MQEJW6zv06NkEBajWL99vk6sAX7Ll9wuR8Kb5COdX+s=;
        b=e5F6iaVE8tzmsXu4+NYrHXWXiq5RCpSkFDTsLxvP5kQoLV8Lmr42X5uQ0Kp6uq0+5e
         xlGRaFEhz3OH7ToErELGFWr/0SFhCWUu5ojtyuTF8OLfKMKlVYYomupxoP9MFSBLT6Gl
         tGQkvMhOT2AnWLYAewwV7uxI2MKYBOdtTgsvhm2xxNB6R7OA98Vlqr3M5Evb09MVYVZj
         ZMkfcIbe9Igxncq+nioJmoL4rez1evJhm3pRkjPDtilycgSxGb5jrLx20cl6w7LuM+yD
         N15qp8mf0jL1U2h4v4VSNrdgHeRWQUVvfeXCu24mCyp1D2oFdmGDL+3YM3BUCeuR2R+L
         1mEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695228203; x=1695833003;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MQEJW6zv06NkEBajWL99vk6sAX7Ll9wuR8Kb5COdX+s=;
        b=lIRNc8jGoBQcw7QdYt4a0DXj416bTLcHQPfx1hzvUr3+mxBSAW3xP02B42GkvM54i3
         vT7YD6/agJU0eMprOm1z94kWnMb47PuLK684Xb+72yB9vsYKcL0sBoDiGk8BZjeOhadX
         K5qIF/Cdhn+GLuCyz4/IdgnKP/CCcmAIPs/fAx1P48ofdq59yueaEH6YCg+O/WZiFYzm
         br2/6CEDlTcZXaikGSXiqpGRzwg9U11URhft8KoJxbCvTpMVWoCElddsGv/5FdctmjPZ
         ZQLd6Ld6wYcfNuD0sjGhl+f7oyMhRaf2Z927qqfCcoFf0k/lXCiux6rKUQRfU9jmVv2G
         6IfA==
X-Gm-Message-State: AOJu0Yx8uH146SAVqkRG6XIoFGht3rIFLP9Yix3P9AnbstkTeM1/CThe
	Q3t2dqJhLPoiDngX8BmSwmRQwA==
X-Google-Smtp-Source: AGHT+IF4SftKY63aF7hO17I140HgFWGwNL1QYPGPfTT/ye3c4L7+hoZq756DMpDyutWuZZK55Xbpuw==
X-Received: by 2002:a05:6512:4885:b0:500:9a45:63b with SMTP id eq5-20020a056512488500b005009a45063bmr2829468lfb.13.1695228202819;
        Wed, 20 Sep 2023 09:43:22 -0700 (PDT)
Received: from aspen.lan (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id cz20-20020a0564021cb400b00530c46e2b32sm6496057edb.34.2023.09.20.09.43.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 09:43:22 -0700 (PDT)
Date: Wed, 20 Sep 2023 18:43:20 +0200
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Flavio Suligoi <f.suligoi@asem.it>
Cc: Lee Jones <lee@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Helge Deller <deller@gmx.de>, Pavel Machek <pavel@ucw.cz>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
	linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
	linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] backlight: mp3309c: Add support for MPS MP3309C
Message-ID: <20230920164320.GA20969@aspen.lan>
References: <20230915140516.1294925-1-f.suligoi@asem.it>
 <20230915140516.1294925-2-f.suligoi@asem.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230915140516.1294925-2-f.suligoi@asem.it>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 15, 2023 at 04:05:16PM +0200, Flavio Suligoi wrote:
> The Monolithic Power (MPS) MP3309C is a WLED step-up converter, featuring a
> programmable switching frequency to optimize efficiency.
> The brightness can be controlled either by I2C commands (called "analog"
> mode) or by a PWM input signal (PWM mode).
> This driver supports both modes.
>
> For DT configuration details, please refer to:
> - Documentation/devicetree/bindings/leds/backlight/mps,mp3309c.yaml
>
> The datasheet is available at:
> - https://www.monolithicpower.com/en/mp3309c.html
>
> Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
> ---
>
> v2:
>  - fix dependecies in Kconfig
>  - fix Kconfig MP3309C entry order
>  - remove switch-on-delay-ms property
>  - remove optional gpio property to reset external devices
>  - remove dimming-mode property (the analog-i2c dimming mode is the default; the
>    presence of the pwms property, in DT, selects automatically the pwm dimming
>    mode)
>  - substitute three boolean properties, used for the overvoltage-protection
>    values, with a single enum property
>  - drop simple tracing messages
>  - use dev_err_probe() in probe function
>  - change device name from mp3309c_bl to the simple mp3309c
>  - remove shutdown function
> v1:
>  - first version
>
>  MAINTAINERS                       |   6 +
>  drivers/video/backlight/Kconfig   |  11 +
>  drivers/video/backlight/Makefile  |   1 +
>  drivers/video/backlight/mp3309c.c | 395 ++++++++++++++++++++++++++++++
>  4 files changed, 413 insertions(+)
>  create mode 100644 drivers/video/backlight/mp3309c.c
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 3be1bdfe8ecc..f779df433af1 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14333,6 +14333,12 @@ S:	Maintained
>  F:	Documentation/driver-api/tty/moxa-smartio.rst
>  F:	drivers/tty/mxser.*
>
> +MP3309C BACKLIGHT DRIVER
> +M:	Flavio Suligoi <f.suligoi@asem.it>
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/leds/backlight/mps,mp3309c.yaml
> +F:	drivers/video/backlight/mp3309c.c
> +
>  MR800 AVERMEDIA USB FM RADIO DRIVER
>  M:	Alexey Klimov <klimov.linux@gmail.com>
>  L:	linux-media@vger.kernel.org
> diff --git a/drivers/video/backlight/Kconfig b/drivers/video/backlight/Kconfig
> index 51387b1ef012..1144a54a35c0 100644
> --- a/drivers/video/backlight/Kconfig
> +++ b/drivers/video/backlight/Kconfig
> @@ -402,6 +402,17 @@ config BACKLIGHT_LP8788
>  	help
>  	  This supports TI LP8788 backlight driver.
>
> +config BACKLIGHT_MP3309C
> +	tristate "Backlight Driver for MPS MP3309C"
> +	depends on I2C && PWM
> +	select REGMAP_I2C
> +	help
> +	  This supports MPS MP3309C backlight WLED driver in both PWM and
> +	  analog/I2C dimming modes.
> +
> +	  To compile this driver as a module, choose M here: the module will
> +	  be called mp3309c.
> +
>  config BACKLIGHT_PANDORA
>  	tristate "Backlight driver for Pandora console"
>  	depends on TWL4030_CORE
> diff --git a/drivers/video/backlight/Makefile b/drivers/video/backlight/Makefile
> index f72e1c3c59e9..1af583de665b 100644
> --- a/drivers/video/backlight/Makefile
> +++ b/drivers/video/backlight/Makefile
> @@ -44,6 +44,7 @@ obj-$(CONFIG_BACKLIGHT_LP855X)		+= lp855x_bl.o
>  obj-$(CONFIG_BACKLIGHT_LP8788)		+= lp8788_bl.o
>  obj-$(CONFIG_BACKLIGHT_LV5207LP)	+= lv5207lp.o
>  obj-$(CONFIG_BACKLIGHT_MAX8925)		+= max8925_bl.o
> +obj-$(CONFIG_BACKLIGHT_MP3309C)		+= mp3309c.o
>  obj-$(CONFIG_BACKLIGHT_MT6370)		+= mt6370-backlight.o
>  obj-$(CONFIG_BACKLIGHT_OMAP1)		+= omap1_bl.o
>  obj-$(CONFIG_BACKLIGHT_PANDORA)		+= pandora_bl.o
> diff --git a/drivers/video/backlight/mp3309c.c b/drivers/video/backlight/mp3309c.c
> new file mode 100644
> index 000000000000..470c960d7438
> --- /dev/null
> +++ b/drivers/video/backlight/mp3309c.c
> @@ -0,0 +1,395 @@
> +// SPDX-License-Identifier: GPL-2.0+

This is an obsolete spelling. Should be:
https://spdx.org/licenses/GPL-2.0-or-later.html


> +static int mp3309c_bl_update_status(struct backlight_device *bl)
> +{
> +	struct mp3309c_chip *chip = bl_get_data(bl);
> +	int brightness = backlight_get_brightness(bl);
> +	struct pwm_state pwmstate;
> +	unsigned int analog_val, bits_val;
> +	int i, ret;
> +
> +	if (chip->pdata->dimming_mode == DIMMING_PWM) {
> +		/*
> +		 * PWM dimming mode
> +		 */
> +		pwm_get_state(chip->pwmd, &pwmstate);
> +		pwm_set_relative_duty_cycle(&pwmstate, brightness,
> +					    chip->pdata->max_brightness);
> +		pwmstate.enabled = true;
> +		ret = pwm_apply_state(chip->pwmd, &pwmstate);
> +		if (ret)
> +			return ret;
> +
> +		switch (chip->pdata->status) {
> +		case FIRST_POWER_ON:
> +		case BACKLIGHT_OFF:
> +			/*
> +			 * After 20ms of pwm off, we must enable the chip again
> +			 */
> +			if (brightness > 0) {
> +				msleep_interruptible(10);

This is either missing a return code check (and working bail-out logic)
or, more likely, shouldn't be interruptible.

Also it looks like the delay time and the comment do not match.

However, when these and the license comment is addressed please add my:
Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>


Daniel.

