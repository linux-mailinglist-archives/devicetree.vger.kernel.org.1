Return-Path: <devicetree+bounces-218808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5429BB843C7
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 12:55:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D0E1C18917C7
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 10:55:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 467D42F9C2C;
	Thu, 18 Sep 2025 10:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="qedgpUp5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 783122EAD0C
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 10:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758192922; cv=none; b=JGgBkGFdpJ8q1FRBvo2W5jkvP3E8d1iD2rJczARASYR4zMbkjBLImiz1bAGRfJZhGtE3n8Cc21rU6S7E4IoFCqgcn8TyMGorrtKWc9nqLXtTDi6Z8rfqOjL80QWKPjrEvUvZvFpJo7v+YmBJOCRxv7BjhaR43qC4gTtkT55LQqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758192922; c=relaxed/simple;
	bh=jUj3DmphDYHob5tgbYVZeMPCTzvB0qCtndg6eAPhzeU=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CTiwIuWgANypW5TgfT7+1uKRwmPZgvuy1E1Qos4UG369846zRY+gZRST8aoEFmZYMJsqoFz1wGJsWbSV3g4WW1S/GaZtQKzIjEVRKSf/UmgxH6iJHO8JmXTvbQXKI9jmotgPwzuXm4ibmd53NMNoGmpyI+SG5eAnIV2NOGK3YVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=qedgpUp5; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-579363a4602so458142e87.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 03:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1758192918; x=1758797718; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=kb5Wonknu5Up30dV+dkb1z8Wdj+m522AJmQC52RsZ8w=;
        b=qedgpUp5IIo5xYX3tkdu1FdEfEyKNpYpHKd4F4eUZlESZ/pJ7Z8Gpj5MGTMG45mmPx
         6JX3iAey+4VuowuxkrwultayD+g50a1g61EbCIRBpNDz/xdlVr/4Jz2rfZcl093FW4Oh
         CQqObp1AYf4d3M1mRPUiaCX/QRovlwjp9R1pbL35++wpR5l8PvD2c82OjkvOPu90yfUY
         VI1Hs07skVxaLT7rOSbsNCGYceRShDQp1ULOdCeO2yEolg7oKxixZRmnw4/J1Dps8Sjs
         +ypnqMnu6Be1asW07uq+CUa57tVb5fKOyw9DL4YMCVt9z1TRGwgRyosq3yBDqSwLUOct
         YhyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758192918; x=1758797718;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kb5Wonknu5Up30dV+dkb1z8Wdj+m522AJmQC52RsZ8w=;
        b=iYrehDzKHHnfeBjB0u7En+SXAZEY7pW9/wIDhEqE4xvm0hF1Qhmyq7t4b7ECk71c8G
         q9+fwSjFWOghFwc8jftGMIcdGx8vZhqB0HV+D2ckbUNtAEEPo4gLoz5WESU5CANJDQWl
         LKpEGNwu4qhNucK1o2z+UvHIJT2LA4pXGsiCLCUHTNEwPifNTkODQwMu6SSTOm5OgAEE
         FP38ngv3f1eD5glZlNV/WaqQ5qOoS9a71ra6dno968Y14Lo+EE2t6qanz9H84K1vtaa5
         KYx8EUS4bNV5yALPEPG1YVVW0LFNem5r+p5jk0l3TeloSgGdQC3t71sP+D6eFXNyV5wB
         tbow==
X-Forwarded-Encrypted: i=1; AJvYcCU5T8D+Zc4PY3IoVg8yQKihnTkA04IOrwNL6SnzVnOAnZQ8kt2RK0TlWC5d2fZQlh4kv00/spR1p/nd@vger.kernel.org
X-Gm-Message-State: AOJu0Yzl10NoYrBUCbB9vYhxt1SIovJnlycE37aMHHzKZUCsdstf908j
	jU4hAJQ+fxJlBfL4r4zIkylw0JbiPG3GCU4SyohX+9LDHlWx6fFkFE9v2m3dR4lBIqY266KF+pv
	T/5QDDf45iB05e1nZ922Os9Di3eMuJt4xdSGPOh9cEw==
X-Gm-Gg: ASbGnctpL6lEx8xegr7GSIABfmffNGXhak88TrP5al5jHT7zcK3THyo7k6r/ZxwdSJC
	rtKOC6yhSDteYhv0TiLb01Hdtgmph44OJQRQu+mBtuKYzKCQeTNrFBK+MtGttR5Lkg8ZgwyJQV4
	hor4aI4XAUy5BRdjSnz4iuB2wbSJJB9idZa/ilU/0L9u0oeYSMk35dU0BaHHd0yUqkoYj0XbeVF
	R0IiwmB4BRwku8YR35i0QMXzw==
X-Google-Smtp-Source: AGHT+IGHqUzrOrF5h0jq5ITJQr9RlHNA7rg3df+hUZXro+/W4S11AYeIdoZ0dL2vKV3prv3NyO2vbOc2/8WjvSUzl9w=
X-Received: by 2002:a05:6512:3f26:b0:55f:3f00:a830 with SMTP id
 2adb3069b0e04-5779b9b5a1fmr1645131e87.57.1758192917914; Thu, 18 Sep 2025
 03:55:17 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 18 Sep 2025 03:55:16 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 18 Sep 2025 03:55:16 -0700
From: Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <20250917090422.870033-6-ioana.ciornei@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250917090422.870033-1-ioana.ciornei@nxp.com> <20250917090422.870033-6-ioana.ciornei@nxp.com>
Date: Thu, 18 Sep 2025 03:55:16 -0700
X-Gm-Features: AS18NWCbc_x_jlVkgrm8bsF4vFJeHzl6KfSHBqaKH56sjhYqV_7bfyBIPSWiwE4
Message-ID: <CAMRc=MdxE-qsthHot7+iA8yqg1ZEASzGh7dmR=ucfxg_JQipxQ@mail.gmail.com>
Subject: Re: [PATCH v3 05/10] gpio: regmap: add the .fixed_direction_output
 configuration parameter
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: Frank Li <Frank.Li@nxp.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Shawn Guo <shawnguo@kernel.org>, Michael Walle <mwalle@kernel.org>, Lee Jones <lee@kernel.org>, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 17 Sep 2025 11:04:17 +0200, Ioana Ciornei <ioana.ciornei@nxp.com> said:
> There are GPIO controllers such as the one present in the LX2160ARDB
> QIXIS FPGA which have fixed-direction input and output GPIO lines mixed
> together in a single register. This cannot be modeled using the
> gpio-regmap as-is since there is no way to present the true direction of
> a GPIO line.
>
> In order to make this use case possible, add a new configuration
> parameter - fixed_direction_output - into the gpio_regmap_config
> structure. This will enable user drivers to provide a bitmap that
> represents the fixed direction of the GPIO lines.
>
> Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
> ---
> Changes in v2:
> - Add the fixed_direction_output bitmap to the gpio_regmap_config
> Changes in v3:
> - Make a deep copy of the new bitmap.
> - Remove the offset check against the ngpio.
> - Added documentation for the new config field.
>
>  drivers/gpio/gpio-regmap.c  | 18 ++++++++++++++++++
>  include/linux/gpio/regmap.h |  6 ++++++
>  2 files changed, 24 insertions(+)
>
> diff --git a/drivers/gpio/gpio-regmap.c b/drivers/gpio/gpio-regmap.c
> index e8a32dfebdcb..9edd79b5c10e 100644
> --- a/drivers/gpio/gpio-regmap.c
> +++ b/drivers/gpio/gpio-regmap.c
> @@ -31,6 +31,7 @@ struct gpio_regmap {
>  	unsigned int reg_clr_base;
>  	unsigned int reg_dir_in_base;
>  	unsigned int reg_dir_out_base;
> +	unsigned long *fixed_direction_output;
>
>  	int (*reg_mask_xlate)(struct gpio_regmap *gpio, unsigned int base,
>  			      unsigned int offset, unsigned int *reg,
> @@ -129,6 +130,13 @@ static int gpio_regmap_get_direction(struct gpio_chip *chip,
>  	unsigned int base, val, reg, mask;
>  	int invert, ret;
>
> +	if (gpio->fixed_direction_output) {
> +		if (test_bit(offset, gpio->fixed_direction_output))
> +			return GPIO_LINE_DIRECTION_OUT;
> +		else
> +			return GPIO_LINE_DIRECTION_IN;
> +	}
> +
>  	if (gpio->reg_dat_base && !gpio->reg_set_base)
>  		return GPIO_LINE_DIRECTION_IN;
>  	if (gpio->reg_set_base && !gpio->reg_dat_base)
> @@ -277,6 +285,16 @@ struct gpio_regmap *gpio_regmap_register(const struct gpio_regmap_config *config
>  			return ERR_PTR(ret);
>  	}
>
> +	if (config->fixed_direction_output) {
> +		gpio->fixed_direction_output = devm_bitmap_alloc(config->parent,
> +								 chip->ngpio,
> +								 GFP_KERNEL);

Please don't use devres hidden in what is effectively a library function for
drivers. You have no guarantee this will always be used in probe or that the
life-time of this will end with the associated device's detach. Just use
a regular bitmap_alloc().

Bart

> +		if (!gpio->fixed_direction_output)
> +			return ERR_PTR(-ENOMEM);
> +		bitmap_copy(gpio->fixed_direction_output,
> +			    config->fixed_direction_output, chip->ngpio);
> +	}
> +
>  	/* if not set, assume there is only one register */
>  	gpio->ngpio_per_reg = config->ngpio_per_reg;
>  	if (!gpio->ngpio_per_reg)
> diff --git a/include/linux/gpio/regmap.h b/include/linux/gpio/regmap.h
> index c722c67668c6..8d3d595bfdd3 100644
> --- a/include/linux/gpio/regmap.h
> +++ b/include/linux/gpio/regmap.h
> @@ -37,6 +37,10 @@ struct regmap;
>   *			offset to a register/bitmask pair. If not
>   *			given the default gpio_regmap_simple_xlate()
>   *			is used.
> + * @fixed_direction_output:
> + *			(Optional) Bitmap representing the fixed direction of
> + *			the GPIO lines. Useful when there are GPIO lines with a
> + *			fixed direction mixed together in the same register.
>   * @drvdata:		(Optional) Pointer to driver specific data which is
>   *			not used by gpio-remap but is provided "as is" to the
>   *			driver callback(s).
> @@ -78,6 +82,8 @@ struct gpio_regmap_config {
>  	int ngpio_per_reg;
>  	struct irq_domain *irq_domain;
>
> +	unsigned long *fixed_direction_output;
> +
>  	int (*reg_mask_xlate)(struct gpio_regmap *gpio, unsigned int base,
>  			      unsigned int offset, unsigned int *reg,
>  			      unsigned int *mask);
> --
> 2.25.1
>
>

