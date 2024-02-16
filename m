Return-Path: <devicetree+bounces-42424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 065C38577A5
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 09:28:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A3141C21321
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 08:28:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D61B51BF28;
	Fri, 16 Feb 2024 08:24:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ZZ3VGyvk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23F117BC4
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 08:24:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708071858; cv=none; b=Pawjxe59KCdT/JLU6Yajm4jtl5jVU26ZYP8xeCn2fVf12/O6asPRiILJcCcKhMNNjO93mHVc+HXxr0UmTaSaeXDBZpTwRppknGlSLGAmUY8a+NbTHjOcAcob4g+Dl6TsSlLdS2irhfHwUbV/dI1jKoZkg+AjP0F9YJmraTmGETM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708071858; c=relaxed/simple;
	bh=LRdXuS6SlWoXUj3BpsfxkRzGVkTWSDWlYOUhpIX3lB4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N4OWzWssN6qAyvcl/JDP+QEECF0MxFbhjNtKvu8llJa8pqvGys4Sae8n92k193HAkSEaguAD5JHPRXbtTi6/qyMpgpobnblIdytnO21KMKgjq9muC6zx0cUtXvt9xxud4KsQgjBDPTdCvixhGQkQpMlEnzwOAlSEn4aThxHl6tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ZZ3VGyvk; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2d109e82bd0so21277261fa.3
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 00:24:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1708071854; x=1708676654; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5+eVmXDTn4hL2mph2w3UqRUyhBuuKz04HCEJ0eag7JE=;
        b=ZZ3VGyvkQaJOLpIP3xKVr8SVqAm8wfHHDWNvA2U0oF40bZjwKGzb+U11pfGHBaotBu
         ulZzolMWgD60xmgO4B/uym7QGdy4LmS/WpTe51lQe0/TXbySCOPt4Tgw/kldEvkl9ybS
         INzeGKH7zU8iRILJyY3GXBr36QNSIJInoAv0JPqK4kPqKeylXWHu9qNDRe0BKaGmjuAr
         TxCPufDI7IOGXgFjQQUQAI6OOmJvdFnSQgERx36Lkgt3ynrA3cm6fNtHmlpuSqeykile
         KpgYMUQqXQezu0ptfx0lK/wJ1ZaHzKo5bLgnSOA5VM6YGgQOFusDlC1nsoiRwrCBIwAJ
         Z6kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708071854; x=1708676654;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5+eVmXDTn4hL2mph2w3UqRUyhBuuKz04HCEJ0eag7JE=;
        b=BiOA5MnCbtI0MXTZj7ZVKBVZAum4wbDmbE90vocYBbBlTKkSzY3ELLpiWptD3t02ib
         zC8+x7lJreEHXKOhagVPHpgyu4pm2O9k/e/kf+QJaIMJuupu5ug71H3jWYvyisatGoUR
         cFGua6OvHApmKSJviX4dJqaPlR5m/vr1LKPj5NKUsDXKLXU31xHZrp5bYzMCpTmsvHra
         lSWV6DzNSxq5Oistyyts42v5d2kOzMsTlPBioszo7DkljM9hR9mRZfUaENzxEbv8ziZy
         2VfGpOUyTeDI7Itz7vkWm97LYvvCXARmgFgN1p3gCYoaS9OpnYL93IdLMdCDXi70L3Gr
         BM/A==
X-Forwarded-Encrypted: i=1; AJvYcCWnM3MvBC2s1tWHs1cqdGy2b4M/XK2MPsWTi3/6S6w664R2cBhaLxbEpyWOtl6xtEh5AIezpMQY8lf2mztXiaexSsqrdJzaYZ82UA==
X-Gm-Message-State: AOJu0YyhVuXYByOlDR13UfQX2mV1fjjWz7ToeoT8eMKAoxXPVOXGj5CV
	ssB9xhOiLNHDk7zlNFBj6624IsZ7Q1Q1DbfPMl6RhgU1LCSc4G8IE/7QbEoB+o8=
X-Google-Smtp-Source: AGHT+IHzQrJBlxyQoOMailFbEvOV869uWEakGroOBQUjEOqKOCDD4o5U99JK4uGR9CI7gfM74Ydexw==
X-Received: by 2002:a2e:a228:0:b0:2cf:1ae2:dca with SMTP id i8-20020a2ea228000000b002cf1ae20dcamr2662775ljm.16.1708071854412;
        Fri, 16 Feb 2024 00:24:14 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.20])
        by smtp.gmail.com with ESMTPSA id y19-20020a1c4b13000000b00412156abf32sm1545846wma.16.2024.02.16.00.24.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Feb 2024 00:24:14 -0800 (PST)
Message-ID: <cfafd563-1387-4775-bcb0-434ce3774827@tuxon.dev>
Date: Fri, 16 Feb 2024 10:24:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] ARM: dts: microchip: sama7g5: Add flexcom 10 node
Content-Language: en-US
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mihai.Sain@microchip.com
Cc: conor@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, Nicolas.Ferre@microchip.com, andre.przywara@arm.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Cristian.Birsan@microchip.com
References: <20240215091524.14732-1-mihai.sain@microchip.com>
 <20240215091524.14732-3-mihai.sain@microchip.com>
 <20240215-lustily-flick-69cb48b123c3@spud>
 <PH8PR11MB6804E9353A8EEBD2B829D8B3824C2@PH8PR11MB6804.namprd11.prod.outlook.com>
 <20240216075609e58aeee4@mail.local>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240216075609e58aeee4@mail.local>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 16.02.2024 09:56, Alexandre Belloni wrote:
> On 16/02/2024 06:58:10+0000, Mihai.Sain@microchip.com wrote:
>>> diff --git a/arch/arm/boot/dts/microchip/sama7g5.dtsi b/arch/arm/boot/dts/microchip/sama7g5.dtsi
>>> index 269e0a3ca269..c030b318985a 100644
>>> --- a/arch/arm/boot/dts/microchip/sama7g5.dtsi
>>> +++ b/arch/arm/boot/dts/microchip/sama7g5.dtsi
>>> @@ -958,6 +958,30 @@ i2c9: i2c@600 {
>>>  			};
>>>  		};
>>>  
>>> +		flx10: flexcom@e2820000 {
>>> +			compatible = "atmel,sama5d2-flexcom";
>>
>> My comment here was ignored:
>> https://lore.kernel.org/all/20240214-robe-pregnancy-a1b056c9fe14@spud/
>>
>> The SAMA7G5 has the same flexcom controller as SAMA5D2 MPU.
>>
> 
> Still, it needs its own compatible plus a fallback to
> atmel,sama5d2-flexcom

I agree with this. Though, flexcom documentation is subject to YAML
conversion (a patch has been re-posted these days [1] and *maybe* it will
be integrated this time). And there are multiple SoC DTs that need to be
updated with their own flexcom compatible (lan966x, sam9x60, sama7g5).

To avoid conflicting with the work at [1] and postponing this series we may
do the update after the [1] is done.

Let me know your thoughts. Either way is fine by me.

Thank you,
Claudiu Beznea

[1]
https://patchwork.kernel.org/project/linux-arm-kernel/patch/20240214-sama5d2-flexcom-yaml-v1-1-5dedd0eba08e@microchip.com/

> 
>> https://github.com/torvalds/linux/blob/master/drivers/mfd/atmel-flexcom.c#L83
>> https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bindings/mfd/atmel-flexcom.txt#L8
> 

