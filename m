Return-Path: <devicetree+bounces-43553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A2085AB5D
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 19:46:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C20D1C21B6E
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 18:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65DB7482DB;
	Mon, 19 Feb 2024 18:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="jnsqGY4g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 608931D53C
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 18:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708368352; cv=none; b=a5bhOYfxBGknSSQUH7q43qS/oEMQI9C6JPzGQ3PD/lsnB789YyIOk0wFf4aNcv964+S4TPN8HjDUPQLG/R7fdZYAvXpBs+FTpMAP9+KmIXDh/tSk1nd4ERTkhNVz4kWH5se/slgh+9t9XCbSq0fGqH7xfTtVvnBss6P2KAVOpcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708368352; c=relaxed/simple;
	bh=kdcE/6CCzhJJnH+KggFm8+C+EXYKnGBXBKohJ8u9N+k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gYql/1OJ4KfAMH4CKXYEN4tTq/OoQdvkMSfQ2UV564aQzNUbOIsFNwdiLtxN9adG94fcTra1BIJh9tzOX9exNkOCRIxA/OFA4knpZeV615byoyYZkS5EizhmYo4EghN4kNEvrLXrJllpp+tuC+TF80AXVLqVGohh3Zq1AcvX3Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=jnsqGY4g; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4126aee00b2so4463335e9.3
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 10:45:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1708368347; x=1708973147; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KWwwxgG2OB0SooVYwQHE8K610yUTtlrZSvRyhvzFtc4=;
        b=jnsqGY4gI01OhlA5g/ucgxbuhuPyVtfjhjXMNRhIDIy1oquw8omrB1ZCTdCiWSNzcV
         v/k52Aa7PjMqm6s1L67tTeiMbvhlcRxLs1PHWUU4RRBk2nV13AsXxhS1Wz4K/Ra97tvL
         YogymnxsZTrI2xAx+6Etp2iMVLsN99FVpYd9g0+h/Rf3DG5cV2+i4Pa5ThiDYpxPP/7L
         P6XA4Ym0pqar6F9RwWPTHOwuT2CUZUZAMvllSBOf+U+tVyFT+yb/Dg/KlYrTiV0nTBRV
         nAxXPw17NWK88cIFOWXOVGOoS+fR5+TeaAdS31QNH962BKRO7rNlMpzRibyXy5IPrVSb
         QP7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708368347; x=1708973147;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KWwwxgG2OB0SooVYwQHE8K610yUTtlrZSvRyhvzFtc4=;
        b=XE36adJIm+BL9Jr9d/pLRz+5yuvb2aXxMOpmNY+kdet0Nhc+LDt/nPM6ydzWIsDErD
         NduCgQKnpwpdEkHAz5Jc8LpavUz6Jr/9yuBcJuFbNxywgoJfAz8vDv448XSeHrUVrhyr
         SjSl/zOCvEXniXLdOQYO81UR3k8kuSMGN4gZsTh5/t3DPIJVpuR0E1JHLqFL9ChTz58c
         f/fkEda8RENippW/L41WRa2Gh+cjaIOFOeCWMO59KLAjva2GU4zqL6/VurkoJOl/mCCw
         moVWSfyYLHdXp9W/0aourM88GPVBa22M2+Q9PyWziq264YPGldat/NHgHmb5UDj02r4p
         JS6A==
X-Forwarded-Encrypted: i=1; AJvYcCUn/iTM6NMvmolldi7r64aU8PQtk2rTgCdvlPlYv6P8NnKbT8yY6Ck5pp0E4BgAirBD51y/kPntUaK963NUkshT5ROwu+qXp+YBTw==
X-Gm-Message-State: AOJu0YwET2A3QmXupjxf9QE8m2O6m6Nf6migGCrxG/uETPP0ong9OAkj
	Gwmd7eNj1sCvExcMg6/FuGDTfIDGaF2fGp+3Iye9mQ2cbLZAr68TNwQOKKmgz5A=
X-Google-Smtp-Source: AGHT+IEzJnyqvoY0JTUvduENa+etFLCkIQypaWXWPboZkbdJX7MkthlOevIHC/FsEXpsfEuDyJDxBQ==
X-Received: by 2002:a5d:47a9:0:b0:33d:3a06:acbc with SMTP id 9-20020a5d47a9000000b0033d3a06acbcmr4406975wrb.70.1708368347556;
        Mon, 19 Feb 2024 10:45:47 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.20])
        by smtp.gmail.com with ESMTPSA id q4-20020a5d5744000000b0033b47ee01f1sm11071728wrw.49.2024.02.19.10.45.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Feb 2024 10:45:46 -0800 (PST)
Message-ID: <0798f21e-1ab6-4fd2-b7e3-18f35163fad1@tuxon.dev>
Date: Mon, 19 Feb 2024 20:45:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] ARM: dts: microchip: sama7g5: Add flexcom 10 node
Content-Language: en-US
To: Conor Dooley <conor.dooley@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mihai.Sain@microchip.com, conor@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 Nicolas.Ferre@microchip.com, andre.przywara@arm.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Cristian.Birsan@microchip.com
References: <20240215091524.14732-1-mihai.sain@microchip.com>
 <20240215091524.14732-3-mihai.sain@microchip.com>
 <20240215-lustily-flick-69cb48b123c3@spud>
 <PH8PR11MB6804E9353A8EEBD2B829D8B3824C2@PH8PR11MB6804.namprd11.prod.outlook.com>
 <20240216075609e58aeee4@mail.local>
 <cfafd563-1387-4775-bcb0-434ce3774827@tuxon.dev>
 <20240216-eleven-exposure-dde558e63aaf@wendy>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240216-eleven-exposure-dde558e63aaf@wendy>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 16.02.2024 11:35, Conor Dooley wrote:
> On Fri, Feb 16, 2024 at 10:24:13AM +0200, claudiu beznea wrote:
>> On 16.02.2024 09:56, Alexandre Belloni wrote:
>>> On 16/02/2024 06:58:10+0000, Mihai.Sain@microchip.com wrote:
>>>>> diff --git a/arch/arm/boot/dts/microchip/sama7g5.dtsi b/arch/arm/boot/dts/microchip/sama7g5.dtsi
>>>>> index 269e0a3ca269..c030b318985a 100644
>>>>> --- a/arch/arm/boot/dts/microchip/sama7g5.dtsi
>>>>> +++ b/arch/arm/boot/dts/microchip/sama7g5.dtsi
>>>>> @@ -958,6 +958,30 @@ i2c9: i2c@600 {
>>>>>  			};
>>>>>  		};
>>>>>  
>>>>> +		flx10: flexcom@e2820000 {
>>>>> +			compatible = "atmel,sama5d2-flexcom";
>>>>
>>>> My comment here was ignored:
>>>> https://lore.kernel.org/all/20240214-robe-pregnancy-a1b056c9fe14@spud/
>>>>
>>>> The SAMA7G5 has the same flexcom controller as SAMA5D2 MPU.
>>>>
>>>
>>> Still, it needs its own compatible plus a fallback to
>>> atmel,sama5d2-flexcom
>>
>> I agree with this. Though, flexcom documentation is subject to YAML
>> conversion (a patch has been re-posted these days [1] and *maybe* it will
>> be integrated this time). And there are multiple SoC DTs that need to be
>> updated with their own flexcom compatible (lan966x, sam9x60, sama7g5).
>>
>> To avoid conflicting with the work at [1] and postponing this series we may
>> do the update after the [1] is done.
>>
>> Let me know your thoughts. Either way is fine by me.
> 
> I'd be inclined to say that if we are gonna take a shortcut here, then
> this patch should add a specific compatible so that when the yaml
> conversion goes through you'll get a warning about this being
> undocumented rather than silence.

All the flexcom nodes from all flexcom capable SoCs (including SAMA7G5)
have the same compatible introduced by Mihai.

I don't like the idea of updating only the DTSes, either update all DTSes
and documentation or do it as it is already done (with sama5d2 compatible).

> 
> A resend on the flexcom patch is required though, the rebase was not
> done correctly, so maybe Balakrishnan could "atmel,sama7g5-flexcom"
> add with a fallback to "atmel,sama5d2-flexcom" while they're fixing
> it up?

I agree, and DTSes should also be updated along with documentation.

With this we can go forward with this patch and avoid conflicting with work
that is currently in progress for flexcom.

Thank you,
Claudiu Beznea

> 
> Cheers,
> Conor.

