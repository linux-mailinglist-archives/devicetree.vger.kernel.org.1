Return-Path: <devicetree+bounces-136463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F48A054A6
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 08:36:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 953C9161D8B
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 07:36:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27AA61A8F8F;
	Wed,  8 Jan 2025 07:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="yloxYnCu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872CA15B984
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 07:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736321772; cv=none; b=pQpcHyc0U209YOOSfdAycwnw0Vrsbc6/R3yEcr7rsjGebFdOjiFXfVN9txdxgKYKKbhDZ2lidCsYwNBFEyQqMWSWqYm3AO4kiS8Gys3UmJe5z7oS8Vw4vZmiuFCssbp6q1gp2RhE2hZnm4cGL+vhsyT1kLpWKGq6JHVhFvOgSOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736321772; c=relaxed/simple;
	bh=HbyZMb5TOr7zKqFJXKzTvkX/HnHIN1t0t5JU4TZA9P8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IEkoj5LqTv1szqACZfKJiCMowllQ9VdR/fUupQU7e5Tnk6U9lrLwByj2R7F2KseyQH8ytiBlHK7mw8y2oHYw4+as3V+FpcJJWDUzwSk6Q34DKD96BjZukIZsOvE+UHkZ8Ch215wPoYOmu8fpy75rqdZVKu0+2blqIPq05dJ6Il8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=yloxYnCu; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-21661be2c2dso222589965ad.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 23:36:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1736321770; x=1736926570; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RexITyxpXl+Kf1xSnTqZMES0fQN5/waq0R/pPbIRDyM=;
        b=yloxYnCu+itGxcA4mfY/wLn/pIaGZAZi/WA83J3jd4cYo1RVuLiIJXxz+wiVXcxgww
         ahvzNsD2u71uHaTkS4hAsGDTZiBAp4DEgPJCZub0PG0GTCx0MPbTleW35cLtt5mp4kor
         NduN8biNBKL7VNBOGOexzIXyvW1W7WGBS972bGFyeJPmXWCUn7qzNJ6wH0RV0XqDYlnx
         ZgCoediWFNI2YHxzuYign6mM6g2V0pYMrAYJ8eC4P6QGgQanRFJZHwo/iPpUOFyB5MMV
         0NJ6fgRML1Tg5eVX0msc90ZkrBSvbdUwi782Ixjai/jw3I9Eh5Hl2oWmjzY8KjdLTfWU
         /wcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736321770; x=1736926570;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RexITyxpXl+Kf1xSnTqZMES0fQN5/waq0R/pPbIRDyM=;
        b=iPkrZYq8J9VA7hTbV241c2KwKJOTHKFg9gbSTdz5OY2z7Fnt8pol/58ZuMFhJcPQQC
         cpyrbQts3kNQT9QAa0tVIklBCmVAdwlTbvM6KOIQ+HSdCU2u7uEDtwf4tBzwERZGCzVK
         Z6lpycB0oD7w4868Im0QBbO275emREP1rmEpGWSq+LD3AsQy003egzZwSXwr7r5PaO0h
         /JjOp3MnxK/4xJKluX9EvHbERR0RC0sbtCjngyK9t/BKWqAIcD05XimBkaMOvp9U+oI6
         /MCEho9lpo129jj7BTbzsrXeEV33MuxWo1v6Zb24aSI6Opf7DumFO5cuynToGaXkm35n
         +z1A==
X-Forwarded-Encrypted: i=1; AJvYcCWG220MjXC7UwDFusQA+2xEDKcUYAT5+gmAX2ShQQAiJ/hKMSxVtpPsMeHouZXtFavF+gDEE1241HWH@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1FoRp+6KjC7fkb0cV6L3nSlL4CaJBTa/gog7f2lJs6MnjPFR4
	1CA6s1sII82bDDKXRv6pYNE0OjG4BARa8xAm3o0qtv2OP0mu6nAfYUmXhZuBiA==
X-Gm-Gg: ASbGncvheDNXLAm5YQljf3XHGsDQ5Ydj2jRT5NpNPoUvEb83yzDNn8GyUroWifdlgns
	ua5iw8uOjIjKN0COnnvhXsYI8vFzlohmPjiSSVFUPPnEZt+Q1SfW/d3zGdiPWOC12NlPSOW+39n
	mS/rD60kiAO6ofWjxpDB+78QpydkAXQWcZrBKQbFDSqhDPhBJF+FTp2a2BuNXreQftu3OHnYH2s
	58Ltv3hZNYEA3qBn8JHFG7ZtoW1e7zc8xFRV2HAKuOnehV94yZMyNIL71Vbb8U=
X-Google-Smtp-Source: AGHT+IFp0facKseJ1ngvkOYRbYdxD/oE5mZyK+bXDcOi2Uxri3V+DQuSRTKSQmRj4tj7TLnPjT34DA==
X-Received: by 2002:a17:902:d2d2:b0:215:a04a:89d5 with SMTP id d9443c01a7336-21a83f36dcamr30838815ad.2.1736321769844;
        Tue, 07 Jan 2025 23:36:09 -0800 (PST)
Received: from [172.16.116.58] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc9631d1sm321453715ad.42.2025.01.07.23.36.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 23:36:09 -0800 (PST)
Message-ID: <6d48095d-59b1-4439-8e2a-927aa1aa1b55@beagleboard.org>
Date: Wed, 8 Jan 2025 13:06:03 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/7] of: overlay: Add support for export-symbols node
 feature
To: Herve Codina <herve.codina@bootlin.com>
Cc: Andrew Davis <afd@ti.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 David Gibson <david@gibson.dropbear.id.au>
References: <20241209151830.95723-1-herve.codina@bootlin.com>
 <33c61b28-c0b8-478d-8107-c6ed1ff9e466@beagleboard.org>
 <20241210104141.39acffb1@bootlin.com>
 <bab9f277-a366-48ec-acdd-0896c8307ad9@beagleboard.org>
 <20241210115515.1886f73f@bootlin.com>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <20241210115515.1886f73f@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 10/12/24 16:25, Herve Codina wrote:
> Hi Ayush,
> 
> On Tue, 10 Dec 2024 15:26:44 +0530
> Ayush Singh <ayush@beagleboard.org> wrote:
> 
>> On 10/12/24 15:11, Herve Codina wrote:
>>> Hi Ayush,
>>>
>>> On Tue, 10 Dec 2024 14:52:22 +0530
>>> Ayush Singh <ayush@beagleboard.org> wrote:
>>>
>>> ...
>>>>
>>>> What is the reason for not using symbols directly as described here [3]?
>>>>
>>>> I do like this approach since it does not pollute the global symbols.
>>>> Just want to know if there are any other reasons for it.
>>>>   
>>>
>>> Modifying the __symbols__ node at runtime (adding / removing properties in
>>> it) exposes memory leaks if __symbols__ already exist in the live DT.
>>> This __symbols__ node exist if the dtb was compiled with '-@' or if you
>>> chain the overlay (i.e. __symbols__ node created by the first overlay).
>>
>> Yeah, that is a problem, specially in a setup which might involve
>> hot-plugging.
>>
>>>
>>> I think also that some conflicts can appears. What happens if you want to
>>> add a new label but this label is already present for some other purpose?
>>
>> I do not think that actually is a problem. As described in the original
>> patch [0], the symbol and connector overlay is supposed to be applied as
>> a group (overwriting any conflicting symbols in the process).
>>
>> The reason why this is not a problem is that `__symbols__` are only used
>> to resolve the phandles (overlays do not support path references yet),
>> but do not really have a purpose in the livetree (at least far as I
>> know, but I can be wrong).
>>
>>>
>>> Best regards,
>>> Hervé
>>
>> [0]: https://lore.kernel.org/lkml/20240702164403.29067-1-afd@ti.com/
> 
> 
> Also, in your first overlay (adding symbols in __sympbols__ node), you have
> something like:
>     GROVE_PIN1_MUX_I2C_SCL = "/bus@f0000/pinctrl@f4000/grove-i2c-pins";
> 
> If I understood correctly, other overlays will have GROVE_PIN1_MUX_I2C_SCL
> as unresolved symbols and will use GROVE_PIN1_MUX_I2C_SCL to reference the
> grove-i2c-pins node.
> This unresolved symbol from the overlay is resolved thanks to the __symbols__
> table where you added GROVE_PIN1_MUX_I2C_SCL (first overlay operation).
> 
> In order to work, you need to have a phandle property set in the
> grove-i2c-pins node.
> 
> This is done by dtc when you compile the dtb containing the grove-i2c-pins
> node (i.e. k3-am625-beagleplay.dts)
> 
> The phandle property will be set only if:
> - a label for grove-i2c-pins already exist and -@ option is used
> or
> - a label for grove-i2c-pins already exist and it is referenced as a phandle
>    in the dts (k3-am625-beagleplay.dts).
> 
> Otherwise, dtc will not create the phandle property and without this
> property, the symbol resolution will not be correct.
> 
> Best regards,
> Hervé
> 

Hello Hervé

Thanks for the clarification. things have changed a bit since the last 
message and it seems like trying to add path reference support to 
overlays is not the best way forward [0]. So I would love to help move 
this approach forward.

I do have a question regarding this approach, so here I go:

Can the `export-symbols` node be added to devicetree spec and be 
resolved by the devicetree compiler (and fdtoverlay) instead of being 
runtime resolution.

To get some context, I would like to share the addon-board overlays 
between ZephyrRTOS and Linux kernel. I would be happy to try adding 
support to dtc compiler for it. I am also tagging David Gibson (dtc 
maintainer) in this discussion since he also had some ideas regarding 
the feasibility and pitfalls of adding it to devicetree compiler (and spec).


[0]: 
https://lore.kernel.org/devicetree-compiler/6b2dba90-3c52-4933-88f3-b47f96dc7710@beagleboard.org/T/#m900b5ca13cfc28396d4d46d9c3130a7070fa8c90

Best regards,
Ayush Singh


