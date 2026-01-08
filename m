Return-Path: <devicetree+bounces-252812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 941F5D0466F
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 17:32:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 63A33351CE3B
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:22:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6388636E47C;
	Thu,  8 Jan 2026 12:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L2c8qMWI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f65.google.com (mail-ua1-f65.google.com [209.85.222.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 908E23659EB
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 12:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767875942; cv=none; b=ItIaJu5qy6NGr9nrkbVkAh6UDZ2pW7vpxhlrBF9M1FnE27cuGPGw9yrFgxsJs7Vj2XFTVx/iKdrUk0egfAwcaPP4nYaYfXZm9sbrab3TbhatyfuTsrJKBEwchOP7hzsPX7sW9GOIXG8FbkCcibcbk8lW1yaEa9mrx9zRsE5YgtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767875942; c=relaxed/simple;
	bh=+Hxr4ZiZBnsK37sucsF9sUC3x17Hr3pQoHDvwweLQw0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MOr8zdypZeL25NOgSrNSMKlpe8D4qltIUB1zoSv45APJM4yg5BiLRw6SkbKG/LvGMu9QfpYZSEauWPBAB3hJkHU7xT79GENZyMUaInm330pXzf5PHMvVuWaxVCCdazrAeIh/Pt/H2MpUAbDZ39krFEX6z3Z8E5r35rPOTIBRlDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L2c8qMWI; arc=none smtp.client-ip=209.85.222.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f65.google.com with SMTP id a1e0cc1a2514c-9412512e9f3so965411241.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 04:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767875939; x=1768480739; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+iEE6Un0IiGnjVPgG1bXjl9grqm8623VhHGBXWZZQ/w=;
        b=L2c8qMWIpZ4YE9Uq4klevuqCYYMfApJCbw8qwf2RQT4FooUGjAsSfWOOZ+f5KlZZfn
         qM9rRl64ZFQkWgS8TDE4A8quMslcv7RarAtxJYwevRn3EOt4g19cI4Cvq8Myn98BQVlC
         5xnssOV8wbRDyuBfZT1ASDCnrD1Yk5uD4gtCoGFd1gpyJMbczdcHUoYaszAGejRG2+TZ
         STXfswc2y/kOgTgJYtqasKRko5mDIfF3jTnl+H6/gWLUTiEkQlaFgMBRK4osD+QLtUeh
         g7+nTqhv4aD6CDEoeZ2ONL7T7ke9y7580AY3Y4EM/8uvgkwkQfYj0ktzNjYNISwPvXy2
         tDXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767875939; x=1768480739;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+iEE6Un0IiGnjVPgG1bXjl9grqm8623VhHGBXWZZQ/w=;
        b=K3tSJTPsKupDuamtsUKPk5r3pX8wr4A4QwKPYDsAql2V5vE4IP+swZ+dzbIwk+PQPg
         IUijimk1OCjLSENUdrF68Zml8zSPtiTU/T50TlVETnBC1uDY72ReJ5ap8hxCQiRIVEsV
         taFzD6Br0K7yt2inDhGzXJ3rdCrhXXhm9pQklgqYdbyyBJkz5lTqKFK5XZHkAt28o9qG
         M85ZZq1WbsfFringsXkrjZCkOjWNR/DOXbW0Hecmja7W9SFWxk+xT9mvQ94auZbzNLLj
         djEMXDG5tNcDdlP7UwNJz2n3C/5AYs7LgCxYUUqPrQV1PqVhT/ZI2+3VuuqEajvwXNEa
         6FPg==
X-Forwarded-Encrypted: i=1; AJvYcCVv9qVH+Og7wM9ozIi5KeCOMv4E266t/GUQKwHDyiNdnOWoBJgOROQ9virs/gOg+iev5yqxSmSvuRlA@vger.kernel.org
X-Gm-Message-State: AOJu0Yzsp1T3+rkqUkx9BDhxLS7vG5el7cw8JZWiT6owSQBKobvrG/Pc
	5bwScHOph6bGoVmDsRCB0O5DfPGpgxSJuE0UvkU8ueDOdH7FXQ1iQ/Ly
X-Gm-Gg: AY/fxX7xLwrqti4tl8EieAsT4a+7RrF93akDAF0TWil/6SrCH7YsIHxOscWF9Heh65M
	cHXjIEy9BLhhiYmVzzmCBopf/g/jYhIOrB97/YdBUEOPvbWBT8Tqq/ExKNe0s1jcXuJbFKHqt+Z
	xarH1Sn+vim6o4PU0RikJoGAbVLNCivCmQ4QNBhVM3ljfonbtpLYN0yS6aGtBPFcbDKtp6+huB+
	XMZ98tcTfPQp/ZFurt+Qy+wvlsiiFhnWtRUxUv4hZrYnaT5nVOUZHSBgDE5N32Mj0DKhx4ZYFqm
	K+73qEptvWPWSLmbyy9gKLs2mFwJCbJOgzcmtm7dwGtXmKgFi+8du31zhla8MqvfOv7uuhP97zG
	h6+k/yUn1Ga+gPouiB7fbfrUFHGxPq13E9WFU6lQlk5xh1S+ZJydCRGeaY+ZzXHOYXW7ZDwZYZH
	nLqUQvUw9XP7kb2OcM414=
X-Google-Smtp-Source: AGHT+IEJZWHmh83mvzjHNX9jMW2jbT1DkYtWCUqXUYAhY01+DHpkl4E6/Inn6+oVCICuzwZk7UrX/w==
X-Received: by 2002:a05:6102:6f07:b0:5ed:c98:37f1 with SMTP id ada2fe7eead31-5ed0c983b52mr1285108137.1.1767875939450;
        Thu, 08 Jan 2026 04:38:59 -0800 (PST)
Received: from localhost ([2804:30c:2766:a500:b70:8c42:f792:bef6])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944124a3386sm5633984241.11.2026.01.08.04.38.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 04:38:58 -0800 (PST)
Date: Thu, 8 Jan 2026 09:40:44 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: David Lechner <dlechner@baylibre.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marcelo Schmitt <marcelo.schmitt@analog.com>,
	Michael Hennerich <michael.hennerich@analog.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Andy Shevchenko <andy@kernel.org>,
	Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH v4 5/9] spi: Documentation: add page on multi-lane support
Message-ID: <aV-lzD1BEVSkGjba@debian-BULLSEYE-live-builder-AMD64>
References: <20251219-spi-add-multi-bus-support-v4-0-145dc5204cd8@baylibre.com>
 <20251219-spi-add-multi-bus-support-v4-5-145dc5204cd8@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251219-spi-add-multi-bus-support-v4-5-145dc5204cd8@baylibre.com>

Hi David,

Thanks for adding a doc for the multi-lane stuff.
Two minor comments inline.

Reviewed-by: Marcelo Schmitt <marcelo.schmitt@analog.com>

On 12/19, David Lechner wrote:
> Add a new page to Documentation/spi/ describing how multi-lane SPI
> support works. This is uncommon functionality so it deserves its own
> documentation page.
> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>
> ---
> v4 changes:
> * New patch in v4.
> ---
>  Documentation/spi/index.rst               |   1 +
>  Documentation/spi/multiple-data-lanes.rst | 217 ++++++++++++++++++++++++++++++
>  2 files changed, 218 insertions(+)
> 
> diff --git a/Documentation/spi/index.rst b/Documentation/spi/index.rst
> index 824ce42ed4f0..2c89b1ee39e2 100644
> --- a/Documentation/spi/index.rst
> +++ b/Documentation/spi/index.rst
> @@ -9,6 +9,7 @@ Serial Peripheral Interface (SPI)
>  
>     spi-summary
>     spidev
> +   multiple-data-lanes
>     butterfly
>     spi-lm70llp
>     spi-sc18is602
> diff --git a/Documentation/spi/multiple-data-lanes.rst b/Documentation/spi/multiple-data-lanes.rst
> new file mode 100644
> index 000000000000..b267f31f0bc8
> --- /dev/null
> +++ b/Documentation/spi/multiple-data-lanes.rst
> @@ -0,0 +1,217 @@
> +====================================
> +SPI devices with multiple data lanes
> +====================================
> +
> +Some specialized SPI controllers and peripherals support multiple data lanes
> +that allow reading more than one word at a time in parallel. This is different
> +from dual/quad/octal SPI where multiple bits of a single word are transferred
> +simultaneously.
> +
> +For example, controllers that support parallel flash memories have this feature
> +as do some simultaneous-sampling ADCs where each channel has its own data lane.
> +
> +---------------------
> +Describing the wiring
> +---------------------
> +
> +The ``spi-tx-bus-width`` and ``spi-rx-bus-width`` properties in the devicetree
> +are used to describe how many data lanes are connected between the controller
> +and how wide each lane is. The number of items in the array indicates how many
> +lanes there are, and the value of each item indicates how many bits wide that
> +lane is.
> +
> +For example, a dual-simultaneous-sampling ADC with two 4-bit lanes might be
> +wired up like this::
At first, I thought calling these '4-bit lanes' was a bit confusing. I was
thinking about suggesting '4-wire lanes' but I guess 4-bit is more generic in
case we ever see a setup where data navigates through something besides wires.

> +
> +    +--------------+    +----------+
> +    | SPI          |    | AD4630   |
> +    | Controller   |    | ADC      |
> +    |              |    |          |
> +    |          CS0 |--->| CS       |
> +    |          SCK |--->| SCK      |
> +    |          SDO |--->| SDI      |
> +    |              |    |          |
> +    |        SDIA0 |<---| SDOA0    |
> +    |        SDIA1 |<---| SDOA1    |
> +    |        SDIA2 |<---| SDOA2    |
> +    |        SDIA3 |<---| SDOA3    |
> +    |              |    |          |
> +    |        SDIB0 |<---| SDOB0    |
> +    |        SDIB1 |<---| SDOB1    |
> +    |        SDIB2 |<---| SDOB2    |
> +    |        SDIB3 |<---| SDOB3    |
> +    |              |    |          |
> +    +--------------+    +----------+
> +
> +It is described in a devicetree like this::
> +
> +    spi {
> +        compatible = "my,spi-controller";
> +
> +        ...
> +
> +        adc@0 {
> +            compatible = "adi,ad4630";
> +            reg = <0>;
> +            ...
> +            spi-rx-bus-width = <4>, <4>; /* 2 lanes of 4 bits each */
> +            ...
> +        };
> +    };
> +
> +In most cases, lanes will be wired up symmetrically (A to A, B to B, etc). If
> +this isn't the case, extra ``spi-rx-bus-width`` and ``spi-tx-bus-width``
> +properties are needed to provide a mapping between controller lanes and the
> +physical lane wires.
> +
> +Here is an example where a multi-lane SPI controller has each lane wired to
> +separate single-lane peripherals::
> +
> +    +--------------+    +----------+
> +    | SPI          |    | Thing 1  |
> +    | Controller   |    |          |
> +    |              |    |          |
> +    |          CS0 |--->| CS       |
> +    |         SDO0 |--->| SDI      |
> +    |         SDI0 |<---| SDO      |
> +    |        SCLK0 |--->| SCLK     |
> +    |              |    |          |
> +    |              |    +----------+
> +    |              |
> +    |              |    +----------+
> +    |              |    | Thing 2  |
> +    |              |    |          |
> +    |          CS1 |--->| CS       |
> +    |         SDO1 |--->| SDI      |
> +    |         SDI1 |<---| SDO      |
> +    |        SCLK1 |--->| SCLK     |
> +    |              |    |          |
> +    +--------------+    +----------+
> +
> +This is described in a devicetree like this::
> +
> +    spi {
> +        compatible = "my,spi-controller";
> +
> +        ...
> +
> +        thing1@0 {
> +            compatible = "my,thing1";
> +            reg = <0>;
> +            ...
> +        };
> +
> +        thing2@1 {
> +            compatible = "my,thing2";
> +            reg = <1>;
> +            ...
> +            spi-tx-lane-map = <1>; /* lane 0 is not used, lane 1 is used for tx wire */
> +            spi-rx-lane-map = <1>; /* lane 0 is not used, lane 1 is used for rx wire */
In this example, even though lane 0 is not used by thing2, it is being used by
thing1, right?
Just checking I understand it correctly.

> +            ...
> +        };
> +    };
> +

