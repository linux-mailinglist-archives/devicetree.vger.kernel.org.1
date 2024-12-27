Return-Path: <devicetree+bounces-134269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 244419FD197
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 08:48:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D2FA163E3A
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 07:48:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E20D5D8F0;
	Fri, 27 Dec 2024 07:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDpM7o18"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541831876;
	Fri, 27 Dec 2024 07:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735285692; cv=none; b=l3pB+QsrkXP8mgM6zu/3hsMkMLwjKmRlu6+UMx+FLdS+8LAtkvW6JeGIZblg08Kb3eXmCMFIFALJCxSInJR1pxxZGVOkgxKCHxtx/nOejbLGQsVw6HucE54Cb4cnJgbq1eSIqQ0DZQg3gm94js4lzrFZ6U9gV8xmTn9NoJea6hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735285692; c=relaxed/simple;
	bh=0qX+Xq7p6trQLZOKbCeFhjW+yBSId3LVR0sShRdPdnM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dRxRyZ8xX8kQqk5DzinA858jwvLxSYj/xF/H4b54p0GbIikdE6uMBMo7BOOQ/q2aySkIjPAN5qGu0tBFt/8RZzF6Th5JFWjsygOyHw0+FunP+nqM6c+2qYhAAuqWG9n3caCyizK9+AZVMHbKmCtrWKaL2T90aQRMAhRK6jsLiqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDpM7o18; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53BE1C4CED0;
	Fri, 27 Dec 2024 07:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735285692;
	bh=0qX+Xq7p6trQLZOKbCeFhjW+yBSId3LVR0sShRdPdnM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GDpM7o181v2HAQtbxH8lCmTLWg4Qyg8Rv3+SjfgXtcFF7Wr+dkrUQOkJZxTp/imH0
	 EGxPapJfXLMr+Ui3My6HJKKZwSJShjBArMYxO5qN2pwDwRSpglCCQGDIokyp2TveND
	 dpBDKKCBJvP7RLDNMt6piqnM7mRtd0CU1mPCeGafdoA6n7oL4JPSLl1ou4u9CFBPvU
	 EwnfQqCXhKPI5+o1XHNjpRduordnPV/5w6aZrEwUCeB4MUW0h6H9sqGiKREKekrKOK
	 kUX+6mnOJvbGK4iGtfXZGOPj6yggizE6iO4APr48lQZ9ZmQDi9o3HNc1Qqt51SFxxA
	 O+u4rqmA2UM2g==
Date: Fri, 27 Dec 2024 08:48:08 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	Finley Xiao <finley.xiao@rock-chips.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 16/17] arm64: dts: rockchip: add core dtsi for RK3562
 Soc
Message-ID: <nfvn7agwci2ilcgmz6zhioelstk6wuzkj4ptwjxrrizfkrlq2a@tlnuluqtokt2>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <20241224094920.3821861-17-kever.yang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241224094920.3821861-17-kever.yang@rock-chips.com>

On Tue, Dec 24, 2024 at 05:49:19PM +0800, Kever Yang wrote:
> +#include <dt-bindings/clock/rockchip,rk3562-cru.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/phy/phy.h>
> +#include <dt-bindings/power/rockchip,rk3562-power.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/reset/rockchip,rk3562-cru.h>
> +#include <dt-bindings/soc/rockchip,boot-mode.h>
> +#include <dt-bindings/thermal/thermal.h>
> +
> +/ {
> +	compatible = "rockchip,rk3562";
> +
> +	interrupt-parent = <&gic>;
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	aliases {
> +		ethernet0 = &gmac0;
> +		ethernet1 = &gmac1;
> +		gpio0 = &gpio0;
> +		gpio1 = &gpio1;
> +		gpio2 = &gpio2;
> +		gpio3 = &gpio3;
> +		gpio4 = &gpio4;
> +		i2c0 = &i2c0;
> +		i2c1 = &i2c1;
> +		i2c2 = &i2c2;
> +		i2c3 = &i2c3;
> +		i2c4 = &i2c4;
> +		i2c5 = &i2c5;

No, drop i2c aliases. Not SoC specific.

> +		serial0 = &uart0;
> +		serial1 = &uart1;
> +		serial2 = &uart2;
> +		serial3 = &uart3;
> +		serial4 = &uart4;
> +		serial5 = &uart5;
> +		serial6 = &uart6;
> +		serial7 = &uart7;
> +		serial8 = &uart8;
> +		serial9 = &uart9;

No, drop all above.

> +		spi0 = &spi0;
> +		spi1 = &spi1;
> +		spi2 = &spi2;
> +		spi3 = &sfc;

Drop all above.

> +	};


...

> +	cpus {
> +		#address-cells = <2>;
> +		#size-cells = <0>;
> +
> +		cpu0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			reg = <0x0 0x0>;
> +			enable-method = "psci";
> +			clocks = <&scmi_clk ARMCLK>;
> +			cpu-idle-states = <&CPU_SLEEP>;
> +			operating-points-v2 = <&cpu0_opp_table>;
> +			#cooling-cells = <2>;
> +			dynamic-power-coefficient = <138>;
> +		};

Keep consistent style. There is always line break between nodes.


> +		cpu1: cpu@1 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			reg = <0x0 0x1>;
> +			enable-method = "psci";
> +			clocks = <&scmi_clk ARMCLK>;
> +			cpu-idle-states = <&CPU_SLEEP>;
> +			operating-points-v2 = <&cpu0_opp_table>;
> +			#cooling-cells = <2>;
> +			dynamic-power-coefficient = <138>;
> +		};
> +		cpu2: cpu@2 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			reg = <0x0 0x2>;
> +			enable-method = "psci";
> +			clocks = <&scmi_clk ARMCLK>;
> +			cpu-idle-states = <&CPU_SLEEP>;
> +			operating-points-v2 = <&cpu0_opp_table>;
> +			#cooling-cells = <2>;
> +			dynamic-power-coefficient = <138>;
> +		};
> +		cpu3: cpu@3 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			reg = <0x0 0x3>;
> +			enable-method = "psci";
> +			clocks = <&scmi_clk ARMCLK>;
> +			cpu-idle-states = <&CPU_SLEEP>;
> +			operating-points-v2 = <&cpu0_opp_table>;
> +			#cooling-cells = <2>;
> +			dynamic-power-coefficient = <138>;
> +		};
> +
> +		idle-states {
> +			entry-method = "psci";
> +			CPU_SLEEP: cpu-sleep {
> +				compatible = "arm,idle-state";
> +				local-timer-stop;
> +				arm,psci-suspend-param = <0x0010000>;
> +				entry-latency-us = <120>;
> +				exit-latency-us = <250>;
> +				min-residency-us = <900>;
> +			};
> +		};
> +	};
> +
> +	cpu0_opp_table: opp-table-cpu0 {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		opp-408000000 {
> +			opp-hz = /bits/ 64 <408000000>;
> +			opp-microvolt = <825000 825000 1150000>;
> +			clock-latency-ns = <40000>;
> +			opp-suspend;
> +		};

...

> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
> +	};
> +
> +	scmi_shmem: scmi-shmem@10f000 {


Where is the soc node?

> +		compatible = "arm,scmi-shmem";
> +		reg = <0x0 0x0010f000 0x0 0x100>;
> +	};
> +
> +	usbdrd_dwc3: usb@fe500000 {
> +		compatible = "rockchip,rk3562-dwc3", "snps,dwc3";
> +		reg = <0x0 0xfe500000 0x0 0x400000>;
> +		clocks = <&cru CLK_USB3OTG_REF>, <&cru CLK_USB3OTG_SUSPEND>,
> +			 <&cru ACLK_USB3OTG>, <&cru PCLK_PHP>;
> +		clock-names = "ref_clk", "suspend_clk", "bus_clk", "pipe";
> +		interrupts = <GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>;
> +		power-domains = <&power RK3562_PD_PHP>;
> +		resets = <&cru SRST_USB3OTG>;
> +		dr_mode = "otg";
> +		phys = <&u2phy_otg>;
> +		phy-names = "usb2-phy";
> +		phy_type = "utmi_wide";
> +		snps,dis_enblslpm_quirk;
> +		snps,dis-u1-entry-quirk;
> +		snps,dis-u2-entry-quirk;
> +		snps,dis-u2-freeclk-exists-quirk;
> +		snps,dis-del-phy-power-chg-quirk;
> +		snps,dis-tx-ipgap-linecheck-quirk;
> +		snps,dis_rxdet_inp3_quirk;
> +		snps,parkmode-disable-hs-quirk;
> +		snps,parkmode-disable-ss-quirk;
> +		status = "disabled";
> +	};

....

> +		snps,axi-config = <&gmac0_stmmac_axi_setup>;
> +		snps,mtl-rx-config = <&gmac0_mtl_rx_setup>;
> +		snps,mtl-tx-config = <&gmac0_mtl_tx_setup>;
> +		status = "disabled";
> +v
> +		mdio0: mdio {
> +			compatible = "snps,dwmac-mdio";
> +			#address-cells = <0x1>;
> +			#size-cells = <0x0>;
> +		};
> +
> +		gmac0_stmmac_axi_setup: stmmac-axi-config {
> +			snps,wr_osr_lmt = <4>;
> +			snps,rd_osr_lmt = <8>;
> +			snps,blen = <0 0 0 0 16 8 4>;
> +		};
> +
> +		gmac0_mtl_rx_setup: rx-queues-config {
> +			snps,rx-queues-to-use = <1>;
> +			queue0 {};
> +		};
> +
> +		gmac0_mtl_tx_setup: tx-queues-config {
> +			snps,tx-queues-to-use = <1>;
> +			queue0 {};
> +		};
> +	};
> +
> +	saradc1: saradc@ffaa0000 {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +		compatible = "rockchip,rk3562-saradc";
> +		reg = <0x0 0xffaa0000 0x0 0x100>;
> +		interrupts = <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>;
> +		#io-channel-cells = <1>;
> +		clocks = <&cru CLK_SARADC_VCCIO156>, <&cru PCLK_SARADC_VCCIO156>;
> +		clock-names = "saradc", "apb_pclk";
> +		resets = <&cru SRST_P_SARADC_VCCIO156>;
> +		reset-names = "saradc-apb";
> +		status = "disabled";
> +	};
> +
> +	gmac1: ethernet@ffb30000 {
> +		compatible = "rockchip,rk3562-gmac", "snps,dwmac-4.20a";
> +		reg = <0x0 0xffb30000 0x0 0x10000>;
> +		interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "macirq", "eth_wake_irq";
> +		rockchip,grf = <&sys_grf>;
> +		rockchip,php-grf = <&ioc_grf>;
> +		clocks = <&cru CLK_MAC100_50M_MATRIX>, <&cru CLK_MAC100_50M_MATRIX>,
> +			 <&cru PCLK_MAC100>, <&cru ACLK_MAC100>;
> +		clock-names = "stmmaceth", "clk_mac_ref",
> +			      "pclk_mac", "aclk_mac";
> +		resets = <&cru SRST_A_MAC100>;
> +		reset-names = "stmmaceth";
> +		status = "disabled";
> +
> +		mdio1: mdio {
> +			compatible = "snps,dwmac-mdio";
> +			#address-cells = <0x1>;
> +			#size-cells = <0x0>;
> +		};
> +	};
> +
> +	pinctrl: pinctrl {


MMIO devices are not outside of soc.

> +		compatible = "rockchip,rk3562-pinctrl";
> +		rockchip,grf = <&ioc_grf>;
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		gpio0: gpio@ff260000 {


Best regards,
Krzysztof


