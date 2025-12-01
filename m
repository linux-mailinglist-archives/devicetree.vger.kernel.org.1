Return-Path: <devicetree+bounces-243294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1D2C968C3
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 11:04:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BABB13A42B9
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 10:03:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CE1B303A37;
	Mon,  1 Dec 2025 10:01:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com [101.71.155.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4C13019BB;
	Mon,  1 Dec 2025 10:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764583287; cv=none; b=mC90RDg15cOgqtWrMIN4QP4BDlEWUwCi7gTOQkizFf767axRastwnunCvGRZPZJPCRQ49vBcV1KU5IlgN73tPqn2PsHwmRtUtHHUODpSIR0BmL6wEOYKd6UFXUZvPmttvVxP5M0OTUFvutnR5/1EFH3ajLmVbJ1snySI8gZP0iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764583287; c=relaxed/simple;
	bh=RQugmeTQ+g9grEPv8qTFE7DuWndMxheUfkA2RGWJJOc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZQci/Qtv6W4rptxYPfe42k5xv5wd2gl96EQA9BE8rEJHoKVF7hSjhwe+8cfQS0hvx+QrKcX+t4OxeS6IMYEWn6kDTyvBdDMgZ3hoULzGprV8Un3tdhpogX1a6jcFmgPjKkRR59rApiUVuJanJv+MblvAIkHBqNR2x9+bRhrlIXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=101.71.155.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [119.122.215.79])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2b846f24b;
	Mon, 1 Dec 2025 18:01:21 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 4/4] arm64: dts: rockchip: Add MangoPi M28K
Date: Mon,  1 Dec 2025 18:00:08 +0800
Message-Id: <20251201100008.206524-5-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251201100008.206524-1-amadeus@jmu.edu.cn>
References: <20251201100008.206524-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9ad95c11a103a2kunm919d19c1367a43
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCHkxOVhhKSR0aQ0keGUhKGVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVMQllXWRYaDxIVHRRZQVlPS0hVSktJQkNDTFVKS0tVS1
	kG

The MangoPi M28K is a development board with the
Rockchip RK3528 SoC. It has the following features:

- 2x USB 2.0
- 1x mini-HDMI
- 1/2/4GB LPDDR4
- AIC8800 WiFi/BT
- MicroSD card slot
- Optional 16/32GB eMMC
- 1x 1GbE RTL8111H Ethernet
- 1x 1GbE RTL8211F Ethernet

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3528-mangopi-m28k.dts | 381 ++++++++++++++++++
 2 files changed, 382 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-mangopi-m28k.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 8ccf72c2e31e..d666ef62f5f4 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -91,6 +91,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3528-armsom-sige1.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3528-hinlink-h28k.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3528-mangopi-m28k.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3528-nanopi-zero2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3528-radxa-e20c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3528-rock-2a.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3528-mangopi-m28k.dts b/arch/arm64/boot/dts/rockchip/rk3528-mangopi-m28k.dts
new file mode 100644
index 000000000000..e99a83553910
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3528-mangopi-m28k.dts
@@ -0,0 +1,381 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pwm/pwm.h>
+#include "rk3528.dtsi"
+
+/ {
+	model = "MangoPi M28K";
+	compatible = "widora,mangopi-m28k", "rockchip,rk3528";
+
+	aliases {
+		ethernet0 = &gmac1;
+		i2c6 = &i2c6;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
+		mmc2 = &sdio0;
+		serial0 = &uart0;
+		serial2 = &uart2;
+		serial3 = &uart3;
+	};
+
+	chosen {
+		stdout-path = "serial0:1500000n8";
+	};
+
+	ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio4 RK_PC6 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm3_m0_ir_rx>;
+	};
+
+	keys-0 {
+		compatible = "adc-keys";
+		io-channels = <&saradc 0>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-boot {
+			label = "BOOT";
+			linux,code = <KEY_SETUP>;
+			press-threshold-microvolt = <0>;
+		};
+	};
+
+	keys-1 {
+		compatible = "adc-keys";
+		io-channels = <&saradc 1>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-recover {
+			label = "RECOVER";
+			linux,code = <KEY_VENDOR>;
+			press-threshold-microvolt = <0>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&lan_led>, <&wan_led>, <&work_led>;
+
+		led-0 {
+			color = <LED_COLOR_ID_WHITE>;
+			function = LED_FUNCTION_LAN;
+			gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "netdev";
+		};
+
+		led-1 {
+			color = <LED_COLOR_ID_WHITE>;
+			function = LED_FUNCTION_WAN;
+			gpios = <&gpio4 RK_PC0 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "netdev";
+		};
+
+		led-2 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_STATUS;
+			gpios = <&gpio4 RK_PB7 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "default-on";
+		};
+	};
+
+	vdd_0v9: regulator-0v9-vdd {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_0v9";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		vin-supply = <&vcc_sys>;
+	};
+
+	vcc_ddr: regulator-1v1-vcc-ddr {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_ddr";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1100000>;
+		regulator-max-microvolt = <1100000>;
+		vin-supply = <&vcc_sys>;
+	};
+
+	vcc_1v8: regulator-1v8-vcc {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_3v3>;
+	};
+
+	vcc_3v3: regulator-3v3-vcc {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_3v3";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_sys>;
+	};
+
+	vcc3v3_sd: regulator-3v3-vcc-sd {
+		compatible = "regulator-fixed";
+		gpios = <&gpio4 RK_PA1 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc_pwren_l>;
+		regulator-name = "vcc3v3_sd";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3>;
+	};
+
+	vcc_sys: regulator-5v0-vcc-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vccio_sd: regulator-vccio-sd {
+		compatible = "regulator-gpio";
+		gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc_vol_ctrl_h>;
+		regulator-name = "vccio_sd";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		states = <1800000 0x0>, <3300000 0x1>;
+		vin-supply = <&vcc_sys>;
+	};
+
+	vdd_arm: regulator-vdd-arm {
+		compatible = "pwm-regulator";
+		pwms = <&pwm1 0 5000 PWM_POLARITY_INVERTED>;
+		pwm-supply = <&vcc_sys>;
+		regulator-name = "vdd_arm";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <746000>;
+		regulator-max-microvolt = <1201000>;
+		regulator-settling-time-up-us = <250>;
+	};
+
+	vdd_logic: regulator-vdd-logic {
+		compatible = "pwm-regulator";
+		pwms = <&pwm2 0 5000 PWM_POLARITY_INVERTED>;
+		pwm-supply = <&vcc_sys>;
+		regulator-name = "vdd_logic";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <705000>;
+		regulator-max-microvolt = <1006000>;
+		regulator-settling-time-up-us = <250>;
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_reg_on_h>;
+		post-power-on-delay-ms = <100>;
+		power-off-delay-us = <5000000>;
+		reset-gpios = <&gpio1 RK_PA6 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&combphy {
+	status = "okay";
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&gmac1 {
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy>;
+	phy-mode = "rgmii-id";
+	phy-supply = <&vcc_3v3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmii_miim>,
+		    <&rgmii_tx_bus2>,
+		    <&rgmii_rx_bus2>,
+		    <&rgmii_rgmii_clk>,
+		    <&rgmii_rgmii_bus>;
+	status = "okay";
+};
+
+&gpu {
+	mali-supply = <&vdd_logic>;
+	status = "okay";
+};
+
+&i2c6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c6m0_xfer>;
+	status = "okay";
+};
+
+&mdio1 {
+	rgmii_phy: ethernet-phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&gmac1_rstn_l>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&pcie {
+	pinctrl-names = "default";
+	pinctrl-0 = <&rtl8111hs_isolateb_l>;
+	reset-gpios = <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
+&pinctrl {
+	gmac {
+		gmac1_rstn_l: gmac1-rstn-l {
+			rockchip,pins = <4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	ir {
+		pwm3_m0_ir_rx: pwm3-m0-ir-rx {
+			rockchip,pins = <4 RK_PC6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	leds {
+		lan_led: lan-led {
+			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wan_led: wan-led {
+			rockchip,pins = <4 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		work_led: work-led {
+			rockchip,pins = <4 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pcie {
+		rtl8111hs_isolateb_l: rtl8111hs-isolateb-l {
+			rockchip,pins = <4 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	sdmmc {
+		sdmmc_pwren_l: sdmmc-pwren-l {
+			rockchip,pins = <4 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		sdmmc_vol_ctrl_h: sdmmc-vol-ctrl-h {
+			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	wifi {
+		wifi_reg_on_h: wifi-reg-on-h {
+			rockchip,pins = <1 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wifi_wake_host_h: wifi-wake-host-h {
+			rockchip,pins = <1 RK_PA7 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+};
+
+&pwm1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm1m0_pins>;
+	status = "okay";
+};
+
+&pwm2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm2m0_pins>;
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	mmc-hs200-1_8v;
+	non-removable;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&sdio0 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	sd-uhs-sdr104;
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	disable-wp;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_sd>;
+	vqmmc-supply = <&vccio_sd>;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0m0_xfer>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2m1_ctsn>, <&uart2m1_rtsn>, <&uart2m1_xfer>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart3m0_xfer>;
+	status = "disabled";
+};
-- 
2.25.1


