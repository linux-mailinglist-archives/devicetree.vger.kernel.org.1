Return-Path: <devicetree+bounces-245877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8AACB6774
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 17:29:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 12A6A3001BFC
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 16:29:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8EFC31197E;
	Thu, 11 Dec 2025 16:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BLTPdJ8q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1B922D3EC1
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 16:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765470577; cv=none; b=M/tKQnw3AIq08O2mx2mEUCUUpdIXCugDj7vFVkal7szaHqB0XmqMW331K9eA5fpTulXCYmp10GhDy/rTfI0yuy/PeV+5ACkmmcQqSELxuyQVFEBGd1weznjnLj9iZg9JI5u9D1zF4WNF/xnMKnh0lb34Sv0wPZLwusqN1wRdRbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765470577; c=relaxed/simple;
	bh=axH9+ML3iDQ94phCY/ovWj6g1PfWab2qlgyPUs88ia0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ad53+hC6smW8D28fGxFVfIrLizNi4cdOEw6yLpap/+Hz9EaPPPkuBwCtY096Bbnea4HCdFZ2HOB9096T2gxXmLS4701Y00dsKZ2gmHmZRtEISIt2Fnyn3orC0qoVU69fEBy/76B1EZW4VzYkIFUj5poVw03/ire9FisSm6mioz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BLTPdJ8q; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7bf0ad0cb87so333126b3a.2
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 08:29:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765470575; x=1766075375; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=awr8DF0rOP11yNcKK692Kf3EHuJbOE7t15SvXNPQdiU=;
        b=BLTPdJ8q73HYxewRzHEHDOovib99Xp0gk8nilXhzwNbI34UoWZWWXv98PL1h4e8Nyn
         vlOk/bDmYjuh1UH9WU7HwOCBGEUTYhIaAU95oQT84223Jf8BV9w+A0MMvnYSML+G2PZW
         Zo3MD0bH6UAjOQMbbiJfAqwlBJyVtdRjYub3WG+B2RTmByy12jEwd0sBkZHWTbJ2Jxpg
         xRzuy/9yhNCTl/u1etg9HGToChAeZAT+r5T4Knoj1zwqIehPcPMwSd7Sw8aNvN+v6qbK
         DjRkbXj5tfVtLxaW28BsN7UaVQCvPrewMGrNqhywouAnpNXhfnpBA64vc2y5bWYvHFq4
         3VRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765470575; x=1766075375;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=awr8DF0rOP11yNcKK692Kf3EHuJbOE7t15SvXNPQdiU=;
        b=Q0taIPvVguIjH5RNdgDSewCuGfjv7iR8QWkzAW4xlJaMLIEyhyrWB8TBmkhE4zHIeB
         ONvWOt8QNMCphuYo4xFBWbypaUlrnUnTfClAIrLiZPQkyXMG1VekJysoFTfS81n7tGLI
         ptnOecAYTE44h9luusVmT1y/8QIHd8QeMFLaxpDRd9Gk4B0ndQJ4PTwyx29xUhAdpZS4
         kH/GU1Ib5sD6PMqRmRvpmNNL3M5154SLMet+qv24jZxnBu5xU83Gu7Z6NxRgaZbkN9J2
         AhRsDZk1LFUupPtd4qBjdOFp6D2tmnAw636wyWnGOVqONsLY6rGQLPbuObvQHw37TSs+
         HckQ==
X-Forwarded-Encrypted: i=1; AJvYcCU3Hk5Ivzew95SqC6/byH+1cLT4VaAlwdxjEqhyRkmGntKx1OYJpxkNDARaCOkrVUukOfa83JgbvKtL@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7TJYa8ECoUz2Z+RD9tEPv8jMjqFiaN6fuHHYioEz5BwuG3LVf
	65QJRmygnIcPrmnJUfEoLVBCOtZKYLA9IQlSh880ixb6Oz+OjC3dPkay
X-Gm-Gg: AY/fxX7cBLKAPpO5iEsFoe2/VUIUMIB986WXyTwN8nW8kyyuCt9gZdsCxfyTtzs68D3
	vFYRiQqQGPeo0tUymLmUA6Daf6tZQDqFcJavUda4G7z9/miF7ieVe3RbEnZslwcWLUq57uxkJNa
	83UPSR04bxnSJEOITaZ57k7Azq2eDnn2ToaPvw+6a0rmeFIoT5EIPWZtgfa0KVip3kNoM7xFEzc
	qyRn4DQOiibMMqaoc62+fJBs9/pruJK0GK19L/pm+FvI4fG8yvAXytVm8lc2POVRC0XPPGWJzBs
	QpBl03xbOf9qDddZqmH3VC0kETGUYzMNAFoVXFn4NljYSV6kbnEvMfMkNyMZkaHs2x53dc4Ey+B
	cIz5qaOltflB+BdW5PR3Buk30FEuuhBf13FWM9b1WEwcQQGYo4zqQD//89c5lw3QwE1hp+bR6rW
	et4zwL7OI1YqpGB62IUZ4xANkXS5n1D0qj/0A=
X-Google-Smtp-Source: AGHT+IGm8+dgYyRDv3gJ1XDI1aFNCRMzHlfROQeOfZxqRqUrkSy07arPhVguaQ6k7761nOnWCZjbgg==
X-Received: by 2002:a05:6a00:a0a:b0:7b8:758c:7e86 with SMTP id d2e1a72fcca58-7f22e0a1307mr7024548b3a.15.1765470574904;
        Thu, 11 Dec 2025 08:29:34 -0800 (PST)
Received: from [192.168.1.5] ([115.99.253.182])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7f4c54812c5sm2952433b3a.59.2025.12.11.08.29.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Dec 2025 08:29:34 -0800 (PST)
Message-ID: <62b62814-29a5-4809-969c-a258da8eb415@gmail.com>
Date: Thu, 11 Dec 2025 21:59:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mtd: nvidia,tegra20-nand: convert to DT
 schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Stefan Agner <stefan@agner.ch>, Lucas Stach <dev@lynxeye.de>,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251030-nvidia-nand-v1-1-7614e1428292@gmail.com>
 <20251104-prompt-rampant-cat-30fd9a@kuoka>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20251104-prompt-rampant-cat-30fd9a@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 04-11-2025 15:33, Krzysztof Kozlowski wrote:
> On Thu, Oct 30, 2025 at 06:47:25PM +0000, Charan Pedumuru wrote:
>> Convert NVIDIA Tegra NAND Flash Controller binding to YAML format.
>> Changes during Conversion:
>> - Define new properties `power-domains` and `operating-points-v2`
>>   to resolve errors generated by `dtb_check`.
> 
> instead - because existing in-tree DTS uses them.
> 
>> - Add the `#address-cells` and `#size-cells` properties to the parent
>>   node to fix errors reported by `dt_check`, and include these properties
> 
> What is dt_check? Aren't you adding them because other schema requires
> them? Then say that (and which schema...).

Sure, I will modify accordingly.

> 
> 
>>   in the `required` section, as they are not mentioned in the text binding.
>>
>> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
>> ---
>>  .../bindings/mtd/nvidia,tegra20-nand.yaml          | 157 +++++++++++++++++++++
>>  .../bindings/mtd/nvidia-tegra20-nand.txt           |  64 ---------
>>  2 files changed, 157 insertions(+), 64 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mtd/nvidia,tegra20-nand.yaml b/Documentation/devicetree/bindings/mtd/nvidia,tegra20-nand.yaml
>> new file mode 100644
>> index 000000000000..67b3c45566db
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mtd/nvidia,tegra20-nand.yaml
>> @@ -0,0 +1,157 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mtd/nvidia,tegra20-nand.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: NVIDIA Tegra NAND Flash Controller
>> +
>> +maintainers:
>> +  - Jonathan Hunter <jonathanh@nvidia.com>
>> +
>> +description:
>> +  Device tree bindings for the NVIDIA Tegra NAND Flash Controller (NFC).
> 
> Drop sentencem completely redundant. Title already said that.

Okay.

> 
>> +  The controller supports a single NAND chip with specific properties.
> 
> What is/are "specific properties"? Can properties be unspecific?

I will modify the description.

> 
>> +
>> +properties:
>> +  compatible:
>> +    const: nvidia,tegra20-nand
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  clock-names:
>> +    items:
>> +      - const: nand
>> +
>> +  resets:
>> +    maxItems: 1
>> +
>> +  reset-names:
>> +    items:
>> +      - const: nand
>> +
>> +  '#address-cells':
>> +    const: 1
>> +
>> +  '#size-cells':
>> +    const: 0
>> +
>> +  power-domains:
>> +    maxItems: 1
>> +
>> +  operating-points-v2:
>> +    maxItems: 1
>> +
>> +patternProperties:
>> +  "^nand@[0-5]$":
> 
> Keep consistent quotes, either ' or "

Sure.

> 
>> +    type: object
>> +    description: Individual NAND chip connected to the NAND controller
>> +    properties:
>> +      reg:
>> +        maxItems: 1
>> +
>> +      nand-ecc-mode:
>> +        description:
>> +          Operation mode of the NAND ECC, currently only hardware
>> +          mode supported
>> +        const: hw
>> +
>> +      nand-ecc-algo:
>> +        description: Algorithm for NAND ECC when using hw ECC mode
>> +        enum:
>> +          - rs
>> +          - bch
>> +
>> +      nand-bus-width:
>> +        description: Width of the NAND flash bus in bits
>> +        enum: [8, 16]
>> +        default: 8
>> +
>> +      nand-on-flash-bbt:
>> +        description: Use an on-flash bad block table to track bad blocks
>> +        type: boolean
>> +
>> +      nand-ecc-maximize:
> 
> Why are you duplicating all these properties from nand schema?

Sure, I will make nand-chip as ref and remove duplicate properties.

> 
>> +        description:
>> +          Maximize ECC strength for the NAND chip, overriding
>> +          default strength selection
>> +        type: boolean
>> +
>> +      nand-ecc-strength:
>> +        description: Number of bits to correct per ECC step (512 bytes)
>> +        enum: [4, 6, 8, 14, 16]
>> +
>> +      nand-is-boot-medium:
>> +        description: Ensures ECC strengths are compatible with the boot ROM
>> +        type: boolean
>> +
>> +      wp-gpios:
>> +        description: GPIO specifier for the write protect pin
>> +        maxItems: 1
>> +
>> +      '#address-cells':
>> +        const: 1
>> +
>> +      '#size-cells':
>> +        const: 1
>> +
>> +    patternProperties:
>> +      "^partition@[0-9a-f]+$":
>> +        $ref: /schemas/mtd/mtd.yaml#
>> +        description:
>> +          Optional MTD partitions for the NAND chip, as defined in mtd.yaml
>> +
>> +    required:
>> +      - reg
>> +
>> +    unevaluatedProperties: false
> 
> So this should tell you that you miss proper ref
> 
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts
>> +  - clocks
>> +  - clock-names
>> +  - resets
>> +  - reset-names
>> +  - '#address-cells'
>> +  - '#size-cells'
>> +
>> +unevaluatedProperties: false
> 
> Same here. Why do you use unevaluatedProperties if there is no ref?
> Please open other bindings to understand how MTD binding should be
> written.

I will add appropriate common nand-controller ref to the schema.

> 
> Best regards,
> Krzysztof
> 

-- 
Best Regards,
Charan.


