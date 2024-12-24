Return-Path: <devicetree+bounces-133888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8321F9FC281
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 22:10:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F1E70162C8B
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 21:10:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E1571A072C;
	Tue, 24 Dec 2024 21:10:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B9713D503
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 21:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735074611; cv=none; b=WZk7u1cHtBc1qqX7heMQqezGOVpkMkAUDYb0PbbulgTKuhCNf4JAMjVqBwL3/BZwanzi0C5malHVJSk/Lg3eGS3kgeCBo3hgNtZ+stvogqjPg2x1K2twd5IokzEzw9v68LxNR0+r4RsXvAHYlZ4CX1JlIYCBOvgJP7SEugvpk5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735074611; c=relaxed/simple;
	bh=vjkbXBzciknU9XUqq42Ce9lB0QCwhcL3VLndyI6yX+8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pFJviXxht8A07YucWwOIlq1DnSdzfoAB08xzr4EETycl4Jwt+U/wgfocHaWmSVgxWRr3ZiQP46g+Lg9cY8dBpgtKZa0L4xcplTYXhdzMl9/apgLOxL0bkUiKFWDjVWmiiuK088jMAhFaXoc7HkUWnRnFm1BMM2rK6QKqdaoseJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BOL9KQD031471;
	Wed, 25 Dec 2024 06:09:23 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, jonas@kwiboo.se, macromorgan@hotmail.com,
        liujianfeng1994@gmail.com, dmt.yashin@gmail.com, tim@feathertop.org,
        marcin.juszkiewicz@linaro.org, michael.riesch@wolfvision.net,
        sebastian.reichel@collabora.com, alchark@gmail.com, inindev@gmail.com,
        kever.yang@rock-chips.com, cristian.ciocaltea@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: Add Radxa ROCK 5B+
Date: Tue, 24 Dec 2024 21:09:11 +0000
Message-ID: <20241224210912.2121-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241224210912.2121-1-naoki@radxa.com>
References: <20241224210912.2121-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Radxa ROCK 5B+[1] is an upgraded version of the ROCK 5B based on
the Rockchip RK3588 SoC.

- Quad Cortex-A76 and quad Cortex-A55 CPU
- 6TOPS NPU
- up to 32GB LPDDR5 RAM
- up to 256GB on-board optional eMMC
- microSD card slot
- 2x USB 3.0 Type-A HOST ports
- 2x USB 2.0 Type-A HOST ports
- USB Type-C OTG port
- USB Type-C PD power port
- WiFi6 / BT5.4
- 2.5 GbE port (supports PoE with additional PoE HAT)
- 2x M.2 M Key connectors with PCIe 3.0 2-lane support
- M.2 B Key connector with 4G module support
- SIM card slot

[1] https://radxa.com/products/rock5/5bp

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3588-rock-5.dtsi      | 1006 +++++++++++++++++
 .../boot/dts/rockchip/rk3588-rock-5b-plus.dts |   97 ++
 3 files changed, 1104 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index cac3f39af82a..2b09c8f71cfd 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -176,6 +176,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5-itx.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-ep.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-srns.dtbo
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-tiger-haikou.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-toybrick-x0.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-turing-rk1.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5.dtsi
new file mode 100644
index 000000000000..98f12a5523a0
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5.dtsi
@@ -0,0 +1,1006 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2024 Radxa Computer (Shenzhen) Co., Ltd.
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include <dt-bindings/usb/pd.h>
+#include "rk3588.dtsi"
+
+/ {
+	aliases {
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	fan: fan {
+		compatible = "pwm-fan";
+		#cooling-cells = <2>;
+		cooling-levels = <0 64 128 192 255>;
+		fan-supply = <&vcc5v0_sys>;
+		pwms = <&pwm1 0 60000 0>;
+	};
+
+	hdmi0-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi0_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
+	leds: leds {
+		compatible = "pwm-leds";
+
+		led-0 {
+			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
+			function = LED_FUNCTION_STATUS;
+			linux,default-trigger = "heartbeat";
+			pwms = <&pwm0 0 1000000 0>;
+			max-brightness = <255>;
+		};
+	};
+
+	vcc_1v1_nldo_s3: regulator-1v1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v1_nldo_s3";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1100000>;
+		regulator-max-microvolt = <1100000>;
+		vin-supply = <&vcc4v0_sys>;
+	};
+
+	/* pi6c pcie clock generator */
+	vcc3v3_pi6c_05: vcc3v3_pcie30: vcc3v3_pcie30_1: regulator-3v3-0 {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie30x4_pwren_h>;
+		regulator-name = "vcc3v3_pi6c_05";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc3v3_wf: regulator-3v3-1 {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ekey_en>;
+		regulator-name = "vcc3v3_wf";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc4v0_sys: regulator-4v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc4v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vbus_typec0: regulator-5v0-0 {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio2 RK_PB6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&typec5v_pwren_h>;
+		regulator-name = "vbus_typec0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc5v0_sys: regulator-5v0-1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vcc5v_usb: regulator-5v0-2 {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_host_pwren_h>;
+		regulator-name = "vcc5v_usb";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc_5v: regulator-5v0-3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_5v";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	rfkill {
+		compatible = "rfkill-gpio";
+		radio-type = "wlan";
+	};
+
+	rfkill-bt {
+		compatible = "rfkill-gpio";
+		radio-type = "bluetooth";
+		shutdown-gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
+	};
+
+	sound {
+		compatible = "audio-graph-card";
+		label = "rk3588-es8316";
+		dais = <&i2s0_8ch_p0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&hp_detect>;
+		routing = "MIC2", "Mic Jack",
+			  "Headphones", "HPOL",
+			  "Headphones", "HPOR";
+		widgets = "Microphone", "Mic Jack",
+			  "Headphone", "Headphones";
+	};
+};
+
+&combphy0_ps {
+	status = "okay";
+};
+
+&combphy1_ps {
+	status = "okay";
+};
+
+&combphy2_psu {
+	status = "okay";
+};
+
+&cpu_b0 {
+	cpu-supply = <&vdd_cpu_big0_s0>;
+};
+
+&cpu_b1 {
+	cpu-supply = <&vdd_cpu_big0_s0>;
+};
+
+&cpu_b2 {
+	cpu-supply = <&vdd_cpu_big1_s0>;
+};
+
+&cpu_b3 {
+	cpu-supply = <&vdd_cpu_big1_s0>;
+};
+
+&cpu_l0 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l1 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l2 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&cpu_l3 {
+	cpu-supply = <&vdd_cpu_lit_s0>;
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
+&hdmi0 {
+	status = "okay";
+};
+
+&hdmi0_in {
+	hdmi0_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi0>;
+	};
+};
+
+&hdmi0_out {
+	hdmi0_out_con: endpoint {
+		remote-endpoint = <&hdmi0_con_in>;
+	};
+};
+
+&hdptxphy_hdmi0 {
+	status = "okay";
+};
+
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0m2_xfer>;
+	status = "okay";
+
+	vdd_cpu_big0_s0: regulator@42 {
+		compatible = "rockchip,rk8602";
+		reg = <0x42>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu_big0_s0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <1050000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc4v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vdd_cpu_big1_s0: regulator@43 {
+		compatible = "rockchip,rk8603", "rockchip,rk8602";
+		reg = <0x43>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu_big1_s0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <1050000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc4v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c1m2_xfer>;
+	status = "okay";
+
+	vdd_npu_s0: regulator@42 {
+		compatible = "rockchip,rk8602";
+		reg = <0x42>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_npu_s0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <950000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc4v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	eeprom: eeprom@50 {
+		compatible = "belling,bl24c16a", "atmel,24c16";
+		reg = <0x50>;
+		pagesize = <16>;
+		vcc-supply = <&vcc_3v3_s3>;
+	};
+};
+
+&i2c4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c4m1_xfer>;
+	status = "okay";
+
+	usbc0: usb-typec@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <RK_PB4 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cc_int_l>;
+		vbus-supply = <&vbus_typec0>;
+
+		usbc0_con: connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			data-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					usbc0_role_sw: endpoint {
+						remote-endpoint = <&dwc3_0_role_switch>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					usbc0_orien_sw: endpoint {
+						remote-endpoint = <&usbdp_phy0_orientation_switch>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+					dp_altmode_mux: endpoint {
+						remote-endpoint = <&usbdp_phy0_dp_altmode_mux>;
+					};
+				};
+			};
+		};
+	};
+};
+
+&i2c6 {
+	status = "okay";
+
+	rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-output-names = "32kout_wifi";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&rtc_int_l>;
+		wakeup-source;
+	};
+};
+
+&i2c7 {
+	status = "okay";
+
+	audio-codec@11 {
+		compatible = "everest,es8316";
+		reg = <0x11>;
+		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
+		assigned-clock-rates = <12288000>;
+		clocks = <&cru I2S0_8CH_MCLKOUT>;
+		clock-names = "mclk";
+		#sound-dai-cells = <0>;
+
+		port {
+			es8316_p0_0: endpoint {
+				remote-endpoint = <&i2s0_8ch_p0_0>;
+			};
+		};
+	};
+};
+
+&i2s0_8ch {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s0_lrck
+		     &i2s0_mclk
+		     &i2s0_sclk
+		     &i2s0_sdi0
+		     &i2s0_sdo0>;
+	status = "okay";
+
+	i2s0_8ch_p0: port {
+		i2s0_8ch_p0_0: endpoint {
+			dai-format = "i2s";
+			mclk-fs = <256>;
+			remote-endpoint = <&es8316_p0_0>;
+		};
+	};
+};
+
+&package_thermal {
+	polling-delay = <1000>;
+
+	trips {
+		package_fan0: package-fan0 {
+			hysteresis = <2000>;
+			temperature = <55000>;
+			type = "active";
+		};
+
+		package_fan1: package-fan1 {
+			hysteresis = <2000>;
+			temperature = <65000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map0 {
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+			trip = <&package_fan0>;
+		};
+
+		map1 {
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+			trip = <&package_fan1>;
+		};
+	};
+};
+
+&pcie2x1l0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie30x1_0_perstn_m1_l>;
+	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_wf>;
+	status = "okay";
+};
+
+&pcie2x1l2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_perst_l>;
+	reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc_3v3_s3>;
+	status = "okay";
+};
+
+&pcie30phy {
+	phy-supply = <&vcc3v3_pi6c_05>;
+	status = "okay";
+};
+
+&pcie3x2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie30x2_perstn_m1>;
+	reset-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie30_1>;
+	status = "okay";
+};
+
+&pcie3x4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie30x4_perstn_m1_l>;
+	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie30>;
+	status = "okay";
+};
+
+&pinctrl {
+	pcie {
+		pcie30x1_0_perstn_m1_l: pcie-0 {
+			rockchip,pins = <4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie_perst_l: pcie-2 {
+			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie30x2_perstn_m1: pcie-3 {
+			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie30x4_perstn_m1_l: pcie-4 {
+			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie30x4_pwren_h: regulator-3v3-0 {
+			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	rtc {
+		rtc_int_l: rtc-0 {
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb {
+		cc_int_l: usb-0 {
+			rockchip,pins = <3 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		typec5v_pwren_h: regulator-5v0-0 {
+			rockchip,pins = <2 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pwm0 {
+	status = "okay";
+};
+
+&pwm1 {
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcca_1v8_s0>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	no-sd;
+	no-sdio;
+	non-removable;
+	vmmc-supply = <&vcc_3v3_s3>;
+	vqmmc-supply = <&vcc_1v8_s3>;
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	no-sdio;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_3v3_s3>;
+	vqmmc-supply = <&vccio_sd_s0>;
+	status = "okay";
+};
+
+&sfc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&fspim2_pins>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <104000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+	};
+};
+
+&spi2 {
+	status = "okay";
+	assigned-clocks = <&cru CLK_SPI2>;
+	assigned-clock-rates = <200000000>;
+	num-cs = <1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi2m2_cs0 &spi2m2_pins>;
+
+	pmic@0 {
+		compatible = "rockchip,rk806";
+		reg = <0>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
+			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
+		spi-max-frequency = <1000000>;
+		system-power-controller;
+
+		vcc1-supply = <&vcc4v0_sys>;
+		vcc2-supply = <&vcc4v0_sys>;
+		vcc3-supply = <&vcc4v0_sys>;
+		vcc4-supply = <&vcc4v0_sys>;
+		vcc5-supply = <&vcc4v0_sys>;
+		vcc6-supply = <&vcc4v0_sys>;
+		vcc7-supply = <&vcc4v0_sys>;
+		vcc8-supply = <&vcc4v0_sys>;
+		vcc9-supply = <&vcc4v0_sys>;
+		vcc10-supply = <&vcc4v0_sys>;
+		vcc11-supply = <&vcc_2v0_pldo_s3>;
+		vcc12-supply = <&vcc4v0_sys>;
+		vcc13-supply = <&vcc_1v1_nldo_s3>;
+		vcc14-supply = <&vcc_1v1_nldo_s3>;
+		vcca-supply = <&vcc4v0_sys>;
+
+		rk806_dvs1_null: dvs1-null-pins {
+			pins = "gpio_pwrctrl1";
+			function = "pin_fun0";
+		};
+
+		rk806_dvs2_null: dvs2-null-pins {
+			pins = "gpio_pwrctrl2";
+			function = "pin_fun0";
+		};
+
+		rk806_dvs3_null: dvs3-null-pins {
+			pins = "gpio_pwrctrl3";
+			function = "pin_fun0";
+		};
+
+		regulators {
+			vdd_gpu_s0: dcdc-reg1 {
+				regulator-name = "vdd_gpu_s0";
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <12500>;
+				regulator-enable-ramp-delay = <400>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_cpu_lit_s0: dcdc-reg2 {
+				regulator-name = "vdd_cpu_lit_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <12500>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_log_s0: dcdc-reg3 {
+				regulator-name = "vdd_log_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <675000>;
+				regulator-max-microvolt = <750000>;
+				regulator-ramp-delay = <12500>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <750000>;
+				};
+			};
+
+			vdd_vdenc_s0: dcdc-reg4 {
+				regulator-name = "vdd_vdenc_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <550000>;
+				regulator-max-microvolt = <950000>;
+				regulator-ramp-delay = <12500>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_ddr_s0: dcdc-reg5 {
+				regulator-name = "vdd_ddr_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <675000>;
+				regulator-max-microvolt = <900000>;
+				regulator-ramp-delay = <12500>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <850000>;
+				};
+			};
+
+			vdd2_ddr_s3: dcdc-reg6 {
+				regulator-name = "vdd2_ddr_s3";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_2v0_pldo_s3: dcdc-reg7 {
+				regulator-name = "vcc_2v0_pldo_s3";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <2000000>;
+				regulator-max-microvolt = <2000000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <2000000>;
+				};
+			};
+
+			vcc_3v3_s3: dcdc-reg8 {
+				regulator-name = "vcc_3v3_s3";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vddq_ddr_s0: dcdc-reg9 {
+				regulator-name = "vddq_ddr_s0";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_1v8_s3: dcdc-reg10 {
+				regulator-name = "vcc_1v8_s3";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcca_1v8_s0: pldo-reg1 {
+				regulator-name = "vcca_1v8_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc_1v8_s0: pldo-reg2 {
+				regulator-name = "vcc_1v8_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdda_1v2_s0: pldo-reg3 {
+				regulator-name = "vdda_1v2_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcca_3v3_s0: pldo-reg4 {
+				regulator-name = "vcca_3v3_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vccio_sd_s0: pldo-reg5 {
+				regulator-name = "vccio_sd_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			pldo6_s3: pldo-reg6 {
+				regulator-name = "pldo6_s3";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd_0v75_s3: nldo-reg1 {
+				regulator-name = "vdd_0v75_s3";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <750000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <750000>;
+				};
+			};
+
+			vdda_ddr_pll_s0: nldo-reg2 {
+				regulator-name = "vdda_ddr_pll_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <850000>;
+				};
+			};
+
+			vdda_0v75_s0: nldo-reg3 {
+				regulator-name = "vdda_0v75_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <750000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <750000>;
+				};
+			};
+
+			vdda_0v85_s0: nldo-reg4 {
+				regulator-name = "vdda_0v85_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <850000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdd_0v75_s0: nldo-reg5 {
+				regulator-name = "vdd_0v75_s0";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <750000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+};
+
+&tsadc {
+	status = "okay";
+};
+
+&u2phy0 {
+	status = "okay";
+};
+
+&u2phy0_otg {
+	phy-supply = <&vbus_typec0>;
+	status = "okay";
+};
+
+&u2phy1 {
+	status = "okay";
+};
+
+&u2phy1_otg {
+	status = "okay";
+};
+
+&u2phy2 {
+	status = "okay";
+};
+
+&u2phy2_host {
+	status = "okay";
+};
+
+&u2phy3 {
+	status = "okay";
+};
+
+&u2phy3_host {
+	phy-supply = <&vcc5v_usb>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2m0_xfer>;
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_xhci {
+	usb-role-switch;
+	status = "okay";
+
+	port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		dwc3_0_role_switch: endpoint {
+			remote-endpoint = <&usbc0_role_sw>;
+		};
+	};
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
+
+&usb_host1_xhci {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usb_host2_xhci {
+	status = "okay";
+};
+
+&usbdp_phy0 {
+	mode-switch;
+	orientation-switch;
+	status = "okay";
+
+	port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		usbdp_phy0_orientation_switch: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&usbc0_orien_sw>;
+		};
+
+		usbdp_phy0_dp_altmode_mux: endpoint@1 {
+			reg = <1>;
+			remote-endpoint = <&dp_altmode_mux>;
+		};
+	};
+};
+
+&usbdp_phy1 {
+	status = "okay";
+};
+
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi0_in_vp0>;
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
new file mode 100644
index 000000000000..a8c472def581
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
@@ -0,0 +1,97 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2024 Radxa Computer (Shenzhen) Co., Ltd.
+ */
+
+/dts-v1/;
+
+#include "rk3588-rock-5.dtsi"
+
+/ {
+	model = "Radxa ROCK 5B+";
+	compatible = "radxa,rock-5b-plus", "rockchip,rk3588";
+
+	regulator-3v3-1 {
+		gpios = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
+	};
+
+	regulator-5v0-2 {
+		gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_HIGH>;
+	};
+
+	rfkill {
+		label = "rfkill-wlan";
+		shutdown-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
+	};
+
+	rfkill-bt {
+		label = "rfkill-bt";
+	};
+
+	sound {
+		hp-det-gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&pcie30phy {
+	data-lanes = <1 1 2 2>;
+};
+
+&pcie3x4 {
+	num-lanes = <2>;
+};
+
+&pinctrl {
+	pcie {
+		ekey_en: regulator-3v3-1 {
+			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sound {
+		hp_detect: sound-0 {
+			rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb {
+		usb_host_pwren_h: regulator-5v0-2 {
+			rockchip,pins = <1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&u2phy1_otg {
+	phy-supply = <&vcc5v_usb>;
+};
+
+&u2phy2_host {
+	/* connected to USB hub, which is powered by vcc_5v */
+	phy-supply = <&vcc_5v>;
+};
+
+&usbc0 {
+	/*
+	 * When the board is starting to send power-delivery messages
+	 * too late (5 seconds according to the specification), the
+	 * power-supply reacts with a hard-reset. That removes the
+	 * power from VBUS for some time, which resets the whole board.
+	 */
+	status = "fail";
+};
+
+&usbc0_con {
+	power-role = "dual";
+	try-power-role = "sink";
+	op-sink-microwatt = <1000000>;
+	sink-pdos =
+		<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>,
+		<PDO_VAR(5000, 20000, 5000)>;
+	source-pdos =
+		<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
+};
+
+&usbdp_phy0 {
+	sbu1-dc-gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
+	sbu2-dc-gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
+};
-- 
2.43.0


