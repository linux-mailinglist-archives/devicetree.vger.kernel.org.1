Return-Path: <devicetree+bounces-78755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6830A9134A4
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 17:07:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8AF161C20F3C
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2024 15:07:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 646CF16F902;
	Sat, 22 Jun 2024 15:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjIYGYx+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F2214C5A4;
	Sat, 22 Jun 2024 15:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719068855; cv=none; b=cVbzcxSpwXDVXy2YhirAzRuV+AZCXehdyJH6E6IqaF/fsd7EN8IdOcr9bQ0ZnQAEgCFw/SIXyQ6sUDzBAJ+VtOhwp1Z3n2Y0QxcrpWv01ktsCosmz+DMkF8xIozVaVMZ6iH+xReKnHbA2NMM32iq7WUe9EV7rN7pzD5zpRCEdEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719068855; c=relaxed/simple;
	bh=pPpig+G1GRgZ3bzBtjA5Gx0xHcrH1G49ovyzLm8XB/Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WJ43B3Gbcen/qVowOnceoHaSKI5k7Cdfu1wi/1QzdyUldFs3+hsGWOzwXCswuaMQXV7Cacxpn3JoKs46LBqtywh54cusDLABzIOLLchgAIFvAT9IM4lCTpp91Wuh91zj2n2HLoUc/cLInbzKSX8/uTuhsC7IrOnJOsXYf5vRNb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjIYGYx+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0FDBC32789;
	Sat, 22 Jun 2024 15:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719068854;
	bh=pPpig+G1GRgZ3bzBtjA5Gx0xHcrH1G49ovyzLm8XB/Y=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bjIYGYx+oHWeU9C+o5a6LmdN9SK9KzgzCo+G1iVxMGWkzBCCpua/lAcCdsXxKtPci
	 3MjSUXGi5HDrtinArzGv/1fen2jQSJdj3Y/3nKPRIRFCRewnvJZiYRUn+HtyVCo6/N
	 7luaRZVCSTAysZUZlcZy2Yb6yOpDun6bbxpcFS429Ds2U8wdbRaUTXcpyEi0fPo9FJ
	 fvKlJZ5yKnxVqSO5Tr2sE2P96yCbqPxbsLClSH1KscmGtgIVfuuI6GcUQ8Sl7Z8OIa
	 3SKcjYwpky4CVTj7kPa9/VcLlcuw5fDaFIMEpldfmDy/BADKe0MQ0C1DRChfQJsJST
	 0wAjtWJzfsJew==
Received: by wens.tw (Postfix, from userid 1000)
	id B68F260319; Sat, 22 Jun 2024 23:07:32 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Palmer Dabbelt <palmer@rivosinc.com>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 3/3] riscv: dts: allwinner: Add ClockworkPi and DevTerm devicetrees
Date: Sat, 22 Jun 2024 23:07:31 +0800
Message-Id: <20240622150731.1105901-4-wens@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240622150731.1105901-1-wens@kernel.org>
References: <20240622150731.1105901-1-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Samuel Holland <samuel@sholland.org>

Clockwork Tech manufactures several SoMs for their RasPi CM3-compatible
"ClockworkPi" mainboard. Their R-01 SoM features the Allwinner D1 SoC.
The R-01 contains only the CPU, DRAM, and always-on voltage regulation;
it does not merit a separate devicetree.

The ClockworkPi mainboard features analog audio, a MIPI-DSI panel, USB
host and peripheral ports, an Ampak AP6256 WiFi/Bluetooth module, and an
X-Powers AXP228 PMIC for managing a Li-ion battery.

The DevTerm is a complete system which extends the ClockworkPi mainboard
with a MIPI-DSI panel and a pair of expansion boards. These expansion
boards provide a fan, a USB keyboard, speakers, and a thermal printer.

Acked-by: Palmer Dabbelt <palmer@rivosinc.com>
Signed-off-by: Samuel Holland <samuel@sholland.org>
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/riscv/boot/dts/allwinner/Makefile        |   2 +
 .../allwinner/sun20i-d1-clockworkpi-v3.14.dts | 252 ++++++++++++++++++
 .../dts/allwinner/sun20i-d1-devterm-v3.14.dts |  36 +++
 3 files changed, 290 insertions(+)
 create mode 100644 arch/riscv/boot/dts/allwinner/sun20i-d1-clockworkpi-v3.14.dts
 create mode 100644 arch/riscv/boot/dts/allwinner/sun20i-d1-devterm-v3.14.dts

diff --git a/arch/riscv/boot/dts/allwinner/Makefile b/arch/riscv/boot/dts/allwinner/Makefile
index 87f70b1af6b4..1c91be38ea16 100644
--- a/arch/riscv/boot/dts/allwinner/Makefile
+++ b/arch/riscv/boot/dts/allwinner/Makefile
@@ -1,4 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
+dtb-$(CONFIG_ARCH_SUNXI) += sun20i-d1-clockworkpi-v3.14.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun20i-d1-devterm-v3.14.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun20i-d1-dongshan-nezha-stu.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun20i-d1-lichee-rv-86-panel-480p.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun20i-d1-lichee-rv-86-panel-720p.dtb
diff --git a/arch/riscv/boot/dts/allwinner/sun20i-d1-clockworkpi-v3.14.dts b/arch/riscv/boot/dts/allwinner/sun20i-d1-clockworkpi-v3.14.dts
new file mode 100644
index 000000000000..750aec6cf2f2
--- /dev/null
+++ b/arch/riscv/boot/dts/allwinner/sun20i-d1-clockworkpi-v3.14.dts
@@ -0,0 +1,252 @@
+// SPDX-License-Identifier: (GPL-2.0+ or MIT)
+// Copyright (C) 2022 Samuel Holland <samuel@sholland.org>
+
+#include <dt-bindings/gpio/gpio.h>
+
+/dts-v1/;
+
+#include "sun20i-d1.dtsi"
+#include "sun20i-common-regulators.dtsi"
+
+/ {
+	model = "ClockworkPi v3.14 (R-01)";
+	compatible = "clockwork,r-01-clockworkpi-v3.14", "allwinner,sun20i-d1";
+
+	aliases {
+		ethernet0 = &ap6256;
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	/*
+	 * This regulator is PWM-controlled, but the PWM controller is not
+	 * yet supported, so fix the regulator to its default voltage.
+	 */
+	reg_vdd_cpu: vdd-cpu {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd-cpu";
+		regulator-min-microvolt = <1100000>;
+		regulator-max-microvolt = <1100000>;
+		vin-supply = <&reg_vcc>;
+	};
+
+	wifi_pwrseq: wifi-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&pio 6 11 GPIO_ACTIVE_LOW>; /* PG11/GPIO3 */
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&reg_vdd_cpu>;
+};
+
+&dcxo {
+	clock-frequency = <24000000>;
+};
+
+&ehci1 {
+	status = "okay";
+};
+
+&i2c0 {
+	pinctrl-0 = <&i2c0_pb10_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	axp221: pmic@34 {
+		compatible = "x-powers,axp228", "x-powers,axp221";
+		reg = <0x34>;
+		interrupt-parent = <&pio>;
+		interrupts = <4 9 IRQ_TYPE_LEVEL_LOW>; /* PE9/GPIO2 */
+		interrupt-controller;
+		#interrupt-cells = <1>;
+
+		ac_power_supply: ac-power {
+			compatible = "x-powers,axp221-ac-power-supply";
+		};
+
+		axp_adc: adc {
+			compatible = "x-powers,axp221-adc";
+			#io-channel-cells = <1>;
+		};
+
+		battery_power_supply: battery-power {
+			compatible = "x-powers,axp221-battery-power-supply";
+		};
+
+		axp_gpio: gpio {
+			compatible = "x-powers,axp221-gpio";
+			gpio-controller;
+			#gpio-cells = <2>;
+		};
+
+		regulators {
+			x-powers,dcdc-freq = <3000>;
+
+			reg_dcdc1: dcdc1 {
+				regulator-name = "sys-3v3";
+				regulator-always-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			reg_dcdc3: dcdc3 {
+				regulator-name = "sys-1v8";
+				regulator-always-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+			};
+
+			reg_aldo1: aldo1 {
+				regulator-name = "aud-3v3";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			reg_aldo2: aldo2 {
+				regulator-name = "disp-3v3";
+				regulator-always-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			reg_aldo3: aldo3 {
+				regulator-name = "vdd-wifi";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+			};
+
+			/* DLDO1 and ELDO1-3 are connected in parallel. */
+			reg_dldo1: dldo1 {
+				regulator-name = "vbat-wifi-a";
+				regulator-always-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			/* DLDO2-DLDO4 are connected in parallel. */
+			reg_dldo2: dldo2 {
+				regulator-name = "vcc-3v3-ext-a";
+				regulator-always-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			reg_dldo3: dldo3 {
+				regulator-name = "vcc-3v3-ext-b";
+				regulator-always-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			reg_dldo4: dldo4 {
+				regulator-name = "vcc-3v3-ext-c";
+				regulator-always-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			reg_eldo1: eldo1 {
+				regulator-name = "vbat-wifi-b";
+				regulator-always-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			reg_eldo2: eldo2 {
+				regulator-name = "vbat-wifi-c";
+				regulator-always-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			reg_eldo3: eldo3 {
+				regulator-name = "vbat-wifi-d";
+				regulator-always-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+			};
+		};
+
+		usb_power_supply: usb-power {
+			compatible = "x-powers,axp221-usb-power-supply";
+			status = "disabled";
+		};
+	};
+};
+
+&mmc0 {
+	broken-cd;
+	bus-width = <4>;
+	disable-wp;
+	vmmc-supply = <&reg_dcdc1>;
+	vqmmc-supply = <&reg_vcc_3v3>;
+	pinctrl-0 = <&mmc0_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&mmc1 {
+	bus-width = <4>;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	non-removable;
+	vmmc-supply = <&reg_dldo1>;
+	vqmmc-supply = <&reg_aldo3>;
+	pinctrl-0 = <&mmc1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	ap6256: wifi@1 {
+		compatible = "brcm,bcm43456-fmac", "brcm,bcm4329-fmac";
+		reg = <1>;
+		interrupt-parent = <&pio>;
+		interrupts = <6 10 IRQ_TYPE_LEVEL_LOW>; /* PG10/GPIO4 */
+		interrupt-names = "host-wake";
+	};
+};
+
+&ohci1 {
+	status = "okay";
+};
+
+&pio {
+	vcc-pg-supply = <&reg_ldoa>;
+};
+
+&uart0 {
+	pinctrl-0 = <&uart0_pb8_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&uart1 {
+	uart-has-rtscts;
+	pinctrl-0 = <&uart1_pg6_pins>, <&uart1_pg8_rts_cts_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm4345c5";
+		interrupt-parent = <&pio>;
+		interrupts = <6 17 IRQ_TYPE_LEVEL_HIGH>; /* PG17/GPIO6 */
+		device-wakeup-gpios = <&pio 6 16 GPIO_ACTIVE_HIGH>; /* PG16/GPIO7 */
+		shutdown-gpios = <&pio 6 18 GPIO_ACTIVE_HIGH>; /* PG18/GPIO5 */
+		max-speed = <1500000>;
+		vbat-supply = <&reg_dldo1>;
+		vddio-supply = <&reg_aldo3>;
+	};
+};
+
+&usb_otg {
+	dr_mode = "peripheral";
+	status = "okay";
+};
+
+&usbphy {
+	usb0_vbus_power-supply = <&ac_power_supply>;
+	usb1_vbus-supply = <&reg_vcc>;
+	status = "okay";
+};
diff --git a/arch/riscv/boot/dts/allwinner/sun20i-d1-devterm-v3.14.dts b/arch/riscv/boot/dts/allwinner/sun20i-d1-devterm-v3.14.dts
new file mode 100644
index 000000000000..bc5c84f22762
--- /dev/null
+++ b/arch/riscv/boot/dts/allwinner/sun20i-d1-devterm-v3.14.dts
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: (GPL-2.0+ or MIT)
+// Copyright (C) 2022 Samuel Holland <samuel@sholland.org>
+
+#include "sun20i-d1-clockworkpi-v3.14.dts"
+
+/ {
+	model = "Clockwork DevTerm (R-01)";
+	compatible = "clockwork,r-01-devterm-v3.14",
+		     "clockwork,r-01-clockworkpi-v3.14",
+		     "allwinner,sun20i-d1";
+
+	fan {
+		compatible = "gpio-fan";
+		gpios = <&pio 3 10 GPIO_ACTIVE_HIGH>; /* PD10/GPIO41 */
+		gpio-fan,speed-map = <0    0>,
+				     <6000 1>;
+		#cooling-cells = <2>;
+	};
+
+	i2c-gpio-0 {
+		compatible = "i2c-gpio";
+		sda-gpios = <&pio 3 14 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>; /* PD14/GPIO44 */
+		scl-gpios = <&pio 3 15 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>; /* PD15/GPIO45 */
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		adc@54 {
+			compatible = "ti,adc101c";
+			reg = <0x54>;
+			interrupt-parent = <&pio>;
+			interrupts = <4 12 IRQ_TYPE_LEVEL_LOW>; /* PE12/GPIO35 */
+			vref-supply = <&reg_dldo2>;
+			#io-channel-cells = <1>;
+		};
+	};
+};
-- 
2.39.2


