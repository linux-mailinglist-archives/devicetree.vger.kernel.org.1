Return-Path: <devicetree+bounces-136348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CB7A04DD9
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 00:50:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 822921621BA
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 23:50:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98D141F37DD;
	Tue,  7 Jan 2025 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qYRv5iz5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35B31DE8AF
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 23:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736293834; cv=none; b=kGCKqVPjFHX0PlcZ+H9HvDkiWLQW3HkpfGTugbD6JDhIapvR4ZprlcqkaLzKjL3YzMusdv1zEJ5b5zC5RpepGEF+TqkUwQhPwKg6j/5rFxlRMgot2hoh+lSQGIuqeq7XV8KDB4Rz9G2uG+l5h6vQGhLSK9PUAJURWVUtcaCqXi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736293834; c=relaxed/simple;
	bh=XfPvlCPGM6v+rwnBGl4dOBG7B5R6Eye3/uGl5/TBzoo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nkPkVQ5+Sq+bqlw4oXA86lFWQY7YYV0OW49q+iWaNLdUV9KMEmVPuk5FkncZ5rYklSTJKC3QuU4e+galQAUbpb4HJe9Kph2TwlEE+hbt2LW3pn9aZ8ei8gVsVY3vP8ypZLpGhOh8SmzddCQdW3P+d+x8MBZTTIPTYewX+FFXMvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qYRv5iz5; arc=none smtp.client-ip=209.85.161.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-5f32fab5de9so4045505eaf.2
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 15:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736293832; x=1736898632; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sOh6SgpD0fnoQUo4jBTRWWnnORTvD4Gd2yKfcHr0wjI=;
        b=qYRv5iz5uMYu87LBXB6oD37vMQoDpkJTq0+/2tKEaTvPs8LBJy7n08rXSXOhy2E31e
         rNFvBqBB1RXYrIrezLaPEYdt3mdFY7konUkXvEl1Bg7GUtTWnj0l3/doKhU3I5YLoIxf
         ZGDgxk4RMBE1t+7tpio7IXb5B82thM/+bTEXz2VoOlDKleldrHrI9h9FYIPeHzIWQ+bn
         iZpMWO3JuasnB2YNkZWYvCvUIvoDzZYRRnkWD3H+zQmCCoedadgLywGgQVZNdempLxRV
         D2RLZQKwW/fjaK5ghkNLtuGfag5pHVuk3mV8PTFM313bj00cxo816cJ46dSMv+XvaRod
         hEDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736293832; x=1736898632;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sOh6SgpD0fnoQUo4jBTRWWnnORTvD4Gd2yKfcHr0wjI=;
        b=ud5T4vzW7TotmFN+F6cFd0fj1QfEjsg1BcCMti+C8jcEc5Ri8QEiKrZS9ueRh/quxN
         edpGidD25qg6Vsg+hp8IPWf/z9/0wwCw8bK0HcjLnq2wzQlB2xeZBo8dwN0FErQQICuL
         qyA1XXWeIsAH1K4s+B6V2H8mYiBfKsUZ95+QxNTvyoo9tTQNop2jvyt24g1RjWxXYlIK
         Fkcs9Yr/Gi6Zqta7ybDX+RKx2qnczImNHbeDQnRra9IKzULrEoGS6UGjX3aW40ZhjiXn
         fKM9/eL/JAatqnYfnQt72lPx3zYd310MKj3kT524wYqULW3u3scKQy5+jDNfRlJCfkff
         bzTg==
X-Forwarded-Encrypted: i=1; AJvYcCXUUepernazURh8AzLdu/GT7IudWn9RdKlCzdppUOzLQwBWcBdxMXh4nQ+ZM2XF/ewVIXjBQELXxMxT@vger.kernel.org
X-Gm-Message-State: AOJu0YwbkbHwoezKrgxIRs6X4CxjasdQXrrs5Oke+zKVcHj7TiTBU4tf
	ZAWZr7yiVbrszouLWYL50FhTYBcL73tI15NA7RExKnlokfgL+hvA6ZpcxuMFkZ4=
X-Gm-Gg: ASbGnct8cgtIsyOIEe0I+fLNu5p/8ToUfHXyAnHnIXeDVSHApXQOA3ttAi/trTO3vQv
	Y1w62GwgrEoJyk0Hphwy9Ub/Z1Vmhe8EqbzSxY4RtyVzfyjUUW8O5ufCDfx8umxxdjvhZqkC0Db
	8IiwakBsxSX1R7/BGXjpo43H8BXb+jPImp1ZkNoyzn7RfW+shBG6a0rMDrO7V0upyEb0D0WsLqb
	vsqquin5KbWDjxyUrbvP0xo+o66AFdbVbW2XnaWfMhRepDpAQn3Ad3v4XP4vNrGaZmRhKKxguXV
	RjbSfRP2IgYHoB6y0w==
X-Google-Smtp-Source: AGHT+IEV5Fz0MfSNQ/uGaWWpS3qlhYqNZZWNPwgurnfrwPJX5zzf/vl5vBDqy23+j/EAHi9NAHKtgg==
X-Received: by 2002:a05:6820:543:b0:5f6:c2a3:a146 with SMTP id 006d021491bc7-5f7308c08bemr286228eaf.1.1736293831925;
        Tue, 07 Jan 2025 15:50:31 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc976635dsm10819604a34.9.2025.01.07.15.50.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 15:50:30 -0800 (PST)
Message-ID: <c0981545-5e0e-4b6e-93d9-cb2871b583e8@baylibre.com>
Date: Tue, 7 Jan 2025 17:50:29 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 14/15] iio: adc: ad7768-1: add support for
 Synchronization over SPI
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 marcelo.schmitt1@gmail.com
References: <cover.1736201898.git.Jonathan.Santos@analog.com>
 <0f9a15e6e2e6b7b2c82ef79d8cb883d9eb6c55dd.1736201898.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <0f9a15e6e2e6b7b2c82ef79d8cb883d9eb6c55dd.1736201898.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/7/25 9:27 AM, Jonathan Santos wrote:
> The synchronization method using GPIO requires the generated pulse to be
> truly synchronous with the base MCLK signal. When it is not possible to
> do that in hardware, the datasheet recommends using synchronization over
> SPI, where the generated pulse is already synchronous with MCLK. This
> requires the SYNC_OUT pin to be connected to SYNC_IN pin.
> 
> Add the option to handle device synchronization over SPI.
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---

...

>  static int ad7768_gpio_direction_input(struct gpio_chip *chip, unsigned int offset)
> @@ -697,11 +708,21 @@ static int ad7768_setup(struct ad7768_state *st)
>  	if (ret)
>  		return ret;
>  
> -	st->gpio_sync_in = devm_gpiod_get(&st->spi->dev, "adi,sync-in",
> -					  GPIOD_OUT_LOW);
> +	st->gpio_sync_in = devm_gpiod_get_optional(&st->spi->dev, "adi,sync-in",
> +						   GPIOD_OUT_LOW);
>  	if (IS_ERR(st->gpio_sync_in))
>  		return PTR_ERR(st->gpio_sync_in);
>  
> +	if (device_property_present(&st->spi->dev, "adi,sync-in-spi"))
> +		st->en_spi_sync = true;
> +
> +	/*
> +	 * GPIO and SPI Synchronization are mutually exclusive.
> +	 * Return error if both are enabled

Should it also be an error if we have neither? Otherwise it sounds like
decimation won't work correctly since there is a comment that says we have
to toggle this after updating the decimation rate register.

> +	 */
> +	if (st->gpio_sync_in && st->en_spi_sync)
> +		return -EINVAL;

A dev_err_probe() message would be helpful here when creating a new DT and
bringing up a new system since it is easy to forget a property or make a typo
that could lead to this error.

> +
>  	ret = ad7768_gpio_init(st);
>  	if (ret < 0)
>  		return ret;


