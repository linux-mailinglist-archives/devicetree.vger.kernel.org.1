Return-Path: <devicetree+bounces-154199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA92A4F479
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 03:11:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BD3377A790E
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 02:10:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25543155743;
	Wed,  5 Mar 2025 02:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="geP0D20p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9199514B976
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 02:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741140682; cv=none; b=oM2xtFI27adZdh5f7e7VPesJ/zuFZVDmATUFZVxNPV/yWlTSjWAfUe43dxD8ddj235D2ATp1rBu1PRfXJczwH9YJViekZdz+F+Weml+dVV00qoHF2d/TUhhWsfnsS4oLarST6QArC+lB5n5Nf50EZi9HCsbiY1Bp6D0ZKLhPV5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741140682; c=relaxed/simple;
	bh=Q8WmlKeJj7M60YHkpMu1VvFfgzxwRdhcvmDLZvH+Xvk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pd3pzYJYqfMpSYTyR3HSU9FiJ6uKh3pJVrnRvaePVXAEg+TtzBJaMv4hjzfnWanqbdiMUJBbi9L4ZcfuMY47JdjYQBBgZLu2Zc50Wd5GaNIDKSJ5tgfM85HtL3+7SdOvofY522SKO3Bmgt5Y3LLS15/fsLi0IWajWxB+tje6V5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=geP0D20p; arc=none smtp.client-ip=209.85.166.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f48.google.com with SMTP id ca18e2360f4ac-85aec8c95c4so154033339f.1
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 18:11:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1741140678; x=1741745478; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+IPu6iJQJZK/agzAsjhgRU4s3OBRGcgTM6nYh8CRHfM=;
        b=geP0D20pbfeUDtWgYwV178SEaQYfn9zr7N0CxaHWyOdQKac2+JSHHyocxLENZJ8QhM
         CilXrfr9XY3kd17nfgKLEi1RE7EULvvBF/c7MAjfjoEDagnP3hqfuZygns3E0VwfSciz
         vVai05zaNuM0YCakMGmFxG5o64fNoDuO1TMomYGii6fVGTDqyxcw37JphyxNy+2f7FZs
         /ClSODncw7oZ5v/8s/AslyrdxDHgFX4kMhYQgGIlfzXW1RQMBQ1tmVd3zKS9L4vXJfuj
         QE2N9JnScERcBGdUzz5H7ZgtG7fEeLT5o/JMIHUxQrBDR4WgwYn0X532NvAqOsDNerhm
         G/7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741140678; x=1741745478;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+IPu6iJQJZK/agzAsjhgRU4s3OBRGcgTM6nYh8CRHfM=;
        b=V6atgfKNxhRTJ1UhXjso1ePBhnhHaFLcvKSrsUej76EXpnVZkN4BgmIBSG4lDjfd/Z
         SWwkKqPQw7JWlJ4JUiULQ5cRk1B7FYvacLsDn5Q/Bz1Km9K/q2hyKgEW3dVszob/DgeH
         MBHCHd3XMif2Vej1SWvjh3nVR2IT9jwc08dxI0Q1GcqaV9RE9T7Drpzjqi2qFAEd3mUd
         WsebeTJQhL9te/XUb8FtASnm9UV/kmFCgYcYnlXUWc12ATnMXYDgA0JPFs3bm63ZwEk6
         7baNT+5MjrU9xhKTTNmCrwVVyw01NkAH2jsKy/HQPNsIUCAG/Ks1oOD+GlCqMdV/f1rX
         qt5g==
X-Forwarded-Encrypted: i=1; AJvYcCWNzPItf4LJPp4kF6q7/MD07wA8XrX5EHsMg9AIH1TwruE0tEqktW6pl6zNnEQPLBNIdRuri91O18r/@vger.kernel.org
X-Gm-Message-State: AOJu0YzUrCvG+qy54lUvEqgaljWPfEakQLdczfa5L9rXLvXpawM7jEDB
	/mQj7M3AkZWRNm5XjT2FBCs/eGJb2CnnGkjhgmNzqvG4JLclae2GhW8+qlVQ0wfJFVJB5ey5Cwi
	xAd0=
X-Gm-Gg: ASbGnctldW7ExclwJOXRkjFd3AC0Gl58xdYgcm/sW7BCXNLSqfQqUnIIL5RpApoqKuA
	S1o7PtpAqtWXv1ulCj67lJQEknkxA/NLRB/Ae5Lt8wJgN7luQ/Ush318FYOVdPF7KrBGNbAkeHz
	zvjSD3AYs9JxvrS5sdC9qR+ndP0iYuR5C+RpH8tEwjGp73wj+387uvdXie9+BXu/U5U0bff9g4G
	cszUUz34oMqY4qKd3EdSgqeGdBHtKgCKE2nMwm76XAVqST9FzouZVnW844n7f8v5FAT3pJiH6nE
	BkZ6ASthO9G9R4m5tcqnNMcAgXfKK8IkkjxVmT8=
X-Google-Smtp-Source: AGHT+IG15YhzjdJR2FqfaMtHfCYjpuXOjr2GugugmrdEVDdT7gY0ODZ6/4j012jh/Swg9m4eJ6IseA==
X-Received: by 2002:a05:6602:388c:b0:85a:fd37:1c6d with SMTP id ca18e2360f4ac-85aff8abd43mr226317839f.6.1741140678617;
        Tue, 04 Mar 2025 18:11:18 -0800 (PST)
Received: from [100.64.0.1] ([170.85.6.166])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f07cd84f06sm2387028173.67.2025.03.04.18.11.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Mar 2025 18:11:18 -0800 (PST)
Message-ID: <ab10e069-d9e1-4df7-9454-8b0fc910443d@sifive.com>
Date: Tue, 4 Mar 2025 20:11:16 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v5 1/2] dt-bindings: i2c: spacemit: add support for
 K1 SoC
To: Yixun Lan <dlan@gentoo.org>, Troy Mitchell <troymitchell988@gmail.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-riscv@lists.infradead.org,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev,
 Conor Dooley <conor.dooley@microchip.com>
References: <20250303-k1-i2c-master-v5-0-21dfc7adfe37@gmail.com>
 <20250303-k1-i2c-master-v5-1-21dfc7adfe37@gmail.com>
 <20250303093506-GYA58937@gentoo>
Content-Language: en-US
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <20250303093506-GYA58937@gentoo>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Troy,

On 2025-03-03 3:35 AM, Yixun Lan wrote:
> On 13:30 Mon 03 Mar     , Troy Mitchell wrote:
>> The I2C of K1 supports fast-speed-mode and high-speed-mode,
>> and supports FIFO transmission.
>>
>> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
>> Signed-off-by: Troy Mitchell <troymitchell988@gmail.com>
>> ---
>>  .../devicetree/bindings/i2c/spacemit,k1-i2c.yaml   | 59 ++++++++++++++++++++++
>>  1 file changed, 59 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml b/Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..db49f1f473e6f166f534b276c86b3951d86341c3
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/i2c/spacemit,k1-i2c.yaml
>> @@ -0,0 +1,59 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/i2c/spacemit,k1-i2c.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: I2C controller embedded in SpacemiT's K1 SoC
>> +
>> +maintainers:
>> +  - Troy Mitchell <troymitchell988@gmail.com>
>> +
>> +properties:
>> +  compatible:
>> +    const: spacemit,k1-i2c
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
> ..
>> +  clocks:
>> +    minItems: 2
>> +    maxItems: 2
>> +
>> +  clock-names:
>> +    minItems: 2
>> +    maxItems: 2
> I'd suggest to give a brief description and explicit clock name here,
> you can consult marvell,mv64xxx-i2c.yaml for example
> 
>> +
>> +  clock-frequency:
>> +    description: |
>> +      K1 support three different modes which running different frequencies
>> +      standard speed mode: up to 100000 (100Hz)
>> +      fast speed mode    : up to 400000 (400Hz)
>> +      high speed mode    : up to 3300000 (3.3Mhz)
>> +    default: 400000
>> +    maximum: 3300000
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts
>> +  - clocks
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    i2c@d4010800 {
>> +        compatible = "spacemit,k1-i2c";
>> +        reg = <0xd4010800 0x38>;
>> +        interrupt-parent = <&plic>;
>> +        interrupts = <36>;
>> +        clocks = <&ccu 176>, <&ccu 90>;
>> +        clock-names = "apb", "twsi";
> 9.1.4.61 TWSI0 CLOCK RESET CONTROL REGISTER(APBC_TWSI0_CLK_RST)
> https://developer.spacemit.com/documentation?token=LCrKwWDasiJuROkVNusc2pWTnEb#part594
> from above docs, there are two clocks 
> bit[1] - FNCLK, TWSI0 Functional Clock Enable/Disable
> bit[0] - APBCLK, TWSI0 APB Bus Clock Enable/Disable
> 
> I'd suggest to name it according to the functionality, thus 'func', 'bus'
> clock, not its source.. which would make it more system wide consistent

Also in that same register is:

2	RST	RW	0x1	TWSI0 Reset Generation
This field resets both the APB and functional domain.
- 0: No Reset
- 1: Reset

Which means you need a 'resets' property in the binding as well.

Regards,
Samuel

>> +        clock-frequency = <100000>;
>> +    };
>> +
>> +...
>>
>> -- 
>> 2.34.1
>>
> 


