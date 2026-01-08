Return-Path: <devicetree+bounces-252910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 23260D05145
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:39:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 38A2B3232253
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 16:43:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D990B2D8393;
	Thu,  8 Jan 2026 16:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nk2f8YRy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A00F927603C;
	Thu,  8 Jan 2026 16:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767890623; cv=none; b=pvOp+u3F5yNAZZYlHyPQxndzOurKWYiSoGqYfT5s9+7LBChoqse0JlWMrl4tmqamI2qiey9681CSf+APZDnquN3j7jY/g0YuSSfyDBzBdloNFtR3cC+WTqe7KbW9fkN/ohA3pGpa9YJo6iGplhjygTKxYEjErdsPElICef1Z73M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767890623; c=relaxed/simple;
	bh=BV2Gu6VvqDnjUG9CdfeoHNPKb8cbX0GclRstD7UwMGY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BWH1FhcCbyBZ6uQvndfBz6pgQI4daRcAfGvpJIcpuyJpbgObVbmcgtMRraHfbNQO8gMBOSXFqgpf5IHCcuzO4EViWBtj8ssAYQuUFv9nnfPEVrE7dk3ZrMfTMSV/3rqz355ROH49PK4DV3ZvE1kn2ncGpE/zrNQCbT2vSAK/gC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nk2f8YRy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19B71C116C6;
	Thu,  8 Jan 2026 16:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767890623;
	bh=BV2Gu6VvqDnjUG9CdfeoHNPKb8cbX0GclRstD7UwMGY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Nk2f8YRygJ+5gB3s5fKTjtytG/ystrFTw0/9KQJD85FxII3hTLdI4Mj1I4GaPUU5z
	 b/Z9A1Ez9BY6BbP2yn2eLg5hDIiTk2KLKH1e5DIIQipCOrTyq+UprVH6bl4OT5WfcN
	 AcExX1cCFp8kbdm4JPTvtGYaevEx8lFsPsQiEzZD1nj7avkdlxzZzeljgNtuvTFbap
	 X7i9ESH71JTVu7Bf9IF8F5MmUYqlcBG26sRjvft2sQD7gifq3Hl1IVsTItyHePm2sA
	 mCLeT7saStjxtYhqU1Q6Aw7YjIJMEdVyPrOqG+cgwTrGHKoCpkjZQ2WTOrlQ5qqfIE
	 U8jgBIyJQeUyA==
Message-ID: <260f91bf-c285-4a2f-b4dc-457e7b601761@kernel.org>
Date: Thu, 8 Jan 2026 17:43:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: lg: Initial support for LG1215 SoC and
 reference board
To: Chanho Min <chanho.min@lge.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>, Kael D'Alcamo <dev@kael-k.io>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Cc: Gunho Lee <gunho.lee@lge.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20260108082213.6545-1-chanho.min@lge.com>
 <20260108082213.6545-4-chanho.min@lge.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <20260108082213.6545-4-chanho.min@lge.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/01/2026 09:22, Chanho Min wrote:
> +		compatible = "arm,psci";
> +		method = "smc";
> +		cpu_suspend = <0xc4000001>;
> +		cpu_off = <0xc4000002>;
> +		cpu_on = <0xc4000003>;
> +	};
> +
> +	cpu0_opp_table: opp_table@0 {

More warnings...
1. Please follow coding style
2. Please use generic or approved names for this.

> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		opp-default {
> +			opp-hz = /bits/ 64 <1600000000>;
> +		};
> +	};
> +
> +	gic: interrupt-controller@c0000000 {

Wrongly placed. All MMIO nodes are part of soc.

> +		compatible = "arm,gic-400";
> +		reg = <0x0 0xc0001000 0x0 0x1000>, /* GICD */
> +		      <0x0 0xc0002000 0x0 0x2000>, /* GICC */
> +		      <0x0 0xc0004000 0x0 0x2000>, /* GICH */
> +		      <0x0 0xc0006000 0x0 0x2000>; /* GICV */
> +		#interrupt-cells = <3>;
> +		#address-cells = <0>;
> +		interrupts = <GIC_PPI 9 (GIC_CPU_MASK_RAW(0x0f) |
> +					IRQ_TYPE_LEVEL_LOW)>;
> +
> +		interrupt-controller;
> +	};
> +
> +	pmu {
> +		compatible = "arm,armv8-pmuv3";
> +		interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 185 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-affinity = <&cpu0>,
> +				     <&cpu1>,
> +				     <&cpu2>,
> +				     <&cpu3>;
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_RAW(0x0f) |
> +			      IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 14 (GIC_CPU_MASK_RAW(0x0f) |
> +			      IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 11 (GIC_CPU_MASK_RAW(0x0f) |
> +			      IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 10 (GIC_CPU_MASK_RAW(0x0f) |
> +			      IRQ_TYPE_LEVEL_LOW)>;
> +	};
> +
> +	clks {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;

No, this makes no sense, that's not a bus or any sort of device. Drop
entire node.

> +
> +		clk_xtal: clk-xtal {
> +			compatible = "fixed-clock";
> +			clock-output-names = "xtal";
> +			clock-frequency = <50000000>;
> +
> +			#clock-cells = <0>;
> +		};
> +
> +		clk_bus: clk-bus {
> +			compatible = "fixed-factor-clock";
> +			clocks = <&clk_xtal>;
> +			clock-names = "xtal";
> +			clock-output-names = "busclk";
> +			clock-div = <1>;
> +			clock-mult = <4>;
> +
> +			#clock-cells = <0>;
> +		};
> +	};
> +
> +	soc {
> +		compatible = "simple-bus";
> +
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		interrupt-parent = <&gic>;
> +
> +		dwmac_axi_config: dwmac-axi-config {

I don't think this validates.

Also, you really should follow DTS coding style.

> +			snps,rd_osr_lmt = <0x07>;
> +			snps,wr_osr_lmt = <0x07>;
> +			snps,blen = <0 0 16 0 0 0 0>;
> +		};


Best regards,
Krzysztof

