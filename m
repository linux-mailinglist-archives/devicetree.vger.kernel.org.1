Return-Path: <devicetree+bounces-155170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F243EA55C76
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 02:00:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 293D817705F
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 01:00:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1660D19D081;
	Fri,  7 Mar 2025 00:57:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FD2E199921;
	Fri,  7 Mar 2025 00:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741309072; cv=none; b=bxQzN3EhWHkU37J18KHwaM7mzuDmeFA0OIAVhAvr8XSkWiUrFjlqQzC11qGwC6VWbZhoc37z94UHd2oLKV6rPeSSUe1t4DYJqgC5LqAgYo+LRzk26N+fiEpXF6ztqvtSf6al4rc/obIZFhPCX0gfQGpOoHwR4/Rt4SEjxGa16jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741309072; c=relaxed/simple;
	bh=b6ac9gsryn/biv+Qm9Qm5Kp4+Sp/ecGafckN2AXquo8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jZfyxrQWc4cgGVKvccQJFl0EffMiNIegFTCUOeGT0CKQyOBKuTxNiGvEbBHr3aesoosPis5HiOPMRgpBj/pFvS6/DDICLuxMEvWTJIwBXVaP3CfSnJ21jXZJww4JqruXDGphYGP2ZJiqnB2bxHFh890b1ilyTBNqrcmwLFkTtEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ABB9B2103;
	Thu,  6 Mar 2025 16:58:02 -0800 (PST)
Received: from localhost.localdomain (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 789303F5A1;
	Thu,  6 Mar 2025 16:57:48 -0800 (PST)
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
Subject: [PATCH v3 15/15] arm64: dts: allwinner: h616: add YuzukiHD Chameleon support
Date: Fri,  7 Mar 2025 00:57:12 +0000
Message-ID: <20250307005712.16828-16-andre.przywara@arm.com>
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

The Chameleon board is an OpenHardware devboard made by YuzukiTsuru.
The form factor resembles the Raspberry Pi Model A boards, though it
differs significantly in its features:

  - Allwinner H618 SoC (4 * Arm Cortex-A53 cores, 1MB L2 cache, 1.4 GHz)
  - between 512MiB and 2GiB DDR3 DRAM
  - up to 128 GiB eMMC flash
  - AXP313a PMIC
  - 100 Mbit/s Ethernet pins on a header
  - XR829 WIFI+Bluetooth chip
  - 4 * USB 2.0 USB-C ports
  - microSD card slot
  - 3.5mm A/V port

Add the devicetree describing the board's peripherals and their
connections.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 arch/arm64/boot/dts/allwinner/Makefile        |   1 +
 .../sun50i-h618-yuzukihd-chameleon.dts        | 222 ++++++++++++++++++
 2 files changed, 223 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h618-yuzukihd-chameleon.dts

diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index 9d5e14695af0b..c15f6a0d8d55a 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -48,6 +48,7 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-longanpi-3h.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero2w.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero3.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-transpeed-8k618-t.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-yuzukihd-chameleon.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-2024.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-h.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-plus.dtb
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h618-yuzukihd-chameleon.dts b/arch/arm64/boot/dts/allwinner/sun50i-h618-yuzukihd-chameleon.dts
new file mode 100644
index 0000000000000..eae56908b9b4e
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h618-yuzukihd-chameleon.dts
@@ -0,0 +1,222 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2024 Arm Ltd.
+ */
+
+/dts-v1/;
+
+#include "sun50i-h616.dtsi"
+#include "sun50i-h616-cpu-opp.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+
+/ {
+	model = "Yuzuki Chameleon";
+	compatible = "yuzukihd,chameleon", "allwinner,sun50i-h618";
+
+	aliases {
+		ethernet1 = &sdio_wifi;
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	reg_vcc5v: vcc5v {
+		/* board wide 5V supply directly from the USB-C socket */
+		compatible = "regulator-fixed";
+		regulator-name = "vcc-5v";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
+
+	wifi_pwrseq: pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rtc CLK_OSC32K_FANOUT>;
+		clock-names = "ext_clock";
+		pinctrl-0 = <&x32clk_fanout_pin>;
+		pinctrl-names = "default";
+		reset-gpios = <&pio 6 11 GPIO_ACTIVE_LOW>; /* PG11 */
+	};
+};
+
+&codec {
+	allwinner,audio-routing = "Line Out", "LINEOUT";
+	status = "okay";
+};
+
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
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
+&ehci2 {
+	status = "okay";
+};
+
+&ehci3 {
+	status = "okay";
+};
+
+&mmc0 {
+	bus-width = <4>;
+	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>;	/* PF6 */
+	disable-wp;
+	vmmc-supply = <&reg_dldo1>;
+	status = "okay";
+};
+
+&mmc1 {
+	bus-width = <4>;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	non-removable;
+	vmmc-supply = <&reg_dldo1>;
+	vqmmc-supply = <&reg_dldo1>;
+	status = "okay";
+
+	sdio_wifi: wifi@1 {
+		reg = <1>;
+		interrupt-parent = <&pio>;
+		interrupts = <6 12 IRQ_TYPE_LEVEL_LOW>;  /* PG12 */
+		interrupt-names = "host-wake";
+	};
+};
+
+&mmc2 {
+	bus-width = <8>;
+	cap-mmc-hw-reset;
+	mmc-ddr-3_3v;
+	non-removable;
+	vmmc-supply = <&reg_dldo1>;
+	vqmmc-supply = <&reg_dldo1>;
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
+&ohci2 {
+	status = "okay";
+};
+
+&ohci3 {
+	status = "okay";
+};
+
+&pio {
+	vcc-pc-supply = <&reg_dldo1>;
+	vcc-pf-supply = <&reg_dldo1>;	/* via VCC_IO */
+	vcc-pg-supply = <&reg_dldo1>;
+	vcc-ph-supply = <&reg_dldo1>;	/* via VCC_IO */
+	vcc-pi-supply = <&reg_dldo1>;
+};
+
+&r_i2c {
+	status = "okay";
+
+	axp313: pmic@36 {
+		compatible = "x-powers,axp313a";
+		reg = <0x36>;
+		#interrupt-cells = <1>;
+		interrupt-controller;
+		interrupt-parent = <&pio>;
+		interrupts = <2 2 IRQ_TYPE_LEVEL_LOW>;	/* PC2 */
+
+		vin1-supply = <&reg_vcc5v>;
+		vin2-supply = <&reg_vcc5v>;
+		vin3-supply = <&reg_vcc5v>;
+
+		regulators {
+			/* Supplies VCC-PLL, so needs to be always on. */
+			reg_aldo1: aldo1 {
+				regulator-always-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc1v8";
+			};
+
+			/* Supplies VCC-IO, so needs to be always on. */
+			reg_dldo1: dldo1 {
+				regulator-always-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc3v3";
+			};
+
+			reg_dcdc1: dcdc1 {
+				regulator-always-on;
+				regulator-min-microvolt = <810000>;
+				regulator-max-microvolt = <990000>;
+				regulator-name = "vdd-gpu-sys";
+			};
+
+			reg_dcdc2: dcdc2 {
+				regulator-always-on;
+				regulator-min-microvolt = <810000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-name = "vdd-cpu";
+			};
+
+			reg_dcdc3: dcdc3 {
+				regulator-always-on;
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <1500000>;
+				regulator-name = "vdd-dram";
+			};
+		};
+	};
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_ph_pins>;
+	status = "okay";
+};
+
+/* Connected to the Bluetooth UART pins of the XR829 Wifi/BT chip. */
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&usbotg {
+	/*
+	 * PHY0 pins are connected to a USB-C socket, but a role switch
+	 * is not implemented: both CC pins are pulled to GND.
+	 * The VBUS pins power the device, so a fixed peripheral mode
+	 * is the best choice.
+	 * The board can be powered via GPIOs, in this case port0 *can*
+	 * act as a host (with a cable/adapter ignoring CC), as VBUS is
+	 * then provided by the GPIOs. Any user of this setup would
+	 * need to adjust the DT accordingly: dr_mode set to "host",
+	 * enabling OHCI0 and EHCI0.
+	 */
+	dr_mode = "peripheral";
+	status = "okay";
+};
+
+&usbphy {
+	usb0_id_det-gpios = <&pio 6 18 GPIO_ACTIVE_HIGH>; /* PG18 */
+	usb0_vbus-supply = <&reg_vcc5v>;
+	usb1_vbus-supply = <&reg_vcc5v>;
+	usb2_vbus-supply = <&reg_vcc5v>;
+	usb3_vbus-supply = <&reg_vcc5v>;
+	status = "okay";
+};
-- 
2.46.3


