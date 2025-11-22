Return-Path: <devicetree+bounces-241287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE381C7BF99
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 01:02:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D3DA3A7CDB
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 00:02:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43ADD3B1BD;
	Sat, 22 Nov 2025 00:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="SOuvgd0d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A560EED8
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 00:02:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763769748; cv=none; b=VOwD0WyF/Sv1p5aBHMK3aLSKnEbPsvDlFWui8C8mHthRWb6SPcgrXgHbq0yi01VNXqGGLaPr/4sz2XVEOrI3kZv9SMQFxwzYqNBONbMvB53zF3s9+rVqI9ZChHoswkagjxE6VmITWgFo1VOyIZAIfnCwXzWNHKlXJDQFJSNjJhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763769748; c=relaxed/simple;
	bh=5vU7V0qkV7PYCF8w381451NvEsq2oDT+U7h9SYJ20ho=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CyNiF9aCtiNouoi5hwa7dg/sJ9T6OZ0FEJGLa/LR9imsuYI1OiU2jdOITmgJ2rE8GZdWVZ0FdYHf9V83EQuy6ttWEkmhhzz+nFR1QoZ6NxB9w2CAf/8qUxGg9dKRvPJ9c7bKfPcqwCUAYJA7yCvk/K+5dp9jGNyOffjXYUOfdr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=SOuvgd0d; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7c750b10e14so865504a34.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 16:02:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763769744; x=1764374544; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mSMsM4wD+eNEn0K9vsPH/4otzNTJFdNd3NAiviSltNg=;
        b=SOuvgd0dvXqw/cOlwn56g0plfbXTJ9V0yfXitwPAcmM7aZ+FKE4Qpqc1A84oxAuiq4
         UkJeXXpxoS85CbP6FQ0x3FBEj9imu8MdqayuTEVpDZ9k1iXMqZbUP2ImtrGVY0mkzE5z
         fQn3aUglG9FZoKBd+PEaehgbA/GSxkDi/ops18poREc3d9gT0JwMchMlNeikSe04Uvc4
         kthcH/ETCv+nkfPPkjjEnDWeyvUAoR21M1ytGYHzMiHYH9dCfPt3tPU1QLG5cer/5xx/
         L1fwwiz8VpieulgNVrfU+Upm5yotoqMfeZaTy1Cz+ZYu+O75+PAEPe/jrNnelCHfbkUW
         S6Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763769744; x=1764374544;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mSMsM4wD+eNEn0K9vsPH/4otzNTJFdNd3NAiviSltNg=;
        b=XwPz6/lTc7bVR+t0OGBHLRtmlIcW3c7Rlb9r8iq5DhVJiZz1Jad6cw5PERkETPU/1c
         6T4UOJDRBJAzbTZJIhVv+S8068PHSh+eVkHFHVWUjZShGtoEV+0vdIbgxxSEq65Gn+VE
         IV7cagRIUKcGehB0gyq31BaNSjsT19SKbQaYgcy8iqzdUMeQEBSycN0enq8QZt7Sel+8
         hTnD4qV/tvoR7+U0mf47hoW5khC96C/8KIwE6TiuVdLKm/7sq+j46ADyKY0yY/w/aO3u
         CySujt+5Nsk1dWKYkbATp6FBWfOHQxSBfZPEjM+up29BCTOthqA9lm6dz+el2jUeGeBp
         TBvg==
X-Forwarded-Encrypted: i=1; AJvYcCWfkSxEBIyvdIrIWvUah8etYZQ6ayiruTX5Zk+PMd2ki5tSDw75aZQmLvaSw7hwrTf4bhuDd2S7YIqh@vger.kernel.org
X-Gm-Message-State: AOJu0YwvZW+WPmkCSlBvju9YFWDjSvxF4hGYxuBx1WvwYotyKtBI5QvF
	LUzLeg5+h48Fo2+RkkQ+L3AB+XKlaBFViQN44QGdeKYW5KZQZHjcNoSXLsy6JiLsKJk=
X-Gm-Gg: ASbGncsFMpOS/5VXQ0P3Zn+XX34ZyTfvQ/lCjZxCLgRioudjugt5Eajf4n6ozdVAj5f
	WP96yUkzFMn4h9uKwKi3ZPQsBV7dU/HmbFVmuKMoogNj1owJmj4NkrYWsE45Db27G+Ma2lcVdx3
	8Mw7GeUXi7gIUeCYWkhMynCkSlKUNXJZQgVOneoY9C7P4G7y1jvTJXcCuxRB6E/r8jJvFTuaLGP
	H+pR39oufKQrMiG6tKJAnlBIOTZt3ii6En2qJbiWc4nlrB/Rjt9EupCnRQ/MEt3f5603wb8J/am
	kvqFA+S+yJm7pWjOOURAYFgFCout3XZl/gTr3OFSVrOQmK2BDDpK//5Bh9KK87mZsykyuSXiKpR
	fZAjKpCpmIecA3mXOjnYa/rqADSe2/HohJnu5yt2W5Ke3JeEqekj5pafPMmy1quV5wvNRvM7ymg
	gRBKm15nF0+PKDDclfEXJoREqoHzSjiXpIK3cj2ctZNcevxW8l525rqwgTChix+hs/QCqIw5g=
X-Google-Smtp-Source: AGHT+IETDNA4U9kpXHXNcD4yt6ZyVzUxTAn4REi1Ka9mpoOr0PorXQOzuvjp9nALLHrKdDLmJjWXEQ==
X-Received: by 2002:a05:6830:2707:b0:7c7:63b6:89d3 with SMTP id 46e09a7af769-7c798c4e5cdmr2058906a34.19.1763769744080;
        Fri, 21 Nov 2025 16:02:24 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:e782:93d8:7c2f:f9df? ([2600:8803:e7e4:500:e782:93d8:7c2f:f9df])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c78d3e2e59sm2854198a34.17.2025.11.21.16.02.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 16:02:23 -0800 (PST)
Message-ID: <986c47b4-6093-4e6d-aa4b-8d789e497dbc@baylibre.com>
Date: Fri, 21 Nov 2025 18:02:22 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] iio: Add support for TI ADS1X18 ADCs
To: Kurt Borja <kuurtb@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Tobias Sperling <tobias.sperling@softing.com>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20251121-ads1x18-v1-0-86db080fc9a4@gmail.com>
 <05fae891-a4e6-439d-97da-6259370f68b5@baylibre.com>
 <DEERGRDZ0TM4.NZ6R9JWCSQPL@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <DEERGRDZ0TM4.NZ6R9JWCSQPL@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/21/25 5:28 PM, Kurt Borja wrote:
> Hi David,
> 
> On Fri Nov 21, 2025 at 5:32 PM -05, David Lechner wrote:
>> On 11/21/25 11:16 AM, Kurt Borja wrote:
>>> Hi,
>>>
>>> This series adds a new driver for TI ADS1X18 SPI devices.
>>>
>>> This is my first time contributing to the IIO subsystem and making
>>> dt-bindings documentation, so (don't) go easy on me :p.
>>
>> I actually had these parts on my radar, so happy to help you out.
>> Unfortunately, I don't have the hardware for testing though.
>>
>> The first thing I was going to do was check the existing drivers
>> to make sure that there isn't one already that has a compatible
>> register layout. I have a feeling we won't find one, but would be
>> good to mention that in the cover to justify adding a new driver.
> 
> The closest driver I could find was the ti-ads1015 I2C driver. It has
> the same register map and similar specs. Although I think we can adapt
> it to be "compatible", I chose to do a different driver for a few
> reasons:
> 
>   - ads1015 and compatible devices have a separate DRDY interrupt line.
> 
>   - The ti-ads1015 driver doesn't support the DRDY interrupt (sleeps
>     until data is ready and it doesn't have an iio_trigger).

I don't think this one is a big deal. Ideally, eventually both drivers
would support operating both with and without interrupts.

> 
>   - To correctly handle the DOUT/DRDY line we need to manually control
>     the spi_bus_lock. And we do it differently based on which IIO device
>     mode we are operating on, so it would be difficult to stuff this
>     logic into regmap_bus callbacks alone.
> 
>   - IMO the end result of merging these drivers would be too messy.

This one I agree with 100%, but for different reasons. ads1015 is I2C
and ads1018 is SPI _and_ regmap is not a good fit for either of these.
Mostly because when reading sample data, we need a custom SPI message
to read the data and write the setup for the next conversion at the
same time. And ads1018 only has 1 register anyway that isn't 100%
identical to the same register in ads1015.

> 
> This is just my opinion though, so let me know what you think. If do
> agree I will add some of this points in the patch changelog!
> 
In the end, we both have the same conclusion.

