Return-Path: <devicetree+bounces-34538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AC283A24C
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 07:49:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2B867B220C4
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 06:49:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FAD91426A;
	Wed, 24 Jan 2024 06:49:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VKMTJvYE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2E99FBF4
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 06:49:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706078986; cv=none; b=gn4Gw0DV4mHrYpZcUhw8fphxaqz2/9fxYa4HWb7llI8MVLkD4pI25/eePSHX7SFskL6ZGca57vRoqYqNusbbG6GAWXE5paKE6sDH70CkYyFyIT+qVIoutyCtDWbdxgaOA7Jd830wW08qJ+z9v/zTci5iL0e7osdL/cHotuwT+/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706078986; c=relaxed/simple;
	bh=HZo5RMjXLjr+Hr00WaHd+Kw9PPwgu+PbXlckjybNqS4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=reB5BazC6CAGmSDJlCsfQDvXgRk0e+0J4uUIiQM6zj+zyvOuqCODYp64meACX++juN9eBDwTaCkYEv1HG5uUNEIsEM4IB7Fv+E6Gwc+vy1peqPf7nnw0Lu/HrxlpI2KVZTd+lyBsu5laMKQnq2Jlft8UEER0F0YidinrvMJAMO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VKMTJvYE; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40ec6a002a7so2262575e9.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 22:49:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706078982; x=1706683782; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+5dC6oObRCfj9XMiE47OTM/dpbI8m3Cq3OPFmsenlcE=;
        b=VKMTJvYEP8J3pY298liCUQGPPwPR9O9CwaDkpkwS5+86WFYYaTK/p8XgGJ8O+bpJnD
         mHdVaCB4FmhKQaVLxDR3p5e+MxmOANzRVIlwGPXLyOphberWslRjBUL9T2ZSHaBrHLq+
         8X6lTqGhofbrTov7IQYFybgxyPccQhG0GVSEoNJ6Ps42zI2zKU7PcH96UE5I/wNRaycz
         anz1epuU7hk9CaHlKDHOo+t+7BDnvSrNmHiLNQUzyK5Ipp92YRacwbOtJSZo/Ej5Lv9D
         JF2Z4AmJ7ODd5joP9R+z69UqM0D5INpg45VcSn5kQohbIxNo9zILyEloFR3lH0BwdS8o
         GRVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706078982; x=1706683782;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+5dC6oObRCfj9XMiE47OTM/dpbI8m3Cq3OPFmsenlcE=;
        b=QD3ndeoYjv06WupALqnMl4Pz8yB40YQqi8AItGVko2YMlbgwsUW4R6bUD3Eja3mZRt
         DV7NqQPxADQm/fBjk35OhRoMHn+AlFUGIhU2gkl6lY3rUXzbME2s1mV++/Js7NAcDvVr
         e33VusDriFWc1cZIiFLab6dJHr+eNs8dAj8ni7L05pwPbxrF0GlPvp8R4TMJ4wTGsuCQ
         pJsXHhalM7KpwEYhAh+QTwpiZB8gW2/z7U+1e6iE6bwwzmS59GfMC4caQ3EL1/e2Bw7F
         cEkh0gkWEZJOfrms4X0t0WZXZ/seiiBPE/pAYvHul02UkS7absQsSXB4TAvYXJbJ2e5T
         J69A==
X-Gm-Message-State: AOJu0YxhjYWLdSwKjb8axKmIOZJSHr1x7xSg0LsFfV5l3GIDrT0B2U4I
	6XWTH0+V/LI0qSoDvi8tc8/t6oJfK9gdXddC0NXwCQP+JGQiaiawnfBw4VNJqFY=
X-Google-Smtp-Source: AGHT+IHNOznaWmaenlaG6fZZlWedy3D7fCmkfQzXiVINibSDkgDN0MBf8opIdRA8Lg+U9/J2NB1cvg==
X-Received: by 2002:a05:600c:2152:b0:40d:6af2:f965 with SMTP id v18-20020a05600c215200b0040d6af2f965mr548979wml.106.1706078982058;
        Tue, 23 Jan 2024 22:49:42 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id jg1-20020a05600ca00100b0040d4e1393dcsm47998178wmb.20.2024.01.23.22.49.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 22:49:41 -0800 (PST)
Message-ID: <9c9e71ff-42ab-4753-80cf-09b34a97b28c@linaro.org>
Date: Wed, 24 Jan 2024 06:49:39 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/7] spi: s3c64xx: Add Exynos850 support
Content-Language: en-US
To: Sam Protsenko <semen.protsenko@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Andi Shyti <andi.shyti@kernel.org>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 linux-spi@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
References: <20240120012948.8836-1-semen.protsenko@linaro.org>
 <20240120012948.8836-6-semen.protsenko@linaro.org>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240120012948.8836-6-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 1/20/24 01:29, Sam Protsenko wrote:
> Add SPI port configuration for Exynos850 SoC. It has 3 USI blocks which
> can be configured in SPI mode:
> 
>   * spi_0: BLK_PERI_SPI_0 (0x13940000)
>   * spi_1: BLK_ALIVE_USI_CMGP00 (0x11d00000)
>   * spi_2: BLK_ALIVE_USI_CMGP01 (0x11d20000)
> 
> SPI FIFO depth is 64 bytes for all those SPI blocks, so the
> .fifo_lvl_mask value is set to 0x7f. All blocks have DIV_4 as the
> default internal clock divider, and an internal loopback mode to run
> a loopback test.
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

> ---
>  drivers/spi/spi-s3c64xx.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
> index 0e48ffd499b9..f7d623ad6ac3 100644
> --- a/drivers/spi/spi-s3c64xx.c
> +++ b/drivers/spi/spi-s3c64xx.c
> @@ -1461,6 +1461,17 @@ static const struct s3c64xx_spi_port_config exynos5433_spi_port_config = {
>  	.quirks		= S3C64XX_SPI_QUIRK_CS_AUTO,
>  };
>  
> +static const struct s3c64xx_spi_port_config exynos850_spi_port_config = {
> +	.fifo_lvl_mask	= { 0x7f, 0x7f, 0x7f },

I'll come with a follow up patch on top of this. Having the dt alias
used as an index in the fifo_lvl_mask to determine the FIFO depth is
wrong. Not only because of the dependency on the alias, but also because
the fifo_lvl_mask value does not reflect the FIFO level reg field.
Playing with what we have now is ok by me, I find the patch good.

> +	.rx_lvl_offset	= 15,
> +	.tx_st_done	= 25,
> +	.clk_div	= 4,
> +	.high_speed	= true,
> +	.clk_from_cmu	= true,
> +	.has_loopback	= true,
> +	.quirks		= S3C64XX_SPI_QUIRK_CS_AUTO,
> +};
> +
>  static const struct s3c64xx_spi_port_config exynosautov9_spi_port_config = {
>  	.fifo_lvl_mask	= { 0x1ff, 0x1ff, 0x7f, 0x7f, 0x7f, 0x7f, 0x1ff, 0x7f,
>  			    0x7f, 0x7f, 0x7f, 0x7f},
> @@ -1515,6 +1526,9 @@ static const struct of_device_id s3c64xx_spi_dt_match[] = {
>  	{ .compatible = "samsung,exynos5433-spi",
>  			.data = (void *)&exynos5433_spi_port_config,
>  	},
> +	{ .compatible = "samsung,exynos850-spi",
> +			.data = (void *)&exynos850_spi_port_config,
> +	},
>  	{ .compatible = "samsung,exynosautov9-spi",
>  			.data = (void *)&exynosautov9_spi_port_config,
>  	},

