Return-Path: <devicetree+bounces-274869-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKUnOy2Fs2msXQAAu9opvQ
	(envelope-from <devicetree+bounces-274869-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 04:31:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6F827D218
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 04:31:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0188B3017338
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 03:31:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12B7A34C81E;
	Fri, 13 Mar 2026 03:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Ii5yoWw3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m3293.qiye.163.com (mail-m3293.qiye.163.com [220.197.32.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4009B1EA7CE;
	Fri, 13 Mar 2026 03:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.93
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773372713; cv=none; b=tUR8qq7wemz3Lp7pcxRksXx96Fhf5F0gFXorlMB6PpQYLnklEfz5gR6QiDcE0pSxZJnyPHdZJJy2GRmHAlxw7oAiJXBtFjKr2HHXXRNw4GxTBho/3sjziMi9x2iUDHmxd3ZI4D4jvN0qW3RXkUjywaGS7sA56pDPYZJCa2sbky0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773372713; c=relaxed/simple;
	bh=k8MAS9C7BsJjiQb/TRuhIHVTzd8qS3qzyjqzmiPMO8Y=;
	h=Cc:Subject:To:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=t51tl8D2W1lElc2wh3SDrN89cTOwxwxZcsSORVUZliGmfv14dJJ0qJfi8UWvtKrXGWxYeZJQo3x1Q6JEAu/L0RSHsgkn689BRvsYOQUMRjZxNC1VBv+RPda/v+Ry7o31L79SCjR+w1/nmKwYgFVMLW2VhKMenejpGjyfRGyMzrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Ii5yoWw3; arc=none smtp.client-ip=220.197.32.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 36ca46954;
	Fri, 13 Mar 2026 11:16:23 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH v6 2/4] ARM: dts: rockchip: Add support for RV1103B
To: Fabio Estevam <festevam@gmail.com>, heiko@sntech.de
References: <20260313024452.625064-1-festevam@gmail.com>
 <20260313024452.625064-2-festevam@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <19e49e21-81f1-1ba6-e946-94da9efdd66c@rock-chips.com>
Date: Fri, 13 Mar 2026 11:16:22 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260313024452.625064-2-festevam@gmail.com>
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9ce531f8a209cckunmd73d32d670470
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh5NTVYeTxgZH0hOTxlJHUNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Ii5yoWw3mZGBrBH4EGKc2cn7Brd6p3wzdvgdahtHNzybIAV4Iy2u+5mZ9kK/WlmDuHFyQeK/SIcV6FWIZg3koDTRrsbevDcgA90x+2i8q1HFI93VWf0ECZU2GyKTxHNYJogh0yBbr/JrMvFXJKarEzyfh7dzdYAKpFr/lv57wTA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=iqzf+HK52AmiTGxUUo0EEx/IUhQ/Hmm7Tar4trEf9f4=;
	h=date:mime-version:subject:message-id:from;
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274869-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,sntech.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EF6F827D218
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

在 2026/03/13 星期五 10:44, Fabio Estevam 写道:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> Add the initial RV1103B devicetree.
> 
> Based on the 5.10 Rockchip vendor kernel.
> 
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
> Changes since v5:
> - Remove unneeded x32k oscillator.
> - Sort the nodes without address unit.
> - Remove bootph-all.
> - Pass a more specific watchdog compatible.
> 
>   .../boot/dts/rockchip/rv1103b-pinctrl.dtsi    | 816 ++++++++++++++++++
>   arch/arm/boot/dts/rockchip/rv1103b.dtsi       | 249 ++++++
>   2 files changed, 1065 insertions(+)
>   create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi
>   create mode 100644 arch/arm/boot/dts/rockchip/rv1103b.dtsi
> 
> diff --git a/arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi
> new file mode 100644
> index 000000000000..539d4d9510c1
> --- /dev/null
> +++ b/arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi
> @@ -0,0 +1,816 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2024 Rockchip Electronics Co., Ltd.

2026?

> + */
> +
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <arm64/rockchip/rockchip-pinconf.dtsi>
> +
> +&pinctrl {
> +	cam-clk0 {
> +		/omit-if-no-ref/
> +		cam_clk0: cam-clk0 {
> +			rockchip,pins =

...

> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2024 Rockchip Electronics Co., Ltd.

Ditto.

> + */
> +
> +#include <dt-bindings/clock/rockchip,rv1103b-cru.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,boot-mode.h>
> +
> +/ {
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	compatible = "rockchip,rv1103b";
> +
> +	interrupt-parent = <&gic>;
> +
> +	arm-pmu {
> +		compatible = "arm,cortex-a7-pmu";
> +		interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-affinity = <&cpu0>;
> +	};
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		cpu0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a7";
> +			reg = <0x0>;
> +			clocks = <&cru ARMCLK>;
> +		};
> +	};
> +
> +	timer {
> +		compatible = "arm,armv7-timer";
> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_HIGH)>,
> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_HIGH)>;
> +		clock-frequency = <24000000>;
> +	};
> +
> +	xin24m: oscillator-24m {
> +		compatible = "fixed-clock";
> +		clock-frequency = <24000000>;
> +		clock-output-names = "xin24m";
> +		#clock-cells = <0>;
> +	};
> +
> +	pinctrl: pinctrl {
> +		compatible = "rockchip,rv1103b-pinctrl";
> +		rockchip,grf = <&ioc>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges;
> +
> +		gpio0: gpio@20520000 {
> +			compatible = "rockchip,gpio-bank";
> +			reg = <0x20520000 0x200>;
> +			interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cru PCLK_PMU_GPIO0>, <&cru DBCLK_PMU_GPIO0>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +
> +		gpio1: gpio@20d80000 {
> +			compatible = "rockchip,gpio-bank";
> +			reg = <0x20d80000 0x200>;
> +			interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cru PCLK_GPIO1>, <&cru DBCLK_GPIO1>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +
> +		gpio2: gpio@20840000 {
> +			compatible = "rockchip,gpio-bank";
> +			reg = <0x20840000 0x200>;
> +			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cru PCLK_GPIO2>, <&cru DBCLK_GPIO2>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +	};
> +
> +	soc {
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges;
> +
> +		cru: clock-controller@20000000 {
> +			compatible = "rockchip,rv1103b-cru";
> +			reg = <0x20000000 0x81000>;
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +		};
> +
> +		pmu_grf: syscon@20160000 {
> +			compatible = "rockchip,rv1103b-pmu-grf", "syscon", "simple-mfd";
> +			reg = <0x20160000 0x1000>;
> +
> +			reboot_mode: reboot-mode {
> +				compatible = "syscon-reboot-mode";
> +				offset = <0x200>;
> +				mode-normal = <BOOT_NORMAL>;
> +				mode-recovery = <BOOT_RECOVERY>;
> +				mode-bootloader = <BOOT_FASTBOOT>;
> +				mode-loader = <BOOT_BL_DOWNLOAD>;
> +			};
> +		};
> +
> +		ioc: syscon@20170000 {
> +			compatible = "rockchip,rv1103b-ioc", "syscon";
> +			reg = <0x20170000 0x60000>;
> +		};
> +
> +		gic: interrupt-controller@20411000 {
> +			compatible = "arm,gic-400";
> +			interrupt-controller;
> +			#interrupt-cells = <3>;
> +			#address-cells = <0>;
> +
> +			reg = <0x20411000 0x1000>,
> +			      <0x20412000 0x2000>,
> +			      <0x20414000 0x2000>,
> +			      <0x20416000 0x2000>;
> +			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_HIGH)>;
> +		};
> +
> +		uart0: serial@20540000 {
> +			compatible = "rockchip,rv1103b-uart", "snps,dw-apb-uart";
> +			reg = <0x20540000 0x100>;
> +			interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
> +			reg-shift = <2>;
> +			reg-io-width = <4>;
> +			clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
> +			clock-names = "baudclk", "apb_pclk";
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&uart0m0_xfer>;
> +			status = "disabled";
> +		};
> +
> +		sdmmc1: mmc@20650000 {
> +			compatible = "rockchip,rv1103b-dw-mshc", "rockchip,rk3288-dw-mshc";
> +			reg = <0x20650000 0x4000>;
> +			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cru HCLK_SDMMC1>, <&cru CCLK_SDMMC1>;
> +			clock-names = "biu", "ciu";
> +			fifo-depth = <0x100>;
> +			max-frequency = <150000000>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&sdmmc1_clk &sdmmc1_cmd &sdmmc1_bus4>;
> +			status = "disabled";
> +		};
> +
> +		uart1: serial@20870000 {
> +			compatible = "rockchip,rv1103b-uart", "snps,dw-apb-uart";
> +			reg = <0x20870000 0x100>;
> +			interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
> +			reg-shift = <2>;
> +			reg-io-width = <4>;
> +			clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
> +			clock-names = "baudclk", "apb_pclk";
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&uart1m0_xfer>;
> +			status = "disabled";
> +		};
> +
> +		uart2: serial@20880000 {
> +			compatible = "rockchip,rv1103b-uart", "snps,dw-apb-uart";
> +			reg = <0x20880000 0x100>;
> +			interrupts = <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
> +			reg-shift = <2>;
> +			reg-io-width = <4>;
> +			clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
> +			clock-names = "baudclk", "apb_pclk";
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&uart2m0_xfer>;
> +			status = "disabled";
> +		};
> +
> +		wdt: watchdog@208d0000 {
> +			compatible = "rockchip,rv1103b-wdt", "snps,dw-wdt";
> +			reg = <0x208d0000 0x100>;
> +			clocks = <&cru TCLK_WDT_NS>, <&cru PCLK_WDT_NS>;
> +			clock-names = "tclk", "pclk";
> +			interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
> +			status = "disabled";
> +		};
> +
> +		sdmmc0: mmc@20d20000 {
> +			compatible = "rockchip,rv1103b-dw-mshc", "rockchip,rk3288-dw-mshc";

This's a mistake. RV1103B is using the same IP version with RK3576.
So no ciu-drive and ciu-sample clks are needed as it uses internal phase
block. Here you should use "rockchip,rv1103b-dw-mshc", 
"rockchip,rk3576-dw-mshc".

> +			reg = <0x20d20000 0x4000>;
> +			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cru HCLK_SDMMC0>, <&cru CCLK_SDMMC0>;
> +			clock-names = "biu", "ciu";
> +			fifo-depth = <0x100>;
> +			max-frequency = <150000000>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&sdmmc0_det &sdmmc0_clk &sdmmc0_cmd &sdmmc0_bus4>;
> +			status = "disabled";
> +		};
> +
> +		emmc: mmc@20d30000 {
> +			compatible = "rockchip,rv1103b-dw-mshc", "rockchip,rk3288-dw-mshc";

Ditto

> +			reg = <0x20d30000 0x4000>;
> +			interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cru HCLK_EMMC>, <&cru CCLK_EMMC>;
> +			clock-names = "biu", "ciu";
> +			fifo-depth = <0x100>;
> +			max-frequency = <150000000>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus4>;
> +			status = "disabled";
> +		};
> +
> +		fspi0: spi@20d40000 {
> +			compatible = "rockchip,sfc";
> +			reg = <0x20d40000 0x4000>;
> +			interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cru SCLK_SFC_2X>, <&cru HCLK_SFC>;
> +			clock-names = "clk_sfc", "hclk_sfc";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&fspi_bus4 &fspi_cs0 &fspi_clk>;
> +			status = "disabled";
> +		};
> +
> +		system_sram: sram@210f6000 {
> +			compatible = "mmio-sram";
> +			reg = <0x210f6000 0x8000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges = <0 0x210f6000 0x8000>;
> +		};
> +	};
> +};
> +
> +#include "rv1103b-pinctrl.dtsi"
> 

