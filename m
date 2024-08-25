Return-Path: <devicetree+bounces-96437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1859F95E243
	for <lists+devicetree@lfdr.de>; Sun, 25 Aug 2024 08:56:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C38361F2183F
	for <lists+devicetree@lfdr.de>; Sun, 25 Aug 2024 06:56:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4F7D39FCF;
	Sun, 25 Aug 2024 06:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Thasth8M"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6D2B647;
	Sun, 25 Aug 2024 06:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724568965; cv=none; b=sXmpLoL99AlF8q3GLP/mmLZwfMpGR+1UkLbgCI4yucxChWzq1IJM6qLyNyG11iMLFPvlL85YFHscwjrC1vG+1ivz3dFh7vMZaV+pbzL6O7/vTTCPEeufcXXZkv0EnqXZm7v3pxk3bTzl8bwtblc+MxLTHZ2lJyzeMAhb8HkGEq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724568965; c=relaxed/simple;
	bh=WT8l8RP5ckgdJm8xdE0uaqIa5UP0nizOqSwZQmdWIwk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QdRLLNobO0W9PYibn4QtkMGIkvYEt4rIXHhS3m5moYDjin/OhCCSG4rcA6OjvnRom5BwZY1tSA6HhkD4Jq2O+R9lTTGcbl5XLnCuHdYYn+T6ulbOQvdEYHPQmDUQ6KnD2gvFCyYQ/0otcHRISWlReaYkKgS7FqzLwVLJfSji0mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Thasth8M; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39128C32782;
	Sun, 25 Aug 2024 06:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724568965;
	bh=WT8l8RP5ckgdJm8xdE0uaqIa5UP0nizOqSwZQmdWIwk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Thasth8MtncmnKwvt9jlHJodQ4wOB/K1gvr2zMEPkGn9xz5ANSZfVAVIUsk8+QGUE
	 5sF4sd4gGmWN/cVfXUW0Y++J/m0plUkBtRl+ULWclm4diOhJdmiDrmiCuvHVfZAcE3
	 261sjeX/E3zhWMghsvB2I+ArAEnwetlZmPsAqptKVZC66y5SedHFZ1Bd69TrPK0kiQ
	 ixaw1ilGF+yHu4wcs7cUrbzptxoaN96K8lrjjm0yH/0IxUdogbpWtP0n99mzDt22jD
	 qVkUNvNjl8owUrX0ZlFgaDEHZ9FYQTtV5GxjGOPF/Wifcj0rz4WLaQ4Njh/8DjdEyz
	 QG2s435EWAxvQ==
Message-ID: <efb7bba5-b19c-49f5-8ff5-214ce070015d@kernel.org>
Date: Sun, 25 Aug 2024 08:55:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: serial: Add Loongson UART controller
To: =?UTF-8?B?6YOR6LGq5aiB?= <zhenghaowei@loongson.cn>,
 gregkh@linuxfoundation.org, jirislaby@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, chenhuacai@kernel.org,
 kernel@xen0n.name, p.zabel@pengutronix.de, zhuyinbo <zhuyinbo@loongson.cn>,
 Jianmin Lv <lvjianmin@loongson.cn>, wanghongliang <wanghongliang@loongson.cn>
Cc: linux-serial@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, loongarch@lists.linux.dev
References: <20240804063834.70022-1-zhenghaowei@loongson.cn>
 <4d1f2426-b43c-4727-8387-f18edf937163@kernel.org>
 <f31609c4-1e47-49bc-9231-5b0353d35dc9@loongson.cn>
 <601adbfd-fbb6-48c6-b755-da1b5d321d6b@kernel.org>
 <89e71573-9365-2e61-bb38-759363df1b8b@loongson.cn>
 <5fdf6810-f729-42bf-a5fd-a2de02d0a894@kernel.org>
 <32ff2c9b-1d34-4637-80ff-e8eefe253a95@loongson.cn>
 <d9d76a4a-1552-462b-b946-6475645c6f59@kernel.org>
 <778e50bc-58db-42e6-aee3-3b1e01ca227d@loongson.cn>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <778e50bc-58db-42e6-aee3-3b1e01ca227d@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 25/08/2024 05:34, 郑豪威 wrote:
> 
> 在 2024/8/12 16:25, Krzysztof Kozlowski 写道:
>> On 12/08/2024 10:09, 郑豪威 wrote:
>>> 在 2024/8/9 18:05, Krzysztof Kozlowski 写道:
>>>> On 09/08/2024 11:55, 郑豪威 wrote:
>>>>>>>>> +    description: Enables fractional-N division. Currently,
>>>>>>>>> +      only LS2K1500 and LS2K2000 support this feature.
>>>>>>>>> +
>>>>>>>>> +  rts-invert:
>>>>>>>>> +    description: Inverts the RTS value in the MCR register.
>>>>>>>>> +      This should be used on Loongson-3 series CPUs, Loongson-2K
>>>>>>>>> +      series CPUs, and Loongson LS7A bridge chips.
>>>>>>>>> +
>>>>>>>>> +  dtr-invert:
>>>>>>>>> +    description: Inverts the DTR value in the MCR register.
>>>>>>>>> +      This should be used on Loongson-3 series CPUs, Loongson-2K
>>>>>>>>> +      series CPUs, and Loongson LS7A bridge chips.
>>>>>>>>> +
>>>>>>>>> +  cts-invert:
>>>>>>>>> +    description: Inverts the CTS value in the MSR register.
>>>>>>>>> +      This should be used on Loongson-2K0500, Loongson-2K1000,
>>>>>>>>> +      and Loongson LS7A bridge chips.
>>>>>>>>> +
>>>>>>>>> +  dsr-invert:
>>>>>>>>> +    description: Inverts the DSR value in the MSR register.
>>>>>>>>> +      This should be used on Loongson-2K0500, Loongson-2K1000,
>>>>>>>>> +      and Loongson LS7A bridge chips.
>>>>>> Same questions for all these. Why choosing invert is a board level
>>>>>> decision? If it "should be used" then why it is not used always?
>>>>>>
>>>>> Because these features are not applicable to all chips, such as
>>>>> 'fractional-division',
>>>> Hm?
>>>>
>>>>> which is currently supported only by 2K1500 and 2K2000, and for
>>>>> Loongson-3 series
>>>> These are SoCs. Compatible defines that. Please align with your
>>>> colleagues, because *we talked about this* already.
>>>>
>>>> Best regards,
>>>> Krzysztof
>>> I consulted with my colleagues and would like to confirm with you. For
>>> the five
>>>
>>> properties provided, fractional-division is offered as a new feature,
>>> supported by
>>>
>>> 2K1500 and 2K2000. As for the invert property, it is due to a bug in our
>>> controller,
>>>
>>> and its usage may vary across different chips. Should we add different
>>> compatible
>>>
>>> values to address these issues for different chips, whether they are new
>>> features or
>>>
>>> controller bugs?
>> How did you align? We had already talks with you about this problem -
>> you need specific compatibles. How you explain above properties, all of
>> them are deducible from the compatible, so drop them.
>>
>> Your entire argument above does not address at all my concerns, so
>> before you respond repeating the same, really talk with your colleagues.
>>
>> One of many previous discussions:
>> https://lore.kernel.org/linux-devicetree/25c30964-6bd3-c7eb-640a-ba1f513b7675@linaro.org/
>>
>> https://lore.kernel.org/linux-devicetree/20230526-dolly-reheat-06c4d5658415@wendy/
>>
>> I wish we do not have to keep repeating the same to Loongson. Please
>> STORE the feedback for any future submissions, so you will not repeat
>> the same mistakes over and over.
>>
>> Best regards,
>> Krzysztof
> 
> Hi:
> 
> I have been aligning with my colleagues over the past few days and
> 
> reviewing previous discussions. Based on these, I have made the
> 
> following modifications according to the differences in the controller:
> 
> +properties:
> +  compatible:
> +    oneOf:
> +      - enum:
> +          - loongson,ls7a-uart
> +          - loongson,ls3a5000-uart
> +          - loongson,ls2k2000-uart
> +      - items:
> +          - enum:
> +              - loongson,ls2k1000-uart
> +              - loongson,ls2k0500-uart
> +          - const: loongson,ls7a-uart
> +      - items:
> +          - enum:
> +              - loongson,ls2k1500-uart
> +          - const: loongson,ls2k2000-uart
> +      - items:
> +          - enum:
> +              - loongson,ls3a6000-uart
> +          - const: loongson,ls3a5000-uart
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clock-frequency: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clock-frequency
> +
> +allOf:
> +  - $ref: serial.yaml
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/clock/loongson,ls2k-clk.h>
> +
> +    serial@1fe20000 {
> +        compatible = "loongson,ls2k1000-uart", "loongson,ls7a-uart";
> +        reg = <0x1fe20000 0x10>;
> +        clock-frequency = <125000000>;
> +        interrupt-parent = <&liointc0>;
> +        interrupts = <0x0 IRQ_TYPE_LEVEL_HIGH>;
> +    };
> 
> Does this modification meet the expectation?

Yes, assuming ls7a is a specific SoC, not a family of SoC.

Best regards,
Krzysztof


