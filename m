Return-Path: <devicetree+bounces-142764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46AB8A26512
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 21:47:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF86316A666
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 20:47:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B80F420E709;
	Mon,  3 Feb 2025 20:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="Y1XzkP32"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A504200BB4;
	Mon,  3 Feb 2025 20:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738615625; cv=none; b=FnBxY8bsXaKHG2HLiiSf4u5ZJRRHYByrjwFiXOdMOgmd4zlVeLIMOHJD7jMfzTm1dF/8kF2wM6kEnEIhCybWL1dMqNOyNnM7JS6d2p5qEEjfsZH4iML8Iiu2G5lqcGmsg5+0y0FDjKbHtN5/EEY+jJKPdr65+4o8FpjZ0znvZcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738615625; c=relaxed/simple;
	bh=Ee/Xkbd5FbfzaCsyA0b3nWgU6/EsIkYJ9BmVvjfq55E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=A7SnvW7vv906elGAR4EMPOtXDR2LjQ9Pc1VXb/seiu9d+jq2Qg04AlrqYpWyFb0uyfN/Tyd9keaUwldB7ndk2GGtDa832+gCROoVvofZkDSTJOODMGjnnyhoP2nsqNCEdajpZAOPoamn0JFDGu+Wfg3xBmHsaRPllRCiSQBKDeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=Y1XzkP32; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id E8C6725B6C;
	Mon,  3 Feb 2025 21:47:01 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CSb0ZbmOazEI; Mon,  3 Feb 2025 21:47:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1738615620; bh=Ee/Xkbd5FbfzaCsyA0b3nWgU6/EsIkYJ9BmVvjfq55E=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=Y1XzkP32r9OV74/Qtr5gElI5Ps6CXEASmPoDVJ5NZFJFtRvBtHkrUfQSYGFQIoBEN
	 AhRTCYipX25r8nO2tLHqtMcRPbWtWDeUgj5D8U+KqCFvvezVkTEkB7hVZhnOp/f+OZ
	 gZVJ06frq4E+QMnbAvYd67Z2od/5cIqFd1aF2MD57gbV7fRVrOPROkpJKyxAH5OV1j
	 +uaDhrCV2QZxHDZax7qp+bq6Su54O3ANNw0f1urdS6T4SaweIpWnrvYE6WIIkQuo/r
	 k523Ga3O1fXSz32tQYpLujCIuXz/GhTBoczkqvlo1FKgoiwVQku0UT2oZ5JFu1HHBW
	 PAnRjWlqD/y1w==
From: Kaustabh Chakraborty <kauschluss@disroot.org>
Date: Tue, 04 Feb 2025 02:16:11 +0530
Subject: [PATCH v2 3/5] arm64: dts: exynos: add initial support for Samsung
 Galaxy J7 Prime
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250204-exynos7870-v2-3-56313165ef0c@disroot.org>
References: <20250204-exynos7870-v2-0-56313165ef0c@disroot.org>
In-Reply-To: <20250204-exynos7870-v2-0-56313165ef0c@disroot.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Conor Dooley <conor@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: Sergey Lisov <sleirsgoevy@gmail.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738615584; l=17267;
 i=kauschluss@disroot.org; s=20250202; h=from:subject:message-id;
 bh=Ee/Xkbd5FbfzaCsyA0b3nWgU6/EsIkYJ9BmVvjfq55E=;
 b=0PELAj0fssJgDjZuGMmh9OmV5pnzirYMDDyZpt6YMPcDvpG9vyxIwze5h7lOyE4q3YIU6fNpu
 4ZkY7WCi5XGBR3m81ETGinRYJKEXJRTmlOOTPSuIcePeCK8jXYUj5Bt
X-Developer-Key: i=kauschluss@disroot.org; a=ed25519;
 pk=h2xeR+V2I1+GrfDPAhZa3M+NWA0Cnbdkkq1bH3ct1hE=

Add initial devicetree support for Samsung Galaxy J7 Prime
(codename: on7xelte), an Exynos7870 device.

Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
---
 arch/arm64/boot/dts/exynos/Makefile                |   1 +
 arch/arm64/boot/dts/exynos/exynos7870-on7xelte.dts | 654 +++++++++++++++++++++
 2 files changed, 655 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/Makefile b/arch/arm64/boot/dts/exynos/Makefile
index f6f4bc650a94db0bc6bc017432e2e3dbba90e8c3..a8d78d2add05ecf688ffa3a32aa5b8d1a48faf81 100644
--- a/arch/arm64/boot/dts/exynos/Makefile
+++ b/arch/arm64/boot/dts/exynos/Makefile
@@ -5,6 +5,7 @@ dtb-$(CONFIG_ARCH_EXYNOS) += \
 	exynos5433-tm2.dtb		\
 	exynos5433-tm2e.dtb		\
 	exynos7-espresso.dtb		\
+	exynos7870-on7xelte.dtb		\
 	exynos7885-jackpotlte.dtb	\
 	exynos850-e850-96.dtb		\
 	exynos8895-dreamlte.dtb		\
diff --git a/arch/arm64/boot/dts/exynos/exynos7870-on7xelte.dts b/arch/arm64/boot/dts/exynos/exynos7870-on7xelte.dts
new file mode 100644
index 0000000000000000000000000000000000000000..fc4e34fb2f70fbf9deb5572c58453c8466702aa2
--- /dev/null
+++ b/arch/arm64/boot/dts/exynos/exynos7870-on7xelte.dts
@@ -0,0 +1,654 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Samsung Galaxy J7 Prime (on7xelte) device tree source
+ *
+ * Copyright (c) 2015 Samsung Electronics Co., Ltd.
+ */
+
+/dts-v1/;
+#include "exynos7870.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+
+/ {
+	model = "Samsung Galaxy J7 Prime";
+	compatible = "samsung,on7xelte", "samsung,exynos7870";
+	chassis-type = "handset";
+
+	aliases {
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
+		mmc2 = &mmc2;
+		serial0 = &serial0;
+		serial1 = &serial1;
+		serial2 = &serial2;
+	};
+
+	chosen {
+		#address-cells = <2>;
+		#size-cells = <1>;
+		ranges;
+
+		stdout-path = &serial2;
+
+		framebuffer@67000000 {
+			compatible = "simple-framebuffer";
+			reg = <0x0 0x67000000 (1080 * 1920 * 4)>;
+			width = <1080>;
+			height = <1920>;
+			stride = <(1080 * 4)>;
+			format = "a8r8g8b8";
+		};
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <1>;
+		ranges;
+
+		ramoops@46e00000 {
+			compatible = "ramoops";
+			reg = <0x0 0x46e00000 0x8000>;
+			console-size = <0x4000>;
+			pmsg-size = <0x4000>;
+		};
+
+		framebuffer@67000000 {
+			reg = <0x0 0x67000000 (1080 * 1920 * 4)>;
+			no-map;
+		};
+	};
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0x0 0x40000000 0x3e400000>;
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x0 0x80000000 0x80000000>;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		label = "GPIO Keys";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&key_power &key_volup &key_voldown &key_home>;
+
+		key-power {
+			label = "Power Key";
+			gpios = <&gpa0 0 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_POWER>;
+		};
+
+		key-volup {
+			label = "Volume Up Key";
+			gpios = <&gpa2 0 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_VOLUMEUP>;
+		};
+
+		key-voldown {
+			label = "Volume Down Key";
+			gpios = <&gpa2 1 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_VOLUMEDOWN>;
+		};
+
+		key-home {
+			label = "Home Key";
+			gpios = <&gpa1 7 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_HOMEPAGE>;
+		};
+	};
+
+	vibrator {
+		compatible = "regulator-haptic";
+		haptic-supply = <&vdd_ldo32>;
+		min-microvolt = <3300000>;
+		max-microvolt = <3300000>;
+	};
+
+	pwrseq_mmc1: pwrseq-mmc1 {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&gpd3 6 GPIO_ACTIVE_LOW>;
+	};
+
+	/* mmc2: vmmc */
+	vdd_fixed_mmc2: regulator-fixed-mmc2 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_fixed_mmc2";
+		regulator-max-microvolt = <2800000>;
+		regulator-min-microvolt = <2800000>;
+		gpio = <&gpc0 0 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+};
+
+&gpu {
+	status = "okay";
+};
+
+&pinctrl0 {
+	key_power: key-power-pins {
+		samsung,pins = "gpa0-0";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_EINT>;
+		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS5433_PIN_DRV_FAST_SR1>;
+	};
+
+	key_volup: key-volup-pins {
+		samsung,pins = "gpa2-0";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_EINT>;
+		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS5433_PIN_DRV_FAST_SR1>;
+	};
+
+	key_voldown: key-voldown-pins {
+		samsung,pins = "gpa2-1";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_EINT>;
+		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS5433_PIN_DRV_FAST_SR1>;
+	};
+
+	key_home: key-home-pins {
+		samsung,pins = "gpa1-7";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_EINT>;
+		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS5433_PIN_DRV_FAST_SR1>;
+	};
+
+	dwmmc2_irq: dwmmc2-irq-pins {
+		samsung,pins = "gpa0-1";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_EINT>;
+		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS5433_PIN_DRV_FAST_SR1>;
+	};
+
+	pmic_irq: pmic-irq-pins {
+		samsung,pins = "gpa0-2";
+		samsung,pin-pud = <EXYNOS_PIN_PULL_UP>;
+		samsung,pin-drv = <EXYNOS5433_PIN_DRV_FAST_SR4>;
+	};
+
+	fuel_irq: fuel-irq-pins {
+		samsung,pins = "gpa0-3";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_INPUT>;
+		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS5433_PIN_DRV_FAST_SR1>;
+	};
+
+	tkey_irq: tkey-irq-pins {
+		samsung,pins = "gpa1-4";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_EINT>;
+		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS5433_PIN_DRV_FAST_SR1>;
+	};
+
+	proxm_irq: proxm-irq-pins {
+		samsung,pins = "gpa0-5";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_EINT>;
+		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS5433_PIN_DRV_FAST_SR1>;
+	};
+
+	accel_irq: accel-irq-pins {
+		samsung,pins = "gpa2-3";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_EINT>;
+		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS5433_PIN_DRV_FAST_SR1>;
+	};
+
+	wlan_hostwake: wlan-hostwake-pins {
+		samsung,pins = "gpa2-2";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
+		samsung,pin-pud = <EXYNOS_PIN_PULL_UP>;
+	};
+};
+
+&pinctrl6 {
+	bt_enable: bt-enable-pins {
+		samsung,pins = "gpd4-1";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
+		samsung,pin-con-pdn = <EXYNOS_PIN_PDN_PREV>;
+		samsung,pin-pud-pdn = <EXYNOS_PIN_PULL_NONE>;
+		samsung,pin-pud = <EXYNOS_PIN_PULL_DOWN>;
+	};
+
+	wlan_enable: wlan-enable-pins {
+		samsung,pins = "gpd3-6";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
+		samsung,pin-con-pdn = <EXYNOS_PIN_PDN_PREV>;
+		samsung,pin-pud-pdn = <EXYNOS_PIN_PULL_NONE>;
+		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS5433_PIN_DRV_FAST_SR4>;
+		samsung,pin-val = <0>;
+	};
+};
+
+&pinctrl7 {
+	touch_irq: touch-irq-pins {
+		samsung,pins = "gpc3-2";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_EINT>;
+		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
+		samsung,pin-drv = <EXYNOS5433_PIN_DRV_FAST_SR1>;
+	};
+};
+
+&i2c3 {
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	samsung,i2c-sda-delay = <100>;
+	samsung,i2c-max-bus-freq = <400000>;
+
+	touchscreen@70 {
+		compatible = "syna,rmi4-i2c";
+		reg = <0x70>;
+		interrupt-parent = <&gpc3>;
+		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&touch_irq>;
+
+		syna,reset-delay-ms = <200>;
+		syna,startup-delay-ms = <200>;
+
+		rmi4-f01@1 {
+			reg = <0x01>;
+			syna,nosleep-mode = <1>;
+		};
+
+		rmi4-f12@12 {
+			reg = <0x12>;
+			syna,sensor-type = <1>;
+			syna,rezero-wait-ms = <200>;
+			syna,clip-x-high = <1079>;
+			syna,clip-y-high = <1919>;
+			touchscreen-x-mm = <68>;
+			touchscreen-y-mm = <121>;
+		};
+	};
+};
+
+&i2c5 {
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	samsung,i2c-sda-delay = <100>;
+	samsung,i2c-max-bus-freq = <400000>;
+
+	accelerometer@1d {
+		compatible = "st,lis2hh12";
+		reg = <0x1d>;
+		interrupt-parent = <&gpa2>;
+		interrupts = <3 IRQ_TYPE_EDGE_RISING>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&accel_irq>;
+
+		mount-matrix = "1",  "0",  "0",
+			       "0", "-1",  "0",
+			       "0",  "0", "-1";
+
+		st,drdy-int-pin = <1>;
+	};
+};
+
+&i2c6 {
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	samsung,i2c-sda-delay = <100>;
+	samsung,i2c-max-bus-freq = <400000>;
+
+	proximity@48 {
+		compatible = "sensortek,stk3013", "sensortek,stk3310";
+		reg = <0x48>;
+		interrupt-parent = <&gpa0>;
+		interrupts = <5 IRQ_TYPE_EDGE_BOTH>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&proxm_irq>;
+
+		proximity-near-level = <25>;
+	};
+};
+
+&hsi2c0 {
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	pmic@66 {
+		compatible = "samsung,s2mpu05-pmic";
+		reg = <0x66>;
+
+		interrupt-parent = <&gpa0>;
+		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_irq>;
+
+		regulators {
+			vdd_buck1: BUCK1 {
+				regulator-name = "BUCK1";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdd_buck2: BUCK2 {
+				regulator-name = "BUCK2";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdd_buck3: BUCK3 {
+				regulator-name = "BUCK3";
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdd_buck4: BUCK4 {
+				regulator-name = "BUCK4";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1500000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdd_buck5: BUCK5 {
+				regulator-name = "BUCK5";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <2100000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdd_ldo1: LDO1 {
+				regulator-name = "vdd_ldo1";
+				regulator-min-microvolt = <650000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* mmc2: vqmmc */
+			vdd_ldo2: LDO2 {
+				regulator-name = "vdd_ldo2";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-ramp-delay = <12000>;
+			};
+
+			vdd_ldo3: LDO3 {
+				regulator-name = "vdd_ldo3";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <2375000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdd_ldo4: LDO4 {
+				regulator-name = "vdd_ldo4";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdd_ldo5: LDO5 {
+				regulator-name = "vdd_ldo5";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdd_ldo6: LDO6 {
+				regulator-name = "vdd_ldo6";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdd_ldo7: LDO7 {
+				regulator-name = "vdd_ldo7";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <2375000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdd_ldo8: LDO8 {
+				regulator-name = "vdd_ldo8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3375000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdd_ldo9: LDO9 {
+				regulator-name = "vdd_ldo9";
+				regulator-min-microvolt = <650000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdd_ldo10: LDO10 {
+				regulator-name = "vdd_ldo10";
+				regulator-min-microvolt = <650000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdd_ldo25: LDO25 {
+				regulator-name = "vdd_ldo25";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <2375000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* mmc0: vmmc */
+			vdd_ldo26: LDO26 {
+				regulator-name = "vdd_ldo26";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3375000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* mmc0: vqmmc */
+			vdd_ldo27: LDO27 {
+				regulator-name = "vdd_ldo27";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <2375000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdd_ldo29: LDO29 {
+				regulator-name = "vdd_ldo29";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdd_ldo30: LDO30 {
+				regulator-name = "vdd_ldo30";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdd_ldo31: LDO31 {
+				regulator-name = "vdd_ldo31";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			/* vibrator: haptic */
+			vdd_ldo32: LDO32 {
+				regulator-name = "vdd_ldo32";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-ramp-delay = <12000>;
+			};
+
+			vdd_ldo33: LDO33 {
+				regulator-name = "vdd_ldo33";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdd_ldo34: LDO34 {
+				regulator-name = "vdd_ldo34";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-ramp-delay = <12000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdd_ldo35: LDO35 {
+				regulator-name = "vdd_ldo35";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+};
+
+&serial0 {
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43430a1-bt";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_btwake &bt_hostwake &bt_enable>;
+
+		device-wakeup-gpios = <&gpa1 2 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpa1 6 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpd4 1 GPIO_ACTIVE_HIGH>;
+
+		max-speed = <3000000>;
+	};
+};
+
+&serial2 {
+	status = "okay";
+};
+
+&mmc0 {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&sd0_clk &sd0_cmd &sd0_rdqs &sd0_bus1 &sd0_bus4 &sd0_bus8>;
+
+	vmmc-supply = <&vdd_ldo26>;
+	vqmmc-supply = <&vdd_ldo27>;
+
+	fifo-depth = <64>;
+	samsung,dw-mshc-ciu-div = <3>;
+	samsung,dw-mshc-sdr-timing = <0 4>;
+	samsung,dw-mshc-ddr-timing = <2 4>;
+	non-removable;
+};
+
+&mmc1 {
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&sd1_clk &sd1_cmd &sd1_bus1 &sd1_bus4>;
+
+	mmc-pwrseq = <&pwrseq_mmc1>;
+
+	bus-width = <4>;
+	fifo-depth = <64>;
+	samsung,dw-mshc-ciu-div = <3>;
+	samsung,dw-mshc-sdr-timing = <0 3>;
+	samsung,dw-mshc-ddr-timing = <1 2>;
+	non-removable;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+
+	wifi@1 {
+		compatible = "brcm,bcm43430a1-fmac", "brcm,bcm4329-fmac";
+		reg = <0x1>;
+		interrupt-names = "host-wake";
+		interrupt-parent = <&gpa2>;
+		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
+
+		reset-gpios = <&gpd3 6 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&mmc2 {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&sd2_clk &sd2_cmd &sd2_bus1 &sd2_bus4 &dwmmc2_irq>;
+
+	vmmc-supply = <&vdd_fixed_mmc2>;
+	vqmmc-supply = <&vdd_ldo2>;
+
+	bus-width = <4>;
+	fifo-depth = <64>;
+	samsung,dw-mshc-ciu-div = <3>;
+	samsung,dw-mshc-sdr-timing = <0 3>;
+	samsung,dw-mshc-ddr-timing = <1 2>;
+	non-removable;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	disable-wp;
+};
+
+&usbdrd {
+	status = "okay";
+};

-- 
2.48.1


