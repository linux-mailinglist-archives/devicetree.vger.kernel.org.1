Return-Path: <devicetree+bounces-172558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCC6AA5480
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 21:07:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E3EC716F525
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 19:07:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AED19266F01;
	Wed, 30 Apr 2025 19:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="a+DTulzi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AA115C140
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 19:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746040047; cv=none; b=ajlN3WHnwUkkrgkhkiuoWTOoUZD3vvQG1vC4KLmEcpJjUg4bw6Lh4NcOaYW9GwiKk9kOYVHZQBhMxnyTGPSmkaKkiarXxRUlZD8UqzX4j2oVN3yybEJICx6n+q8q2w6c6HtqFxBDm2sTNbfSlQScKvK0fqei1AzIcxx7OP/Mgx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746040047; c=relaxed/simple;
	bh=Mtlu1YXyNBwG2h3ygr9dqrRxqm2wdhJyl6YDuhQ3wR4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RmX8UWPz3XZVkgZN0/A0boMtXSwGDTGyIC/DvmwCng+uF0Mf97Okopv1gs7D5z0j06Vwnu/njLdU0j9dF5zO3S7mhJJfpZ9c+d5mgNyXuUDP7DiOSAibwfIMrqDHgsqXqnRAbHit4Inrser2WeqW1OA3DzLhtGDp7TxIFYO+rzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=a+DTulzi; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3f6dccdcadaso186309b6e.2
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 12:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746040044; x=1746644844; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=80mRLjys5Hd2u6ysZghS8YZztGds6iRGiX59kcQq5fM=;
        b=a+DTulziBBgjK15PobKXItb6pezBzOAeZTXoWYyszi9ELWCUEPVBzye077Cv3E1YLh
         YsnR9S55uiAIzu5/zmVwF4uwx0Nst3NJlCTrHsqg5+h5hk9hXctkjq48epypFAHgFQb8
         7+Mwz0ifa7H4gVWDEk/k4THbeDD6fP7Z0HbFvPwbVOTJDsW8yVz8Do5uerANtzl03nVE
         7XxcH4luzONwDP9ET3GrMP3Nqj2NYH6PLuomYW0B1ves6gJpJ5N2qns7iz6dW3+RXDF6
         Yjf6bBVXMW5r8Gg2cPia1ABw2OMVQtDx5FNhHenz1+NlqmlgtuFzEFoqNCNHNOzgZu04
         9X6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746040044; x=1746644844;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=80mRLjys5Hd2u6ysZghS8YZztGds6iRGiX59kcQq5fM=;
        b=H4EEhpdmqOHSdbDRJPXJGcLwAHtZkHcAoTr/sGAV212XHjA23wTmCsYnVTJRNPYfPM
         iDjuniC4OeFBpGj1gCeRr59KvXrP7HnPoXI5jLPsPswpKyafyg7GgQS2MvyczBkpd2Se
         M9J0X8ES9QTm4Xq8qEg4701bh3PDMO/iOQ1AIPtN4yUB8RgnxPVLmWegk7/Pk0un4MNV
         cLrfwWI6msn3qQCkay5FNJk3vqqjNWC80p5GKYo888+X6ByHT8zsm1X3wAjpRhra6EoT
         Oogqkj4xsKHLZiA17Twl0njo6lm4XP/9LDj6vV0IokOJpm82IzKH+NapAKgYbkdSLjwH
         xx6A==
X-Forwarded-Encrypted: i=1; AJvYcCX7cEmIQQNjLjE3WejvaDNZlicWkNt77uGsKm9uaKLFdP499e6kc/vOt0uY5iS9gUxn9aoj+ryoyhfH@vger.kernel.org
X-Gm-Message-State: AOJu0YzvF2znUXkuU0Zv6hTD3Yrfqf83+G4m5eSN+b+uYuOLTfHaue18
	zf+6lChZ0CROmjqXh62UM2eWaZeFilIb/xAybrURrr5qOU2PC6V7UgATh9yl1Y0=
X-Gm-Gg: ASbGncutxii3BTeDqp4f3DeFUdTXBcd1+OTOOhWPI5RPdSgKiv+PE0DDlfCAeVlaA6v
	3ifuET3d3KHVV0NqfMIZP4CsaIpMYgiyeZe+0DXFoSFSbftceliRFgw6mXGbRhSy4WlaXYvut+q
	0mSYFN7lV9c/hLSLFgHvuZRDbF4BdvIsTNpY4zpn7LpntdQ7CtPrISEHEs7+IKKUTphJarOGxvb
	VN56ETkMUdkSrfpH91zWobTY2STR1AugjDZjPSv5nLQzvTjYjRQFr2wD2ai5ZV4Jk0geQNFynfF
	LGXNwub5A5MGjO423z14mT8uZ+pw80yo3EiyDKVsVM2KHz+wl04YSpwVhmwrgXtb/TBYAVmZjRO
	zEhVtBcKUPMBTtos=
X-Google-Smtp-Source: AGHT+IGxFe30jnIEtcfXxdqEbeOH01eszlna0BNlLl4bX8yJXYfGDxf9e+JqaxB0WSf1rlJMFOvtVQ==
X-Received: by 2002:a05:6808:80cb:b0:401:ea99:532 with SMTP id 5614622812f47-40239e77c8bmr3044029b6e.21.1746040044090;
        Wed, 30 Apr 2025 12:07:24 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:359a:f1e:f988:206a? ([2600:8803:e7e4:1d00:359a:f1e:f988:206a])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40212c4dc27sm920732b6e.48.2025.04.30.12.07.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 12:07:23 -0700 (PDT)
Message-ID: <4fd62562-cd94-4019-952d-38624656ea81@baylibre.com>
Date: Wed, 30 Apr 2025 14:07:22 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 08/11] iio: adc: ad7768-1: add support for
 Synchronization over SPI
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
Cc: andy@kernel.org, nuno.sa@analog.com, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, marcelo.schmitt1@gmail.com,
 linus.walleij@linaro.org, brgl@bgdev.pl, lgirdwood@gmail.com,
 broonie@kernel.org, jonath4nns@gmail.com
References: <cover.1745605382.git.Jonathan.Santos@analog.com>
 <c5a5376a6ffbb571d7874218494b04fd20015ee9.1745605382.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <c5a5376a6ffbb571d7874218494b04fd20015ee9.1745605382.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/27/25 7:13 PM, Jonathan Santos wrote:
> The synchronization method using GPIO requires the generated pulse to be
> truly synchronous with the base MCLK signal. When it is not possible to
> do that in hardware, the datasheet recommends using synchronization over
> SPI, where the generated pulse is already synchronous with MCLK. This
> requires the SYNC_OUT pin to be connected to SYNC_IN pin.
> 
> Use trigger-sources property to enable device synchronization over SPI
> and multi-device synchronization, as an alternative to adi,sync-in-gpios
> property.
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---

...

> +static int ad7768_trigger_sources_get_sync(struct device *dev,
> +					   struct ad7768_state *st)
> +{
> +	struct fwnode_reference_args args;
> +	struct fwnode_handle *fwnode = NULL;
> +	int ret;
> +
> +	/*
> +	 * The AD7768-1 allows two primary methods for driving the SYNC_IN pin
> +	 * to synchronize one or more devices:
> +	 * 1. Using an external GPIO.
> +	 * 2. Using a SPI command, where the SYNC_OUT pin generates a
> +	 *    synchronization pulse that drives the SYNC_IN pin.
> +	 */
> +	if (!device_property_present(dev, "trigger-sources")) {
> +		/*
> +		 * In the absence of trigger-sources property, enable self
> +		 * synchronization over SPI (SYNC_OUT).
> +		 */
> +		st->en_spi_sync = true;
> +		return 0;
> +	}
> +
> +	ret = fwnode_property_get_reference_args(dev_fwnode(dev),
> +						 "trigger-sources",
> +						 "#trigger-source-cells",
> +						 0,
> +						 AD7768_TRIGGER_SOURCE_SYNC_IDX,
> +						 &args);
> +	if (ret)
> +		return ret;
> +
> +	fwnode = args.fwnode;
> +	/*
> +	 * First, try getting the GPIO trigger source and fallback to
> +	 * synchronization over SPI in case of failure.
> +	 */
> +	st->gpio_sync_in = ad7768_trigger_source_get_gpio(dev, fwnode);
> +	if (IS_ERR(st->gpio_sync_in)) {

Normally, having error be the indented path like this is preferred, but I think
this case is an exception since the following is "normal" code path, not error
return path.

I would understand this better as:

	st->gpio_sync_in = ad7768_trigger_source_get_gpio(dev, fwnode);
	if (!IS_ERR(st->gpio_sync_in))
		/* The trigger is a GPIO, our job is done here. */
		goto out_put_node;

	/* Second, ... */

> +		/*
> +		 * For this case, it requires one argument, which indicates the
> +		 * output pin referenced.
> +		 */
> +		if (args.nargs < 1)
> +			goto err_not_supp;
> +
> +		if (args.args[0] != AD7768_TRIGGER_SOURCE_SYNC_OUT)
> +			goto err_not_supp;
> +
> +		/*
> +		 * Only self trigger is supported for now, i.e.,
> +		 * external SYNC_OUT is not allowed.
> +		 */
> +		if (fwnode->dev == dev) {

As Andy pointed out, this is a bit odd. Technically, we should be allowing any
trigger provider with the right capabilities. But we don't have a trigger
subsystem yet to make that easy. Since we can already handle the SYNC_IN is
wired to SYNC_OUT of the same chip above by omitting the trigger-sources
property, I would just make a TODO here and always return the not supported
error for now.

> +			st->en_spi_sync = true;
> +			goto out_put_node;
> +		}
> +
> +		goto err_not_supp;
> +	}
> +
> +	goto out_put_node;
> +
> +err_not_supp:
> +	ret = dev_err_probe(dev, -EOPNOTSUPP,
> +			    "Invalid synchronization trigger source");
> +out_put_node:
> +	fwnode_handle_put(args.fwnode);
> +	return ret;
> +}
> +

