Return-Path: <devicetree+bounces-163878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B08F5A7E63C
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 18:24:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 95FB3189A533
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 16:18:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A12EF209F46;
	Mon,  7 Apr 2025 16:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="VUkcGvdZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C472F209F45
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 16:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744042432; cv=none; b=s/ne3zCaFgLgbfNvxU8UP5GV6PIay1vg+qRKLvFERAH5OnnGbLubkkV7y3tj+qpH/pluyVlqoS107gVDSdYlXgz/QEivhA6KFdopvEvduO5Vvta2uQ3zUX5JfxKM7i6mcg9UXD/6xwHl9Ei8NrTxE5zqmwE6UJUQC9fDnhfha2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744042432; c=relaxed/simple;
	bh=momMVb5vlwB7w7QBIrh4FuJxBMr+DXof5tHLvIxbILc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ud/YKZfEZfJmnbXZnwSQtaBSHTYS0WHsORguFee2MNcfYEq5aI17VNIvN8b9p8CEHMW4WRBEGKbc1w6c+btX+uNvEce7NAOYC0Gv6hDoWmgF7Hsp16mx7k8sInrWXA1P69+zHtulAOqRj8/XMMN5mPIkKLDrdPAxXIWH+stwd9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=VUkcGvdZ; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43cf0d787eeso50346955e9.3
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 09:13:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744042428; x=1744647228; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hAlufBsPlnjuTWbgusP8CYnzhAGj3Mnwll46JdWGBbE=;
        b=VUkcGvdZWUbu9OzL8xb/T9nIPABJp+EpwUB25HeDeqsIYBWHw/KxG+9HzB6zJ25efA
         IEVWesGAkZXnsKnEEQm5RrjsBBy/tM0vuvAVzxUKgGOfI/2MnZRk9eU1buIVmNaD/vyl
         7ohlvYtihiG99nc1Pjalgx9Cg3PhduK3ocW9+yDw355ftfxGvBo3YocEdBwq8pF8+NYx
         lMdNCYIYwmRxY1Ub0vqMljGY5ITbfI0syUZ0bCM41CmNbN56FnpgJML2mZso6zE4ctdw
         GGWGXp/DxpbSRR2/MomVoMl/GluMdqLScFL5xdZU1NcCHhUkH0KM61p8FLLG8T+nyt1b
         kttQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744042428; x=1744647228;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hAlufBsPlnjuTWbgusP8CYnzhAGj3Mnwll46JdWGBbE=;
        b=Z+cAeH4Sbyb6J7Dc/jMbuo2lQsPHasKHmlRRHVUP4caasuippN0q1/mxBJJpSeJO5V
         klSKveE/bQJqMI6r2TDkM4hnFbPidUOgjCvOQm/LUlz7Oyu5H/69nPYLnObLqnAM8juU
         Eoie/6XYw7R2nTwLw+k3MohdSgiq3m4I2hzJBM4bDERcJlXsAzOId2BDuT0+9TQg55ua
         3pFf0SxANfTaVFozOJ5FooP8m8aJuLRGC0UvlsLWWMK+H0aZSK3NDDNtK/3jGlMRm3ZD
         XGqZUFY7YYIdIEu6u9azWwkfTLpIrm1odloIFNrmdMhRORY9JLRsnKTM49AP+AFo0Cwm
         KznA==
X-Forwarded-Encrypted: i=1; AJvYcCW5RdOSrQKLOcyAUp5gnVWZ2rAYoC/DVHGnXy1Ebo9I0iNBCBqxwEIwepG+8b4DUTM5ScXI+o0sOD1z@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4YkDHJw+sWfJIlyQXxM74Ji1U4n8Xqqy5ig5hTNlC+yDQ90lr
	KtPaS0yCQU9W0JQ65QE2AvQRYLp/we697BVcqmAiVdM9qZ4Uc2g4glmkBQ9TDO4=
X-Gm-Gg: ASbGncuLOusHmKXtYvV8wOaLEDVgbrdTzhYRpDWgBUKFobO2+M/fVd4LhphYp2xlTrN
	TAS/MlcLYmaq2d6hCnZSzoRM9heHnKLt/eM63UbxYI/4RsHtkxYIympxhjIEt6ANAUFi5JiOoUm
	sQDjKd/fCIECvCiFXUwQIMLHVjA23wT5wQszbsZ3jCO9cT2TrSQHpkjudbWI3O7BGOAsG5JrwK4
	27LNyLeRpvWPJDpwk4yT7kGn9FE/PdR2yFfO+O2sYRCu2854+9ETWCI19oTMq8r+BLBYs8Vtd8x
	JqMMvx8dvCgco0T+esqtfinCabeFccLFvtyOF+rGpNIc0S4CgB7yKgV6Cm28MbgpeT4Ogegd9wY
	cXMcdYA3sp+4K87xYjrqglPtOYoI=
X-Google-Smtp-Source: AGHT+IF9E+Yu68SivmKTZ/2oBu6XpMDyufJhLClsxWUTbSHDLDqi5DwsmXJhaL8CEGG/v/moBPNDvw==
X-Received: by 2002:a05:600c:1d28:b0:43c:fad6:fa5a with SMTP id 5b1f17b1804b1-43ed0d9ce1dmr107471025e9.24.1744042427942;
        Mon, 07 Apr 2025 09:13:47 -0700 (PDT)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec1630ddesm137924675e9.5.2025.04.07.09.13.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 09:13:46 -0700 (PDT)
Date: Mon, 7 Apr 2025 17:13:44 +0100
From: Daniel Thompson <daniel@riscstar.com>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: Jianhua Lu <lujianhua000@gmail.com>, Lee Jones <lee@kernel.org>,
	Daniel Thompson <danielt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Helge Deller <deller@gmx.de>,
	dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-fbdev@vger.kernel.org
Subject: Re: [PATCH 3/4] backlight: ktz8866: improve current sinks setting
Message-ID: <Z_P5uLrGiQWez0jv@aspen.lan>
References: <20250407095119.588920-1-mitltlatltl@gmail.com>
 <20250407095119.588920-4-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250407095119.588920-4-mitltlatltl@gmail.com>

On Mon, Apr 07, 2025 at 05:51:18PM +0800, Pengyu Luo wrote:
> I polled all registers when the module was loading, found that
> current sinks have already been configured. Bootloader would set
> when booting. So checking it before setting the all channels.

Can you rephrase this so the problem and solution are more clearly
expressed. Perhaps template Ingo suggests here would be good:
https://www.spinics.net/lists/kernel/msg1633438.html


> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
>  drivers/video/backlight/ktz8866.c | 23 +++++++++++++++++++----
>  1 file changed, 19 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/video/backlight/ktz8866.c b/drivers/video/backlight/ktz8866.c
> index 017ad80dd..b67ca136d 100644
> --- a/drivers/video/backlight/ktz8866.c
> +++ b/drivers/video/backlight/ktz8866.c
> @@ -46,6 +46,8 @@
>  #define LCD_BIAS_EN 0x9F
>  #define PWM_HYST 0x5
>
> +#define CURRENT_SINKS_MASK GENMASK(5, 0)
> +

Call this BL_EN_CURRENT_SINKS_MASK and keep it next to the register it
applies to.


>  struct ktz8866_slave {
>  	struct i2c_client *client;
>  	struct regmap *regmap;
> @@ -112,11 +120,18 @@ static void ktz8866_init(struct ktz8866 *ktz)
>  {
>  	unsigned int val = 0;
>
> -	if (!of_property_read_u32(ktz->client->dev.of_node, "current-num-sinks", &val))
> +	if (!of_property_read_u32(ktz->client->dev.of_node, "current-num-sinks", &val)) {
>  		ktz8866_write(ktz, BL_EN, BIT(val) - 1);
> -	else
> -		/* Enable all 6 current sinks if the number of current sinks isn't specified. */
> -		ktz8866_write(ktz, BL_EN, BIT(6) - 1);
> +	} else {
> +		/*
> +		 * Enable all 6 current sinks if the number of current
> +		 * sinks isn't specified and the bootloader didn't set
> +		 * the value.
> +		 */
> +		ktz8866_read(ktz, BL_EN, &val);
> +		if (!(val && CURRENT_SINKS_MASK))

This is the wrong form of AND.

> +			ktz8866_write(ktz, BL_EN, CURRENT_SINKS_MASK);
> +	}


Daniel.

