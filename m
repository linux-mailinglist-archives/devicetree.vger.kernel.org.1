Return-Path: <devicetree+bounces-141248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EEBA2027D
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 01:15:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 04B613A492C
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 00:15:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF13126ACD;
	Tue, 28 Jan 2025 00:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XEulo641"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D23E1EA6F
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 00:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738022920; cv=none; b=mCZvcQK+jiwEXtubeglIai4Dp6/nhlG1oPCsfWt2KAFzhvYh+MDrriphl98vk3pGi08miDHAxNC3KOIBAG4/pa0SVPNFWjQKrAKqh/JS3Xa1X0KtAK/e/gx849PmcmFPTVVgzMbLxMI9DreJbBC+nOQbVNRP66dq8UjhPrOMWtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738022920; c=relaxed/simple;
	bh=VDfCZNdJQ1F/h5J/7pRRLMpq5Y/QJQY2Qwmpng1K7Pg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NTISVwcuc7f6hj41UWfctIOa1XFEZItI+4Ghl94d6O81pSg8nMBeXARlCBqLRBDPaCzvT/oVnj7C0K9OX7o6Q8CU50Ttm8KGGuXVGAbjJ/agfSYCuvK5HnhQMdG0Ra/IyLnYfnUsCN3mf3GnZDZi+zuxJXU00CGDlhrQkuAm+r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XEulo641; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-71e15717a2dso2709808a34.3
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 16:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738022916; x=1738627716; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v2AtD2B4PvcFCPntB6dzsAFkLRpYqpJld4TMpheY3Yo=;
        b=XEulo641gbHz6o9/QO2v+jbMpDA3QSUe3G+v1Skletg7vo+c0xkf83kr4s5/fOFRp4
         l5kx5She8mk7xgSSCRm2QS2LYXD5hQyMvhS8h0bWyxpHHmlwNeT2qHtJTbJyrt52PUF+
         /bZ8aEToQTQuABYdRDPJV13nzmxyqiHDLGFoZfuTb9D6cLNKLZG0fyJlHSDSAikyBh4X
         RfHFiQobFBCuk/GripvIm6ykicEbAU2d6/yLGq9RHxJkUABncGHyHrxcAw+IYzSSOU0L
         qNDIjOMiqQzaFsmKPJIX84QLGs3vFSqOb2Yvv5UY5LXxAW9dBj/lqG8uUE7FnoANgU2W
         51Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738022916; x=1738627716;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v2AtD2B4PvcFCPntB6dzsAFkLRpYqpJld4TMpheY3Yo=;
        b=kyc3OT2rGfrvuj3Cvk1AZHmHFufy1n8t+El14Gi84OzufvJXwyvLHzmOWSWHQUfwAF
         +DFtNG5/jC4hrV5oBp2F1dJLvhoj3Pam93wDUJ2uZbleKMvcB2BuCbg8e2VjBSpDTOde
         vKiqUZ87/RTukiMhxu2bw/wWEvHpToUD2N90wH3sRcO7GvkrjVgUeXcxR7Bzd+ObtkfV
         4hV6ZLpBpCrin6r9WAAvovHWZEhWOAaNX6R64BfcZj0eM/EudC6lSMY+3Dy5lZvFjIC+
         VgH3/3y6tYoxDvB9Fdo8cA9kSjMjQwvYPB0BfDcTmjjFGygAa8q6kEWtgEAOEYbM9t2d
         VU+A==
X-Forwarded-Encrypted: i=1; AJvYcCVfcGHEw+IgwEdrzZWTBJEh+GL2cJifR3c6yWElhWOFVTJkLBHKf4f1a3yllE1p34yRT1CIsB9Xyx2e@vger.kernel.org
X-Gm-Message-State: AOJu0YxD/9vY5Jkkq9Mf2hs/yd+QA2FW2N7snWXQGxKCUItlvX78Ufua
	vID7CeEjr/Hjv25a/KD3Pz4bwVd1615KaByJIFGhhwqSrPZ6jauwh9LYYtYa7UaF9exFMZLXg+L
	u
X-Gm-Gg: ASbGncs4124JZ5GCNF6LzpXyylFwh6EXGTJwTn2sfx3mHsw4bdFEfuVFk3t7h1J1t6w
	XEjO8q0phpda7MQbNy+Y5WUvxtj5EY8R2d5rzRLXHxodywjB9fw+C3PjqLpsLXGqbFaoddZoPvL
	2UsUn8qSeyHKL+/E65JvJiNFt2vuREpQ1I/LxLewo+JlY7oATPt+W4/abqTfD9q8f5Ap16rH4KM
	LK/2dhkcwUQN8anj3HkmXR0hqc6SMFBOwPWwwdWclN7euH966c7X9DJOGkC10z8iKVc5tD9QD3T
	EoONbcCPbVqXPZt77jQs9RpkW7M7cNoxHkFqhQB9yg==
X-Google-Smtp-Source: AGHT+IFCVZHIrKgRkZ+0N3SCeOCOWcmA6aEX0aZun4ZDC3zdRGxNE6OKKfWvqY0ml5mevyeVzcU6wA==
X-Received: by 2002:a05:6830:2a86:b0:71d:fc52:1ab6 with SMTP id 46e09a7af769-7249db10bf2mr25946798a34.23.1738022916279;
        Mon, 27 Jan 2025 16:08:36 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-724ecda5014sm2616402a34.14.2025.01.27.16.08.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 16:08:35 -0800 (PST)
Message-ID: <f90874bb-f08f-437e-bc8b-d549b888ff76@baylibre.com>
Date: Mon, 27 Jan 2025 18:08:34 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 14/16] iio: adc: ad7768-1: add support for
 Synchronization over SPI
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonath4nns@gmail.com,
 marcelo.schmitt1@gmail.com
References: <cover.1737985435.git.Jonathan.Santos@analog.com>
 <2d3c69d92a9688f4a20bd6de70f694482501f61c.1737985435.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <2d3c69d92a9688f4a20bd6de70f694482501f61c.1737985435.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/27/25 9:14 AM, Jonathan Santos wrote:
> The synchronization method using GPIO requires the generated pulse to be
> truly synchronous with the base MCLK signal. When it is not possible to
> do that in hardware, the datasheet recommends using synchronization over
> SPI, where the generated pulse is already synchronous with MCLK. This
> requires the SYNC_OUT pin to be connected to SYNC_IN pin. In
> multidevices setup, the SYNC_OUT from other devices can be used as
> synchronization source.
> 
> Use trigger-sources property to enable device synchronization over SPI
> for single and multiple devices.
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---
> v2 Changes:
> * Synchronization via SPI is enabled when the Sync GPIO is not defined.
> * now trigger-sources property indicates the synchronization provider or
>   main device. The main device will be used to drive the SYNC_IN when
>   requested (via GPIO or SPI).
> ---
>  drivers/iio/adc/ad7768-1.c | 81 ++++++++++++++++++++++++++++++++++----
>  1 file changed, 73 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/iio/adc/ad7768-1.c b/drivers/iio/adc/ad7768-1.c
> index 7686556c7808..01ccbe0aa708 100644
> --- a/drivers/iio/adc/ad7768-1.c
> +++ b/drivers/iio/adc/ad7768-1.c
> @@ -193,6 +193,7 @@ static const struct iio_chan_spec ad7768_channels[] = {
>  
>  struct ad7768_state {
>  	struct spi_device *spi;
> +	struct spi_device *sync_source_spi;
>  	struct regmap *regmap;
>  	struct regulator *vref;
>  	struct mutex lock;
> @@ -206,6 +207,7 @@ struct ad7768_state {
>  	struct iio_trigger *trig;
>  	struct gpio_desc *gpio_sync_in;
>  	struct gpio_desc *gpio_reset;
> +	bool en_spi_sync;
>  	const char *labels[ARRAY_SIZE(ad7768_channels)];
>  	/*
>  	 * DMA (thus cache coherency maintenance) may require the
> @@ -264,6 +266,21 @@ static int ad7768_spi_reg_write(void *context,
>  	return spi_write(st->spi, st->data.d8, 2);
>  }
>  
> +static int ad7768_send_sync_pulse(struct ad7768_state *st)
> +{
> +	if (st->en_spi_sync) {
> +		st->data.d8[0] = AD7768_WR_FLAG_MSK(AD7768_REG_SYNC_RESET);
> +		st->data.d8[1] = 0x00;
> +
> +		return spi_write(st->sync_source_spi, st->data.d8, 2);
> +	} else if (st->gpio_sync_in) {

Redundant else after return.

> +		gpiod_set_value_cansleep(st->gpio_sync_in, 1);
> +		gpiod_set_value_cansleep(st->gpio_sync_in, 0);
> +	}
> +
> +	return 0;
> +}
> +
>  static int ad7768_set_mode(struct ad7768_state *st,
>  			   enum ad7768_conv_mode mode)
>  {
> @@ -348,10 +365,7 @@ static int ad7768_set_dig_fil(struct ad7768_state *st,
>  		return ret;
>  
>  	/* A sync-in pulse is required every time the filter dec rate changes */
> -	gpiod_set_value(st->gpio_sync_in, 1);
> -	gpiod_set_value(st->gpio_sync_in, 0);
> -
> -	return 0;
> +	return ad7768_send_sync_pulse(st);
>  }
>  
>  static int ad7768_gpio_direction_input(struct gpio_chip *chip, unsigned int offset)
> @@ -638,6 +652,58 @@ static const struct iio_info ad7768_info = {
>  	.debugfs_reg_access = &ad7768_reg_access,
>  };
>  
> +static int ad7768_parse_trigger_sources(struct device *dev, struct ad7768_state *st)
> +{
> +	struct fwnode_reference_args args;
> +	int ret;
> +
> +	/*
> +	 * The AD7768-1 allows two primary methods for driving the SYNC_IN pin to synchronize
> +	 * one or more devices:
> +	 * 1. Using a GPIO to directly drive the SYNC_IN pin.
> +	 * 2. Using a SPI command, where the SYNC_OUT pin generates a synchronization pulse
> +	 *    that loops back to the SYNC_IN pin.
> +	 *
> +	 * In multi-device setups, the SYNC_IN pin can also be driven by the SYNC_OUT pin of
> +	 * another device. To support this, we use the "trigger-source" property to get a
> +	 * reference to the "main" device responsible for generating the synchronization pulse.
> +	 * In a single-device setup, the "trigger-source" property should reference the device's
> +	 * own node.
> +	 */
> +	ret = fwnode_property_get_reference_args(dev_fwnode(dev), "trigger-sources",
> +						 "#trigger-source-cells", 0, 0, &args);

The trigger-sources property is optional, so we should have a special case for
ret == -EINVAL here. Otherwise existing users that use the gpio binding will
fail here.

> +	if (ret) {
> +		dev_err(dev, "Failed to get trigger-sources reference: %d\n", ret);
> +		return ret;

		return dev_err_probe(...);

> +	}
> +
> +	st->gpio_sync_in = devm_gpiod_get_optional(args.fwnode->dev, "adi,sync-in",
> +						   GPIOD_OUT_LOW);

I would put this in the -EINVAL special case mentioned above, then we don't
nee to use the _optional variant.

> +	if (IS_ERR(st->gpio_sync_in))
> +		return PTR_ERR(st->gpio_sync_in);

This leaks args.fwnode reference on return (but would be fixed if making the
above suggested change).

> +
> +	/*
> +	 * If the SYNC_IN GPIO is not defined, fall back to synchronization over SPI.
> +	 * Use the trigger-source reference to identify the main SPI device for generating
> +	 * the synchronization pulse.
> +	 */
> +	if (!st->gpio_sync_in) {
> +		st->sync_source_spi = to_spi_device(args.fwnode->dev);

This seems unsafe. The DT could be pointing to something other than a SPI device.
to_spi_device() calls container_of() so would cause undefined behavior if dev
was something else. Also, even if it is a spi device, we don't know what state
it is in and if it is safe to use it.

I think it would be sufficient for now to just check that args.fw_node is the
the same one as this SPI device since that is the supported case. 

> +		if (!st->sync_source_spi) {
> +			dev_err(dev,
> +				"Synchronization setup failed. GPIO is undefined and trigger-source reference is invalid\n");
> +			return -EINVAL;

Leaks args.fwnode on return. Also, dev_err_probe().

> +		}
> +
> +		st->en_spi_sync = true;
> +	}
> +
> +	/* Release the fwnode reference after use */
> +	fwnode_handle_put(args.fwnode);
> +
> +	return 0;
> +}
> +
>  static int ad7768_setup(struct iio_dev *indio_dev)
>  {
>  	struct ad7768_state *st = iio_priv(indio_dev);
> @@ -668,10 +734,9 @@ static int ad7768_setup(struct iio_dev *indio_dev)
>  			return ret;
>  	}
>  
> -	st->gpio_sync_in = devm_gpiod_get(&st->spi->dev, "adi,sync-in",
> -					  GPIOD_OUT_LOW);
> -	if (IS_ERR(st->gpio_sync_in))
> -		return PTR_ERR(st->gpio_sync_in);
> +	ret = ad7768_parse_trigger_sources(&st->spi->dev, st);
> +	if (ret)
> +		return ret;
>  
>  	/* Only create a Chip GPIO if flagged for it */
>  	if (device_property_read_bool(&st->spi->dev, "gpio-controller")) {


