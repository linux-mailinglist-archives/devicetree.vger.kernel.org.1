Return-Path: <devicetree+bounces-213620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D19AB45F93
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 19:07:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4C7A67AD390
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 17:05:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9123C343207;
	Fri,  5 Sep 2025 17:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Gi8Ie0zb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2574313294
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 17:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757092007; cv=none; b=gjx2IAAWyhqbQ7ZQDbpKroqANriCPcVCjw3Xo5ttRa5gbmSwLr7+UV4a0NomotK0V+VZvkMRfK3Kaz+QyXyXtWzFTkqQNJ+lpYlPcrvHUj0qtMqLDmNZvjGscEkuSENhiW0uxUll+KA7KN+4e6iag3abUsrpBd5trs5MoYUzq0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757092007; c=relaxed/simple;
	bh=jN0s/h7c25JUNJUarwGqsw47/AYuJ42K931uUXRodvc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ugj3BKKuBg4WOFMj25dsRK3WVyFOk+ZUquCIiCgExf79ymXwSBLE9kEoGFf+M7dQiLM4gPzPFCmRPHUqlTZCaa/5nf3yrP4vo/bNqK0QY8f2FlyU7NOE0gUKIoUlr8kvtLD8fIaiSlz3/xIFfWR/TtL1LZQOiv8jsmuIajpwsH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Gi8Ie0zb; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-61e74d053cfso541539eaf.1
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 10:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757092005; x=1757696805; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DVItyR2m2+5QjtGCrAbeXGO+ngiTgRfmo3zC9GGSyMY=;
        b=Gi8Ie0zbP8BPPd/qSAEaaNTfW/Z7wVTa0NxQ6jGwSwNlcDR2xwxBpxb8Dp8I6r8luL
         9kMG2jWsCriWDQAZp+OANr0MP5zNuGuwF/nljJSaOBhT29mko8B4owi/CLriWIJrmkIe
         mAuTX3KXQFITPgsCV0/ImYEzhFmXePg7FOFbicZhKVloaJ7wzfnGF139dhDd/Xn0oNnn
         nq7papv4pLpbpzBsaspoQUTubh6mA61w06fjoHDRBAWklprlXFkYo3cH313IQRNEoMGK
         yftZAv6bv7RVmObWtK7EJ52/EgZg07/i15LQsWT6Sy24wSOWtlmSZooo4G2JDYvPCJPI
         KxaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757092005; x=1757696805;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DVItyR2m2+5QjtGCrAbeXGO+ngiTgRfmo3zC9GGSyMY=;
        b=Sk9nnJ1gI1RuOTlBWqcnUQtiHOOQ79WFBt5KaMpVlmNml2oxj61KWMvu/cBy0KAeya
         8+YW5AMAaek0hPKisRZBwnj0uitxMkORpx6ryRt2R+9YS3rZMfuCw8yajUIbYP+OeY1z
         fuMiUsloB2OpeYbtfqJqfV3zLa+Nr944JYHFmkf3EQ280blczvUXztwTi7scmOHPVLV7
         mFaJ6G72KB3+aFjYoRBdnZ2M0WrcCKFyIMebYTaVpVSjTREOWHw+bsLETKJjrnqhmbMC
         7cjBcOlghrpcywFXtaOusUlckONK/CjU4YJO7OdHQW7RhuK7k4SWnZfcD0uYVZWECAYk
         t7Vg==
X-Forwarded-Encrypted: i=1; AJvYcCUhI2/PtiT+3pIrZ9pL8yf0oMsyaWR/T8fxVtu87+Gpc1KwEtebCWAmZEmxVcT4Xcjpqa2WT53d95kP@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx1JD6c4zp0+UBkGiQCnEOtT9hrAWMlV3FpH9zepRmvNWgtzB0
	cyz0llaA4usjINPzjYWjajttxAW3kQ1sMehGz0git/STebkoccu9zwrDMIk/5FI/bVU=
X-Gm-Gg: ASbGncvgHaaJdDoC8qbDqe7jpwcr4Wo26FoGx3jPLAZ/o5RwwGv3mNiz8LHxTaBJBBW
	iiAmHxEMbM8fBVc8cRUZ4OeUIOoErPYUjv+BcJRUAFh1tySce5v+D4pNTJUwhV/sxpYmjfhl6Zf
	Xue7LSP+KrfQ8D8+QwFoUZ4chcvBjLnih58q66ttBK30cnM1PHdkscME5XOryvQlRoP6vv4QK1w
	cJJYqCUNJCWALv/Tu4/VEUxueXpt4jWL+aGlHEUev0n171Rc3ChTtCnDyAMYLViVRBT9UfdxZp9
	CxCbVILujDXJEX+WoE+cyGVIIjrZ5QJMsEsNwIsQvE/B0lAO/bDESZ8WWpT8yZXty2O6gpZcT5w
	ktkfFFTVgt+09ymRMuzcb+VK/CAqHIrNtKiBcYwDnxTYVktb50Rrze2OHZtvKMlFaIoyBNZCm
X-Google-Smtp-Source: AGHT+IGCip+t0CW1JF3kCxDlGyKFDm8SFolIuf1wSJVnpOilreSjhclhFmaFcTthQJmi9hElEWUmJg==
X-Received: by 2002:a05:6808:48d6:b0:437:d7b0:878d with SMTP id 5614622812f47-437f7ddeecbmr10847393b6e.50.1757092004820;
        Fri, 05 Sep 2025 10:06:44 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:52e:cda3:16cc:72bb? ([2600:8803:e7e4:1d00:52e:cda3:16cc:72bb])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-437ffed9f15sm3544740b6e.10.2025.09.05.10.06.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Sep 2025 10:06:44 -0700 (PDT)
Message-ID: <09cbea15-1b14-4a0e-b643-563253e2a918@baylibre.com>
Date: Fri, 5 Sep 2025 12:06:42 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] iio: adc: ad7768-1: introduce chip info for future
 multidevice support
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: lars@metafoo.de, jic23@kernel.org, nuno.sa@analog.com, andy@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 marcelo.schmitt1@gmail.com, jonath4nns@gmail.com
References: <cover.1757001160.git.Jonathan.Santos@analog.com>
 <098a8b2556ea95fdce5f81cbac98983f91ca1a9d.1757001160.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <098a8b2556ea95fdce5f81cbac98983f91ca1a9d.1757001160.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/5/25 4:49 AM, Jonathan Santos wrote:
> Add Chip info struct in SPI device to store channel information for
> each supported part.
> 

...

> @@ -1371,9 +1387,14 @@ static int ad7768_probe(struct spi_device *spi)
>  
>  	st->mclk_freq = clk_get_rate(st->mclk);
>  
> -	indio_dev->channels = ad7768_channels;
> -	indio_dev->num_channels = ARRAY_SIZE(ad7768_channels);
> -	indio_dev->name = spi_get_device_id(spi)->name;
> +	st->chip = spi_get_device_match_data(spi);

Generally, we want this early in probe so that chip info is available as early
as possible. Might not need it now, but would save us from having to move this
later if we ever do.

> +	if (!st->chip)
> +		return dev_err_probe(&spi->dev, -ENODEV,
> +				     "Could not find chip info data\n");
> +

