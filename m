Return-Path: <devicetree+bounces-136168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 781ABA041B3
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 15:09:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C4165165F18
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:07:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8D7D1F429E;
	Tue,  7 Jan 2025 14:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYtQjzn3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296CC1F2368;
	Tue,  7 Jan 2025 14:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736258567; cv=none; b=kW3tqWGgcbAFfuJ0StFoN+lPBUryKERZ2+QpW81xllKqYtWOMX7CFk2za2Ll6M6Kwnu/+NTWQvJ/rJ7UGTRktS1um3Jid7yHaabNMUOrtJl3URZpEZldPdmODQnXAiYw4b9Y5XMCp08nmLouzSoe1xzPhRGKomQiPNyClo7C/V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736258567; c=relaxed/simple;
	bh=1y1trmqo4VZPTWM5xAydMhMQsybEilrtQDjuW11FTX4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EzBxP1UX3nzY1pi2imAqGPBcUdtinbWX1SK6+902VY6mpCtQHa+ActK3HMAaYdp+Aqj7vU0yMT7A8cArxAukcTma7BKDefp1f5pIuLtU+3OmZs2hulWUS5GCN6hzpJw4zWcekbNupcBFktzNeoGloxf2U5xsibC401PGJi4u+r4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYtQjzn3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9F02C4CEDD;
	Tue,  7 Jan 2025 14:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736258565;
	bh=1y1trmqo4VZPTWM5xAydMhMQsybEilrtQDjuW11FTX4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mYtQjzn3Kr0oMbufGyVBS0J8tFdem8M6ETYf8k+gYZ9WSTcZ0ACMT4yTVBdIlHIpt
	 JvK93tMzH50rvi8BNPyszkS07D04AzXTiNPGbmefbrL5dkKGyazQWLRS+rjJOVayFS
	 LtXS6kYgsmb480EJpSTO/AcZSRCQpnOcU0tgcnybfU4jowvV3Zmqj/IA43v5A11n1L
	 CGRDW9o55qVRSPW4WkEqBTaLgCdDoc65HtdUgJTVx3twmuA7mp3buRMHkLgE5vcyCQ
	 Y+hXNQX90Z7AnaZhAZqDf2rjYeoR5rT1niXxcMHsbCtaA8hqp4G4uXQXhK9TpCU0VX
	 eWuA1F4ePxXrQ==
Message-ID: <f4a7e47c-f843-43cd-aac2-a98b8153a535@kernel.org>
Date: Tue, 7 Jan 2025 16:02:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: ti: k3-am62p5*/k3-j722s: Add bootph-all
 property to necessary nodes to enable Ethernet boot
To: Chintan Vankar <c-vankar@ti.com>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Tero Kristo <kristo@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Nishanth Menon <nm@ti.com>
Cc: srk@ti.com, s-vadapalli@ti.com, danishanwar@ti.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20250106123122.3531845-1-c-vankar@ti.com>
 <20250106123122.3531845-3-c-vankar@ti.com>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20250106123122.3531845-3-c-vankar@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 06/01/2025 14:31, Chintan Vankar wrote:
> Ethernet boot requires CPSW nodes to be present starting from R5 SPL
> stage. Add bootph-all property to necessary nodes for CPSW to enable those
> nodes during SPL stage along with later boot stages for AM62p-SK and
> J722s.
> 
> Signed-off-by: Chintan Vankar <c-vankar@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi | 3 +++
>  arch/arm64/boot/dts/ti/k3-am62p5-sk.dts                | 2 ++
>  arch/arm64/boot/dts/ti/k3-j722s-evm.dts                | 3 +++
>  3 files changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
> index 6e3beb5c2e01..96ddc5c17991 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
> @@ -50,6 +50,7 @@ phy_gmii_sel: phy@4044 {
>  			compatible = "ti,am654-phy-gmii-sel";
>  			reg = <0x4044 0x8>;
>  			#phy-cells = <1>;
> +			bootph-all;


Shouldn't bootph-all be the first property in the DT node?

>  		};
>  
>  		epwm_tbclk: clock-controller@4130 {
> @@ -714,6 +715,7 @@ ethernet-ports {
>  			#size-cells = <0>;
>  
>  			cpsw_port1: port@1 {
> +				bootph-all;
>  				reg = <1>;
>  				ti,mac-only;
>  				label = "port1";
> @@ -742,6 +744,7 @@ cpsw3g_mdio: mdio@f00 {
>  			clock-names = "fck";
>  			bus_freq = <1000000>;
>  			status = "disabled";
> +			bootph-all;
>  		};
>  
>  		cpts@3d000 {
> diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
> index ad71d2f27f53..28b08eb79da3 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
> @@ -226,6 +226,7 @@ main_mdio1_pins_default: main-mdio1-default-pins {
>  			AM62PX_IOPAD(0x0160, PIN_OUTPUT, 0) /* (F17) MDIO0_MDC */
>  			AM62PX_IOPAD(0x015c, PIN_INPUT, 0) /* (F16) MDIO0_MDIO */
>  		>;
> +		bootph-all;
>  	};
>  
>  	main_mmc1_pins_default: main-mmc1-default-pins {
> @@ -495,6 +496,7 @@ &cpsw3g_mdio {
>  
>  	cpsw3g_phy0: ethernet-phy@0 {
>  		reg = <0>;
> +		bootph-all;
>  		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
>  		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
>  		ti,min-output-impedance;
> diff --git a/arch/arm64/boot/dts/ti/k3-j722s-evm.dts b/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
> index 796287c76b69..1785c9848664 100644
> --- a/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
> +++ b/arch/arm64/boot/dts/ti/k3-j722s-evm.dts
> @@ -303,6 +303,7 @@ mdio_pins_default: mdio-default-pins {
>  			J722S_IOPAD(0x0160, PIN_OUTPUT, 0) /* (AC24) MDIO0_MDC */
>  			J722S_IOPAD(0x015c, PIN_INPUT, 0) /* (AD25) MDIO0_MDIO */
>  		>;
> +		bootph-all;
>  	};
>  
>  	ospi0_pins_default: ospi0-default-pins {
> @@ -337,6 +338,7 @@ J722S_IOPAD(0x0140, PIN_OUTPUT, 0) /* (AF24) RGMII1_TD3 */
>  			J722S_IOPAD(0x0130, PIN_OUTPUT, 0) /* (AG26) RGMII1_TXC */
>  			J722S_IOPAD(0x012c, PIN_OUTPUT, 0) /* (AF25) RGMII1_TX_CTL */
>  		>;
> +		bootph-all;
>  	};
>  
>  	main_usb1_pins_default: main-usb1-default-pins {
> @@ -374,6 +376,7 @@ &cpsw3g_mdio {
>  
>  	cpsw3g_phy0: ethernet-phy@0 {
>  		reg = <0>;
> +		bootph-all;
>  		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
>  		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
>  		ti,min-output-impedance;

-- 
cheers,
-roger


