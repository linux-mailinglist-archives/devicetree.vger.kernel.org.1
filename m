Return-Path: <devicetree+bounces-1778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 415167A83E8
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:51:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E8A24281B9C
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 13:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E57EF38DE3;
	Wed, 20 Sep 2023 13:51:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532F036AEE
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 13:51:42 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC011AC
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 06:51:39 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-50307acd445so6720325e87.0
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 06:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695217898; x=1695822698; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fojqwARdefylLjqt4MAoLA/NO5fms55xjhfd0mg38oE=;
        b=Enkyy5J+wUaGCzEw1aN/a5LSN14ld22aMd7pn2WTP9E9NDyva17dK/y7TyNFZpa9qD
         lo2q3bCTMksA/02PPcnrsNt9YMEGz77Owa8ae2KJUx5n+SRQX9RhbkXbj3hFeANvyITI
         Ypf0mpMyQfmsJC8MCw9LGrC50xrB+Aharm0OBR8m9I5ZZWn9Nzt8xB9z3fZggpLzG43r
         44bLApsL5ex35sYN2M/hAZSUDS9ip3LdGU2hlNwIdjnAnLJ6C6kimmxEoGNkJdxKmKn5
         nxDNyD/SQdLQuUbDZ22hpS3fsKtMmr6QBGRkoDFvDbjLZVOM9Y7KNGtP4CL+0L7IKd5E
         /XEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695217898; x=1695822698;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fojqwARdefylLjqt4MAoLA/NO5fms55xjhfd0mg38oE=;
        b=QsPUQLXOZtZJNbbOWi2tN3CUVpoO/XGJG9x5kUHfDU3mhu4VGw1wIwbTmZtES988Mz
         qG4lQaHKCkck+MvA3XmNymkVRhLzHfZp4MBoHbSGKELN5KfJylDFcHJzxt2dwtEsmJ9p
         jqCxjxMifMjUmTmTf1znlAdHuon5KnSqkDOY8secuLVbS2LeN0oYcscU5KJbV35+4+ih
         h/ha+RHHi1XtyyCB2ez4i3z/5PPSsxH/S+x26vvr5Bk4lUHlLfSP4MP8q4slHerZTJKa
         gRZYukfUv5RzZLfLRIr1GUg21jYgae2xrnXLU8r/q4Ca2XfXN/89uMjLiu20NwLotHJT
         Ofmw==
X-Gm-Message-State: AOJu0YyODJVA+caXxDVuZk9a/MjohrqxFni5z4Fvqu34htRqRf3m9kud
	SLTourqArep00BmYptg26gAzaQ==
X-Google-Smtp-Source: AGHT+IEEsHLfzguNwhNOK/RPKeYtfZmwOcqbVhsW1RL2TWxgXDrSQw6m9x83O4zM5l7nLHltWEk5wA==
X-Received: by 2002:a19:5e50:0:b0:500:c2d7:3ab4 with SMTP id z16-20020a195e50000000b00500c2d73ab4mr2009431lfi.8.1695217898138;
        Wed, 20 Sep 2023 06:51:38 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id i22-20020a05640200d600b0052595b17fd4sm8925196edu.26.2023.09.20.06.51.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 06:51:37 -0700 (PDT)
Message-ID: <ed4cb30d-2eec-580f-0b4a-1b108a745a9a@linaro.org>
Date: Wed, 20 Sep 2023 15:51:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 14/15] dt-bindings: gpu: mali-valhall-csf: Add initial
 bindings for panthor driver
Content-Language: en-US
To: Liviu Dudau <Liviu.Dudau@arm.com>
Cc: Boris Brezillon <boris.brezillon@collabora.com>,
 dri-devel@lists.freedesktop.org, Conor Dooley <conor+dt@kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>, Daniel Stone
 <daniels@collabora.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Steven Price <steven.price@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?=
 <peron.clem@gmail.com>, "Marty E . Plummer" <hanetzer@startmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Faith Ekstrand <faith.ekstrand@collabora.com>
References: <20230809165330.2451699-1-boris.brezillon@collabora.com>
 <20230809165330.2451699-15-boris.brezillon@collabora.com>
 <3517f2e9-d9d7-5bf8-1905-62f52d68c512@linaro.org>
 <ZQr2cTMz1-PsOMRP@e110455-lin.cambridge.arm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ZQr2cTMz1-PsOMRP@e110455-lin.cambridge.arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 20/09/2023 15:41, Liviu Dudau wrote:
>>> +properties:
>>> +  $nodename:
>>> +    pattern: '^gpu@[a-f0-9]+$'
>>> +
>>> +  compatible:
>>> +    oneOf:
>>
>> Drop oneOf.
> 
> The idea was to allow for future compatible strings to be added later, but
> I guess we can re-introduce the oneOf entry later. Will remove it.

If you already predict that new list will be added (so new fallback
compatible!), then it's fine.

> 
>>
>>> +      - items:
>>> +          - enum:
>>> +              - rockchip,rk3588-mali
>>> +          - const: arm,mali-valhall-csf   # Mali Valhall GPU model/revision is fully discoverable
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  interrupts:
>>> +    items:
>>> +      - description: Job interrupt
>>> +      - description: MMU interrupt
>>> +      - description: GPU interrupt
>>> +
>>> +  interrupt-names:
>>> +    items:
>>> +      - const: job
>>> +      - const: mmu
>>> +      - const: gpu
>>> +
>>> +  clocks:
>>> +    minItems: 1
>>> +    maxItems: 3
>>> +
>>> +  clock-names:
>>> +    minItems: 1
>>> +    items:
>>> +      - const: core
>>> +      - const: coregroup
>>> +      - const: stacks
>>> +
>>> +  mali-supply: true
>>> +
>>> +  sram-supply: true
>>> +
>>> +  operating-points-v2: true
>>
>> Missing opp-table.
> 
> This is the main topic I want to clarify. See further down for the main comment,
> but I would like to understand what you are asking here. To copy the schema
> from bindings/opp/opp-v2.yaml and bindings/opp/opp-v2-base.yaml?

No, "opp-table" property.
git grep "opp-table:"

> 
>>
>>> +
>>> +  power-domains:
>>> +    minItems: 1
>>> +    maxItems: 5
>>> +
>>> +  power-domain-names:
>>> +    minItems: 1
>>> +    maxItems: 5
>>> +
>>> +  "#cooling-cells":
>>> +    const: 2
>>> +
>>> +  dynamic-power-coefficient:
>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>> +    description:
>>> +      A u32 value that represents the running time dynamic
>>> +      power coefficient in units of uW/MHz/V^2. The
>>> +      coefficient can either be calculated from power
>>> +      measurements or derived by analysis.
>>> +
>>> +      The dynamic power consumption of the GPU is
>>> +      proportional to the square of the Voltage (V) and
>>> +      the clock frequency (f). The coefficient is used to
>>> +      calculate the dynamic power as below -
>>> +
>>> +      Pdyn = dynamic-power-coefficient * V^2 * f
>>> +
>>> +      where voltage is in V, frequency is in MHz.
>>> +
>>> +  dma-coherent: true
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +  - interrupts
>>> +  - interrupt-names
>>> +  - clocks
>>> +  - mali-supply
>>> +
>>> +additionalProperties: false
>>> +
>>> +allOf:
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            const: rockchip,rk3588-mali
>>> +    then:
>>> +      properties:
>>> +        clocks:
>>> +          minItems: 3
>>> +        clock-names:
>>> +          items:
>>> +            - const: core
>>> +            - const: coregroup
>>> +            - const: stacks
>>
>> This duplicates top-level. Just minItems: 3.
> 
> Will remove the duplicated names.
> 
>>
>> Please describe also power domains - constrains and names.
> 
> I'm not sure the power domains and how to handle them have been
> entirely settled for Rockchip, hence why they were not included. Will
> check with Collabora to see if they have anything to add here, but
> for non-Rockchip platforms (like Juno with FPGAs) the constraints
> are going to be different.
> 
>>
>>> +
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
>>> +    #include <dt-bindings/interrupt-controller/irq.h>
>>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>>> +    #include <dt-bindings/power/rk3588-power.h>
>>> +
>>> +    gpu: gpu@fb000000 {
>>> +        compatible = "rockchip,rk3588-mali", "arm,mali-valhall-csf";
>>> +        reg = <0xfb000000 0x200000>;
>>> +        interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH 0>,
>>> +                     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH 0>,
>>> +                     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH 0>;
>>> +        interrupt-names = "job", "mmu", "gpu";
>>> +        clock-names = "core", "coregroup", "stacks";
>>> +        clocks = <&cru CLK_GPU>, <&cru CLK_GPU_COREGROUP>,
>>> +                 <&cru CLK_GPU_STACKS>;
>>> +        power-domains = <&power RK3588_PD_GPU>;
>>> +        operating-points-v2 = <&gpu_opp_table>;
>>> +        mali-supply = <&vdd_gpu_s0>;
>>> +        sram-supply = <&vdd_gpu_mem_s0>;
>>> +        status = "disabled";
>>
>> Drop status.
> 
> Will do.
> 
>>
>>> +    };
>>> +
>>> +    gpu_opp_table: opp-table {
>>
>> Opp table should be inside the device node.
> 
> I cannot find any device tree that supports your suggested usage. Most (all?) of

Really? All Qcom have it embedded.

> the device trees that I can find have the opp table as a separate node from
> the gpu and make use of the 'operating-points-v2 = <&opp_node_name>' reference

operating-points-v2 is needed anyway, I am not suggesting to drop it.

> in the board fragment. To me that makes more sense as different boards can have
> different operating points and is no reason to make them sub-nodes of the gpu.

How boards do it, is independent. They can keep it inside, outside,
override etc.

For majority of simple cases, the OPPs come from the SoC, thus they are
in DTSI.

Best regards,
Krzysztof


