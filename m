Return-Path: <devicetree+bounces-155166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C46A55C6E
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 01:59:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A788217482B
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 00:59:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B60C1925A6;
	Fri,  7 Mar 2025 00:57:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A773F19049A;
	Fri,  7 Mar 2025 00:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741309065; cv=none; b=EBcJbM8WLa3Nj1iy7P9F/shZn7NRZhm0pkldiJKeAIFf4BNS0CpJae6xTtMWTgWtP6DRDARnkerRT0JEIn3u7LJCxoE2nUHinf2CkL4qkTJEFhwSl7TywoX3Hk6F+dqlV4x3lK8GZSTcbhtWmCqvmAlj1irz665YL1jpMuBnrzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741309065; c=relaxed/simple;
	bh=m+Gc8jnUS7Vg6MnvyCSxMTgUK8xle1y6s35suoEZejE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nAJZaufpoB/ju45bKv8dgT/QpMragOSR1577BXEL1KEz2bqZ0lYllnJeKKz9alJT43LVAB5OQuRuKPpmN0k4BkQf1LZKs/TXciZPUU52mI7l1MEO4wpz6xRKcRlbF5mCOUBmjNPRjao80D8dwdsaV5VtOkRW4GuP7YSPYDYALes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0CC42169E;
	Thu,  6 Mar 2025 16:57:56 -0800 (PST)
Received: from localhost.localdomain (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CE3E23F5A1;
	Thu,  6 Mar 2025 16:57:41 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 11/15] arm64: dts: allwinner: a523: add Avaota-A1 router support
Date: Fri,  7 Mar 2025 00:57:08 +0000
Message-ID: <20250307005712.16828-12-andre.przywara@arm.com>
X-Mailer: git-send-email 2.46.3
In-Reply-To: <20250307005712.16828-1-andre.przywara@arm.com>
References: <20250307005712.16828-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Avaota A1 router board is an Open Source hardware board, designed
by YuzukiHD. Pine64 produces some boards and sells them. It uses the
Allwinner A527 or T527 SoC, and comes with the following features:
  - Eight ARM Cortex-A55 cores, Mali-G57 MC1 GPU
  - 1GiB/2GiB/4GiB LPDDR4 DRAM
  - AXP717 + AXP323 PMIC
  - Raspberry-Pi-2 compatible GPIO header
  - 1 USB 2.0 type A host port, 1 USB 3.0 type A host post
  - 1 USB 2.0 type C port (OTG + serial debug)
  - MicroSD slot
  - eMMC between 16 and 128 GiB
  - on-board 16MiB bootable SPI NOR flash
  - two 1Gbps Ethernet ports (via RTL8211F PHYs)
  - HDMI port
  - DP port
  - camera and LCD connectors
  - 3.5mm headphone jack
  - (yet) unsupported WiFi/BT chip
  - 1.3" LC display, connected via SPI
  - 12 V barrel plug for power supply

Add the devicetree file describing the currently supported features.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 arch/arm64/boot/dts/allwinner/Makefile        |   1 +
 .../dts/allwinner/sun55i-t527-avaota-a1.dts   | 308 ++++++++++++++++++
 2 files changed, 309 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun55i-t527-avaota-a1.dts

diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index 00bed412ee31c..0d678a7499e3c 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -52,3 +52,4 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-2024.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-h.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-plus.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-sp.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun55i-t527-avaota-a1.dtb
diff --git a/arch/arm64/boot/dts/allwinner/sun55i-t527-avaota-a1.dts b/arch/arm64/boot/dts/allwinner/sun55i-t527-avaota-a1.dts
new file mode 100644
index 0000000000000..85a546aecdbe1
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun55i-t527-avaota-a1.dts
@@ -0,0 +1,308 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR MIT)
+// Copyright (C) 2024 Arm Ltd.
+
+/dts-v1/;
+
+#include "sun55i-a523.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "Avaota A1";
+	compatible = "yuzukihd,avaota-a1", "allwinner,sun55i-t527";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	ext_osc32k: ext-osc32k-clk {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		clock-output-names = "ext_osc32k";
+	};
+
+	reg_vcc12v: vcc12v {
+		/* DC input jack */
+		compatible = "regulator-fixed";
+		regulator-name = "vcc-12v";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-always-on;
+	};
+
+	reg_vcc5v: vcc5v {
+		/* board wide 5V supply from the 12V->5V regulator */
+		compatible = "regulator-fixed";
+		regulator-name = "vcc-5v";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&reg_vcc12v>;
+		regulator-always-on;
+	};
+
+	reg_usb_vbus: vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "usb-vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&reg_vcc5v>;
+		gpio = <&pio 8 12 GPIO_ACTIVE_HIGH>;	/* PI12 */
+		enable-active-high;
+	};
+};
+
+&ehci0 {
+	status = "okay";
+};
+
+&ehci1 {
+	status = "okay";
+};
+
+&mmc0 {
+	vmmc-supply = <&reg_cldo3>;
+	cd-gpios = <&pio 5 6 (GPIO_ACTIVE_LOW | GPIO_PULL_DOWN)>; /* PF6 */
+	bus-width = <4>;
+	status = "okay";
+};
+
+&mmc2 {
+	bus-width = <8>;
+	cap-mmc-hw-reset;
+	mmc-ddr-1_8v;
+	mmc-hs200-1_8v;
+	non-removable;
+	vmmc-supply = <&reg_cldo3>;
+	vqmmc-supply = <&reg_cldo1>;
+	status = "okay";
+};
+
+&ohci0 {
+	status = "okay";
+};
+
+&ohci1 {
+	status = "okay";
+};
+
+&pio {
+	vcc-pb-supply = <&reg_cldo3>;	/* via VCC-IO */
+	vcc-pc-supply = <&reg_cldo1>;
+	vcc-pd-supply = <&reg_dcdc4>;
+	vcc-pe-supply = <&reg_dcdc4>;
+	vcc-pf-supply = <&reg_cldo3>;	/* actually switchable */
+	vcc-pg-supply = <&reg_bldo1>;
+	vcc-ph-supply = <&reg_cldo3>;	/* via VCC-IO */
+	vcc-pi-supply = <&reg_dcdc4>;
+	vcc-pj-supply = <&reg_dcdc4>;
+	vcc-pk-supply = <&reg_bldo3>;
+};
+
+&r_i2c0 {
+	status = "okay";
+
+	axp717: pmic@35 {
+		compatible = "x-powers,axp717";
+		reg = <0x35>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		interrupt-parent = <&nmi_intc>;
+		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+
+		vin1-supply = <&reg_vcc5v>;
+		vin2-supply = <&reg_vcc5v>;
+		vin3-supply = <&reg_vcc5v>;
+		vin4-supply = <&reg_vcc5v>;
+		aldoin-supply = <&reg_vcc5v>;
+		bldoin-supply = <&reg_vcc5v>;
+		cldoin-supply = <&reg_vcc5v>;
+
+		regulators {
+			/* Supplies the "little" cluster (1.4 GHz cores) */
+			reg_dcdc1: dcdc1 {
+				regulator-always-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1160000>;
+				regulator-name = "vdd-cpul";
+			};
+
+			reg_dcdc2: dcdc2 {
+				regulator-always-on;
+				regulator-min-microvolt = <920000>;
+				regulator-max-microvolt = <920000>;
+				regulator-name = "vdd-gpu-sys";
+			};
+
+			reg_dcdc3: dcdc3 {
+				regulator-always-on;
+				regulator-min-microvolt = <1160000>;
+				regulator-max-microvolt = <1160000>;
+				regulator-name = "vdd-dram";
+			};
+
+			reg_dcdc4: dcdc4 {
+				regulator-always-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vdd-io";
+			};
+
+			reg_aldo1: aldo1 {
+				/* not connected */
+			};
+
+			reg_aldo2: aldo2 {
+				/* not connected */
+			};
+
+			reg_aldo3: aldo3 {
+				/* supplies the I2C pins for this PMIC */
+				regulator-always-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc-pl-pm";
+			};
+
+			reg_aldo4: aldo4 {
+				regulator-always-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc-pll-dxco-avcc";
+			};
+
+			reg_bldo1: bldo1 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc-pg-wifi-lvds";
+			};
+
+			reg_bldo2: bldo2 {
+				regulator-always-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc-dram-1v8";
+			};
+
+			reg_bldo3: bldo3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc-cvp-pk-vid1v8";
+			};
+
+			reg_bldo4: bldo4 {
+				/* not connected */
+			};
+
+			reg_cldo1: cldo1 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc-pc";
+			};
+
+			reg_cldo2: cldo2 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc-efuse";
+			};
+
+			reg_cldo3: cldo3 {
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc-io-mmc-spi-ana";
+			};
+
+			reg_cldo4: cldo4 {
+				/* not connected */
+			};
+
+			reg_cpusldo: cpusldo {
+				/* supplies the management core */
+				regulator-always-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vdd-cpus";
+			};
+		};
+	};
+
+	axp323: pmic@36 {
+		compatible = "x-powers,axp323";
+		reg = <0x36>;
+		#interrupt-cells = <1>;
+		interrupt-controller;
+		interrupt-parent = <&nmi_intc>;
+		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+		status = "okay";
+
+		vin1-supply = <&reg_vcc5v>;
+		vin2-supply = <&reg_vcc5v>;
+		vin3-supply = <&reg_vcc5v>;
+
+		regulators {
+			aldo1 {
+				/* not connected */
+			};
+
+			dldo1 {
+				/* not connected */
+			};
+
+			/* Supplies the "big" cluster (1.8 GHz cores) */
+			reg_dcdc1_323: dcdc1 {
+				regulator-always-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1160000>;
+				regulator-name = "vdd-cpub";
+			};
+
+			/* DCDC2 is polyphased with DCDC1 */
+
+			/* Some RISC-V management core related voltage */
+			reg_dcdc3_323: dcdc3 {
+				regulator-always-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+				regulator-name = "vdd-dnr";
+			};
+		};
+	};
+};
+
+&r_pio {
+/*
+ * Specifying the supply would create a circular dependency.
+ *
+ *	vcc-pl-supply = <&reg_aldo3>;
+ */
+	vcc-pm-supply = <&reg_aldo3>;
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pb_pins>;
+	status = "okay";
+};
+
+&usb_otg {
+	 /*
+	  * The CC pins of the USB-C port have two pull-down resistors
+	  * connected to GND, which fixes this port to a peripheral role.
+	  * There is a regulator, controlled by a GPIO, to provide VBUS power
+	  * to the port, and a VBUSDET GPIO, to detect externally provided
+	  * power, but without the CC pins there is no real way to do a
+	  * runtime role detection.
+	  */
+	dr_mode = "peripheral";
+	status = "okay";
+};
+
+&usbphy {
+	usb0_vbus-supply = <&reg_usb_vbus>;
+	usb0_vbus_det-gpios = <&pio 8 13 GPIO_ACTIVE_HIGH>; /* PI13 */
+	status = "okay";
+};
-- 
2.46.3


