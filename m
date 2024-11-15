Return-Path: <devicetree+bounces-122209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC3A9CF25A
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 18:07:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0A9E285BC3
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 17:07:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E3CF1D54E2;
	Fri, 15 Nov 2024 17:07:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KNNZC1KM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C0831CDA14
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 17:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731690460; cv=none; b=VcjxC7hR5be+e9PqCoTb9qfhfQVHxZLXMDgOCVKsXY7PxF57e66oDTz2yREneELYiZzU321CJHrRylDmR4tsLj0hsUDd3bPijKi6kl/s9SbjgCH4tTpo2tTzvEvYUUSaTbefaZG7Ukoqz07pgbfz6PONS2KN83zXhvCM7QgtUY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731690460; c=relaxed/simple;
	bh=RlgLCwt0pHAzO+8y8JHjzVJt2BMGqQLKA4J3pAJFt7A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BVtqcUEiEajdS0keewxFQ/HvmuYPe2HBGsD9QSIcObdMokVWn4tKVHXnKWnnwnnlW/Keoq66y6Zfi2t4RLqcJbe5SvxvK3Y7xwucUUh7Pmmui3gGr9Y3yvM78oHyIrISvOGVEw3P4VNOSzJMZwC4nD4ZmI0iOBQ/H9tlZaxs1YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=KNNZC1KM; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3e5fef69f2eso607425b6e.3
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 09:07:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1731690457; x=1732295257; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0UZ4bmKiEfcrQ88X0EpormBgHcykEkWHrKLssaVp+ps=;
        b=KNNZC1KMH//UilrDoY+W3OmZrVLJKwQnRxU9ErFB2vkIXGNrMrpsRSafWnd2LllDgY
         glJOGGy3T+FWqE/5tlaK4JLxOtDPbdQ0/7WMpSaEWo6KGGnpBzQfH+mwS5G0EVRZKE1d
         mkD9QEyUeVLdGBlNFC7HtPfY84iskgtUbAOD1VP1V6ByWHVJ4/Bt43ffaWWWwUA6/8aJ
         /6Ewg1eZjmgvgGEJpdNExRx2NJB8awcKJobTHbf8IT0OgTKZC25hpZ7GKbvH4T5p23m5
         HF+44VrzVUesHsbORPYf8A0oMDtzwzIqXJUSuW8qBFNwjDlX69v8CHQrWmmbCC7Q6M1X
         0tdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731690457; x=1732295257;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0UZ4bmKiEfcrQ88X0EpormBgHcykEkWHrKLssaVp+ps=;
        b=V5lVNkDU4tAP64iWdUhCWjOqAeKralHLFqiNqThBXHSBEsPT0nV7NEdQ98EL86qUjq
         bCCdcuBcrrIzBlZMGBkHDfPu44bqjyCVfppwJTIxvCcGj7KaSOq8CP+mWp0AN+8zdEo6
         SV+kQth+f/790+cffSPBWOP9R/Dx5XvphtXMKIGoJ4Cz0m1wjo4U+UTXtjJWtfDWO9T4
         S6FhjPrlEyiXGHILS5awpIG1fIB3r3hAZs3+D5gvQJ7+4vdYaqrid5jMe/XcMR/1G3Dr
         S3Ed9227f6VkK05Ic9dIBkb3oqjZqrUZs3iJp5PTf+/iho/ALgmx+iyHRRky7wCvGtF5
         trxA==
X-Forwarded-Encrypted: i=1; AJvYcCX7ZuhP8ZfLdJJuLGQk1oKz+iYVqlVRmpb2W42EbPxTWut0VE55+PvN+aIxb3CzKOXEUSoeYH+qyBNf@vger.kernel.org
X-Gm-Message-State: AOJu0YxF0tiFHFwEkeX8ekhDK5NkKRVvXKEhxQxaxBzwStQG52vTDX4f
	naTbhwbdpKLjhWH+mgbiuISd0rFVaMsMQHHH6zw1XAnC5b3molrboDpe76fDdnQ=
X-Google-Smtp-Source: AGHT+IFFqGUcRPyBDjreOCcM1rzo3LgkxNVwNrVKyhxfFUltStJRCbjgMz5dV1Tl7g+Si9O2R8j5Zg==
X-Received: by 2002:a05:6808:2020:b0:3e0:3ab7:d7ad with SMTP id 5614622812f47-3e7bc7d2f6fmr4048241b6e.22.1731690457623;
        Fri, 15 Nov 2024 09:07:37 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e7bcd82997sm629389b6e.34.2024.11.15.09.07.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Nov 2024 09:07:36 -0800 (PST)
Message-ID: <7e302a49-db5a-444d-aae1-3c80ab75b471@baylibre.com>
Date: Fri, 15 Nov 2024 11:07:34 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] iio: adc: ad4000: Use device specific timing for SPI
 transfers
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, marcelo.schmitt1@gmail.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <cover.1731626099.git.marcelo.schmitt@analog.com>
 <81370b043de208795738e5679c33de37439c0a2e.1731626099.git.marcelo.schmitt@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <81370b043de208795738e5679c33de37439c0a2e.1731626099.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/14/24 5:51 PM, Marcelo Schmitt wrote:
> The SPI transfers for AD4020, AD4021, and AD4022 have slightly different
> timing specifications. Use device specific timing constraints to set SPI
> transfer parameters.
> 
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---
>  drivers/iio/adc/ad4000.c | 50 ++++++++++++++++++++++++++++++++--------
>  1 file changed, 41 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/iio/adc/ad4000.c b/drivers/iio/adc/ad4000.c
> index 21731c4d31ee..68ac77494263 100644
> --- a/drivers/iio/adc/ad4000.c
> +++ b/drivers/iio/adc/ad4000.c
> @@ -35,10 +35,6 @@
>  
>  #define AD4000_SCALE_OPTIONS		2
>  
> -#define AD4000_TQUIET1_NS		190
> -#define AD4000_TQUIET2_NS		60
> -#define AD4000_TCONV_NS			320

We are removing 3 but only adding 2 in the struct below?

If one of these was unused, best to mention it in the commit message.

> -
>  #define __AD4000_DIFF_CHANNEL(_sign, _real_bits, _storage_bits, _reg_access)	\
>  {										\
>  	.type = IIO_VOLTAGE,							\
> @@ -122,10 +118,30 @@ static const int ad4000_gains[] = {
>  	454, 909, 1000, 1900,
>  };
>  
> +struct ad4000_time_spec {
> +	int t_conv_ns;
> +	int t_quiet2_ns;
> +};
> +
> +/*
> + * Same timing specifications for all of AD4000, AD4001, ..., AD4008, AD4010,
> + * ADAQ4001, and ADAQ4003.
> + */
> +static const struct ad4000_time_spec ad4000_t_spec = {
> +	.t_conv_ns = 320,
> +	.t_quiet2_ns = 60,
> +};
> +
> +static const struct ad4000_time_spec ad4020_t_spec = {
> +	.t_conv_ns = 350,
> +	.t_quiet2_ns = 60,
> +};

t_quiet2_ns is the same in both cases, so do we actually need to
add it here instead of using a common macro? Or if it is for future
differences, mention that in the commit message.

