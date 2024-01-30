Return-Path: <devicetree+bounces-36842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DFB842D5C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 20:55:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E98D71C2467E
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 19:55:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0984269DFC;
	Tue, 30 Jan 2024 19:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ed+UPfyr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8FE669D1E
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 19:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706644502; cv=none; b=SQmqUz9ZBBg8WGeiJroh6lIMvrsZoC91EjwbhsyWhPKosGTM5zj+Ljf4gKmlrEaI3sIPKSZtNnkRLThdrgkXH2agNnjBFDgC+JWOvr6LfZybgWql3fDpC33cBQsEoaf4EDf/ak1+9Bvmpe6hYoHn9JYjvWSuNK6CITo1oPiaadY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706644502; c=relaxed/simple;
	bh=YV58XM8z5DcA8R7rpigVE/zuFs2tguSdvi43bLmSNt8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZoMyH9aPVb7bkxx/G130V2rfbbDOqL89yvlnOWYhZoEaFg48wz1B1y9IPWopKRfpCYJzbBA02n/DQJIHHEn8toUv4AeWCNSuM04T+C4AcBBGenXRmj/m5WWM/vajiTIeTCZTELj17qzZ4D7EY+QPqvU4aCHnEqFo9svoDRWRqAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ed+UPfyr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBC8AC433C7;
	Tue, 30 Jan 2024 19:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706644502;
	bh=YV58XM8z5DcA8R7rpigVE/zuFs2tguSdvi43bLmSNt8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ed+UPfyrWqTCC+Iu92Dw0Tt8bJP3lGjPpH887lcUwEYOTErYMmdRD3NAIhoh4LANU
	 M2cfKqy4U5uto40nmx3EG+sJEJShTFnztA//vSzqte0NDpI5qii2b23z0TGraX7xGH
	 TN9uDcWtnMMvYJuKfB+WdrogbAPN3dXTAX3WZpKACsD0YTH3Yk34sRslKL6foCpD9W
	 kbmc1Z3gvcF2SPsteZFUsJayIrSnlVVfaxoYB8u60wlWv7S8x+n0aAEeiv2xG/dhA/
	 Rk+AWaqqopxi9MthaMZhHKicJ8NWBQm8WzC2gKlXKQ3ekEqm5Gwvm3I9MCSiUeN6Oe
	 22nG0+C2kHw9A==
Date: Tue, 30 Jan 2024 13:54:59 -0600
From: Rob Herring <robh@kernel.org>
To: Boris Brezillon <boris.brezillon@collabora.com>
Cc: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
	"Marty E . Plummer" <hanetzer@startmail.com>,
	=?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
	Nicolas Boichat <drinkcat@chromium.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Faith Ekstrand <faith.ekstrand@collabora.com>,
	Daniel Stone <daniels@collabora.com>,
	Liviu Dudau <Liviu.Dudau@arm.com>,
	Steven Price <steven.price@arm.com>,
	Robin Murphy <robin.murphy@arm.com>, kernel@collabora.com,
	Heiko Stuebner <heiko@sntech.de>,
	Tatsuyuki Ishi <ishitatsuyuki@gmail.com>,
	Chris Diamand <chris.diamand@foss.arm.com>,
	Ketil Johnsen <ketil.johnsen@arm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 13/14] dt-bindings: gpu: mali-valhall-csf: Add support
 for Arm Mali CSF GPUs
Message-ID: <20240130195459.GA2187809-robh@kernel.org>
References: <20240122163047.1954733-1-boris.brezillon@collabora.com>
 <20240122163047.1954733-14-boris.brezillon@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240122163047.1954733-14-boris.brezillon@collabora.com>

On Mon, Jan 22, 2024 at 05:30:44PM +0100, Boris Brezillon wrote:
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
> v4:
> - Fix formatting issue
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
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
>  .../bindings/gpu/arm,mali-valhall-csf.yaml    | 147 ++++++++++++++++++
>  1 file changed, 147 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
> new file mode 100644
> index 000000000000..be1f6bacc3f3
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
> +        power-domains:
> +          maxItems: 1
> +        power-domain-names: false
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

Move this into the gpu node. With that,

Reviewed-by: Rob Herring <robh@kernel.org>


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

