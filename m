Return-Path: <devicetree+bounces-95705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C85295AD7A
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 08:29:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C8631F22B46
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 06:29:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84EAB139D1B;
	Thu, 22 Aug 2024 06:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="BJXyPyPi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3471369B6
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 06:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724308172; cv=none; b=uljhRjXr1gUpVM8ju+SphktyIzjUt5JgXPPci6q/LsRFTmFwSa6Gy0wPnVGdYhoGFWIOYpjtmdyA6SGT1CeA0oM2MX74hkF4SXzLb3uXpUmSVDZkJ0q4GUTVWESwPNnnyD+0g6haD0a2IW7vUo9d5fGtd05kMbyEGDLWtFakn8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724308172; c=relaxed/simple;
	bh=LdX13DAjUo5Io3M1eGwlH4Nle/wUQjjXnvmOAg7FG30=;
	h=From:To:CC:Date:Message-ID:In-Reply-To:References:Subject:
	 MIME-Version:Content-Type; b=LaGbHAqZ4GEXJlP627xNytdD9S1Oec+vg50vgHMBcUJYDaBoBoNoDG8bhjYdmNVu66KxD1cQ4JNt/e6sGd+hageVKiyAK4piitvdKPpQgaz3ZQOxNQAvNZ/dJHVGEB/W8QhTy0U7OkajgiJ/gtt0eYvUJwhWMOkbnG3CJDc7B4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=BJXyPyPi; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-20203988f37so4045775ad.1
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 23:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1724308169; x=1724912969; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yuzVp7a772LWXX9CLYiKJjXsvUrXZjKiTNEyRdH7ZKM=;
        b=BJXyPyPiqmV9GiZHFWWgnaWNJ1z3RtH6/REtlm3anba/OEcK5ZhkJT0OfwjynLQETK
         mf9lNBWUtxSaud5wbxa2Acp5zTVX+3+n5vP8nNatStvlwbX/C0eUiVLlkwLUV3Oz15FL
         jKD6kru7kYfHxba0lKME/vjHqlb2LHRsnlOMQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724308169; x=1724912969;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yuzVp7a772LWXX9CLYiKJjXsvUrXZjKiTNEyRdH7ZKM=;
        b=nRkjsPaUTM0UbjKRUXd3AiLb8R/X5oUHtTZxXkqdoF7O+k3xvSAkfBugA3pGZXqQ1z
         yYmkk2ffy4TxrVeYIXg3O1qjTFaVIdior/wXZcgbeDOH6UEaLbOb2/24SEveAAdhnsF4
         yZovHITi5gJ3g12X+mDEaH9Dp1qEf6LVk9Jcu83zeuQ0fEwpDudPcZ5Zy1yqN2SzVEnL
         5X++rahXlZSZxKezXEsZiZMblkOmZUYHhgDaIRZcdmVR0LQk/+yq5pSqcKfv6rrEtNIt
         67iR+XMwnxLFHUu/vAaSqyPA+tWvd1pg7o/9iEv0+uQN1yGyU+IZ2AY+MLeTP7jwbJ2y
         fQ9g==
X-Forwarded-Encrypted: i=1; AJvYcCXDlKSDpzyRGzBxjdOZn9aK4aDGsSllKn/dasARAOqbL9rZtzQlGra0FBbV/e0W6BR2gHgIKtgvyEtX@vger.kernel.org
X-Gm-Message-State: AOJu0YyzYt4oRe5HyLWW38BQBTSaaOgsr6NEeKNQgUxBOwYEGdK6YBHD
	gLauNoUYnhtNO++i1dzut1uPZ8Dd+wDSD+4AR/5AoUo1H4/72ZiljR9fQhlPFg==
X-Google-Smtp-Source: AGHT+IE/imWYbum0d8MtOFNzjh/erVn9WB7sC7v2bVYwM6rPFsjVypnGtmNybnUyurmkfB1y8zGijA==
X-Received: by 2002:a17:903:181:b0:202:35a8:42 with SMTP id d9443c01a7336-203681d17c2mr55692655ad.49.1724308168355;
        Wed, 21 Aug 2024 23:29:28 -0700 (PDT)
Received: from [192.168.178.38] (f215227.upc-f.chello.nl. [80.56.215.227])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2038557e7cfsm5784055ad.83.2024.08.21.23.29.25
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Aug 2024 23:29:27 -0700 (PDT)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: Julian Calaby <julian.calaby@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>
CC: Kalle Valo <kvalo@kernel.org>, Hector Martin <marcan@marcan.st>, Krzysztof Kozlowski <krzk+dt@kernel.org>, <devicetree@vger.kernel.org>, <linux-wireless@vger.kernel.org>, <brcm80211@lists.linux.dev>, <asahi@lists.linux.dev>
Date: Thu, 22 Aug 2024 08:29:23 +0200
Message-ID: <19178c587e8.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <CAGRGNgWeuJ4Y4AwvDQWw9nZ=tVCsaqVnmeyD+ywT4c4+LmmXCw@mail.gmail.com>
References: <20240820101216.355012-1-arend.vanspriel@broadcom.com>
 <20240820101216.355012-2-arend.vanspriel@broadcom.com>
 <mbvhz3wosnykejgs65es2sfedxoevysbqu3jxmpgdze2b2tl6o@grx4mxas2bmf>
 <7881c303-bef1-403a-aa70-30d33558f57f@kernel.org>
 <6777d425-b27f-43d0-ba81-b36ac0b8f929@broadcom.com>
 <0b639d04-af33-44b0-a556-40decff683c5@kernel.org>
 <3ed394a3-2b5e-4096-b090-c805657585a3@kernel.org>
 <f7c17dff-fd64-4769-9fc4-7ff929a2c5d8@broadcom.com>
 <931f4acc-6fb5-4f0d-9e37-b945de2e7349@kernel.org>
 <CAGRGNgWeuJ4Y4AwvDQWw9nZ=tVCsaqVnmeyD+ywT4c4+LmmXCw@mail.gmail.com>
User-Agent: AquaMail/1.51.5 (build: 105105504)
Subject: Re: [PATCH 1/2] dt-bindings: wireless: restore constraint for brcm,bcm4329-fmac compatible property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On August 22, 2024 2:26:27 AM Julian Calaby <julian.calaby@gmail.com> wrote:

> Hi Krzysztof, Arend,
>
> On Wed, Aug 21, 2024 at 4:46 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>
>> On 20/08/2024 21:29, Arend van Spriel wrote:
>>> On August 20, 2024 5:51:03 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>>
>>>> On 20/08/2024 17:36, Krzysztof Kozlowski wrote:
>>>>> On 20/08/2024 14:50, Arend van Spriel wrote:
>>>>>> On 8/20/2024 1:39 PM, Krzysztof Kozlowski wrote:
>>>>>>> On 20/08/2024 13:27, Krzysztof Kozlowski wrote:
>>>>>>>> On Tue, Aug 20, 2024 at 12:12:15PM +0200, Arend van Spriel wrote:
>>>>>>>>> When extending the bindings for Apple PCIe devices the compatible property
>>>>>>>>> specification was changed. However, it was changed such that for these
>>>>>>>>> devices it was no longer necessary to have "brcm,bcm4329-fmac" listed as
>>>>>>>>> string in the compatible list property as it was before that extension.
>>>>>>>>
>>>>>>>> Apart that this was never tested... That statement is not true. Look at
>>>>>>>> "fixed" commit - it is not doing like that at all.
>>>>>>>>
>>>>>>>> I don't understand the reasoning.
>>>>>>>>
>>>>>>>>> This patch restores that constraint.
>>>>>>>>>
>>>>>>>>> Fixes: e2e37224e8b3 ("dt-bindings: net: bcm4329-fmac: Add Apple properties
>>>>>>>>> & chips")
>>>>>>>>> Signed-off-by: Arend van Spriel <arend.vanspriel@broadcom.com>
>>>>>>>>> ---
>>>>>>>>> .../net/wireless/brcm,bcm4329-fmac.yaml       | 19 ++++++++++---------
>>>>>>>>> 1 file changed, 10 insertions(+), 9 deletions(-)
>>>>>>>>>
>>>>>>>>> diff --git
>>>>>>>>> a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>>>>>>> b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>>>>>>> index e564f20d8f41..47f90446322f 100644
>>>>>>>>> --- a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>>>>>>> +++ b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>>>>>>> @@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>>>>>>>>> title: Broadcom BCM4329 family fullmac wireless SDIO/PCIE devices
>>>>>>>>>
>>>>>>>>> maintainers:
>>>>>>>>> -  - Arend van Spriel <arend@broadcom.com>
>>>>>>>>> +  - Arend van Spriel <arend.vanspriel@broadcom.com>
>>>>>>>>>
>>>>>>>>> description:
>>>>>>>>> The Broadcom Single chip MAC part for the BCM4329 family and
>>>>>>>>> @@ -27,7 +27,6 @@ properties:
>>>>>>>>>           - brcm,bcm4341b0-fmac
>>>>>>>>>           - brcm,bcm4341b4-fmac
>>>>>>>>>           - brcm,bcm4341b5-fmac
>>>>>>>>> -              - brcm,bcm4329-fmac
>>>>>>>>>           - brcm,bcm4330-fmac
>>>>>>>>>           - brcm,bcm4334-fmac
>>>>>>>>>           - brcm,bcm43340-fmac
>>>>>>>>> @@ -46,13 +45,15 @@ properties:
>>>>>>>>>           - cypress,cyw43012-fmac
>>>>>>>>>           - infineon,cyw43439-fmac
>>>>>>>>>       - const: brcm,bcm4329-fmac
>>>>>>>>> -      - enum:
>>>>>>>>> -          - brcm,bcm4329-fmac
>>>>>>>>> -          - pci14e4,43dc  # BCM4355
>>>>>>>>> -          - pci14e4,4464  # BCM4364
>>>>>>>>> -          - pci14e4,4488  # BCM4377
>>>>>>>>> -          - pci14e4,4425  # BCM4378
>>>>>>>>> -          - pci14e4,4433  # BCM4387
>>>>>>>>> +    - items:
>>>>>>>>> +          - enum:
>>>>>>>>> +              - pci14e4,43dc  # BCM4355
>>>>>>>>> +              - pci14e4,4464  # BCM4364
>>>>>>>>> +              - pci14e4,4488  # BCM4377
>>>>>>>>> +              - pci14e4,4425  # BCM4378
>>>>>>>>> +              - pci14e4,4433  # BCM4387
>>>>>>>>> +          - const: brcm,bcm4329-fmac
>>>>>>>>> +    - const: brcm,bcm4329-fmac
>>>>>>>>
>>>>>>>> And this does not make sense... You claim that some constrained was
>>>>>>>> droppped and you re-add it, but in fact you still add the same code as
>>>>>>>> it was before.
>>>>>>>>
>>>>>>>> NAK.
>>>>>>>
>>>>>>> Ah, the last "const" actually makes sense, I missed that.
>>>>>>>
>>>>>>> Commit still however lacks rationale why these devices are compatible.
>>>>>>> Plus existing rationale that e2e37224e8b3 changed something is entirely
>>>>>>> WRONG. It changed nothing. ZERO. It only added new devices, which was
>>>>>>> claimed are not compatible with brcm,bcm4329-fmac.
>>>>>>
>>>>>> So is that claim true? What does it mean that these new devices are not
>>>>>> compatible. If they are they should be in a separate binding or the
>>>>>
>>>>> Whether binding is separate or not, is just way of organizing things.
>>>>>
>>>>>> applicable properties for these devices should be made conditional.
>>>>>
>>>>> Could be if they are not applicable.
>>>>>
>>>>>>
>>>>>>> Now if you claim that original commit which said "these devices are not
>>>>>>> compatible with brcm,bcm4329-fmac", then please provide arguments, not
>>>>>>> just say "other commit did something". It did nothing...
>>>>>>
>>>>>> Not entirely true. Indeed new devices were added for which no
>>>>>> "brcm,bcm4329-fmac" string is required in the compatible property. Also
>>>>>> the commit added new properties for these new devices. Now in my opinion
>>>>>> a driver should not use these properties without a "compatible" check.
>>>>>> Hope we can agree to that. However, the driver patch for supporting the
>>>>>
>>>>> Sorry, I don't follow. Why the driver would need to check for compatible?
>>>>>
>>>>>> binding change does no such thing. So if we leave the binding as it
>>>>>> currently is the driver will have to check if compatible has any of the
>>>>>> listed PCI IDs before processing the properties. As all properties old
>>>>>
>>>>> Why driver needs to check it? Are these properties not valid?
>>>
>>> How would the driver know other than the compatible property? The node
>>> with properties is delivered by the bus driver. If that comes with
>>> guarantees about validity than that's great.
>>
>> I still do not follow what is the problem being addressed by driver
>> needing to check.
>>
>>>
>>>>>
>>>>>
>>>>>> and new are marked as optional I can not come up with an argument that
>>>>>> these new devices are *not* compatible with brcm,bcm4329-fmac.
>>>>>
>>>>> Compatibility is expressed by implementing same programming interfasce
>>>>> (or its subset) thus being able to bind via fallback and correctly
>>>>> operate in given SW.
>>>
>>> This exactly what I mean to say (and apparently fail to do so ;-s ).
>>>
>>>>> I don't know whether that's the case here, so rephrasing my earlier
>>>>> comments - the commit msg should focus on this aspect and tell that
>>>>> devices are fully compatible, thus they should use fallback.
>>>>>
>>>>> Quick look at drivers told me that not - they are not compatible...
>>>
>>> Okay. That puts use in different corner of the arena. Can you elaborate
>>> how you come to that assessment? Is that based on the fact that some of
>>> the properties are SDIO-only?
>>
>> The simplest: because they do not use the same match/bind code. Plus PCI
>> devices never used half of brcmf_of_probe(). Although that's more of a
>> reason these are significantly different.
>>
>>>
>>>>>
>>>> Another thing is that calling SDIO and PCI devices compatible is quite a
>>>> stretch... Clearly hardware-wise they are very different and Linux does
>>>> not use the same interfaces to match/bind them.
>>>
>>> These are wifi devices which hardware-wise are 95% the same. If you find
>>> the block diagram with IP cores for these devices (enough google results
>>> to find some) you can see they sometimes even have both PCI and SDIO
>>> block on-chip although only one is used so they can be considered 100%
>>> the same. In both cases the bus driver will attach the DT node to the
>>> binding device.
>>
>> I understand they are similar, but it does not matter if that is 95% or
>> even 99% if the interface is different. Linux cannot use these devices
>> through the same interface. However if you claim it can, then please
>> write appropriate commit msg.
>>
>> My entire objection hare started not because I believe these are not
>> compatible (although based on different buses I believe they are not
>> compatible), but because the argument was about that other commit. That
>> argument is not correct to make the change. Correct argument to make the
>> change could be: These devices are compatible, because of foo and bar.
>
> A way to put it might be something like:
>
> Almost all Broadcom wireless chipsets, some Broadcom ethernet chipsets
> and most Broadcom-derived Infineon and Cypress wireless chipsets share
> the same rough layout:
>
> System bus -> bus glue logic -> internal bus -> RF chipset(s)
>
> Previous generations had separate drivers for the bus glue logic and
> then probed the internal bus for the RF chipset(s), however in the
> current generation that separation is mostly just a historical
> artifact and abstraction layer.
>
> The firmwares for all WiFi chipsets in this generation also provide
> fundamentally identical interfaces with any differences either probed
> at runtime or derived from data in the firmware. As such, once the
> glue logic is abstracted away, all chipsets of this generation are
> fundamentally identical from a software perspective. Therefore the
> only data needed to use one of these chipsets is the type of bus to
> select the glue logic driver and the firmware to load which is derived
> from the vendor and product IDs.
>
> The only real hardware differences between different chipsets are that
> some have external interrupt lines or additional clocks and I'm not
> sure if hooking those up is actually mandatory.

Thanks, Julian

I will respin and see what to make of it. Your input is (always) 
appreciated although your clown avatar always scares the shit out of me.

Regards,
Arend



