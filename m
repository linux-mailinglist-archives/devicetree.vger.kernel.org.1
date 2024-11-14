Return-Path: <devicetree+bounces-121722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0399C8189
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 04:46:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D5891F22162
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 03:46:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4B52144D21;
	Thu, 14 Nov 2024 03:46:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3034752F76
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 03:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731555986; cv=none; b=C8mirBpDywl3mWZlwS34z2+0iwkbfZcuKbZEhQbfY/rUNtXdmB6TqqIiqZZj/aVUfBqKim6x/GDhdOCjjTrJOvFsZo16Yt5uz7Ki6vjdxvFiA9CecE2EjIeitE+qwFdHA242MgIGlAVXz3N8oJBLwKzci2ZDOMYYsP7mua0anT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731555986; c=relaxed/simple;
	bh=2l5RRzFlDhrS8DPqc1EZZHI7Wd0sPdiXjEAlVqW+8wY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KByn/mUMr1tFLmWP5xMy7ojtr+2ADiVlMfeHOIyzPGnBxuMaRNxiaPuLLAPJFNxjml7xOREvrVo8ZrINwu339T/U4qDLtPuJGjIMsjdqqYghfohvgCNCZ+LafKAYcGHXiPaPnOlLaAFGgvum43GwPudxejlnjIgkY4Z8+/Nq0dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AE3jqu3029588;
	Thu, 14 Nov 2024 12:45:53 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com, alchark@gmail.com,
        cristian.ciocaltea@collabora.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: split dts into sharable dtsi and board-specific dts for Radxa ROCK 5C
Date: Thu, 14 Nov 2024 03:45:44 +0000
Message-ID: <20241114034545.6440-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241114034545.6440-1-naoki@radxa.com>
References: <20241114034545.6440-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

prepare for using sharable .dtsi for both Radxa ROCK 5A and 5C.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 ...k3588s-rock-5c.dts => rk3588s-rock-5.dtsi} |  32 -
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 955 +-----------------
 2 files changed, 54 insertions(+), 933 deletions(-)
 copy arch/arm64/boot/dts/rockchip/{rk3588s-rock-5c.dts => rk3588s-rock-5.dtsi} (95%)
 rewrite arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts (94%)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
similarity index 95%
copy from arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
copy to arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
index 1c826827ac69..bde816e21f87 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
@@ -12,9 +12,6 @@
 #include "rk3588s.dtsi"
 
 / {
-	model = "Radxa ROCK 5C";
-	compatible = "radxa,rock-5c", "rockchip,rk3588s";
-
 	aliases {
 		ethernet0 = &gmac1;
 		mmc0 = &sdhci;
@@ -46,7 +43,6 @@ fan {
 
 	hdmi0-con {
 		compatible = "hdmi-connector";
-		type = "a";
 
 		port {
 			hdmi0_con_in: endpoint {
@@ -70,7 +66,6 @@ led-0 {
 		led-1 {
 			color = <LED_COLOR_ID_BLUE>;
 			default-state = "on";
-			function = LED_FUNCTION_HEARTBEAT;
 			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
@@ -88,15 +83,6 @@ vcc3v3_pcie2x1l2: regulator-vcc3v3_pcie2x1l2 {
 		vin-supply = <&vcc_sysin>;
 	};
 
-	vcc5v_dcin: dcin: regulator-vcc5v-dcin {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v_dcin";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-	};
-
 	vcc5v0_usb_host: regulator-vcc5v0-usb-host {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -182,20 +168,6 @@ vcca: regulator-vcca {
 		regulator-max-microvolt = <4000000>;
 		vin-supply = <&vcc_sysin>;
 	};
-
-	vdd_3v3: regulator-vdd-3v3 {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&usb_wifi_pwr>;
-		regulator-name = "vdd_3v3";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc_3v3_s3>;
-	};
 };
 
 &combphy0_ps {
@@ -443,10 +415,6 @@ usb_otg_pwren_h: usb-otg-pwren-h {
 			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		usb_wifi_pwr: usb-wifi-pwr {
-			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
 		vcc_5v0_pwren_h: vcc-5v0-pwren-h {
 			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
dissimilarity index 94%
index 1c826827ac69..eeeafc2890b5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -1,901 +1,54 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-/*
- * Copyright (c) 2024 Radxa Computer (Shenzhen) Co., Ltd.
- */
-
-/dts-v1/;
-
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/leds/common.h>
-#include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/soc/rockchip,vop2.h>
-#include "rk3588s.dtsi"
-
-/ {
-	model = "Radxa ROCK 5C";
-	compatible = "radxa,rock-5c", "rockchip,rk3588s";
-
-	aliases {
-		ethernet0 = &gmac1;
-		mmc0 = &sdhci;
-		mmc1 = &sdmmc;
-	};
-
-	chosen {
-		stdout-path = "serial2:1500000n8";
-	};
-
-	analog-sound {
-		compatible = "audio-graph-card";
-		label = "rk3588-es8316";
-		dais = <&i2s0_8ch_p0>;
-		routing = "MIC2", "Mic Jack",
-			  "Headphones", "HPOL",
-			  "Headphones", "HPOR";
-		widgets = "Microphone", "Mic Jack",
-			  "Headphone", "Headphones";
-	};
-
-	fan {
-		compatible = "pwm-fan";
-		#cooling-cells = <2>;
-		cooling-levels = <0 64 128 192 255>;
-		fan-supply = <&vcc_5v0>;
-		pwms = <&pwm3 0 60000 0>;
-	};
-
-	hdmi0-con {
-		compatible = "hdmi-connector";
-		type = "a";
-
-		port {
-			hdmi0_con_in: endpoint {
-				remote-endpoint = <&hdmi0_out_con>;
-			};
-		};
-	};
-
-	leds {
-		compatible = "gpio-leds";
-		pinctrl-names = "default";
-		pinctrl-0 = <&led_pins>;
-
-		led-0 {
-			color = <LED_COLOR_ID_GREEN>;
-			default-state = "on";
-			function = LED_FUNCTION_POWER;
-			gpios = <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
-		};
-
-		led-1 {
-			color = <LED_COLOR_ID_BLUE>;
-			default-state = "on";
-			function = LED_FUNCTION_HEARTBEAT;
-			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "heartbeat";
-		};
-	};
-
-	vcc3v3_pcie2x1l2: regulator-vcc3v3_pcie2x1l2 {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pow_en>;
-		regulator-name = "vcc3v3_pcie2x1l2";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc_sysin>;
-	};
-
-	vcc5v_dcin: dcin: regulator-vcc5v-dcin {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v_dcin";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-	};
-
-	vcc5v0_usb_host: regulator-vcc5v0-usb-host {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&usb_host_pwren_h>;
-		regulator-name = "vcc5v0_usb_host";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vcc_sysin>;
-	};
-
-	vcc5v0_usb_otg0: regulator-vcc5v0-usb-otg0 {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&usb_otg_pwren_h>;
-		regulator-name = "vcc5v0_usb_otg0";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vcc_sysin>;
-	};
-
-	vcc_1v1_nldo_s3: regulator-vcc-1v1-nldo-s3 {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_1v1_nldo_s3";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <1100000>;
-		regulator-max-microvolt = <1100000>;
-		vin-supply = <&vcc_sysin>;
-	};
-
-	vcc_3v3_pmu: regulator-vcc-3v3-pmu {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_3v3_pmu";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc_3v3_s3>;
-	};
-
-	vcc_3v3_s0: regulator-vcc-3v3-s0 {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_3v3_s0";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc_1v8_s0>;
-	};
-
-	vcc_5v0: regulator-vcc-5v0 {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&vcc_5v0_pwren_h>;
-		regulator-name = "vcc_5v0";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vcc_sysin>;
-	};
-
-	vcc_sysin: regulator-vcc-sysin {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_sysin";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&dcin>;
-	};
-
-	vcca: regulator-vcca {
-		compatible = "regulator-fixed";
-		regulator-name = "vcca";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <4000000>;
-		regulator-max-microvolt = <4000000>;
-		vin-supply = <&vcc_sysin>;
-	};
-
-	vdd_3v3: regulator-vdd-3v3 {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&usb_wifi_pwr>;
-		regulator-name = "vdd_3v3";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc_3v3_s3>;
-	};
-};
-
-&combphy0_ps {
-	status = "okay";
-};
-
-&combphy2_psu {
-	status = "okay";
-};
-
-&cpu_b0 {
-	cpu-supply = <&vdd_cpu_big0_s0>;
-};
-
-&cpu_b1 {
-	cpu-supply = <&vdd_cpu_big0_s0>;
-};
-
-&cpu_b2 {
-	cpu-supply = <&vdd_cpu_big1_s0>;
-};
-
-&cpu_b3 {
-	cpu-supply = <&vdd_cpu_big1_s0>;
-};
-
-&cpu_l0 {
-	cpu-supply = <&vdd_cpu_lit_s0>;
-};
-
-&cpu_l1 {
-	cpu-supply = <&vdd_cpu_lit_s0>;
-};
-
-&cpu_l2 {
-	cpu-supply = <&vdd_cpu_lit_s0>;
-};
-
-&cpu_l3 {
-	cpu-supply = <&vdd_cpu_lit_s0>;
-};
-
-&gmac1 {
-	phy-handle = <&rgmii_phy1>;
-	phy-mode = "rgmii-id";
-	phy-supply = <&vcc_3v3_s0>;
-	pinctrl-0 = <&gmac1_miim
-		     &gmac1_tx_bus2
-		     &gmac1_rx_bus2
-		     &gmac1_rgmii_clk
-		     &gmac1_rgmii_bus
-		     &gmac1_clkinout>;
-	pinctrl-names = "default";
-	status = "okay";
-};
-
-&gpu {
-	mali-supply = <&vdd_gpu_s0>;
-	status = "okay";
-};
-
-&hdmi0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&hdmim0_tx0_cec
-		     &hdmim1_tx0_hpd
-		     &hdmim0_tx0_scl
-		     &hdmim0_tx0_sda>;
-	status = "okay";
-};
-
-&hdmi0_in {
-	hdmi0_in_vp0: endpoint {
-		remote-endpoint = <&vp0_out_hdmi0>;
-	};
-};
-
-&hdmi0_out {
-	hdmi0_out_con: endpoint {
-		remote-endpoint = <&hdmi0_con_in>;
-	};
-};
-
-&hdptxphy_hdmi0 {
-	status = "okay";
-};
-
-&i2c0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c0m2_xfer>;
-	status = "okay";
-
-	vdd_cpu_big0_s0: regulator@42 {
-		compatible = "rockchip,rk8602";
-		reg = <0x42>;
-		fcs,suspend-voltage-selector = <1>;
-		regulator-name = "vdd_cpu_big0_s0";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <550000>;
-		regulator-max-microvolt = <1050000>;
-		regulator-ramp-delay = <2300>;
-		vin-supply = <&vcc_sysin>;
-
-		regulator-state-mem {
-			regulator-off-in-suspend;
-		};
-	};
-
-	vdd_cpu_big1_s0: regulator@43 {
-		compatible = "rockchip,rk8603", "rockchip,rk8602";
-		reg = <0x43>;
-		fcs,suspend-voltage-selector = <1>;
-		regulator-name = "vdd_cpu_big1_s0";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <550000>;
-		regulator-max-microvolt = <1050000>;
-		regulator-ramp-delay = <2300>;
-		vin-supply = <&vcc_sysin>;
-
-		regulator-state-mem {
-			regulator-off-in-suspend;
-		};
-	};
-
-	eeprom@50 {
-		compatible = "belling,bl24c16a", "atmel,24c16";
-		reg = <0x50>;
-		pagesize = <16>;
-		vcc-supply = <&vcc_3v3_pmu>;
-	};
-};
-
-&i2c2 {
-	status = "okay";
-
-	vdd_npu_s0: regulator@42 {
-		compatible = "rockchip,rk8602";
-		reg = <0x42>;
-		fcs,suspend-voltage-selector = <1>;
-		regulator-name = "vdd_npu_s0";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <550000>;
-		regulator-max-microvolt = <950000>;
-		regulator-ramp-delay = <2300>;
-		vin-supply = <&vcc_sysin>;
-
-		regulator-state-mem {
-			regulator-off-in-suspend;
-		};
-	};
-};
-
-&i2c7 {
-	status = "okay";
-
-	audio-codec@11 {
-		compatible = "everest,es8316";
-		reg = <0x11>;
-		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
-		assigned-clock-rates = <12288000>;
-		clocks = <&cru I2S0_8CH_MCLKOUT>;
-		clock-names = "mclk";
-		#sound-dai-cells = <0>;
-
-		port {
-			es8316_p0_0: endpoint {
-				remote-endpoint = <&i2s0_8ch_p0_0>;
-			};
-		};
-	};
-};
-
-&i2s0_8ch {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2s0_lrck
-		     &i2s0_mclk
-		     &i2s0_sclk
-		     &i2s0_sdi0
-		     &i2s0_sdo0>;
-	status = "okay";
-
-	i2s0_8ch_p0: port {
-		i2s0_8ch_p0_0: endpoint {
-			dai-format = "i2s";
-			mclk-fs = <256>;
-			remote-endpoint = <&es8316_p0_0>;
-		};
-	};
-};
-
-&mdio1 {
-	rgmii_phy1: ethernet-phy@1 {
-		compatible = "ethernet-phy-id001c.c916";
-		reg = <1>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&gmac1_rstn>;
-		reset-assert-us = <20000>;
-		reset-deassert-us = <100000>;
-		reset-gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
-	};
-};
-
-&pcie2x1l2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pcie20x1_2_perstn_m0>,
-		    <&pcie20x1m0_clkreqn>,
-		    <&pcie20x1m0_waken>;
-	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&vcc3v3_pcie2x1l2>;
-	status = "okay";
-};
-
-&pinctrl {
-	leds {
-		led_pins: led-pins {
-			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>,
-					<3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	mdio {
-		gmac1_rstn: gmac1-rstn {
-			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	pcie {
-		pcie20x1_2_perstn_m0: pcie20x1-2-perstn-m0 {
-			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		pow_en: pow-en {
-			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	usb {
-		usb_host_pwren_h: usb-host-pwren-h {
-			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		usb_otg_pwren_h: usb-otg-pwren-h {
-			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		usb_wifi_pwr: usb-wifi-pwr {
-			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		vcc_5v0_pwren_h: vcc-5v0-pwren-h {
-			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-};
-
-&pwm3 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pwm3m1_pins>;
-	status = "okay";
-};
-
-&saradc {
-	vref-supply = <&vcca_1v8_s0>;
-	status = "okay";
-};
-
-&sdhci {
-	bus-width = <8>;
-	mmc-hs400-1_8v;
-	mmc-hs400-enhanced-strobe;
-	no-sdio;
-	no-sd;
-	non-removable;
-	status = "okay";
-};
-
-&sdmmc {
-	bus-width = <4>;
-	cap-mmc-highspeed;
-	cap-sd-highspeed;
-	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
-	disable-wp;
-	no-sdio;
-	no-mmc;
-	sd-uhs-sdr104;
-	vmmc-supply = <&vcc_3v3_s3>;
-	vqmmc-supply = <&vccio_sd_s0>;
-	status = "okay";
-};
-
-&sfc {
-	pinctrl-names = "default";
-	pinctrl-0 = <&fspim0_pins>;
-
-	flash@0 {
-		compatible = "jedec,spi-nor";
-		reg = <0>;
-		spi-max-frequency = <104000000>;
-		spi-rx-bus-width = <4>;
-		spi-tx-bus-width = <1>;
-	};
-};
-
-&spi2 {
-	status = "okay";
-	assigned-clocks = <&cru CLK_SPI2>;
-	assigned-clock-rates = <200000000>;
-	num-cs = <1>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&spi2m2_cs0 &spi2m2_pins>;
-
-	pmic@0 {
-		compatible = "rockchip,rk806";
-		reg = <0>;
-		gpio-controller;
-		#gpio-cells = <2>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
-			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
-		spi-max-frequency = <1000000>;
-		system-power-controller;
-
-		vcc1-supply = <&vcc_sysin>;
-		vcc2-supply = <&vcc_sysin>;
-		vcc3-supply = <&vcc_sysin>;
-		vcc4-supply = <&vcc_sysin>;
-		vcc5-supply = <&vcc_sysin>;
-		vcc6-supply = <&vcc_sysin>;
-		vcc7-supply = <&vcc_sysin>;
-		vcc8-supply = <&vcc_sysin>;
-		vcc9-supply = <&vcc_sysin>;
-		vcc10-supply = <&vcc_sysin>;
-		vcc11-supply = <&vcc_2v0_pldo_s3>;
-		vcc12-supply = <&vcc_sysin>;
-		vcc13-supply = <&vcc_1v1_nldo_s3>;
-		vcc14-supply = <&vcc_1v1_nldo_s3>;
-		vcca-supply = <&vcca>;
-
-		rk806_dvs1_null: dvs1-null-pins {
-			pins = "gpio_pwrctrl1";
-			function = "pin_fun0";
-		};
-
-		rk806_dvs2_null: dvs2-null-pins {
-			pins = "gpio_pwrctrl2";
-			function = "pin_fun0";
-		};
-
-		rk806_dvs3_null: dvs3-null-pins {
-			pins = "gpio_pwrctrl3";
-			function = "pin_fun0";
-		};
-
-		regulators {
-			vdd_gpu_s0: dcdc-reg1 {
-				regulator-name = "vdd_gpu_s0";
-				regulator-boot-on;
-				regulator-min-microvolt = <550000>;
-				regulator-max-microvolt = <950000>;
-				regulator-ramp-delay = <12500>;
-				regulator-enable-ramp-delay = <400>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_cpu_lit_s0: dcdc-reg2 {
-				regulator-name = "vdd_cpu_lit_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <550000>;
-				regulator-max-microvolt = <950000>;
-				regulator-ramp-delay = <12500>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_logic_s0: dcdc-reg3 {
-				regulator-name = "vdd_logic_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <675000>;
-				regulator-max-microvolt = <750000>;
-				regulator-ramp-delay = <12500>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <750000>;
-				};
-			};
-
-			vdd_vdenc_s0: dcdc-reg4 {
-				regulator-name = "vdd_vdenc_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <550000>;
-				regulator-max-microvolt = <950000>;
-				regulator-ramp-delay = <12500>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_ddr_s0: dcdc-reg5 {
-				regulator-name = "vdd_ddr_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <675000>;
-				regulator-max-microvolt = <900000>;
-				regulator-ramp-delay = <12500>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-					regulator-suspend-microvolt = <850000>;
-				};
-			};
-
-			vdd2_ddr_s3: dcdc-reg6 {
-				regulator-name = "vdd2_ddr_s3";
-				regulator-always-on;
-				regulator-boot-on;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-				};
-			};
-
-			vcc_2v0_pldo_s3: dcdc-reg7 {
-				regulator-name = "vdd_2v0_pldo_s3";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <2000000>;
-				regulator-max-microvolt = <2000000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <2000000>;
-				};
-			};
-
-			vcc_3v3_s3: dcdc-reg8 {
-				regulator-name = "vcc_3v3_s3";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <3300000>;
-				};
-			};
-
-			vddq_ddr_s0: dcdc-reg9 {
-				regulator-name = "vddq_ddr_s0";
-				regulator-always-on;
-				regulator-boot-on;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_1v8_s3: dcdc-reg10 {
-				regulator-name = "vcc_1v8_s3";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			vcc_1v8_s0: pldo-reg1 {
-				regulator-name = "vcc_1v8_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			vcca_1v8_s0: pldo-reg2 {
-				regulator-name = "vcca_1v8_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			vdda_1v2_s0: pldo-reg3 {
-				regulator-name = "vdda_1v2_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1200000>;
-				regulator-max-microvolt = <1200000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcca_3v3_s0: pldo-reg4 {
-				regulator-name = "vcca_3v3_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <3300000>;
-				};
-			};
-
-			vccio_sd_s0: pldo-reg5 {
-				regulator-name = "vccio_sd_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			pldo6_s3: pldo-reg6 {
-				regulator-name = "pldo6_s3";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			vdd_0v75_s3: nldo-reg1 {
-				regulator-name = "vdd_0v75_s3";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <750000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <750000>;
-				};
-			};
-
-			vdda_ddr_pll_s0: nldo-reg2 {
-				regulator-name = "vdda_ddr_pll_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <850000>;
-				regulator-max-microvolt = <850000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <850000>;
-				};
-			};
-
-			vdda_0v75_s0: nldo-reg3 {
-				regulator-name = "vdda_0v75_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <750000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <750000>;
-				};
-			};
-
-			vdda_0v85_s0: nldo-reg4 {
-				regulator-name = "vdda_0v85_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <850000>;
-				regulator-max-microvolt = <850000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_0v75_s0: nldo-reg5 {
-				regulator-name = "vdd_0v75_s0";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <750000>;
-
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-		};
-	};
-};
-
-&tsadc {
-	status = "okay";
-};
-
-&u2phy0 {
-	status = "okay";
-};
-
-&u2phy0_otg {
-	phy-supply = <&vcc5v0_usb_otg0>;
-	status = "okay";
-};
-
-&u2phy2 {
-	status = "okay";
-};
-
-&u2phy2_host {
-	/* connected to USB hub, which is powered by vcc_5v0 */
-	phy-supply = <&vcc_5v0>;
-	status = "okay";
-};
-
-&u2phy3 {
-	status = "okay";
-};
-
-&u2phy3_host {
-	phy-supply = <&vcc5v0_usb_host>;
-	status = "okay";
-};
-
-&uart2 {
-	pinctrl-0 = <&uart2m0_xfer>;
-	status = "okay";
-};
-
-&usb_host0_ehci {
-	status = "okay";
-};
-
-&usb_host0_xhci {
-	dr_mode = "host";
-	status = "okay";
-};
-
-&usb_host1_ehci {
-	status = "okay";
-};
-
-&usb_host1_ohci {
-	status = "okay";
-};
-
-&usb_host2_xhci {
-	status = "okay";
-};
-
-&usbdp_phy0 {
-	rockchip,dp-lane-mux = <2 3>;
-	status = "okay";
-};
-
-&vop {
-	status = "okay";
-};
-
-&vop_mmu {
-	status = "okay";
-};
-
-&vp0 {
-	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
-		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
-		remote-endpoint = <&hdmi0_in_vp0>;
-	};
-};
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2024 Radxa Computer (Shenzhen) Co., Ltd.
+ */
+
+/dts-v1/;
+
+#include "rk3588s-rock-5.dtsi"
+
+/ {
+	model = "Radxa ROCK 5C";
+	compatible = "radxa,rock-5c", "rockchip,rk3588s";
+
+	hdmi0-con {
+		type = "a";
+	};
+
+	leds {
+		led-1 {
+			function = LED_FUNCTION_HEARTBEAT;
+		};
+	};
+
+	vcc5v_dcin: dcin: regulator-vcc5v-dcin {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v_dcin";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vdd_3v3: regulator-vdd-3v3 {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_wifi_pwr>;
+		regulator-name = "vdd_3v3";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3_s3>;
+	};
+};
+
+&pinctrl {
+	usb {
+		usb_wifi_pwr: usb-wifi-pwr {
+			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
-- 
2.43.0


