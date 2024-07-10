Return-Path: <devicetree+bounces-84770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 584D892D800
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 20:05:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E96BB281937
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 18:05:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 342CE19539C;
	Wed, 10 Jul 2024 18:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N0LpduDF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B6D1953BE
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 18:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720634752; cv=none; b=jNfaOmUOtKOBP1xtHNDhC9MXuxV8/OAnKEPwTsVcHrlk7evDXm8NTFtbr2UCgW/ff3dsn2FHkHeVLRsT/09PdO2wzjj4QBxnCFofGSs3khJGu8Qn5xnZqS9E5AXRbNQVE0i6M8/ui7dR2/9yjmMXA+Id4ROKgf2O/abXOWjehNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720634752; c=relaxed/simple;
	bh=xPFQtaobne0Y3IQkOM1peRqSAkDrlHgOMu9zHC4m21A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XYVpfeqI4T2m9QBu7k5sJMmG2XCO1UhF62JhJPwbiica9NjYBASq/DbOaArV6u4w+9D4W9ytGD7uMsVJPNnryW3Kw97UMLwaTMus4hUWZpWOoGrK/0GgJCRP9m4bp44SYOYfniiO3Uuc0U1kql8a7IGwwEpDSIdve/cEw3wyxvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N0LpduDF; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a77e392f59fso6775166b.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 11:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720634749; x=1721239549; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dmFM/NO13nxcOJ6bjsxcnABhsn6xEPR4ygnpasExZkQ=;
        b=N0LpduDFgsllv2AKmwg1ahtMwu9qYTuXq9kulyWRdQCELFSXWFMvTs/wDTM+4/k9+u
         Dhkn8IIKcl5pAqjxNuMNN41sBQvDpjtmGwp83upqjuRmnLAeUdJR/GNlaZ72F8JD4fav
         ysKZhLuqdBxJFVLo/CcYWbPgEEqAbXiMgC+O01YkiWzSf6nGXfuITabhRTKtT1kS2/PB
         n5OCycHfAtE3Orlk2XPMCz6zIHgbvgRR96sUUWrhHMDBlAaXHRC8Hb/AWDRTMQla8xkK
         YvKf/FqEKf68WlHqqqVyQdogM52iN7sCwRDQz+jsK208eegFxfkg0/b6jX3xJ06NSyhY
         kp7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720634749; x=1721239549;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dmFM/NO13nxcOJ6bjsxcnABhsn6xEPR4ygnpasExZkQ=;
        b=awPMiNBM+U+yekIm02HKHVVVBuaHK3OLn9LK7NOQmM2f5F11H1CmLLED3wgWXqzCSf
         PhiF/qle6zwf5O7n21Lg2lfXIyvOSSZQBcKo7IA1lZgyQPLwZ7+s1GDdGnWnaKq/iem7
         TRezMfdpGfqqsJeghf07aI/aWuS1gEOaELNqfHdEsNa6YcnG13vEl+yqloBmnjOwGoy2
         tKMDy3rwGX3rO8JnkNnvXTc7RaUZP6C4SrzXibLIQeHG8A4AeyKMlYME8fZzVhtFudaf
         NLO/nBVEp0xYwvHM1MXPdJLol9OX7C00c3DhbYZpXx4HFjV6YD8ZZR15kk3dtv77TMHm
         GX0g==
X-Forwarded-Encrypted: i=1; AJvYcCWzAkgFc2FTCJdF9g8tmJ5RdBEgfVMxLLj9R0n5iUxTLnmaFxUN40ZJYJZr8vzNJ0G7VQpKe7DlAMOa/LvG8kk6pwDyWTwJSk8Grg==
X-Gm-Message-State: AOJu0YxT+FGhG4/Y3ZsZfaN9AAzr2L8QuQbP6OoDqCObnAR+bYTr9EVe
	hErR/+gWFUYtvXgyVJ9tAAK0rZ5epD9aY+FGaZAa0Fb9k7FKqEc=
X-Google-Smtp-Source: AGHT+IEgaC5nEhnHpxh22xaJPWxWnufAG0eIinUXQ/S9GlsosiXC/hpbnUnR+4dOeC1KbUi5xOhu2w==
X-Received: by 2002:a17:907:7783:b0:a77:af6b:d1a8 with SMTP id a640c23a62f3a-a780b89f497mr404831366b.64.1720634748196;
        Wed, 10 Jul 2024 11:05:48 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:4b3c:288a:5668:43e6? ([2a02:810b:f40:4600:4b3c:288a:5668:43e6])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a780a7ff07esm180514366b.111.2024.07.10.11.05.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jul 2024 11:05:47 -0700 (PDT)
Message-ID: <cebcc2e7-27e2-4414-91f1-b83bd42876a7@gmail.com>
Date: Wed, 10 Jul 2024 20:05:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Add uart dma names to the SoC dtsi
 for RK356x
To: Philipp Puschmann <p.puschmann@pironex.com>,
 Dragan Simic <dsimic@manjaro.org>
Cc: Diederik de Haas <didi.debian@cknow.org>,
 linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org
References: <20240710093356.3344056-1-p.puschmann@pironex.com>
 <5414331.Y6POrrGVKo@bagend>
 <72e38433-1ed4-460c-9f69-db26b673c441@pironex.com>
 <9af7bd0db5bc5fd23cfeb121b78bbdc1@manjaro.org>
 <9da2d4cf-1210-4e5c-9cab-ae500ae303f9@pironex.com>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <9da2d4cf-1210-4e5c-9cab-ae500ae303f9@pironex.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Philipp. Hi Dragan,
Am 10.07.24 um 17:14 schrieb Philipp Puschmann:
> Hi Dragan,
> 
> Am 10.07.24 um 16:56 schrieb Dragan Simic:
>> Hello Philipp,
>>
>> On 2024-07-10 12:20, Philipp Puschmann wrote:
>>> Am 10.07.24 um 12:02 schrieb Diederik de Haas:
>>>> On Wednesday, 10 July 2024 11:33:56 CEST Philipp Puschmann wrote:
>>>>> DMA names are required by of_dma_request_slave_channel function that is
>>>>> called during uart probe. So to enable DMA for uarts add the names as in
>>>>> the RK3568 TRM.
>>>>
>>>> Setting it on channels without flow control apparently causes issues. See
>>>>
>>>> https://lore.kernel.org/linux-rockchip/20240628120130.24076-1-didi.debian@cknow.org/
>>>
>>> Ah is see. The only problem that i have is to enable/disable dmas by
>>> having or not having
>>> dma-names properties, where the latter case is followed by kernel
>>> error messages. That
>>> is very counterintuitive. Maybe a explicit boolean like dma-broken
>>> would be better. That
>>> could be set on dtsi level as default and deleted on board dts if
>>> wanted. With such
>>> a boolean we could also prevent the misleading "dma-names property of"
>>> error message
>>> and replace it with a hint that dma is disabled on purpose.
>>
>>  From what I've read in the prior discussions, this seems like a driver
>> issue, so the driver should be fixed instead.
> 
> I would tend to disagree. The serial driver just uses the generic dma API. The error
> message comes from of_dma_request_slave_channel() in drivers/dma/of-dma.c
> and is called from dma_request_chan() inn drivers/dma/dmaengine.c.
> 
> The first function expects a device tree node and "dmas" and "dma-names" properties.
> And "dma-names" is misused as "enable" switch and if not present (aka disabled) it
> dumps "dma-names property of node X missing or empty". For me it's clear that
> a clean way to disable or enable using dma via dts would be better to tell the
> of_dma_request_slave_channel function that dma is disabled on purpose, so it
> could return ENODEV but without printing a misleading error level message.
> 
> Regards,
> Philipp

I'm with Philipp here. Topmost because DT should have to do nothing with a
(speculative) driver issue, it represents hardware. I would go further and
say boards using a (non-kernel console) uart, which can't use dma for
whatever reason should disable it. It will never be an issue for the kernel
console (i.e. "stdout-path = "serialX..." in DT or "console=ttySX" in
cmdline) as the kernel will not use dma for this console. It's by the way
even worse for RK3399 Soc DT, which just doesn't expose the dma channels
for the uarts and for RK3368 which does not a expose a single dma channel
of the peripheral dmac (I tent to speculate for the very same reason).

Alex

>>
>>>>
>>>>> Signed-off-by: Philipp Puschmann <p.puschmann@pironex.com>
>>>>> ---
>>>>>   arch/arm64/boot/dts/rockchip/rk356x.dtsi | 10 ++++++++++
>>>>>   1 file changed, 10 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>>>> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi index d8543b5557ee..4ae40661ca6a
>>>>> 100644
>>>>> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>>>> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>>>> @@ -489,6 +489,7 @@ uart0: serial@fdd50000 {
>>>>>           clocks = <&pmucru SCLK_UART0>, <&pmucru PCLK_UART0>;
>>>>>           clock-names = "baudclk", "apb_pclk";
>>>>>           dmas = <&dmac0 0>, <&dmac0 1>;
>>>>> +        dma-names = "tx", "rx";
>>>>>           pinctrl-0 = <&uart0_xfer>;
>>>>>           pinctrl-names = "default";
>>>>>           reg-io-width = <4>;
>>>>> @@ -1389,6 +1390,7 @@ uart1: serial@fe650000 {
>>>>>           clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
>>>>>           clock-names = "baudclk", "apb_pclk";
>>>>>           dmas = <&dmac0 2>, <&dmac0 3>;
>>>>> +        dma-names = "tx", "rx";
>>>>>           pinctrl-0 = <&uart1m0_xfer>;
>>>>>           pinctrl-names = "default";
>>>>>           reg-io-width = <4>;
>>>>> ...
>>>
>>> _______________________________________________
>>> Linux-rockchip mailing list
>>> Linux-rockchip@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


