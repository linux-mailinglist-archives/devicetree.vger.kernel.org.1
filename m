Return-Path: <devicetree+bounces-256285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 22068D38950
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 23:35:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE13F300D143
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 22:35:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60B5A313E0C;
	Fri, 16 Jan 2026 22:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YRwPJoLm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f68.google.com (mail-oa1-f68.google.com [209.85.160.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACF82F0C7A
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 22:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768602918; cv=none; b=HGP/kP9V12vvpldZbiaO/vc0ewsQ2xtCJFXMLnoWgNFA3yOMn1VbeaXWCnPVVw7xrVq86r8kIrlognZZrdIetPrLirOZzVTEcpOr1ScAEI1irtjdNnqih28Fj0QreQREGqCS8StAZcsF7YXlPFFgqH55hMJY2CoITmHpWjqBQUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768602918; c=relaxed/simple;
	bh=C3YVRq6FkRPAEoGrvnuuEkgrRjOWxk6ZcB+nI2QzaJM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZqDsbg8epm0N1KMGF4UNaKKXWmLl7zP+UoC7eCxdPk9XKUcN5k906WYY2WbcTm//OxEiqPUlGIACf/KPX0Ajwi3GLR1t9P6ouy82EiklbzUj1q+c5xhn2KHOodAKj4b683wEaGpWaMOXI3nknjempbayuqNBd9ovLcp1a6tf74Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YRwPJoLm; arc=none smtp.client-ip=209.85.160.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f68.google.com with SMTP id 586e51a60fabf-40438e0cba6so1459501fac.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 14:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768602915; x=1769207715; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jBo+2kpI13pxODG59QrEEo48uykGVjX6vq1JpRuy1dc=;
        b=YRwPJoLm0jJS8Q9V0RlIZCHs2zHE1a0py529krh9q8pwjw9llTAyeaqs4RqloLuBWL
         cCvXZWl+hS2nUbrKwTHp5m1Qai3L6OsH5Rhxqq+wVPFAECvZZEb9FtMe3xGCyry9L1ge
         3eo/miK6jJBpx7go+z8ePYWtZBwoidSt/2ItSGJEXe/NWqrV6HePCl0nlPvCF3tS0Kvp
         YJIzKcVGb93sVa6ii29QIap9AuZS4u4APrsJAJ5tlWpqhRaX+22O2Y5D+TfPbdIxcF0y
         5VmFIsX5CxRQTiikFKT3Rl5LUasCVpamaWSTfprvNOkyceZwvDgJ7/FKxQk8CpHwyxgi
         pVpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768602915; x=1769207715;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jBo+2kpI13pxODG59QrEEo48uykGVjX6vq1JpRuy1dc=;
        b=oUDOLvnVq2EpAtixiW7V8VnT8up+QvEIcIUJFZTkInm/SzHicqAytEE7yi6yzBh932
         rn64NA/NPldmWWxCBIUCQaWtGtnfXP94b2VQGCnu44YClfV5+cNcd0Rpgzw5Fjf3Vl6n
         92uGCHL13QbBNBQeZxbg9MwBToFRPg1xu/CFzmKmCoRAT5x/8TqCJQpzZsYeMGqdpWFC
         A2diE1sV1hlKTnSChzjZE9kkitxi7WDKVfUocu6IIWywhEkfAD1DuIM69tyRvSVe168v
         6JcOUxgizoU/fMFjq6uuRa9upJgEsYE+r9tvtXzfxFd1Sz1uTqNiJPsNEJOpZ04l1tMB
         RioA==
X-Forwarded-Encrypted: i=1; AJvYcCUJbVfoZdhMOS8LXB+/HxiZECEnLKb1d1m3kcaQb+OmPUl4ARO3OrrYy37X+HbsvMSFMZCrCVw1qpP4@vger.kernel.org
X-Gm-Message-State: AOJu0YwuqljaYhntl5i4QnBvbi+eRGQvlaKlfTSdDnuVJ/a2f/wK4jWq
	lG6Mavxna7K393UP6veYcLZhKmuvrSVnO2FB/UPgxhgB+LoagxgOTbtuf+k2XFOumBQ=
X-Gm-Gg: AY/fxX7vNCVJb7Pnzdyc+eQW1YL3hlCjpuyMrhGHZRCAaq9IWfxcrfl6OWy1L32rnT9
	lv4ZlC9DtZQjtvw5JzeR2mnl7BiMFJtKZKNxjVQtfIZEWUL4jxAv8QJiLzuLV7Ty4n5LriW/h0x
	1DPBhEgRyTN0qbr/amDnlTSpNi9CWCENgB4SJzIpxazqqevspHMhygwBqH5MaZ07UvkSOKH09s2
	e/7ayHrT6/azwe45LkTL1fitJ52eITkBPSKciLnZ/9XpqV4/xzhlwvCElgx6y37r2Piau3qGjLm
	GfM34QvFDJbHAI9m0UPbuK+ihb56swRf9f/3p72DQQwUjxQEGAnrSFvqTsvh4Rr12Z/T0dsEZjU
	yt5gLBT1kytux5xZzRXnF8uhvZK1PEO1IAiqKcOWtMuI5ccJJvBANeLyGuV60Dri+uXKZiK0wJR
	qoZ0aIIqC4gMq7nyVNusV6GFi029klKJb9XS00wT9HLChw5Vfl/ltxRKgM9nia
X-Received: by 2002:a05:6870:cb83:b0:2e9:93c6:6e4a with SMTP id 586e51a60fabf-4044c424d74mr2115040fac.38.1768602915208;
        Fri, 16 Jan 2026 14:35:15 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:bd39:740e:f70f:5f7d? ([2600:8803:e7e4:500:bd39:740e:f70f:5f7d])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4044bd150dasm2693327fac.14.2026.01.16.14.35.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 14:35:14 -0800 (PST)
Message-ID: <ad688ba9-7771-4b64-a9d7-ec5100345460@baylibre.com>
Date: Fri, 16 Jan 2026 16:35:13 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/9] spi: Documentation: add page on multi-lane support
To: Jonathan Cameron <jic23@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Sean Anderson <sean.anderson@linux.dev>,
 linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org
References: <20260112-spi-add-multi-bus-support-v5-0-295f4f09f6ba@baylibre.com>
 <20260112-spi-add-multi-bus-support-v5-5-295f4f09f6ba@baylibre.com>
 <20260114091024.390432c0@jic23-huawei>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260114091024.390432c0@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/14/26 3:10 AM, Jonathan Cameron wrote:
> On Mon, 12 Jan 2026 11:45:23 -0600
> David Lechner <dlechner@baylibre.com> wrote:
> 
>> Add a new page to Documentation/spi/ describing how multi-lane SPI
>> support works. This is uncommon functionality so it deserves its own
>> documentation page.
>>

...

>> +
>> +For example, a dual-simultaneous-sampling ADC with two 4-bit lanes might be
>> +wired up like this::
>> +
>> +    +--------------+    +----------+
>> +    | SPI          |    | AD4630   |
>> +    | Controller   |    | ADC      |
>> +    |              |    |          |
>> +    |          CS0 |--->| CS       |
>> +    |          SCK |--->| SCK      |
>> +    |          SDO |--->| SDI      |
>> +    |              |    |          |
>> +    |        SDIA0 |<---| SDOA0    |
>> +    |        SDIA1 |<---| SDOA1    |
>> +    |        SDIA2 |<---| SDOA2    |
>> +    |        SDIA3 |<---| SDOA3    |
>> +    |              |    |          |
>> +    |        SDIB0 |<---| SDOB0    |
>> +    |        SDIB1 |<---| SDOB1    |
>> +    |        SDIB2 |<---| SDOB2    |
>> +    |        SDIB3 |<---| SDOB3    |
>> +    |              |    |          |
>> +    +--------------+    +----------+
>> +
>> +It is described in a devicetree like this::
>> +
>> +    spi {
>> +        compatible = "my,spi-controller";
>> +
>> +        ...
>> +
>> +        adc@0 {
>> +            compatible = "adi,ad4630";
>> +            reg = <0>;
>> +            ...
>> +            spi-rx-bus-width = <4>, <4>; /* 2 lanes of 4 bits each */
>> +            ...
>> +        };
>> +    };


...

>> +properties are needed to provide a mapping between controller lanes and the
>> +physical lane wires.
>> +
>> +Here is an example where a multi-lane SPI controller has each lane wired to
>> +separate single-lane peripherals::
>> +
>> +    +--------------+    +----------+
>> +    | SPI          |    | Thing 1  |
>> +    | Controller   |    |          |
>> +    |              |    |          |
>> +    |          CS0 |--->| CS       |
>> +    |         SDO0 |--->| SDI      |
>> +    |         SDI0 |<---| SDO      |
>> +    |        SCLK0 |--->| SCLK     |
>> +    |              |    |          |
>> +    |              |    +----------+
>> +    |              |
>> +    |              |    +----------+
>> +    |              |    | Thing 2  |
>> +    |              |    |          |
>> +    |          CS1 |--->| CS       |
>> +    |         SDO1 |--->| SDI      |
>> +    |         SDI1 |<---| SDO      |
>> +    |        SCLK1 |--->| SCLK     |
>> +    |              |    |          |
>> +    +--------------+    +----------+
>> +
>> +This is described in a devicetree like this::
>> +
>> +    spi {
>> +        compatible = "my,spi-controller";
>> +
>> +        ...
>> +
>> +        thing1@0 {
>> +            compatible = "my,thing1";
>> +            reg = <0>;
>> +            ...
>> +        };
>> +
>> +        thing2@1 {
>> +            compatible = "my,thing2";
>> +            reg = <1>;
>> +            ...
>> +            spi-tx-lane-map = <1>; /* lane 0 is not used, lane 1 is used for tx wire */
>> +            spi-rx-lane-map = <1>; /* lane 0 is not used, lane 1 is used for rx wire */
> 
> Whilst simple I'd kind of expect a multi lane case as the example, or this and
> the multilane one? For me the comment that follows is sufficient for the 1 lane
> offset case you have here.

I thought that is what I did. I have one example that shows multiple lanes (ADC)
and one example that shows the map (Thing 1/2).

But I guess you mean that you want a 3rd example that show both the map and
multiple lanes at the same time?

I chose these two examples because they came from real-world use cases that
drove adding this feature. We didn't have a real-world case yet that used
both the map and multiple lanes at the same time so I didn't include that.

> 
>> +            ...
>> +        };
>> +    };
>> +
>> +
>> +The default values of ``spi-rx-bus-width`` and ``spi-tx-bus-width`` are ``<1>``,
>> +so these properties can still be omitted even when ``spi-rx-lane-map`` and
>> +``spi-tx-lane-map`` are used.
> 
> 
> 


