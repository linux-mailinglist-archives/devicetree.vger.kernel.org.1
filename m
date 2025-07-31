Return-Path: <devicetree+bounces-200983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3F0B16D95
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 10:33:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E5315162D7B
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 08:33:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91DEB244695;
	Thu, 31 Jul 2025 08:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="PL+yU4sX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 983641F5820
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 08:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753950827; cv=none; b=XzE46exCmHYU4nhJDT81M2vay1BjATF2aatu3kasJsQhzSzMPZ5urvpyVhGpdJmdbyqOHXZuDBiqyWFnP+PQ6tVFhVnJYmJyrWObIzFo/eTeL+h/eQAo5V/qWCK5qoyd7/s7NBHrFa5Kd7lsBD3ODGgeJJ7/MBlS8W7/03lW/9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753950827; c=relaxed/simple;
	bh=y/zXn2SImyimk9UNJuEfXeNDvLzXETyjaOSknrFWVFQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uw2D8wKrkxPxd3xexDE9haP1qk8HTiGCPoTIL6VHcTzTpK6oSEcMnuWonSdPvmsyeR+seJ45Ljw4CKOI/fxd1KTquIoIqDleaprEJH0IwWS7VnlusB8XWgs8UPuwG/xvgtqeS2Vixi3nqvOYd8up29MEDvcFw054Nk714zH26wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=PL+yU4sX; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3b7886bee77so505850f8f.0
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 01:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1753950824; x=1754555624; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tGJP+XM2QRy3xZpyYzAjGI2yVY6aGwV1yQQa+Igvnt0=;
        b=PL+yU4sXVHINZxJrvXHClWNZFCRoHSNT1rhS293TCjd/6DBV4LvtFpgvLreirKRC6N
         kJ5tBEvT8fSWGdTMttkkWJmK/ay6ju5M0GpdkdgqM0G9MKC/s8aAFoLkYFgwhaqdu3op
         Dm5jE48Khx+jQHTHXA9SvxS9bMkdq4jATUZjbh40mwkDeybWtwysLjDQ1tvZC6HhljIF
         /d5sQKILbgG2z2hRqOphYYzlxAWtj/9Pv2dy0cR/iXgNAIKOPfyH3AQhC+d2QcftOBjZ
         iADQtGYQnggzSPkaOYoxW3h5Qoq8kyvcYnrIh1qmz67LTpNyi1OIjC9kgmvaOpRNf5G2
         DfdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753950824; x=1754555624;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tGJP+XM2QRy3xZpyYzAjGI2yVY6aGwV1yQQa+Igvnt0=;
        b=gGlm3UNTdvBw1Nv2fHI1lb6pYCxd097Wo5vnxzh8pVdAY03bY2TK6S86TtJuN6HYMN
         eV1sCDrvfGENAEKZhH0nPPoM39kITrZLnQ42Nput/ZWmXqx/+RWqpicvsemeWSBo3vvg
         I+u6lT9ZpRYnyI+r4AZvTCBlvJV/fVN1vdw2S5QEVjE/w1PFyyEcdzdBgoX/iWjMtbQq
         wZ3Fm2YQsb02c2zRSrIOY5x0Sc3qAhanNgz4jDKSQR25gia5p0GQRVJueIpHKFwhhlEU
         lDuI5Qa/sZh8819H0tCvl9DruK8QX/urVODKhdEWpFhy8XMhc0405jJJjLryCOZSAcr5
         l3xA==
X-Forwarded-Encrypted: i=1; AJvYcCVszbJ6XUcIGQi+myq/ta4wcVl5RWflWYPRJwwnNlZk0+irWVlTktEFTXLApnAPWS8505QcI8+h/qv4@vger.kernel.org
X-Gm-Message-State: AOJu0YwXeO4hjtjTF3GPGKWJMsj5vL/0hKZDj8QO2gDX8CiAn/XXf4B7
	Ea3TuA3y7kbHhECxTTpuB+660EmoWYMp3Ljt2qKoMPht9Z36MAY3vKRW1a1+A6nVgRA=
X-Gm-Gg: ASbGncuVoAeUzTAdKALxN/s+m15MqVd5021wdfhIaL00f8+CmsZHTP12S6rh2xHuknc
	x6DY2IquSzNATay1oINSk1QNocvv3tahHRJ0xiX9V+6Ur/1//kf/21w6WLS+hObqAOctyrkIoJW
	xmUYzvWhZfvjKAEjd5iYhlmrgFashYb8rkLRn9+mOUcD9UEGN1Yvq0Ln9ABSjnBFSQ7SmLo2ZHJ
	chsFhuwBcW5P5zHRu0tqQjS9GTvEPSZpxq7xBk40anGxXPG75SOsFug0K2EgVV/cysPf6v6JPKz
	8dc3cE8aaO2HiJtnsXbrjajhTKeMSlk5uuW1rTQae38yk4od/0sgmiETobuqzsIgHshf8kBP8jg
	QEmAVQLIT3jl8BAaoIrA56sY2R8SuplhXkEdLzG34
X-Google-Smtp-Source: AGHT+IFcq/n9pFKDzQrWbt3Evql0rRci2sD+tCY8uF41SfcY8vu514kFil4FRbrrxqY3Zeg5MXv0vw==
X-Received: by 2002:a05:6000:2907:b0:3b8:893f:a184 with SMTP id ffacd0b85a97d-3b8893fa74bmr257918f8f.52.1753950823904;
        Thu, 31 Jul 2025 01:33:43 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.30])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c47908esm1586755f8f.59.2025.07.31.01.33.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Jul 2025 01:33:43 -0700 (PDT)
Message-ID: <100aa0d2-68b6-466d-95e6-0acfb259cf12@tuxon.dev>
Date: Thu, 31 Jul 2025 11:33:41 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] net: cadence: macb: sama7g5_emac: Remove USARIO
 CLKEN flag
To: Ryan Wanner <ryan.wanner@microchip.com>, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <cover.1752510727.git.Ryan.Wanner@microchip.com>
 <1e7a8c324526f631f279925aa8a6aa937d55c796.1752510727.git.Ryan.Wanner@microchip.com>
 <fe20bc48-8532-441d-bc40-e80dd6d30ee0@tuxon.dev>
 <848529cc-0d01-4012-ae87-8a98b1307cbe@microchip.com>
 <681b063c-6eab-459b-a714-1967a735c37d@tuxon.dev>
 <76e7b9fc-e0e2-4d21-ba5a-dac831522bb2@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <76e7b9fc-e0e2-4d21-ba5a-dac831522bb2@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 29.07.2025 18:51, Ryan Wanner wrote:
> On 7/26/25 05:56, claudiu beznea wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know
>> the content is safe
>>
>> Hi, Ryan,
>>
>> On 7/21/25 18:39, Ryan.Wanner@microchip.com wrote:
>>> On 7/18/25 04:00, Claudiu Beznea wrote:
>>>> EXTERNAL EMAIL: Do not click links or open attachments unless you
>>>> know the content is safe
>>>>
>>>> Hi, Ryan,
>>>>
>>>> On 14.07.2025 19:37, Ryan.Wanner@microchip.com wrote:
>>>>> From: Ryan Wanner <Ryan.Wanner@microchip.com>
>>>>>
>>>>> Remove USARIO_CLKEN flag since this is now a device tree argument and
>>>>
>>>> s/USARIO_CLKEN/USRIO_HAS_CLKEN here and in title as well.
>>>>
>>>>> not fixed to the SoC.
>>>>>
>>>>> This will instead be selected by the "cdns,refclk-ext"
>>>>> device tree property.
>>>>>
>>>>> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
>>>>> ---
>>>>>   drivers/net/ethernet/cadence/macb_main.c | 3 +--
>>>>>   1 file changed, 1 insertion(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/
>>>>> ethernet/cadence/macb_main.c
>>>>> index 51667263c01d..cd54e4065690 100644
>>>>> --- a/drivers/net/ethernet/cadence/macb_main.c
>>>>> +++ b/drivers/net/ethernet/cadence/macb_main.c
>>>>> @@ -5113,8 +5113,7 @@ static const struct macb_config
>>>>> sama7g5_gem_config = {
>>>>>
>>>>>   static const struct macb_config sama7g5_emac_config = {
>>>>>        .caps = MACB_CAPS_USRIO_DEFAULT_IS_MII_GMII |
>>>>> -             MACB_CAPS_USRIO_HAS_CLKEN | MACB_CAPS_MIIONRGMII |
>>>>
>>>> Will old DTBs still work with new kernels with this change?
>>>
>>> That was my assumption, but it seems it would be safer to keep this
>>> property for this IP and implement this dt flag property on IPs that do
>>> not already have  MACB_CAPS_USRIO_HAS_CLKEN property.
>>
>> So, this patch should be reverted, right?
> 
> Yes you are right, more testing I see that this could break older DTs. I
> am new to reverting patches, do I send a patch to revert this and would
> it be an issue now?

Not sure about the approach now! Looks like this has already been merged
https://lore.kernel.org/all/20250727013451.2436467-1-kuba@kernel.org/

Thank you,
Claudiu

> 
> Ryan
>>
>> Thank you,
>> Claudiu
>>
>>>
>>> Ryan
>>>>
>>>> Thank you,
>>>> Claudiu
>>>>
>>>>> -             MACB_CAPS_GEM_HAS_PTP,
>>>>> +             MACB_CAPS_MIIONRGMII | MACB_CAPS_GEM_HAS_PTP,
>>>>>        .dma_burst_length = 16,
>>>>>        .clk_init = macb_clk_init,
>>>>>        .init = macb_init,
>>>>
>>>
>>
> 


