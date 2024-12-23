Return-Path: <devicetree+bounces-133650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 641529FB319
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 17:43:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 19039188265B
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 16:43:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 657F51B3944;
	Mon, 23 Dec 2024 16:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnHiyfKY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1F31AD3F6;
	Mon, 23 Dec 2024 16:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734972187; cv=none; b=EF1/DklLlCsR5+KnS/QiCGlLG8HAhFMGxkvShTTJFDBFNeUDDWKzqNqxAH0tuQE47CUxTERT1B9zGr3JBcqH9Nlujh3rBxqS/XdBnvXhiIHYZx6yV8mvOEw7oDLFIJmAelHaWV5nb8PxJs79cTJMBfwVuIZY1NhuXWS4RcSfJi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734972187; c=relaxed/simple;
	bh=6reF2PZJUXaD4YUbmoRpNLyFTMbqR8aQXS3G3j070ws=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S1LDgUUfVOm2yeObt0DLMAn45Fn7ji1SzDr6ssXcIUrh11mS7DdRtXBfxfOhb5IrAqneiHCsrivcPzR0UxXpEpE62wfrptqehwNk7K5WJq5kJCtEBhvNYtrWeyGUYypkhqpugrq5nBm7qMXXV33ilAxenGJ0XU4z2PDz8O+MTaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FnHiyfKY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F7BAC4CED3;
	Mon, 23 Dec 2024 16:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734972185;
	bh=6reF2PZJUXaD4YUbmoRpNLyFTMbqR8aQXS3G3j070ws=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FnHiyfKYbQ00IoZ9nWxDSs8IpwjgGw6nFLxbwjRMuyaDh8FAU/9Ty9LI6sIcKqpAc
	 yKdb1lTrutZX2VnQdXUZ0v/0H2uNDiHj9lgKJXRxuEqs244ezT2roxRPiaTEipDuuS
	 EUOzLhjOofFqQrVgSQloJn8VpC0SvPHoTGTYTgF8DTYVuaTDyOkh2WuXYemd9X5Yo5
	 k/hr+8DKNAEaYAIzo6w9qEEkzSnzO/vfRC/EeWbIwSM1FRYRIhikUO3lQSOeGB8coC
	 bZONJAjGLYLjsFb76ygW839pBXNLB0wat6DLUsT1BdITDSW1rl7Ap4DjIAFLkGsyVL
	 rIod+teEy8Zbg==
Message-ID: <62bf3b33-e2d1-43ef-91b0-ef12abef2132@kernel.org>
Date: Mon, 23 Dec 2024 17:43:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: morello: Add support for soc dts
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Russell King <linux@armlinux.org.uk>
References: <20241223162029.326997-1-vincenzo.frascino@arm.com>
 <20241223162029.326997-4-vincenzo.frascino@arm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20241223162029.326997-4-vincenzo.frascino@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/12/2024 17:20, Vincenzo Frascino wrote:
> The Morello architecture is an experimental extension to Armv8.2-A,
> which extends the AArch64 state with the principles proposed in
> version 7 of the Capability Hardware Enhanced RISC Instructions
> (CHERI) ISA.
> 
> Introduce Morello SoC dts.
> 
> Note: Morello is at the same time the name of an Architecture [1], an SoC
> [2] and a Board [2].
> To distinguish in between Architecture/SoC and Board we refer to the first
> as arm,morello and to the second as arm,morello-sdp.
> 
> [1] https://developer.arm.com/Architectures/Morello
> [2] https://www.morello-project.org/

Drop both above paragraphs, you already said this in previous commit.
This still does not help me (See further questions).
> 
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>

Please drop the autogenerated scripts/get_maintainer.pl CC-entries from
commit msg. There is no single need to store automated output of
get_maintainers.pl in the git log. It can be easily re-created at any
given time, thus its presence in the git history is redundant and
obfuscates the log.

If you need it for your own patch management purposes, keep it under the
--- separator.

Or just use b4 and none of these are needed.

> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>
> Cc: Russell King <linux@armlinux.org.uk>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/boot/dts/arm/Makefile        |   1 +
>  arch/arm64/boot/dts/arm/morello-sdp.dts | 116 ++++++++++++++++++++++++
>  2 files changed, 117 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/arm/morello-sdp.dts
> 
> diff --git a/arch/arm64/boot/dts/arm/Makefile b/arch/arm64/boot/dts/arm/Makefile
> index d908e96d7ddc..869667bef7c0 100644
> --- a/arch/arm64/boot/dts/arm/Makefile
> +++ b/arch/arm64/boot/dts/arm/Makefile
> @@ -7,3 +7,4 @@ dtb-$(CONFIG_ARCH_VEXPRESS) += rtsm_ve-aemv8a.dtb
>  dtb-$(CONFIG_ARCH_VEXPRESS) += vexpress-v2f-1xv7-ca53x2.dtb
>  dtb-$(CONFIG_ARCH_VEXPRESS) += fvp-base-revc.dtb
>  dtb-$(CONFIG_ARCH_VEXPRESS) += corstone1000-fvp.dtb corstone1000-mps3.dtb
> +dtb-$(CONFIG_ARCH_VEXPRESS) += morello-sdp.dtb
> diff --git a/arch/arm64/boot/dts/arm/morello-sdp.dts b/arch/arm64/boot/dts/arm/morello-sdp.dts
> new file mode 100644
> index 000000000000..143e644361e4
> --- /dev/null
> +++ b/arch/arm64/boot/dts/arm/morello-sdp.dts
> @@ -0,0 +1,116 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
> +/*
> + * Copyright (c) 2021-2024, Arm Limited. All rights reserved.
> +
> + */
> +
> +/dts-v1/;
> +#include "morello.dtsi"
> +
> +/ {
> +	model = "Arm Morello System Development Platform";
> +	compatible = "arm,morello-sdp";
> +
> +	smmu_dp: iommu@2ce00000 {

Well, this is confusing. Boards are almost never adding things to the
soc node, where this belongs to.

Your commit msg should explain this.

> +		compatible = "arm,smmu-v3";
> +		reg = <0 0x2ce00000 0 0x40000>;
> +		interrupts = <GIC_SPI 76 IRQ_TYPE_EDGE_RISING>,
> +				<GIC_SPI 80 IRQ_TYPE_EDGE_RISING>,
> +				<GIC_SPI 78 IRQ_TYPE_EDGE_RISING>;
> +		interrupt-names = "eventq", "gerror", "cmdq-sync";
> +		#iommu-cells = <1>;
> +	};
> +
> +	dp0: display@2cc00000 {

display/GPU is outside of SoC? Really? Please explain the hardware in
the commit msg.

> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		compatible = "arm,mali-d32", "arm,mali-d71";
> +		reg = <0 0x2cc00000 0 0x20000>;
> +		interrupts = <0 69 4>;
> +		clocks = <&dpu_aclk>;
> +		clock-names = "aclk";
> +		iommus = <&smmu_dp 0>, <&smmu_dp 1>, <&smmu_dp 2>, <&smmu_dp 3>,
> +			<&smmu_dp 8>;
> +
> +		pl0: pipeline@0 {
> +			reg = <0>;
> +			clocks = <&dpu_pixel_clk>;
> +			clock-names = "pxclk";
> +			port {
> +				dp_pl0_out0: endpoint {
> +					remote-endpoint = <&tda998x_0_input>;
> +				};
> +			};
> +		};
> +	};
> +
> +	i2c@1c0f0000 {
> +		compatible = "cdns,i2c-r1p14";

I really doubt that you can package cdns IP block outside of SoC.

> +		reg = <0x0 0x1c0f0000 0x0 0x1000>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		clock-frequency = <100000>;
> +		interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&dpu_aclk>;
> +
> +		hdmi_tx: hdmi-transmitter@70 {
> +			compatible = "nxp,tda998x";
> +			reg = <0x70>;
> +			video-ports = <0x234501>;
> +			port {
> +				tda998x_0_input: endpoint {
> +					remote-endpoint = <&dp_pl0_out0>;
> +				};
> +			};
> +		};
> +	};
> +
> +	dpu_aclk: dpu_aclk {

Use consistent names

> +		/* 77.1 MHz derived from 24 MHz reference clock */

77.1 or 35?

> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <350000000>;
> +		clock-output-names = "aclk";

aclk? Sounds like something belonging to the clock controller.

> +	};
> +
> +	dpu_pixel_clk: dpu-pixel-clk {

Same comment

> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <148500000>;
> +		clock-output-names = "pxclk";
> +	};
> +};
> +
> +&gic {
> +	reg = <0x0 0x30000000 0 0x10000>,	/* GICD */
> +	      <0x0 0x300c0000 0 0x80000>;	/* GICR */
> +	interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +
> +	its1: msi-controller@30040000 {
> +		compatible = "arm,gic-v3-its";
> +		msi-controller;
> +		#msi-cells = <1>;
> +		reg = <0x0 0x30040000 0x0 0x20000>;
> +	};
> +
> +	its2: msi-controller@30060000 {
> +		compatible = "arm,gic-v3-its";
> +		msi-controller;
> +		#msi-cells = <1>;
> +		reg = <0x0 0x30060000 0x0 0x20000>;
> +	};
> +
> +	its_ccix: msi-controller@30080000 {
> +		compatible = "arm,gic-v3-its";
> +		msi-controller;
> +		#msi-cells = <1>;
> +		reg = <0x0 0x30080000 0x0 0x20000>;
> +	};
> +
> +	its_pcie: msi-controller@300a0000 {
> +		compatible = "arm,gic-v3-its";
> +		msi-controller;
> +		#msi-cells = <1>;
> +		reg = <0x0 0x300a0000 0x0 0x20000>;
> +	};
> +};


Best regards,
Krzysztof

