Return-Path: <devicetree+bounces-254712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C5ABED1B25A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 21:08:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 54C663023532
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 20:08:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16E0D35EDD1;
	Tue, 13 Jan 2026 20:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGvIonZc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4638318ECD;
	Tue, 13 Jan 2026 20:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768334883; cv=none; b=MJhwUH66SY6TLF3B+rwd9TXX2ia4wRR52dlZ2HeUpy9iY+IkmNiSfsnNySReOOrqWPa2yaEn7lCZJdfAb+2dyVIPyr3S4JguG2xjBNFbTvAhvGe0n6tIEwn2W7J/W7s2B0z26/Zukcs4YonRCZBvr3UB4nOpbrzAHgjNLUhyxto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768334883; c=relaxed/simple;
	bh=9igyJ2M/3WDceHFKFOZJs2/mHQPx0e7KXBmUWAszlrc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=i9eBgsIvdaVMEDkdJvhMk+odipwNZwnnp51mzIa8uw3vlPwWBjCpzzTZkRrup3J7ZyRaUyVSkEBdBMk/5xkZ1AyhDPssngTT2mUdAHPn0YFotU1K8Kxbz64S1DL+nMOtSU38/ejnW9dSXDqk556k+Co6ktebBmCzi46Oy9Lf5Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGvIonZc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12FAAC116C6;
	Tue, 13 Jan 2026 20:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768334882;
	bh=9igyJ2M/3WDceHFKFOZJs2/mHQPx0e7KXBmUWAszlrc=;
	h=From:To:Cc:Subject:Date:From;
	b=EGvIonZcgRJFTT49XfOgVFliRum7cU2VZA4GjnGJzA0xfgcSFVWfAYn4gj9p0unYj
	 VgHN6dxycYsb7/0U8IaX0EVCVdz65IcaXFyFjQqpDIauNAtIT8UBmoRP8o/xQ1VyKX
	 F7QyxvQ1B0Osio7XZIgcGd7+NgPUi0RITjQuMZPdbfodz1SCx5qPQ0L3t8anH7YN/a
	 6qmPYERZWj7L8RnsB0ZN8DEiz49CbAsVRzqbfADFS1nzm+UERjHye1OqynonF/dQem
	 I2qQLsJO9XHsjHy8JtEv6Jt06O35jktFo5Q37myr7KUcLYzAxkAQz0t0vjbwroWXBi
	 JG6Ccgtd7YCtw==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm/arm64: dts: marvell: Drop unused .dtsi
Date: Tue, 13 Jan 2026 14:07:42 -0600
Message-ID: <20260113200744.4174940-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

These .dtsi files are not included anywhere in the tree and can't be
tested.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm/boot/dts/marvell/armada-380.dtsi     | 148 ------------------
 arch/arm64/boot/dts/marvell/armada-7020.dtsi  |  10 --
 arch/arm64/boot/dts/marvell/armada-8020.dtsi  |  20 ---
 .../boot/dts/marvell/armada-ap806-dual.dtsi   |  60 -------
 .../dts/marvell/cn9130-db-comexpress.dtsi     |  96 ------------
 5 files changed, 334 deletions(-)
 delete mode 100644 arch/arm/boot/dts/marvell/armada-380.dtsi
 delete mode 100644 arch/arm64/boot/dts/marvell/armada-7020.dtsi
 delete mode 100644 arch/arm64/boot/dts/marvell/armada-8020.dtsi
 delete mode 100644 arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
 delete mode 100644 arch/arm64/boot/dts/marvell/cn9130-db-comexpress.dtsi

diff --git a/arch/arm/boot/dts/marvell/armada-380.dtsi b/arch/arm/boot/dts/marvell/armada-380.dtsi
deleted file mode 100644
index e94f22b0e9b5..000000000000
--- a/arch/arm/boot/dts/marvell/armada-380.dtsi
+++ /dev/null
@@ -1,148 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-/*
- * Device Tree Include file for Marvell Armada 380 SoC.
- *
- * Copyright (C) 2014 Marvell
- *
- * Lior Amsalem <alior@marvell.com>
- * Gregory CLEMENT <gregory.clement@free-electrons.com>
- * Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
- */
-
-#include "armada-38x.dtsi"
-
-/ {
-	model = "Marvell Armada 380 family SoC";
-	compatible = "marvell,armada380";
-
-	cpus {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		enable-method = "marvell,armada-380-smp";
-
-		cpu@0 {
-			device_type = "cpu";
-			compatible = "arm,cortex-a9";
-			reg = <0>;
-		};
-	};
-
-	soc {
-		internal-regs {
-			pinctrl@18000 {
-				compatible = "marvell,mv88f6810-pinctrl";
-			};
-		};
-
-		pcie {
-			compatible = "marvell,armada-370-pcie";
-			status = "disabled";
-			device_type = "pci";
-
-			#address-cells = <3>;
-			#size-cells = <2>;
-
-			msi-parent = <&mpic>;
-			bus-range = <0x00 0xff>;
-
-			ranges =
-			       <0x82000000 0 0x80000 MBUS_ID(0xf0, 0x01) 0x80000 0 0x00002000
-				0x82000000 0 0x40000 MBUS_ID(0xf0, 0x01) 0x40000 0 0x00002000
-				0x82000000 0 0x44000 MBUS_ID(0xf0, 0x01) 0x44000 0 0x00002000
-				0x82000000 0 0x48000 MBUS_ID(0xf0, 0x01) 0x48000 0 0x00002000
-				0x82000000 0x1 0     MBUS_ID(0x08, 0xe8) 0 1 0 /* Port 0 MEM */
-				0x81000000 0x1 0     MBUS_ID(0x08, 0xe0) 0 1 0 /* Port 0 IO  */
-				0x82000000 0x2 0     MBUS_ID(0x04, 0xe8) 0 1 0 /* Port 1 MEM */
-				0x81000000 0x2 0     MBUS_ID(0x04, 0xe0) 0 1 0 /* Port 1 IO  */
-				0x82000000 0x3 0     MBUS_ID(0x04, 0xd8) 0 1 0 /* Port 2 MEM */
-				0x81000000 0x3 0     MBUS_ID(0x04, 0xd0) 0 1 0 /* Port 2 IO  */>;
-
-			/* x1 port */
-			pcie@1,0 {
-				device_type = "pci";
-				assigned-addresses = <0x82000800 0 0x80000 0 0x2000>;
-				reg = <0x0800 0 0 0 0>;
-				#address-cells = <3>;
-				#size-cells = <2>;
-				interrupt-names = "intx";
-				interrupts-extended = <&gic GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
-				#interrupt-cells = <1>;
-				ranges = <0x82000000 0 0 0x82000000 0x1 0 1 0
-					  0x81000000 0 0 0x81000000 0x1 0 1 0>;
-				bus-range = <0x00 0xff>;
-				interrupt-map-mask = <0 0 0 7>;
-				interrupt-map = <0 0 0 1 &pcie1_intc 0>,
-						<0 0 0 2 &pcie1_intc 1>,
-						<0 0 0 3 &pcie1_intc 2>,
-						<0 0 0 4 &pcie1_intc 3>;
-				marvell,pcie-port = <0>;
-				marvell,pcie-lane = <0>;
-				clocks = <&gateclk 8>;
-				status = "disabled";
-
-				pcie1_intc: interrupt-controller {
-					interrupt-controller;
-					#interrupt-cells = <1>;
-				};
-			};
-
-			/* x1 port */
-			pcie@2,0 {
-				device_type = "pci";
-				assigned-addresses = <0x82001000 0 0x40000 0 0x2000>;
-				reg = <0x1000 0 0 0 0>;
-				#address-cells = <3>;
-				#size-cells = <2>;
-				interrupt-names = "intx";
-				interrupts-extended = <&gic GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
-				#interrupt-cells = <1>;
-				ranges = <0x82000000 0 0 0x82000000 0x2 0 1 0
-					  0x81000000 0 0 0x81000000 0x2 0 1 0>;
-				bus-range = <0x00 0xff>;
-				interrupt-map-mask = <0 0 0 7>;
-				interrupt-map = <0 0 0 1 &pcie2_intc 0>,
-						<0 0 0 2 &pcie2_intc 1>,
-						<0 0 0 3 &pcie2_intc 2>,
-						<0 0 0 4 &pcie2_intc 3>;
-				marvell,pcie-port = <1>;
-				marvell,pcie-lane = <0>;
-				clocks = <&gateclk 5>;
-				status = "disabled";
-
-				pcie2_intc: interrupt-controller {
-					interrupt-controller;
-					#interrupt-cells = <1>;
-				};
-			};
-
-			/* x1 port */
-			pcie@3,0 {
-				device_type = "pci";
-				assigned-addresses = <0x82001800 0 0x44000 0 0x2000>;
-				reg = <0x1800 0 0 0 0>;
-				#address-cells = <3>;
-				#size-cells = <2>;
-				interrupt-names = "intx";
-				interrupts-extended = <&gic GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
-				#interrupt-cells = <1>;
-				ranges = <0x82000000 0 0 0x82000000 0x3 0 1 0
-					  0x81000000 0 0 0x81000000 0x3 0 1 0>;
-				bus-range = <0x00 0xff>;
-				interrupt-map-mask = <0 0 0 7>;
-				interrupt-map = <0 0 0 1 &pcie3_intc 0>,
-						<0 0 0 2 &pcie3_intc 1>,
-						<0 0 0 3 &pcie3_intc 2>,
-						<0 0 0 4 &pcie3_intc 3>;
-				marvell,pcie-port = <2>;
-				marvell,pcie-lane = <0>;
-				clocks = <&gateclk 6>;
-				status = "disabled";
-
-				pcie3_intc: interrupt-controller {
-					interrupt-controller;
-					#interrupt-cells = <1>;
-				};
-			};
-		};
-	};
-};
diff --git a/arch/arm64/boot/dts/marvell/armada-7020.dtsi b/arch/arm64/boot/dts/marvell/armada-7020.dtsi
deleted file mode 100644
index 570f901b4f4a..000000000000
--- a/arch/arm64/boot/dts/marvell/armada-7020.dtsi
+++ /dev/null
@@ -1,10 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-/*
- * Copyright (C) 2016 Marvell Technology Group Ltd.
- *
- * Device Tree file for the Armada 7020 SoC, made of an AP806 Dual and
- * one CP110.
- */
-
-#include "armada-ap806-dual.dtsi"
-#include "armada-70x0.dtsi"
diff --git a/arch/arm64/boot/dts/marvell/armada-8020.dtsi b/arch/arm64/boot/dts/marvell/armada-8020.dtsi
deleted file mode 100644
index b6fc18876093..000000000000
--- a/arch/arm64/boot/dts/marvell/armada-8020.dtsi
+++ /dev/null
@@ -1,20 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-/*
- * Copyright (C) 2016 Marvell Technology Group Ltd.
- *
- * Device Tree file for the Armada 8020 SoC, made of an AP806 Dual and
- * two CP110.
- */
-
-#include "armada-ap806-dual.dtsi"
-#include "armada-80x0.dtsi"
-
-/* The RTC requires external oscillator. But on Aramda 80x0, the RTC clock
- * in CP master is not connected (by package) to the oscillator. So
- * disable it. However, the RTC clock in CP slave is connected to the
- * oscillator so this one is let enabled.
- */
-
-&cp0_rtc {
-	status = "disabled";
-};
diff --git a/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
deleted file mode 100644
index 82f4dedfc25e..000000000000
--- a/arch/arm64/boot/dts/marvell/armada-ap806-dual.dtsi
+++ /dev/null
@@ -1,60 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-/*
- * Copyright (C) 2016 Marvell Technology Group Ltd.
- *
- * Device Tree file for Marvell Armada AP806.
- */
-
-#include "armada-ap806.dtsi"
-
-/ {
-	cpus {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		cpu0: cpu@0 {
-			device_type = "cpu";
-			compatible = "arm,cortex-a72";
-			reg = <0x000>;
-			enable-method = "psci";
-			#cooling-cells = <2>;
-			clocks = <&cpu_clk 0>;
-			i-cache-size = <0xc000>;
-			i-cache-line-size = <64>;
-			i-cache-sets = <256>;
-			d-cache-size = <0x8000>;
-			d-cache-line-size = <64>;
-			d-cache-sets = <256>;
-			next-level-cache = <&l2>;
-		};
-		cpu1: cpu@1 {
-			device_type = "cpu";
-			compatible = "arm,cortex-a72";
-			reg = <0x001>;
-			enable-method = "psci";
-			#cooling-cells = <2>;
-			clocks = <&cpu_clk 0>;
-			i-cache-size = <0xc000>;
-			i-cache-line-size = <64>;
-			i-cache-sets = <256>;
-			d-cache-size = <0x8000>;
-			d-cache-line-size = <64>;
-			d-cache-sets = <256>;
-			next-level-cache = <&l2>;
-		};
-
-		l2: l2-cache {
-			compatible = "cache";
-			cache-size = <0x80000>;
-			cache-line-size = <64>;
-			cache-sets = <512>;
-			cache-level = <2>;
-			cache-unified;
-		};
-	};
-
-	thermal-zones {
-		/delete-node/ ap-thermal-cpu2;
-		/delete-node/ ap-thermal-cpu3;
-	};
-};
diff --git a/arch/arm64/boot/dts/marvell/cn9130-db-comexpress.dtsi b/arch/arm64/boot/dts/marvell/cn9130-db-comexpress.dtsi
deleted file mode 100644
index 028496ebc473..000000000000
--- a/arch/arm64/boot/dts/marvell/cn9130-db-comexpress.dtsi
+++ /dev/null
@@ -1,96 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-/*
- * Copyright (C) 2023 Marvell International Ltd.
- *
- * Device tree for the CN9130-DB Com Express CPU module board.
- */
-
-#include "cn9130-db.dtsi"
-
-/ {
-	model = "Marvell Armada CN9130-DB COM EXPRESS type 7 CPU module board";
-	compatible = "marvell,cn9130-cpu-module", "marvell,cn9130",
-		     "marvell,armada-ap807-quad", "marvell,armada-ap807";
-
-};
-
-&ap0_reg_sd_vccq {
-	regulator-max-microvolt = <1800000>;
-	states = <1800000 0x1 1800000 0x0>;
-	/delete-property/ gpios;
-};
-
-&cp0_reg_usb3_vbus0 {
-	/delete-property/ gpio;
-};
-
-&cp0_reg_usb3_vbus1 {
-	/delete-property/ gpio;
-};
-
-&cp0_reg_sd_vcc {
-	status = "disabled";
-};
-
-&cp0_reg_sd_vccq {
-	status = "disabled";
-};
-
-&cp0_sdhci0 {
-	status = "disabled";
-};
-
-&cp0_eth0 {
-	status = "disabled";
-};
-
-&cp0_eth1 {
-	status = "okay";
-	phy = <&phy0>;
-	phy-mode = "rgmii-id";
-};
-
-&cp0_eth2 {
-	status = "disabled";
-};
-
-&cp0_mdio {
-	status = "okay";
-	pinctrl-0 = <&cp0_ge_mdio_pins>;
-	phy0: ethernet-phy@0 {
-		status = "okay";
-	};
-};
-
-&cp0_syscon0 {
-	cp0_pinctrl: pinctrl {
-		compatible = "marvell,cp115-standalone-pinctrl";
-
-		cp0_ge_mdio_pins: ge-mdio-pins {
-			marvell,pins = "mpp40", "mpp41";
-			marvell,function = "ge";
-		};
-	};
-};
-
-&cp0_sdhci0 {
-	status = "disabled";
-};
-
-&cp0_spi1 {
-	status = "okay";
-};
-
-&cp0_usb3_0 {
-	status = "okay";
-	usb-phy = <&cp0_usb3_0_phy0>;
-	phy-names = "usb";
-	/delete-property/ phys;
-};
-
-&cp0_usb3_1 {
-	status = "okay";
-	usb-phy = <&cp0_usb3_0_phy1>;
-	phy-names = "usb";
-	/delete-property/ phys;
-};
-- 
2.51.0


