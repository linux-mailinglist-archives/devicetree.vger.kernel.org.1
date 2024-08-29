Return-Path: <devicetree+bounces-98197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1F296522D
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 23:40:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 159EB286F04
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 21:40:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA6D31BAECC;
	Thu, 29 Aug 2024 21:39:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O6ukoPgn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C96841BAEE7;
	Thu, 29 Aug 2024 21:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724967597; cv=none; b=b0YsFGdKCK8F6BqzQMK1w+5qypWSHKoBv/K+GfTtrzWWPf8YviOaRprORBi5lzOGKpKfyXOiPYv74Xd51fYVK3ZB7K/pNEJBmfoF6z6j/c5TAve3FBlsj1Pthr0E55Xjj5Se1mjjBhQ9+Tbjc0u17Tqb7DFY3MD3UidDocVYVj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724967597; c=relaxed/simple;
	bh=nxpQ5KF4QQT9SP6iXYMeW4/l8oqn7whPsdEmOvvgIfI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=f7ZWb+abZ4Ug4vQ4PP/8c/lfNo53rKhEfhjRaXrGDmp8nKO/IekPdutvABeY6e+ZVWrdULhZ91/fAEZTJ8V7y+/sUBnntyvZpQ91ELJAO2jFMWxmFsQNniTX7AojT0C2NjuNi2G36B9le3EpMShljJmestPH4Z5jhH4a+uk6YK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O6ukoPgn; arc=none smtp.client-ip=209.85.166.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-39d2ac2a9d9so4026885ab.0;
        Thu, 29 Aug 2024 14:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724967595; x=1725572395; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zt86x3ORINW/cVS5yQnlzSyGX9QNtKTiX3smMc2zAkA=;
        b=O6ukoPgnLIqJeWcocis8xIXPSDfRtipvz4oHyHwgVAo+HCijUMxXZ31/q/DgLj4hG0
         xXomAeLbsbx5Lk7Cvk4nBLbokdRK3gwyJ+bqWkWcuTEStn3ublUkbq7e7e1hggepUoHs
         Po/fuaj1F7mR2dFxkeMueItoKiirMYIybHffPIoZ51U0iohyv3QFTiZVSEpaZwFeCXVM
         pW/MrcG49QtfvTJLyErfaoT0OO3o2p9wU6Ncvnmg4nxqqdslr6qdEGJ/TFJf7puCyiLY
         co3IJs5ivxqbvbtqS1xYxxuTGwBozYQIrTS2D9s1HrnTz1iwQk4B8vgzIi48JK36BErj
         UmUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724967595; x=1725572395;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zt86x3ORINW/cVS5yQnlzSyGX9QNtKTiX3smMc2zAkA=;
        b=GuW+IeJAotvAnu67+umHG/UCSG9oh4LtWY/pSWSk5DF5PTMCnf0yk8zXOIn3DGq7cZ
         NL2vaDaGEK01FGmKlqRWD3myn+TtgnkhJcHdSkQCLaw45kGm7dsDJCkb6IIniS73gLZA
         RgvTBxeSa4N0PygUNK1JkasYVCEXdinRWdi5ksMPox/0BbydQaCFZFO2gpl6tieM06dv
         VGZ0LFht+crg7hN6KGiOfXKiZU6+wN0guS/Q9VIF9GCQaM8nahfdJix8fn8qL9Qte3W5
         IAFt/mBY6K27ZZgM/7h4rjen81sYqzZjtxEEGtDHj1KPIwk2ZbrKepmLLIwpyyIojmzg
         tHgw==
X-Forwarded-Encrypted: i=1; AJvYcCUI0HUfWmVvuzHCgdpmGdVYJI00V5KMokPLpuQ1icBQstv5J7ovYWw28MFq2GYGdWTV9TwshumNmNuRgG0g@vger.kernel.org, AJvYcCUP2DWrdgLcaxchkIz70DKtNMndMfSYknGxpLWO2PEqXL3eR5llwlTW+mVZnLa3+Kn0I0SFH/Osig4A@vger.kernel.org
X-Gm-Message-State: AOJu0YzVZxtW0m4Obs3kO7U3yxST50TRcD15G2u1sKq0FKGFxEZPtE+O
	RyNooErG2s9KDaOsa8kBq56vAJrAzzAr5uYXii3BPSSTAMIID+re7tXB6w==
X-Google-Smtp-Source: AGHT+IE4Bsitq8FoIfn/KWeSO16I90c8qWkJYQQT+MYPA5SXo4l3dnYVdsCXWH3hoHesv99oOY29Cg==
X-Received: by 2002:a05:6e02:17ce:b0:39d:189a:edf6 with SMTP id e9e14a558f8ab-39f37984bd8mr46356155ab.22.1724967594529;
        Thu, 29 Aug 2024 14:39:54 -0700 (PDT)
Received: from hestia.. (216-71-44-235-dynamic.midco.net. [216.71.44.235])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-39f3afaf38bsm4957755ab.19.2024.08.29.14.39.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 14:39:54 -0700 (PDT)
From: Robert Nelson <robertcnelson@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Robert Nelson <robertcnelson@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Nishanth Menon <nm@ti.com>,
	Andrew Davis <afd@ti.com>,
	Jai Luthra <j-luthra@ti.com>,
	Roger Quadros <rogerq@kernel.org>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Jared McArthur <j-mcarthur@ti.com>,
	Andrei Aldea <a-aldea@ti.com>,
	Jason Kridner <jkridner@beagleboard.org>,
	Deepak Khatri <lorforlinux@beagleboard.org>,
	Drew Fustini <drew@beagleboard.org>
Subject: [PATCH v4 2/2] arm64: dts: ti: Add k3-am67a-beagley-ai
Date: Thu, 29 Aug 2024 16:39:29 -0500
Message-Id: <20240829213929.48540-2-robertcnelson@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240829213929.48540-1-robertcnelson@gmail.com>
References: <20240829213929.48540-1-robertcnelson@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

BeagleBoard.org BeagleY-AI is an easy to use, affordable open source
hardware single board computer based on the Texas Instruments AM67A,
which features a quad-core 64-bit Arm CPU subsystem, 2 general-purpose
digital-signal-processors (DSP) and matrix-multiply-accelerators (MMA),
GPU, vision and deep learning accelerators, and multiple Arm Cortex-R5
cores for low-power, low-latency GPIO control.

https://beagley-ai.org/
https://openbeagle.org/beagley-ai/beagley-ai

Signed-off-by: Robert Nelson <robertcnelson@gmail.com>
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: Conor Dooley <conor+dt@kernel.org>
CC: Vignesh Raghavendra <vigneshr@ti.com>
CC: Nishanth Menon <nm@ti.com>
CC: Andrew Davis <afd@ti.com>
CC: Jai Luthra <j-luthra@ti.com>
CC: Roger Quadros <rogerq@kernel.org>
CC: Siddharth Vadapalli <s-vadapalli@ti.com>
CC: Jared McArthur <j-mcarthur@ti.com>
CC: Andrei Aldea <a-aldea@ti.com>
CC: Jason Kridner <jkridner@beagleboard.org>
CC: Deepak Khatri <lorforlinux@beagleboard.org>
CC: Drew Fustini <drew@beagleboard.org>
---
Changes since v3:
 - removed extra blank lines
 - Krzysztof/Nishanth: switch to consistent regulator-x syntax along with dropping uppercase
 - Roger: removed un-used internal network clock: OBSCLK
 - Nishanth: fixed order of bootph-all before vendor prefixes
 - Nishanth: removed unused default-trigger with led-0 (dtbs_check failure)
Changes since v2:
 - added led indictors
 - sdhci1 use MMC1_SDCD.GPIO1_48 for card detect
 - cleaned up order of status = "okay"
 - wkup_i2c0 moved to 100000
 - eeprom added atmel,24c32
 - rtc added dallas,ds1340
 - sdhci1 use ti,fails-without-test-cd
Changes since v1:
 - fixed incorrect vdd-3v3-sd-pins-default name
 - updated hdmi VDD_1V2 regulator for production pcb
 - switched device tree name from k3-j722s-beagley-ai to k3-am67a-beagley-ai
 - removed cpsw_port2 node
 - enable UHS support for MMCSD
---
 arch/arm64/boot/dts/ti/Makefile               |   1 +
 .../arm64/boot/dts/ti/k3-am67a-beagley-ai.dts | 393 ++++++++++++++++++
 2 files changed, 394 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am67a-beagley-ai.dts

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index 8dbe7b4979c7..bcd392c3206e 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -116,6 +116,7 @@ dtb-$(CONFIG_ARCH_K3) += k3-j721s2-evm.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-j721s2-evm-pcie1-ep.dtbo
 
 # Boards with J722s SoC
+dtb-$(CONFIG_ARCH_K3) += k3-am67a-beagley-ai.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-j722s-evm.dtb
 
 # Boards with J784s4 SoC
diff --git a/arch/arm64/boot/dts/ti/k3-am67a-beagley-ai.dts b/arch/arm64/boot/dts/ti/k3-am67a-beagley-ai.dts
new file mode 100644
index 000000000000..44dfbdf89277
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am67a-beagley-ai.dts
@@ -0,0 +1,393 @@
+// SPDX-License-Identifier: GPL-2.0-only OR MIT
+/*
+ * https://beagley-ai.org/
+ *
+ * Copyright (C) 2024 Texas Instruments Incorporated - https://www.ti.com/
+ * Copyright (C) 2024 Robert Nelson, BeagleBoard.org Foundation
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/net/ti-dp83867.h>
+#include "k3-j722s.dtsi"
+
+/ {
+	compatible = "beagle,am67a-beagley-ai", "ti,j722s";
+	model = "BeagleBoard.org BeagleY-AI";
+
+	aliases {
+		serial0 = &wkup_uart0;
+		serial2 = &main_uart0;
+		mmc1 = &sdhci1;
+		rtc0 = &rtc;
+	};
+
+	chosen {
+		stdout-path = &main_uart0;
+	};
+
+	memory@80000000 {
+		/* 4G RAM */
+		reg = <0x00000000 0x80000000 0x00000000 0x80000000>,
+		      <0x00000008 0x80000000 0x00000000 0x80000000>;
+		device_type = "memory";
+		bootph-pre-ram;
+	};
+
+	reserved_memory: reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		secure_tfa_ddr: tfa@9e780000 {
+			reg = <0x00 0x9e780000 0x00 0x80000>;
+			no-map;
+		};
+
+		secure_ddr: optee@9e800000 {
+			reg = <0x00 0x9e800000 0x00 0x01800000>;
+			no-map;
+		};
+
+		wkup_r5fss0_core0_memory_region: r5f-memory@a0100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa0100000 0x00 0xf00000>;
+			no-map;
+		};
+	};
+
+	vsys_5v0: regulator-1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vsys_5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+		bootph-all;
+	};
+
+	vdd_3v3: regulator-2 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vsys_5v0>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vdd_mmc1: regulator-3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_mmc1";
+		pinctrl-names = "default";
+		pinctrl-0 = <&vdd_3v3_sd_pins_default>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		enable-active-high;
+		gpio = <&main_gpio1 50 GPIO_ACTIVE_HIGH>;
+		bootph-all;
+	};
+
+	vdd_sd_dv: regulator-4 {
+		compatible = "regulator-gpio";
+		regulator-name = "tlv71033";
+		pinctrl-names = "default";
+		pinctrl-0 = <&vdd_sd_dv_pins_default>;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		vin-supply = <&vsys_5v0>;
+		gpios = <&main_gpio1 49 GPIO_ACTIVE_HIGH>;
+		states = <1800000 0x0>,
+			 <3300000 0x1>;
+		bootph-all;
+	};
+
+	vsys_io_1v8: regulator-5 {
+		compatible = "regulator-fixed";
+		regulator-name = "vsys_io_1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vsys_io_1v2: regulator-6 {
+		compatible = "regulator-fixed";
+		regulator-name = "vsys_io_1v2";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&led_pins_default>;
+
+		led-0 {
+			gpios = <&main_gpio0 11 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+		};
+
+		led-1 {
+			gpios = <&main_gpio0 12 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+			function = LED_FUNCTION_HEARTBEAT;
+			default-state = "on";
+		};
+	};
+};
+
+&main_pmx0 {
+	main_i2c0_pins_default: main-i2c0-default-pins {
+		pinctrl-single,pins = <
+			J722S_IOPAD(0x01e0, PIN_INPUT_PULLUP, 0) /* (D23) I2C0_SCL */
+			J722S_IOPAD(0x01e4, PIN_INPUT_PULLUP, 0) /* (B22) I2C0_SDA */
+		>;
+		bootph-all;
+	};
+
+	main_uart0_pins_default: main-uart0-default-pins {
+		pinctrl-single,pins = <
+			J722S_IOPAD(0x01c8, PIN_INPUT, 0)	/* (A22) UART0_RXD */
+			J722S_IOPAD(0x01cc, PIN_OUTPUT, 0)	/* (B22) UART0_TXD */
+		>;
+		bootph-all;
+	};
+
+	vdd_sd_dv_pins_default: vdd-sd-dv-default-pins {
+		pinctrl-single,pins = <
+			J722S_IOPAD(0x0244, PIN_OUTPUT, 7) /* (A24) MMC1_SDWP.GPIO1_49 */
+		>;
+		bootph-all;
+	};
+
+	main_mmc1_pins_default: main-mmc1-default-pins {
+		pinctrl-single,pins = <
+			J722S_IOPAD(0x023c, PIN_INPUT, 0) /* (H22) MMC1_CMD */
+			J722S_IOPAD(0x0234, PIN_OUTPUT, 0) /* (H24) MMC1_CLK */
+			J722S_IOPAD(0x0230, PIN_INPUT, 0) /* (H23) MMC1_DAT0 */
+			J722S_IOPAD(0x022c, PIN_INPUT_PULLUP, 0) /* (H20) MMC1_DAT1 */
+			J722S_IOPAD(0x0228, PIN_INPUT_PULLUP, 0) /* (J23) MMC1_DAT2 */
+			J722S_IOPAD(0x0224, PIN_INPUT_PULLUP, 0) /* (H25) MMC1_DAT3 */
+			J722S_IOPAD(0x0240, PIN_INPUT, 7) /* (B24) MMC1_SDCD.GPIO1_48 */
+		>;
+		bootph-all;
+	};
+
+	mdio_pins_default: mdio-default-pins {
+		pinctrl-single,pins = <
+			J722S_IOPAD(0x0160, PIN_OUTPUT, 0) /* (AC24) MDIO0_MDC */
+			J722S_IOPAD(0x015c, PIN_INPUT, 0) /* (AD25) MDIO0_MDIO */
+		>;
+	};
+
+	rgmii1_pins_default: rgmii1-default-pins {
+		pinctrl-single,pins = <
+			J722S_IOPAD(0x014c, PIN_INPUT, 0) /* (AC25) RGMII1_RD0 */
+			J722S_IOPAD(0x0150, PIN_INPUT, 0) /* (AD27) RGMII1_RD1 */
+			J722S_IOPAD(0x0154, PIN_INPUT, 0) /* (AE24) RGMII1_RD2 */
+			J722S_IOPAD(0x0158, PIN_INPUT, 0) /* (AE26) RGMII1_RD3 */
+			J722S_IOPAD(0x0148, PIN_INPUT, 0) /* (AE27) RGMII1_RXC */
+			J722S_IOPAD(0x0144, PIN_INPUT, 0) /* (AD23) RGMII1_RX_CTL */
+			J722S_IOPAD(0x0134, PIN_OUTPUT, 0) /* (AF27) RGMII1_TD0 */
+			J722S_IOPAD(0x0138, PIN_OUTPUT, 0) /* (AE23) RGMII1_TD1 */
+			J722S_IOPAD(0x013c, PIN_OUTPUT, 0) /* (AG25) RGMII1_TD2 */
+			J722S_IOPAD(0x0140, PIN_OUTPUT, 0) /* (AF24) RGMII1_TD3 */
+			J722S_IOPAD(0x0130, PIN_OUTPUT, 0) /* (AG26) RGMII1_TXC */
+			J722S_IOPAD(0x012c, PIN_OUTPUT, 0) /* (AF25) RGMII1_TX_CTL */
+		>;
+	};
+
+	led_pins_default: led-default-pins {
+		pinctrl-single,pins = <
+			J722S_IOPAD(0x002c, PIN_OUTPUT, 7) /* (K26) OSPI0_CSn0.GPIO0_11 */
+			J722S_IOPAD(0x0030, PIN_OUTPUT, 7) /* (K23) OSPI0_CSn1.GPIO0_12 */
+		>;
+	};
+
+	pmic_irq_pins_default: pmic-irq-default-pins {
+		pinctrl-single,pins = <
+			J722S_IOPAD(0x01f4, PIN_INPUT_PULLUP, 0) /* (B23) EXTINTn */
+		>;
+	};
+
+	vdd_3v3_sd_pins_default: vdd-3v3-sd-default-pins {
+		pinctrl-single,pins = <
+			J722S_IOPAD(0x0254, PIN_OUTPUT, 7) /* (E25) USB0_DRVVBUS.GPIO1_50 */
+		>;
+	};
+};
+
+&cpsw3g {
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmii1_pins_default>;
+	status = "okay";
+};
+
+&cpsw3g_mdio {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mdio_pins_default>;
+	status = "okay";
+
+	cpsw3g_phy0: ethernet-phy@0 {
+		reg = <0>;
+		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+		ti,min-output-impedance;
+	};
+};
+
+&cpsw_port1 {
+	phy-mode = "rgmii-rxid";
+	phy-handle = <&cpsw3g_phy0>;
+	status = "okay";
+};
+
+&main_gpio1 {
+	status = "okay";
+};
+
+&main_uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_uart0_pins_default>;
+	bootph-all;
+	status = "okay";
+};
+
+&mcu_pmx0 {
+	wkup_uart0_pins_default: wkup-uart0-default-pins {
+		pinctrl-single,pins = <
+			J722S_MCU_IOPAD(0x02c, PIN_INPUT, 0)	/* (C7) WKUP_UART0_CTSn */
+			J722S_MCU_IOPAD(0x030, PIN_OUTPUT, 0)	/* (C6) WKUP_UART0_RTSn */
+			J722S_MCU_IOPAD(0x024, PIN_INPUT, 0)	/* (D8) WKUP_UART0_RXD */
+			J722S_MCU_IOPAD(0x028, PIN_OUTPUT, 0)	/* (D7) WKUP_UART0_TXD */
+		>;
+		bootph-all;
+	};
+
+	wkup_i2c0_pins_default: wkup-i2c0-default-pins {
+		pinctrl-single,pins = <
+			J722S_MCU_IOPAD(0x04c, PIN_INPUT_PULLUP, 0)	/* (C7) WKUP_I2C0_SCL */
+			J722S_MCU_IOPAD(0x050, PIN_INPUT_PULLUP, 0)	/* (C6) WKUP_I2C1_SDA */
+		>;
+		bootph-all;
+	};
+};
+
+&wkup_uart0 {
+	/* WKUP UART0 is used by Device Manager firmware */
+	pinctrl-names = "default";
+	pinctrl-0 = <&wkup_uart0_pins_default>;
+	bootph-all;
+	status = "reserved";
+};
+
+&wkup_i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&wkup_i2c0_pins_default>;
+	clock-frequency = <100000>;
+	bootph-all;
+	status = "okay";
+
+	tps65219: pmic@30 {
+		compatible = "ti,tps65219";
+		reg = <0x30>;
+		buck1-supply = <&vsys_5v0>;
+		buck2-supply = <&vsys_5v0>;
+		buck3-supply = <&vsys_5v0>;
+		ldo1-supply = <&vdd_3v3>;
+		ldo3-supply = <&vdd_3v3>;
+		ldo4-supply = <&vdd_3v3>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_irq_pins_default>;
+		interrupt-parent = <&gic500>;
+		interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
+
+		bootph-all;
+		system-power-controller;
+		ti,power-button;
+
+		regulators {
+			buck1_reg: buck1 {
+				regulator-name = "VDD_3V3";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck2_reg: buck2 {
+				regulator-name = "VDD_1V8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo1_reg: ldo1 {
+				regulator-name = "VDDSHV5_SDIO";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-allow-bypass;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo2_reg: ldo2 {
+				regulator-name = "VDD_1V2";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo3_reg: ldo3 {
+				regulator-name = "VDDA_PHY_1V8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo4_reg: ldo4 {
+				regulator-name = "VDDA_PLL_1V8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+		};
+	};
+
+	eeprom@50 {
+		compatible = "atmel,24c32";
+		reg = <0x50>;
+	};
+
+	rtc: rtc@68 {
+		compatible = "dallas,ds1340";
+		reg = <0x68>;
+	};
+};
+
+&sdhci1 {
+	/* SD/MMC */
+	vmmc-supply = <&vdd_mmc1>;
+	vqmmc-supply = <&vdd_sd_dv>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_mmc1_pins_default>;
+	disable-wp;
+	cd-gpios = <&main_gpio1 48 GPIO_ACTIVE_LOW>;
+	cd-debounce-delay-ms = <100>;
+	bootph-all;
+	ti,fails-without-test-cd;
+	status = "okay";
+};
-- 
2.39.2


