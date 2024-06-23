Return-Path: <devicetree+bounces-79009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94823913DFC
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 22:15:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DF82FB2149A
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 20:15:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E63B1849E6;
	Sun, 23 Jun 2024 20:15:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C41918411F
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 20:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719173713; cv=none; b=pHtP4Z1XMgkfAUUzHHPe2YunEDdCX32gWxtuyV8IbqXs2+8EQyuveHPeJvMR/ZkSEGxa0rm29qDCv+6Q51revf4i5DcVzB+UPS0xxSqY06GIMhAzYp4AlPQpYEkUU7ZX1SsuKGY16XSKlHAUhBUDJXhk4qKnWeiWllU2rRtU6bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719173713; c=relaxed/simple;
	bh=jFPG7itI+0VYJgJgjq/fhzvNs/0yv7t1RPO+7lpWa7A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jwb9tU2QChYQ4YpY3ayjcKLbhcCrTyepXeyrUjmjDZHcARdlWmCYuWlLx7T1JJF4dudUWujzvttEuCB7Ygt2WgkCn9joMCxOQz0d1JzgCJpbwABVb6Kc5vfUeHxdJgGpDXDgYUE3Dn2aa8uT+CUG3dheprXZ1mKtSLc++V7276k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45NKEMoc007026;
	Mon, 24 Jun 2024 05:14:23 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 2/3] arm64: dts: rockchip: prepare common .dtsi for Radxa ROCK Pi E
Date: Mon, 24 Jun 2024 05:14:14 +0900
Message-ID: <20240623201415.3205-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240623201415.3205-1-naoki@radxa.com>
References: <20240623201415.3205-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Radxa ROCK Pi E v1.2x and ROCK Pi E v3.0 share most of their parts.
prepare rk3328-rock-pi-e-base.dtsi as a common dtsi for both boards.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Changes in v3:
- move mmc aliases from base to board dts. no functional change
Changes in v2:
- include changes for rk3328-rock-pi-e.dts to make dtb buildable
---
 .../dts/rockchip/rk3328-rock-pi-e-base.dtsi   | 440 ++++++++++++++++++
 .../boot/dts/rockchip/rk3328-rock-pi-e.dts    | 432 +----------------
 2 files changed, 441 insertions(+), 431 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-base.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-base.dtsi
new file mode 100644
index 000000000000..1da518fd31fd
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-base.dtsi
@@ -0,0 +1,440 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * (C) Copyright 2020 Chen-Yu Tsai <wens@csie.org>
+ *
+ * Based on ./rk3328-rock64.dts, which is
+ *
+ * Copyright (c) 2017 PINE64
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+
+#include "rk3328.dtsi"
+
+/ {
+	aliases {
+		ethernet0 = &gmac2io;
+		ethernet1 = &gmac2phy;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 0>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1750000>;
+
+		/* This button is unpopulated out of the factory. */
+		button-recovery {
+			label = "Recovery";
+			linux,code = <KEY_VENDOR>;
+			press-threshold-microvolt = <10000>;
+		};
+	};
+
+	gmac_clkin: external-gmac-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "gmac_clkin";
+		#clock-cells = <0>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = <&led_pin>;
+		pinctrl-names = "default";
+
+		led-0 {
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	vcc_sd: sdmmc-regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc0m1_pin>;
+		regulator-name = "vcc_sd";
+		regulator-boot-on;
+		vin-supply = <&vcc_io>;
+	};
+
+	vcc_host_5v: vcc-host-5v-regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio3 RK_PA7 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb30_host_drv>;
+		enable-active-high;
+		regulator-name = "vcc_host_5v";
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc_sys>;
+	};
+
+	vcc_sys: vcc-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vcc_wifi: vcc-wifi-regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_en>;
+		regulator-name = "vcc_wifi";
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc_io>;
+	};
+};
+
+&analog_sound {
+	status = "okay";
+};
+
+&codec {
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
+&emmc {
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	mmc-ddr-1_8v;
+	mmc-hs200-1_8v;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_clk>, <&emmc_cmd>, <&emmc_bus8>;
+	vmmc-supply = <&vcc_io>;
+	vqmmc-supply = <&vcc18_emmc>;
+	status = "okay";
+};
+
+&gmac2io {
+	assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
+	assigned-clock-parents = <&gmac_clkin>, <&gmac_clkin>;
+	clock_in_out = "input";
+	phy-handle = <&rtl8211>;
+	phy-mode = "rgmii";
+	phy-supply = <&vcc_io>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmiim1_pins>;
+	snps,aal;
+	snps,rxpbl = <0x4>;
+	snps,txpbl = <0x4>;
+	tx_delay = <0x26>;
+	rx_delay = <0x11>;
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		rtl8211: ethernet-phy@1 {
+			reg = <1>;
+			pinctrl-0 = <&eth_phy_int_pin>, <&eth_phy_reset_pin>;
+			pinctrl-names = "default";
+			interrupt-parent = <&gpio1>;
+			interrupts = <24 IRQ_TYPE_LEVEL_LOW>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <50000>;
+			reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&gmac2phy {
+	status = "okay";
+};
+
+&gpio0 {
+	gpio-line-names =
+		/* GPIO0_A0 - A7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO0_B0 - B7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO0_C0 - C7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO0_D0 - D7 */
+		"", "", "", "pin-15 [GPIO0_D3]", "", "", "", "";
+};
+
+&gpio1 {
+	gpio-line-names =
+		/* GPIO1_A0 - A7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO1_B0 - B7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO1_C0 - C7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO1_D0 - D7 */
+		"", "", "", "", "pin-07 [GPIO1_D4]", "", "", "";
+};
+
+&gpio2 {
+	gpio-line-names =
+		/* GPIO2_A0 - A7 */
+		"pin-08 [GPIO2_A0]", "pin-10 [GPIO2_A1]", "pin-11 [GPIO2_A2]",
+		"pin-13 [GPIO2-A3]", "pin-27 [GPIO2_A4]", "pin-28 [GPIO2_A5]",
+		"pin-33 [GPIO2_A6]", "",
+		/* GPIO2_B0 - B7 */
+		"", "", "", "", "pin-26 [GPIO2_B4]", "", "", "pin-36 [GPIO2_B7]",
+		/* GPIO2_C0 - C7 */
+		"pin-32 [GPIO2_C0]", "pin-35 [GPIO2_C1]", "pin-12 [GPIO2_C2]",
+		"pin-38 [GPIO2_C3]", "pin-29 [GPIO2_C4]", "pin-31 [GPIO2_C5]",
+		"pin-37 [GPIO2_C6]", "pin-40 [GPIO2_C7]",
+		/* GPIO2_D0 - D7 */
+		"", "", "", "", "", "", "", "";
+};
+
+&gpio3 {
+	gpio-line-names =
+		/* GPIO3_A0 - A7 */
+		"pin-23 [GPIO3_A0]", "pin-19 [GPIO3_A1]", "pin-21 [GPIO3_A2]",
+		"", "pin-03 [GPIO3_A4]", "", "pin-05 [GPIO3_A6]", "",
+		/* GPIO3_B0 - B7 */
+		"pin-24 [GPIO3_B0]", "", "", "", "", "", "", "",
+		/* GPIO3_C0 - C7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO3_D0 - D7 */
+		"", "", "", "", "", "", "", "";
+};
+
+&i2c1 {
+	status = "okay";
+
+	rk805: pmic@18 {
+		compatible = "rockchip,rk805";
+		reg = <0x18>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <1>;
+		clock-output-names = "xin32k", "rk805-clkout2";
+		gpio-controller;
+		#gpio-cells = <2>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int_l>;
+		rockchip,system-power-controller;
+		wakeup-source;
+
+		vcc1-supply = <&vcc_sys>;
+		vcc2-supply = <&vcc_sys>;
+		vcc3-supply = <&vcc_sys>;
+		vcc4-supply = <&vcc_sys>;
+		vcc5-supply = <&vcc_io>;
+		vcc6-supply = <&vcc_sys>;
+
+		regulators {
+			vdd_log: DCDC_REG1 {
+				regulator-name = "vdd_log";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <712500>;
+				regulator-max-microvolt = <1450000>;
+				regulator-ramp-delay = <12500>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1000000>;
+				};
+			};
+
+			vdd_arm: DCDC_REG2 {
+				regulator-name = "vdd_arm";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <712500>;
+				regulator-max-microvolt = <1450000>;
+				regulator-ramp-delay = <12500>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <950000>;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_io: DCDC_REG4 {
+				regulator-name = "vcc_io";
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
+			vcc_18: LDO_REG1 {
+				regulator-name = "vcc_18";
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
+			vcc18_emmc: LDO_REG2 {
+				regulator-name = "vcc18_emmc";
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
+			vdd_10: LDO_REG3 {
+				regulator-name = "vdd_10";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1000000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1000000>;
+				};
+			};
+		};
+	};
+};
+
+&i2s1 {
+	status = "okay";
+};
+
+&io_domains {
+	pmuio-supply = <&vcc_io>;
+	vccio1-supply = <&vcc_io>;
+	vccio2-supply = <&vcc18_emmc>;
+	vccio3-supply = <&vcc_io>;
+	vccio4-supply = <&vcc_io>;
+	vccio5-supply = <&vcc_io>;
+	vccio6-supply = <&vcc_io>;
+	status = "okay";
+};
+
+&pinctrl {
+	ephy {
+		eth_phy_int_pin: eth-phy-int-pin {
+			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		eth_phy_reset_pin: eth-phy-reset-pin {
+			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	leds {
+		led_pin: led-pin {
+			rockchip,pins = <3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		pmic_int_l: pmic-int-l {
+			rockchip,pins = <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	usb3 {
+		usb30_host_drv: usb30-host-drv {
+			rockchip,pins = <3 RK_PA7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	wifi {
+		wifi_en: wifi-en {
+			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	disable-wp;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_clk>, <&sdmmc0_cmd>, <&sdmmc0_dectn>, <&sdmmc0_bus4>;
+	vmmc-supply = <&vcc_sd>;
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcc_18>;
+	status = "okay";
+};
+
+&tsadc {
+	status = "okay";
+};
+
+&u2phy {
+	status = "okay";
+};
+
+&u2phy_host {
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usbdrd3 {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index a608a219543e..cbeb2e567bf9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -1,445 +1,15 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-/*
- * (C) Copyright 2020 Chen-Yu Tsai <wens@csie.org>
- *
- * Based on ./rk3328-rock64.dts, which is
- *
- * Copyright (c) 2017 PINE64
- */
 
 /dts-v1/;
 
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/input/input.h>
-#include <dt-bindings/leds/common.h>
-#include <dt-bindings/pinctrl/rockchip.h>
-
-#include "rk3328.dtsi"
+#include "rk3328-rock-pi-e-base.dtsi"
 
 / {
 	model = "Radxa ROCK Pi E";
 	compatible = "radxa,rockpi-e", "rockchip,rk3328";
 
 	aliases {
-		ethernet0 = &gmac2io;
-		ethernet1 = &gmac2phy;
 		mmc0 = &sdmmc;
 		mmc1 = &emmc;
 	};
-
-	chosen {
-		stdout-path = "serial2:1500000n8";
-	};
-
-	adc-keys {
-		compatible = "adc-keys";
-		io-channels = <&saradc 0>;
-		io-channel-names = "buttons";
-		keyup-threshold-microvolt = <1750000>;
-
-		/* This button is unpopulated out of the factory. */
-		button-recovery {
-			label = "Recovery";
-			linux,code = <KEY_VENDOR>;
-			press-threshold-microvolt = <10000>;
-		};
-	};
-
-	gmac_clkin: external-gmac-clock {
-		compatible = "fixed-clock";
-		clock-frequency = <125000000>;
-		clock-output-names = "gmac_clkin";
-		#clock-cells = <0>;
-	};
-
-	leds {
-		compatible = "gpio-leds";
-		pinctrl-0 = <&led_pin>;
-		pinctrl-names = "default";
-
-		led-0 {
-			color = <LED_COLOR_ID_BLUE>;
-			gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
-			linux,default-trigger = "heartbeat";
-		};
-	};
-
-	vcc_sd: sdmmc-regulator {
-		compatible = "regulator-fixed";
-		gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&sdmmc0m1_pin>;
-		regulator-name = "vcc_sd";
-		regulator-boot-on;
-		vin-supply = <&vcc_io>;
-	};
-
-	vcc_host_5v: vcc-host-5v-regulator {
-		compatible = "regulator-fixed";
-		gpio = <&gpio3 RK_PA7 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&usb30_host_drv>;
-		enable-active-high;
-		regulator-name = "vcc_host_5v";
-		regulator-always-on;
-		regulator-boot-on;
-		vin-supply = <&vcc_sys>;
-	};
-
-	vcc_sys: vcc-sys {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-	};
-
-	vcc_wifi: vcc-wifi-regulator {
-		compatible = "regulator-fixed";
-		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&wifi_en>;
-		regulator-name = "vcc_wifi";
-		regulator-always-on;
-		regulator-boot-on;
-		vin-supply = <&vcc_io>;
-	};
-};
-
-&analog_sound {
-	status = "okay";
-};
-
-&codec {
-	status = "okay";
-};
-
-&cpu0 {
-	cpu-supply = <&vdd_arm>;
-};
-
-&cpu1 {
-	cpu-supply = <&vdd_arm>;
-};
-
-&cpu2 {
-	cpu-supply = <&vdd_arm>;
-};
-
-&cpu3 {
-	cpu-supply = <&vdd_arm>;
-};
-
-&emmc {
-	bus-width = <8>;
-	cap-mmc-highspeed;
-	mmc-ddr-1_8v;
-	mmc-hs200-1_8v;
-	non-removable;
-	pinctrl-names = "default";
-	pinctrl-0 = <&emmc_clk>, <&emmc_cmd>, <&emmc_bus8>;
-	vmmc-supply = <&vcc_io>;
-	vqmmc-supply = <&vcc18_emmc>;
-	status = "okay";
-};
-
-&gmac2io {
-	assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
-	assigned-clock-parents = <&gmac_clkin>, <&gmac_clkin>;
-	clock_in_out = "input";
-	phy-handle = <&rtl8211>;
-	phy-mode = "rgmii";
-	phy-supply = <&vcc_io>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&rgmiim1_pins>;
-	snps,aal;
-	snps,rxpbl = <0x4>;
-	snps,txpbl = <0x4>;
-	tx_delay = <0x26>;
-	rx_delay = <0x11>;
-	status = "okay";
-
-	mdio {
-		compatible = "snps,dwmac-mdio";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		rtl8211: ethernet-phy@1 {
-			reg = <1>;
-			pinctrl-0 = <&eth_phy_int_pin>, <&eth_phy_reset_pin>;
-			pinctrl-names = "default";
-			interrupt-parent = <&gpio1>;
-			interrupts = <24 IRQ_TYPE_LEVEL_LOW>;
-			reset-assert-us = <10000>;
-			reset-deassert-us = <50000>;
-			reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
-		};
-	};
-};
-
-&gmac2phy {
-	status = "okay";
-};
-
-&gpio0 {
-	gpio-line-names =
-		/* GPIO0_A0 - A7 */
-		"", "", "", "", "", "", "", "",
-		/* GPIO0_B0 - B7 */
-		"", "", "", "", "", "", "", "",
-		/* GPIO0_C0 - C7 */
-		"", "", "", "", "", "", "", "",
-		/* GPIO0_D0 - D7 */
-		"", "", "", "pin-15 [GPIO0_D3]", "", "", "", "";
-};
-
-&gpio1 {
-	gpio-line-names =
-		/* GPIO1_A0 - A7 */
-		"", "", "", "", "", "", "", "",
-		/* GPIO1_B0 - B7 */
-		"", "", "", "", "", "", "", "",
-		/* GPIO1_C0 - C7 */
-		"", "", "", "", "", "", "", "",
-		/* GPIO1_D0 - D7 */
-		"", "", "", "", "pin-07 [GPIO1_D4]", "", "", "";
-};
-
-&gpio2 {
-	gpio-line-names =
-		/* GPIO2_A0 - A7 */
-		"pin-08 [GPIO2_A0]", "pin-10 [GPIO2_A1]", "pin-11 [GPIO2_A2]",
-		"pin-13 [GPIO2-A3]", "pin-27 [GPIO2_A4]", "pin-28 [GPIO2_A5]",
-		"pin-33 [GPIO2_A6]", "",
-		/* GPIO2_B0 - B7 */
-		"", "", "", "", "pin-26 [GPIO2_B4]", "", "", "pin-36 [GPIO2_B7]",
-		/* GPIO2_C0 - C7 */
-		"pin-32 [GPIO2_C0]", "pin-35 [GPIO2_C1]", "pin-12 [GPIO2_C2]",
-		"pin-38 [GPIO2_C3]", "pin-29 [GPIO2_C4]", "pin-31 [GPIO2_C5]",
-		"pin-37 [GPIO2_C6]", "pin-40 [GPIO2_C7]",
-		/* GPIO2_D0 - D7 */
-		"", "", "", "", "", "", "", "";
-};
-
-&gpio3 {
-	gpio-line-names =
-		/* GPIO3_A0 - A7 */
-		"pin-23 [GPIO3_A0]", "pin-19 [GPIO3_A1]", "pin-21 [GPIO3_A2]",
-		"", "pin-03 [GPIO3_A4]", "", "pin-05 [GPIO3_A6]", "",
-		/* GPIO3_B0 - B7 */
-		"pin-24 [GPIO3_B0]", "", "", "", "", "", "", "",
-		/* GPIO3_C0 - C7 */
-		"", "", "", "", "", "", "", "",
-		/* GPIO3_D0 - D7 */
-		"", "", "", "", "", "", "", "";
-};
-
-&i2c1 {
-	status = "okay";
-
-	rk805: pmic@18 {
-		compatible = "rockchip,rk805";
-		reg = <0x18>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
-		#clock-cells = <1>;
-		clock-output-names = "xin32k", "rk805-clkout2";
-		gpio-controller;
-		#gpio-cells = <2>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int_l>;
-		rockchip,system-power-controller;
-		wakeup-source;
-
-		vcc1-supply = <&vcc_sys>;
-		vcc2-supply = <&vcc_sys>;
-		vcc3-supply = <&vcc_sys>;
-		vcc4-supply = <&vcc_sys>;
-		vcc5-supply = <&vcc_io>;
-		vcc6-supply = <&vcc_sys>;
-
-		regulators {
-			vdd_log: DCDC_REG1 {
-				regulator-name = "vdd_log";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <712500>;
-				regulator-max-microvolt = <1450000>;
-				regulator-ramp-delay = <12500>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1000000>;
-				};
-			};
-
-			vdd_arm: DCDC_REG2 {
-				regulator-name = "vdd_arm";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <712500>;
-				regulator-max-microvolt = <1450000>;
-				regulator-ramp-delay = <12500>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <950000>;
-				};
-			};
-
-			vcc_ddr: DCDC_REG3 {
-				regulator-name = "vcc_ddr";
-				regulator-always-on;
-				regulator-boot-on;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-				};
-			};
-
-			vcc_io: DCDC_REG4 {
-				regulator-name = "vcc_io";
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
-			vcc_18: LDO_REG1 {
-				regulator-name = "vcc_18";
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
-			vcc18_emmc: LDO_REG2 {
-				regulator-name = "vcc18_emmc";
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
-			vdd_10: LDO_REG3 {
-				regulator-name = "vdd_10";
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1000000>;
-				regulator-max-microvolt = <1000000>;
-
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1000000>;
-				};
-			};
-		};
-	};
-};
-
-&i2s1 {
-	status = "okay";
-};
-
-&io_domains {
-	pmuio-supply = <&vcc_io>;
-	vccio1-supply = <&vcc_io>;
-	vccio2-supply = <&vcc18_emmc>;
-	vccio3-supply = <&vcc_io>;
-	vccio4-supply = <&vcc_io>;
-	vccio5-supply = <&vcc_io>;
-	vccio6-supply = <&vcc_io>;
-	status = "okay";
-};
-
-&pinctrl {
-	ephy {
-		eth_phy_int_pin: eth-phy-int-pin {
-			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_down>;
-		};
-
-		eth_phy_reset_pin: eth-phy-reset-pin {
-			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
-		};
-	};
-
-	leds {
-		led_pin: led-pin {
-			rockchip,pins = <3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	pmic {
-		pmic_int_l: pmic-int-l {
-			rockchip,pins = <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-	};
-
-	usb3 {
-		usb30_host_drv: usb30-host-drv {
-			rockchip,pins = <3 RK_PA7 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
-	wifi {
-		wifi_en: wifi-en {
-			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-};
-
-&sdmmc {
-	bus-width = <4>;
-	cap-sd-highspeed;
-	disable-wp;
-	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc0_clk>, <&sdmmc0_cmd>, <&sdmmc0_dectn>, <&sdmmc0_bus4>;
-	vmmc-supply = <&vcc_sd>;
-	status = "okay";
-};
-
-&saradc {
-	vref-supply = <&vcc_18>;
-	status = "okay";
-};
-
-&tsadc {
-	status = "okay";
-};
-
-&u2phy {
-	status = "okay";
-};
-
-&u2phy_host {
-	status = "okay";
-};
-
-&uart2 {
-	status = "okay";
-};
-
-&usbdrd3 {
-	dr_mode = "host";
-	status = "okay";
-};
-
-&usb_host0_ehci {
-	status = "okay";
 };
-- 
2.43.0


