Return-Path: <devicetree+bounces-175221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0A3AB0213
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 20:03:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 846127BD8E6
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 18:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1515288C3C;
	Thu,  8 May 2025 18:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="H2tG1pGa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B186528852F
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 18:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746727313; cv=none; b=mPshzKI678o8ejdovpT1cVavqCZEE7y0T4tifOGHi+H28AiU11etcaosNpVI8Dne/HfiZtiK93Jw3S0TtxGY0cSZRHayPzrzoBQth26e5VLEULDWIzy7iwU5o6/jk8kKR2PVYVkU2N7IDsvVBG8JBnABhx/vOxypy9fdzCx3EGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746727313; c=relaxed/simple;
	bh=HSk91ZH8Z8a8mL6LPGseY5cs3UZzjzpo+FRepoBv918=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D6AjiWc3+eHlRU0MThEwVHb061FygJf5yUYY3qtccOf57XwLjAROblO2uHjmzMoU8IMq1MQ8ZYkz0hIXkXdFYsga4OF3mDUgjdjAdNXE0MHB1ZsgJd1OftUjEeViwO8Yj8/AjLMi1ptSsp4+KYJFWUQirdMEO3XyfaQx1NaK8hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=H2tG1pGa; arc=none smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-60638c07cabso775184eaf.3
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 11:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746727311; x=1747332111; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qsLFXZQvKp0g3hRvIjf83N1PFE6uMNvpNp3Q+PhYMmM=;
        b=H2tG1pGagIhv0/NGCYUGj5dS1Vka2+LifTLBUjZ4hcYe8m6TEMczqwHhAzaexGmUOF
         SnFwNYJa2a7Pl5BmKEQJkyTgeKbE1msPyAR2wDLW5jS0wBFWXQHiVmiwBQ2BOkruIlet
         uQ/G3RmSIKh/tWikw+j1HUyUqVsQq9KHy8DRo04CxEM70yiMdYbt6HZetIIrkeMqz6jJ
         ZkxG2olP1G8UsdidIpy6xnbkHHDOyYmBcMbJ/kvkccDnGjAFay+HaBZvrCa4U6Wadtzk
         I4WTUAgVda0aLC5n2t6fWygyZY8kIJHficIwP0qht+YpkOm7o7kcwrV6cDshwTtlgVK9
         PEvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746727311; x=1747332111;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qsLFXZQvKp0g3hRvIjf83N1PFE6uMNvpNp3Q+PhYMmM=;
        b=p6uK1lyY4mLmkJ54zLSYRRgwyHxxrPua+h43jpP8t4sgNF2vLB1pPCtCF+6MPL4M2Z
         CCou3zWK9zF6V2AoKWE+ovad+DpkHXj/0TBKkpm2VRSx8WLXzns7Q2Vxj2BTMMbMNRVf
         vCgSPEMHo5APB+FZF6xVh1Avv03J9n+Z121yn4fd4DixFBgDDQKn3BZrQ7pXciw1wZwA
         uqs5xk0P4bcfguonLK/4PN/2bSqEMf1r2Frzl/0jVym9PO7rss2ANs3k1FXr6/I2ZHji
         rBH4zaWVdOkBG9lSC6hiESBer3HhjCZjThY7C+b4wLAaWOpFlpm6bEyy7S21QbGtIBq7
         LNig==
X-Forwarded-Encrypted: i=1; AJvYcCXxHC+OIbSsgmLIsQyx7ANJiRex5Ak/TNDts2G+t5jfhM16Mb41HfyUeYszG5zo/8gFC5LovTaRSufh@vger.kernel.org
X-Gm-Message-State: AOJu0YzoObF62wW87wl9t517etCDzSFbXxtLT205ymzJxA+1pJiqulw0
	/D0cnxbCYHb8i4dNCMzfA1n6Km5B5653STC+GpewbX9QCXh2cUKxmH9qBIPJuZI=
X-Gm-Gg: ASbGncsKiKdVBsAmd29/Lz2pFW+j53ERBEinRd4+VjO3QGAN4GqBW3JAdYr7muCnEA2
	teWCeu5K3x/aBBHmgFYNwHOx5fsF21ylHPiA0uHRflnAlCpKEfx5s0gXp45cIDEIDv4h7YjqEYQ
	nALm2Bi1Vhr+gFGrcJrlaCJwgtR6oHRpy0jCBnap3ZM3VtU71uv0UzE+QKwEVw4NJF2IZlGFMuw
	YKYinAXVse3V10kKngwIge6RfDem/mUpVPiyPRfiOzqD+h+A/A4cgWJxxg6RBTKMDCcKfHXQ/KJ
	am1qUIZHilvJ3U0PZQ3HsHblXNiTIz1Yzakajq4D9Fq19RFIIXD6vmnTFdhUXQgfhcqgtDBrbXV
	r8qNek5pOMpyVNYZgkw==
X-Google-Smtp-Source: AGHT+IGfy9VFecJiszoyTCogAO3d6b7hz+I7yrjTrXWHFhmGYTeSyuJFnQR1Y514e+k2eucOaAM9DA==
X-Received: by 2002:a05:6820:1f07:b0:606:26bb:db78 with SMTP id 006d021491bc7-6084c126876mr274106eaf.8.1746727310744;
        Thu, 08 May 2025 11:01:50 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:1120:d1cf:c64a:ac7e? ([2600:8803:e7e4:1d00:1120:d1cf:c64a:ac7e])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6083fe3c829sm84390eaf.15.2025.05.08.11.01.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 11:01:50 -0700 (PDT)
Message-ID: <21b0e8e3-f9ca-4fa4-ba24-233d2e96944e@baylibre.com>
Date: Thu, 8 May 2025 13:01:49 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 08/12] iio: adc: ad7768-1: add multiple scan types to
 support 16-bits mode
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
Cc: andy@kernel.org, nuno.sa@analog.com, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, marcelo.schmitt1@gmail.com,
 linus.walleij@linaro.org, brgl@bgdev.pl, lgirdwood@gmail.com,
 broonie@kernel.org, jonath4nns@gmail.com,
 David Lechner <dlechner@baylire.com>
References: <cover.1746662899.git.Jonathan.Santos@analog.com>
 <8b8f861422b15b1316a1513cd66abc544ab8c5bd.1746662899.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <8b8f861422b15b1316a1513cd66abc544ab8c5bd.1746662899.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/8/25 12:04 PM, Jonathan Santos wrote:
> When the device is configured to decimation x8, only possible in the
> sinc5 filter, output data is reduced to 16-bits in order to support
> 1 MHz of sampling frequency due to clock limitation.
> 
> Use multiple scan types feature to enable the driver to switch
> scan type at runtime, making it possible to support both 24-bit and
> 16-bit resolution.
> 
> Reviewed-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> Reviewed-by: David Lechner <dlechner@baylire.com>
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---
> v7 Changes:
> * Added TODO comment to use spi_bpw_to_bytes() helper function.
> * Minor commit description changes.
> 

...

> @@ -675,9 +723,16 @@ static irqreturn_t ad7768_trigger_handler(int irq, void *p)
>  	struct iio_poll_func *pf = p;
>  	struct iio_dev *indio_dev = pf->indio_dev;
>  	struct ad7768_state *st = iio_priv(indio_dev);
> +	const struct iio_scan_type *scan_type;
>  	int ret;
>  
> -	ret = spi_read(st->spi, &st->data.scan.chan, 3);
> +	scan_type = iio_get_current_scan_type(indio_dev, &indio_dev->channels[0]);
> +	if (IS_ERR(scan_type))
> +		goto out;
> +
> +	/* TODO: Use spi_bpw_to_bytes() helper function. */

spi_bpw_to_bytes() is to get buffer size when setting bits_per_word. It doesn't
apply to spi_read(). So we should drop this comment.

> +	ret = spi_read(st->spi, &st->data.scan.chan,
> +		       BITS_TO_BYTES(scan_type->realbits));

If we replaced BITS_TO_BYTES() with spi_bpw_to_bytes(), then it would read 4
bytes instead of 3 when realbits == 24, which isn't what we want.

>  	if (ret < 0)
>  		goto out;
>  


