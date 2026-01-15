Return-Path: <devicetree+bounces-255688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DBAD25ABD
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 17:16:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2ED6530EB531
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 16:10:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1ED93B8D53;
	Thu, 15 Jan 2026 16:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sb1ml4z6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D11303A9633
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 16:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768493433; cv=none; b=gsVturMr3vjd2jde2H1zjFHRdt/IGxEQZqzlLwdzWCbfVBBESwKT43K0e5Erk8Z3VXyhl3X7bFi+jF4NSg+SkZTRftUV0iAz/lk9UAJymkvE4AtwkNz0x85MzXQ3CR9Hvx08oOjBuake7JLdvFKefyD87K3v6QIymY62wJoXPDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768493433; c=relaxed/simple;
	bh=46O3WGNI/I2BanZJr/n1NSM5aWJGCML3xJV6mE9CS8U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TKHvDdCaKZwGCxkqTyJ0X1JMxnLOtyu8hZnS7Uy/YVN5/j1t2aCMwkCoWaX25Xix4chDm6ptL8xkJWzBoQ/bRa9MGHBPKaK8mXwyTwxTnkcjjgVNkOP/McfiJJYLiZ8QJLIKAZDsWoOtsGNIUM5u1wySU/I2MWtIOeJY9HtTvnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sb1ml4z6; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4801d98cf39so1891095e9.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 08:10:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768493428; x=1769098228; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gQXGgSx7jpUFKQjZ6iyGO811lP9xodhRioXDBaDurfQ=;
        b=sb1ml4z6vGndnWJE9lAodrXq7lQY4NB7xUzD+qbG/mAnWxwn9H+pYjdvJSz5wuJ9Gi
         tLuM4acpgB8RUY9wnN1+Qe7FH4KmcEAcV841PS0tuyQDRiL9XTTT/RgXxAGJY0bUd75l
         mcc8ysaCAe3O6o0JTqvYPjwLMDUwWba9JBR622/w8/8Zngd1U5IgtLbzQZaQ7I0kPwsm
         cX8+yVFf0NUlujbTHc/UsJA1Tdm95062IZHl62NlAyTA9yyMVYvzgcsKT/3+kipYPF2r
         VPIShMNkBaTznpraj5F4CxjIEam7A9I/pyqBodi3IPq3nAXhXFAEmIeCofSNM3Ari+E8
         bf2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768493428; x=1769098228;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gQXGgSx7jpUFKQjZ6iyGO811lP9xodhRioXDBaDurfQ=;
        b=feNBMfQVAq3Mfq3/gdvQmTfgPr2RNHVIhBh34mEMhowOm4iTrtL3YhyVLbx0l6W5EQ
         adCiY1xa/rs3jkA1xIXwac1zARIfBULjFhCRvkM018JpCxrd3ae6DevtOJFfbV/ftBZz
         UaB7ozpqvZuy0hl1BQlm+l8H3T+WIdcZ+5/Nhq+6zKt58EKwhvHxVQRWifzdG1UntdRW
         Gt2I5uNc0zQD/l0X6k3vV3DTDUttZIgBXBfDWbjNiFmkno6Ll5thaGZEQwc94YJ+PlZx
         xXCNxfw8BtzVoF2y75xCdVO+wPUbK9/qEfixL9hsF5mwq7dp4rchdqFPKXW98qcClTtT
         Mteg==
X-Forwarded-Encrypted: i=1; AJvYcCX+pH07JLqsY2+naDDmK78roLxE8loBoE1yqpyeCdXU00OWuzhqHfX9iENqKObonamwuHrFtLFqa6wc@vger.kernel.org
X-Gm-Message-State: AOJu0Yxov1X24SGAqh5XfAZQlQUgQDA8omqEqccY0ShcJfEx2stper7l
	eo3xrYcbgQMlf0h41WaU73E4Tt22HEjcLbptyfjiSLFoGhNAQ7cIUjK0DQiEvIkSSWU=
X-Gm-Gg: AY/fxX4LFmqrs3xLIc4vb32FlhJsmpmab9tslwftd8u2yTxbbtoxR2rIpjczC7M4mpb
	DNx1X+HYikFzeGTuLl/VAIyW86ygt/n63Fb58e5VnsCfe4bZJZUFesYAF/kIrCIEVOgvo+fAY8k
	BLnyEKLzJnwY7vhiYbj9JDbQEsLcU6v+xJL+YPjVzNFgrgn1bXbODKAhYxSmUaQaUssvNx2YRMn
	Y3HduMtladBMi680xq7XwTxnioIK2/r0X06xawHyoqTMXFds831JUOTVLuRRNseKcUiXtduAaru
	OS9+wF5ErMTejdKDqiLf61JaDYKED5JoIZDMJa4188PMXrFSMKJxUJhK8+RxJqNEZ57iF41abiE
	XNtz0E4jzg0ew/2NozhTemxKJpOXR0wMzXarJJ+zKCU+RDVEILzlzk/KNTSS/dRWBCyS+ooU81K
	aa+LqAszXOFGIiiuG+xQ==
X-Received: by 2002:a05:600c:c162:b0:475:de14:db1e with SMTP id 5b1f17b1804b1-4801e3387cdmr3797345e9.24.1768493427759;
        Thu, 15 Jan 2026 08:10:27 -0800 (PST)
Received: from [10.11.12.107] ([86.127.43.8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47f4289b789sm53724735e9.1.2026.01.15.08.10.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 08:10:27 -0800 (PST)
Message-ID: <fcc5405e-189d-4195-8db0-3acf35bbc0a9@linaro.org>
Date: Thu, 15 Jan 2026 18:10:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] dt-bindings: mfd: Add Google GS101 TMU Syscon
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Kees Cook <kees@kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, willmcvicker@google.com,
 jyescas@google.com, shin.son@samsung.com, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-hardening@vger.kernel.org
References: <20260114-acpm-tmu-v1-0-cfe56d93e90f@linaro.org>
 <20260114-acpm-tmu-v1-3-cfe56d93e90f@linaro.org>
 <20260115-slim-denim-potoo-cad9cb@quoll>
 <200d34bf-150e-4f8a-b400-2f54863502ac@linaro.org>
 <e2f028d6-774f-4773-889f-7d56b833067e@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <e2f028d6-774f-4773-889f-7d56b833067e@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 1/15/26 5:34 PM, Krzysztof Kozlowski wrote:
> On 15/01/2026 15:53, Tudor Ambarus wrote:
>>
>>
>> On 1/15/26 3:36 PM, Krzysztof Kozlowski wrote:
>>> On Wed, Jan 14, 2026 at 02:16:31PM +0000, Tudor Ambarus wrote:
>>>> Document the bindings for the Thermal Management Unit (TMU) System
>>>> Controller found on Google GS101 SoCs.
>>>>
>>>> This memory-mapped block exposes the registers required for reading
>>>> thermal interrupt status bits. It functions as a syscon provider,
>>>
>>> I don't think this is syscon, but the actual TMU. Syscon is various,
>>> unrelated system configuration registers.
>>>
>>>> allowing the main thermal driver to access these registers while
>>>> the firmware manages the core thermal logic.
>>>>
>>>> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>>>> ---
>>>>  .../bindings/mfd/google,gs101-tmu-syscon.yaml      | 37 ++++++++++++++++++++++
>>>>  1 file changed, 37 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/mfd/google,gs101-tmu-syscon.yaml b/Documentation/devicetree/bindings/mfd/google,gs101-tmu-syscon.yaml
>>>> new file mode 100644
>>>> index 0000000000000000000000000000000000000000..6a11e43abeaa23ee473be2153478436856277714
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/mfd/google,gs101-tmu-syscon.yaml
>>>
>>> Not MFD either, but soc.
>>
>> You are right, it's not a syscon, it's just a normal thermal IP block
>> from which I need to access the interrupt pending registers.
>>
>> Then I guess I shall describe the new binding in bindings/thermal/,
>> please correct me if I'm wrong.
>>
>>>
>>>> @@ -0,0 +1,37 @@
>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>>> +%YAML 1.2
>>>> +---
>>>> +$id: http://devicetree.org/schemas/mfd/google,gs101-tmu-syscon.yaml#
>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>> +
>>>> +title: Google GS101 TMU System Controller
>>>> +
>>>> +maintainers:
>>>> +  - Tudor Ambarus <tudor.ambarus@linaro.org>
>>>> +
>>>> +description: |
>>>
>>> Drop |
>>>
>>>> +  The TMU System Controller provides a memory-mapped interface for
>>>> +  accessing the interrupt status registers of the Thermal Management
>>>> +  Unit. It is used as a syscon provider for the main TMU driver.
>>>
>>> No, it is not a syscon provider. Entire last sentence is incorrect. You
>>> must describe here hardware and this hardware does not provide any sort
>>> of syscon to any sort of driver.
>>>
>>
>> Indeed.
>>
>> I'm going to link the ACPM TMU child node with the TMU node via a
>> "samsung,tmu-regs" property.
> 
> This could be fine, but I actually wonder what's there. What registers
> exactly. For example modern Exynos 88xx, already with APM block, still
> have exactly the same TMU unit at 0x1008{04}000 with all typical
> triminfo, current temperature and thresholds.
> 

It's the same for gs101, the TMU instances have all the typical registers,
it's just that everything is handled via ACPM but the intpend registers.

>>
>> Some concern that I have is that I describe the clocks and interrupts in
>> the ACPM TMU child node. Usually the clocks and interrupts belong to the
>> node that contains the reg property. But I guess that's alright because
>> the interrupts property is expected to be in the node that the driver
>> binds to. For the clocks, by placing it in the ACPM child node, I allow
>> runtime PM to manage it.
> 
> You have to first know whether these clocks and interrupts are going TO
> the ACPM node.

They aren't, the clocks and interrupts are going to the TMU node.

> 
> All this looks like designing for drivers, sorry.
> 

It's fine, I'm not looking to cut corners. Thanks for the feedback, it
helps us coming up to a better solution.

>>
>> Do you think the below description is accurate?
>>
>> soc: soc@0 {
>>     tmu_top: thermal-sensor@100a0000 {
>>         compatible = "google,gs101-tmu-top";
>>         reg = <0x100a0000 0x800>;
>>     };
>> };
>>
>> firmware {
>>     acpm_ipc: power-management {
>>         compatible = "google,gs101-acpm-ipc";
>>         /* ... */
>>
>>         thermal-sensor {
>>             compatible = "google,gs101-acpm-tmu-top";
>>             clocks = <&cmu_misc CLK_GOUT_MISC_TMU_TOP_PCLK>;
>>             interrupts = <GIC_SPI 769 IRQ_TYPE_LEVEL_HIGH 0>;
> 
> This I doubt, really. Why would ACPM child be hooked via CPU clock and
> interrupts?
> 

Yeah, that was my concern as well. Then the clocks and interrupts will
be described in the TMU node, not in the ACPM TMU child. The bindings
are clear to me now, thanks.

In what concerns the interrupts, I can obtain them via the phandle to the
TMU node.

The trickier part will be on how to handle runtime pm, I can no longer use
pm_runtime_get_sync(dev) in the ACPM child. But I think I can handle it with
device links. Get a pointer to the TMU device node and use device links:

device_link_add(acpm_dev, &tmu_pdev->dev, DL_FLAG_PM_RUNTIME | DL_FLAG_AUTOREMOVE_CONSUMER);

This tells the kernel that when the ACPM TMU driver is active, the TMU
hardware block must also be active.

Please let me know if this sounds reasonable. I'll start reworking the set.

Thanks for the help, I appreciate it!
ta

