Return-Path: <devicetree+bounces-136347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DA0A04DD5
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 00:49:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 401AA162577
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 23:49:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C68E1F37C0;
	Tue,  7 Jan 2025 23:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xnG8v/TO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202AF137C2A
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 23:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736293748; cv=none; b=XpIW6eXsVtVbLyH0JN5q3OCFSd5fZzZzlrQtxT6Ia2rY9IR0cKsLZ97Blf5xTSEMZ9uyNEWM7PIW9D4drHJDlofBH73+6uvYvYxyhYXzmYUlbNrF3YswCm9ZvLqqWf39EJou+s9QQ7HqSu0eIHErzQnD/zTbxsb5CSpgvOf7Qb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736293748; c=relaxed/simple;
	bh=mvHARXc3GDUGNhpz8rTz4zHERBmLO2sCudSA/NxaUQ0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uA7ei2j+pkPx6wzVHaJuAtrzfNxueuOOsgeoTtxqPVqeKb1gQn5On+W2jqIzjojW8cszz+hTtaCW3qjKGbSTbL9DlJX4g8F/MRvvkC6GC6uCG4JfS45A8yL8q3F0cJnfpGoCWBSwsqSqWthiNe2xGBm6/yfZ/IClXXEHN/9tT7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xnG8v/TO; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-71e1d7130a5so7937444a34.0
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 15:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736293746; x=1736898546; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3qmhz9rXGJRvv4TjmEevXNY2EST1xicauOHa37fPV2o=;
        b=xnG8v/TOuoil4jiTGRrdGoY69UQXd4qGAYZ8LHfVGVeG7+w9eo3TC9ZJzdaVuv6lqH
         ojn9JaDzxq2xn5dHoCwJ8y0fJHJNJEySlYw8lv8BBTaQ2krk2Zgj5ZU65OkqI/zdgLMS
         gDj5w7c6l9AL83qwI79zutkmw6sO+8zD3JshgIaHEPjcwf6+Rcm1S14PS+v2F97fC1l7
         NJ8qa9cgVIiRIqV/J9hz3f8RfP47A4VJm46xuvRvKMSczfDbdW+gFJn8QrNA1JktPzDt
         qReQhFaGINHeP6pYFg6e0Uk0xJRa3IZNNu/VlA47qA2kS3P7iWMY9rw5j6RD2s8DP5eg
         ZCnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736293746; x=1736898546;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3qmhz9rXGJRvv4TjmEevXNY2EST1xicauOHa37fPV2o=;
        b=LigKEqGPlvon8AqWJiq16RH5gfFEKEBsHgwhs2VKblhoVZrK2oP862yjKOPbHla6VV
         1qaUvCEdvvZXr4v+BHVcjOJBNFmFeUp29lGViYgf1BYkyDBHSOJoFbC8yOpBPfMRJG9b
         qAaiozvh5VrNb6toat8mw1tG8pcyvZK0Ebf/7U4ggxSznBpYoJyEh0Dq5STUQA2gx3Xk
         gY1ja0Y1Om5sakhsS1GUUZJsiVRpQR6RkzsOTr+89EFpSIsGK5+VI+cTUFPnCGUc97/o
         +oTEr15HFwJDaKVcZPosn2yi5CPXhSGLriO17z5NzS9jc3JgjwmJIqTpCpI881ayzg6+
         Dtrg==
X-Forwarded-Encrypted: i=1; AJvYcCUuOqbf+apT2uCs+1Ni2wwr+bR2Q5F/KXRhWuVD/zB5GkBUrG/b43PsBhNbjBFWJVwdCEwiU1IT9PXa@vger.kernel.org
X-Gm-Message-State: AOJu0YxOe73sPCROXQtISccU1NYzTk8vkQKeCNfQxoaH88ayzCTRg3Ca
	vN9pKXegVN1tut/hB1jXGj2APkoLkaZ1zD7Daxhhsi/t221PTZ7sPS27E/m9c9k=
X-Gm-Gg: ASbGncvNffqAB0ka/RCgtCZFbJuYO51D0t64JL0D0mwMJmFHH5hWwMNdUzRTMLjNVWg
	8kxLu+svmoyi/lLGhb1u8gaIcrqLu0zJu9OwVlOdhG9BiDOG1x4rLzBPxe3j3NI9qGVJtup1ge+
	zD9C/n7m6On9uu+oQ4qs8exvxxBIjslyq1Fn2NthSceA+A/6cTA7xWYiiJQAvEUoBG/SnHhbUJ3
	8tGxPTDfQHo7Lt2SkYjArTPWEjHWNXyUomN5qmyGnG6wuzFP9ivvrTOrl5BsL6P6xSRIhvpdGjw
	h8tKfTXnovEg2kuYSQ==
X-Google-Smtp-Source: AGHT+IGhiuxK73k8+Xg6kLGz1fPBR7ULZkj3SANDyA04PnNN9nhkAKZmu77LCGftZK5qFB1vEWr/2Q==
X-Received: by 2002:a05:6830:2b0c:b0:71e:1aef:72b5 with SMTP id 46e09a7af769-721e2f248dfmr376628a34.27.1736293746268;
        Tue, 07 Jan 2025 15:49:06 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5f4db36fc94sm9951751eaf.9.2025.01.07.15.49.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 15:49:04 -0800 (PST)
Message-ID: <111f571d-1d88-42f7-b9a5-4b1cb328e26b@baylibre.com>
Date: Tue, 7 Jan 2025 17:49:03 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 13/15] iio: adc: ad7768-1: add multiple scan types to
 support 16-bits mode
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 marcelo.schmitt1@gmail.com
References: <cover.1736201898.git.Jonathan.Santos@analog.com>
 <170c5ca1b6c45b2114f248d9085588572d6269b4.1736201898.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <170c5ca1b6c45b2114f248d9085588572d6269b4.1736201898.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/7/25 9:26 AM, Jonathan Santos wrote:
> When the device is configured to Sinc5 filter and decimation x8,
> output data is reduced to 16-bits in order to support 1 MHz of
> sampling frequency due to clock limitation.

We aren't going to get a 1 MHz sample rate without SPI offload support so maybe
we should save this patch until then?

In this patch, we are still reading 24-bits per sample, so we aren't really
getting any benefit. It is probably fine for now to leave it as 24-bit even if
the last 8 bits are all 0 or just noise.

Also, the datasheet says:

	this path allows viewing of wider bandwidth; however, it is quantization
	noise limited so that output data is reduced to 16 bits

So this doesn't actually seem related to higher sample rates. There is a CONVLEN
bit in the INTERFACE_FORMAT register that globally reduces the output size to
16-bit, which I suspect would be what we will need for achieving the highest
sample rate when we add SPI offload support.

> 
> Use multiple scan types feature to enable the driver to switch
> scan type in runtime, making possible to support both 24-bit and
> 16-bit resolution.
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---
>  drivers/iio/adc/ad7768-1.c | 65 ++++++++++++++++++++++++++++++++------
>  1 file changed, 56 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/iio/adc/ad7768-1.c b/drivers/iio/adc/ad7768-1.c
> index 9741a6d47942..5e4e7d387f9a 100644
> --- a/drivers/iio/adc/ad7768-1.c
> +++ b/drivers/iio/adc/ad7768-1.c
> @@ -134,6 +134,11 @@ struct ad7768_clk_configuration {
>  	enum ad7768_pwrmode pwrmode;
>  };
>  
> +enum ad7768_scan_type {
> +	AD7768_SCAN_TYPE_NORMAL,
> +	AD7768_SCAN_TYPE_HIGH_SPEED,
> +};
> +
>  static const char * const ad7768_vcm_modes[] = {
>  	"(AVDD1-AVSS)/2",
>  	"2V5",
> @@ -145,6 +150,10 @@ static const char * const ad7768_vcm_modes[] = {
>  	"OFF",
>  };
>  
> +static const int ad7768_mclk_div_rates[4] = {
> +	16, 8, 4, 2,
> +};
> +
>  static const struct ad7768_clk_configuration ad7768_clk_config[] = {
>  	{ AD7768_MCLK_DIV_2, AD7768_DEC_RATE_8, 16,  AD7768_FAST_MODE },
>  	{ AD7768_MCLK_DIV_2, AD7768_DEC_RATE_16, 32,  AD7768_FAST_MODE },
> @@ -159,6 +168,21 @@ static const struct ad7768_clk_configuration ad7768_clk_config[] = {
>  	{ AD7768_MCLK_DIV_16, AD7768_DEC_RATE_1024, 16384, AD7768_ECO_MODE },
>  };
>  
> +static const struct iio_scan_type ad7768_scan_type[] = {
> +	[AD7768_SCAN_TYPE_NORMAL] = {
> +		.sign = 's',
> +		.realbits = 24,
> +		.storagebits = 32,

What happened to .shift = 8, ? If there is a reason for removing it, please add
that to the commit description.

> +		.endianness = IIO_BE,
> +	},
> +	[AD7768_SCAN_TYPE_HIGH_SPEED] = {
> +		.sign = 's',
> +		.realbits = 16,
> +		.storagebits = 32,

I guess it doesn't matter much since we are reading one sample at a time, but
I would expect storagebits to be 16 instead of 32. Or if it really needs to be
32, does it need shift = 16?

> +		.endianness = IIO_BE,
> +	},
> +};
> +
>  static int ad7768_get_vcm(struct iio_dev *dev, const struct iio_chan_spec *chan);
>  static int ad7768_set_vcm(struct iio_dev *dev, const struct iio_chan_spec *chan,
>  			  unsigned int mode);

...

> @@ -308,6 +329,15 @@ static int ad7768_scan_direct(struct iio_dev *indio_dev)
>  	ret = ad7768_spi_reg_read(st, AD7768_REG_ADC_DATA, &readval, 3);
>  	if (ret < 0)
>  		return ret;
> +
> +	/*
> +	 * When the decimation rate is set to x8, the ADC data precision is reduced
> +	 * from 24 bits to 16 bits. Since the AD7768_REG_ADC_DATA register provides
> +	 * 24-bit data, the precision is reduced by right-shifting the read value
> +	 * by 8 bits.
> +	 */
> +	if (st->dec_rate == 8)
> +		readval = readval >> 8;

Why not change size of ad7768_spi_reg_read() instead of reading 3 bytes and
throwing one away?

>  	/*
>  	 * Any SPI configuration of the AD7768-1 can only be
>  	 * performed in continuous conversion mode.

