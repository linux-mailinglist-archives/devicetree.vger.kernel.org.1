Return-Path: <devicetree+bounces-174262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECE1AACA22
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 17:54:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C80F63AEE27
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 15:54:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86194283159;
	Tue,  6 May 2025 15:54:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cSU5PDci"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D671927FB26
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 15:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746546854; cv=none; b=BEUTNVDbxAZazYRWwEXIE+uqQQYKcxs8KLqC47QRJ2Gn/x+GhZm4EYtizXhaU+Q9uu+1Hr5i7aDu09VZrncx7WbVZuLl21q2u3tPRYKgmXjR9hYfX2UyQAtMLPI0M+J/zGICe+X/rin46BrBiBExh/juyTjyIzTISwbxMIow2nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746546854; c=relaxed/simple;
	bh=WoYmO/t3CHmP9wXLDJZTuRNn1yGkvLcxfDMBk2A2hkI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sWqYpb36GWSf597o1T4hbAWIENk2aGt/UMEFGrsf7/IgSqZc8lch9dq+MqZk3RIwh23hVLqOZUibPaFe0UhNL5GjXYcgjFDnA6xJvCYr+zYNwjwmSAD3mF6bd0HOjLoSqt7hWRQpgU8U3nGBhwjcbyZ2EeM9s7eZ7kicxrL9/GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cSU5PDci; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-7081165a238so41972067b3.1
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 08:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746546852; x=1747151652; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gtxIl2/0kH6G7uGWJZ1otltXuP0muJe5B2+xaMM9Q4o=;
        b=cSU5PDciq7Npg/hO81j7SsR10tyULPuiCxpDTtnt1XMPS21poll+wCAiNymWkSD+/9
         cLhzARZLE48L3TGnxnv87nrhiEmahTEAvG9NMchNXXLVvZuK6sPjQcAiM18WuCNoq3K1
         C8hI4jr+nYeQKSzt4A9pBnjk7mxJTCBC+2hW+Vsd/uG7zUR+N9h7VxJkl544CtTMsDe3
         mDDswa3vZMrR2OfNMaxxdHbFz3hEE04qavEvY0981Ng2rTdSUsEbr/k42y1thoU+blgJ
         O99NG0V7EDJo2FXD7cpWnAbUNEZ9ht/GilrkgiAC3yE8imrAeRnrrhe9c1GzMBIC6NsZ
         Q7sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746546852; x=1747151652;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gtxIl2/0kH6G7uGWJZ1otltXuP0muJe5B2+xaMM9Q4o=;
        b=R+FjUv0JHqRtWbkx3wTz2sunFLZsoew8WSI5529mkXZNAFnv2vM2DVNChpg9V2EApN
         RUd16iq8l6WuYgGjtI4MPYhNbAtXOZHTqgED3KXvhn+m6wAKztBwd1us1yLxr3hg9Y2d
         vPvzHvznUUWx0z26B8/C/otXIH4PUHgvnxIpnsy1+KUrlyV3MmRfQ3IXLSaYwapD+Nep
         bLRTElZQ28tr6QlNXEVZ4ZPNJb8SlzI3TxQAsDYoEneEYucbkxv1SkftGz4B6yeej/Gk
         clRS/VazEN41a2YnLeMnI7wzM/1mkWAx1AtCDBZDUSbkAYUJamVhzj7I3qD3GLEJl60c
         S/1w==
X-Forwarded-Encrypted: i=1; AJvYcCUrNbjwr6bodpjBGbjRiDinMaB43dY3Ts1x52e6/P0xNUJ+9+KIvwnOfOMCRL8HWOc/i+aN24voCiRZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwAc1/kvn/sykszEs/NqfZxp/1MswdojO/DFlgADRu/AcoEk8e3
	nDc14YFLgS94Ps/oAhJAKpuSFInKAdDJKbNmIxc/q7VyQoCITrxE
X-Gm-Gg: ASbGnct4ARLK4Qflhs+zW2+8Iw23DIMJJAVAnveBNKbPlxNUQADZyt/Oqzf80GDWgpp
	TDwL30b4AdfgFNmFjIomWHtKNV/dNQFvJzq/hDGENB6eMJ+57zdC/Dc5RVfSx02EmkBQMNV1U6c
	N5b7f1i1kpfTI6ja+nSfDh1xSa095tqJOBB9iFIhVRYOBs51q/rvzoZ46kVzVKQt1dy3bePmiqo
	1MAgxbHSXEgQuQKd5r4JHsnjkmN+9CrbINqO+AAYpxYnehPqVvaU+TAUpJDjlvpSp4As5a0+ZD8
	7YiHAr6yvtbtreMXsjb3AMCsAuIVmYixM+65+g==
X-Google-Smtp-Source: AGHT+IFI+tUNkJxIuyYAc8bmcRWbskziPQs/XLMKjqhiI4ibMmeWezadISFleGs+KBk3gs5XHIjS9Q==
X-Received: by 2002:a05:690c:7084:b0:706:cc34:daaf with SMTP id 00721157ae682-708eaefed5fmr175458157b3.20.1746546851752;
        Tue, 06 May 2025 08:54:11 -0700 (PDT)
Received: from [100.96.0.9] ([104.28.237.13])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7091bf0b878sm4038627b3.12.2025.05.06.08.54.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 May 2025 08:54:11 -0700 (PDT)
Message-ID: <c8114ff8-f207-4ea8-aaf1-298dcea9f030@gmail.com>
Date: Tue, 6 May 2025 11:54:10 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add Luckfox Omni3576
 and Core3576 bindings
To: Conor Dooley <conor@kernel.org>
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh@kernel.org, krzysztof.kozlowski@linaro.org, conor+dt@kernel.org,
 jonas@kwiboo.se, frattaroli.nicolas@gmail.com, andrew@lunn.ch
References: <20250506114115.613616-1-inindev@gmail.com>
 <20250506114115.613616-3-inindev@gmail.com>
 <20250506-almighty-uncork-f7a0bc42d763@spud>
Content-Language: en-US
From: John Clark <inindev@gmail.com>
In-Reply-To: <20250506-almighty-uncork-f7a0bc42d763@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/6/25 11:44 AM, Conor Dooley wrote:
> On Tue, May 06, 2025 at 07:41:14AM -0400, John Clark wrote:
>> Add device tree binding for the Luckfox Omni3576 Carrier Board with
>> Core3576 Module, based on the Rockchip RK3576 SoC.
>>
>> Signed-off-by: John Clark <inindev@gmail.com>
>> ---
>>   Documentation/devicetree/bindings/arm/rockchip.yaml | 10 ++++++++++
>>   1 file changed, 10 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> index 455fbb290b77..826dede32145 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -715,6 +715,16 @@ properties:
>>             - const: lckfb,tspi-rk3566
>>             - const: rockchip,rk3566
>>   
>> +      - description: Luckfox Core3576 Module
>> +        items:
>> +          - const: luckfox,core3576
>> +          - const: rockchip,rk3576
>> +
>> +      - description: Luckfox Omni3576 Carrier Board
>> +        items:
>> +          - const: luckfox,omni3576
>> +          - const: rockchip,rk3576
> 
> Not sure this is correct, does the module not have to be attached to
> this particular carrier to be used?

The compute module and the carrier board together like the E25. 
Presumably the compute module would be used in other applications
but the carrier board is not useful without it.

Is the E25 done correctly here?  I can copy this format:

model = "Radxa E25 Carrier Board";
compatible = "radxa,e25", "radxa,cm3i", "rockchip,rk3568";
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts?h=v6.15-rc5

compatible = "radxa,cm3i", "rockchip,rk3568";
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi?h=v6.15-rc5

- description: Radxa Compute Module 3 (CM3)
items:
   - enum:
       - radxa,cm3-io
   - const: radxa,cm3
   - const: rockchip,rk3566

- description: Radxa CM3 Industrial
items:
   - enum:
       - radxa,e25
   - const: radxa,cm3i
   - const: rockchip,rk3568
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/arm/rockchip.yaml?h=v6.15-rc5

> 
>> +
>>         - description: Lunzn FastRhino R66S / R68S
>>           items:
>>             - enum:
>> -- 
>> 2.39.5
>>

