Return-Path: <devicetree+bounces-136176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 95515A041D4
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 15:12:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1288F166139
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:10:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07F751F5420;
	Tue,  7 Jan 2025 14:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPQo+dry"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D327B1F2C45;
	Tue,  7 Jan 2025 14:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736258666; cv=none; b=N9u7QLT6LNF+OP6ERp4xSrvh7D5zUKYzXdTDJEhuEMM1M4sy68OFrt83nRQ2MtuFSAEHJsy2illcc/N5+m1898zbZrp4OvmptPeDT7wWFMP0Xkf+bQViTvjULWWR+K7KKloXwQq+X6GBaOE+X/XhPmqRxvlmfuhgj3e4SnCjr/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736258666; c=relaxed/simple;
	bh=zpLPFk4V34ySX+QVzjn/D76/5f0os4lfSRGEnv0cZmo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kMlHeMSJgh7I/SNHv21iooZM8TlxUXp1fchuyXlLaqLnUoArOvKENykS5nsdZTurjnCoCH8PACFza7kZhlkfcMeOGoB+4oZrmzE8UfRHLm/hRBsmZFqG3KDO1BV0FDs7K0yMeqegz+/HNh8lKHkbMdmW0EhBJ+Ttfnz16mRZS0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPQo+dry; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71D84C4CED6;
	Tue,  7 Jan 2025 14:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736258666;
	bh=zpLPFk4V34ySX+QVzjn/D76/5f0os4lfSRGEnv0cZmo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=cPQo+dryUksVlvwsThdiPNcOZjdgy2GBgF3ugnnXcIkb3I+4cu5UyoC3C0sRbzziD
	 rgfw+OHTNySl15kiH2dUtB8Bcxd4mBdGfn4c4IFS4eZnywBoDaanhMCg3C109EA3Ef
	 +V1DgZCfPEx+TfI6tIcP2v5AkFXkivpV+nDMPSmWd2sczNoWVRj7BNsaSJRLD2Rc8s
	 3RCD44TYL5VjhWXrvz4s4Oyw2ejFXNXoHTULojlXW4qy+A5O1FNbn2IeVOQXIlyo0X
	 ogdQk3zA1gQJt67myyI8Tht5FBrpkHs3340hAbGhNqfWgcTKBlUhahZT5fKbwEWpOg
	 yQ6bEymwnXo7g==
Message-ID: <dcbda522-eeed-43a9-ab34-a41e5239c6e8@kernel.org>
Date: Tue, 7 Jan 2025 16:04:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: ti: k3-am68-sk*: Add bootph-all property
 to necessary nodes to enable Ethernet boot
To: Chintan Vankar <c-vankar@ti.com>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Tero Kristo <kristo@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Nishanth Menon <nm@ti.com>
Cc: srk@ti.com, s-vadapalli@ti.com, danishanwar@ti.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20250106123122.3531845-1-c-vankar@ti.com>
 <20250106123122.3531845-2-c-vankar@ti.com>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20250106123122.3531845-2-c-vankar@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 06/01/2025 14:31, Chintan Vankar wrote:
> Ethernet boot requires CPSW nodes to be present starting from R5 SPL
> stage. Add bootph-all property to necessary nodes for CPSW to enable those
> nodes during SPL stage along with later boot stages for AM68-SK.
> 
> Signed-off-by: Chintan Vankar <c-vankar@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts | 5 +++++
>  arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi | 2 ++
>  2 files changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts b/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
> index 11522b36e0ce..f1f8b228926d 100644
> --- a/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
> @@ -333,6 +333,7 @@ J721S2_WKUP_IOPAD(0x008, PIN_OUTPUT, 0) /* (E22) MCU_RGMII1_TD3 */
>  			J721S2_WKUP_IOPAD(0x018, PIN_OUTPUT, 0) /* (F21) MCU_RGMII1_TXC */
>  			J721S2_WKUP_IOPAD(0x000, PIN_OUTPUT, 0) /* (F22) MCU_RGMII1_TX_CTL */
>  		>;
> +		bootph-all;

Shouldn't bootph-all be the first property in the DT nodes?

>  	};
>  
>  	mcu_mdio_pins_default: mcu-mdio-default-pins {
> @@ -340,6 +341,7 @@ mcu_mdio_pins_default: mcu-mdio-default-pins {
>  			J721S2_WKUP_IOPAD(0x034, PIN_OUTPUT, 0) /* (A21) MCU_MDIO0_MDC */
>  			J721S2_WKUP_IOPAD(0x030, PIN_INPUT, 0) /* (A22) MCU_MDIO0_MDIO */
>  		>;
> +		bootph-all;
>  	};
>  
>  	mcu_mcan0_pins_default: mcu-mcan0-default-pins {
> @@ -610,11 +612,13 @@ &main_sdhci1 {
>  &mcu_cpsw {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&mcu_cpsw_pins_default>, <&mcu_mdio_pins_default>;
> +	bootph-all;
>  };
>  
>  &davinci_mdio {
>  	phy0: ethernet-phy@0 {
>  		reg = <0>;
> +		bootph-all;
>  		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
>  		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
>  		ti,min-output-impedance;
> @@ -624,6 +628,7 @@ phy0: ethernet-phy@0 {
>  &cpsw_port1 {
>  	phy-mode = "rgmii-rxid";
>  	phy-handle = <&phy0>;
> +	bootph-all;
>  };
>  
>  &mcu_mcan0 {
> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> index bc31266126d0..cfae226d3c63 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
> @@ -154,12 +154,14 @@ mcu_conf: bus@40f00000 {
>  		cpsw_mac_syscon: ethernet-mac-syscon@200 {
>  			compatible = "ti,am62p-cpsw-mac-efuse", "syscon";
>  			reg = <0x200 0x8>;
> +			bootph-all;
>  		};
>  
>  		phy_gmii_sel: phy@4040 {
>  			compatible = "ti,am654-phy-gmii-sel";
>  			reg = <0x4040 0x4>;
>  			#phy-cells = <1>;
> +			bootph-all;
>  		};
>  
>  	};

-- 
cheers,
-roger


