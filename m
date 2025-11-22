Return-Path: <devicetree+bounces-241381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C62C7D319
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 16:09:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 59239343ABB
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 15:09:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6624128D83F;
	Sat, 22 Nov 2025 15:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="eUCMvaYY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1E726C384
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 15:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763824179; cv=none; b=SptBnp5s73oyWnwIi7uDbSvdt79cKgGaRtr0cc2uCIEZY3SsKnmjc63rxnxXTt0m24oXBtDFugYGUqYfQZeiTpvkJiaHgwEcGmlkx+6cycXRVKlnGMaSQYpAfgCXVH9O5u5HSrbpSypVrveU54x85QU0w75mFnavtbSg30V5hLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763824179; c=relaxed/simple;
	bh=bD6IiCa7MG1LDG3Vy/sVRmJM8FL0GK3kXQ8ix0ygN3g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=snS+Wry+OKEMod72X92MAayqREtpYEMCLeeBPaRBJ/lCoRP9vZJyOojdQUECj0TNWT6bk/W4WQoaLMCpBYy2enNfWa2hXpP1vW/0JVrrXWkdVpFKFyKrWtavNsRzTm9IKv9WNSirvSKEy//sdLUn5YFo0N+oumyZ9nwqEftceXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=eUCMvaYY; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-3d47192e99bso4718787fac.0
        for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 07:09:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763824174; x=1764428974; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XJ00G5DdHxmUWt9ADxO6Ey9yvGgI73+lh18WVqepTD4=;
        b=eUCMvaYYlDNGT02uOVYjeo0urVOipryLCetZu3yPMbqm15El+ya9j9wwqSuDn86VTj
         brO92kqLBeoTcBJhKd98Bqq3aD3D6NSQMXYEE4OLNyEemgVT6E/yDZiy3kxEWb8IwW9Y
         pXKa55iFVK7CfVWMY8tfdJ3ekeHw1SMZx8Sizq7UnTRpi0ZFj/rIkr4HNhJZ5ILyfBKC
         15tU9EdSwQGyqls0j9+UUVJzAk28puLJWY9X7rQWknlYyTiEUjoFDNJp12hw7tPTV01h
         k/DmBQMRW7C6hI/KSVIpogrkyucwl0Btjn/dygS6Hw0Q2Lp1GlkLAqTSVAnEzC4iGvbD
         5UyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763824174; x=1764428974;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XJ00G5DdHxmUWt9ADxO6Ey9yvGgI73+lh18WVqepTD4=;
        b=PibXTPgbeaoxlgNpF3SElORJv4AFTtd4Pfn2fa/wPfB9s8ivoyLPfvfS3zYUo6FfYa
         nIlU/AzTLEuzU6Jvo/BxUyO6XQ//sFQaL+5KH4IAKCtQsiZTvr5aXC6O8IdPof7cVLxN
         KaesTpH5zLL2vHVoyaaLA/h2e37mHrncmcpaaLAe3HKxlKuUrn9M+/UXj9o1bjNu2kyK
         rBqbTYW5/BqIupDu2oY1kUt8OuRAQbFccoMaO3VB35LbAHlfj2BeyZLcK4kwc8YZgxVL
         KS/uKyrNpwOulG5ykBnGeSSpAxSGQgR9gT0HmIS6GAeppazZYLYAqGyG4MjC91t4r59J
         QK5A==
X-Forwarded-Encrypted: i=1; AJvYcCXL7ZkRpijrj3GXLm188r5MFv5IZ2CqaLrb9zzltMdm5bcbUqRUt5ZzGnZIce58pmOYvzU5ONWi2s/P@vger.kernel.org
X-Gm-Message-State: AOJu0YwaUPAb93If3LC9P2jsGesVMvmMezkofF26JbJeYbnS1bFl9R/c
	8wqsNVeOaAglTH3YPGD+QN5B2qCFuc/thfpv9LxDGxGuMacz/6AtcVbE7aSUDSlTNmk=
X-Gm-Gg: ASbGncsAAl68kZK9xPJ6gmTnq3LhZoz4lDqDFZvbfZNuW1j8AGkRN4Tfq7cdmPoc8uT
	D5//KU12HwGPtQ3T8H/xFjoDhG8ODn9OUyYTU4LnnJu5yQve0mr6ArAq3tBX+gFx3leHWOl5VAs
	s1N0ai8JKZOSgUp9dH8I3LkNG7uy5m3+l7rVikzx1ZketQqF3HHc7wXdSxwgb16UmRBq+zXs4gp
	VVm/R8vP9snpdttoa2nh3RYQLM2m0Vv0M4W+V5C+K64wOS6/iJnK/iFh9MR2jNKJePM20DcSe0a
	4V5fGY46aK82nv3zPBpWr7wm8SCIU2OrFHu5dsYJp0quIbT6+uEYRNJ5ijudE4xtQc4qIG/VRYV
	3XZoO92wswj7a8Aa0c6/FCNdnaPLayhhRqiulmnLfTf4d9QOGo0SmHC46X51qbIjSWz0wi3Nkz0
	9l2B99fF+tmcCTVx9yQyK8mIOBmmnWZd0EdFY/ssuHNsqH2AYfHeEXrtEwqUHy
X-Google-Smtp-Source: AGHT+IEQOaRdqKonG9tlK9tE3Ji2R9zXetxeakG5C4CdmSrR6Ade+eh+1BwXwf4Y4MB7MZrKyrAlPg==
X-Received: by 2002:a05:6870:4409:b0:3ec:64bf:ef5 with SMTP id 586e51a60fabf-3ecbbe84eaemr2904401fac.27.1763824173974;
        Sat, 22 Nov 2025 07:09:33 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:e782:93d8:7c2f:f9df? ([2600:8803:e7e4:500:e782:93d8:7c2f:f9df])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ec9dc88896sm4056963fac.15.2025.11.22.07.09.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Nov 2025 07:09:32 -0800 (PST)
Message-ID: <a61ad3ae-b511-4af6-80a2-590fc05b1bfc@baylibre.com>
Date: Sat, 22 Nov 2025 09:09:29 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: iio: adc: Add TI ADS1018/ADS1118
To: Krzysztof Kozlowski <krzk@kernel.org>, Kurt Borja <kuurtb@gmail.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Tobias Sperling <tobias.sperling@softing.com>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20251121-ads1x18-v1-0-86db080fc9a4@gmail.com>
 <20251121-ads1x18-v1-1-86db080fc9a4@gmail.com>
 <32e76bff-f535-40ce-88e2-7bbf7da87620@kernel.org>
 <DEEO8SSA15XY.1SDBZEILR5AHM@gmail.com>
 <2676d37e-fe3c-4504-8990-fbee0ce8407a@baylibre.com>
 <6ec98294-82b1-4d3e-a7b6-95cb1d65f206@kernel.org>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <6ec98294-82b1-4d3e-a7b6-95cb1d65f206@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/22/25 3:34 AM, Krzysztof Kozlowski wrote:
> On 21/11/2025 23:40, David Lechner wrote:
>> On 11/21/25 2:56 PM, Kurt Borja wrote:
>>> Hi Krzysztof,
>>>
>>> On Fri Nov 21, 2025 at 2:10 PM -05, Krzysztof Kozlowski wrote:
>>>> On 21/11/2025 18:16, Kurt Borja wrote:
>>>>> Add documentation for Texas Instruments ADS1018 and ADS1118
>>>>> analog-to-digital converters.
>>>>>
>>>>> Signed-off-by: Kurt Borja <kuurtb@gmail.com>
>>>>
>>>> You did not test it before sending, so no full review but few nits to
>>>> save you one round of reviews:
>>>
>>> My bad! I will fix the errors. Thanks!
>>>
>>
>> ...
>>
>>>>> +  interrupts:
>>>>> +    description: DOUT/DRDY (Data Out/Data Ready) line.
>>>>> +    maxitems: 1
>>>>> +
>>>>> +  drdy-gpios:
>>>>> +    description:
>>>>> +      Extra GPIO line connected to DOUT/DRDY (Data Out/Data Ready). This allows
>>>>> +      distinguishing between latched and real DRDY IRQs.
>>>>
>>>> I have feeling that you miss proper handling of IRQs (e.g. active level)
>>>> on your board.
>>>
>>> Can you elaborate? Should I specify active level here?
>>>
>>>>
>> The problem is not about the levels. It is rather that the behavior of the
>> interrupt when disabled/masked is different on different interrupt controllers.
>>
>> On some controllers, if an event happens while disabled/masked, it "remembers"
>> that and will trigger the interrupt as soon as it is enabled even if the
>> condition doesn't exist anymore. Not a great hardware design IMHO, but there
>> is real hardware that does this.
> 
> Isn't it misconfiguration of trigger as I said before? It should be for
> example edge, instead of level?
> 
> Best regards,
> Krzysztof

No. It it still works like this for edge triggers.

