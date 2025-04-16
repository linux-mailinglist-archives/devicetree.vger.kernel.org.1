Return-Path: <devicetree+bounces-166731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C1CA884A7
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 16:24:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B054A17F1B7
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 14:18:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D6D927A939;
	Mon, 14 Apr 2025 13:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="nSue+Mhi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AD225393D
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 13:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744638979; cv=none; b=CJDFr6iNXP4f88oJ2syBm5CqSulbQhSJNW5mHLysHH/r8jUY21bmi6uqAxxGuqGX6Hf7BltXsxVA4+eLO2iEH70WEvr8vwxB837UElOF5J+3DqpCuY0Dp8ziTjrrNmcuFWq2i73R0vHkW5CEz7SijUTPtFYrojWSBI+UWaqyMXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744638979; c=relaxed/simple;
	bh=uhXCK6Zf6sye5f+kTXxkk6TOXTEo1CmGh0O5s/dDSHk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Mz+QIiyfBRNf2NxBui3sI42rgbzNZTeDzZRtF7aEcy3GMI0voS1LDM8rB4gT+KSIut0/uaYvk0Mf+aJz7QODHcq4T/IH9fYkXWeaFICfw6fuFLM9tGjde7q+y5+EAfA3MtFC7spsMB8Lj9hWywSJNmmJcdETB3ueSxEoyteJU9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=nSue+Mhi; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43ed8d32a95so37068475e9.3
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 06:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744638973; x=1745243773; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wSPX/TbzronNETf+6T1qob9Fj8RgDBqBjqNXnAsD94g=;
        b=nSue+MhiY3cycxAybvNK3uHNe2NCl9lvw9NNR6a84Yb+byMHjsJFem+SAbZb3J2cV8
         BkWS4aXWxAoqeVooRYXHv+w07YAh7IWJ90/7AeJm0NYd16wfICPG8LdX9hrorDpsr48r
         0BeMMwyB8jVatjgS1m/NUOFr9/CzehvhwQ7G4XcIsK5xzEYDJi+qH1INZ3fAR0dRZVTL
         zw9XPCSkroOKVcz9GQdK9kEnWqPqktqlcsDD6tge/ejf0pBPSGv70fEbPtKoJtD5RCoy
         +hwOA6QKAObXpPETcI7hb5s+KMBBVy8HB9cw0rNHKGO/z2a7RhhWpQ+ZQ6lnBW1OuAI4
         bMbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744638973; x=1745243773;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wSPX/TbzronNETf+6T1qob9Fj8RgDBqBjqNXnAsD94g=;
        b=tuog641qb5cASeJ/0Fi6kaVajjL/ZusInqII9rgPWZoZC9GqEUChijx33PWS0HaheC
         cp0RD7ldn4OMpLuYdMl2KkQPWd9rluZF+dMioK3TxzpZKCTUmfZT5POn46v3UmbUGkh0
         l+xoC4y/67c3U8eO2eNoMLvH3Rat3MO3Dy3NMrFTlM52RPqPYraCycbX3w4m1XjI9hh8
         vH8ixbWyhs/X4DOXDDirIbK+muEf7mrHGhHMjcTRpBaM3CiOdABmG23t+n/gGUpSiudc
         zaV31E2QLLIyBnEF/veZVydqXCM7LI828dj37IHLHPFHr3aMsta4acv2cHqKmCJeIgcR
         wHsw==
X-Forwarded-Encrypted: i=1; AJvYcCXAWNoo/GlKQqT0907M0twMNLguldQrxdhVA6pn5yC7sBbSQqZfHY+RE1ABLu01PxqKPUYBTGFRUKhG@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6q/rThSXZL39U45ycU+r2pPeXfi5nBYx6OJdmWk5VLqdZA+Ou
	G+oynoDChrMsUdjuQcQcOkWFBtsN5GSdQLYIpl+0oGR5sNar9AWekDul3yg/yNk=
X-Gm-Gg: ASbGncvvLcpkDrRgs9Kwrhul3+Cwse+R/cqVTz/bvA5vK6s1tTw38YFzOdSGn5K+8S3
	Noo052DxrQy5e29naWubj6wsxoa0GciBfmz93wn1jbKpRzGPmuPOdpetSVJsmaaAu6xGcHtmRDG
	sEYacWqOYpzLfU2+vBJUXLhFHIMGNE1wR5+3BZAZmsmCH75km5ImKZoDem4SaFpEqRLzndoJ1Rq
	J0FEdfDF+oEC4G21dsOgeFPKlQBe9XC+nU/A8OQ/mr+LcoueTT22yvXnWpTi82GIdSTaiUUs8vJ
	UNgzy5BvDmEg+aBh569nPD4/mBGDlwaN6YsDrksx5V2cPGbma8eB0/Js6rXTxCkwZno0zp+ZOLH
	6NTtwT7bN7Br9
X-Google-Smtp-Source: AGHT+IEiisaCyzTv/c4YGT/191xkPS9XSCL07GXPd0MhBX6X1cLo7SxgbsZldJJbAyTaapzLfN0VMA==
X-Received: by 2002:a05:6000:2507:b0:391:6fd:bb65 with SMTP id ffacd0b85a97d-39ea51eef37mr9727002f8f.9.1744638973332;
        Mon, 14 Apr 2025 06:56:13 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:5ee:79d0:2dda:96f4:b94d:164c? ([2a01:e0a:5ee:79d0:2dda:96f4:b94d:164c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae97751fsm11004403f8f.41.2025.04.14.06.56.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 06:56:12 -0700 (PDT)
Message-ID: <97cfeafe-7044-4f06-b2e6-e4a158419473@baylibre.com>
Date: Mon, 14 Apr 2025 15:56:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] rtc: mt6397: Remove start time parameters
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Eddie Huang <eddie.huang@mediatek.com>, Sean Wang
 <sean.wang@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-rtc@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250109-enable-rtc-v3-0-f003e8144419@baylibre.com>
 <20250109-enable-rtc-v3-4-f003e8144419@baylibre.com>
 <20250411133609a1295543@mail.local> <202504111339359e840246@mail.local>
 <968001f7-96d1-4ad5-8c36-28cac5dc30f1@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <968001f7-96d1-4ad5-8c36-28cac5dc30f1@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 14/04/2025 13:09, AngeloGioacchino Del Regno wrote:
> Il 11/04/25 15:39, Alexandre Belloni ha scritto:
>> On 11/04/2025 15:36:12+0200, Alexandre Belloni wrote:
>>> On 11/04/2025 14:35:57+0200, Alexandre Mergnat wrote:
>>>> The start time parameters is currently hardcoded to the driver, but
>>>> it may not fit with all equivalent RTC that driver is able to support.
>>>>
>>>> Remove the start_secs and set_start_time value setup because it
>>>> will be handled by the rtc_device_get_offset function using the
>>>> start-year DTS property.
>>>>
>>>> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
>>>> ---
>>>>   drivers/rtc/rtc-mt6397.c | 2 --
>>>>   1 file changed, 2 deletions(-)
>>>>
>>>> diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
>>>> index 692c00ff544b2..d47626d47602f 100644
>>>> --- a/drivers/rtc/rtc-mt6397.c
>>>> +++ b/drivers/rtc/rtc-mt6397.c
>>>> @@ -291,8 +291,6 @@ static int mtk_rtc_probe(struct platform_device *pdev)
>>>>       rtc->rtc_dev->ops = &mtk_rtc_ops;
>>>>       rtc->rtc_dev->range_min = RTC_TIMESTAMP_BEGIN_1900;
>>>>       rtc->rtc_dev->range_max = mktime64(2027, 12, 31, 23, 59, 59);
>>>> -    rtc->rtc_dev->start_secs = mktime64(1968, 1, 2, 0, 0, 0);
>>>> -    rtc->rtc_dev->set_start_time = true;
>>>
>>> This is going to break the time for people upgrading their kernel, you
>>> are unfortunately stuck with this.
>>>
>>
>> To be clear, the breakage will happen when upgrading the kernel but not
>> the device tree with 5/5
>>
> 
> Yes, you're stuck with this. Devicetree has to be retrocompatible.
> 
> Besides, this start_secs is what gets used by default, and the start-year
> devicetree property should take precedence and effectively override the
> start_secs default.
> 
> Just keep it there.... :-)

When you boot your board for the first time, is the date January 2nd 1968 ? If not, that mean it is 
used as a finetune offset year.
IMHO, mktime64(1968, 1, 2, 0, 0, 0) is a workaround for the rtc framework issue we try to solve in 
this serie because start_secs is negative (1968 < 1970). Now framework handle the negative value 
properly, even if you keep mktime64(1968, 1, 2, 0, 0, 0) , the device time will change. I prefer to 
notify you.  :)


TBH, it's hard to follow the logic, so I've a question:
If I push in my V4 a framework fix that drivers using year < 1970 will need to have a new start_secs 
or start-year value to stay aligned with there previous value, do you will accept it ?

Because drivers implementation are based on a bugged framework, so it's impossible, IMHO, to fix the 
framework without impacting date values.

If you don't want to touch framework, then consider offset year in the drivers to reach above 1970 :)

If you have a solution to keep "rtc->rtc_dev->start_secs = mktime64(1968, 1, 2, 0, 0, 0);" without 
having the date changed, don't hesitate to tell me, I'm not forcing for a specific one, just tell me 
what you prefer for the V4.

Regards,
Alex


-- 
Regards,
Alexandre

