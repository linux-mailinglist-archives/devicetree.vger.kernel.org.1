Return-Path: <devicetree+bounces-141244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC63A2015B
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 00:07:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B75167A2247
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 23:07:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92B541DC998;
	Mon, 27 Jan 2025 23:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="r7M637yJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B461DB153
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 23:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738019243; cv=none; b=im9pzy5zvTLI2vRuB8XrgtoMxirL1krv4p0eFCu8I9ucRQTbd8AeQM9GR3yjj7sdR6lWfZf3NjL3CBEhZNWMeGu8uzR67ftGo7QluXdipaCfFE3KMhfa4y7jH2IcIO8nlAJyF1bsEDDrEnbls9sjzYPfKczucpXbWuaUTSBWnSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738019243; c=relaxed/simple;
	bh=o9tsH6CfmeiSuLE52guakp1ssVFkwTXCQ+zXdETv8XU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U2630UaxCRiUcydyZv3TYdOw9LwnEFvyghavOFpaijoFe3B0e0NmBCvUzYUrXKN7AG32TItvRSBm+WUKMNy1nJOi4vRdpN5+cmPwJKnrWizxkhsAhMS7YKBReGbd/hNH+oX3KNpz+DCroxys+WxfxF8u3fCkTmw6ku9CGVjCNQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=r7M637yJ; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-71e287897ceso3708839a34.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 15:07:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738019240; x=1738624040; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mnqjvIzFfgStnZbi1lZglYo2dg9c4j2W7FV2LvZlTjE=;
        b=r7M637yJ8A56Ft4zK+L7IeHcY/N1Iait1HJ48DESpvvqKx/bs43SgZcuEkJR+w6y0D
         oAwNHx+nVqjWQ9YqjSDaf1/NBKCwKPlYF4x0+XayVibjyxIYSLMvwXMWrpX4C3bi0d7x
         shlQkagCMVx0jVEwUMcyVS6ogEJXWeI5vNs6amSX8+8nuqIAaxLK9ubeyUVhdltYERkB
         /I8JH8gyB+l/UUEWMrrGd1qD5NSfk9/tOXHbT7su4eX8tXUHCCK4qJ81UL0pioYXZqiN
         e3obloSaj3hozNXeM96+BW6K9i5sD9UfDUReYM6SVTA0kxYKRL/2EL9D8egK+h1ULqFq
         jDvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738019240; x=1738624040;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mnqjvIzFfgStnZbi1lZglYo2dg9c4j2W7FV2LvZlTjE=;
        b=WGcsxDFUnkMwKUHSQu7a6LZe1glZMDMuDa/uD7kTWaB7Zc+ZcqyWnwNOnDboug22cf
         +CPJCeBE6PZs6IGY/s/kEovtpDcKwJltDbOTU0+PNCCHtugh/7iQWygxOiKt2WYqKJSD
         wDY8w/0CFGhnBj8GDl4Htpmzfa3TvKy6Aqtl7nNnK6PSyjqTqEemeWi7H86afE/kvZvh
         gUfT6f/URzzszztCleDCHweqlDzSom59JwTla4QLpFcWeTGKsUbtd7EB6rW7dhbNFi19
         ZXCX3MZaDRD8PdHaQ6rarcV8fZJq+u0vY+6EsssXDvOYOojuFYmf2kWi4wnc7M86Gb9U
         Ma+w==
X-Forwarded-Encrypted: i=1; AJvYcCWvuNBuxfymTnGmj9bfgRsFRDsddFyX08ijq+smLSVfPkwyhqe+QOAw8IEPLi4PbCJhhAuyK9xBJsaT@vger.kernel.org
X-Gm-Message-State: AOJu0YyaRe79RGW8LPDJ5OwYncrSmkAbdd/rGSJvApLdHq1u4h1HPyEX
	aT40XwW0mpaQ9BK8tzjXdVw8BbBBSzdVvagF5r1LkLPDumHJwJ8LuR6bl9JisEA=
X-Gm-Gg: ASbGncuefBBbxDGp2zmU470wukBDDmu8HlWlrpTLUPWzvrArwi+KOT70Be7bTG2UOsY
	DiR2uUKoKRkUv2ZBxMcn4qJRsncvpe5b2yqueURuPhYa+S0AmqpHAhjB9M7CWVrDxyKmJSS0BS8
	n7IIgTSeZWcUaMG/9SGAcYPs1GX0JoUeXp11dVWuua5K5WNV8vtjxfwPaRyDBMO0IFIE+OEMoQ1
	IUuJcBvo/ufPEp9Pp0qaqdJIafPg/dd1ktZX3t8Jz4SBc71Xj6zOlXEoVYW2+/HcAb5wRPP5XDY
	j0+OxDVGH+FecBZyRfXXuUL6WBp98oQgnLv4cZQv9mMWIVurlNLZ
X-Google-Smtp-Source: AGHT+IG8O73I7kNXA6j0OTIyP9niHkyn9WgPIYrS8Am8MYUYN4k2aZZMfbKgFXrOzadhQKpARBMzuQ==
X-Received: by 2002:a9d:7649:0:b0:724:f4a9:2cff with SMTP id 46e09a7af769-724f4a92d74mr6459868a34.25.1738019240273;
        Mon, 27 Jan 2025 15:07:20 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-724ecf9cfaesm2557484a34.63.2025.01.27.15.07.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 15:07:18 -0800 (PST)
Message-ID: <be9eaa14-c486-40d8-beb5-bbc4453b9788@baylibre.com>
Date: Mon, 27 Jan 2025 17:07:16 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/16] iio: adc: ad7768-1: Add VCM output support
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Sergiu Cuciurean <sergiu.cuciurean@analog.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, marcelo.schmitt@analog.com, jic23@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jonath4nns@gmail.com, marcelo.schmitt1@gmail.com
References: <cover.1737985435.git.Jonathan.Santos@analog.com>
 <e8d7d5d718dc377787e2d3f1bacf2217e50726a4.1737985435.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <e8d7d5d718dc377787e2d3f1bacf2217e50726a4.1737985435.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/27/25 9:13 AM, Jonathan Santos wrote:
> From: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
> 
> The VCM output voltage can be used as a common-mode voltage within the
> amplifier preconditioning circuits external to the AD7768-1.
> 
> This change allows the user to configure VCM output trough a devicetree
> attribute.
> 
> Co-developed-by: Jonathan Santos <Jonathan.Santos@analog.com>
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> Signed-off-by: Sergiu Cuciurean <sergiu.cuciurean@analog.com>

Correct order according to [1]:

Signed-off-by: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
Co-developed-by: Jonathan Santos <Jonathan.Santos@analog.com>
Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>


[1]: https://www.kernel.org/doc/html/latest/process/submitting-patches.html#when-to-use-acked-by-cc-and-co-developed-by

> ---
> v2 Changes:
> * VCM output support is now defined by a devicetree property, instead of 
>   and IIO attribute.
> ---
>  drivers/iio/adc/ad7768-1.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/iio/adc/ad7768-1.c b/drivers/iio/adc/ad7768-1.c
> index 8487b9a06609..c540583808c2 100644
> --- a/drivers/iio/adc/ad7768-1.c
> +++ b/drivers/iio/adc/ad7768-1.c
> @@ -24,6 +24,8 @@
>  #include <linux/iio/triggered_buffer.h>
>  #include <linux/iio/trigger_consumer.h>
>  
> +#include <dt-bindings/iio/adc/adi,ad7768-1.h>
> +
>  /* AD7768 registers definition */
>  #define AD7768_REG_CHIP_TYPE		0x3
>  #define AD7768_REG_PROD_ID_L		0x4
> @@ -347,6 +349,11 @@ static int ad7768_set_freq(struct ad7768_state *st,
>  	return 0;
>  }
>  
> +static int ad7768_set_vcm_output(struct ad7768_state *st, unsigned int mode)
> +{

Is setting CHOP_FREQUENCY bit to 0 intentional here? Could use a comment or
use regmap_update_bits() + FIELD_PREP() instead.

> +	return regmap_write(st->regmap, AD7768_REG_ANALOG2, mode);
> +}

IMHO, one-line helper function just makes more code to read, so would be
simpler without it.

> +
>  static ssize_t ad7768_sampling_freq_avail(struct device *dev,
>  					  struct device_attribute *attr,
>  					  char *buf)
> @@ -628,6 +635,7 @@ static int ad7768_probe(struct spi_device *spi)
>  {
>  	struct ad7768_state *st;
>  	struct iio_dev *indio_dev;
> +	u32 val;
>  	int ret;
>  
>  	indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
> @@ -688,6 +696,18 @@ static int ad7768_probe(struct spi_device *spi)
>  	indio_dev->info = &ad7768_info;
>  	indio_dev->modes = INDIO_DIRECT_MODE;
>  
> +	ret = device_property_read_u32(&spi->dev, "adi,vcm-output", &val);
> +	if (!ret) {
> +		if (val > AD7768_VCM_OUTPUT_OFF) {
> +			dev_err(&spi->dev, "Invalid VCM output value\n");
> +			return -EINVAL;

			return dev_err_probe(...);

> +		}
> +
> +		ret = ad7768_set_vcm_output(st, val);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	ret = ad7768_setup(st);
>  	if (ret < 0) {
>  		dev_err(&spi->dev, "AD7768 setup failed\n");


