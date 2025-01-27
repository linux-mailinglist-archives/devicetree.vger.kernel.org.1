Return-Path: <devicetree+bounces-141246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2211BA201DD
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 00:48:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 53D363A6105
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 23:47:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1387B1DF98E;
	Mon, 27 Jan 2025 23:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="eijv0JFS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBCE51DE8B6
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 23:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738021678; cv=none; b=o4kgzOlAW/22I8JlpQceHfOaOlFWJYUvdYieAxoQn0onXQbb0DfwvEZ03DadermIftDU5J70857v2bIBNvTDyr+RdtqE835zTOi5Y9wcJAcooBQZbZ/oP+vtLdeCg0aYQGP3iURaugCzGIVGY/O8E1q3tLQafKlKDpHaevY3E4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738021678; c=relaxed/simple;
	bh=ZhTim9zucw235FoWB0yKshnJisPkmKNGRB7FZmrJi8U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PzOEmK5DnfNUrr9xQ7f+JWhJzVIGvDlgvKBJsHr8o9e1smg07Z1kbssZR6nVY1GXgjFclFEe9DzgoXyBnwyPlpYnD1rdW7z1iwG5kuxtca5Nz3bsgvH3NkIDQSU90pH4Z868z4BDczmXYEdzmqU5o4YyNdMpYcaXuZK2U61uuXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=eijv0JFS; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-29fb5257e05so1583247fac.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 15:47:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738021674; x=1738626474; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zj9pcMMVgp4HQXKodFRNu0/WkE6xV+1IDSiA1yELFNg=;
        b=eijv0JFSzq3H5eSKAC4P2Holwz1lMi0J9GLOCL5jeAHw3etRFXvj0L/mgzjc3hvVaJ
         ToA34tM/BFhI3N89l4eSI9ndzEsvWoCx8Qmxrudo5saRWsBoF1HSfuHyGUNuORktcEHY
         8CUrvedkhqWq2bhcHidlWHaYtClnaokC/kNi5lo+tJfvadyBu2R7fxHNSlGnrMuUwwt/
         H906C4c++BGW0cdAQRSztjE1hj2YVtd7BzfGy3OhOJICpjeuTlItWngbFzWF33FunTxU
         RMev6l8F9lqwGRW9xxcp+sCJ0LPd1qOMzC5fmWO3A9+6EM2wggXGjFaKCE9jx8oBdpjL
         7VGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738021674; x=1738626474;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zj9pcMMVgp4HQXKodFRNu0/WkE6xV+1IDSiA1yELFNg=;
        b=m7equvh2lvwj7AZ8amBx0R0KvwhC11TTqoLLQmOK9lSxqMLZul3EmhydXBkTOxSYAm
         hKnoAjcBt9uAt01ZMykImifPpZuWMkQCiHCZaiDezj28GJxzknZhUNlLG6wSaUYNhvgb
         XSK4rwBNpynJ1Vz5TccmVHYQ7IN0Qh9KgUqOdjCG5sVHwdDNZ5PGCHUQ4QEwVLSGTOcs
         wGz0ZyLqhev26NXPBmAQJWWa/zzrKjNOceSE1L9lDRTKxdY/StbOf9n1jgTqVQXh4DXS
         ROk3lNieJjmrcdxX56+3kltWPzik695VxHlXV4WqXQ/yb45Y4GF58pMdYuLtkSKK/mgT
         sFOQ==
X-Forwarded-Encrypted: i=1; AJvYcCU1yllnM20GphF9oNuo2k//ypxzs3WOH1/P5KGBc5rK7R9VLOWBBaRtwb6aPy8CKOqqfszqVB3FIRuH@vger.kernel.org
X-Gm-Message-State: AOJu0YwodBd18g5gssrR6goiHiz+jfRqYQ9hzCzAYyFOAnr0cMetH978
	ZLEcFrHcrJR81XxiH6HRf5k5ZEUg7DbI4K46Fc1xU+Xh34lfqYTnrxxlthPrev4=
X-Gm-Gg: ASbGncuxugBuTdZUKE/lEfZywGUzFf2a5X/t5sHNByg5iwXOPUbAEaEg5dd+cesxZXm
	qFH+CS9noJEpWJNu68VY7cy+vtb7G3zctCXoRQtUe8UUj+9yRzshF9qpJGW3U5odXPs65NLAn2B
	+t3dfog7qJHhZ4hZa1xQPSd6SvimZdPHCNIRTUmsgoWdKbe5r8N6kBOrSxGl4obooTun2ohUUzV
	aZ9HaCTSTGBU8FwkYb58gDXq6lUAY3b/aPEoggGtGeIklhszGW8cK9/fq1gG7q4WI8jLCwMtiZH
	10ma7cuqwi8Cmfy+90G9shFePOacZ6weARvA3j5WHdCDlkyQAZWP
X-Google-Smtp-Source: AGHT+IF/BjQ2vfcU7AR2KFWOh60J8qCWDJIXaHZ5HGLcMJiuX5mst+T96QDPq/tWpXq+LexE1xiBAQ==
X-Received: by 2002:a05:6871:2281:b0:29e:2695:5214 with SMTP id 586e51a60fabf-2b1c0c54d73mr22519741fac.25.1738021673942;
        Mon, 27 Jan 2025 15:47:53 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2b28f0facaesm3055861fac.1.2025.01.27.15.47.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 15:47:52 -0800 (PST)
Message-ID: <e6591d04-bbe6-4bde-a429-a4e6fc7abd9c@baylibre.com>
Date: Mon, 27 Jan 2025 17:47:51 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 13/16] iio: adc: ad7768-1: add multiple scan types to
 support 16-bits mode
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonath4nns@gmail.com,
 marcelo.schmitt1@gmail.com
References: <cover.1737985435.git.Jonathan.Santos@analog.com>
 <8bff69133cddd7e6be714781ea7655a427a6c32e.1737985435.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <8bff69133cddd7e6be714781ea7655a427a6c32e.1737985435.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/27/25 9:13 AM, Jonathan Santos wrote:
> When the device is configured to Sinc5 filter and decimation x8,
> output data is reduced to 16-bits in order to support 1 MHz of
> sampling frequency due to clock limitation.
> 
> Use multiple scan types feature to enable the driver to switch
> scan type in runtime, making possible to support both 24-bit and
> 16-bit resolution.
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---
> v2 Changes:
> * Included the ".shift" value back to scan_type.
> * Changed the number of bytes from regmap_read instead of shifting the 
>   ADC sample value when the word size is lower (16-bits).
> ---
>  drivers/iio/adc/ad7768-1.c | 73 ++++++++++++++++++++++++++++++++------
>  1 file changed, 62 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/iio/adc/ad7768-1.c b/drivers/iio/adc/ad7768-1.c
> index e3ea078e6ec4..7686556c7808 100644
> --- a/drivers/iio/adc/ad7768-1.c
> +++ b/drivers/iio/adc/ad7768-1.c
> @@ -136,6 +136,15 @@ struct ad7768_clk_configuration {
>  	enum ad7768_pwrmode pwrmode;
>  };
>  
> +enum ad7768_scan_type {
> +	AD7768_SCAN_TYPE_NORMAL,
> +	AD7768_SCAN_TYPE_HIGH_SPEED,
> +};
> +
> +static const int ad7768_mclk_div_rates[4] = {
> +	16, 8, 4, 2,
> +};
> +
>  static const struct ad7768_clk_configuration ad7768_clk_config[] = {
>  	{ AD7768_MCLK_DIV_2, AD7768_DEC_RATE_8, 16,  AD7768_FAST_MODE },
>  	{ AD7768_MCLK_DIV_2, AD7768_DEC_RATE_16, 32,  AD7768_FAST_MODE },
> @@ -150,6 +159,23 @@ static const struct ad7768_clk_configuration ad7768_clk_config[] = {
>  	{ AD7768_MCLK_DIV_16, AD7768_DEC_RATE_1024, 16384, AD7768_ECO_MODE },
>  };
>  
> +static const struct iio_scan_type ad7768_scan_type[] = {
> +	[AD7768_SCAN_TYPE_NORMAL] = {
> +		.sign = 's',
> +		.realbits = 24,
> +		.storagebits = 32,
> +		.shift = 8,
> +		.endianness = IIO_BE,
> +	},
> +	[AD7768_SCAN_TYPE_HIGH_SPEED] = {
> +		.sign = 's',
> +		.realbits = 16,
> +		.storagebits = 32,

Why not make storagebits 16 here?

> +		.shift = 16,
> +		.endianness = IIO_BE,
> +	},
> +};
> +


