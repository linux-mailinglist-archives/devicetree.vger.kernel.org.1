Return-Path: <devicetree+bounces-251009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B648CEDF56
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 08:17:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 52C923009F9B
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 07:13:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 806872D2488;
	Fri,  2 Jan 2026 07:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FqEkGRag"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AC82D1F69
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 07:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767338037; cv=none; b=vDy48utLyyvG4C4yUHnuFnJMCemAm0QwnGVlHoYGjsY6pry9mei1+kMollukKJqImuz6UVDReooZYE9qskDn7rPLYJXv7c7YCDefPtMax1QbjnZWGNf7iShXFXjX0zRTiuTGS+bTFpwwdvATDUc8kHry1wLeWMx8wBx3w8SdqxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767338037; c=relaxed/simple;
	bh=qKiyom99dAPdhTsRHOQbDoHAlx2my9yh+xilqEmgxj0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b5ZAbMGQL0pP/KvRrzJO+7Bz0CYMIjDQnx1sp6XulUCQcU7qExulw0HpTlKTOx35kByV6rAwS9Or4Cw/TQPj4Kx+lIIjnepwwy2evyntOcgBvOHg9WdNFYlAj1vMXe4Bzcd9+mg665KJAhoLORZMW6WPzUFbS76dHJ/P+eFBAa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FqEkGRag; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5957ac0efc2so12653139e87.1
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 23:13:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767338033; x=1767942833; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tg52KgPh/NvG5/ca0UMnjXjSLLXRaw8PfZe/uXtCJoM=;
        b=FqEkGRag1hR7wDZXO8P1cTExbsCozjqpRS8cGrvc2SL+7O7ZANt4juPrrJ6W2307CD
         ZcpcMqw/Fs2w4nONIkXFfa1t0EsWT8m5POsQMQXb1owviIep5RDx7RgI2nErcGBsqk1A
         u3RfDzVSoNPUcJSpvsKjAZIEO9WQL7J5SPNYcYpZckG7s/TOHbK73M0D0d4yO6sVnlRH
         DwJ4XBApvi8FcZWdmNFddYuTpvrp+HUI69R4Wm7uP8oZqCdWSjmUMghxP7RyzrDXSO/o
         Msxn/KRw9zL9inzpWxbOiK1hUSwebiRY3GxBOv2I4UF4yD4amJRyANe1i+Q0+5rDQGfI
         cJ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767338033; x=1767942833;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tg52KgPh/NvG5/ca0UMnjXjSLLXRaw8PfZe/uXtCJoM=;
        b=w6LN+AI1xmnCsbXfJ1DeR4a6Qx1RkHApT7b8izrvMfjZ8kCyKMyTGWiiOFzxGojlkk
         AUvabivZNSEuga9pnQf2XcaWlidFdXOo2BT8O/4oFtx2jUPd5P2X9hM7h1BGWiRQBNcL
         hB7o6OG+3jcsh2BdSLD6rGusZXHE1Avr4eBejXdaT/8nNHRE1FhQa6cF5qXKbZg+u8zT
         XycsYHp0oOwszWqt2DBR/SSq3y3QEM09WgvUN6ePWpyYxpKa6AvQDDF8WC08PKXGFlDc
         VvWHsNp8UmvND5TYNBs0NM+FMrHJQDKVpABpBrPxS856W1vLgBavuCG9w/AHERm2pIeS
         zMtA==
X-Forwarded-Encrypted: i=1; AJvYcCX/ZEKC/TUZmZmWEHPYvPKSJSTGWd132IWfKIfaYNb3Qj5/4b0GDHZQCDKKcIRYnzgld7Pc9nQs9Tcb@vger.kernel.org
X-Gm-Message-State: AOJu0YzU2gX1TX9rRoOibaVBS9b1n13lcow8gTCVN5Bye0T7Ark+0wZv
	OWpV/TdjIT5LT8OfdhBUlqQWqoCGrIMvpaFJvmCualUMlpSEUX933Lqs
X-Gm-Gg: AY/fxX5thWklkoa9Hiir/wb0pLsajhOzFdqH5X3zMBq/XHS3TGHXJDD31wHBrSfGTlD
	hsAlUNRp7EVlnyviLBwUzUGSuRGrziyAfsqy0Icq9G5dyls70jSrfib98wMWw6KjaylcQWiagj+
	NuJWn1qtUUoo+ExaxVWBOKY4IcsR55wlDIwnFd5jwaInsZJ6Eu9tginhkPs7pNJzdAeySSv0QmF
	fFWxEXg87v1FWz4BqxGLtcb8T8riaVb/YnMXsx2LjWgyycECDy1zq6TqG+lnSpRCoc0KdxJRTuq
	o9CYYC3euQbMKb26TuhNELODaG1qBvoFTXPt4RVK1gbjVVbIsB5xTYx2YLeejLehHUcNGVJTK6k
	dYng9Y8rkH49hOQ+M/hktp0JTYB9x9G64FGHNoJrEtMTrLpQ1skffC6qemogRupCAOOl4Ck80Pg
	IbgUP4J1tMWKW/H8mEcHyRqy8DWIbWYoLG5nG6l92fNXhJ2NQjAsFHU0ahWqeBg8B2+cfHRfycY
	O/zzq8=
X-Google-Smtp-Source: AGHT+IG75hLZGe23C83lYw1IAkO8e8F0HYc9BVU+2CL/EGVHlCP9ievAZqLOw92DkpoMu4U19kPL3Q==
X-Received: by 2002:ac2:4c47:0:b0:598:a597:62f8 with SMTP id 2adb3069b0e04-59a17d24978mr15276452e87.17.1767338033039;
        Thu, 01 Jan 2026 23:13:53 -0800 (PST)
Received: from ?IPV6:2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703? ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185d5ea6sm12019590e87.5.2026.01.01.23.13.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jan 2026 23:13:52 -0800 (PST)
Message-ID: <286a032d-7a14-409d-9bb3-6033c35f8e99@gmail.com>
Date: Fri, 2 Jan 2026 09:13:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] iio: adc: add driver for Texas Instruments TLA2528
 adc
To: Jonathan Cameron <jic23@kernel.org>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>,
 David Lechner <dlechner@baylibre.com>, nuno.sa@analog.com,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Angelo Dureghello <adureghello@baylibre.com>,
 Tobias Sperling <tobias.sperling@softing.com>,
 Eason Yang <j2anfernee@gmail.com>,
 Marilene Andrade Garcia <marilene.agarcia@gmail.com>,
 Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>,
 duje@dujemihanovic.xyz, herve.codina@bootlin.com,
 Rodolfo Giometti <giometti@enneenne.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 thomas.petazzoni@bootlin.com
References: <20251223155534.220504-1-maxime.chevallier@bootlin.com>
 <20251223155534.220504-3-maxime.chevallier@bootlin.com>
 <efbe9720-0974-4d5e-9a03-fefd3c86e275@gmail.com>
 <20251231171220.1f99e36d@jic23-huawei>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <20251231171220.1f99e36d@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 31/12/2025 19:12, Jonathan Cameron wrote:
> On Mon, 29 Dec 2025 10:20:23 +0200
> Matti Vaittinen <mazziesaccount@gmail.com> wrote:
> 
>> On 23/12/2025 17:55, Maxime Chevallier wrote:
>>> This adds a new driver for the TI TLA2528 ADC chip. It ha 8 12-bit
>>> channels, that can also be configured as 16-bit averaging channels.
>>>
>>> Add a very simple driver for it, allowing reading raw values for each
>>> channel.
>>>
>>> Signed-off-by: Rodolfo Giometti <giometti@enneenne.com>
>>> Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
>>> ---
>>>    MAINTAINERS                  |   7 ++
>>>    drivers/iio/adc/Kconfig      |  10 ++
>>>    drivers/iio/adc/Makefile     |   1 +
>>>    drivers/iio/adc/ti-tla2528.c | 209 +++++++++++++++++++++++++++++++++++
>>>    4 files changed, 227 insertions(+)
>>>    create mode 100644 drivers/iio/adc/ti-tla2528.c
>>>
>>> diff --git a/MAINTAINERS b/MAINTAINERS
>>> index dc731d37c8fe..5c382ae216c7 100644
>>> --- a/MAINTAINERS
>>> +++ b/MAINTAINERS
>>> @@ -25866,6 +25866,13 @@ F:	include/dt-bindings/soc/ti,sci_pm_domain.h
>>>    F:	include/linux/soc/ti/ti_sci_inta_msi.h
>>>    F:	include/linux/soc/ti/ti_sci_protocol.h
>>>    
>>> +TEXAS INSTRUMENTS' TLA2528 ADC DRIVER
>>> +M:	Maxime Chevallier <maxime.chevallier@bootlin.com>
>>> +L:	linux-iio@vger.kernel.org
>>> +S:	Supported
>>> +F:	Documentation/devicetree/bindings/iio/adc/ti,tla2528.yaml
>>> +F:	drivers/iio/adc/ti-tla2528.c
>>> +
>>>    TEXAS INSTRUMENTS' TMP117 TEMPERATURE SENSOR DRIVER
>>>    M:	Puranjay Mohan <puranjay@kernel.org>
>>>    L:	linux-iio@vger.kernel.org
>>> diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
>>> index 58da8255525e..67376de410bf 100644
>>
>> Hmm. Would it ease merging if MAINTAINERS changes were in their own patch?
> 
> Not particularly.  Though I personally slightly prefer the logic
> of bringing the entry in with the first file, then adding additional files
> in later patches.
> 
> Given it is huge and in alphabetical order, conflicts in MAINTAINERS are
> fairly rare and trivial to resolve.
> 

Thanks for this clarification :)

I don't know where I had picked up this idea, but I thought that the 
volume of changes in MAINTAINERs was somewhat annoying source of 
conflicts. I sit and type corrected :)


Yours,
	-- Matti

---
Matti Vaittinen
Linux kernel developer at ROHM Semiconductors
Oulu Finland

~~ When things go utterly wrong vim users can always type :help! ~~

