Return-Path: <devicetree+bounces-62962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 548EC8B3492
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 11:54:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 78ECB1C20C90
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 09:53:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1514814039A;
	Fri, 26 Apr 2024 09:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="CLnZ+/4H";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="Wfcymbgk"
X-Original-To: devicetree@vger.kernel.org
Received: from fout5-smtp.messagingengine.com (fout5-smtp.messagingengine.com [103.168.172.148])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5FF13FD82
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 09:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.148
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714125218; cv=none; b=FLkJ/6o+RhD9WHFXop4pbhrFdXouNopF8OeYuSto8MGN757yq5ALks7mrOSwh8+KeV6CZvU6nN1XMi5u0xpzJkL1U6VpNa8H1IXrVFaXqBYBAO7y72V56UuGduLNdF7pW27tN7OYNmNb88R5Ik+MmzPAFb77Sc2Fk+hwEPknNNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714125218; c=relaxed/simple;
	bh=eBnNvG4pwMKjYLvVr9gfXemRNmC3vkJsVb3//uOCL90=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YCuaOXRcsVIfZxsbs73NCNsLrt+2kd/13kjmuX10lHyBC+OxLDf97lQiEjVHrrhRRMJziDYRkaCErDKiiJRDaQcXGRcGMv05rTt+yEjkBd7/m3zWh1wCxWP4bl+48GSWy73rW/sbfk2nFQKBRL30rjsAaAI4ABfYXldTg8WFhks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=CLnZ+/4H; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=Wfcymbgk; arc=none smtp.client-ip=103.168.172.148
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailfout.nyi.internal (Postfix) with ESMTP id 9268F138197A;
	Fri, 26 Apr 2024 05:53:34 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Fri, 26 Apr 2024 05:53:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1714125214; x=
	1714211614; bh=yqczSOfKpMSELDRDlPOksCuUkyP8c3FtNtXt1E6KAi8=; b=C
	LnZ+/4HFH3+SiZ1O78c1BgOXSxCQ8fggoqYn4Uk6bpg2jOZ7M6eby+IVWejaR9MR
	uUKSpXujEljLsEPBreRkI7xSkPEXTobSTbxINylypLXRsJmb/NlJcvQXfPWnzv7P
	suu0l/njsp4Wols4fdDMYfw6Q8D0YCfh0yr9BPkjOMCLRihS3FRXu5WATyvSFLmM
	3VC9wlllVa86ffOolT3Z60DVxwnw+yaGWX1zPyGzaW6I4GUUaeInIFfxmt9MDHqR
	1aCCUTCLHgstvcWNNXJ3CRdiCa+LHXS8ICByFo/9DroQ036cUD8hiUTLRwbnz59P
	NXrXyX7wMm5s5Yi+S9mDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714125214; x=
	1714211614; bh=yqczSOfKpMSELDRDlPOksCuUkyP8c3FtNtXt1E6KAi8=; b=W
	fcymbgkUxMU5f7ZbTYAZjMup0GpETHmw1dJx3PWoBVU9a4fan2fu9xOgxcDVhHJr
	G/efyqmFHcWborr5DCcwW9BVFBNT/yHjBzzCd4p2nyvSGBMVIlWH66YVN2dwFzoS
	fXWtYtSw1/bjwKq6I6jXFklMR3nKRgz13Pe4D6KRgA1bnX8+pXif9rGHuGZEoHB+
	y2/4fouknoflrfBGZeB+e5FdneRwsApX70IBxeWbYd5Ko78Rgb3adAVeuN2QOQsr
	rPYb7Vd8GkTcHoFFlVczfSo1CYDUmvsxe1nYZhU1IuHreH/UdNb7YbjWZraRS8Fq
	dYXcIqcALI3oZrszajd0w==
X-ME-Sender: <xms:nnkrZm8ViLHdeu3e6aY1ce3Rh6PBvExzR6v0RbjeTSmvlJ7IU3fjHw>
    <xme:nnkrZmv2fCbyuR5NxhiflALj7HtxreRtLEopK3BLS2kqLIZKHe91C5YF7xfdGYq-S
    yx2DVPE7R_Q4NcN8g>
X-ME-Received: <xmr:nnkrZsBlnZQ54f1NHZEZIT23FhUL_B2nynT63qT4Kzmtklv-gvVbaCNk1tCxxBsISZFDLEeQQR2aoeW40Xgb_SQsCYZevMoAdMiSDeEhUhpMjavR>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudelledgvddtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomheptfihrghn
    ucghrghlkhhlihhnuceorhihrghnsehtvghsthhtohgrshhtrdgtohhmqeenucggtffrrg
    htthgvrhhnpeehgeduffeiveeiuddufeelffeuteeiiedulefhteevgefgffehheeuudff
    veejvdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivg
    eptdenucfrrghrrghmpehmrghilhhfrhhomheprhihrghnsehtvghsthhtohgrshhtrdgt
    ohhm
X-ME-Proxy: <xmx:nnkrZuc-UkLWnsHlYD__HceXZazTyP_2JTzb7m4oIGqsfOMe2Jfcig>
    <xmx:nnkrZrMWwKzI2bFl-hzZnDpSUBnLgzK93Be4aWuAhwTzs5tf2pS75Q>
    <xmx:nnkrZokYGcq475BZqJV9tdIU1Nx8nUrctGmXIBzfjhljzufaSUJcag>
    <xmx:nnkrZtsZpHeUht_ieswD-P-Z9RVJvV4WX8MZfSG97GNqIoeHaHlYqQ>
    <xmx:nnkrZolfOj9M1YNtYn-bNCXmg6cgjTUHFQffmYOb3Dz8lqDRHjEvy6hH>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 26 Apr 2024 05:53:30 -0400 (EDT)
From: Ryan Walklin <ryan@testtoast.com>
To: Andre Przywara <andre.przywara@arm.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Chris Morgan <macromorgan@hotmail.com>
Cc: devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	Ryan Walklin <ryan@testtoast.com>
Subject: [PATCH v4 2/4] arm64: dts: allwinner: h700: Add RG35XX 2024 DTS
Date: Fri, 26 Apr 2024 21:51:40 +1200
Message-ID: <20240426095141.13602-4-ryan@testtoast.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240426095141.13602-2-ryan@testtoast.com>
References: <20240426095141.13602-2-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The base model RG35XX (2024) is a handheld gaming device based on an Allwinner H700 chip.

The H700 is a H616 variant (4x ARM Cortex-A53 cores @ 1.5Ghz with Mali G31 GPU) which exposes RGB LCD and NMI pins.

Device features:
- Allwinner H700 @ 1.5GHz
- 1GB LPDDR4 DRAM
- X-Powers AXP717 PMIC
- 3.5" 640x480 RGB LCD
- Two microSD slots
- Mini-HDMI out
- GPIO keypad
- 3.5mm headphone jack
- USB-C charging port

Enabled in this DTS:
- AXP717 PMIC with RSB serial interface, regulators and NMI interrupt controller
- Power LED (charge LED on device controlled directly by PMIC)
- Serial UART (accessible from headers on the board)
- MMC slots

Signed-off-by: Ryan Walklin <ryan@testtoast.com>
---
Changelog v1..v2:
- Update copyright
- Spaces -> Tabs
- Add cpufreq support
- Remove MMC aliases
- Fix GPIO button and regulator node names
- Note unused AXP717 regulators
- Update regulators for SD slots
- Remove unused I2C3 device
- Update NMI interrupt controller for AXP717, requires H616 support patch in dt-next [1]
- Add chassis-type
- Address USB EHCI/OHCI0 correctly and add usb vbus supply
- Add PIO vcc-pg-supply
- Correct boost regulator voltage and name

Changelog v2..v3:
- Remove cpufreq support (patch still pending for 6.10, will followup with enablement patch once opp table merged)
- Add dtb to Makefile
- Remove unnecessary duplicated PLL regulator
- Remove unimplemented/not-present drive-vbus feature from AXP717
- Rename CLDO3 to "vcc-io", inferring function from board testing by Chris Morgan
- Correct MMC1 vmmc-supply to CLDO3 and MMC2 to CLDO4
- Reduce DCDC1 "vdd-cpu" supply voltage range to 0.9v-1.1v to match lowest OPP voltage
- Identify DCDC2 as GPU supply - rename to "vdd-gpu-sys", remove always-on and use fixed 0.94v voltage
- Fix indentation
- Correct boot/always-on states and voltages for various regulators from vendor BSP
- Change USB-OTG mode to "peripheral" and correct comment
- Correct and add remaining PIO supplies
- Move volume key GPIOs to separate block to allow key repeat
- Alphabetically orrder gamepad GPIOs
- Move changelog and links below fold-line
- Remove USB 3.3v VCC-USB and VCC-SD2 regulators pending further hardware investigation (to be submitted as subsequent patch)
- Constrain boost regulator voltage to 5.0v to 5.2v to capture default voltage of 5.126v

Changelog v3..v4:
- Cluster USB nodes
- Do not define voltage range for currently unused CLDO1 (connected to audio codec according to vendor BSP - driver not yet implemented) and ALDO3 (1.8v).
- Note voltages set for currently unused regulators from vendor BSP in comments to aid identification
- Remove regulator-boot-on from several regulators where it was not required
- Fix indentation
- Add "disable-wp" for SD2 as for SD1 (doesn't make sense for micro-SD)
- Restore fixed 3.3v regulator for SD2 (vcc_3v3_sd2), which is required for SD2 to function. CLDO4 appears to be the 1.8v supply required for low-voltage UHS-I signalling, however a GPIO pin to switch between the supplies is not yet confirmed (likely PE4) and will be implemented in a subsequent patch.

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/commit/?h=dt/next&id=d47bca77bf3ab475c33b3929c33c80aeb49df35c

Signed-off-by: Ryan Walklin <ryan@testtoast.com>
---
 arch/arm64/boot/dts/allwinner/Makefile        |   1 +
 .../sun50i-h700-anbernic-rg35xx-2024.dts      | 347 ++++++++++++++++++
 2 files changed, 348 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts

diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index 21149b346a60..6f997157968e 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -47,3 +47,4 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-longanpi-3h.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero2w.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero3.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-transpeed-8k618-t.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-2024.dtb
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
new file mode 100644
index 000000000000..112605561e92
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
@@ -0,0 +1,347 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Copyright (C) 2024 Ryan Walklin <ryan@testtoast.com>.
+ */
+
+/dts-v1/;
+
+#include "sun50i-h616.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/leds/common.h>
+
+/ {
+	model = "Anbernic RG35XX 2024";
+	chassis-type = "handset";
+	compatible = "anbernic,rg35xx-2024", "allwinner,sun50i-h700";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-0 {
+			function = LED_FUNCTION_POWER;
+			color = <LED_COLOR_ID_GREEN>;
+			gpios = <&pio 8 12 GPIO_ACTIVE_HIGH>; /* PI12 */
+			default-state = "on";
+		};
+	};
+
+	gpio_keys_gamepad: gpio-keys-gamepad {
+		compatible = "gpio-keys";
+
+		button-a {
+			label = "Action-Pad A";
+			gpios = <&pio 0 0 GPIO_ACTIVE_LOW>; /* PA0 */
+			linux,input-type = <EV_KEY>;
+			linux,code = <BTN_EAST>;
+		};
+
+		button-b {
+			label = "Action-Pad B";
+			gpios = <&pio 0 1 GPIO_ACTIVE_LOW>; /* PA1 */
+			linux,input-type = <EV_KEY>;
+			linux,code = <BTN_SOUTH>;
+		};
+
+		button-down {
+			label = "D-Pad Down";
+			gpios = <&pio 4 0 GPIO_ACTIVE_LOW>; /* PE0 */
+			linux,input-type = <EV_KEY>;
+			linux,code = <BTN_DPAD_DOWN>;
+		};
+
+		button-l1 {
+			label = "Key L1";
+			gpios = <&pio 0 10 GPIO_ACTIVE_LOW>; /* PA10 */
+			linux,input-type = <EV_KEY>;
+			linux,code = <BTN_TL>;
+		};
+
+		button-l2 {
+			label = "Key L2";
+			gpios = <&pio 0 11 GPIO_ACTIVE_LOW>; /* PA11 */
+			linux,input-type = <EV_KEY>;
+			linux,code = <BTN_TL2>;
+		};
+
+		button-left {
+			label = "D-Pad left";
+			gpios = <&pio 0 8 GPIO_ACTIVE_LOW>; /* PA8 */
+			linux,input-type = <EV_KEY>;
+			linux,code = <BTN_DPAD_LEFT>;
+		};
+
+		button-menu {
+			label = "Key Menu";
+			gpios = <&pio 4 3 GPIO_ACTIVE_LOW>; /* PE3 */
+			linux,input-type = <EV_KEY>;
+			linux,code = <BTN_MODE>;
+		};
+
+		button-r1 {
+			label = "Key R1";
+			gpios = <&pio 0 12 GPIO_ACTIVE_LOW>; /* PA12 */
+			linux,input-type = <EV_KEY>;
+			linux,code = <BTN_TR>;
+		};
+
+		button-r2 {
+			label = "Key R2";
+			gpios = <&pio 0 7 GPIO_ACTIVE_LOW>; /* PA7 */
+			linux,input-type = <EV_KEY>;
+			linux,code = <BTN_TR2>;
+		};
+
+		button-right {
+			label = "D-Pad Right";
+			gpios = <&pio 0 9 GPIO_ACTIVE_LOW>; /* PA9 */
+			linux,input-type = <EV_KEY>;
+			linux,code = <BTN_DPAD_RIGHT>;
+		};
+
+		button-select {
+			label = "Key Select";
+			gpios = <&pio 0 5 GPIO_ACTIVE_LOW>; /* PA5 */
+			linux,input-type = <EV_KEY>;
+			linux,code = <BTN_SELECT>;
+		};
+		button-start {
+			label = "Key Start";
+			gpios = <&pio 0 4 GPIO_ACTIVE_LOW>; /* PA4 */
+			linux,input-type = <EV_KEY>;
+			linux,code = <BTN_START>;
+		};
+
+		button-up {
+			label = "D-Pad Up";
+			gpios = <&pio 0 6 GPIO_ACTIVE_LOW>; /* PA6 */
+			linux,input-type = <EV_KEY>;
+			linux,code = <BTN_DPAD_UP>;
+		};
+
+		button-x {
+			label = "Action-Pad X";
+			gpios = <&pio 0 3 GPIO_ACTIVE_LOW>; /* PA3 */
+			linux,input-type = <EV_KEY>;
+			linux,code = <BTN_NORTH>;
+		};
+
+		button-y {
+			label = "Action Pad Y";
+			gpios = <&pio 0 2 GPIO_ACTIVE_LOW>; /* PA2 */
+			linux,input-type = <EV_KEY>;
+			linux,code = <BTN_WEST>;
+		};
+	};
+
+	gpio-keys-volume {
+		compatible = "gpio-keys";
+		autorepeat;
+
+		button-vol-up {
+			label = "Key Volume Up";
+			gpios = <&pio 4 1 GPIO_ACTIVE_LOW>; /* PE1 */
+			linux,input-type = <EV_KEY>;
+			linux,code = <KEY_VOLUMEUP>;
+		};
+
+		button-vol-down {
+			label = "Key Volume Down";
+			gpios = <&pio 4 2 GPIO_ACTIVE_LOW>; /* PE2 */
+			linux,input-type = <EV_KEY>;
+			linux,code = <KEY_VOLUMEDOWN>;
+		};
+	};
+
+	reg_vcc5v: regulator-vcc5v { /* USB-C power input */
+		compatible = "regulator-fixed";
+		regulator-name = "vcc-5v";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vcc_3v3_sd2: vcc-3v3-sd2 {
+		compatible = "regulator-fixed";
+		gpio = <&pio 4 4 GPIO_ACTIVE_HIGH>; /* PE4 */
+		regulator-name = "vcc_3v3_sd2";
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <3300000>;
+	};
+
+};
+
+&cpu0 {
+	cpu-supply = <&reg_dcdc1>;
+};
+
+&mmc0 {
+	vmmc-supply = <&reg_cldo3>;
+	disable-wp;
+	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>;  /* PF6 */
+	bus-width = <4>;
+	status = "okay";
+};
+
+&mmc2 {
+	vmmc-supply = <&reg_cldo4>;
+	vqmmc-supply = <&reg_aldo1>;
+	disable-wp;
+	cd-gpios = <&pio 4 22 GPIO_ACTIVE_LOW>; /* PE22 */
+	bus-width = <4>;
+	status = "okay";
+};
+
+&r_rsb {
+	status = "okay";
+
+	axp717: pmic@3a3 {
+		compatible = "x-powers,axp717";
+		reg = <0x3a3>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
+		interrupt-parent = <&nmi_intc>;
+		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+
+		vin1-supply = <&reg_vcc5v>;
+		vin2-supply = <&reg_vcc5v>;
+		vin3-supply = <&reg_vcc5v>;
+		vin4-supply = <&reg_vcc5v>;
+
+		regulators {
+			reg_dcdc1: dcdc1 {
+				regulator-always-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-name = "vdd-cpu";
+			};
+
+			reg_dcdc2: dcdc2 {
+				regulator-always-on;
+				regulator-min-microvolt = <940000>;
+				regulator-max-microvolt = <940000>;
+				regulator-name = "vdd-gpu-sys";
+			};
+
+			reg_dcdc3: dcdc3 {
+				regulator-always-on;
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-name = "vdd-dram";
+			};
+
+			reg_aldo1: aldo1 { /* SDC2 */
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc-sd2";
+			};
+
+			reg_aldo2: aldo2 {
+				/* 1.8v - unused */
+			};
+
+			reg_aldo3: aldo3 {
+				/* 1.8v - unused */
+			};
+
+			reg_aldo4: aldo4 { /* 5096000.codec */
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc-pg";
+			};
+
+			reg_bldo1: bldo1 {
+				/* 1.8v - unused */
+			};
+
+			reg_bldo2: bldo2 {
+				regulator-always-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc-pll";
+			};
+
+			reg_bldo3: bldo3 {
+				/* 2.8v - unused */
+			};
+
+			reg_bldo4: bldo4 {
+				/* 1.2v - unused */
+			};
+
+			reg_cldo1: cldo1 {
+				/* 3.3v - audio codec - not yet implemented */
+			};
+
+			reg_cldo2: cldo2 {
+				/* 3.3v - unused */
+			};
+
+			reg_cldo3: cldo3 {
+				regulator-always-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc-io";
+			};
+
+			reg_cldo4: cldo4 {
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc-wifi";
+			};
+
+			reg_boost: boost {
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5200000>;
+				regulator-name = "boost";
+			};
+
+			reg_cpusldo: cpusldo {
+				/* unused */
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
+&pio {
+	vcc-pa-supply = <&reg_cldo3>;
+	vcc-pc-supply = <&reg_cldo3>;
+	vcc-pe-supply = <&reg_cldo3>;
+	vcc-pf-supply = <&reg_cldo3>;
+	vcc-pg-supply = <&reg_aldo4>;
+	vcc-ph-supply = <&reg_cldo3>;
+	vcc-pi-supply = <&reg_cldo3>;
+};
+
+&ohci0 {
+	status = "okay";
+};
+
+&ehci0 {
+	status = "okay";
+};
+
+/* the AXP717 has USB type-C role switch functionality, not yet described by the binding */
+&usbotg {
+	dr_mode = "peripheral";   /* USB type-C receptable */
+	status = "okay";
+};
+
+&usbphy {
+	status = "okay";
+};
-- 
2.44.0


