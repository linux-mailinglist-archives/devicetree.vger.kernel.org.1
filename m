Return-Path: <devicetree+bounces-264474-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJOZJoJli2kMUQAAu9opvQ
	(envelope-from <devicetree+bounces-264474-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 18:06:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C6311D8BC
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 18:06:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 76785303FAE2
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 17:05:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52950327BFB;
	Tue, 10 Feb 2026 17:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="wAl6ZGw1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F71C32720E
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 17:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770743142; cv=none; b=ie66Tj2d+S2Uf/JGI9RySSUMAM3fvWg7Xx55OPf0Zcu4CLPc33joA7uOoqtbflqk+e5ZiMuYvhddJFqo4pYgNHKeGcJje9RvXeMLr8xgOTjU9qBIWD3md3t1r++39oD+9AwzxH460l5qCkoDwzkQ3XiYPJ9bvXWyZoWll5RDHGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770743142; c=relaxed/simple;
	bh=Bppg3oQfHGl7zpAnkBUPswW58FFQ5FTA+ZR/Bo+XWe0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RD3jLEXgMDiMrMIgpB8DxpGFqhgz0hh6IG++R53aCWkhaU+BRKqyJi4Iq+JU+BY/Xl1cwwegZ4aKE7UlagqxlS2qLUNBUghsvSz0ZV+VDHDr+TZjnYzkKnkn2kGMm/90Ev6H3adTPvS/pVOtSakSotM/X9G8HYbhXGoe5vHY6rY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=wAl6ZGw1; arc=none smtp.client-ip=121.127.44.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1770743139;
 bh=9MVkB8lrQ34cNgWh1QfFiJOeYfoOLDuP+neEVhfWzFg=;
 b=wAl6ZGw1vdb/n3rOzDXKcRf9RYcYX1LUdsU4UAUXTt82maywGFjAL2Zb9efVGPmQ2I8gh9iWh
 t3sGK1t17SRGaMEXixsYpS5ud3AxyCFTNjRUAb9DuAQcrWSmsSZ5K0jIc03ZcxMZfBCnKy0/ehX
 wuXx87ekNYTjskrYilDQ7xuKwv6P4DI8eKLXHr53nBdTw9DZvz+ak6HphKITFBjTmjUwM2ISnry
 WqfRT7KNCG5+cYJ+uF70vZPt9j3j5LMsddiIjhP64spEisHxSF5ZkQuBnWXqeUFJURAqnsuw++O
 ibsNitIUkUhyin7h7AioPlPtA2I9zdFBbQpsTfcSGLEg==
X-Forward-Email-ID: 698b6562e8cd0604c09e962b
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.6.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <5952b842-2ff5-4843-bf40-72364e2e4bec@kwiboo.se>
Date: Tue, 10 Feb 2026 18:05:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] ARM: dts: rockchip: Add support for RV1103B
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Fabio Estevam <festevam@nabladev.com>
References: <20260210144845.317048-1-festevam@gmail.com>
 <20260210144845.317048-2-festevam@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260210144845.317048-2-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kwiboo.se,quarantine];
	R_DKIM_ALLOW(-0.20)[kwiboo.se:s=fe-e1b5cab7be];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264474-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonas@kwiboo.se,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kwiboo.se:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 19C6311D8BC
X-Rspamd-Action: no action

Hi Fabio,

On 2/10/2026 3:48 PM, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> Add the initial RV1103B devicetree.
> 
> Based on the 5.10 Rockchip vendor kernel.
> 
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
> The <dt-bindings/clock/rockchip,rv1103b-cru.h> header comes from another
> series:
> 
> https://lore.kernel.org/linux-devicetree/20260210022620.172570-1-festevam@gmail.com/
> 
> Maybe Heiko could apply the clock series as well?
> 
> Changes since v1:
> - Pass /omit-if-no-ref/
> - Removed redundant _pins suffix.
> - Dd not merge all GRF region.
> - Removed unnecessary clock rate from the UART nodes.
> - Removed "normal" and "idle" pinctrl entries and used "default" instead.
> - Added missing default pinctrl entries for emmc, sd and fspi.
> - Removed gpio-ranges.
>  
>  .../boot/dts/rockchip/rv1103b-pinctrl.dtsi    | 962 ++++++++++++++++++
>  arch/arm/boot/dts/rockchip/rv1103b.dtsi       | 250 +++++
>  2 files changed, 1212 insertions(+)
>  create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi
>  create mode 100644 arch/arm/boot/dts/rockchip/rv1103b.dtsi
> 
> diff --git a/arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi
> new file mode 100644
> index 000000000000..d859df6b6a97
> --- /dev/null
> +++ b/arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi
> @@ -0,0 +1,962 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2024 Rockchip Electronics Co., Ltd.
> + */
> +
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <arm64/rockchip/rockchip-pinconf.dtsi>
> +
> +/*
> + * This file is auto generated by pin2dts tool, please keep these code
> + * by adding changes at end of this file.
> + */
> +&pinctrl {
> +	cam_clk0 {

Node names should not contain _ (underscore), same for more pinctrl
groups.

> +		/omit-if-no-ref/
> +		cam_clk0: cam-clk0 {
> +			rockchip,pins =
> +				/* cam_clk0_out */
> +				<1 RK_PB5 1 &pcfg_pull_none>;
> +		};
> +	};

[snip]

> +};
> +
> +/*
> + * This part is edited manually.

Why not merged with above? What is the pin2dts tool, is it some vendor
script/tool?

> + */
> +&pinctrl {
> +	sdmmc0 {
> +		/omit-if-no-ref/
> +		sdmmc0_bus1: sdmmc0-bus1 {
> +			rockchip,pins =
> +				/* sdmmc0_d0 */
> +				<1 RK_PB0 1 &pcfg_pull_up_drv_level_2>;
> +		};
> +	};
> +
> +	sdmmc1 {
> +		sdmmc1_bus1: sdmmc1-bus1 {
> +			rockchip,pins =
> +				/* sdmmc1_d0 */
> +				<2 RK_PA1 1 &pcfg_pull_up_drv_level_2>;
> +		};
> +	};
> +};
> diff --git a/arch/arm/boot/dts/rockchip/rv1103b.dtsi b/arch/arm/boot/dts/rockchip/rv1103b.dtsi
> new file mode 100644
> index 000000000000..c3de700ade46
> --- /dev/null
> +++ b/arch/arm/boot/dts/rockchip/rv1103b.dtsi
> @@ -0,0 +1,250 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2024 Rockchip Electronics Co., Ltd.
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
> +	xin32k: oscillator-32k {
> +		compatible = "fixed-clock";
> +		clock-frequency = <32768>;
> +		clock-output-names = "xin32k";
> +		#clock-cells = <0>;
> +	};
> +
> +	xin24m: oscillator-24m {
> +		compatible = "fixed-clock";
> +		clock-frequency = <24000000>;
> +		clock-output-names = "xin24m";
> +		#clock-cells = <0>;
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
> +	cru: clock-controller@20000000 {
> +		compatible = "rockchip,rv1103b-cru";
> +		reg = <0x20000000 0x81000>;
> +		#clock-cells = <1>;
> +		#reset-cells = <1>;
> +		bootph-all;
> +	};

As mentioned in prior review, this and other nodes should be grouped
under a soc node, please see e.g. rk3528, rk3562 or rk3576.dtsi.

> +	pmu_grf: syscon@20160000 {
> +		compatible = "rockchip,rv1103b-pmu-grf", "syscon", "simple-mfd";
> +		reg = <0x20160000 0x1000>;
> +
> +		reboot_mode: reboot-mode {
> +			compatible = "syscon-reboot-mode";
> +			offset = <0x200>;
> +			mode-normal = <BOOT_NORMAL>;
> +			mode-recovery = <BOOT_RECOVERY>;
> +			mode-bootloader = <BOOT_FASTBOOT>;
> +			mode-loader = <BOOT_BL_DOWNLOAD>;
> +		};
> +	};
> +
> +	ioc: syscon@20170000 {
> +		compatible = "rockchip,rv1103b-ioc", "syscon";
> +		reg = <0x20170000 0x60000>;
> +	};
> +
> +	gic: interrupt-controller@20411000 {
> +		compatible = "arm,gic-400";
> +		interrupt-controller;
> +		#interrupt-cells = <3>;
> +		#address-cells = <0>;
> +
> +		reg = <0x20411000 0x1000>,
> +		      <0x20412000 0x2000>,
> +		      <0x20414000 0x2000>,
> +		      <0x20416000 0x2000>;
> +		interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_HIGH)>;
> +	};
> +
> +	uart0: serial@20540000 {
> +		compatible = "rockchip,rv1103b-uart", "snps,dw-apb-uart";
> +		reg = <0x20540000 0x100>;
> +		interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
> +		reg-shift = <2>;
> +		reg-io-width = <4>;
> +		clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
> +		clock-names = "baudclk", "apb_pclk";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&uart0m0_xfer>;
> +		status = "disabled";
> +	};
> +
> +	sdmmc1: mmc@20650000 {
> +		compatible = "rockchip,rv1103b-dw-mshc", "rockchip,rk3288-dw-mshc";
> +		reg = <0x20650000 0x4000>;
> +		interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru HCLK_SDMMC1>, <&cru CCLK_SDMMC1>;
> +		clock-names = "biu", "ciu";
> +		fifo-depth = <0x100>;
> +		max-frequency = <150000000>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&sdmmc1_clk &sdmmc1_cmd &sdmmc1_bus4>;
> +		status = "disabled";
> +	};
> +
> +	uart1: serial@20870000 {
> +		compatible = "rockchip,rv1103b-uart", "snps,dw-apb-uart";
> +		reg = <0x20870000 0x100>;
> +		interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
> +		reg-shift = <2>;
> +		reg-io-width = <4>;
> +		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
> +		clock-names = "baudclk", "apb_pclk";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&uart1m0_xfer>;
> +		status = "disabled";
> +	};
> +
> +	uart2: serial@20880000 {
> +		compatible = "rockchip,rv1103b-uart", "snps,dw-apb-uart";
> +		reg = <0x20880000 0x100>;
> +		interrupts = <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
> +		reg-shift = <2>;
> +		reg-io-width = <4>;
> +		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
> +		clock-names = "baudclk", "apb_pclk";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&uart2m0_xfer>;
> +		status = "disabled";
> +	};
> +
> +	wdt: watchdog@208d0000 {
> +		compatible = "snps,dw-wdt";
> +		reg = <0x208d0000 0x100>;
> +		clocks = <&cru TCLK_WDT_NS>, <&cru PCLK_WDT_NS>;
> +		clock-names = "tclk", "pclk";
> +		interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
> +		status = "disabled";
> +	};
> +
> +	sdmmc0: mmc@20d20000 {
> +		compatible = "rockchip,rv1103b-dw-mshc", "rockchip,rk3288-dw-mshc";
> +		reg = <0x20d20000 0x4000>;
> +		interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru HCLK_SDMMC0>, <&cru CCLK_SDMMC0>;
> +		clock-names = "biu", "ciu";
> +		fifo-depth = <0x100>;
> +		max-frequency = <150000000>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&sdmmc0_det &sdmmc0_clk &sdmmc0_cmd &sdmmc0_bus4>;
> +		status = "disabled";
> +	};
> +
> +	emmc: mmc@20d30000 {
> +		compatible = "rockchip,rv1103b-dw-mshc", "rockchip,rk3288-dw-mshc";
> +		reg = <0x20d30000 0x4000>;
> +		interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru HCLK_EMMC>, <&cru CCLK_EMMC>;
> +		clock-names = "biu", "ciu";
> +		fifo-depth = <0x100>;
> +		max-frequency = <150000000>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus4>;
> +		status = "disabled";
> +	};
> +
> +	fspi0: spi@20d40000 {
> +		compatible = "rockchip,sfc";
> +		reg = <0x20d40000 0x4000>;
> +		interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru SCLK_SFC_2X>, <&cru HCLK_SFC>;
> +		clock-names = "clk_sfc", "hclk_sfc";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&fspi_bus4 &fspi_cs0 &fspi_clk>;
> +		status = "disabled";
> +	};

All nodes above should be grouped under the soc node. Unsure about the
sram and pinctrl, check the other most recent RK SoCs dtsi files.

Regards,
Jonas

> +	system_sram: sram@210f6000 {
> +		compatible = "mmio-sram";
> +		reg = <0x210f6000 0x8000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0 0x210f6000 0x8000>;
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
> +};
> +
> +#include "rv1103b-pinctrl.dtsi"


