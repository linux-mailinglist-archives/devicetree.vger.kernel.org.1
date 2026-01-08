Return-Path: <devicetree+bounces-252941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E376FD0506E
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:35:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C8FFE3020580
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:26:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 825F82FD68B;
	Thu,  8 Jan 2026 17:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="yLh1c9wD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com [209.85.210.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8973C2DC792
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 17:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767892939; cv=none; b=EkLDLtSAlcj9RPqJwlJu0Zhf9cYLZOUyrbC3ik/HOWczfNVu3iRZjKHW9YFRSVOphm2ew/UJe2moEjZK4oAe7z3uA7o7wZ8jtvh8FiAVkZfcDb+k9hqGGd5hQsEbH3FUQ86RCkuc7ngNMpoJ20kdRTvvQHoOxYxKjdiSNRgIOlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767892939; c=relaxed/simple;
	bh=fiJ8Ak8N0DqPQ8hsWzUQi82t0f7UGQS8bWcCvsQoa5A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cdzkC5SE9tJAfXVypmN9jkqc/yqGyRZ0jj7s3LfseNhXrdpHd+v7KuRUUOo6VrqRqgCBuotI6P2z/4NMHibTYmaUcaHBlS+MieHzGY3hhg4VrMisEg8J8Me1b9FdbhJK74rzzgfljwUmDI6i1re9DZ7HrRiu7qWQdRPpXh+S/CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=yLh1c9wD; arc=none smtp.client-ip=209.85.210.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f66.google.com with SMTP id 46e09a7af769-7c75a5cb752so2498363a34.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:22:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1767892935; x=1768497735; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1SW/oHrRyDwWCvM2w5SYFXON2YrLi1Jknrfxsd+G1Eg=;
        b=yLh1c9wD42l5r1taw42wwJIkW0N5nWb9ffRJDNl51kj+14avKxbpQglKaPorAhdmNF
         GsgRDJo5kKXrrfbZzFmfzduSZ677C0dVarrymXb3xVB8/l8f+dXLofj9WAFw0GN4jcPr
         jujkftk24iCTqVrY8RI6MTc+NBLPph7wflkZ+exAyWbymoGmN/CIcZvx5InAqFbEK8VE
         YfUmYbqn+cvLo4X98Bje/VoxuIKJWdTqX5xkzSOe5ZVMwoNP0C4IdTZon41nMHlk/Tyy
         llSB5y9TMZAIOomjL/G2toq1oeaEnMeaL48i7iNvt4lyrK2fB/DkiMMXjXy81qd3Q7vN
         /f+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767892935; x=1768497735;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1SW/oHrRyDwWCvM2w5SYFXON2YrLi1Jknrfxsd+G1Eg=;
        b=UebWRLRGSlDusAQdkuo38+XBcbdEm1vUZYmG+oVnPu/KJFRu6G0rt5m4xs9jMcAdN5
         YpETb6MZIorHBRa8s9WutCjnzRoK0KXspQrkv+uosPEb/hIc8y2yPkV39rntcKGZUokq
         kNtw+7taOUC3+ADaKi+QFLc7v5Zy7Hlv3jhLYay9qA9397gzbMe+6bqENQSTLJhmBjOu
         VciRRFdc7PF+M2LxkIlEUm3hSjtuJ4adHafI+T7RmrDthYAmnTtDqZjq5H7VB5QzcDZq
         T2/GUPO8HcTZS+KFGPa1v/fP09pqBZx2QKPR6AkvfTGAkPfcLF7EKs8u+zsgWhFE77FA
         BzJQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+A3d2WCB0rwNpkB/w+vhYhiCgr8TH0sMB7SiCL9yj+oDDTMGgdFrZOxGbGBrIbHlF0+ur4oZa90ca@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6/BXLbzIqArS5iDDwD+91+CbbbsmRxC0uMFCeZH1red6bPiVD
	JxqEwOpJGPDP/KPPqWiHiZBvlOkH/IM/lNyCyFO0ErrZ3ULK57wrjLYQyGhV6bl08fY=
X-Gm-Gg: AY/fxX4TF0OyqcpD6dcH4Ah2chpHEdA//r6mLksqh67y2BgbhWJPwajqQRX89GdEbuL
	VE3hjGZj+30I2v3YNm5NWTjwn0e7biLAaGzHs1Nf3SUxPG/ku0xXv4hWIYpTGcyjv16oykTGH+h
	vQd7NUehxOn+cGwECZ4NcocZS9bESFgUt6eHe3IK9CNZXfnLVBlF3X5w7CWDL5ggyy2jovGL0gE
	uXHY3m1Z/Wg4gSoFWKiBb+A7kSWwPokxaun67kbvPz/oKrTbp/So2jyPDnXjTSOJV1c5lzTdkl7
	zG6gcRcmLhvIcKs0Kl/D13y+zXKjwtYqVPC1Ld911Bs5f8wlmAbuXCcTlaw4LQwYgVrS+NXXC9Y
	gTCucJTgvxZLPKrThjR7ORxWO49AskSQ6xCnzgNUeFoyP9blN7Epk34bV90vVvbUbuuGxfrEgA7
	aoSvyxh4IZBzthvulYwJ2QDoSy8+uGEl2tb2LIlHq0AExTReZD4Utd9CnOA59v
X-Google-Smtp-Source: AGHT+IFcIehPB6t75nYK3BRZJmTmobwhwkMsK8zvaWPkYVOm935nzOxjpeFTmHIO1X54xoz0QSwGQg==
X-Received: by 2002:a05:6830:2b0f:b0:7c9:5e2e:295b with SMTP id 46e09a7af769-7ce509e9b09mr4094630a34.24.1767892935467;
        Thu, 08 Jan 2026 09:22:15 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:c69c:7b5c:ce9b:24be? ([2600:8803:e7e4:500:c69c:7b5c:ce9b:24be])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ce478af813sm5880315a34.19.2026.01.08.09.22.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 09:22:15 -0800 (PST)
Message-ID: <0266f80f-cff9-4a65-9c2c-3663edb13cd0@baylibre.com>
Date: Thu, 8 Jan 2026 11:22:13 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/9] spi: Documentation: add page on multi-lane support
To: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>,
 Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20251219-spi-add-multi-bus-support-v4-0-145dc5204cd8@baylibre.com>
 <20251219-spi-add-multi-bus-support-v4-5-145dc5204cd8@baylibre.com>
 <aV-mpFCF_ET3AZ1B@debian-BULLSEYE-live-builder-AMD64>
 <c93a528c-39d6-4e29-b64a-ecf75032b60d@baylibre.com>
 <aV_em6a5vxi_AZGg@debian-BULLSEYE-live-builder-AMD64>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <aV_em6a5vxi_AZGg@debian-BULLSEYE-live-builder-AMD64>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/8/26 10:43 AM, Marcelo Schmitt wrote:
> On 01/08, David Lechner wrote:
>> On 1/8/26 6:44 AM, Marcelo Schmitt wrote:
>>> Actually, one more thing ...
>>>
>>> On 12/19, David Lechner wrote:
>>>> Add a new page to Documentation/spi/ describing how multi-lane SPI
>>>> support works. This is uncommon functionality so it deserves its own
>>>> documentation page.
>>>>
>>>> Signed-off-by: David Lechner <dlechner@baylibre.com>
>>>> ---
>>> ...
>>>> +- :c:macro:`SPI_MULTI_BUS_MODE_STRIPE`: Send or receive two different data words
>>>> +    at the same time, one on each lane. This means that the buffer needs to be
>>>> +    sized to hold data for all lanes. Data is interleaved in the buffer, with
>>>> +    the first word corresponding to lane 0, the second to lane 1, and so on.
>>>> +    Once the last lane is used, the next word in the buffer corresponds to lane
>>>> +    0 again. Accordingly, the buffer size must be a multiple of the number of
>>>> +    lanes. This mode works for both reads and writes.
>>>> +
>>>> +    Example::
>>>> +
>>>> +        struct spi_transfer xfer = {
>>>> +            .rx_buf = rx_buf,
>>>> +            .len = 2,
>>>> +            .multi_lane_mode = SPI_MULTI_BUS_MODE_STRIPE,
>>>> +        };
>>>> +
>>>> +        spi_sync_transfer(spi, &xfer, 1);
>>>> +
>>>> +    Each tx wire has a different data word sent simultaneously::
>>> In this example, the controller is reading data so the rx wires have different
>>> data word received?
>>
>> Yes, I tried to make that clear below by having a different value
>> for each.
> 
> Yes, that part is clear. What came a bit odd when reading the doc is that the
> first two examples ilustrate the controller writing data to the peripheral and
> refer to buffers from controller's perspective ('sent over the tx wire', 
> 'data is mirrored on each tx wire').
> IIUC, in this third example, the controller is reading data so we would describe
> it like 'Each rx read has a different data word read simultaneously', no?
> 

Oh, I see. There is just a copy/paste typo.

> 
>>>
>>>> +
>>>> +        controller    < data bits <     peripheral
>>>> +        ----------   ----------------   ----------
>>>> +            SDI 0    0-0-0-1-0-0-0-1    SDO 0
>>>> +            SDI 1    1-0-0-0-1-0-0-0    SDO 1
>>>> +
>>>> +    After the transfer, ``rx_buf[0] == 0x11`` (word from SDO 0) and
>>>> +    ``rx_buf[1] == 0x88`` (word from SDO 1).
>>


