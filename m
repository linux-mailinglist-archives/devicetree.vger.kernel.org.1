Return-Path: <devicetree+bounces-62263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EEABB8B0827
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 13:13:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A57172820F4
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 11:13:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1593A15990E;
	Wed, 24 Apr 2024 11:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="uiiYwO6s";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="OexyWtfc"
X-Original-To: devicetree@vger.kernel.org
Received: from fout8-smtp.messagingengine.com (fout8-smtp.messagingengine.com [103.168.172.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04BF15A488
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 11:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713957204; cv=none; b=GMVnAfEHPYE7oneXRvzOwvGILW6HD8bnEEMiqojE2Nml94xpKYX24HCv31RBSWLRMtv/y0BBHS4P1I+uFy9Ok+gqaidUBrs0WoqyXsQOb+BWVVyWiMDAm5iVlAmVQRu5jHezfMR3f/bF38PbkrHYdnyOH4Qq2w8nNHCL0KI6myk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713957204; c=relaxed/simple;
	bh=H8ZTqjwyesjTkoDT0O2W++TTiW1kbzTtf/UBGC3kpxA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WDd6Y7ia1TwXxzk/K9FL6V8PXiufhFwZePHvkIqsVZA0g8+bK+b8Ea1h5HkVQnfq4p+0RvA4205vreM8IA/Z+v7LKQ5iIe9mV559qA/gdjrkszfUrm57edy4zo/to/js+tRgJV+KkJgHYTu8jvCVAGDWYWEoMMW3woUJ8M1O+hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=uiiYwO6s; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=OexyWtfc; arc=none smtp.client-ip=103.168.172.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfout.nyi.internal (Postfix) with ESMTP id F1C5F1380124;
	Wed, 24 Apr 2024 07:13:19 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Wed, 24 Apr 2024 07:13:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1713957199; x=
	1714043599; bh=urdtppyIcuWG1+jSo15YeLoXJPxMA6LcYdulTB2qakU=; b=u
	iiYwO6snnkBjckxBH4sF9HlxQMGmzYqqgtCTtqykmYGSgTvxSfDA+xxs70yWsrcb
	NHhh6/hrXDKuHqSqaMKd2Pyg5YfRiLzH7nQw7tgoo56TeBb0ycPkrp5cDZYdbmR4
	GRz1QKpBzmflejeWn34n08DNh+nvz6lEgKD66CQmSYpztLH+FlrL51bYNlCkIwdR
	WVlWSfAWWct6g3pFXEcfIuSQFKYHi5Bfoi6uyOuMT+qRs0gO8FAo+k3W8DT8sva3
	qIalBGpaPmaTPp8tKzjgGI4PXIX84xIxnB6NTMVWJGHyxe3xfJuWop7XxaBGwoqk
	zc8n/9HJ9XH7xCF5OUYgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1713957199; x=
	1714043599; bh=urdtppyIcuWG1+jSo15YeLoXJPxMA6LcYdulTB2qakU=; b=O
	exyWtfcYDexKPwH2CvrmWVvYfpEshW5D6281Ds7AIgISzl7q8jqvZZrFBayGnEOZ
	Mz1N4pdEF5QcS2ESyvR8G9P4xlNdERiTVBnDC47ERHMcShZXEFKkX/NpxXoL9cJe
	55b0Vgprs+/ZcGZXty3GvX2EB87XYzfm5H6r9Ssoo16zWJvGZ0vhL/AC0AnqSOy0
	0FW0FW34CHF6snOXR34WLrdcgwj7+hOEHnBAR1SXZLscAKLRVa+Hqc9gFaiBfbeP
	DyK0TEPKDg0c3X6Rg1Hy5MiisVh5SJT7HdwDeUzNQnn/a1c5wYPqYPCiOb2sypfr
	XjdfiwQ27sCH9hJzuUcsw==
X-ME-Sender: <xms:T-koZpcSgw2A5WkNjYLOKxH-SEWpMc4JDLXmcNkTh82576hdoRj-bw>
    <xme:T-koZnOwrOA-CR10ORC64kKV49Yj-c6xVbHZ2KmOAKXHx9XIembu2a1LjDSEzdBii
    wPhfDQtDnV4gtqGsQ>
X-ME-Received: <xmr:T-koZijLciv8mvUDLkh7_dQNFYgtf843XpZKxLx-yo1pMhrUctrOW-ec6t47nftt3l0MnOWyEo4ShoHMs3fYtTvJ6qnEdj0N4yqBWa0jygOwQ0-R>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudelgedgudefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomheptfihrghn
    ucghrghlkhhlihhnuceorhihrghnsehtvghsthhtohgrshhtrdgtohhmqeenucggtffrrg
    htthgvrhhnpeehgeduffeiveeiuddufeelffeuteeiiedulefhteevgefgffehheeuudff
    veejvdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivg
    eptdenucfrrghrrghmpehmrghilhhfrhhomheprhihrghnsehtvghsthhtohgrshhtrdgt
    ohhm
X-ME-Proxy: <xmx:T-koZi_cKeDJ_ahclpX60lHq2wx6XUS3gAQU_n9rvMGP8MvCHrXloA>
    <xmx:T-koZlu-PAfgv9JfPUpIc_SUm6se60BsRX5TXJq3wMhqPcIHnrbI4w>
    <xmx:T-koZhFrrY7-s3hYQeYtl4-HrUK86YVaLJPKUsRw4iQfa3UMInK33w>
    <xmx:T-koZsNtUXIt9FYSW7ckTYWP-w6SmPb-hQVHemyxLxxi_m_6DWoITg>
    <xmx:T-koZhFkKLcSfEnhAZaAHIKlUpg-edq7UYTXskGhOv2l8D2u2Js9zjJA>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 24 Apr 2024 07:13:15 -0400 (EDT)
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
Subject: [PATCH v3 2/4] arm64: dts: allwinner: h700: Add RG35XX 2024 DTS
Date: Wed, 24 Apr 2024 23:09:45 +1200
Message-ID: <20240424110947.9057-3-ryan@testtoast.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240424110947.9057-1-ryan@testtoast.com>
References: <20240424110947.9057-1-ryan@testtoast.com>
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
- AXP717 PMIC with regulators (interrupt controller TBC/TBD)
- Power LED (charge LED on device controlled directly by PMIC)
- Serial UART (accessible from PIN headers on the board)
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
- Remove cpufreq support (patch still pending for 6.10, will followup once opp table merged)
- Add dtb to Makefile
- Remove unnecessary duplicated PLL regulator
- Remove unimplemented/not-present drive-vbus feature from AXP717
- Rename CLDO3 to "vcc-io", inferring function from board testing by Chris Morgan
- Correct MMC1 vmmc-supply to CLDO3 and MMC2 to CLDO4
- Reduce DCDC1 "vdd-cpu" supply voltage range to 0.9v-1.1v to match lowest OPP voltage
- Identify DCDC2 as GPU supply - rename to "vdd-gpu-sys", remove always-on and used fixed 0.94v voltage
- Fix indentation
- Correct boot/always-on states and voltages for various regulators from vendor BSP
- Change USB-OTG mode to "peripheral" and correct comment
- Correct and add remaining PIO supplies
- Move volume key GPIOs to separate block to allow key repeat
- Alphabetically orrder gamepad GPIOs
- Move changelog and links below fold-line
- Remove USB 3.3v VCC-USB and VCC-SD2 regulators pending further hardware investigation (to be submitted as subsequent patch)
- Constrain boost regulator voltage to 5.0v to 5.2v to capture default voltage of 5.126v

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/commit/?h=dt/next&id=d47bca77bf3ab475c33b3929c33c80aeb49df35c

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
index 000000000000..3b53485019f1
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
+	cd-gpios = <&pio 4 22 GPIO_ACTIVE_LOW>; /* PE22 */
+	bus-width = <4>;
+	status = "okay";
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
+&r_rsb {
+   status = "okay";
+
+   axp717: pmic@3a3 {
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
+				regulator-boot-on;
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
+				regulator-boot-on;
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
+				/* unused */
+			};
+
+			reg_aldo3: aldo3 {
+				regulator-always-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "axp717-aldo3";
+			};
+
+			reg_aldo4: aldo4 { /* 5096000.codec */
+				regulator-always-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-name = "vcc-pg";
+			};
+
+			reg_bldo1: bldo1 {
+				/* unused */
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
+				/* unused */
+			};
+
+			reg_bldo4: bldo4 {
+				/* unused */
+			};
+
+			reg_cldo1: cldo1 { /* 5096000.codec */
+				/* unused */
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "axp717-cldo1";
+			};
+
+			reg_cldo2: cldo2 {
+				/* unused */
+
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


