Return-Path: <devicetree+bounces-85130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A024392F0A6
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 23:06:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EA5A5B22E2C
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 21:06:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D03819F478;
	Thu, 11 Jul 2024 21:05:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FE587F47B
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 21:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720731953; cv=none; b=LwhawPhuXKmOgqSb+XGbAJiuscMZEqIKzixk6+OuYU0gA4nV6KXPV1DbAK+2BCWzam+8rsecGMMEz6A7ABAPwpPx5Sh4tuNJSAQipFBc7u7tQGq7fXFdfWNZkXp+3ZKKUifHUZhvgYsvEd19oiGn/TlTg8KmHlSaJbreVQV3i0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720731953; c=relaxed/simple;
	bh=hPrqgoI44GBC65GwBolWGwdKqxxZa6bSNRZIDSMrNhQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ojWM82PIkRaLz4WKWo+CFRiwRpUFPlfVaVY700PenniUg9oazRyh6PFCV7TJW16fPWYrnxtCauGHtWwsTAzZ2u00Q//seRtmheUNEdPQssetB4SeACcXzkSfQr9DIo0WWoZit7/kX4/DyPqSEif0a9USuo7F7eqKZwR9vI9S8Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 46BL5VZn002297;
	Fri, 12 Jul 2024 06:05:32 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: add support for Radxa ROCK Pi E v3.0
Date: Fri, 12 Jul 2024 06:05:26 +0900
Message-ID: <20240711210526.40448-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240711210526.40448-1-naoki@radxa.com>
References: <20240711210526.40448-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Radxa Pi E v3.0 is a compact networking SBC[1] using the Rockchip
RK3288 chip that ships in a number of RAM/eMMC/WiFi/BT configurations:

- Rockchip RK3328 SoC
- Quad A53 CPU
- 512MB/1GB/2GB DDR4 RAM
- 4/8/16/32GB eMMC
- Micro SD Card slot
- WiFi 4 and BT 4, or WiFi 5 and BT 5
- 1x 1000M Ethernet supporting PoE with add‑on PoE HAT
- 1x 100M Ethernet
- 1x USB 3.0 Type-A port (Host)
- 1x 4-ring 3.5mm headphone jack
- 40 Pin GPIO header

[1] https://radxa.com/products/rockpi/pie

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3328-rock-pi-e-v3.dts |  15 +
 .../boot/dts/rockchip/rk3328-rock-pi-e.dts    | 460 +-----------------
 ...28-rock-pi-e.dts => rk3328-rock-pi-e.dtsi} |   5 -
 4 files changed, 31 insertions(+), 450 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts
 rewrite arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts (97%)
 copy arch/arm64/boot/dts/rockchip/{rk3328-rock-pi-e.dts => rk3328-rock-pi-e.dtsi} (98%)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 8fa469db400c..4f4777130b20 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -23,6 +23,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-orangepi-r1-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-orangepi-r1-plus-lts.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock-pi-e-v3.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock-pi-e.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-pc.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts
new file mode 100644
index 000000000000..ad9c4c562914
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3328-rock-pi-e.dtsi"
+
+/ {
+	model = "Radxa ROCK Pi E v3.0";
+	compatible = "radxa,rockpi-e-v3", "rockchip,rk3328";
+
+	aliases {
+		mmc0 = &emmc;
+		mmc1 = &sdmmc;
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
dissimilarity index 97%
index a608a219543e..0929df3c803a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -1,445 +1,15 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-/*
- * (C) Copyright 2020 Chen-Yu Tsai <wens@csie.org>
- *
- * Based on ./rk3328-rock64.dts, which is
- *
- * Copyright (c) 2017 PINE64
- */
-
-/dts-v1/;
-
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/input/input.h>
-#include <dt-bindings/leds/common.h>
-#include <dt-bindings/pinctrl/rockchip.h>
-
-#include "rk3328.dtsi"
-
-/ {
-	model = "Radxa ROCK Pi E";
-	compatible = "radxa,rockpi-e", "rockchip,rk3328";
-
-	aliases {
-		ethernet0 = &gmac2io;
-		ethernet1 = &gmac2phy;
-		mmc0 = &sdmmc;
-		mmc1 = &emmc;
-	};
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
-};
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3328-rock-pi-e.dtsi"
+
+/ {
+	model = "Radxa ROCK Pi E";
+	compatible = "radxa,rockpi-e", "rockchip,rk3328";
+
+	aliases {
+		mmc0 = &sdmmc;
+		mmc1 = &emmc;
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dtsi
similarity index 98%
copy from arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
copy to arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dtsi
index a608a219543e..1da518fd31fd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dtsi
@@ -17,14 +17,9 @@
 #include "rk3328.dtsi"
 
 / {
-	model = "Radxa ROCK Pi E";
-	compatible = "radxa,rockpi-e", "rockchip,rk3328";
-
 	aliases {
 		ethernet0 = &gmac2io;
 		ethernet1 = &gmac2phy;
-		mmc0 = &sdmmc;
-		mmc1 = &emmc;
 	};
 
 	chosen {
-- 
2.43.0


