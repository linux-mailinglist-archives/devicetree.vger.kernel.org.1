Return-Path: <devicetree+bounces-137337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D7FA08A31
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 09:32:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46DC1167FC6
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 08:32:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76D49207DFD;
	Fri, 10 Jan 2025 08:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b="yQKn+Rrn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E872B1FF7DA
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 08:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736497951; cv=none; b=pzjd7FnBU9KTnKp/gJ79wh03sjesQO6YC+8ExXLStf7h4LAsdez9PRf9P1ie0Mp++XeRuzWNUS4eQ77Yqk7zQaCExfWmIebGDQfRHUV2mY+m6PXPVkZ1HsCBQtsetq+PgVsBF5U2a5iblsqpdp9DkBB3e6FOu0am+f/lLNG0AZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736497951; c=relaxed/simple;
	bh=d9nrnieeaY9dAxiv3vT1fnVQ1OeF0V4OL1bctId3vFY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CzaQQWNOoZaInn0rRqpAeeh8zYadygRQCi6n+YJHq07i+y60D0UaOtUVLM/6nrp5Vv7J+Ut/0RQSFdW4/Gf6/TFPn2RRSpFjTnaLgd8XpbJNxONQdkHK6twpNXfwizWWRKWMrT9rtRmeC/2Rqhb1LgI5tfRVq/oXvbG3Gx+IDVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b=yQKn+Rrn; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43690d4605dso13256965e9.0
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 00:32:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1736497945; x=1737102745; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K9Ojh4fi+Aury5PIzpaOVh6/pBCJ3O4TsGOr7mgb28Q=;
        b=yQKn+RrnNNqfF+OC23WXUI17Uc7vHe9vpd1v1N5l41U4fMZurLCzNxr1MLLz41Kl8x
         wHEFx9GwNMDZJn1aPHcDyJRWnvmxaHlRzGwyCXeCKgRHUHYl6kx1NBmUq+Ne4bNvoLsn
         NClzithLOasjZc6uRnGhcoxAH4JayPB6NsIbY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736497945; x=1737102745;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K9Ojh4fi+Aury5PIzpaOVh6/pBCJ3O4TsGOr7mgb28Q=;
        b=gdCFvHP1Y7/BWOCP7gwwxg29nBHOw9TonS3sWVhdLyh8kZaVRrXnRun6IfIlZgZJ3z
         ufSsyuuTs2rZAHeorCnryFqqets20ud87cdv71FMgMJM8g/Vgj2ZqRR4z5/rNnJdJ4zG
         T27WIdGct4IjSOW54wG4SlWDsdkJgx9aeXb6PoCFqkHecupRJ+pJQXaw74xFBHbMznF7
         EbOl4zH9U2TrnvexuSaqiCZ8CQhMZN5wVjDvO0DyQ1PnU3tJLx+HWUvpe7c4E0/oscdA
         Z0KkR4XJv0tbGGKzJUssQjKJjIttKubK6deJ+QHmLOY2rSfF1oIxBukuN0wCq6WfCRjP
         oo2g==
X-Gm-Message-State: AOJu0Yy2VtLhPPbpYDjhod5sFEf00Vp8vWrzu4Lft57TdNTkcEqifbpB
	p9so0njLVBXFL4u4Mo0K5x27GD072CzSIi/SLU+Xwmh1XCjZWvp/qQlZ1KDvkIw=
X-Gm-Gg: ASbGnctvd1mtlLcGj2x1Vhvmmr5ZuKrXrsS36YHLkbOyne3N4effTS0sJyskAwMjWD5
	3LvuliWBV10njMLu6OM69QKBG0Qj/aARBVCGfowGecpTEUPZ5zu1Lqd8igoS+o4OgrprI6X2ZHN
	b8BHPsNF6Lkm9mukZn7ATewGytTCOzkHkV0oEfjv6eWYQQbxqANUU10XFHABAhXwaLj9y0VedWc
	PrQmW83TFd0I3Wa12oHQAB9k43fx1lxxM4QDCvIUt8ASTxRJi5ZxXvYBR5Mjvtls4i/uusklkjP
	yx4lnQvOw7gh+Y+bzfpWgAUsYPdEXOV4FbZt3ra+617czMolalN0SI7XF6pQTnwJdJK/KsczP76
	CxgHN1H7NMcsHI/fg
X-Google-Smtp-Source: AGHT+IH5ep0YHccYyrjPGJ5OrRVVN6hg5ebfZqa5FUuFAYVb+0R1lAsp5xq987HIYz3aWTj1I0Yytg==
X-Received: by 2002:adf:b1d9:0:b0:386:32ca:9e22 with SMTP id ffacd0b85a97d-38a87308c2bmr6760599f8f.41.1736497945025;
        Fri, 10 Jan 2025 00:32:25 -0800 (PST)
Received: from ?IPV6:2a01:cb05:949d:5800:e3ef:2d7a:4131:71f? (2a01cb05949d5800e3ef2d7a4131071f.ipv6.abo.wanadoo.fr. [2a01:cb05:949d:5800:e3ef:2d7a:4131:71f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e38bf78sm3872696f8f.48.2025.01.10.00.32.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jan 2025 00:32:24 -0800 (PST)
Message-ID: <aae4c192-40b8-4f93-ab3a-7ba1da3a0a23@smile.fr>
Date: Fri, 10 Jan 2025 09:32:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: ti: k3-j721e-beagleboneai64: Enable
 ACSPCIE output for PCIe1
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-omap@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 robh@kernel.org, kristo@kernel.org, vigneshr@ti.com, nm@ti.com, afd@ti.com,
 Romain Naour <romain.naour@skf.com>
References: <20250109102627.1366753-1-romain.naour@smile.fr>
 <20250109102627.1366753-2-romain.naour@smile.fr>
 <eu5xmihnffmqas2x2ioleuzzvyfbffl5eqlwuqfe4mh6qa2rzy@7mmuxsbkmz4o>
 <8ff7ca4f-227d-40c5-867d-497e03bef72a@smile.fr>
 <begojbvvrpyjfr3pye7mqwiw73ucw5ynepdfujssr4jx4vs33a@pwahnph3qesl>
Content-Language: fr
From: Romain Naour <romain.naour@smile.fr>
In-Reply-To: <begojbvvrpyjfr3pye7mqwiw73ucw5ynepdfujssr4jx4vs33a@pwahnph3qesl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello Siddharth,

Le 10/01/2025 à 09:15, Siddharth Vadapalli a écrit :
> On Thu, Jan 09, 2025 at 02:51:23PM +0100, Romain Naour wrote:
>> Hello Siddharth, All,
> 
> Hello Romain,
> 
>>
>> Le 09/01/2025 à 12:49, Siddharth Vadapalli a écrit :
>>> On Thu, Jan 09, 2025 at 11:26:27AM +0100, Romain Naour wrote:
>>>
>>> Hello Romain,
>>>
>>>> From: Romain Naour <romain.naour@skf.com>
>>>>
>>>> Unlike the SK-TDA4VM (k3-j721e-sk) board, there is no clock generator
>>>> (CDCI6214RGET) on the BeagleBone AI-64 (k3-j721e-beagleboneai64) to
>>>> provide PCIe refclk signal to PCIe Endponts. So the ACSPCIE module must
>>>> provide refclk through PCIe_REFCLK pins.
>>>>
>>>> Use the new "ti,syscon-acspcie-proxy-ctrl" property to enable ACSPCIE
>>>> module's PAD IO Buffers.
>>>>
>>>> Cc: Siddharth Vadapalli <s-vadapalli@ti.com>
>>>> Signed-off-by: Romain Naour <romain.naour@skf.com>
>>>> ---
>>>> With this patch, we can remove "HACK: Sierra: Drive clock out" patch
>>>> applied on vendor kernel for BeagleBone AI-64:
>>>> https://openbeagle.org/beagleboard/linux/-/commit/ad65d7ef675966cdbc5d75f2bd545fad1914ba9b
>>>
>>> [trimmed]
>>>
>>>> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>>>> index af3d730154ac..32a232a90100 100644
>>>> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>>>> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>>>> @@ -5,6 +5,7 @@
>>>>   * Copyright (C) 2016-2024 Texas Instruments Incorporated - https://www.ti.com/
>>>>   */
>>>>  #include <dt-bindings/phy/phy.h>
>>>> +#include <dt-bindings/phy/phy-cadence.h>
>>>>  #include <dt-bindings/phy/phy-ti.h>
>>>>  #include <dt-bindings/mux/mux.h>
>>>>  
>>>> @@ -82,6 +83,11 @@ ehrpwm_tbclk: clock-controller@4140 {
>>>>  			reg = <0x4140 0x18>;
>>>>  			#clock-cells = <1>;
>>>>  		};
>>>> +
>>>> +		acspcie0_proxy_ctrl: syscon@18090 {
>>>> +			compatible = "ti,j721e-acspcie-proxy-ctrl", "syscon";
>>>> +			reg = <0x18090 0x4>;
>>>
>>> 0x_0011_8090 is probably *not* the "PROXY" register i.e. it could be
>>> locked with the help of "CTRLMMR_LOCK0_KICK0" and "CTRLMMR_LOCK0_KICK1"
>>> registers, in which case the CTRL_MMR region needs to be unlocked to write
>>> to that register. On J784S4, that happens to be true, which is why the
>>> proxy register 0x_0011_a090 was used at [0]. Please test with 0x_0011_a090
>>> which is the "PROXY" register on J721E as well, i.e. it can be written to
>>> unconditionally.
>>>
>>> [0]:
>>> https://lore.kernel.org/r/20240930111505.3101047-1-s-vadapalli@ti.com/
>>
>> Thanks for the review!
>>
>> Actually the Proxy0 vs Proxy1 choice is not really clear for me. We have two
>> proxy to reach the same register:
>>
>>   CTRLMMR_ACSPCIE0_CTRL Register (Proxy0 Offset = 18090h; Proxy1 Offset = 1A090h)
>>
>> From my testing both addresses works (maybe since my SoC is a general purpose one).
>>
>> When and why Proxy1 must be used?
> 
> Yes, both Proxy0 and Proxy1 work, but Proxy0 is the default access path
> when we look at it in the context of J784S4. On J784S4, instead of
> calling out Proxy0, the register is called ACSPCIE0_CTRL when it falls
> in the Proxy0 range, while it is called ACSPCIE0_PROXY_CTRL when it
> falls in the Proxy1 range. Therefore, from the perspective of the naming
> convention followed on J784S4 for which a compatible was first introduced,
> Proxy1 address would correspond to the ACSPCIE0_PROXY_CTRL register.

Ok, thanks for the explanation.
I beleive it's worth to add it to the commit log.

Best regards,
Romain


> 
>>
>> Otherwise I'm fine to use  0x_0011_a090.
>>
>> Best regards,
>> Romain
> 
> Regards,
> Siddharth.


