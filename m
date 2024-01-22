Return-Path: <devicetree+bounces-33608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B062B835DA4
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 10:07:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1160AB21182
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 09:07:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC9D13717F;
	Mon, 22 Jan 2024 09:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MMw6fTIR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161E017BD3
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 09:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705914422; cv=none; b=XKZ7UNq4LB7WxYJ8CR0XCuPimxdAqNhBvK24V3ae5da7nWCsNQRCp4bd7lTVRJzmQ0Wn8jg2ooNqAXMlKPSW775B9k4lFalfZmWY2uMLBnDGx2E6xh+sIx5APmUoRiToQ5cuReIEh5kALwo8HHPdZUC+LG6Sn2o4nImxukS3zHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705914422; c=relaxed/simple;
	bh=3kTeJ1n7HjmNDZFkI9NoTYho89PFAkuNl/b40n+OtlA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B+UzeIaHg2B5LzMpNmsNiS2tBRqWPmxw4catCNKJ31BpImeiccmHfh/aHIDjIl5dLXqDbS4iEKQCHv8s/A0JmznJkzvTCdBvCtLWq8YUGHji6odZz0BKWn6wYr+EKH2i/Pr652w8nytCdXTg7OElc5ilPGWvJa77ufMo9YTgZFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MMw6fTIR; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-40ea5654271so18586855e9.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 01:07:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705914419; x=1706519219; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QX8IfcAr9X1UJafiVIiyhQh6PceXGyS90hZuCGg+q38=;
        b=MMw6fTIRtCLTAc9bFW+jCl/pRd0cm8EGHoWPrQ2kfQi+7cUkvVmYH4V8jzL2VkQY9w
         pYx5DVsZ/8ergVwhFM88cq+dt/75XGRowV1N4gZ4VAVPupZFFIa8mhDZBsgjq3tLStCq
         GmiL16eEC4ei1CgPAwFW0JSrzfiNksT2cNHq8V0CcGQwVse9jdEEVBjreQBQr5Nwubqc
         Dq4oimLeFUd1k7lcb901X1DroqslwvFLFPBchVGhuHdd/MTVCE9M4vvcFWFaCpj4XAa6
         zWTUmfM2oVdNM+ZFE57KEDCIjPD0wwKAdU9La8bHkuLTWUR3ohZhyC8dGA53zUdOniGC
         x7dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705914419; x=1706519219;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QX8IfcAr9X1UJafiVIiyhQh6PceXGyS90hZuCGg+q38=;
        b=qeThnupzus0gQol7U+IXyDJCvK/SJgvkklCdqDLZjfOO73ZrknKdKOHATcCSOB+GPZ
         jAPo+tgTtom6eWJtUxNfyeT23gUbc9mgrZsy0DTm/I6n+w7s6AZg1kjfuyYJEIi1sM4p
         nnS+45RZvIzZNeJTDDTn+NQ1e+SqmUEy1ebQMEC59iz6I3QO0pOVQTcPXHKdNJC5r1Ml
         Z99TSAMMvT3sSVCwB0Pse0vOpHdtnuQVl0/rX97xtn00D6IzjmF07KIZ42Xw1WRwUetG
         vN7wZxHDG8kbLyy85Nu8LhIhOhBGymjAADPSYuyHpCUABISwUVqffsdRzJShrXyMv0+4
         UR2Q==
X-Gm-Message-State: AOJu0YxOHLbnRrWDuzUXtxrDXZFAVUqLLiLjkKkPigsnKhb0SVR6GgmA
	OIh2wtqgVfZnC2rzX54F7ZFYxCCUisYV09NJkgX45NJE1Iew8K2NGd5YmgtA
X-Google-Smtp-Source: AGHT+IEzmuJcnqbK98PsWeJ1O8gAkJ4aCe9apD5zuu3n66uXbUNdeURZtVSsGW3ACAkKZzdb/AkLSQ==
X-Received: by 2002:a05:600c:1388:b0:40e:a447:9fb2 with SMTP id u8-20020a05600c138800b0040ea4479fb2mr1690629wmf.18.1705914419090;
        Mon, 22 Jan 2024 01:06:59 -0800 (PST)
Received: from [192.168.2.177] ([207.188.161.188])
        by smtp.gmail.com with ESMTPSA id y8-20020a5d4ac8000000b00337af95c1d2sm13255827wrs.14.2024.01.22.01.06.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jan 2024 01:06:58 -0800 (PST)
Message-ID: <f2374a92-ab8e-47d1-b6b8-3e92b6bc2bb0@gmail.com>
Date: Mon, 22 Jan 2024 10:06:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt7986: fix reference to PWM in fan
 node
Content-Language: en-US, ca-ES, es-ES
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Cc: Daniel Golle <daniel@makrotopia.org>,
 Frank Wunderlich <frank-w@public-files.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20231116130816.4932-1-zajec5@gmail.com>
 <a5113b85-e29c-454f-b776-ac7abbca771f@gmail.com>
 <d0734a8f-0b72-4609-a941-da4bdc3e323e@gmail.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; keydata=
 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
In-Reply-To: <d0734a8f-0b72-4609-a941-da4bdc3e323e@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 28/12/2023 08:03, Rafał Miłecki wrote:
> Hi,
> 
> On 14.12.2023 07:43, Rafał Miłecki wrote:
>> On 16.11.2023 14:08, Rafał Miłecki wrote:
>>> From: Rafał Miłecki <rafal@milecki.pl>
>>>
>>> This fixes typo and resolves following validation error:
>>> arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dtb: pwm-fan: pwms: 
>>> [[54, 0, 10000], [0]] is too long
>>>          from schema $id: http://devicetree.org/schemas/hwmon/pwm-fan.yaml#
>>>
>>> Fixes: c26f779a2295 ("arm64: dts: mt7986: add pwm-fan and cooling-maps to 
>>> BPI-R3 dts")
>>> Cc: Daniel Golle <daniel@makrotopia.org>
>>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>>
>> I sent those few trivial fixes weeks ago:
>> [PATCH] arm64: dts: mediatek: mt7986: fix reference to PWM in fan node
>> [PATCH 1/2] arm64: dts: mediatek: mt7986: fix SPI bus width properties
>> [PATCH 2/2] arm64: dts: mediatek: mt7986: fix SPI nodename
>> [PATCH] arm64: dts: mediatek: mt7986: drop crypto's unneeded/invalid clock name
>>
>> Could someone pick them up, please?
> 
> Anyone, please?
> 
> I did quick research and it seems Linus pulls mediatek DTS changes from:
> git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc (from Arnd)
> 
> 
> Arnd seems to pull mediatek changes from either:
> 
> 1. https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux
> (Most pulls so far from Matthias)

That's the old tree, we don't use this anymore for mediatek.

> 
> 2. git://git.kernel.org/pub/scm/linux/kernel/git/mediatek/linux
> (The most recent pull from AngeloGioacchino)

That's the new tree you should watch out to see your patches showing up.

Regards,
Matthias

> 
> 
> AngeloGioacchino, Matthias: can you pick up my patches, please?
> 

