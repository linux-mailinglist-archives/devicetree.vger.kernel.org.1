Return-Path: <devicetree+bounces-43208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD548597AE
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 16:51:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 83A671F213B1
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 15:51:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A16556D1AF;
	Sun, 18 Feb 2024 15:51:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="creLgihG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB44FBEA
	for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 15:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708271465; cv=none; b=tBBipbuhxN7C4ImTd/ROFUiCyp34SPij60EbCjQYmQvUPrgIuUXOZ8ccWz8y3fC8Jhk+dt9jLEz6DzhCU2QP0IjfG/4dTiY8SkiR8CEDr9aAkjYSZwHEZ5a5Nkl03Fkej9QIdqQC8k6BYPEJhzKbAgmb7SF2wXrwtY4dshFQl7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708271465; c=relaxed/simple;
	bh=0ot/ijTVMDoaDLxuBI4Uj6rskkiPkMT9yVdc7KgsN1g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TMGZddrH+8DFODs8FGbCRsz9Q9EtFGFsKqIUiq7tRoh//BUCc328w3vKpecc2iLi+22d86skWIGS6CVvIsSiNsQzczzyEa2kLpU94ovKTyQuOGiB254iDq27qA5vOrZbb7aAzP84E2Ots39HWdmj4kPvX6sY8lW/++wuMD7OhXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=creLgihG; arc=none smtp.client-ip=209.85.167.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3c1404d05bfso2145968b6e.3
        for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 07:51:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1708271461; x=1708876261; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Idc8kDtuOgl4UHmKMS/zN8wguVju2Qvv8mSJbJg11b8=;
        b=creLgihGapG02AuPiwadES7xo/RqF7l8ujvIOvyUrTu3v04H822Se02RnkTz2YjBRq
         be/OWNNnRXb5+gw7pwql1vVl0IhyQupfCNWiutBrUmZWomxHlkmhnqZUirx5jdaACPrP
         L/Ojq0As4Bw76D/WIbj71H3H/1LXQqnQwHpt3dEkR/cY0WBuKs3Sk7Aixf4LPK3LxNC6
         Rt7y6zNDtm6WpWR8AUMBzsgE3824htxdhHSRa/xl5OB0WF664sG/TQHPJ0L5SAVRxtz9
         lL4kiv96PXAP5SL9Q+ZQkr7tlZ0E55Oa4hvuqL0ZoroT9jLhruL2RLyJtIsyEFsSyfWs
         7iKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708271461; x=1708876261;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Idc8kDtuOgl4UHmKMS/zN8wguVju2Qvv8mSJbJg11b8=;
        b=EQ3IW0OfNjzJ08nSGvKOVg68BCnhDvaGKgrZsMEIq6vmHrzuUnX++yKKo5mu4JQXdd
         QyewxXeekxz5SRAkwSeUzTTHBfRr60DAROyCzaZ6L9NQntO0kfQ94BRmnRFv6ds3tMtG
         iT6w2cBYtPC9/WXF/KyYXtgxRcFZox/7vQ/y50PQmgbEKtY15m6QXq8PxOW2sT9tEczw
         UelFCk+CwjftXr/phQfLOhepmnhlKNUVN45MJPrH6d1JupIn/LhxlDbcrwFfKypKCmfx
         ZHf0LimqwfJW36egNtveMicfU5izu7JNEF0nexzmpCdixX3UMfdB9qht/KKKs9DlyGu2
         XnzQ==
X-Forwarded-Encrypted: i=1; AJvYcCVeWdOFdkbMRZoASEZIEqMAUoH63n8RAX4OPpuWLU3PfvDxb2gFa7Gt54O1GItICqSUw3h/k0PJ6r8BUUGoq9mbmfHr9a2YC0yhNw==
X-Gm-Message-State: AOJu0YyhDzw3blDnY1klGBkIP+2PfOLClONeQgsvFQzCkUmpXFt6UaqN
	v4ietC7/2EDZvSfZnfwzkN5BOEU0xugVdVLXOhWRA/mlVXq3w04wEr1yq1IDycE=
X-Google-Smtp-Source: AGHT+IGjRnlgLzgomv6lW4SHDhuTS8wreb750yO93dETmAN5zA0BYgY7Hc8/Ofnz0yFKKnfSR5f2mQ==
X-Received: by 2002:a05:6808:2f17:b0:3c0:39ed:4384 with SMTP id gu23-20020a0568082f1700b003c039ed4384mr14131122oib.20.1708271461437;
        Sun, 18 Feb 2024 07:51:01 -0800 (PST)
Received: from [100.64.0.1] ([170.85.8.176])
        by smtp.gmail.com with ESMTPSA id kr19-20020a0562142b9300b0068f5565ba1asm1262117qvb.88.2024.02.18.07.51.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Feb 2024 07:51:01 -0800 (PST)
Message-ID: <3c2f1c61-89b4-4103-ac45-a2a541de215e@sifive.com>
Date: Sun, 18 Feb 2024 09:50:59 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/6] dt-bindings: cache: Add SiFive Extensible Cache
 controller
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Lin <eric.lin@sifive.com>, Conor Dooley <conor@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-kernel@lists.infradead.org
References: <20240216000837.1868917-1-samuel.holland@sifive.com>
 <20240216000837.1868917-4-samuel.holland@sifive.com>
 <d655b72e-3094-4b6b-bee8-9677b7c987ce@linaro.org>
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <d655b72e-3094-4b6b-bee8-9677b7c987ce@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Krzysztof,

On 2024-02-17 3:09 AM, Krzysztof Kozlowski wrote:
> On 16/02/2024 01:08, Samuel Holland wrote:
>> From: Eric Lin <eric.lin@sifive.com>
>>
>> Add YAML DT binding documentation for the SiFive Extensible Cache
>> controller. The Extensible Cache controller interleaves cache blocks
>> across a number of heterogeneous independently-programmed slices. Each
>> slice contains an MMIO interface for configuration, cache maintenance,
>> error reporting, and performance monitoring.
>>
>> +allOf:
>> +  - $ref: /schemas/cache-controller.yaml#
>> +
>> +select:
>> +  properties:
>> +    compatible:
>> +      contains:
>> +        enum:
>> +          - sifive,extensiblecache0
>> +
>> +  required:
>> +    - compatible
>> +
>> +properties:
>> +  compatible:
>> +    items:
>> +      - const: sifive,extensiblecache0
>> +      - const: cache
>> +
>> +  "#address-cells": true
> 
> const or enum: [1, 2], depending on the addressing you need here.
> 
>> +  "#size-cells": true
> 
> ditto
> 
>> +  ranges: true
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  cache-block-size:
>> +    const: 64
>> +
>> +  cache-level: true
> 
> 5 is acceptable? I would argue this should be even const.
> 
>> +  cache-sets: true
>> +  cache-size: true
> 
> Some constraints on any of these?

Thanks for the feedback. I will add the various constraints in v2, though some
constraints will be somewhat loose as the topology is highly configurable.

>> +  cache-unified: true
>> +
>> +patternProperties:
>> +  "^cache-controller@[0-9a-f]+$":
>> +    type: object
>> +    additionalProperties: false
> 
> What is this object supposed to represent? Add description.

I will add a description in v2.

This object represents a single slice of the cache. Requests from clients are
interleaved between cache slices depending on the client, the address, etc.

Since there is no strong relationship between client (i.e. CPU) and cache slice,
the next-level-cache property must point to the top-level EC node, not a slice.

>> +    properties:
>> +      reg:
>> +        maxItems: 1
>> +
>> +      cache-block-size:
>> +        const: 64
>> +
>> +      cache-sets: true
>> +      cache-size: true
>> +      cache-unified: true
> 
> cache-level

I will add this in v2. It seemed redundant since the value cannot differ between
slices.

Regards,
Samuel

>> +
>> +      sifive,bm-event-counters:
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        default: 0
>> +        description: Number of bucket monitor registers in this slice
>> +
>> +      sifive,cache-ways:
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        description: Number of ways in this slice (independent of cache size)
>> +
>> +      sifive,perfmon-counters:
>> +        $ref: /schemas/types.yaml#/definitions/uint32
>> +        default: 0
>> +        description: Number of PMU counter registers in this slice
>> +
>> +    required:
>> +      - reg
>> +      - cache-block-size
>> +      - cache-sets
>> +      - cache-size
>> +      - cache-unified
>> +      - sifive,cache-ways
>> +
>> +required:
>> +  - compatible
>> +  - ranges
>> +  - interrupts
>> +  - cache-block-size
>> +  - cache-level
>> +  - cache-sets
>> +  - cache-size
>> +  - cache-unified
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    cache-controller@30040000 {
>> +        compatible = "sifive,extensiblecache0", "cache";
>> +        ranges = <0x30040000 0x30040000 0x10000>;
>> +        interrupts = <0x4>;
> 
> You use hex as interrupt numbers on your platforms?
> 
>> +        cache-block-size = <0x40>;
>> +        cache-level = <3>;
>> +        cache-sets = <0x800>;
> 
> Best regards,
> Krzysztof
> 


