Return-Path: <devicetree+bounces-85120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B257A92F035
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 22:17:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D63581C21267
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 20:17:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCD7C19E81F;
	Thu, 11 Jul 2024 20:17:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDAC14D449
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 20:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720729054; cv=none; b=POmGsbDD3tqDAdhy02hGaZy/LdjBQmG555u1+2Ig2bGaU/cgv/iHqEsxob6w+dRnqYG/shdaHt/1I55ucEYK21HNwfAWgtxAIIQeHdBvR9AwoL2nGJuFaur/dikjo9w6mcPuTmu5zJS+ZlP2QfEr5cECDYRGByoHGQaulFarkYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720729054; c=relaxed/simple;
	bh=flyeDTxcP9C2PMr0wdZdwyjTlvF+eoxXs6yeFZrMoJE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UupuwWj87vG4+F5CaT84t6PyODFRiAhMfqSWcz6Gd0wa+JfHTIdcQg9hSHBiS0zM5iblFRycuNsYzNt3Bggl7s9slUddaCC32Yl35xHzneakhnmArqBvNWZXmuf8wMx7rNlZ1keQOvGwjcfk0b/8AIcYdMiAM+HoFRLI/OQI6AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 46BKHCsU002183;
	Fri, 12 Jul 2024 05:17:13 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: neil.armstrong@linaro.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        khilman@baylibre.com, jbrunet@baylibre.com,
        martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/2] arm64: dts: amlogic: add support for Radxa ZERO 2 Pro
Date: Fri, 12 Jul 2024 05:16:51 +0900
Message-ID: <20240711201651.26191-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240711201651.26191-1-naoki@radxa.com>
References: <20240711201651.26191-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Radxa ZERO 2 Pro is a ultra tiny high performance SBC[1] using the
Amlogic A311D chip that ships in a number of eMMC configurations:

- Amlogic A311D SoC
- Quad A73 + Dual A53 CPU
- Mali G52-MP4 GPU
- NPU (5 TOPs)
- 4GB LPDDR4 RAM
- 32/64/128GB eMMC
- micro SD Card slot
- Wi-Fi 5 and BT 5.0
- 1x USB 2.0 Type-C port (OTG)
- 1x USB 3.0 Type-C port (Host)
- Micro HDMI 2.0
- MIPI DSI
- MIPI CSI
- 40 Pin GPIO header

[1] https://radxa.com/products/zeros/zero2pro

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/amlogic/Makefile          |   1 +
 .../amlogic/meson-g12b-radxa-zero-2pro.dts    |  14 +
 .../dts/amlogic/meson-g12b-radxa-zero2.dts    | 527 +-----------------
 ...-zero2.dts => meson-g12b-radxa-zero2.dtsi} |   4 -
 4 files changed, 29 insertions(+), 517 deletions(-)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts
 rewrite arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts (98%)
 copy arch/arm64/boot/dts/amlogic/{meson-g12b-radxa-zero2.dts => meson-g12b-radxa-zero2.dtsi} (98%)

diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
index 29417f04f886..4f95721698d0 100644
--- a/arch/arm64/boot/dts/amlogic/Makefile
+++ b/arch/arm64/boot/dts/amlogic/Makefile
@@ -31,6 +31,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-go-ultra.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2-plus.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2l.dtb
+dtb-$(CONFIG_ARCH_MESON) += meson-g12b-radxa-zero-2pro.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-radxa-zero2.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-s922x-bananapi-m2s.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-s922x-khadas-vim3.dtb
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts
new file mode 100644
index 000000000000..62e44de9a550
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero-2pro.dts
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "meson-g12b-radxa-zero2.dtsi"
+
+/ {
+	compatible = "radxa,zero-2pro", "amlogic,a311d", "amlogic,g12b";
+	model = "Radxa ZERO 2 Pro";
+};
+
+&sound {
+	model = "RADXA-ZERO-2PRO";
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
dissimilarity index 98%
index 8445701100d0..b4734cb63aaa 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
@@ -1,513 +1,14 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-/*
- * Copyright (c) 2019 BayLibre, SAS
- * Author: Neil Armstrong <narmstrong@baylibre.com>
- * Copyright (c) 2019 Christian Hewitt <christianshewitt@gmail.com>
- * Copyright (c) 2022 Radxa Limited
- * Author: Yuntian Zhang <yt@radxa.com>
- */
-
-/dts-v1/;
-
-#include "meson-g12b-a311d.dtsi"
-#include <dt-bindings/input/input.h>
-#include <dt-bindings/leds/common.h>
-#include <dt-bindings/gpio/meson-g12a-gpio.h>
-#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
-
-/ {
-	compatible = "radxa,zero2", "amlogic,a311d", "amlogic,g12b";
-	model = "Radxa Zero2";
-
-	aliases {
-		serial0 = &uart_AO;
-		serial2 = &uart_A;
-	};
-
-	chosen {
-		stdout-path = "serial0:115200n8";
-	};
-
-	memory@0 {
-		device_type = "memory";
-		reg = <0x0 0x0 0x0 0x80000000>;
-	};
-
-	fan0: pwm-fan {
-		compatible = "pwm-fan";
-		#cooling-cells = <2>;
-		cooling-levels = <0 64 128 192 255>;
-		pwms = <&pwm_AO_ab 0 40000 0>;
-	};
-
-	gpio-keys-polled {
-		compatible = "gpio-keys-polled";
-		poll-interval = <100>;
-		power-button {
-			label = "power";
-			linux,code = <KEY_POWER>;
-			gpios = <&gpio_ao GPIOAO_3 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
-		};
-	};
-
-	leds {
-		compatible = "gpio-leds";
-
-		led-green {
-			color = <LED_COLOR_ID_GREEN>;
-			function = LED_FUNCTION_STATUS;
-			gpios = <&gpio GPIOA_12 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "heartbeat";
-		};
-	};
-
-	hdmi-connector {
-		compatible = "hdmi-connector";
-		type = "a";
-
-		port {
-			hdmi_connector_in: endpoint {
-				remote-endpoint = <&hdmi_tx_tmds_out>;
-			};
-		};
-	};
-
-	emmc_pwrseq: emmc-pwrseq {
-		compatible = "mmc-pwrseq-emmc";
-		reset-gpios = <&gpio BOOT_12 GPIO_ACTIVE_LOW>;
-	};
-
-	sdio_pwrseq: sdio-pwrseq {
-		compatible = "mmc-pwrseq-simple";
-		reset-gpios = <&gpio GPIOX_6 GPIO_ACTIVE_LOW>;
-		clocks = <&wifi32k>;
-		clock-names = "ext_clock";
-	};
-
-	ao_5v: regulator-ao-5v {
-		compatible = "regulator-fixed";
-		regulator-name = "AO_5V";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		regulator-always-on;
-	};
-
-	vcc_1v8: regulator-vcc-1v8 {
-		compatible = "regulator-fixed";
-		regulator-name = "VCC_1V8";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		vin-supply = <&vcc_3v3>;
-		regulator-always-on;
-	};
-
-	vcc_3v3: regulator-vcc-3v3 {
-		compatible = "regulator-fixed";
-		regulator-name = "VCC_3V3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vddao_3v3>;
-		regulator-always-on;
-		/* FIXME: actually controlled by VDDCPU_B_EN */
-	};
-
-	vddao_1v8: regulator-vddao-1v8 {
-		compatible = "regulator-fixed";
-		regulator-name = "VDDIO_AO1V8";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		vin-supply = <&vddao_3v3>;
-		regulator-always-on;
-	};
-
-	vddao_3v3: regulator-vddao-3v3 {
-		compatible = "regulator-fixed";
-		regulator-name = "VDDAO_3V3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&ao_5v>;
-		regulator-always-on;
-	};
-
-	vddcpu_a: regulator-vddcpu-a {
-		/*
-		 * MP8756GD Regulator.
-		 */
-		compatible = "pwm-regulator";
-
-		regulator-name = "VDDCPU_A";
-		regulator-min-microvolt = <730000>;
-		regulator-max-microvolt = <1022000>;
-
-		pwm-supply = <&ao_5v>;
-
-		pwms = <&pwm_ab 0 1250 0>;
-		pwm-dutycycle-range = <100 0>;
-
-		regulator-boot-on;
-		regulator-always-on;
-	};
-
-	vddcpu_b: regulator-vddcpu-b {
-		/*
-		 * Silergy SY8120B1ABC Regulator.
-		 */
-		compatible = "pwm-regulator";
-
-		regulator-name = "VDDCPU_B";
-		regulator-min-microvolt = <730000>;
-		regulator-max-microvolt = <1022000>;
-
-		pwm-supply = <&ao_5v>;
-
-		pwms = <&pwm_AO_cd 1 1250 0>;
-		pwm-dutycycle-range = <100 0>;
-
-		regulator-boot-on;
-		regulator-always-on;
-	};
-
-	sound {
-		compatible = "amlogic,axg-sound-card";
-		model = "RADXA-ZERO2";
-		audio-aux-devs = <&tdmout_b>;
-		audio-routing = "TDMOUT_B IN 0", "FRDDR_A OUT 1",
-				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
-				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
-				"TDM_B Playback", "TDMOUT_B OUT";
-
-		assigned-clocks = <&clkc CLKID_MPLL2>,
-				  <&clkc CLKID_MPLL0>,
-				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
-		assigned-clock-rates = <294912000>,
-				       <270950400>,
-				       <393216000>;
-
-		dai-link-0 {
-			sound-dai = <&frddr_a>;
-		};
-
-		dai-link-1 {
-			sound-dai = <&frddr_b>;
-		};
-
-		dai-link-2 {
-			sound-dai = <&frddr_c>;
-		};
-
-		/* 8ch hdmi interface */
-		dai-link-3 {
-			sound-dai = <&tdmif_b>;
-			dai-format = "i2s";
-			dai-tdm-slot-tx-mask-0 = <1 1>;
-			dai-tdm-slot-tx-mask-1 = <1 1>;
-			dai-tdm-slot-tx-mask-2 = <1 1>;
-			dai-tdm-slot-tx-mask-3 = <1 1>;
-			mclk-fs = <256>;
-
-			codec {
-				sound-dai = <&tohdmitx TOHDMITX_I2S_IN_B>;
-			};
-		};
-
-		/* hdmi glue */
-		dai-link-4 {
-			sound-dai = <&tohdmitx TOHDMITX_I2S_OUT>;
-
-			codec {
-				sound-dai = <&hdmi_tx>;
-			};
-		};
-	};
-
-	wifi32k: clock-0 {
-		compatible = "pwm-clock";
-		#clock-cells = <0>;
-		clock-frequency = <32768>;
-		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
-	};
-};
-
-&arb {
-	status = "okay";
-};
-
-&cec_AO {
-	pinctrl-0 = <&cec_ao_a_h_pins>;
-	pinctrl-names = "default";
-	status = "disabled";
-	hdmi-phandle = <&hdmi_tx>;
-};
-
-&cecb_AO {
-	pinctrl-0 = <&cec_ao_b_h_pins>;
-	pinctrl-names = "default";
-	status = "okay";
-	hdmi-phandle = <&hdmi_tx>;
-};
-
-&clkc_audio {
-	status = "okay";
-};
-
-&cpu0 {
-	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table_0>;
-	clocks = <&clkc CLKID_CPU_CLK>;
-	clock-latency = <50000>;
-};
-
-&cpu1 {
-	cpu-supply = <&vddcpu_b>;
-	operating-points-v2 = <&cpu_opp_table_0>;
-	clocks = <&clkc CLKID_CPU_CLK>;
-	clock-latency = <50000>;
-};
-
-&cpu100 {
-	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
-	clock-latency = <50000>;
-};
-
-&cpu101 {
-	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
-	clock-latency = <50000>;
-};
-
-&cpu102 {
-	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
-	clock-latency = <50000>;
-};
-
-&cpu103 {
-	cpu-supply = <&vddcpu_a>;
-	operating-points-v2 = <&cpub_opp_table_1>;
-	clocks = <&clkc CLKID_CPUB_CLK>;
-	clock-latency = <50000>;
-};
-
-&cpu_thermal {
-	trips {
-		cpu_active: cpu-active {
-			temperature = <70000>; /* millicelsius */
-			hysteresis = <2000>; /* millicelsius */
-			type = "active";
-		};
-	};
-
-	cooling-maps {
-		map2 {
-			trip = <&cpu_active>;
-			cooling-device = <&fan0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
-		};
-	};
-};
-
-&frddr_a {
-	status = "okay";
-};
-
-&frddr_b {
-	status = "okay";
-};
-
-&frddr_c {
-	status = "okay";
-};
-
-&gpio {
-	gpio-line-names =
-		/* GPIOZ */
-		"PIN_27", "PIN_28", "PIN_7", "PIN_11", "PIN_13", "PIN_15", "PIN_18", "PIN_40",
-		"", "", "", "", "", "", "", "",
-		/* GPIOH */
-		"", "", "", "", "PIN_19", "PIN_21", "PIN_24", "PIN_23",
-		"",
-		/* BOOT */
-		"", "", "", "", "", "", "", "",
-		"", "", "", "", "EMMC_PWRSEQ", "", "", "",
-		/* GPIOC */
-		"", "", "", "", "", "", "SD_CD", "PIN_36",
-		/* GPIOA */
-		"PIN_32", "PIN_12", "PIN_35", "", "", "PIN_38", "", "",
-		"", "", "", "", "LED_GREEN", "PIN_31", "PIN_3", "PIN_5",
-		/* GPIOX */
-		"", "", "", "", "", "", "SDIO_PWRSEQ", "",
-		"", "", "", "", "", "", "", "",
-		"", "BT_SHUTDOWN", "", "";
-};
-
-&gpio_ao {
-	gpio-line-names =
-		/* GPIOAO */
-		"PIN_8", "PIN_10", "", "BTN_POWER", "", "", "", "PIN_29",
-		"PIN_33", "PIN_37", "FAN", "",
-		/* GPIOE */
-		"", "", "";
-};
-
-&hdmi_tx {
-	status = "okay";
-	pinctrl-0 = <&hdmitx_hpd_pins>, <&hdmitx_ddc_pins>;
-	pinctrl-names = "default";
-	hdmi-supply = <&ao_5v>;
-};
-
-&hdmi_tx_tmds_port {
-	hdmi_tx_tmds_out: endpoint {
-		remote-endpoint = <&hdmi_connector_in>;
-	};
-};
-
-&ir {
-	status = "disabled";
-	pinctrl-0 = <&remote_input_ao_pins>;
-	pinctrl-names = "default";
-};
-
-&pwm_ab {
-	pinctrl-0 = <&pwm_a_e_pins>;
-	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
-	status = "okay";
-};
-
-&pwm_ef {
-	pinctrl-0 = <&pwm_e_pins>;
-	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
-	status = "okay";
-};
-
-&pwm_AO_ab {
-	pinctrl-0 = <&pwm_ao_a_pins>;
-	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin0";
-	status = "okay";
-};
-
-&pwm_AO_cd {
-	pinctrl-0 = <&pwm_ao_d_e_pins>;
-	pinctrl-names = "default";
-	clocks = <&xtal>;
-	clock-names = "clkin1";
-	status = "okay";
-};
-
-&saradc {
-	status = "okay";
-	vref-supply = <&vddao_1v8>;
-};
-
-/* SDIO */
-&sd_emmc_a {
-	status = "okay";
-	pinctrl-0 = <&sdio_pins>;
-	pinctrl-1 = <&sdio_clk_gate_pins>;
-	pinctrl-names = "default", "clk-gate";
-	#address-cells = <1>;
-	#size-cells = <0>;
-
-	bus-width = <4>;
-	cap-sd-highspeed;
-	max-frequency = <100000000>;
-
-	non-removable;
-	disable-wp;
-
-	/* WiFi firmware requires power to be kept while in suspend */
-	keep-power-in-suspend;
-
-	mmc-pwrseq = <&sdio_pwrseq>;
-
-	vmmc-supply = <&vddao_3v3>;
-	vqmmc-supply = <&vddao_1v8>;
-
-	brcmf: wifi@1 {
-		reg = <1>;
-		compatible = "brcm,bcm4329-fmac";
-	};
-};
-
-/* SD card */
-&sd_emmc_b {
-	status = "okay";
-	pinctrl-0 = <&sdcard_c_pins>;
-	pinctrl-1 = <&sdcard_clk_gate_c_pins>;
-	pinctrl-names = "default", "clk-gate";
-
-	bus-width = <4>;
-	cap-sd-highspeed;
-	max-frequency = <50000000>;
-	disable-wp;
-
-	cd-gpios = <&gpio GPIOC_6 GPIO_ACTIVE_LOW>;
-	vmmc-supply = <&vddao_3v3>;
-	vqmmc-supply = <&vddao_3v3>;
-};
-
-/* eMMC */
-&sd_emmc_c {
-	status = "okay";
-	pinctrl-0 = <&emmc_ctrl_pins>, <&emmc_data_8b_pins>, <&emmc_ds_pins>;
-	pinctrl-1 = <&emmc_clk_gate_pins>;
-	pinctrl-names = "default", "clk-gate";
-
-	bus-width = <8>;
-	cap-mmc-highspeed;
-	mmc-ddr-1_8v;
-	mmc-hs200-1_8v;
-	max-frequency = <200000000>;
-	disable-wp;
-
-	mmc-pwrseq = <&emmc_pwrseq>;
-	vmmc-supply = <&vcc_3v3>;
-	vqmmc-supply = <&vcc_1v8>;
-};
-
-&tdmif_b {
-	status = "okay";
-};
-
-&tdmout_b {
-	status = "okay";
-};
-
-&tohdmitx {
-	status = "okay";
-};
-
-&uart_A {
-	status = "okay";
-	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
-	pinctrl-names = "default";
-	uart-has-rtscts;
-
-	bluetooth {
-		compatible = "brcm,bcm43438-bt";
-		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
-		max-speed = <2000000>;
-		clocks = <&wifi32k>;
-		clock-names = "lpo";
-	};
-};
-
-&uart_AO {
-	status = "okay";
-	pinctrl-0 = <&uart_ao_a_pins>;
-	pinctrl-names = "default";
-};
-
-&usb {
-	status = "okay";
-};
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "meson-g12b-radxa-zero2.dtsi"
+
+/ {
+	compatible = "radxa,zero2", "amlogic,a311d", "amlogic,g12b";
+	model = "Radxa ZERO2";
+};
+
+&sound {
+	model = "RADXA-ZERO2";
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dtsi
similarity index 98%
copy from arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
copy to arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dtsi
index 8445701100d0..3c30505d1440 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dtsi
@@ -16,9 +16,6 @@
 #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
 
 / {
-	compatible = "radxa,zero2", "amlogic,a311d", "amlogic,g12b";
-	model = "Radxa Zero2";
-
 	aliases {
 		serial0 = &uart_AO;
 		serial2 = &uart_A;
@@ -169,7 +166,6 @@ vddcpu_b: regulator-vddcpu-b {
 
 	sound {
 		compatible = "amlogic,axg-sound-card";
-		model = "RADXA-ZERO2";
 		audio-aux-devs = <&tdmout_b>;
 		audio-routing = "TDMOUT_B IN 0", "FRDDR_A OUT 1",
 				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
-- 
2.43.0


