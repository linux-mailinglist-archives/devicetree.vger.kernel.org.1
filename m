Return-Path: <devicetree+bounces-21991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9EA805FB3
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 21:48:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 21822B20FCC
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 20:48:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D22656A019;
	Tue,  5 Dec 2023 20:48:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78C43188
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 12:48:30 -0800 (PST)
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-58a7d13b00bso4094789eaf.1
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 12:48:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701809310; x=1702414110;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P5rWyIJWCGT2zjzH0vSKtpXcV5oYWpKBn1o5WARYCeY=;
        b=dVXH8k5VwMfOpAGNnYbPy4uDuRsptx1VufseQuGynroH5ujTE83kU/b93AAw2bx316
         RbkU+GrQMupoYSzzAZja98RrYy9CYk7LH+FOBNbuBj5XCEm1TTVclpZMK8xgtObWYhG3
         30TyzxZsf48jvJ8FkYX7s5uuQ7ZKskoc7j+ZrPx173W45Zl/YR7a4O0xCcfaBetQrrbB
         66GWNsTEBc00YZ09LKVZIaCocQCcTnwU65Rm0WWr82uNTlja+CfV76sAmDYrToZjSYAk
         icGnqTXoYXdO5KqFagT1JlBZLCDSvUoBSRUdNali6LRUkY9JMZNo9NN8Fim7jzpA+VSB
         DQ0w==
X-Gm-Message-State: AOJu0YyNUNn5zxpW1kxrx/yVyvXAZ8pC0KRsRwZpl8zgSgrQiUqzX+Nw
	iFK3aLZtyiWRdHER7up05g==
X-Google-Smtp-Source: AGHT+IFuofZ5e9QhZoyAmo1H2uxzX8fEIPespY4KWNK0CcKiUCnF0f4zPL+617eTpEzrSKjGxXY9Cg==
X-Received: by 2002:a05:6820:2a09:b0:58e:1c48:1ee0 with SMTP id dr9-20020a0568202a0900b0058e1c481ee0mr4205975oob.18.1701809309703;
        Tue, 05 Dec 2023 12:48:29 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id br6-20020a0568201a4600b0058a0d3fb333sm2371081oob.37.2023.12.05.12.48.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 12:48:28 -0800 (PST)
Received: (nullmailer pid 3772711 invoked by uid 1000);
	Tue, 05 Dec 2023 20:48:27 -0000
Date: Tue, 5 Dec 2023 14:48:27 -0600
From: Rob Herring <robh@kernel.org>
To: Boris Brezillon <boris.brezillon@collabora.com>
Cc: dri-devel@lists.freedesktop.org, "Marty E . Plummer" <hanetzer@startmail.com>, =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>, Nicolas Boichat <drinkcat@chromium.org>, Neil Armstrong <neil.armstrong@linaro.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Daniel Stone <daniels@collabora.com>, Liviu Dudau <Liviu.Dudau@arm.com>, Steven Price <steven.price@arm.com>, Robin Murphy <robin.murphy@arm.com>, kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 13/14] dt-bindings: gpu: mali-valhall-csf: Add support
 for Arm Mali CSF GPUs
Message-ID: <20231205204827.GA3761421-robh@kernel.org>
References: <20231204173313.2098733-1-boris.brezillon@collabora.com>
 <20231204173313.2098733-14-boris.brezillon@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231204173313.2098733-14-boris.brezillon@collabora.com>

On Mon, Dec 04, 2023 at 06:33:06PM +0100, Boris Brezillon wrote:
> From: Liviu Dudau <liviu.dudau@arm.com>
> 
> Arm has introduced a new v10 GPU architecture that replaces the Job Manager
> interface with a new Command Stream Frontend. It adds firmware driven
> command stream queues that can be used by kernel and user space to submit
> jobs to the GPU.
> 
> Add the initial schema for the device tree that is based on support for
> RK3588 SoC. The minimum number of clocks is one for the IP, but on Rockchip
> platforms they will tend to expose the semi-independent clocks for better
> power management.
> 
> v3:
> - Cleanup commit message to remove redundant text
> - Added opp-table property and re-ordered entries
> - Clarified power-domains and power-domain-names requirements for RK3588.
> - Cleaned up example
> 
> Note: power-domains and power-domain-names requirements for other platforms
> are still work in progress, hence the bindings are left incomplete here.
> 
> v2:
> - New commit
> 
> Signed-off-by: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> ---
>  .../bindings/gpu/arm,mali-valhall-csf.yaml    | 147 ++++++++++++++++++
>  1 file changed, 147 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
> new file mode 100644
> index 000000000000..d72de094c8ea
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
> @@ -0,0 +1,147 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpu/arm,mali-valhall-csf.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARM Mali Valhall GPU
> +
> +maintainers:
> +  - Liviu Dudau <liviu.dudau@arm.com>
> +  - Boris Brezillon <boris.brezillon@collabora.com>
> +
> +properties:
> +  $nodename:
> +    pattern: '^gpu@[a-f0-9]+$'
> +
> +  compatible:
> +    oneOf:

Don't need oneOf.

> +      - items:
> +          - enum:
> +              - rockchip,rk3588-mali
> +          - const: arm,mali-valhall-csf   # Mali Valhall GPU model/revision is fully discoverable
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: Job interrupt
> +      - description: MMU interrupt
> +      - description: GPU interrupt
> +
> +  interrupt-names:
> +    items:
> +      - const: job
> +      - const: mmu
> +      - const: gpu
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 3

The function of each clock based on just the names below aren't too 
evident. 'core' is, but then what is 'stacks'? Please add some 
descriptions.

I expect there is better visibility into what's correct here than we had 
on earlier h/w. IOW, I don't want to see different clocks for every SoC. 
Same applies to power-domains.

> +
> +  clock-names:
> +    minItems: 1
> +    items:
> +      - const: core
> +      - const: coregroup
> +      - const: stacks
> +
> +  mali-supply: true
> +
> +  operating-points-v2: true
> +  opp-table:
> +    type: object
> +
> +  power-domains:
> +    minItems: 1
> +    maxItems: 5
> +
> +  power-domain-names:
> +    minItems: 1
> +    maxItems: 5
> +
> +  sram-supply: true
> +
> +  "#cooling-cells":
> +    const: 2
> +
> +  dynamic-power-coefficient:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      A u32 value that represents the running time dynamic
> +      power coefficient in units of uW/MHz/V^2. The
> +      coefficient can either be calculated from power
> +      measurements or derived by analysis.
> +
> +      The dynamic power consumption of the GPU is
> +      proportional to the square of the Voltage (V) and
> +      the clock frequency (f). The coefficient is used to
> +      calculate the dynamic power as below -
> +
> +      Pdyn = dynamic-power-coefficient * V^2 * f
> +
> +      where voltage is in V, frequency is in MHz.
> +
> +  dma-coherent: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-names
> +  - clocks
> +  - mali-supply
> +
> +additionalProperties: false
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3588-mali
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 3
> +	power-domains:
> +	  maxItems: 1
> +	power-domain-names: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/power/rk3588-power.h>
> +
> +    gpu: gpu@fb000000 {
> +        compatible = "rockchip,rk3588-mali", "arm,mali-valhall-csf";
> +        reg = <0xfb000000 0x200000>;
> +        interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH 0>,
> +                     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH 0>,
> +                     <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH 0>;
> +        interrupt-names = "job", "mmu", "gpu";
> +        clock-names = "core", "coregroup", "stacks";
> +        clocks = <&cru CLK_GPU>, <&cru CLK_GPU_COREGROUP>,
> +                 <&cru CLK_GPU_STACKS>;
> +        power-domains = <&power RK3588_PD_GPU>;
> +        operating-points-v2 = <&gpu_opp_table>;
> +        mali-supply = <&vdd_gpu_s0>;
> +        sram-supply = <&vdd_gpu_mem_s0>;
> +    };
> +
> +    gpu_opp_table: opp-table {
> +        compatible = "operating-points-v2";
> +        opp-300000000 {
> +            opp-hz = /bits/ 64 <300000000>;
> +            opp-microvolt = <675000 675000 850000>;
> +        };
> +        opp-400000000 {
> +            opp-hz = /bits/ 64 <400000000>;
> +            opp-microvolt = <675000 675000 850000>;
> +        };
> +    };
> +
> +...
> -- 
> 2.43.0
> 

