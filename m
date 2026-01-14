Return-Path: <devicetree+bounces-255024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 309CED1EDCB
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 13:45:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 268C33022B8C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 12:43:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B80AF39A81A;
	Wed, 14 Jan 2026 12:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRbfv42m"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BEF439A809;
	Wed, 14 Jan 2026 12:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768394565; cv=none; b=rsF9xCIUemI00fzmoNrZcD38lSckszMRYpT2JXHlWRI7yoFgZG0pkGvKQghevdG1LLf09JzPJQDPA1y/Q66H0jCUqHC2QRdErm86o3IFOKeWXpGTlVdczaby/HPeoSoV438ZNwA1IsCBgMmTYc3afJVu9tnwvWMJMu45TqRKFcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768394565; c=relaxed/simple;
	bh=FyIrMH60JpVUQq8N/l694yqmTnLtex7jySFj1xeLIFA=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=YlO087GaYHU7vboQbsbXPvCfzvcaZjZSckacBTFNpp+mV+KVi8hnx2S2yJDsB124PP4YAexKKZh1WMKTl1nyqE/jfccOHXz4nDaVopKIDQEXq9Nlo0NX3JH6pMLki9n1XaQDeO5nFay+/M3LluhOZqhB2WRuNQ0I7YXOKxV8XaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRbfv42m; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DF3AC19422;
	Wed, 14 Jan 2026 12:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768394565;
	bh=FyIrMH60JpVUQq8N/l694yqmTnLtex7jySFj1xeLIFA=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=vRbfv42mCMALWtxAwa7lEq+qt8+flqk/xCUoa1pDI7avlYFKcTyvE3TlyVdkhz+F5
	 ooQmf01vOqDWu++vjn4/HVgmFetIaeZX7vP9KOWc11puV1Kyg818I21JBT64vBKial
	 hMcpBbE/rLgDuVmpxgnjYHfd0kwcD5VjW7nLFr90bxv0JbuNqxI2QeDaKdFGwJWwCC
	 k6VDCvNTnyyELmK9tgh/MHGpB7TZ9TrZlUoBN+6W4/GDS4UtiLhA9jYEX9j0n6JjWp
	 Awn9XfXV5BR6M0MIJWasGvIQZrC5zQPXgiblHec9IULGjg2bT8tMMdchSQV9l7Af8p
	 NdwOSruCh/ejQ==
Message-ID: <ba8192c7-d452-4ee3-bfc7-eedff746e590@kernel.org>
Date: Wed, 14 Jan 2026 06:42:43 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: socfpga: agilex: add emmc support
To: tzeyee.ng@altera.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <cover.1768378952.git.tzeyee.ng@altera.com>
 <9ed64240436c2dce96db8882f620468dfe5e1981.1768378952.git.tzeyee.ng@altera.com>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <9ed64240436c2dce96db8882f620468dfe5e1981.1768378952.git.tzeyee.ng@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/14/26 03:42, tzeyee.ng@altera.com wrote:
> From: Ng Tze Yee <tzeyee.ng@altera.com>
> 
> The Agilex devkit supports a separate eMMC daughter card. The
> eMMC daughter card replaces the SDMMC slot that is on the default
> daughter card and thus requires a separate board dts file.
> 
> Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
> ---
> Changes in v2:
> - Fix space indentation in socfpga_agilex_socdk_emmc.dts
> - Fix compatible string in socfpga_agilex_socdk_emmc.dts
> - Rephase commit messages for clarity
> ---
>   arch/arm64/boot/dts/intel/Makefile            |   1 +
>   .../dts/intel/socfpga_agilex_socdk_emmc.dts   | 105 ++++++++++++++++++
>   2 files changed, 106 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/intel/socfpga_agilex_socdk_emmc.dts
> 
> diff --git a/arch/arm64/boot/dts/intel/Makefile b/arch/arm64/boot/dts/intel/Makefile
> index a117268267ee..6f4da79725de 100644
> --- a/arch/arm64/boot/dts/intel/Makefile
> +++ b/arch/arm64/boot/dts/intel/Makefile
> @@ -1,6 +1,7 @@
>   # SPDX-License-Identifier: GPL-2.0-only
>   dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += socfpga_agilex_n6000.dtb \
>   				socfpga_agilex_socdk.dtb \
> +				socfpga_agilex_socdk_emmc.dtb \
>   				socfpga_agilex_socdk_nand.dtb \
>   				socfpga_agilex3_socdk.dtb \
>   				socfpga_agilex5_socdk.dtb \
> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_emmc.dts b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_emmc.dts
> new file mode 100644
> index 000000000000..c616c1eb6f1c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_emmc.dts
> @@ -0,0 +1,105 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2026, Intel Corporation

This should be Altera.

> + */
> +#include "socfpga_agilex.dtsi"
> +
> +/ {
> +	model = "SoCFPGA Agilex SoCDK";

Please append "eMMC daughter board" to the model.

> +	compatible = "intel,socfpga-agilex-socdk-emmc", "intel,socfpga-agilex";
> +
> +	aliases {
> +		serial0 = &uart0;
> +		ethernet0 = &gmac0;
> +		ethernet1 = &gmac1;
> +		ethernet2 = &gmac2;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		led0 {
> +			label = "hps_led0";
> +			gpios = <&portb 20 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		led1 {
> +			label = "hps_led1";
> +			gpios = <&portb 19 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		led2 {
> +			label = "hps_led2";
> +			gpios = <&portb 21 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +		/* We expect the bootloader to fill in the reg */
> +		reg = <0 0x80000000 0 0>;
> +	};
> +};
> +
> +&gpio1 {
> +	status = "okay";
> +};
> +
> +&gmac2 {
> +	status = "okay";
> +	/* PHY delays is configured via skew properties */
> +	phy-mode = "rgmii";
> +	phy-handle = <&phy0>;
> +
> +	max-frame-size = <9000>;
> +
> +	mdio0 {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		compatible = "snps,dwmac-mdio";
> +		phy0: ethernet-phy@0 {

This should be ethernet-phy@4

Dinh

