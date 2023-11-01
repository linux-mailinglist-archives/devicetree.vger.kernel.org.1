Return-Path: <devicetree+bounces-13502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2C27DE5F4
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 19:22:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6477AB20C44
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 18:22:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B902A18E06;
	Wed,  1 Nov 2023 18:22:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="Oik8UNsQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AE1F18E20
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 18:22:23 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CEA5E8;
	Wed,  1 Nov 2023 11:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=9u54Yn6nSCEARJYG9pzUL+cke7Zoh4Fsgw4yDQvHb54=; b=Oik8UNsQNA6qsFR5PYxFYuPVfR
	2xhZ2TuGwOda8weGC+Na6qFJw1h9XoINpYy7wYMPXTYSdYd2uczr0qkBb7Q2Vktr2xQ9EuQs2VXCx
	gvzAZJEUCZtdVMR2W3fDXacbGMbFo2jFhQ2mbaM/j8aylwgj5beD8WpZm398LIkDcH6c=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:57364 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qyFqo-0000rC-MK; Wed, 01 Nov 2023 14:22:03 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	hvilleneuve@dimonoff.com,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	leoyang.li@nxp.com,
	robh@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	hugo@hugovil.com
Date: Wed,  1 Nov 2023 14:21:40 -0400
Message-Id: <20231101182140.2891578-4-hugo@hugovil.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231101182140.2891578-1-hugo@hugovil.com>
References: <20231101182140.2891578-1-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Level: 
Subject: [PATCH 3/3] arm64: dts: freescale: introduce rve-gateway board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

The RVE gateway board is based on a Variscite VAR-SOM-NANO,
with a NXP MX8MN nano CPU.

Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
---
 MAINTAINERS                                   |   7 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8mn-rve-gateway.dts | 284 ++++++++++++++++++
 3 files changed, 292 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-rve-gateway.dts

diff --git a/MAINTAINERS b/MAINTAINERS
index 43c5ed3c4508..9423b1bf35fc 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18778,6 +18778,13 @@ F:	samples/rust/
 F:	scripts/*rust*
 K:	\b(?i:rust)\b
 
+RVE BOARD SUPPORT
+M:	Hugo Villeneuve <hvilleneuve@dimonoff.com>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Supported
+W:	https://rve.ca
+F:	arch/arm64/boot/dts/freescale/imx*rve-*.dts*
+
 RXRPC SOCKETS (AF_RXRPC)
 M:	David Howells <dhowells@redhat.com>
 M:	Marc Dionne <marc.dionne@auristor.com>
diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 89aee6c92576..760a0ca7adc3 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -89,6 +89,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mn-bsh-smm-s2pro.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr3l-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr4-evk.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mn-rve-gateway.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-tqma8mqnl-mba8mx.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-var-som-symphony.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-venice-gw7902.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-rve-gateway.dts b/arch/arm64/boot/dts/freescale/imx8mn-rve-gateway.dts
new file mode 100644
index 000000000000..312718982a52
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mn-rve-gateway.dts
@@ -0,0 +1,284 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2023 DimOnOff
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/usb/pd.h>
+#include "imx8mn-var-som.dtsi"
+
+/ {
+	model = "RVE gateway";
+	compatible = "rve,rve-gateway", "fsl,imx8mn";
+
+	crystal_duart_24m: crystal-duart-24m {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24000000>;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_keys>;
+		status = "okay";
+
+		key-enter {
+			label = "enter";
+			gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_ENTER>;
+		};
+
+		key-exit {
+			label = "exit";
+			gpios = <&gpio3 23 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_ESC>;
+		};
+	};
+
+	lcd {
+		compatible = "hit,hd44780";
+		display-height-chars = <2>;
+		display-width-chars = <20>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_lcd>;
+		data-gpios =
+			<&gpio5  1 GPIO_ACTIVE_HIGH>,
+			<&gpio1  6 GPIO_ACTIVE_HIGH>,
+			<&gpio1 14 GPIO_ACTIVE_HIGH>,
+			<&gpio4 28 GPIO_ACTIVE_HIGH>,
+			<&gpio5 24 GPIO_ACTIVE_HIGH>,
+			<&gpio5  2 GPIO_ACTIVE_HIGH>,
+			<&gpio1 12 GPIO_ACTIVE_HIGH>,
+			<&gpio5 25 GPIO_ACTIVE_HIGH>;
+		enable-gpios = <&gpio5 23 GPIO_ACTIVE_HIGH>;
+		rs-gpios = <&gpio1 7 GPIO_ACTIVE_HIGH>;
+		rw-gpios = <&gpio4 27 GPIO_ACTIVE_HIGH>;
+	};
+
+	reg_3p3v: regulator-3p3v {
+		compatible = "regulator-fixed";
+		regulator-name = "3P3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		};
+
+	rotary: rotary-encoder { /* Bourns PEC12R rotary encoder, 24 steps. */
+		compatible = "rotary-encoder";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_rotary>;
+		gpios =
+			<&gpio1  5 GPIO_ACTIVE_LOW>, /* A */
+			<&gpio3 21 GPIO_ACTIVE_LOW>; /* B */
+		linux,axis = <0>; /* REL_X */
+		rotary-encoder,encoding = "gray";
+		rotary-encoder,relative-axis;
+	};
+};
+
+&ecspi1 {
+	cs-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>;
+
+	duart1: serial@0 {
+		compatible = "nxp,sc16is752";
+		reg = <0>;
+		spi-rx-bus-width = <1>;
+		spi-tx-bus-width = <1>;
+		spi-max-frequency = <4000000>;
+		clocks = <&crystal_duart_24m>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <22 IRQ_TYPE_EDGE_FALLING>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-line-names = "RADIO0", "RADIO1", "RADIO2", "RADIO3",
+		"RADIO4", "RADIO_RESET", "TP12", "TP11";
+		linux,rs485-enabled-at-boot-time;
+		rs485-rts-active-low;
+	};
+
+	/delete-node/ touchscreen@0;
+};
+
+&ecspi2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi2>;
+	cs-gpios = <&gpio5 13 GPIO_ACTIVE_LOW>;
+	/delete-property/ dmas;
+	/delete-property/ dma-names;
+	status = "okay";
+
+	duart2: serial@0 {
+		compatible = "nxp,sc16is752";
+		reg = <0>;
+		spi-rx-bus-width = <1>;
+		spi-tx-bus-width = <1>;
+		spi-max-frequency = <4000000>;
+		clocks = <&crystal_duart_24m>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <20 IRQ_TYPE_EDGE_FALLING>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-line-names = "LED_B_USER", "LED_R_USER", "LED_G_USER",
+		"GPIO_EXT3", "GPIO_EXT2", "GPIO_EXT1", "GPIO_EXT0", "TP13";
+		linux,rs485-enabled-at-boot-time;
+		rs485-rts-active-low;
+	};
+};
+
+/* Configure PWM pins in GPIO mode: */
+&gpio5 {
+	gpio-line-names = "", "", "", "PWM3", "PWM2", "PWM1";
+};
+
+&gpu {
+	status = "disabled";
+};
+
+&i2c2 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+
+	eeprom_cb: eeprom@56 { /* Carrier board EEPROM */
+		compatible = "atmel,24c04";
+		reg = <0x56>;
+		pagesize = <16>;
+		vcc-supply = <&reg_3p3v>;
+	};
+
+	lm75: sensor@48 {
+		compatible = "st,stlm75";
+		reg = <0x48>;
+		vs-supply = <&reg_3p3v>;
+	};
+
+	mcp7940: rtc@6f {
+		compatible = "microchip,mcp7940x";
+		reg = <0x6f>;
+	};
+};
+
+&i2c3 {
+	codec@1a {
+		status = "disabled";
+	};
+};
+
+&i2c4 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c4>;
+	status = "okay";
+
+	pcf8574_1: gpio@38 {
+		status = "okay";
+		compatible = "nxp,pcf8574";
+		reg = <0x38>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-line-names = "LED_B_COMM3", "LED_R_COMM3", "LED_G_COMM3",
+		"TP14", "TP15", "LED_G_COMM4", "LED_R_COMM4", "LED_B_COMM4";
+	};
+
+	pcf8574_2: gpio@39 {
+		status = "okay";
+		compatible = "nxp,pcf8574";
+		reg = <0x39>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-line-names = "LED_B_COMM2", "LED_G_COMM2", "LED_B_COMM1",
+		"LED_R_COMM2", "LED_R_COMM1", "LED_G_COMM1", "TP16", "TP17";
+	};
+};
+
+&uart2 {
+	/delete-node/ bluetooth;
+};
+
+&usbotg1 {
+	dr_mode = "host";
+	disable-over-current;
+	status = "okay";
+};
+
+/* SD interface on expansion connector. */
+&usdhc2 {
+	/delete-property/vmmc-supply;
+	cd-gpios = <&gpio1 13 GPIO_ACTIVE_LOW>;
+};
+
+&iomuxc {
+	pinctrl_ecspi1: ecspi1grp {
+		fsl,pins = <
+			MX8MN_IOMUXC_ECSPI1_SCLK_ECSPI1_SCLK	0x13
+			MX8MN_IOMUXC_ECSPI1_MOSI_ECSPI1_MOSI	0x13
+			MX8MN_IOMUXC_ECSPI1_MISO_ECSPI1_MISO	0x13
+			MX8MN_IOMUXC_ECSPI1_SS0_GPIO5_IO9	0x13 /* SS0 */
+			MX8MN_IOMUXC_SAI5_RXD1_GPIO3_IO22	0x13 /* SC16 IRQ */
+		>;
+	};
+
+	pinctrl_ecspi2: ecspi2grp {
+		fsl,pins = <
+			MX8MN_IOMUXC_ECSPI2_SCLK_ECSPI2_SCLK	0x13
+			MX8MN_IOMUXC_ECSPI2_MOSI_ECSPI2_MOSI	0x13
+			MX8MN_IOMUXC_ECSPI2_MISO_ECSPI2_MISO	0x13
+			MX8MN_IOMUXC_ECSPI2_SS0_GPIO5_IO13	0x13 /* SS0 */
+			MX8MN_IOMUXC_SAI5_RXC_GPIO3_IO20	0x13 /* SC16 IRQ */
+		>;
+	};
+
+	pinctrl_gpio_keys: gpiokeysgrp {
+		fsl,pins = <
+			MX8MN_IOMUXC_GPIO1_IO01_GPIO1_IO1	0xc6 /* Enter */
+			MX8MN_IOMUXC_SAI5_RXD2_GPIO3_IO23	0xc6 /* Exit */
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX8MN_IOMUXC_I2C2_SCL_I2C2_SCL		0x400001c3
+			MX8MN_IOMUXC_I2C2_SDA_I2C2_SDA		0x400001c3
+		>;
+	};
+
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <
+			MX8MN_IOMUXC_I2C4_SCL_I2C4_SCL		0x400001c3
+			MX8MN_IOMUXC_I2C4_SDA_I2C4_SDA		0x400001c3
+		>;
+	};
+
+	pinctrl_lcd: lcdgrp {
+		fsl,pins = <
+			MX8MN_IOMUXC_SAI3_TXD_GPIO5_IO1		0x00000156 /* D0 */
+			MX8MN_IOMUXC_GPIO1_IO06_GPIO1_IO6	0x00000156 /* D1 */
+			MX8MN_IOMUXC_GPIO1_IO14_GPIO1_IO14	0x00000156 /* D2 */
+			MX8MN_IOMUXC_SAI3_RXFS_GPIO4_IO28	0x00000156 /* D3 */
+			MX8MN_IOMUXC_UART2_RXD_GPIO5_IO24	0x00000156 /* D4 */
+			MX8MN_IOMUXC_SAI3_MCLK_GPIO5_IO2	0x00000156 /* D5 */
+			MX8MN_IOMUXC_GPIO1_IO12_GPIO1_IO12	0x00000156 /* D6 */
+			MX8MN_IOMUXC_UART2_TXD_GPIO5_IO25	0x00000156 /* D7 */
+			MX8MN_IOMUXC_UART1_TXD_GPIO5_IO23	0x00000156 /* E */
+			MX8MN_IOMUXC_GPIO1_IO07_GPIO1_IO7	0x00000156 /* RS */
+			MX8MN_IOMUXC_SAI2_MCLK_GPIO4_IO27	0x00000156 /* R/W */
+		>;
+	};
+
+	pinctrl_rotary: rotarygrp {
+		fsl,pins = <
+			MX8MN_IOMUXC_GPIO1_IO05_GPIO1_IO5	0x00000156 /* A */
+			MX8MN_IOMUXC_SAI5_RXD0_GPIO3_IO21	0x00000156 /* B */
+		>;
+	};
+
+	/* Override Card Detect function GPIO value (GPIO1_IO10) from SOM: */
+	pinctrl_usdhc2_gpio: usdhc2gpiogrp {
+		fsl,pins = <
+			MX8MN_IOMUXC_GPIO1_IO13_GPIO1_IO13	0x41
+		>;
+	};
+};
-- 
2.39.2


