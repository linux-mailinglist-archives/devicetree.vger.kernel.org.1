Return-Path: <devicetree+bounces-14354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BF87E3B1E
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 12:27:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 20D3B1F21457
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 11:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E22D2D791;
	Tue,  7 Nov 2023 11:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MYUsom9D"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB542D05E
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 11:27:46 +0000 (UTC)
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39EF8F3
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 03:27:45 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-32f7c80ab33so3306333f8f.0
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 03:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699356463; x=1699961263; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zLgz4qAS5Dldr72CBEwbotz7bAslWZ8hRwCSwW7KT0M=;
        b=MYUsom9DxwuwLOeNxonaSaiWR2I3ZOmzF7/xvP4Z75tN8yjdveSwQfhGJgexNKuoNW
         QwLQf/MS6tHR90hdWoWQzeLT9W4tI/PFfNZs5sh3BBs2Hf2Ts8vt/MBeuPhqSOIl9UYX
         sghes/8+keq863q9snpBP/4v/Z+VWakj41LsDdKyEkHHTDdxTZNtLCspn07cNf7bkmQw
         RayHnOYkiB7+JbJBo0NGaV6l68Lw+5SEqbbQo/3Pq2KkLZsmiZf5QeAFYVR6JO0/0ZXt
         CGlQTRWvQoptySpXXfuWbUyd7gXF0F/OaJetUGxkl3EsCyh4Ef+AWnF4R+o9SKRVUgQ+
         AtXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699356463; x=1699961263;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zLgz4qAS5Dldr72CBEwbotz7bAslWZ8hRwCSwW7KT0M=;
        b=eIbaCLzrisWNaA5d69nfw9YHVzccbvIa5uuUchxSqJQoP5rjflteqAQb9lIqVAAKNt
         OOSATqdfJE2II5jEVzppFqXXunaS+FOV5S86fTL70YH7YB2h354X4CkMkKG7kloVsef3
         IY5mF60MVstry4Pppqr7IhalOYf5h0KxNV1VHb+Pg1zHIKT9gOz6ZsBEG41WE72iatLF
         wx3KwZ+uZ81bNTJXITu7H9PvasGn5G0z36wdnkWjYNiYZWV2D1GmW2wY068tb5kCTUKz
         1CSP+aO5NlDIQgDGnfuv3gN7cLD33bTPqr+i1h2+oYvKeQRMnbrpZKi+RdDOmsipqBH9
         BByA==
X-Gm-Message-State: AOJu0Yyki0DlehdK4xNJpBxpMXtzoAqLEeIiFMOO+4f593MDEqCNm5p3
	fJGNuac2kggaQEBQ34KFp6GwsnE71xmfxNMKLQM=
X-Google-Smtp-Source: AGHT+IEJryg0bfnHZBY1aY5PGE39a6YSE34sk223QMpe3XZmALCLT+EOciIGmaoV8igRw7Zwtz3N2A==
X-Received: by 2002:a05:6000:3c3:b0:31a:d9bc:47a2 with SMTP id b3-20020a05600003c300b0031ad9bc47a2mr30119265wrg.53.1699356463599;
        Tue, 07 Nov 2023 03:27:43 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id x17-20020adfffd1000000b0032710f5584fsm2120264wrs.25.2023.11.07.03.27.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Nov 2023 03:27:43 -0800 (PST)
Message-ID: <e9fef49e-c0ca-4f7d-9618-151216e25280@linaro.org>
Date: Tue, 7 Nov 2023 12:27:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: soc: Add new board description for
 MicroBlaze V
To: Michal Simek <michal.simek@amd.com>, Conor Dooley <conor@kernel.org>
Cc: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <50c277c92c41a582ef171fb75efc6a6a4f860be2.1699271616.git.michal.simek@amd.com>
 <20231106-hangnail-prankster-a04e713bed35@spud>
 <4223470c-5596-4168-9c89-e701559fbbed@amd.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <4223470c-5596-4168-9c89-e701559fbbed@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 07/11/2023 12:09, Michal Simek wrote:
> 
> 
> On 11/6/23 18:07, Conor Dooley wrote:
>> On Mon, Nov 06, 2023 at 12:53:40PM +0100, Michal Simek wrote:
>>> MicroBlaze V is new AMD/Xilinx soft-core 32bit RISC-V processor IP.
>>> It is hardware compatible with classic MicroBlaze processor. Processor can
>>> be used with standard AMD/Xilinx IPs including interrupt controller and
>>> timer.
>>>
>>> Signed-off-by: Michal Simek <michal.simek@amd.com>
>>> ---
>>>
>>>   .../devicetree/bindings/soc/amd/amd.yaml      | 26 +++++++++++++++++++
>>
>> Bindings for SoCs (and by extension boards with them) usually go to in
>> $arch/$vendor.yaml not into soc/$vendor/$vendor.yaml. Why is this any
>> different?
> 
> I actually found it based on tracking renesas.yaml which describes one of risc-v 
> board. No problem to move it under bindings/riscv/
> 
>>
>>>   1 file changed, 26 insertions(+)
>>>   create mode 100644 Documentation/devicetree/bindings/soc/amd/amd.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/soc/amd/amd.yaml b/Documentation/devicetree/bindings/soc/amd/amd.yaml
>>> new file mode 100644
>>> index 000000000000..21adf28756fa
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/soc/amd/amd.yaml
>>> @@ -0,0 +1,26 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/soc/amd/amd.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: AMD Platforms
>>> +
>>> +maintainers:
>>> +  - Michal Simek <michal.simek@amd.com>
>>> +
>>> +description: |
>>> +  AMD boards with MicroBlaze V SOC
>>> +
>>> +properties:
>>> +  $nodename:
>>> +    const: '/'
>>> +  compatible:
>>> +    oneOf:
>>> +      - description: AMD MicroBlaze V
>>> +        items:
>>> +          - const: amd,mbv
>>
>> You don't actually list any boards here, but instead permit having only
>> the SoC compatible and no board one. The SoC compatible is also
>> incredibly generic. Personally I don't think this binding makes any
>> sense as it appears to exist as a catch all for anything using your
>> new cores in any combination.
> 
> I think I need to define any string for compatibility because it is standard 
> property. Because this is soft core it can be added to any board with AMD/Xilinx 
> chip. I don't have really an option to list all boards.

Why? Either there is a product with this soft-core or there is not. It
cannot be both.

> 
> I am happy to change it to something else but not sure to what.

Alone this compatible does not bring you anything.

Best regards,
Krzysztof


