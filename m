Return-Path: <devicetree+bounces-155163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EB6A55C6A
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 01:59:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5DA1E3B3727
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 00:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7785018DB22;
	Fri,  7 Mar 2025 00:57:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 651BA18DB1F;
	Fri,  7 Mar 2025 00:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741309060; cv=none; b=Ad3AaYtvWUSMFHPmbEL3/+4n3hr2AmhlGKCJ2KyJB3gq10Bd6QXoLoCb8hddHRgFkD/BpzqhoL4l/00bVMeahY0TGeGmvcFnXu2rPnxpolDquXDj/BIMxu2C5d2PLcIod5AnYBdBb6vk0oW6vxspy8coLLYT+/UCbw1Tl0AB62c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741309060; c=relaxed/simple;
	bh=u/xGFOcQmDm5i4vA5WjKGqSewjFjtp+9cUEsTuTUnis=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WLVDFnDueXYWWpDspPZrzU7pN5cnjTIfnCZb8dXpXSOGsvmF1jhWjO64iZqyGCIaJUbS8QqVSAVmPAlhx1DqJKyD+L3CPeAxH0SCM1RFwPOX25/aLwIfjgqR4NV3lyLSK0H+ePJl8E+qRxNez8/vJYrPWthwMue2y7TrCRoh8zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CBEDB2247;
	Thu,  6 Mar 2025 16:57:50 -0800 (PST)
Received: from localhost.localdomain (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 80B8B3F5A1;
	Thu,  6 Mar 2025 16:57:36 -0800 (PST)
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
Subject: [PATCH v3 08/15] arm64: dts: allwinner: Add Allwinner A523 .dtsi file
Date: Fri,  7 Mar 2025 00:57:05 +0000
Message-ID: <20250307005712.16828-9-andre.przywara@arm.com>
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

The Allwinner A523, and its siblings A527 and T527, which share the same
die, are a new family of SoCs introduced in 2023. They features eight
Arm Cortex-A55 cores, and, among the other usual peripherals, a PCIe and
USB 3.0 controller.

Add the basic SoC devicetree .dtsi for the chip, describing the
fundamental peripherals: the cores, GIC, timer, RTC, CCU and pinctrl.
Also some other peripherals are fully compatible with previous IP, so
add the USB and MMC nodes as well.
The other peripherals will be added in the future, once we understand
their compatibility and DT requirements.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 .../arm64/boot/dts/allwinner/sun55i-a523.dtsi | 598 ++++++++++++++++++
 1 file changed, 598 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi

diff --git a/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi b/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
new file mode 100644
index 0000000000000..ee485899ba0af
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
@@ -0,0 +1,598 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR MIT)
+// Copyright (C) 2023-2024 Arm Ltd.
+
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/clock/sun6i-rtc.h>
+#include <dt-bindings/clock/sun55i-a523-ccu.h>
+#include <dt-bindings/clock/sun55i-a523-r-ccu.h>
+#include <dt-bindings/reset/sun55i-a523-ccu.h>
+#include <dt-bindings/reset/sun55i-a523-r-ccu.h>
+
+/ {
+	interrupt-parent = <&gic>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu0: cpu@0 {
+			compatible = "arm,cortex-a55";
+			device_type = "cpu";
+			reg = <0x000>;
+			enable-method = "psci";
+		};
+
+		cpu1: cpu@100 {
+			compatible = "arm,cortex-a55";
+			device_type = "cpu";
+			reg = <0x100>;
+			enable-method = "psci";
+		};
+
+		cpu2: cpu@200 {
+			compatible = "arm,cortex-a55";
+			device_type = "cpu";
+			reg = <0x200>;
+			enable-method = "psci";
+		};
+
+		cpu3: cpu@300 {
+			compatible = "arm,cortex-a55";
+			device_type = "cpu";
+			reg = <0x300>;
+			enable-method = "psci";
+		};
+
+		cpu4: cpu@400 {
+			compatible = "arm,cortex-a55";
+			device_type = "cpu";
+			reg = <0x400>;
+			enable-method = "psci";
+		};
+
+		cpu5: cpu@500 {
+			compatible = "arm,cortex-a55";
+			device_type = "cpu";
+			reg = <0x500>;
+			enable-method = "psci";
+		};
+
+		cpu6: cpu@600 {
+			compatible = "arm,cortex-a55";
+			device_type = "cpu";
+			reg = <0x600>;
+			enable-method = "psci";
+		};
+
+		cpu7: cpu@700 {
+			compatible = "arm,cortex-a55";
+			device_type = "cpu";
+			reg = <0x700>;
+			enable-method = "psci";
+		};
+	};
+
+	osc24M: osc24M-clk {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <24000000>;
+		clock-output-names = "osc24M";
+	};
+
+	pmu {
+		compatible = "arm,cortex-a55-pmu";
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	psci {
+		compatible = "arm,psci-0.2";
+		method = "smc";
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		arm,no-tick-in-suspend;
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	soc {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x0 0x0 0x40000000>;
+
+		pio: pinctrl@2000000 {
+			compatible = "allwinner,sun55i-a523-pinctrl";
+			reg = <0x2000000 0x800>;
+			interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_APB1>, <&osc24M>, <&rtc CLK_OSC32K>;
+			clock-names = "apb", "hosc", "losc";
+			gpio-controller;
+			#gpio-cells = <3>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+
+			mmc0_pins: mmc0-pins {
+				pins = "PF0" ,"PF1", "PF2", "PF3", "PF4", "PF5";
+				allwinner,pinmux = <2>;
+				function = "mmc0";
+				drive-strength = <30>;
+				bias-pull-up;
+			};
+
+			/omit-if-no-ref/
+			mmc1_pins: mmc1-pins {
+				pins = "PG0" ,"PG1", "PG2", "PG3", "PG4", "PG5";
+				allwinner,pinmux = <2>;
+				function = "mmc1";
+				drive-strength = <30>;
+				bias-pull-up;
+			};
+
+			mmc2_pins: mmc2-pins {
+				pins = "PC0", "PC1" ,"PC5", "PC6", "PC8",
+				       "PC9", "PC10", "PC11", "PC13", "PC14",
+				       "PC15", "PC16";
+				allwinner,pinmux = <3>;
+				function = "mmc2";
+				drive-strength = <30>;
+				bias-pull-up;
+			};
+
+			uart0_pb_pins: uart0-pb-pins {
+				pins = "PB9", "PB10";
+				allwinner,pinmux = <2>;
+				function = "uart0";
+			};
+		};
+
+		ccu: clock-controller@2001000 {
+			compatible = "allwinner,sun55i-a523-ccu";
+			reg = <0x02001000 0x1000>;
+			clocks = <&osc24M>, <&rtc CLK_OSC32K>,
+				 <&rtc CLK_IOSC>, <&rtc CLK_OSC32K_FANOUT>;
+			clock-names = "hosc", "losc",
+				      "iosc", "losc-fanout";
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
+
+		mmc0: mmc@4020000 {
+			compatible = "allwinner,sun55i-a523-mmc",
+				     "allwinner,sun20i-d1-mmc";
+			reg = <0x04020000 0x1000>;
+			clocks = <&ccu CLK_BUS_MMC0>, <&ccu CLK_MMC0>;
+			clock-names = "ahb", "mmc";
+			resets = <&ccu RST_BUS_MMC0>;
+			reset-names = "ahb";
+			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&mmc0_pins>;
+			status = "disabled";
+
+			max-frequency = <150000000>;
+			cap-sd-highspeed;
+			cap-mmc-highspeed;
+			cap-sdio-irq;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		mmc1: mmc@4021000 {
+			compatible = "allwinner,sun55i-a523-mmc",
+				     "allwinner,sun20i-d1-mmc";
+			reg = <0x04021000 0x1000>;
+			clocks = <&ccu CLK_BUS_MMC1>, <&ccu CLK_MMC1>;
+			clock-names = "ahb", "mmc";
+			resets = <&ccu RST_BUS_MMC1>;
+			reset-names = "ahb";
+			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&mmc1_pins>;
+			status = "disabled";
+
+			max-frequency = <150000000>;
+			cap-sd-highspeed;
+			cap-mmc-highspeed;
+			cap-sdio-irq;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		mmc2: mmc@4022000 {
+			compatible = "allwinner,sun55i-a523-mmc",
+				     "allwinner,sun20i-d1-mmc";
+			reg = <0x04022000 0x1000>;
+			clocks = <&ccu CLK_BUS_MMC2>, <&ccu CLK_MMC2>;
+			clock-names = "ahb", "mmc";
+			resets = <&ccu RST_BUS_MMC2>;
+			reset-names = "ahb";
+			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&mmc2_pins>;
+			status = "disabled";
+
+			max-frequency = <150000000>;
+			cap-sd-highspeed;
+			cap-mmc-highspeed;
+			cap-sdio-irq;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		wdt: watchdog@2050000 {
+			compatible = "allwinner,sun55i-a523-wdt";
+			reg = <0x2050000 0x20>;
+			interrupts = <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&osc24M>, <&rtc CLK_OSC32K>;
+			clock-names = "hosc", "losc";
+			status = "okay";
+		};
+
+		uart0: serial@2500000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x02500000 0x400>;
+			interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&ccu CLK_BUS_UART0>;
+			resets = <&ccu RST_BUS_UART0>;
+			status = "disabled";
+		};
+
+		uart1: serial@2500400 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x02500400 0x400>;
+			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&ccu CLK_BUS_UART1>;
+			resets = <&ccu RST_BUS_UART1>;
+			status = "disabled";
+		};
+
+		uart2: serial@2500800 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x02500800 0x400>;
+			interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&ccu CLK_BUS_UART2>;
+			resets = <&ccu RST_BUS_UART2>;
+			status = "disabled";
+		};
+
+		uart3: serial@2500c00 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x02500c00 0x400>;
+			interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&ccu CLK_BUS_UART3>;
+			resets = <&ccu RST_BUS_UART3>;
+			status = "disabled";
+		};
+
+		uart4: serial@2501000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x02501000 0x400>;
+			interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&ccu CLK_BUS_UART4>;
+			resets = <&ccu RST_BUS_UART4>;
+			status = "disabled";
+		};
+
+		uart5: serial@2501400 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x02501400 0x400>;
+			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&ccu CLK_BUS_UART5>;
+			resets = <&ccu RST_BUS_UART5>;
+			status = "disabled";
+		};
+
+		uart6: serial@2501800 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x02501800 0x400>;
+			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&ccu CLK_BUS_UART6>;
+			resets = <&ccu RST_BUS_UART6>;
+			status = "disabled";
+		};
+
+		uart7: serial@2501c00 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x02501c00 0x400>;
+			interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&ccu CLK_BUS_UART7>;
+			resets = <&ccu RST_BUS_UART7>;
+			status = "disabled";
+		};
+
+		i2c0: i2c@2502000 {
+			compatible = "allwinner,sun55i-a523-i2c",
+				     "allwinner,sun8i-v536-i2c",
+				     "allwinner,sun6i-a31-i2c";
+			reg = <0x2502000 0x400>;
+			interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_I2C0>;
+			resets = <&ccu RST_BUS_I2C0>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c1: i2c@2502400 {
+			compatible = "allwinner,sun55i-a523-i2c",
+				     "allwinner,sun8i-v536-i2c",
+				     "allwinner,sun6i-a31-i2c";
+			reg = <0x2502400 0x400>;
+			interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_I2C1>;
+			resets = <&ccu RST_BUS_I2C1>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c2: i2c@2502800 {
+			compatible = "allwinner,sun55i-a523-i2c",
+				     "allwinner,sun8i-v536-i2c",
+				     "allwinner,sun6i-a31-i2c";
+			reg = <0x2502800 0x400>;
+			interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_I2C2>;
+			resets = <&ccu RST_BUS_I2C2>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c3: i2c@2502c00 {
+			compatible = "allwinner,sun55i-a523-i2c",
+				     "allwinner,sun8i-v536-i2c",
+				     "allwinner,sun6i-a31-i2c";
+			reg = <0x2502c00 0x400>;
+			interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_I2C3>;
+			resets = <&ccu RST_BUS_I2C3>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c4: i2c@2503000 {
+			compatible = "allwinner,sun55i-a523-i2c",
+				     "allwinner,sun8i-v536-i2c",
+				     "allwinner,sun6i-a31-i2c";
+			reg = <0x2503000 0x400>;
+			interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_I2C4>;
+			resets = <&ccu RST_BUS_I2C4>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c5: i2c@2503400 {
+			compatible = "allwinner,sun55i-a523-i2c",
+				     "allwinner,sun8i-v536-i2c",
+				     "allwinner,sun6i-a31-i2c";
+			reg = <0x2503400 0x400>;
+			interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_I2C5>;
+			resets = <&ccu RST_BUS_I2C5>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		gic: interrupt-controller@3400000 {
+			compatible = "arm,gic-v3";
+			#address-cells = <1>;
+			#interrupt-cells = <3>;
+			#size-cells = <1>;
+			ranges;
+			interrupt-controller;
+			reg = <0x3400000 0x10000>,
+			      <0x3460000 0x100000>;
+			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+			dma-noncoherent;
+
+			its: msi-controller@3440000 {
+				compatible = "arm,gic-v3-its";
+				reg = <0x3440000 0x20000>;
+				msi-controller;
+				#msi-cells = <1>;
+				dma-noncoherent;
+			};
+		};
+
+		usb_otg: usb@4100000 {
+			compatible = "allwinner,sun55i-a523-musb",
+				     "allwinner,sun8i-a33-musb";
+			reg = <0x4100000 0x400>;
+			interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "mc";
+			clocks = <&ccu CLK_BUS_OTG>;
+			resets = <&ccu RST_BUS_OTG>;
+			extcon = <&usbphy 0>;
+			phys = <&usbphy 0>;
+			phy-names = "usb";
+			status = "disabled";
+		};
+
+		usbphy: phy@4100400 {
+			compatible = "allwinner,sun55i-a523-usb-phy",
+				     "allwinner,sun20i-d1-usb-phy";
+			reg = <0x4100400 0x100>,
+			      <0x4101800 0x100>,
+			      <0x4200800 0x100>;
+			reg-names = "phy_ctrl",
+				    "pmu0",
+				    "pmu1";
+			clocks = <&osc24M>,
+				 <&osc24M>;
+			clock-names = "usb0_phy",
+				      "usb1_phy";
+			resets = <&ccu RST_USB_PHY0>,
+				 <&ccu RST_USB_PHY1>;
+			reset-names = "usb0_reset",
+				      "usb1_reset";
+			status = "disabled";
+			#phy-cells = <1>;
+		};
+
+		ehci0: usb@4101000 {
+			compatible = "allwinner,sun55i-a523-ehci",
+				     "generic-ehci";
+			reg = <0x4101000 0x100>;
+			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_OHCI0>,
+				 <&ccu CLK_BUS_EHCI0>,
+				 <&ccu CLK_USB_OHCI0>;
+			resets = <&ccu RST_BUS_OHCI0>,
+				 <&ccu RST_BUS_EHCI0>;
+			phys = <&usbphy 0>;
+			phy-names = "usb";
+			status = "disabled";
+		};
+
+		ohci0: usb@4101400 {
+			compatible = "allwinner,sun55i-a523-ohci",
+				     "generic-ohci";
+			reg = <0x4101400 0x100>;
+			interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_OHCI0>,
+				 <&ccu CLK_USB_OHCI0>;
+			resets = <&ccu RST_BUS_OHCI0>;
+			phys = <&usbphy 0>;
+			phy-names = "usb";
+			status = "disabled";
+		};
+
+		ehci1: usb@4200000 {
+			compatible = "allwinner,sun55i-a523-ehci",
+				     "generic-ehci";
+			reg = <0x4200000 0x100>;
+			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_OHCI1>,
+				 <&ccu CLK_BUS_EHCI1>,
+				 <&ccu CLK_USB_OHCI1>;
+			resets = <&ccu RST_BUS_OHCI1>,
+				 <&ccu RST_BUS_EHCI1>;
+			phys = <&usbphy 1>;
+			phy-names = "usb";
+			status = "disabled";
+		};
+
+		ohci1: usb@4200400 {
+			compatible = "allwinner,sun55i-a523-ohci",
+				     "generic-ohci";
+			reg = <0x4200400 0x100>;
+			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_OHCI1>,
+				 <&ccu CLK_USB_OHCI1>;
+			resets = <&ccu RST_BUS_OHCI1>;
+			phys = <&usbphy 1>;
+			phy-names = "usb";
+			status = "disabled";
+		};
+
+		r_ccu: clock-controller@7010000 {
+			compatible = "allwinner,sun55i-a523-r-ccu";
+			reg = <0x7010000 0x250>;
+			clocks = <&osc24M>,
+				 <&rtc CLK_OSC32K>,
+				 <&rtc CLK_IOSC>,
+				 <&ccu CLK_PLL_PERIPH0_200M>,
+				 <&ccu CLK_PLL_AUDIO0_4X>;
+			clock-names = "hosc",
+				      "losc",
+				      "iosc",
+				      "pll-periph",
+				      "pll-audio";
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
+
+		nmi_intc: interrupt-controller@7010320 {
+			compatible = "allwinner,sun55i-a523-nmi";
+			reg = <0x07010320 0xc>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		r_pio: pinctrl@7022000 {
+			compatible = "allwinner,sun55i-a523-r-pinctrl";
+			reg = <0x7022000 0x800>;
+			interrupts = <GIC_SPI 159 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&r_ccu CLK_R_APB0>,
+				 <&osc24M>,
+				 <&rtc CLK_OSC32K>;
+			clock-names = "apb", "hosc", "losc";
+			gpio-controller;
+			#gpio-cells = <3>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+
+			r_i2c_pins: r-i2c-pins {
+				pins = "PL0" ,"PL1";
+				allwinner,pinmux = <2>;
+				function = "r_i2c0";
+			};
+		};
+
+		r_i2c0: i2c@7081400 {
+			compatible = "allwinner,sun55i-a523-i2c",
+				     "allwinner,sun8i-v536-i2c",
+				     "allwinner,sun6i-a31-i2c";
+			reg = <0x07081400 0x400>;
+			interrupts = <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&r_ccu CLK_BUS_R_I2C0>;
+			resets = <&r_ccu RST_BUS_R_I2C0>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&r_i2c_pins>;
+			status = "disabled";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		rtc: rtc@7090000 {
+			compatible = "allwinner,sun55i-a523-rtc",
+				     "allwinner,sun50i-r329-rtc";
+			reg = <0x7090000 0x400>;
+			interrupts = <GIC_SPI 157 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&r_ccu CLK_BUS_R_RTC>,
+				 <&osc24M>,
+				 <&r_ccu CLK_R_AHB>;
+			clock-names = "bus", "hosc", "ahb";
+			#clock-cells = <1>;
+		};
+	};
+};
-- 
2.46.3


