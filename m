Return-Path: <devicetree+bounces-216144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9D3B53C0C
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 21:01:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 71B60164E85
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 19:01:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F156254AE4;
	Thu, 11 Sep 2025 19:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bBo1Debg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502D81863E
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 19:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757617283; cv=none; b=FPbanRVk19HYq3QYJoCh+PI40/F3Ki4RdzvUudyVfjTUf28Zzq3jRC2Wa4Cv9zAkhIgbMACWF4xrTl4jyT8qvmlQnQRYaTDV2hpn/d9GtUwq/dCdq/3SnJkEBmjdn8mxp4ysTYSyq+gvBQUIMSfZdGvhcSnnFX3LNUQe7fHNsKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757617283; c=relaxed/simple;
	bh=iNSdi8waQkKMEng9ruRDLzVSv65292Ob9iM0hJksiT0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MVSvlMH90wBERzlm4nlRo4LczYwof/1zrKAj4QfGFakjZ4UC1CNIXJir3x0Xi1jLIipWlfUzUJLlx1IB5nTxh5G3qXbe7I4F2fWlDQ6YDu3fDYKkgPDxhFH45UCxsDJVq2GJaJCJ3sA+4zx28YPHnCDqxRB/ERwR2bPwl63fOYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bBo1Debg; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-61e74d053cfso266718eaf.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 12:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757617279; x=1758222079; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fthKq2rW3gORdFxE06iIbkm3SFnx/Wct4rEjy2bskcs=;
        b=bBo1Debgcxq/z/Tdf9x7g3qFYatU+hs/r499zQrMyT9vrGwKn0z1EmHEKESVs9MvKE
         NTQPKjFt1ae0ihjRb502uh15Rjt1M7gdbAttqKiesFHWd4/Hfj3j85XcyHL+Hp0UpcOR
         Wmn2UGtPtSDKUYqOemR25ztePeJabyLhmTfX7ZvilvinyySn6HHR3IWEskWCiqcX05q0
         Qg5S+1ASClg+x1N9UWNRGQ+7MUXmzprNCO+9BkIk/RxmeuoKZYevrAdJ0EPHjO/yi/02
         1lo21w3f8KVzpmXhYXQzGYtUJ0IHTO2qbJuaZV56MUJ95jQLf9s9hOwnx7zWVMI5+rdd
         lPFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757617279; x=1758222079;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fthKq2rW3gORdFxE06iIbkm3SFnx/Wct4rEjy2bskcs=;
        b=w186TbZ9JvEHjLUswtQR8yc5skJw5eBDps7WNoSVRY5Ste1Z7/dB51UeMeO1K6qnxk
         kNCwfXWPeCBD0IMOYhBxff1JDVBXPFver1lP9XcoYcA4c1JJUp3h2SwfIa+M9meeZW9L
         KeRZD7YqekencMUTxPRy+T/LpF0/JuG9jiXrN+u7kx4RKst5ivoarEDFl6ox34DLD/L3
         YfR8A3gC6BFNHuYyX2tB+yNFyw9aiDwBOobsKlfnGN6flFR4FRPkZmzNM9Tu97aGHcsz
         LUkNRlEGS2gnvG6RA0bsBuLQWlLKyX/tgt8RXDN6rZr0NXy7vwphdtGJ1xYpDgD8iF3N
         GmRw==
X-Forwarded-Encrypted: i=1; AJvYcCV6NpGSnEwPYIHs/rpPK4QFImcFyR7dU55bY/5DSOcAqb1psLg2wER944WevyOlGkshYiGMgb3fd2Pi@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5J8rEyfo/8hVcEBdMyd6N2j4VNf1ZEqBET4xbJLJGEIY4raz8
	rrPVv1cpX6V8rDonXSrOSN2nUdiTBDTS6VOjXqTyMVi/alqpkTsZqgmoLQvAwDwdH5M=
X-Gm-Gg: ASbGncsPXdJmB5cYuZgv79G3ET1mF6+X3YSG+09vIZlL3+kD2M1LsNeJbgSvJxwHFKy
	yqX2wU+Sq8J1lPoTl1MxATSDgfwZ84loVPMbiuBdJlr+VoYRTqcy8DDpr4AKU+hzi4OKd60HiVP
	nneUnatuOo16V66FlqkHUUTNuGNavs07mQZcjDgzx9opKpXiJv2H3KTxGtYLAw6MoANInHrTwhV
	mudyggEKEU3yGDfjJvt2t/6U6pkHKK7UOREfiJ2sxsz1LLsox67bfFMposVdJF5m9FydlD7G9rx
	OVHtEdDEYu4oabUxP6qi4IDvbYMLrQhnHFx7wAKPWGu2lcf7AGTDRSCLA0fuyiNQ4H4rX+pbHe/
	6b539WNi7tC8J6cqB6G3mKrTgjdDI1MO1C3GURYQWT9Anx9Q/xbzLJleEFvUlwktfE+p9mQU6kr
	ug6sPZnxYPRQ==
X-Google-Smtp-Source: AGHT+IG/WjqpLxUF8gahCWiYxp4DdbPjm4+PK7gdmbSkpf8+fsZcBh3p4ZtjWEJ/jdx0r0UonKQdJA==
X-Received: by 2002:a05:6820:509:b0:621:a61e:c54 with SMTP id 006d021491bc7-621bed56e66mr291001eaf.2.1757617279052;
        Thu, 11 Sep 2025 12:01:19 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:d684:59db:8b2a:5451? ([2600:8803:e7e4:1d00:d684:59db:8b2a:5451])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-621b7d83b68sm191994eaf.26.2025.09.11.12.01.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 12:01:18 -0700 (PDT)
Message-ID: <74607630-3ee3-43b0-88b0-37ea1bef6dc5@baylibre.com>
Date: Thu, 11 Sep 2025 14:01:17 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/14] iio: accel: bma220: split original driver
To: Petre Rodan <petre.rodan@subdimension.ro>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250910-bma220_improvements-v2-0-e23f4f2b9745@subdimension.ro>
 <20250910-bma220_improvements-v2-4-e23f4f2b9745@subdimension.ro>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250910-bma220_improvements-v2-4-e23f4f2b9745@subdimension.ro>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/10/25 2:57 AM, Petre Rodan wrote:
> In preparation for the i2c module, move the original code into multiple
> source files without any other functional change.
> 
> Create the additional bma220_core module.
> Fix checkpatch warning about GPL v2 license in bma220_spi.c.
> 
> Signed-off-by: Petre Rodan <petre.rodan@subdimension.ro>
> ---
> Changes:
> - split out open firmware table modification into separate patch
> - bma220_write_raw() exits without dev_err() based on similar feedback
>   from David
> - change includes in bma220.h
> - include bma220.h in bma220_core.c
> - add mutex.h and pm.h includes to bma220_core.c
> - cleanup struct spacing in bma220_spi.c
> ---
>  drivers/iio/accel/Kconfig       |   9 +-
>  drivers/iio/accel/Makefile      |   3 +-
>  drivers/iio/accel/bma220.h      |  19 +++
>  drivers/iio/accel/bma220_core.c | 313 ++++++++++++++++++++++++++++++++++++++++
>  drivers/iio/accel/bma220_spi.c  | 307 ++-------------------------------------
>  5 files changed, 354 insertions(+), 297 deletions(-)
> 
> diff --git a/drivers/iio/accel/Kconfig b/drivers/iio/accel/Kconfig
> index 8c3f7cf55d5fa432a4d4662b184a46cd59c3ebca..2cc3075e26883df60b5068c73b0551e1dd02c32e 100644
> --- a/drivers/iio/accel/Kconfig
> +++ b/drivers/iio/accel/Kconfig
> @@ -218,15 +218,20 @@ config BMA180
>  
>  config BMA220
>  	tristate "Bosch BMA220 3-Axis Accelerometer Driver"
> -	depends on SPI

I think we still want to keep `depends on SPI`. (And later add `|| I2C`)

There isn't much point in allowing this on systems that it can't
communicate with.


>  	select IIO_BUFFER
>  	select IIO_TRIGGERED_BUFFER
> +	select BMA220_SPI if SPI
>  	help
>  	  Say yes here to add support for the Bosch BMA220 triaxial
>  	  acceleration sensor.
>  
>  	  To compile this driver as a module, choose M here: the
> -	  module will be called bma220_spi.
> +	  module will be called bma220_core and you will also get
> +	  bma220_spi if SPI is enabled.
> +
> +config BMA220_SPI
> +	tristate
> +	depends on BMA220
>  
>  config BMA400
>  	tristate "Bosch BMA400 3-Axis Accelerometer Driver"

