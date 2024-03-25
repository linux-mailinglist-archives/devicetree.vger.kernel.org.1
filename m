Return-Path: <devicetree+bounces-53185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DB688B351
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 22:59:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2468E1F62D5B
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 21:59:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B77170CC2;
	Mon, 25 Mar 2024 21:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nOGfZORG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3E86FE1C
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 21:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711403990; cv=none; b=nE2L/lQSoVEbbq9ah33oV4jRpVVyTpjM1bPwW5S4LVlL+aPPSDiK7HKihU7sRcaMgMoegnApig1EfftDQ0pXK66J6hQAYTiHAG6kOGKrG4T5wfaxj01OwfcdIfsUzmd6zwCJz4f8GXPAPTX/0ndUuoBeYHZ252qKqxcGgFSIJBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711403990; c=relaxed/simple;
	bh=m3R847taWPgAmoeGN2EnGZy1Bl6r1DqwrG1iCwisV4U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FeFw0IffsOUOPigurCq6M7sItiCd5u1GbjO68jdW2TxEH9vwLH/gDwq/TqSJN/9j/xT+Az6yHOhxdF1syYbUFNQtFXikB5CoHHRKnMCBd5/S2+NKlzzLfS5orzDemtbLaQR6uo4c1vvmJSBsbiZ0g5lRINjFHg/O+2jGc92tNWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nOGfZORG; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a46d0a8399aso980954366b.1
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 14:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711403985; x=1712008785; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=aVSZa1RNu/NcNOPwv2mC3nZ/m7Zff3o3kRcgm1Tek1o=;
        b=nOGfZORG14boE+grkbtdjbI+Zy1hjjm6PZCCJ+NgldIxHbpx8mJB/mXcKOpw8QFt5f
         g35Kjq1LdF0HgfVRpdpepsOG0uPZcdCmV4KK+ONF8IoMH3ShpeXy2I9mk8UIc6tm3TPV
         rWL7KKLxgNvmChZXDqVOofHqfglao1vjFZqqjHU+FPjHKvT7d0nLE7FR3N/q06L6E3NP
         1q1wWzo+nGPSs0FiCC6904FXkkoJw1dRHpfq9/DncDRtIVqmVqGXD054Uu3JliHxkwTJ
         6O/2+3UzUk+ZD18ObgOnUzhsTZunbWSHe0Ts/M07GwhuCWhCeqx4e4b+BfYFDZO4hUco
         sdHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711403985; x=1712008785;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aVSZa1RNu/NcNOPwv2mC3nZ/m7Zff3o3kRcgm1Tek1o=;
        b=hWHGPv0jskSEiqjaRVidvHiKrbeAVKc1Qrq52mY0lx1CzHxHrymiPN2aAUju7mojtT
         m8ak6NVN8IyNP2ihsfa96AUzU35QgvqkUkvCpnWqYI1iSHYjOhAPRZQDkq4uN2w0o03X
         24+xeX1V87g8Db0NJm8fsJpvt/EvnwwOqPFKdD/JPqt9yfyIQcRmOSk04pL+2n/M1rmU
         Qd/5MAcYiQ40HAvcRVZ/JaAdWilgeSsN/hRHJjl7Qe+8uam2kO43eGrzrXJRWwXwJvq8
         UGYcsrFx4P6+AXv1WungDc09TI089CLnyqfYOD1r4KgszI4V5XanSHPIP09GKpnulOsK
         KtBw==
X-Forwarded-Encrypted: i=1; AJvYcCUAA1qeBdUC46IMeN0Om3qDR9NZzK6w3Nxd21MaO/QQfUxaZKVABPvFeJcP+Jzd6JtLwa8iEcfvcY55ewcp0EdFwwltZsd2aAz1xQ==
X-Gm-Message-State: AOJu0Yx1C+f0DFYf+LPRBrb5kBlLqjE51IGQECvzaOGc43s8STbLJp7j
	ZvjY7B73llbYVInjrCuYN2tzfEZWA6DUN9zRIXnwAQW7b+nCZYYgp1A3rPApTxg=
X-Google-Smtp-Source: AGHT+IGp/y+h8AvmJsjQeTwyr5sdf1f+wVsclCB/SN7PIQ3vpHJV+BwE+dnDoW0NE9sDBaHt/ewzKg==
X-Received: by 2002:a17:906:11cd:b0:a4c:ea23:1e4a with SMTP id o13-20020a17090611cd00b00a4cea231e4amr1894763eja.30.1711403985560;
        Mon, 25 Mar 2024 14:59:45 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id p9-20020a170906614900b00a46af5f023bsm3453864ejl.202.2024.03.25.14.59.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Mar 2024 14:59:45 -0700 (PDT)
Message-ID: <e94eb9cd-6f55-41d9-9e91-fe2ec43c3cbf@linaro.org>
Date: Mon, 25 Mar 2024 22:59:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] dt-bindings: rng: Add vmgenid support
To: Sudan Landge <sudanl@amazon.com>, tytso@mit.edu, Jason@zx2c4.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 sathyanarayanan.kuppuswamy@linux.intel.com, thomas.lendacky@amd.com,
 dan.j.williams@intel.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: graf@amazon.de, dwmw@amazon.co.uk, bchalios@amazon.es,
 xmarcalx@amazon.co.uk
References: <20240325195306.13133-1-sudanl@amazon.com>
 <20240325195306.13133-4-sudanl@amazon.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240325195306.13133-4-sudanl@amazon.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 25/03/2024 20:53, Sudan Landge wrote:
> Virtual Machine Generation ID driver was introduced in commit af6b54e2b5ba
> ("virt: vmgenid: notify RNG of VM fork and supply generation ID"), as an
> ACPI only device.

...


> diff --git a/Documentation/devicetree/bindings/rng/vmgenid.yaml b/Documentation/devicetree/bindings/rng/vmgenid.yaml
> new file mode 100644
> index 000000000000..24643080d6b0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rng/vmgenid.yaml
> @@ -0,0 +1,58 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/rng/vmgenid.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Virtual Machine Generation Counter ID device
> +
> +maintainers:
> +  - Jason A. Donenfeld <Jason@zx2c4.com>
> +
> +description:
> +  Firmwares or hypervisors can use this devicetree to describe
> +  interrupts and the shared resources to inject a Virtual Machine Generation
> +  counter.
> +
> +properties:
> +  compatible:
> +    const: virtual,vmgenctr
> +
> +  "#interrupt-cells":
> +    const: 3
> +    description:
> +      The 1st cell is the interrupt type.
> +      The 2nd cell contains the interrupt number for the interrupt type.
> +      The 3rd cell is for trigger type and level flags.

How is this interrupt-controller now? You already got such comment on v2.

> +
> +  interrupt-map: true
> +
> +  reg:
> +    description:
> +      The 1st cell specifies the base physical address of the 8-byte aligned
> +      buffer in guest memory space which is guaranteed not to be used by the
> +      operating system.
> +      The 2nd cell specifies the size of the buffer which holds the VMGenID.
> +    maxItems: 1
> +
> +  interrupts:
> +    description:
> +      interrupt used to notify that a new VMGenID counter is available.
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    rng@80000000 {
> +      compatible = "virtual,vmgenctr";
> +      reg = <0x80000000 0x1000>;
> +      interrupts = <0x00 0x23 0x01>;

Use standard defines and drop padding from hex numbers. Or just use
decimal numbers because hex is anyway unusual, unless this is what your
device datasheet says.

And what is 0x00 in the interrupt?

Best regards,
Krzysztof


