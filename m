Return-Path: <devicetree+bounces-42971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D1563858E43
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 10:10:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5CB701F21C3D
	for <lists+devicetree@lfdr.de>; Sat, 17 Feb 2024 09:10:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0208E10A34;
	Sat, 17 Feb 2024 09:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MS1cu9ct"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CDE1CFB4
	for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 09:10:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708161005; cv=none; b=p6WtcLKIE/X3UeT6915mHD9rb2OezCK6CNxmJs7ZwHkxjF/cg2Ceoq4bEht5BVrWPRQ+8fZRXRh8V5NdlUSLwsqcWD2RYdkFWHpRAH1fBGTc8SHFI+539NbuXNV7jzcvxY1s5cp0mlcblxF7sOsrj07DZvGPZ6BQqVPxfkOyhsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708161005; c=relaxed/simple;
	bh=EN1VAH6v1Opt5LMoULzU1VdY12qRp59oWejiiRhW+uQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kGjPvm8BuV7dkvzRLZSlgNmDqTunoiwGOYzVmheDU8x0VY+CF8Cvg89aAeCHmj7ewgk9dzUepJEKwvSVwPqxcB0n6MMEJw35MpBALsu4j5LZTdOpO8v7MW6Rlez9dTSKt++dCvkCPuz9Ta2DP/M2yK+7EHtQZG4pQ0/0RFpZzxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MS1cu9ct; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-55f0b2c79cdso4489999a12.3
        for <devicetree@vger.kernel.org>; Sat, 17 Feb 2024 01:10:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708160999; x=1708765799; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=grM+Hh3OEHfgYxcKYaDIFKM2iPilg2mZqTkblEBDEPA=;
        b=MS1cu9ctE21tFGmBcbmX0g07JnCshit1nDcG4djoGdH97/wFQKDid+XcSq+SumfMEr
         XN/x5tSTfKX5d6TTO+u16O2vMWDwgbNdLGRkTzh0xu8pEgPtQtaidOV4WQq2Dx61G/41
         UciHYN1pji4ySjtUHUlXu4tfhlCle17Eh3HaNW8T0G8IfORR8U1Wup2PWUXvWxVUfIfw
         68CC0bjaqx+gxVp/rpD+EvknfRdJN+KnlxT/LeJdXTnQxBpdSQBtHpZXi6wr16HPajhl
         Dzrl2LSxuBEoQpm3iVRwmRhPdTJjoXOZhBZRczVb0aOtDjLF7CDFJIvkx97ASLSc0UC6
         orBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708160999; x=1708765799;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=grM+Hh3OEHfgYxcKYaDIFKM2iPilg2mZqTkblEBDEPA=;
        b=kG+7gb11Yq2EwdwKAP5V5+za9egZFsJnsSMpkVooXwJN95fWk58QQyDY/OiEJIsLzC
         vWuQyykRlziE+8VUaNVX2PDRSzeSbQEy/9Gz9/bvbEd0o3lDhtIMqGQmjmzZQL0bokUe
         XctsFyQgPvFWryromtShJA5KE2uoK0ExqsynGnkYNyWXo4p1dZzby7oagnqKX9vzdJIS
         EXmfzf07tHqZeGZ9rMaQByykSm9u1jd95MqS9icfXFEhZpfBRjvFXoG0IfKsHqB8CvjE
         9dq+vNuQm178FQeJRKAMk4zuMIKW5YqKlyra0Fl6SUmLaRZepMzSu+/am6nEdw1n2PLh
         JFFA==
X-Forwarded-Encrypted: i=1; AJvYcCX0HjnvuSGetT05h0P58AZ0OnrCFnjqGxrc+reDPRZJowk0AhgEH4q0d7SEvs1tN5BZAVMwzrBJsGaCj1MibHT4ls+HqUeNrvcwmQ==
X-Gm-Message-State: AOJu0YxziLrFkIm34o7hp4sPTWtrmwLa5LtwpM+0+39A4VQ2+3DfVL5+
	tpbkQgwfncZHCZHTyTo8uSCr7OEf0TMFUkQY7sHuTRk4Ph/egMN/yJSWh4LJ5Ik=
X-Google-Smtp-Source: AGHT+IGmCpmknfNZYAI0KiLnL6RowT6ESctrkL1vpDjJ2pzGN+enJV5oFxQ2haHvp3b/ntai7sehQw==
X-Received: by 2002:aa7:d355:0:b0:564:3231:bd09 with SMTP id m21-20020aa7d355000000b005643231bd09mr336914edr.13.1708160998689;
        Sat, 17 Feb 2024 01:09:58 -0800 (PST)
Received: from [192.168.0.22] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id ev24-20020a056402541800b0056163b46393sm729306edb.64.2024.02.17.01.09.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Feb 2024 01:09:58 -0800 (PST)
Message-ID: <d655b72e-3094-4b6b-bee8-9677b7c987ce@linaro.org>
Date: Sat, 17 Feb 2024 10:09:56 +0100
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
To: Samuel Holland <samuel.holland@sifive.com>, Will Deacon
 <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Lin <eric.lin@sifive.com>, Conor Dooley <conor@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-kernel@lists.infradead.org
References: <20240216000837.1868917-1-samuel.holland@sifive.com>
 <20240216000837.1868917-4-samuel.holland@sifive.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240216000837.1868917-4-samuel.holland@sifive.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 16/02/2024 01:08, Samuel Holland wrote:
> From: Eric Lin <eric.lin@sifive.com>
> 
> Add YAML DT binding documentation for the SiFive Extensible Cache
> controller. The Extensible Cache controller interleaves cache blocks
> across a number of heterogeneous independently-programmed slices. Each
> slice contains an MMIO interface for configuration, cache maintenance,
> error reporting, and performance monitoring.
> 
> +allOf:
> +  - $ref: /schemas/cache-controller.yaml#
> +
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - sifive,extensiblecache0
> +
> +  required:
> +    - compatible
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: sifive,extensiblecache0
> +      - const: cache
> +
> +  "#address-cells": true

const or enum: [1, 2], depending on the addressing you need here.

> +  "#size-cells": true

ditto

> +  ranges: true
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  cache-block-size:
> +    const: 64
> +
> +  cache-level: true

5 is acceptable? I would argue this should be even const.

> +  cache-sets: true
> +  cache-size: true

Some constraints on any of these?

> +  cache-unified: true
> +
> +patternProperties:
> +  "^cache-controller@[0-9a-f]+$":
> +    type: object
> +    additionalProperties: false

What is this object supposed to represent? Add description.

> +    properties:
> +      reg:
> +        maxItems: 1
> +
> +      cache-block-size:
> +        const: 64
> +
> +      cache-sets: true
> +      cache-size: true
> +      cache-unified: true

cache-level

> +
> +      sifive,bm-event-counters:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        default: 0
> +        description: Number of bucket monitor registers in this slice
> +
> +      sifive,cache-ways:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description: Number of ways in this slice (independent of cache size)
> +
> +      sifive,perfmon-counters:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        default: 0
> +        description: Number of PMU counter registers in this slice
> +
> +    required:
> +      - reg
> +      - cache-block-size
> +      - cache-sets
> +      - cache-size
> +      - cache-unified
> +      - sifive,cache-ways
> +
> +required:
> +  - compatible
> +  - ranges
> +  - interrupts
> +  - cache-block-size
> +  - cache-level
> +  - cache-sets
> +  - cache-size
> +  - cache-unified
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    cache-controller@30040000 {
> +        compatible = "sifive,extensiblecache0", "cache";
> +        ranges = <0x30040000 0x30040000 0x10000>;
> +        interrupts = <0x4>;

You use hex as interrupt numbers on your platforms?

> +        cache-block-size = <0x40>;
> +        cache-level = <3>;
> +        cache-sets = <0x800>;

Best regards,
Krzysztof


