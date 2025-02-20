Return-Path: <devicetree+bounces-149132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F017DA3E6E7
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 22:44:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8312717F1E1
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 21:44:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56C22265610;
	Thu, 20 Feb 2025 21:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NnOmxCW4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1592265600
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 21:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740087714; cv=none; b=GzLn6NNsZmg5pQoym//4oZR12fTuBLURfCOyYlKhhw26b1lc+jd/kJuDQPA9wZFVp9ONXIh+4JKUE2VL6HR+xHCQC3ZqQ1d79JY81jGrtazYZxzNMswnNEsW2w9pgJHMClkJYewvwXHUjdM2zhcd+jZ6FhYV+5kCLgK0fbqkP0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740087714; c=relaxed/simple;
	bh=teD/oNsKx5RGV7eNFlPlZDTqmNgYlA6f2tN2uGCtX64=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WcYrm7rRZGvo4TarbxDLas1C1ECqKCCis2ape4p2EmCdJFUkti+RwNKQh/rPROi2DCAbTxMeHnYo7jjRPbrpqLOrkxTGeUp3LX2ka1gUjAjlHpyfa+haSgxVYAo6Q8zYODM6SyLjbOgEaY9fXg6KHDcZ0QXhiYD24JufhuXQMQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=NnOmxCW4; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3f408052bdcso532793b6e.2
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 13:41:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740087711; x=1740692511; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rzkvNxfjrcmizqsZPYWmSMGgPflTiVYxAgW1kHG5PY4=;
        b=NnOmxCW4d+8alqAVEt1MMKvu9Vj75bIendB7q+NCBTrfLambEPZ9ddzZhQpcImLxxb
         gM/+EHTH88SA1jNGTnoqK0uFkg0m/URENG+Z+eGxlJt/JCtGCrJTJuVnlqL1vFXV9flj
         DcOmmyxHgzCzFq8xGkG06aPju4zL2ioyOw8Z4KWpj7SH0E9yrrEPgUF688C8jzs1MirH
         fwwBn6l09PyDuVh9McYLxj+gmmDdwa3uK9kaQorQbVKgEyXoF6/y/GapAEgY5VUIunDX
         Te7OJsx3Ylb96Q+CppRLEEbRyIfrfMac4l5q2r7bCZ+AvH/6Nh3N6r/9BkMhjpH558je
         KNsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740087711; x=1740692511;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rzkvNxfjrcmizqsZPYWmSMGgPflTiVYxAgW1kHG5PY4=;
        b=pXnavOVCLS481fQZ+u/+U84b4AY5PY/OF82Oa7eBfEumJhthEVezvmHhFOt4qUo/OR
         VZkooLLg2QXE+ohfjaCjV77Hu/2osfBr3iYeuXkhvcZ+u2SpL6HjcsF6SaZ3hqfZOUx6
         FSud7NnHIKHnFuGpk0IOWQcwb8Dsc8FB2kvHo7ljZxjryBoAbxUECSBk3N8ph18iNqIl
         n2aFYwj5ZUZcz2ITvhVg5IZDBP58pnmsjqi6L6MVMXFFLtWQ9j211l7VuEtJQ1q3dG0z
         y0lwtN1oE5F68EAnWAC9hkYihmG4hfAOPh06QdQXeHlUMGloXAJaNq2izzc11h89Tkzj
         Ynlw==
X-Forwarded-Encrypted: i=1; AJvYcCX6O9vxtPdT6NlWiQHk8DSRpjtPVSslVK01aOR9+eRqEuTvwwu8uMVLxwaWMmBVj25LALRMPbaGwBuZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwFXWaMt/YpssYt6VwbYxv6cw8NntWIfQR1p2mINAsUv/Rncols
	4farIgpaaKmkDdZYCKaGp6oPmgTEar5OnGvfYEv/SAG7mvHM8DKBjhWIXSuU4Ao=
X-Gm-Gg: ASbGnctPteM/FHJPH6HiiTQwlOcmTtoSI4eH9dtQbO5G1z+XQtkhp4YyCAtlms7rVmb
	POQonuuX0C3zdmIuu1J+c1q96RdcM/Xbbuqj6G2OqaLlK2tXjzUfj3imHZl4FFv6UssvlGBHPeQ
	jPAD3ObxPSNXLH+WheE945lhc7/Mat4W6yv28A3QGdc81u+ssTJX0UFRVyFyi+9rISNlBo4JIOG
	xGf89hh6KRWXUvK8UUIp1PCCIYERM2sr+ASQvPjrzVxP6AhkE1H7Au5Z6NkitJXEsVxCTPGrHPg
	is2tnfamkXh8wEmbvpFFylI2Yg8bxgY8ReA1N/TYUNomO8CmXp9l
X-Google-Smtp-Source: AGHT+IEY05XEGaQWK4ngyH/Pv19afkOgy82nwu7ulTs9vg3rVUHa4lOByzk4QFuWXD0qIcvj4+idew==
X-Received: by 2002:a05:6808:3085:b0:3f3:d159:16f8 with SMTP id 5614622812f47-3f4246d4b95mr868836b6e.19.1740087710997;
        Thu, 20 Feb 2025 13:41:50 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f3f7e34401sm2743312b6e.38.2025.02.20.13.41.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 13:41:49 -0800 (PST)
Message-ID: <90be675e-9916-4db9-8a87-fde4148ba8e5@baylibre.com>
Date: Thu, 20 Feb 2025 15:41:47 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v3 08/17] iio: adc: ad7768-1: convert driver to use
 regmap
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonath4nns@gmail.com,
 marcelo.schmitt1@gmail.com
References: <cover.1739368121.git.Jonathan.Santos@analog.com>
 <51aa3df84b50bf981bea65690d54feddd3d98a89.1739368121.git.Jonathan.Santos@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <51aa3df84b50bf981bea65690d54feddd3d98a89.1739368121.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/12/25 12:17 PM, Jonathan Santos wrote:
> Convert the AD7768-1 driver to use the regmap API for register
> access. This change simplifies and standardizes register interactions,
> reducing code duplication and improving maintainability.
> 
> Create two regmap configurations, one for 8-bit register values and
> other for 24-bit register values.
> 
> Since we are using regmap now, define the remaining registers from 0x32
> to 0x34.
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---
> v3 Changes:
> * Included a second register map for the 24-bit register values.
> * Added register tables to separate the 24-bit from the 8-bit values.
> 
> v2 Changes:
> * New patch in v2.
> ---

Should also add a `select REGMAP_SPI` line to the Kconfig
for this driver to avoid compile errors for random configs.

>  drivers/iio/adc/ad7768-1.c | 148 +++++++++++++++++++++++++------------
>  1 file changed, 101 insertions(+), 47 deletions(-)
> 


...

> @@ -260,15 +297,21 @@ static int ad7768_reg_access(struct iio_dev *indio_dev,
>  		return ret;
>  


I think we should set ret = -EINVAL; here, otherwise the ret from above
can survive and we return 0 even though no read or write was done if
the requested register was not valid.

>  	if (readval) {
> -		ret = ad7768_spi_reg_read(st, reg, 1);
> -		if (ret < 0)
> -			goto err_release;
> -		*readval = ret;
> -		ret = 0;
> +		if (regmap_check_range_table(st->regmap, reg, &ad7768_regmap_rd_table))
> +			ret = regmap_read(st->regmap, reg, readval);
> +
> +		if (regmap_check_range_table(st->regmap24, reg, &ad7768_regmap24_rd_table))
> +			ret = regmap_read(st->regmap24, reg, readval);
> +
>  	} else {
> -		ret = ad7768_spi_reg_write(st, reg, writeval);
> +		if (regmap_check_range_table(st->regmap, reg, &ad7768_regmap_wr_table))
> +			ret = regmap_write(st->regmap, reg, writeval);
> +
> +		if (regmap_check_range_table(st->regmap24, reg, &ad7768_regmap24_wr_table))
> +			ret = regmap_write(st->regmap24, reg, writeval);
> +
>  	}
> -err_release:
> +
>  	iio_device_release_direct_mode(indio_dev);
>  
>  	return ret;

