Return-Path: <devicetree+bounces-16845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C437EFF34
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 12:17:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2CC351F2326C
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 11:17:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DABC310A1A;
	Sat, 18 Nov 2023 11:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=emailprofi.seznam.cz header.i=@emailprofi.seznam.cz header.b="bqWhxpnS"
X-Original-To: devicetree@vger.kernel.org
Received: from mxb-2-912.seznam.cz (mxb-2-912.seznam.cz [IPv6:2a02:598:64:8a00::1000:912])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EBD8D6C
	for <devicetree@vger.kernel.org>; Sat, 18 Nov 2023 03:17:45 -0800 (PST)
Received: from email.seznam.cz
	by smtpc-mxb-85c69f7c66-r5kx9
	(smtpc-mxb-85c69f7c66-r5kx9 [2a02:598:64:8a00::1000:912])
	id 38bb828e23290f5a3c5e3b0c;
	Sat, 18 Nov 2023 12:17:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=emailprofi.seznam.cz; s=szn20221014; t=1700306260;
	bh=K3bzZtzUGvW6KckzpsJpT0uVs9BUwKiPxjP5WC86kow=;
	h=Received:From:To:Cc:Subject:Date:Message-ID:X-Mailer:In-Reply-To:
	 References:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=bqWhxpnS6doCi3jVAZICOzX0Fc286smj4LyxJq0HQ/CYzke3YKQe7HHjf7SHN1t0q
	 OvRGX6achmAVLumuVa99ZVWYazmI9h7ohDrD/cdD60TpPaahj3si+/xU2G0Jwkprty
	 Cw2tW+/kB75ZSKfFkJPccGbS/3hQODlvvt7rZLZvxMgdsh7GNDckvo2kjHdgiYwzUX
	 E5ahEX/2JPyDqKfkSpvgSI4ipwurTifhxR5iqbiNLVxgvAIPuxIPYiYbDq176/3RA3
	 UXDQkHeh1GNuRDkFqXSIstm/KPuhM8RaOZPVnQRXggRZCM2vbfATQqZA6NZfR5S4fG
	 q+8DDu76RP0uQ==
Received: from localhost (88.146.114.74.pe3ny.net [88.146.114.74])
	by smtpd-relay-79cfdc7465-w7578 (smtpd/2.0.15) with ESMTPA
	id e3738c95-de8b-4a8d-bdcf-fffa0225bc23;
	Sat, 18 Nov 2023 12:15:05 +0100
From: =?UTF-8?q?Pavel=20L=C3=B6bl?= <pavel@loebl.cz>
To: Rob Herring <robh+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: devicetree@vger.kernel.org,
	=?UTF-8?q?Pavel=20L=C3=B6bl?= <pavel@loebl.cz>
Subject: [PATCH 3/3] ARM: dts: sun8i: h2+: add support for Banana Pi P2 Zero board
Date: Sat, 18 Nov 2023 12:14:18 +0100
Message-ID: <20231118111418.979681-3-pavel@loebl.cz>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231118111418.979681-1-pavel@loebl.cz>
References: <20231118111418.979681-1-pavel@loebl.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Banana Pi P2 Zero is H2+-based board by Sinovoip internally similar
to Banana Pi M2 Zero.

It features:
- Allwinner H2+, Quad-core Cortex-A7
- 512MB DDR3 SDRAM
- 8G eMMC flash
- MicroSD card slot
- 100M LAN
- WiFi (AP6212) & Bluetooth onboard (SDIO + UART)
- Micro USB OTG port
- Micro USB connector (power only)
- Mini HDMI
- 40 PIN GPIO includes UART, SPI, I2C, IO etc.
- GPIO-connected key and LED
- CSI connector
- IEEE 802.3af PoE standard PoE module support (optional)

This adds support for v1.1 revision. There was also v1.0 available
which has different SDcard CD polarity and Ethernet port LEDs
disconnected in layout.

Signed-off-by: Pavel Löbl <pavel@loebl.cz>
---
 arch/arm/boot/dts/allwinner/Makefile          |   1 +
 .../sun8i-h2-plus-bananapi-p2-zero-v1.1.dts   | 290 ++++++++++++++++++
 2 files changed, 291 insertions(+)
 create mode 100644 arch/arm/boot/dts/allwinner/sun8i-h2-plus-bananapi-p2-zero-v1.1.dts

diff --git a/arch/arm/boot/dts/allwinner/Makefile b/arch/arm/boot/dts/allwinner/Makefile
index 2a4162657a2c..567e81cc7b0f 100644
--- a/arch/arm/boot/dts/allwinner/Makefile
+++ b/arch/arm/boot/dts/allwinner/Makefile
@@ -219,6 +219,7 @@ dtb-$(CONFIG_MACH_SUN8I) += \
 	sun8i-a83t-cubietruck-plus.dtb \
 	sun8i-a83t-tbs-a711.dtb \
 	sun8i-h2-plus-bananapi-m2-zero.dtb \
+	sun8i-h2-plus-bananapi-p2-zero-v1.1.dtb \
 	sun8i-h2-plus-libretech-all-h3-cc.dtb \
 	sun8i-h2-plus-orangepi-r1.dtb \
 	sun8i-h2-plus-orangepi-zero.dtb \
diff --git a/arch/arm/boot/dts/allwinner/sun8i-h2-plus-bananapi-p2-zero-v1.1.dts b/arch/arm/boot/dts/allwinner/sun8i-h2-plus-bananapi-p2-zero-v1.1.dts
new file mode 100644
index 000000000000..f963051d8ff5
--- /dev/null
+++ b/arch/arm/boot/dts/allwinner/sun8i-h2-plus-bananapi-p2-zero-v1.1.dts
@@ -0,0 +1,290 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2023 Pavel Löbl <pavel@loebl.cz>
+ *
+ * Based on sun8i-h2-plus-bananapi-m2-zero.dts, which is:
+ *   Copyright (C) 2017 Icenowy Zheng <icenowy@aosc.io>
+ */
+
+/dts-v1/;
+#include "sun8i-h3.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+
+/ {
+	model = "Banana Pi BPI-P2-Zero v1.1";
+	compatible = "sinovoip,bananapi-p2-zero-v1.1", "allwinner,sun8i-h2-plus";
+
+	aliases {
+		serial0 = &uart0;
+		serial1 = &uart1;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	connector {
+		compatible = "hdmi-connector";
+		type = "c";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led {
+			function = LED_FUNCTION_POWER;
+			color = <LED_COLOR_ID_RED>;
+			gpios = <&r_pio 0 10 GPIO_ACTIVE_LOW>; /* PL10 */
+			default-state = "on";
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		power {
+			linux,code = <KEY_POWER>;
+			gpios = <&r_pio 0 3 GPIO_ACTIVE_LOW>; /* PL3 */
+			wakeup-source;
+		};
+	};
+
+	reg_vcc_5v: reg-vcc-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "usb1-vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+	};
+
+	reg_vcc_1v2: reg-vcc-1v2 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc-1v2";
+		regulator-type = "voltage";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		regulator-boot-on;
+		vin-supply = <&reg_vcc_5v>;
+	};
+
+	reg_vcc_3v3: reg-vcc-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc-3v3";
+		regulator-type = "voltage";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		vin-supply = <&reg_vcc_5v>;
+	};
+
+	reg_vdd_cpux: vdd-cpux-regulator {
+		compatible = "regulator-gpio";
+		regulator-name = "vdd-cpux";
+		regulator-type = "voltage";
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-min-microvolt = <1100000>;
+		regulator-max-microvolt = <1300000>;
+		regulator-ramp-delay = <50>; /* 4ms */
+
+		gpios = <&r_pio 0 1 GPIO_ACTIVE_HIGH>; /* PL1 */
+		enable-active-high;
+		gpios-states = <0x1>;
+		states = <1100000 0>, <1300000 1>;
+	};
+
+	wifi_pwrseq: wifi-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&r_pio 0 7 GPIO_ACTIVE_LOW>; /* PL7 */
+	};
+};
+
+&de {
+	status = "okay";
+};
+
+&cpu0 {
+	cpu-supply = <&reg_vdd_cpux>;
+};
+
+&ehci0 {
+	status = "okay";
+};
+
+&ohci0 {
+	status = "okay";
+};
+
+&hdmi {
+	status = "okay";
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
+&mmc0 {
+	vmmc-supply = <&reg_vcc_3v3>;
+	bus-width = <4>;
+	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 */
+	cd-inverted;
+	status = "okay";
+};
+
+&mmc1 {
+	vmmc-supply = <&reg_vcc_3v3>;
+	vqmmc-supply = <&reg_vcc_3v3>;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	bus-width = <4>;
+	non-removable;
+	status = "okay";
+
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+		interrupt-parent = <&pio>;
+		interrupts = <6 10 IRQ_TYPE_LEVEL_LOW>; /* PG10 / EINT10 */
+		interrupt-names = "host-wake";
+		clocks = <&rtc CLK_OSC32K_FANOUT>;
+		clock-names = "ext_clock";
+	};
+};
+
+&mmc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc2_8bit_pins>;
+	vmmc-supply = <&reg_vcc_3v3>;
+	vqmmc-supply = <&reg_vcc_3v3>;
+	bus-width = <8>;
+	non-removable;
+	cap-mmc-hw-reset;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pa_pins>;
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm4345c5";
+		vbat-supply = <&reg_vcc_3v3>;
+		vddio-supply = <&reg_vcc_3v3>;
+		device-wakeup-gpios = <&pio 6 13 GPIO_ACTIVE_HIGH>; /* PG13 */
+		host-wakeup-gpios = <&pio 6 11 GPIO_ACTIVE_HIGH>; /* PG11 */
+		shutdown-gpios = <&pio 6 12 GPIO_ACTIVE_HIGH>; /* PG12 */
+		clocks = <&rtc CLK_OSC32K_FANOUT>;
+		clock-names = "ext_clock";
+	};
+};
+
+&emac {
+	phy-handle = <&int_mii_phy>;
+	phy-mode = "mii";
+	phy-supply = <&reg_vcc_1v2>;
+	allwinner,leds-active-low;
+	status = "okay";
+};
+
+&usb_otg {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&pio {
+	gpio-line-names =
+		/* PA */
+		"CON2-P13", "CON2-P11", "CON2-P22", "CON2-P15",
+			"CON3-P03", "CON3-P02", "CON2-P07", "CON2-P29",
+		"CON2-P31", "CON2-P33", "CON2-P35", "CON2-P05",
+			"CON2-P03", "CON2-P08", "CON2-P10", "CON2-P16",
+		"CON2-P12", "CON2-P37", "CON2-P28", "CON2-P27",
+			"CON2-P40", "CON2-P38", "", "",
+		"", "", "", "", "", "", "", "",
+
+		/* PB */
+		"", "", "", "", "", "", "", "",
+		"", "", "", "", "", "", "", "",
+		"", "", "", "", "", "", "", "",
+		"", "", "", "", "", "", "", "",
+
+		/* PC */
+		"CON2-P19", "CON2-P21", "CON2-P23", "CON2-P24",
+			"CON2-P18", "", "", "CON2-P26",
+		"", "", "", "", "", "", "", "",
+		"", "", "", "", "", "", "", "",
+		"", "", "", "", "", "", "", "",
+
+		/* PD */
+		"", "", "", "", "", "", "", "",
+		"", "", "", "", "", "", "CSI-PWR-EN", "",
+		"", "", "", "", "", "", "", "",
+		"", "", "", "", "", "", "", "",
+
+		/* PE */
+		"CN3-P17", "CN3-P13", "CN3-P09", "CN3-P07",
+			"CN3-P19", "CN3-P21", "CN3-P22", "CN3-P20",
+		"CN3-P18", "CN3-P16", "CN3-P14", "CN3-P12",
+			"CN3-P05", "CN3-P03", "CN3-P06", "CN3-P08",
+		"", "", "", "", "", "", "", "",
+		"", "", "", "", "", "", "", "",
+
+		/* PF */
+		"SDC0-D1", "SDC0-D0", "SDC0-CLK", "SDC0-CMD", "SDC0-D3",
+			"SDC0-D2", "SDC0-DET", "",
+		"", "", "", "", "", "", "", "",
+		"", "", "", "", "", "", "", "",
+		"", "", "", "", "", "", "", "",
+
+		/* PG */
+		"WL-SDIO-CLK", "WL-SDIO-CMD", "WL-SDIO-D0", "WL-SDIO-D1",
+			"WL-SDIO-D2", "WL-SDIO-D3", "BT-UART-TX", "BT-UART-RX",
+		"BT-UART-RTS", "BT-UART-CTS", "WL-WAKE-AP", "BT-WAKE-AP",
+			"BT-RST-N", "AP-WAKE-BT", "", "",
+		"", "", "", "", "", "", "", "",
+		"", "", "", "", "", "", "", "";
+};
+
+&r_pio {
+	gpio-line-names =
+		/* PL */
+		"", "CPUX-SET", "CON2-P32", "POWER-KEY", "CON2-P36",
+			"VCC-IO-EN", "USB0-ID", "WL-PWR-EN",
+		"PWR-STB", "PWR-DRAM", "PWR-LED", "IR-RX", "", "", "", "",
+		"", "", "", "", "", "", "", "",
+		"", "", "", "", "", "", "", "";
+};
+
+&usbphy {
+	status = "okay";
+
+	/*
+	 * There're two micro-USB connectors, one is power-only and another is
+	 * OTG. The Vbus of these two connectors are connected together, so
+	 * the external USB device will be powered just by the power input
+	 * from the power-only USB port or optional POE module.
+	 */
+	connector {
+		compatible = "gpio-usb-b-connector", "usb-b-connector";
+		type = "micro";
+		id-gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
+	};
+};
-- 
2.42.0


