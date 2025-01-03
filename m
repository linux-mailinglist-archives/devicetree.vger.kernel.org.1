Return-Path: <devicetree+bounces-135368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 217C6A00B7E
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 16:32:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE4F11602E7
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 15:32:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4753199223;
	Fri,  3 Jan 2025 15:32:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D8C1186294;
	Fri,  3 Jan 2025 15:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735918369; cv=none; b=ZsgPtbRnhGeoI5t6d1L/+khFgaueI1M2vg+kZ1BRRsM6ZrjmcsIRenLM0ikqflxLQwaYVsy4yTGirfFT4HLYY85T6nfM1YtsW9Bl6nsy98RygXZQyhLI/Dvo7YbiGIimiSXLrXm82nqpvjdydpqqHh46OAGohkHEKWeuoHhws04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735918369; c=relaxed/simple;
	bh=mdDLlCZ6IS2/j/Htnd//lvc5iXz++8IAZk3L7WLpB6o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VxMILQoBQBAEp0Y/rgl57YeuKjpF/pLm6tQxWQFrlWQcEW01JXEhx+8gTbTl3JWJX5pRR7ZHDiQbtGDBJAz5TSTtk/2IkTdDUtzLOvbUTr00PXPPA/Zn9zs0g/SWCYc4DMWWWzrCIyf/cLiz2KmuRL6/1WKnrhNbIRGrdkr42BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A94E81480;
	Fri,  3 Jan 2025 07:33:14 -0800 (PST)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7E4BB3F6A8;
	Fri,  3 Jan 2025 07:32:44 -0800 (PST)
Message-ID: <9f430795-03c4-4ff4-ad71-92273877459a@arm.com>
Date: Fri, 3 Jan 2025 15:32:42 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] arm64: dts: morello: Add support for common
 functionalities
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Russell King <linux@armlinux.org.uk>
References: <20250102155416.13159-1-vincenzo.frascino@arm.com>
 <20250102155416.13159-3-vincenzo.frascino@arm.com>
 <b6grcxwvic33ojj3o46sjjvlyc2xwcy247n7ls4lyzkwhd73gs@pxi533kjm3yx>
Content-Language: en-US
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
In-Reply-To: <b6grcxwvic33ojj3o46sjjvlyc2xwcy247n7ls4lyzkwhd73gs@pxi533kjm3yx>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 03/01/2025 07:53, Krzysztof Kozlowski wrote:
> On Thu, Jan 02, 2025 at 03:54:14PM +0000, Vincenzo Frascino wrote:
>> The Morello architecture is an experimental extension to Armv8.2-A,
>> which extends the AArch64 state with the principles proposed in
>> version 7 of the Capability Hardware Enhanced RISC Instructions
>> (CHERI) ISA.
>>
>> The Morello Platform (soc) and the Fixed Virtual Platfom (fvp) share
>> some functionalities that have conveniently been included in
>> morello.dtsi to avoid duplication.
>>
>> Introduce morello.dtsi.
>>
>> Note: Morello fvp will be introduced with a future patch series.
>>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> ---
>>  arch/arm64/boot/dts/arm/morello.dtsi | 341 +++++++++++++++++++++++++++
>>  1 file changed, 341 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/arm/morello.dtsi
>>
>> diff --git a/arch/arm64/boot/dts/arm/morello.dtsi b/arch/arm64/boot/dts/arm/morello.dtsi
>> new file mode 100644
>> index 000000000000..67bc960f4596
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/arm/morello.dtsi
>> @@ -0,0 +1,341 @@
>> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
>> +/*
>> + * Copyright (c) 2020-2024, Arm Limited. All rights reserved.
>> + */
>> +
>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>> +
>> +/ {
>> +	interrupt-parent = <&gic>;
>> +
>> +	#address-cells = <2>;
>> +	#size-cells = <2>;
>> +
>> +	chosen { };
> 
> Drop

Fine, I will do it in the next iteration. The file you asked me to see
(sm8650.dtsi) has the same expression. Why this is incorrect? What's the rationale?

> 
>> +
>> +	clocks {
>> +		soc_refclk50mhz: clock-50000000 {
>> +			compatible = "fixed-clock";
>> +			#clock-cells = <0>;
>> +			clock-frequency = <50000000>;
>> +			clock-output-names = "apb_pclk";
>> +		};
>> +
>> +		soc_refclk85mhz: clock-85000000 {
>> +			compatible = "fixed-clock";
>> +			#clock-cells = <0>;
>> +			clock-frequency = <85000000>;
>> +			clock-output-names = "iofpga:aclk";
>> +		};
>> +
>> +		soc_uartclk: clock-50000000-uart {
> 
> Keep nodes sorted by name.
> 

I missed this one. I will reorder it in the next iteration.

>> +			compatible = "fixed-clock";
>> +			#clock-cells = <0>;
>> +			clock-frequency = <50000000>;
>> +			clock-output-names = "uartclk";
>> +		};
>> +
>> +		dpu_aclk: dpu-aclk {
> 
> Keep consistent naming. If others use "clock-" then why this has
> different pattern?
> 

Ok, I will change it.

> 
>> +			/* 77.1 MHz derived from 24 MHz reference clock */
>> +			compatible = "fixed-clock";
>> +			#clock-cells = <0>;
>> +			clock-frequency = <350000000>;
>> +			clock-output-names = "aclk";
>> +		};
>> +
>> +		dpu_pixel_clk: dpu-pixel-clk {
>> +			compatible = "fixed-clock";
>> +			#clock-cells = <0>;
>> +			clock-frequency = <148500000>;
>> +			clock-output-names = "pxclk";
>> +		};
>> +	};
>> +
>> +	cpus {
>> +		#address-cells = <2>;
>> +		#size-cells = <0>;
>> +
>> +		cpu0: cpu0@0 {
> 
> cpu@0
> 

Ok, will fix in the next iteration.

>> +			compatible = "arm,neoverse-n1";
>> +			reg = <0x0 0x0>;
>> +			device_type = "cpu";
>> +			enable-method = "psci";
>> +			clocks = <&scmi_dvfs 0>;
>> +		};
>> +
>> +		cpu1: cpu1@100 {
> 
> cpu@100
> 
> This applies to the entire patchset.
> 
> 
>> +			compatible = "arm,neoverse-n1";
>> +			reg = <0x0 0x100>;
>> +			device_type = "cpu";
>> +			enable-method = "psci";
>> +			clocks = <&scmi_dvfs 0>;
>> +		};
>> +
>> +		cpu2: cpu2@10000 {
>> +			compatible = "arm,neoverse-n1";
>> +			reg = <0x0 0x10000>;
>> +			device_type = "cpu";
>> +			enable-method = "psci";
>> +			clocks = <&scmi_dvfs 1>;
>> +		};
>> +
>> +		cpu3: cpu3@10100 {
>> +			compatible = "arm,neoverse-n1";
>> +			reg = <0x0 0x10100>;
>> +			device_type = "cpu";
>> +			enable-method = "psci";
>> +			clocks = <&scmi_dvfs 1>;
>> +		};
> 
> Missing cache nodes and properties.
> 

All right, I will have a look.

> 
>> +	};
>> +
>> +	firmware {
>> +		interrupt-parent = <&gic>;
>> +
>> +		scmi {
>> +			compatible = "arm,scmi";
>> +			mbox-names = "tx", "rx";
>> +			mboxes = <&mailbox 1 0>, <&mailbox 1 1>;
>> +			shmem = <&cpu_scp_hpri0>, <&cpu_scp_hpri1>;
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +
>> +			scmi_dvfs: protocol@13 {
>> +				reg = <0x13>;
>> +				#clock-cells = <1>;
>> +			};
>> +
>> +			scmi_clk: protocol@14 {
>> +				reg = <0x14>;
>> +				#clock-cells = <1>;
>> +			};
>> +		};
>> +	};
>> +
>> +	/* The first bank of memory, memory map is actually provided by UEFI. */
>> +	memory@80000000 {
>> +		device_type = "memory";
>> +		/* [0x80000000-0xffffffff] */
>> +		reg = <0x00000000 0x80000000 0x0 0x7F000000>;
>> +	};
>> +
>> +	memory@8080000000 {
>> +		device_type = "memory";
>> +		/* [0x8080000000-0x83f7ffffff] */
>> +		reg = <0x00000080 0x80000000 0x3 0x78000000>;
>> +	};
>> +
>> +	pmu {
>> +		compatible = "arm,armv8-pmuv3";
>> +		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
>> +	};
>> +
>> +	psci {
>> +		compatible = "arm,psci-0.2";
>> +		method = "smc";
>> +	};
>> +
>> +	reserved-memory {
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		ranges;
>> +
>> +		secure-firmware@ff000000 {
>> +			reg = <0 0xff000000 0 0x01000000>;
>> +			no-map;
>> +		};
>> +	};
>> +
>> +	spe-pmu {
>> +		compatible = "arm,statistical-profiling-extension-v1";
>> +		interrupts = <GIC_PPI 5 IRQ_TYPE_LEVEL_HIGH>;
>> +	};
>> +
>> +	soc: soc {
>> +		compatible = "simple-bus";
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		interrupt-parent = <&gic>;
>> +		ranges;
>> +
>> +		dp0: display@2cc00000 {
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +			compatible = "arm,mali-d32", "arm,mali-d71";
> 
> I am pretty sure I asked for this: order properties according to DTS
> coding style, not random.
> 

You have, I missed this iteration.

>> +			reg = <0 0x2cc00000 0 0x20000>;
>> +			interrupts = <0 69 4>;
>> +			clocks = <&dpu_aclk>;
>> +			clock-names = "aclk";
>> +			iommus = <&smmu_dp 0>, <&smmu_dp 1>, <&smmu_dp 2>, <&smmu_dp 3>,
>> +				<&smmu_dp 8>;
>> +
>> +			pl0: pipeline@0 {
>> +				reg = <0>;
>> +				clocks = <&dpu_pixel_clk>;
>> +				clock-names = "pxclk";
>> +				port {
>> +					dp_pl0_out0: endpoint {
>> +						remote-endpoint = <&tda998x_0_input>;
>> +					};
>> +				};
>> +			};
>> +		};
>> +
>> +		i2c: i2c@1c0f0000 {
>> +			compatible = "cdns,i2c-r1p14";
>> +			reg = <0x0 0x1c0f0000 0x0 0x1000>;
> 
> And here order is correct... why each node is formatted differently?
> 

I tried to format them all in the same way. But I clearly missed some iterations.
Maybe providing an automated tool (e.g. extend checkpatch.pl) would save time to
developers and reviewers.

>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +			clock-frequency = <100000>;
> 
> This is usually property of the board, unless this is somehow blurred
> here.
> 

Ok, I will move it around.

>> +			interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks = <&dpu_aclk>;
>> +
>> +			hdmi_tx: hdmi-transmitter@70 {
>> +				compatible = "nxp,tda998x";
>> +				reg = <0x70>;
>> +				video-ports = <0x234501>;
>> +				port {
>> +					tda998x_0_input: endpoint {
>> +						remote-endpoint = <&dp_pl0_out0>;
>> +					};
>> +				};
>> +			};
>> +		};
>> +
>> +		gic: interrupt-controller@2c010000 {
>> +			compatible = "arm,gic-v3";
>> +			#address-cells = <2>;
>> +			#interrupt-cells = <3>;
>> +			#size-cells = <2>;
>> +			ranges;
> 
> 
> Missing reg.... and why do you have ranges here? No children.
> 

I will remove it in the next iteration.

>> +			interrupt-controller;
>> +		};
>> +
>> +		smmu_dp: iommu@2ce00000 {
>> +			compatible = "arm,smmu-v3";
>> +			reg = <0 0x2ce00000 0 0x40000>;
>> +			interrupts = <GIC_SPI 76 IRQ_TYPE_EDGE_RISING>,
>> +					<GIC_SPI 80 IRQ_TYPE_EDGE_RISING>,
>> +					<GIC_SPI 78 IRQ_TYPE_EDGE_RISING>;
>> +			interrupt-names = "eventq", "gerror", "cmdq-sync";
>> +			#iommu-cells = <1>;
>> +		};
>> +
>> +		smmu_ccix: iommu@4f000000 {
>> +			compatible = "arm,smmu-v3";
>> +			reg = <0 0x4f000000 0 0x40000>;
> 
> No hex here in reg but...
> 

Fine.

>> +			interrupts = <GIC_SPI 228 IRQ_TYPE_EDGE_RISING>,
>> +				     <GIC_SPI 230 IRQ_TYPE_EDGE_RISING>,
>> +				     <GIC_SPI 41 IRQ_TYPE_EDGE_RISING>,
>> +				     <GIC_SPI 229 IRQ_TYPE_EDGE_RISING>;
>> +			interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
>> +			msi-parent = <&its1 0>;
>> +			#iommu-cells = <1>;
>> +			dma-coherent;
>> +		};
>> +
>> +		smmu_pcie: iommu@4f400000 {
>> +			compatible = "arm,smmu-v3";
>> +			reg = <0 0x4f400000 0 0x40000>;
>> +			interrupts = <GIC_SPI 235 IRQ_TYPE_EDGE_RISING>,
>> +				     <GIC_SPI 237 IRQ_TYPE_EDGE_RISING>,
>> +				     <GIC_SPI 40 IRQ_TYPE_EDGE_RISING>,
>> +				     <GIC_SPI 236 IRQ_TYPE_EDGE_RISING>;
>> +			interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
>> +			msi-parent = <&its2 0>;
>> +			#iommu-cells = <1>;
>> +			dma-coherent;
>> +		};
>> +
>> +		mailbox: mhu@45000000 {
>> +			compatible = "arm,mhu-doorbell", "arm,primecell";
>> +			reg = <0x0 0x45000000 0x0 0x1000>;
> 
> here hex. Well, one more inconsistency in the same file. It's usually
> hex everywhere in reg and ranges.
> 

Fine.

>> +			interrupts = <GIC_SPI 318 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 316 IRQ_TYPE_LEVEL_HIGH>;
>> +			#mbox-cells = <2>;
>> +			clocks = <&soc_refclk50mhz>;
>> +			clock-names = "apb_pclk";
>> +		};
>> +
>> +		pcie_ctlr: pcie@28c0000000 {
>> +			compatible = "pci-host-ecam-generic";
>> +			device_type = "pci";
>> +			reg = <0x28 0xC0000000 0 0x10000000>;
>> +			ranges = <0x01000000 0x00 0x00000000 0x00 0x6F000000 0x00 0x00800000>,
>> +				 <0x02000000 0x00 0x60000000 0x00 0x60000000 0x00 0x0F000000>,
>> +				 <0x42000000 0x09 0x00000000 0x09 0x00000000 0x1F 0xC0000000>;
> 
> lowercase hex
>

Ok.

>> +			bus-range = <0 255>;
>> +			linux,pci-domain = <0>;
>> +			#address-cells = <3>;
> 
> Best regards,
> Krzysztof
> 

-- 
Regards,
Vincenzo


