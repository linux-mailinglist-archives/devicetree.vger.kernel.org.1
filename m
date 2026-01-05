Return-Path: <devicetree+bounces-251434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD12CF2EDB
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 11:12:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C6BD630054B3
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 10:09:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2F192F25FD;
	Mon,  5 Jan 2026 10:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="c0+7lofq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6B032F25F5
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 10:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767607797; cv=none; b=NXbdMfTaN5tdV9GVzKdILu0Eqqi+zDSs02xnSjEbWUHJnEgsD1QH5b0Ky2HzPz+s2/KPfumsLQcC4TMVBXm16kWlKEE119qqPMcReJIqdHmBqhZtyN9oVJyPy5g2E4FRVgQQllE0GvRT1IX8wH2BRTJ73sOZZ8OvJUqUBTzxsss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767607797; c=relaxed/simple;
	bh=ICOP+8Za83UzCsn5kdwRY8IkW7lPTMB1vK8m7RWky24=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VwXfaGR4A/ab2y+yaq6KTI35Kcd96msT4LBD+xVpjX/H37cqSY6XyWSMjLlcSq8fNTxCUg7EzC/nCt3M/h2niVMTJErqBl+CQrvEuPkOZa7+GBzDyGpyX3KaW4wyn4VI4GNoV3kNAr8oSlhyWYOQKszUlbNy3xk81updLCujMg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=c0+7lofq; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47d1d8a49f5so69145815e9.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 02:09:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767607794; x=1768212594; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NvKDos4fJsou+PSfhxPxHl5xgEuLiCmh0jj1etHYyZs=;
        b=c0+7lofqKzRH+51D5Evl9eKmSFpCd46cftezD96WfH8SdDgCmLrINPBnEQjT0QZBGa
         PIwKg1fLMyOg53E8eyyo8PAHaGHQ40EsxeiIBklEQgIskhrZW39LwBuZ9xLNvBjzmulA
         sm9RzEv784pM5qg/4x9ImpOQWr20KBmr2C/bpFnCuDu5/QctFSbkaw8YNfJqhyPfCD64
         Jr17pGzx/+UdugnGEWim+7PM7qrOy5RCri1tTO38bPEJlsa3R8EE6Qe7VBF8ffDOUvrY
         PGTalnEob3gI5eVXWvs0ugNpApaX97fNfrvtlgDYYkMjgwLIe3Iz6uWfKMdfVK0fksfE
         zr2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767607794; x=1768212594;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NvKDos4fJsou+PSfhxPxHl5xgEuLiCmh0jj1etHYyZs=;
        b=u7H3HvgHqx56PS0FHFZkpiGcaf1rOD4T03zpASGEEPIWEvG6G8YoL8+9yMI7KFhRu9
         YaIxPNS1bflfKufhLwTCud7Jrsw5JLAXw+OH8K6xEQbfEdd/HyfmrX8FufjfdpF/Olyz
         IHfpgg2eFIGsiAevnN40R3EkgUUfBP5pkRfnzaWIlSveDJ1I+HQ7TUTWevV7/ZKCmH2e
         nx9HUfE3NovmFQ4mB9iuwsaODr2RBSxTOfid/HMIaPcSYTwmrmZwh2vCQcoWcYxYx/4U
         u64LWzdEfeqez7xNGZ1QfW4IXnkqMaJcazrLCVtMGfVr/9xXt8d8LQHTQUdhnypXg21C
         9Vbw==
X-Forwarded-Encrypted: i=1; AJvYcCXEVRaGcfYrzIyDrud08CgQWEyvoNkXTamWowl1P3txO3YjeTPTPTmzFUqXxKlKYpLxpp2pMm9X1wlZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwPItHPWVA/J4YCcaYRKmkOFUGhIgQ4tE8AH3EfLWcYam/WJDj3
	M5Pp3YKEBcde18K5YTShsQQnbM74jDP+5sD0DcAgFnuXpvU21EhnbyJuV6ez2ubH4no=
X-Gm-Gg: AY/fxX6dGhyY4SioUxyBqS8ZA/cZFHKtCUW/AeaDqTtMEgWj3sRQeLvc3j1+0IY4fMt
	L+ESWpFChVbzKAVZjH+ytB9Pzj2fAgapzTv80VhtIXA1RkcQgTBAL0dfgbvYL4WY5WYoFpunBPJ
	FZSNc39xFS6/demSRXsWR/xC+IWM3JwD3lTia7y3cKvKmBtNuBVKnuMkfOK64fF8sW3rmzeMfPO
	1F+G2sNoydm9P0nQMknHD8oMQ7/TI8EjBe+y7nR5gjcbZQF0mJlW2+3gHQ1FjE8dYSE2tAeprN4
	fUjp/w+qCtyHnZGqPNPehPutgcUzrXlhjCE3TdFHkdvD2rOH5hciO/F39ZWeFFoL84BIwz/2WEB
	alX4BhctFHKgtUU+ylR/R/p1u9JWqHYxn/SKBIQl82vKMuBLcmmn/drZMfnHuJRlAlYLUd4nwg4
	YrAiJgz6KhOAJ90z49fsz4jPhEgt584V7DQ0xMw8dQjguit1FdyYHOzyY2XXMt96x8Mb6aYS9R3
	Yj40KDq6pfKci/AVrzeXpyc3J/Di4GvNEJFGHVAF0+6GGVmYGYzQur3sVLnRNrpF5BZefki
X-Google-Smtp-Source: AGHT+IGE2qcg6xcM7QfR3K1EbPQJ77qbf+cnZNCN9Ov6K1/H31yxXIcb9M1Xw2mnMf6vzDPPoCfzWA==
X-Received: by 2002:a05:600c:4e90:b0:46e:4e6d:79f4 with SMTP id 5b1f17b1804b1-47d19557183mr677320615e9.15.1767607794105;
        Mon, 05 Jan 2026 02:09:54 -0800 (PST)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d6d13e2e0sm176557595e9.1.2026.01.05.02.09.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 02:09:53 -0800 (PST)
Date: Mon, 5 Jan 2026 10:09:51 +0000
From: Daniel Thompson <daniel@riscstar.com>
To: Sudarshan Shetty <tessolveupstream@gmail.com>
Cc: lee@kernel.org, danielt@kernel.org, jingoohan1@gmail.com, deller@gmx.de,
	pavel@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] backlight: gpio: add support for multiple GPIOs
 for backlight control
Message-ID: <aVuN7zVUWJ1qsVh8@aspen.lan>
References: <20260105085120.230862-1-tessolveupstream@gmail.com>
 <20260105085120.230862-3-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260105085120.230862-3-tessolveupstream@gmail.com>

On Mon, Jan 05, 2026 at 02:21:20PM +0530, Sudarshan Shetty wrote:
> Extend the gpio-backlight driver to handle multiple GPIOs instead of a
> single one. This allows panels that require driving several enable pins
> to be controlled by the backlight framework.
>
> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> ---
>  drivers/video/backlight/gpio_backlight.c | 61 +++++++++++++++++-------
>  1 file changed, 45 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/video/backlight/gpio_backlight.c b/drivers/video/backlight/gpio_backlight.c
> index 728a546904b0..037e1c111e48 100644
> --- a/drivers/video/backlight/gpio_backlight.c
> +++ b/drivers/video/backlight/gpio_backlight.c
> @@ -17,14 +17,18 @@
>
>  struct gpio_backlight {
>  	struct device *dev;
> -	struct gpio_desc *gpiod;
> +	struct gpio_desc **gpiods;
> +	unsigned int num_gpios;

Why not use struct gpio_descs for this?

Once you do that, then most of the gbl->num_gpios loops can be replaced with
calls to the array based accessors.


>  };
>
>  static int gpio_backlight_update_status(struct backlight_device *bl)
>  {
>  	struct gpio_backlight *gbl = bl_get_data(bl);
> +	unsigned int i;
> +	int br = backlight_get_brightness(bl);
>
> -	gpiod_set_value_cansleep(gbl->gpiod, backlight_get_brightness(bl));
> +	for (i = 0; i < gbl->num_gpios; i++)
> +		gpiod_set_value_cansleep(gbl->gpiods[i], br);
>
>  	return 0;
>  }
> @@ -52,6 +56,7 @@ static int gpio_backlight_probe(struct platform_device *pdev)
>  	struct backlight_device *bl;
>  	struct gpio_backlight *gbl;
>  	int ret, init_brightness, def_value;
> +	unsigned int i;
>
>  	gbl = devm_kzalloc(dev, sizeof(*gbl), GFP_KERNEL);
>  	if (gbl == NULL)
> @@ -62,10 +67,22 @@ static int gpio_backlight_probe(struct platform_device *pdev)
>
>  	def_value = device_property_read_bool(dev, "default-on");
>
> -	gbl->gpiod = devm_gpiod_get(dev, NULL, GPIOD_ASIS);
> -	if (IS_ERR(gbl->gpiod))
> -		return dev_err_probe(dev, PTR_ERR(gbl->gpiod),
> -				     "The gpios parameter is missing or invalid\n");
> +	gbl->num_gpios = gpiod_count(dev, NULL);
> +	if (gbl->num_gpios == 0)
> +		return dev_err_probe(dev, -EINVAL,
> +			"The gpios parameter is missing or invalid\n");
> +	gbl->gpiods = devm_kcalloc(dev, gbl->num_gpios, sizeof(*gbl->gpiods),
> +				   GFP_KERNEL);
> +	if (!gbl->gpiods)
> +		return -ENOMEM;

This is definitely easier if you simply use devm_get_array().


> +
> +	for (i = 0; i < gbl->num_gpios; i++) {
> +		gbl->gpiods[i] =
> +			devm_gpiod_get_index(dev, NULL, i, GPIOD_ASIS);
> +		if (IS_ERR(gbl->gpiods[i]))
> +			return dev_err_probe(dev, PTR_ERR(gbl->gpiods[i]),
> +					"Failed to get GPIO at index %u\n", i);
> +	}
>
>  	memset(&props, 0, sizeof(props));
>  	props.type = BACKLIGHT_RAW;
> @@ -78,22 +95,34 @@ static int gpio_backlight_probe(struct platform_device *pdev)
>  	}
>
>  	/* Set the initial power state */
> -	if (!of_node || !of_node->phandle)
> +	if (!of_node || !of_node->phandle) {
>  		/* Not booted with device tree or no phandle link to the node */
>  		bl->props.power = def_value ? BACKLIGHT_POWER_ON
> -					    : BACKLIGHT_POWER_OFF;
> -	else if (gpiod_get_value_cansleep(gbl->gpiod) == 0)
> -		bl->props.power = BACKLIGHT_POWER_OFF;
> -	else
> -		bl->props.power = BACKLIGHT_POWER_ON;
> +						    : BACKLIGHT_POWER_OFF;
> +	} else {
> +		bool all_high = true;
> +
> +		for (i = 0; i < gbl->num_gpios; i++) {
> +			if (gpiod_get_value_cansleep(gbl->gpiods[i]) != 0) {

Why is there a != here?


> +				all_high = false;
> +				break;
> +			}
> +		}
> +
> +		bl->props.power =
> +			all_high ? BACKLIGHT_POWER_ON :  BACKLIGHT_POWER_OFF;
> +	}
>
>  	bl->props.brightness = 1;
>
>  	init_brightness = backlight_get_brightness(bl);
> -	ret = gpiod_direction_output(gbl->gpiod, init_brightness);
> -	if (ret) {
> -		dev_err(dev, "failed to set initial brightness\n");
> -		return ret;
> +
> +	for (i = 0; i < gbl->num_gpios; i++) {
> +		ret = gpiod_direction_output(gbl->gpiods[i], init_brightness);
> +		if (ret)
> +			return dev_err_probe(dev, ret,
> +					"failed to set gpio %u direction\n",
> +					i);
>  	}
>
>  	platform_set_drvdata(pdev, bl);


Daniel.

