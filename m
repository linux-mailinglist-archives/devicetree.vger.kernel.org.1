Return-Path: <devicetree+bounces-166194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6A5A86923
	for <lists+devicetree@lfdr.de>; Sat, 12 Apr 2025 01:26:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 45F9C8A7286
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 23:26:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74A342BD5BD;
	Fri, 11 Apr 2025 23:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PSKDqGOj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3BE2BD595
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 23:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744413975; cv=none; b=oE5FxIVZNNsWOYd+fznEp4Eon/EE7L9mZK5BUxEustxjAT+XJCQyPrSFRNYEWcFBYDhnklnf+b5BpBae0cZm7hsZJWLRUuuQqPzzdM5Ts+2lmIHDOMFZL5jzdIVno+C/c/Ia5YIybmUE30LX6awDNse7pCzrVtWPM9Z65zm1xrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744413975; c=relaxed/simple;
	bh=V/HmqSsw49B0iA0sXtWqxb6ZKdFvyeYgbWEg2Qp5R24=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D53nN/acITaE+YehZ77XyW/VKISf/ZWdIumUvfvnsrH3BNFPhGek6370MDFnDYze+9vnF7cHZ1OQ3yphlWlQOFGziuvpTIBie1DS7s6u9hQnn2c+/eznD9rSqrRwj4kjy17zbWiC0otUMljZs1Df0pmGV6TW7pZjkTlMurzL+xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PSKDqGOj; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-72c0b4a038fso1508971a34.0
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 16:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744413971; x=1745018771; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5GZyvI2XLRL6983WEyW7fk4u8vu6YYokKaErcKJZw8g=;
        b=PSKDqGOjsUHl4gPKOplW4nZEA/ogdifhtHm4Np0zTCflCM4Y/WL8Mjy02UxaInz+Ri
         pPuJMzbLkMT8oXTdpRUG+de+x2yWdFWdSpiJrPEyzwHqrWXcAXJUloUF8uIJJv6hIH0T
         UwSSBAdC0AvsrfoFUppl5RZUO+Dyf9Z/jRKIKfayBkH6XvM1z7ZXAi4ETA932ixbiiqt
         iJIZyK2BObr2iIj9rbw9dk7WZHLL4OdftNkXvWcuzGVNDnk5MhBfriEJFDULF7ghwFJD
         Woj61Y/DaYXawV/z9tMPBIi33H+A/lhIVLJ11fW73ZnDdXfaKgItInPcjcnLi8XSkuUy
         t+7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744413971; x=1745018771;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5GZyvI2XLRL6983WEyW7fk4u8vu6YYokKaErcKJZw8g=;
        b=BiRRrybqJUQINffl2GJqBfQVtLV6zO45EJB0BzMO7GjdFNUjobgnFwUp/DatH6nGJS
         S9QzQCkVgm2SaGD59gfodNuYwFGFFZbpjzgfFHrq4GyATou71009h4a6ivVhbQD67NMa
         0R85bIAqoP7M44qrxRPp2W2tEwU6gFJe4OcYMufcT/egmriRPrn+EdXj7GVkbRIFY3Sm
         HGxUHlCFOVV31RgFJUU1hBsUtEuccc0m78XLmMl5LPhcrer2Wt5lab6M4s8Lfr1R30ZU
         SFQIj2Id3dzr96NQLZbl7cbSfXGI2N7jT5K2IaOeAy0r3QAvBORp4Ng/7b1F8GB/ewIY
         XICQ==
X-Forwarded-Encrypted: i=1; AJvYcCUm7DoLJ6L1EzwLn0vGZn0g6wtRe2mZBbKCTrlKQF2hNhUAnlg5Ph5b/3gSgHGnw6WQt3ary9qRWM8e@vger.kernel.org
X-Gm-Message-State: AOJu0YwjcJwZSBHXynDtFqU0QdxSyNtwdEFwZS/CYXwTLatdVLPsjvt6
	Vvdu/CJX5h5jfMNlvihAIEZN6HbjTsBYsLLmNGp9fJ/rfOU4J6m0H3/mGWszDNw=
X-Gm-Gg: ASbGncsvhTA/zqAQM8JtNCOdotMkSC5PaNOU4j8TdBAetvQkzuvQRWgtN1M17GR8vTx
	vpkfcDsN1b5QpQd1hCOzQqnV2X2bXFkmp2xTLx74UvnAqsJDJLMXP/bgPxlYSVYWV/A1D6wRIsP
	CCazRRW+U0FtCh4UtTgvfgnbNZgrZSqxAQvj3MXXvv4j/5o3u/ZVO23kMZkJpF0YrpXEdBJtSY6
	0bxA4oF7GPlfzNp9V6XSAjoOSQriISfllXw6aFXDUlgWls7pliLNXCHJJgHbRN9sDsxalnUeUq4
	w+5oNBHltBUEB0Pge++P3IDyf6QE2kA9bhSxeHKjpL6kNfbRzC2Kw7WggKcjFsD4muevuwamWsx
	1UQ==
X-Google-Smtp-Source: AGHT+IGW7pFNc5nsIkwQxDBSYzjjR5YXgf6KeUTb67LI0heNBL6cMHzjIGL4Ij3lbZixsILkVxuEKg==
X-Received: by 2002:a05:6830:258a:b0:72a:e8b:a849 with SMTP id 46e09a7af769-72e863c35c8mr3394273a34.27.1744413971065;
        Fri, 11 Apr 2025 16:26:11 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72e73d8d3bbsm1128472a34.33.2025.04.11.16.26.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 16:26:10 -0700 (PDT)
Message-ID: <3a87627f-3210-4350-bfdc-0007de5671b7@baylibre.com>
Date: Fri, 11 Apr 2025 18:26:09 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 13/14] iio: adc: ad7768-1: add filter type and
 oversampling ratio attributes
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, marcelo.schmitt1@gmail.com,
 linus.walleij@linaro.org, brgl@bgdev.pl, lgirdwood@gmail.com,
 broonie@kernel.org, jonath4nns@gmail.com, Pop Paul <paul.pop@analog.com>
References: <cover.1744325346.git.Jonathan.Santos@analog.com>
 <e5ea27f88607d1cc12daecf310c18f71383a3bbe.1744325346.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <e5ea27f88607d1cc12daecf310c18f71383a3bbe.1744325346.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/11/25 10:58 AM, Jonathan Santos wrote:
> Separate filter type and decimation rate from the sampling frequency
> attribute. The new filter type attribute enables sinc3, sinc3+rej60
> and wideband filters, which were previously unavailable.
> 
> Previously, combining decimation and MCLK divider in the sampling
> frequency obscured performance trade-offs. Lower MCLK divider
> settings increase power usage, while lower decimation rates reduce
> precision by decreasing averaging. By creating an oversampling
> attribute, which controls the decimation, users gain finer control
> over performance.
> 
> The addition of those attributes allows a wider range of sampling
> frequencies and more access to the device features. Sampling frequency
> table is updated after every digital filter paramerter change.

s/paramerter/parameter/

> 
> Co-developed-by: Pop Paul <paul.pop@analog.com>
> Signed-off-by: Pop Paul <paul.pop@analog.com>
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---

The hardware designers sure didn't make this one easy for us. I'm very
impressed that you were able to write code that actually makes sense to me
without me having to read the data sheet 10 times. Nice work! :-)

A few minor things to fix, but otherwise...

Reviewed-by: David Lechner <dlechner@baylibre.com>

> -static const struct ad7768_clk_configuration ad7768_clk_config[] = {
> -	{ AD7768_MCLK_DIV_2, AD7768_DEC_RATE_8, 16,  AD7768_FAST_MODE },
> -	{ AD7768_MCLK_DIV_2, AD7768_DEC_RATE_16, 32,  AD7768_FAST_MODE },

Extra spaces should be removed.

> -	{ AD7768_MCLK_DIV_2, AD7768_DEC_RATE_32, 64, AD7768_FAST_MODE },
> -	{ AD7768_MCLK_DIV_2, AD7768_DEC_RATE_64, 128, AD7768_FAST_MODE },
> -	{ AD7768_MCLK_DIV_2, AD7768_DEC_RATE_128, 256, AD7768_FAST_MODE },
> -	{ AD7768_MCLK_DIV_4, AD7768_DEC_RATE_128, 512, AD7768_MED_MODE },
> -	{ AD7768_MCLK_DIV_4, AD7768_DEC_RATE_256, 1024, AD7768_MED_MODE },
> -	{ AD7768_MCLK_DIV_4, AD7768_DEC_RATE_512, 2048, AD7768_MED_MODE },
> -	{ AD7768_MCLK_DIV_4, AD7768_DEC_RATE_1024, 4096, AD7768_MED_MODE },
> -	{ AD7768_MCLK_DIV_8, AD7768_DEC_RATE_1024, 8192, AD7768_MED_MODE },
> -	{ AD7768_MCLK_DIV_16, AD7768_DEC_RATE_1024, 16384, AD7768_ECO_MODE },
> +static const int ad7768_dec_rate_values[8] = {
> +	8, 16, 32, 64, 128, 256, 512, 1024,
> +};

...

> +/*
> + * The AD7768-1 supports three primary filter types:
> + * Sinc5, Sinc3, and Wideband.
> + * However, the filter register values can also encode additional parameters
> + * such as decimation rates and 60Hz rejection. This utility function separates

Technically, this is an array, not a function.

> + * the filter type from these parameters.
> + */

...

> +static const struct iio_enum ad7768_flt_type_iio_enum = {
> +	.items = ad7768_filter_enum,
> +	.num_items = ARRAY_SIZE(ad7768_filter_enum),
> +	.set = ad7768_set_fil_type_attr,
> +	.get = ad7768_get_fil_type_attr,

Can we spell out filter here? It took me quite a while to figure out what "fil"
is.

> +};
> +
> +static struct iio_chan_spec_ext_info ad7768_ext_info[] = {
> +	IIO_ENUM("filter_type", IIO_SHARED_BY_ALL, &ad7768_flt_type_iio_enum),
> +	IIO_ENUM_AVAILABLE("filter_type", IIO_SHARED_BY_ALL, &ad7768_flt_type_iio_enum),

"flt" is a bit more obvious, but still would be nice to spell it out too.

> +	{ }
> +};
> +

