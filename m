Return-Path: <devicetree+bounces-132782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0B29F81A5
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 18:23:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9450E188F608
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 17:19:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EEEE1A76A3;
	Thu, 19 Dec 2024 17:16:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 359BD19DF6A;
	Thu, 19 Dec 2024 17:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734628574; cv=none; b=VBmhBeur/XC9XJ5a6EiCbr3daBTj7jQCqnu/qq5lQfn5O+IwA8pczpAKz8/vtT2FDvhwhNTUvtSniC88VRT/PuGndPW0NSITMGfLTba8L+2wr2bleCb6f7gxMy4MCci1VTDEX7gy1x9ILZeTWeKiB43ObtLc2AKEpYmTyRb1BhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734628574; c=relaxed/simple;
	bh=naAIjbedxBhLCe1CAf742mvOn9DCqc/wlidiHBHFhfQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kkngJ/uGSGmSw/FkYARNtLuTeeF0pCeS0a/8FM3QfL7ka1JQYcj/PylI+HcYbmfgihDjAO2cYqTDyjH7gwoquX/aboYaAk+wgBX9ePMrRHFuObZ4+sCNZoGVFj3WlzwW7mrnPdOKm9u7YQeAt5KSQMmnW4JN/BMAxsdlRMRVVXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9FA4A1480;
	Thu, 19 Dec 2024 09:16:39 -0800 (PST)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C6C793F528;
	Thu, 19 Dec 2024 09:16:10 -0800 (PST)
Message-ID: <72604948-b8dd-4ea5-aeec-7c703418e94d@arm.com>
Date: Thu, 19 Dec 2024 17:16:09 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] arm64: dts: morello: Add support for common
 functionalities
To: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Sudeep Holla <sudeep.holla@arm.com>, Rob Herring <robh@kernel.org>
References: <20241213163221.3626261-1-vincenzo.frascino@arm.com>
 <20241213163221.3626261-4-vincenzo.frascino@arm.com>
 <70119ce4-6d58-40f6-9851-679cf597fe73@kernel.org>
Content-Language: en-US
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
In-Reply-To: <70119ce4-6d58-40f6-9851-679cf597fe73@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 14/12/2024 10:11, Krzysztof Kozlowski wrote:
> On 13/12/2024 17:32, Vincenzo Frascino wrote:
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
>> Cc: Sudeep Holla <sudeep.holla@arm.com>
>> Cc: Rob Herring <robh@kernel.org>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> ---
>>  arch/arm64/boot/dts/arm/morello.dtsi | 112 +++++++++++++++++++++++++++
>>  1 file changed, 112 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/arm/morello.dtsi
>>
>> diff --git a/arch/arm64/boot/dts/arm/morello.dtsi b/arch/arm64/boot/dts/arm/morello.dtsi
>> new file mode 100644
>> index 000000000000..9d84a0840c5b
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/arm/morello.dtsi
>> @@ -0,0 +1,112 @@
>> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
>> +/*
>> + * Copyright (c) 2020-2024, Arm Limited. All rights reserved.
>> + */
>> +
>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>> +
>> +/ {
>> +	compatible = "arm,morello";
>> +
>> +	interrupt-parent = <&gic>;
>> +	#address-cells = <2>;
>> +	#size-cells = <2>;
>> +
>> +	aliases {
>> +		serial0 = &soc_uart0;
>> +	};
>> +
>> +	gic: interrupt-controller@2c010000 {
>> +		compatible = "arm,gic-v3";
>> +		#address-cells = <2>;
>> +		#interrupt-cells = <3>;
>> +		#size-cells = <2>;
>> +		ranges;
>> +		interrupt-controller;
>> +	};
>> +
>> +	pmu {
>> +		compatible = "arm,armv8-pmuv3";
>> +		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
>> +	};
>> +
>> +	spe-pmu {
>> +		compatible = "arm,statistical-profiling-extension-v1";
>> +		interrupts = <GIC_PPI 5 IRQ_TYPE_LEVEL_HIGH>;
>> +	};
>> +
>> +	psci {
>> +		compatible = "arm,psci-0.2";
>> +		method = "smc";
>> +	};
>> +
>> +	timer {
>> +		compatible = "arm,armv8-timer";
>> +		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
>> +			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
>> +			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
>> +			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
>> +	};
>> +
>> +	mailbox: mhu@45000000 {
> 
> 
> You cannot have MMIO nodes outside of soc.
> 

Ok, I will move it to morello.dtsi.

>> +		compatible = "arm,mhu-doorbell", "arm,primecell";
>> +		reg = <0x0 0x45000000 0x0 0x1000>;
>> +		interrupts = <GIC_SPI 318 IRQ_TYPE_LEVEL_HIGH>,
>> +			     <GIC_SPI 316 IRQ_TYPE_LEVEL_HIGH>;
>> +		interrupt-names = "mhu-lpri-rx",
>> +				  "mhu-hpri-rx";
>> +		#mbox-cells = <2>;
>> +		mbox-name = "ARM-MHU";
>> +		clocks = <&soc_refclk50mhz>;
>> +		clock-names = "apb_pclk";
>> +	};
>> +
>> +	sram: sram@45200000 {
>> +		compatible = "mmio-sram";
>> +		reg = <0x0 0x06000000 0x0 0x8000>;
>> +
>> +		#address-cells = <1>;
>> +		#size-cells = <1>;
>> +		ranges = <0 0x0 0x06000000 0x8000>;
>> +
>> +		cpu_scp_hpri0: scp-sram@0 {
>> +			compatible = "arm,scmi-shmem";
>> +			reg = <0x0 0x80>;
>> +		};
>> +
>> +		cpu_scp_hpri1: scp-sram@80 {
>> +			compatible = "arm,scmi-shmem";
>> +			reg = <0x80 0x80>;
>> +		};
>> +	};
>> +
>> +	soc_refclk50mhz: refclk50mhz {
> 
> Please use name for all fixed clocks which matches current format
> recommendation: 'clock-<freq>' (see also the pattern in the binding for
> any other options).
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/clock/fixed-clock.yaml?h=v6.11-rc1
> 

All right.

>> +		compatible = "fixed-clock";
>> +		#clock-cells = <0>;
>> +		clock-frequency = <50000000>;
>> +		clock-output-names = "apb_pclk";
>> +	};
>> +
>> +	soc_refclk85mhz: refclk85mhz {
> 
> Please use name for all fixed clocks which matches current format
> recommendation: 'clock-<freq>' (see also the pattern in the binding for
> any other options).
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/clock/fixed-clock.yaml?h=v6.11-rc1
> 
> 
>> +		compatible = "fixed-clock";
>> +		#clock-cells = <0>;
>> +		clock-frequency = <85000000>;
>> +		clock-output-names = "iofpga:aclk";
>> +	};
>> +
>> +	soc_uartclk:  uartclk {
> 
> 
> Only one space.
> 
> Please use name for all fixed clocks which matches current format
> recommendation: 'clock-<freq>' (see also the pattern in the binding for
> any other options).
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/clock/fixed-clock.yaml?h=v6.11-rc1
> 
>> +		compatible = "fixed-clock";
>> +		#clock-cells = <0>;
>> +		clock-frequency = <50000000>;
>> +		clock-output-names = "uartclk";
>> +	};
>> +
>> +	soc_uart0: serial@2a400000 {
>> +		compatible = "arm,pl011", "arm,primecell";
>> +		reg = <0x0 0x2a400000 0x0 0x1000>;
>> +		interrupts = <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>;
>> +		clocks = <&soc_uartclk>, <&soc_refclk50mhz>;
>> +		clock-names = "uartclk", "apb_pclk";
>> +		status = "okay";
> 
> Why do you need it? Did you disable it?
> 
>> +	};
>> +};
> 
> 
> Best regards,
> Krzysztof

-- 
Regards,
Vincenzo


