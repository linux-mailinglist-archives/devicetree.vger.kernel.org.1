Return-Path: <devicetree+bounces-124060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D6A9D77DD
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 20:22:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E039FB37867
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 18:01:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E61A513D26B;
	Sun, 24 Nov 2024 18:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RvuYdECE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3868C558BC
	for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 18:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732471289; cv=none; b=rawq+B5Rn9KW4fogyCuYj8Z6TXzTJLvyZnBW/oS7R3wrGo9XwGuNGga/fZydzu0E1MYgkQW435XC5HR2onz/4K9hLPiF6PTtrsOANxIbNENCWB166C0BgWcLELDdQRZbeJcjLLYQjlxHcsy/bocFZYSSZch2IEDdSTQj1MZ8Sto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732471289; c=relaxed/simple;
	bh=OQHYaEGK/MoxESKfRrNIDMATBe/YMo0NdUaLUPjFGl4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cpjBa+AD62WhIBBVlsmeUYHqCkQRNVXhnLFS4kDD396MXU7uM5t+FO7tDqdWj3Zsx4OqHVV9YIlEKTEEUf9pr2ZmBvpj4xx5kPBqEemNbnzDpysVGnh3kEvAl6lzLqnmhWCo7EnIFLNoZvIK0DUg4Qh5LIO2LatghIx61d3NLeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RvuYdECE; arc=none smtp.client-ip=209.85.160.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-27b7a1480bdso2025520fac.2
        for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 10:01:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732471286; x=1733076086; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D36DzTxorADSkSUVJgapxuTWO26Thyjrj4okdQAgDkQ=;
        b=RvuYdECEnMYurSSb5+RqqhdTw51LDm8knXJal6SdxIP6woFJPoyBRPBEEhzkqteco2
         AASd3Ds/iPD3SnFoERXVWWaX8uCmnsby9cdz3BGYvsSvT2JYwBWmtiVykVzHXyU1WxCT
         d7zWD1LRUuGRq6tO2tEvLTdwt0FIa1HT9/sRVSAYZRG4TTIAHyaSoAJgBAmOSNq7SpCM
         S+dlv1235fmFE67hTtBJeYqJxwXR5emeadOGxtT8+hxsPJf0cifPUVQ5hmekcKIGHcdj
         bF9Ojyz5wKLcwLS0ks8syEczRweormROG1GMupMkaUZY/N9d4f2FDhdcHTTvjPFr6DFg
         Vu5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732471286; x=1733076086;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D36DzTxorADSkSUVJgapxuTWO26Thyjrj4okdQAgDkQ=;
        b=L04MZOSJW2FCKYpec59vKRVZubqiAMBplxlB1a8DUfz02l3j6zr/YKCXMyF5GgGj2m
         SnUpKqg3TfgFMopey056VOQowkuF4ZlcrqJ7YnMz5K8XrJURfOsQTXRGGIdIFSFgVJqZ
         wMtQRy6G+BSK2Y+YJgxhP6godydOWxObZcZvC3EthRn00M9fzlKN1b2xZ+mnsR/1uqJU
         MELNfNe2SWPzYDcHDVk85iGB9dSDybX9oNav1xzrgbYMhjILxhEArUsPZnwUtz9mjuaV
         Vd2/am/XzUJ9N6FVJm9h5Ou0WhXWDZh/7QzWI3SHND5UeDjmLLGW4/IBo6RHmfWhgTDA
         3xSg==
X-Forwarded-Encrypted: i=1; AJvYcCUEKlzl/tScBiITapNiKqha2U6zeKNjL1sfpEEsm4CDyr9S29cdBiU+yAJX0G2t0jFXcIPIaRGWDO67@vger.kernel.org
X-Gm-Message-State: AOJu0YycGKfVHAdUlxyV2bQBvMB7/5+OTirXp7ToDbrZbh5FN5z6Iyot
	naJp7dUSxdGw21Qd4y86tW5Z7N+RglBS+aSZ0ZwqBqx+YkA6LO3exlCTrcBWf7M=
X-Gm-Gg: ASbGnct/yFfUVf5wStM5YwsqGOVCpS+IlUCFPOKyLUZ3/H4rJhMQdCi+zIJapAg0fwh
	9uT0E6EdQppAyioZcrOZFWVJ+lGWNTYzwCFhr1LuiO3zjiRX8yXYnyP1VwUAgvRvGuWyPdMLTdP
	7U4Uw1pgDDdwvGcxXOXO9kOSaQC8kDKDZ0xBhiHjEZc3BcpCfWa1H7+I6CIdHra+FbkqWWTzT89
	uQplzCTf+X7xMKI9agja3X9PXas3UuYokdyVG6aNJaB+2lfpQ+s0PjBpv0LnYJcz/owJds77Jbq
	X5Uw0/6YHu0=
X-Google-Smtp-Source: AGHT+IFqrJucfpOTPI7q0bEc9jBm0hS0kXQuiS/iMtoAArPnMeQPf5AM8u1ip+GVY/H8ytVpgKSYVw==
X-Received: by 2002:a05:6871:3147:b0:296:9625:3357 with SMTP id 586e51a60fabf-29720adae7fmr7346877fac.1.1732471286146;
        Sun, 24 Nov 2024 10:01:26 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2971d5e2fa6sm2314970fac.20.2024.11.24.10.01.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Nov 2024 10:01:24 -0800 (PST)
Message-ID: <22bc45a0-9d14-480a-bcce-bae394166967@baylibre.com>
Date: Sun, 24 Nov 2024 12:01:23 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 01/16] spi: add basic support for SPI offloading
To: Jonathan Cameron <jic23@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>,
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pwm@vger.kernel.org
References: <20241115-dlech-mainline-spi-engine-offload-2-v5-0-bea815bd5ea5@baylibre.com>
 <20241115-dlech-mainline-spi-engine-offload-2-v5-1-bea815bd5ea5@baylibre.com>
 <20241124163241.4699161f@jic23-huawei>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241124163241.4699161f@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/24/24 10:32 AM, Jonathan Cameron wrote:
> On Fri, 15 Nov 2024 14:18:40 -0600
> David Lechner <dlechner@baylibre.com> wrote:
> 
>> Add the basic infrastructure to support SPI offload providers and
>> consumers.
>>

...

>> +	resource = kzalloc(sizeof(*resource), GFP_KERNEL);
>> +	if (!resource)
>> +		return ERR_PTR(-ENOMEM);
>> +
>> +	resource->controller = spi->controller;
>> +	resource->offload = spi->controller->get_offload(spi, config);
>> +	ret = PTR_ERR_OR_ZERO(resource->offload);
>> +	if (ret) {
> Why not simply
> 	if (IS_ERR(resource->offload) {
> 		kfree(resource);
> 		return resource->offload;
> 	}
>> +		kfree(resource);
>> +		return ERR_PTR(ret);
>> +	}

Hmm... maybe somewhere along the way ret was being checked again
after this, but doesn't to be the case anymore.

>> +
>> +	ret = devm_add_action_or_reset(dev, spi_offload_put, resource);
>> +	if (ret)
>> +		return ERR_PTR(ret);
>> +
>> +	return resource->offload;
>> +}
>> +EXPORT_SYMBOL_GPL(devm_spi_offload_get);
> 
>> diff --git a/include/linux/spi/spi-offload.h b/include/linux/spi/spi-offload.h
>> new file mode 100644
>> index 000000000000..81b115fc89bf
>> --- /dev/null
>> +++ b/include/linux/spi/spi-offload.h
> 
>> +
>> +MODULE_IMPORT_NS(SPI_OFFLOAD);
> 
> This is rarely done in headers. (only pwm.h does it I think)
> I'd push it down into code that uses this.

Yes, it was Uwe that suggested that I put it in the header. :-)

Are there any unwanted side effects of having it in the header?

> 
> It might be worth splitting the header into a spi-offload-provider.h
> and spi-offload-consumer.h with a common spi-offload-types.h included
> by both.
> 

