Return-Path: <devicetree+bounces-70144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6D58D2942
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 02:05:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 528AF283025
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 00:05:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED46D632;
	Wed, 29 May 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cWxswgKE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB5517F6
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 00:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716941153; cv=none; b=QqOC4nne4jgQQi5D1jJHYpY1R2gSsRv51k5iTmRBVotdfapIw/2mxVtCZyUqIr+EEAleDhgvJj5O4ODKbQkW/G1GUDhVtCp5wW9gr9YYArgNPF4Pi9Drmi/W8/4JL8SSQK0rIkjghxU3QzlQ+c1Lfa0xTN1P4ZGau6DOYfmSgLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716941153; c=relaxed/simple;
	bh=76b6EfgFYgt7IuMuGlyZbJpP3sCy2ORtJNe2u+994Fk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RQQ2PZkdk/+kgh/AHlUDUT6kTVHUa9ykOVa8bYFhaFwVf6h+RIqDvdlIjqRcDvZVqisKzxp9/rdd7LeZXSfK8Oax07ThX/wtpGRKXX486LUyhxVo8oBZ03xNioAMMWx8i2U6J5Z81PjHaxxRT7aXTyyBxd4ihvIxLWU/saoAj90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cWxswgKE; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-681907af635so23423a12.1
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 17:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716941151; x=1717545951; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MZsO16nGqcYDl7NmrGCNY0prZBxg08JRc3F4bihf6Fk=;
        b=cWxswgKEEnLEyGKMmF4tZ+JXDs7CAc+BhU6PFHkt9XtygvDfe3uVhRtSnCGTD96Ok8
         fFNDsD4bcbcMKI4H376FpmR/DmQE6MAN1MJP+c1/XJVZZYJkdgtxutYMVccxLoeBX0+h
         FZSJNav5mPh1dcosmZ5LJrUvsDKay75IjcWhNiANmXRhhTUFqfw/AdKy4ZlnTlA7ZN8Y
         /a7AXnlHaJ3w8H36he+njPYK+RPI+LfhEDGIwaEL3hndZkfqUBY0I4VVN6B5+A9Gr6aI
         0/riuXFA75FlXMttRqB2lldTZslKgKdvVp+XfwnjO2kbCg+TcNeNtxM3X2gRXe3WO9xj
         SzMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716941151; x=1717545951;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MZsO16nGqcYDl7NmrGCNY0prZBxg08JRc3F4bihf6Fk=;
        b=u17FiH3A3SWtRDTu4VqtR35eb6SSLHclXLTBKL3uHzQQAXEKmERLt+ahdbnyuE70jS
         oqnGu6PduLmOGwtkkTLWFUwDK69MttFbVzuBv/5/H8nyQwGlHcjhyPhrjoZHr1yLrlcq
         qqMp7UuJvpIg2YCTYktqs/WkZPYXzPDSGaIJm96PtVQ5SGmyMHUPoqpXd6ptRQ8kv7Yr
         2UN5I+NGV/zJHKI1oEiiavFBZ3A9gz/iyvF+4xaWqHbCrIF6tV6qQlfOAQ2yE4vRo+Yr
         Rp5J6qtfXS88WZsXgrczufs6euvXpBebsb8hUrl4+GD6VqOQvczLOGxvjZJhuJ4QQJQ+
         OM5w==
X-Forwarded-Encrypted: i=1; AJvYcCUPY9IVUkZJzhqgWi4es0KoedRljdqm3l1v1E69EwTuyJ6rcm2J7Hl5/AXNwEGxnHCXMvkPe61g41VvtvnnDXZsWfF/NVZJyTjsxw==
X-Gm-Message-State: AOJu0Yx74iwh0VK5sSC5FuQRz5kppbfarFbZ8AsSmx7h8i1skcIOOEdh
	GLMFcLs+3sE+sSyjMeWGT83Jl9amo6l4TSIbnSPAseedjhaw3I2n
X-Google-Smtp-Source: AGHT+IEWCj1et1bB70AZ6L/1Mlax5M7r4kw58qdahMp0me4nJ1VWMWPA0bdTV5SjhR2SxND3xtwTsA==
X-Received: by 2002:a05:6a21:7899:b0:1af:96e7:2be6 with SMTP id adf61e73a8af0-1b212b56091mr18193943637.0.1716941150869;
        Tue, 28 May 2024 17:05:50 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:dfd9:2d9b:ff9d:4f57])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-701d44144adsm1518455b3a.58.2024.05.28.17.05.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 17:05:50 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 2/2] arm64: dts: imx8mm-iot-gateway: Add initial support
Date: Tue, 28 May 2024 21:05:35 -0300
Message-Id: <20240529000535.1426662-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240529000535.1426662-1-festevam@gmail.com>
References: <20240529000535.1426662-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

Add the initial support for the CompuLab i.MX8MM IoT Gateway board,
which is based on the Compulab's UCM-iMX8M-Mini SoM.

Board URL:
https://www.compulab.com/products/iot-gateways/iot-gate-imx8-industrial-arm-iot-gateway/

SoM URL:
https://www.compulab.com/products/computer-on-modules/ucm-imx8m-mini-nxp-i-mx-8m-mini-som-system-on-module-computer/

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- None.

 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8mm-iot-gateway.dts | 222 ++++++
 .../boot/dts/freescale/imx8mm-ucm-som.dtsi    | 680 ++++++++++++++++++
 3 files changed, 903 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-iot-gateway.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-ucm-som.dtsi

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index bd443c2bc5a4..bc1593b9d2db 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -114,6 +114,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-evkb.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-ctouch2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-edimm2.2.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mm-iot-gateway.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-innocomm-wb15-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-kontron-bl.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-kontron-bl-osm-s.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-iot-gateway.dts b/arch/arm64/boot/dts/freescale/imx8mm-iot-gateway.dts
new file mode 100644
index 000000000000..a4b53ae5c0d5
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-iot-gateway.dts
@@ -0,0 +1,222 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+//
+// Copyright 2020 CompuLab
+
+#include "imx8mm-ucm-som.dtsi"
+#include <dt-bindings/phy/phy-imx8-pcie.h>
+/ {
+	model = "CompuLab i.MX8MM IoT Gateway";
+	compatible = "compulab,imx8mm-iot-gateway", "compulab,imx8mm-ucm-som", "fsl,imx8mm";
+
+	regulator-usbhub-ena {
+		compatible = "regulator-fixed";
+		regulator-name = "usbhub_ena";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio4 28 GPIO_ACTIVE_HIGH>;
+		regulator-always-on;
+		enable-active-high;
+	};
+
+	regulator-usbhub-rst {
+		compatible = "regulator-fixed";
+		regulator-name = "usbhub_rst";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio3 24 GPIO_ACTIVE_HIGH>;
+		regulator-always-on;
+		enable-active-high;
+	};
+
+	regulator-uart1-mode {
+		compatible = "regulator-fixed";
+		regulator-name = "uart1_mode";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio4 26 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	regulator-uart1-duplex {
+		compatible = "regulator-fixed";
+		regulator-name = "uart1_duplex";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio4 27 GPIO_ACTIVE_HIGH>;
+		regulator-always-on;
+		enable-active-high;
+	};
+
+	regulator-uart1-shdn {
+		compatible = "regulator-fixed";
+		regulator-name = "uart1_shdn";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio5 5 GPIO_ACTIVE_HIGH>;
+		regulator-always-on;
+		enable-active-high;
+	};
+
+	regulator-uart1-trmen {
+		compatible = "regulator-fixed";
+		regulator-name = "uart1_trmen";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio4 25 GPIO_ACTIVE_LOW>;
+		regulator-always-on;
+	};
+
+	regulator-usdhc2_v {
+		compatible = "regulator-fixed";
+		regulator-name = "usdhc2_v";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio1 4 GPIO_ACTIVE_HIGH>;
+		regulator-always-on;
+		enable-active-high;
+	};
+
+	regulator-mpcie2_rst {
+		compatible = "regulator-fixed";
+		regulator-name = "mpcie2_rst";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio3 22 GPIO_ACTIVE_HIGH>;
+		regulator-always-on;
+		enable-active-high;
+	};
+
+	regulator-mpcie2lora_dis {
+		compatible = "regulator-fixed";
+		regulator-name = "mpcie2lora_dis";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio3 21 GPIO_ACTIVE_HIGH>;
+		regulator-always-on;
+		enable-active-high;
+	};
+
+	pcie0_refclk: pcie0-refclk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+	};
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	eeprom@54 {
+		compatible = "atmel,24c08";
+		reg = <0x54>;
+		pagesize = <16>;
+	};
+};
+
+&ecspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1 &pinctrl_ecspi1_cs>;
+	cs-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&pcie_phy {
+	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
+	fsl,tx-deemph-gen1 = <0x2d>;
+	fsl,tx-deemph-gen2 = <0xf>;
+	fsl,clkreq-unsupported;
+	clocks = <&pcie0_refclk>;
+	clock-names = "ref";
+	status = "okay";
+};
+
+&pcie0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pcie0>;
+	reset-gpio = <&gpio3 20 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&usbotg1 {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usbotg2 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	dr_mode = "host";
+	usb-role-switch;
+	status = "okay";
+
+	usbhub@1 {
+		compatible = "usb424,9514";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usb9514>;
+		reg = <1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethernet: ethernet@1 {
+			compatible = "usb424,ec00";
+			reg = <1>;
+		};
+	};
+};
+
+&usdhc1 {
+	status = "disabled";
+};
+
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	bus-width = <4>;
+	mmc-ddr-1_8v;
+	non-removable;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	pinctrl_hog: hoggrp {
+		fsl,pins = <
+			/* mPCIe2 */
+			MX8MM_IOMUXC_SAI5_RXD0_GPIO3_IO21		0x140
+			MX8MM_IOMUXC_SAI5_RXD1_GPIO3_IO22		0x140
+		>;
+	};
+
+	pinctrl_ecspi1: ecspi1grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_ECSPI1_SCLK_ECSPI1_SCLK		0x82
+			MX8MM_IOMUXC_ECSPI1_MOSI_ECSPI1_MOSI		0x82
+			MX8MM_IOMUXC_ECSPI1_MISO_ECSPI1_MISO		0x82
+		>;
+	};
+
+	pinctrl_ecspi1_cs: ecspi1csgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_ECSPI1_SS0_GPIO5_IO9		0x40000
+		>;
+	};
+
+	pinctrl_usb9514: usb9514grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SAI3_RXFS_GPIO4_IO28		0x140 /* USB_PS_EN */
+			MX8MM_IOMUXC_SAI5_RXD3_GPIO3_IO24		0x140 /* HUB_RSTn */
+		>;
+	};
+
+	pinctrl_pcie0: pcie0grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SAI5_RXC_GPIO3_IO20		0x140
+		>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-ucm-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-ucm-som.dtsi
new file mode 100644
index 000000000000..8b0861b32ff3
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-ucm-som.dtsi
@@ -0,0 +1,680 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+//
+// Copyright 2018 CompuLab
+
+/dts-v1/;
+
+#include "imx8mm.dtsi"
+
+/ {
+	aliases {
+		rtc0 = &rtc_i2c;
+		rtc1 = &snvs_rtc;
+		mmc0 = &usdhc3;
+	};
+
+	chosen {
+		stdout-path = &uart3;
+	};
+
+	backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm2 0 3000000 0>;
+		brightness-levels = <0 255>;
+		num-interpolated-steps = <255>;
+		default-brightness-level = <222>;
+		status = "okay";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_led>;
+
+		heartbeat-led {
+			label = "Heartbeat";
+			gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
+	pmic_osc: clock-pmic {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "pmic_osc";
+	};
+
+	wlreg_on: regulator-wlreg-on {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "wlreg_on";
+		gpio = <&gpio2 10 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <100>;
+		enable-active-high;
+		regulator-always-on;
+		status = "okay";
+	};
+
+	reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
+		compatible = "regulator-fixed";
+		regulator-name = "VSD_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		startup-delay-us = <100>;
+		off-on-delay-us = <12000>;
+	};
+
+	regulator-usdhc3rst {
+		compatible = "regulator-fixed";
+		regulator-name = "usdhc3_rst";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio3 16 GPIO_ACTIVE_HIGH>;
+		regulator-always-on;
+		enable-active-high;
+	};
+
+	regulator-fec1rst {
+		compatible = "regulator-fixed";
+		regulator-name = "fec1_rst";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio1 10 GPIO_ACTIVE_HIGH>;
+		regulator-always-on;
+		enable-active-high;
+		startup-delay-us = <500>;
+		regulator-boot-on;
+	};
+};
+
+&A53_0 {
+	arm-supply = <&buck2>;
+};
+
+&cpu_alert0 {
+	temperature = <105000>;
+};
+
+&cpu_crit0 {
+	temperature = <115000>;
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy0>;
+	fsl,magic-packet;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+		};
+	};
+};
+
+&i2c2 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+
+	pmic@4b {
+		reg = <0x4b>;
+		compatible = "rohm,bd71837";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pmic>;
+		#clock-cells = <0>;
+		clocks = <&pmic_osc>;
+		clock-names = "osc";
+		clock-output-names = "pmic_clk";
+		interrupt-parent = <&gpio1>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+		rohm,reset-snvs-powered;
+		status = "okay";
+
+		regulators {
+			buck1: BUCK1 {
+				regulator-name = "buck1";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <1250>;
+			};
+
+			buck2: BUCK2 {
+				regulator-name = "buck2";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <1250>;
+				rohm,dvs-run-voltage = <1000000>;
+				rohm,dvs-idle-voltage = <900000>;
+			};
+
+			buck3: BUCK3 {
+				regulator-name = "buck3";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck4: BUCK4 {
+				regulator-name = "buck4";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck5: BUCK5 {
+				regulator-name = "buck5";
+				regulator-min-microvolt = <700000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck6: BUCK6 {
+				regulator-name = "buck6";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck7: BUCK7 {
+				regulator-name = "buck7";
+				regulator-min-microvolt = <1605000>;
+				regulator-max-microvolt = <1995000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck8: BUCK8 {
+				regulator-name = "buck8";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo1: LDO1 {
+				regulator-name = "ldo1";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <1900000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo2: LDO2 {
+				regulator-name = "ldo2";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <900000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo3: LDO3 {
+				regulator-name = "ldo3";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo4: LDO4 {
+				regulator-name = "ldo4";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo5: LDO5 {
+				regulator-name = "ldo5";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+
+			ldo6: LDO6 {
+				regulator-name = "ldo6";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo7: LDO7 {
+				regulator-name = "ldo7";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+		};
+	};
+
+	eeprom@50 {
+		compatible = "atmel,24c08";
+		reg = <0x50>;
+		pagesize = <16>;
+	};
+
+	rtc_i2c: rtc@69 {
+		compatible = "abracon,ab1805";
+		reg = <0x69>;
+		status = "okay";
+	};
+};
+
+&i2c3 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "disabled";
+};
+
+&pwm2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm_backlight>;
+	status = "okay";
+};
+
+&sai2 {
+	#sound-dai-cells = <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai2>;
+	assigned-clocks = <&clk IMX8MM_CLK_SAI2>;
+	assigned-clock-parents = <&clk IMX8MM_AUDIO_PLL1_OUT>;
+	assigned-clock-rates = <49152000>;
+	clocks = <&clk IMX8MM_CLK_SAI2_IPG>, <&clk IMX8MM_CLK_DUMMY>,
+		<&clk IMX8MM_CLK_SAI2_ROOT>, <&clk IMX8MM_CLK_DUMMY>,
+		<&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_AUDIO_PLL1_OUT>,
+		<&clk IMX8MM_AUDIO_PLL2_OUT>;
+	clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3", "pll8k", "pll11k";
+	fsl,sai-asynchronous;
+	status = "okay";
+};
+
+&snvs {
+	status = "okay";
+};
+
+&snvs_pwrkey {
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	assigned-clocks = <&clk IMX8MM_CLK_UART1>;
+	assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_80M>;
+	status = "disabled";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	assigned-clocks = <&clk IMX8MM_CLK_UART2>;
+	assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_80M>;
+	status = "disabled";
+};
+
+&uart3 { /* console */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	status = "okay";
+};
+
+&uart4 { /* bluetooth */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	assigned-clocks = <&clk IMX8MM_CLK_UART4>;
+	assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_80M>;
+	uart-has-rtscts;
+	status = "disabled";
+
+	bluetooth {
+		compatible = "brcm,bcm4330-bt";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_bt>;
+		max-speed = <3000000>;
+		device-wakeup-gpios = <&gpio2 7 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio2 8 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio2 6 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&usbotg1 {
+	dr_mode = "otg";
+	hnp-disable;
+	srp-disable;
+	disable-over-current;
+	status = "disabled";
+};
+
+&usbotg2 {
+	dr_mode = "host";
+	hnp-disable;
+	srp-disable;
+	disable-over-current;
+	status = "disabled";
+};
+
+&usdhc1 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1>, <&pinctrl_usdhc1_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz>, <&pinctrl_usdhc1_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz>, <&pinctrl_usdhc1_gpio>;
+	bus-width = <4>;
+	non-removable;
+};
+
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
+	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+	wp-gpios = <&gpio2 20 GPIO_ACTIVE_HIGH>;
+	no-1-8-v;
+	bus-width = <4>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	status = "okay";
+};
+
+&usdhc3 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	bus-width = <8>;
+	non-removable;
+	no-1-8-v;
+	status = "okay";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog_1>;
+
+	pinctrl_hog: hoggrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10		0x19
+			MX8MM_IOMUXC_NAND_READY_B_GPIO3_IO16		0x190
+		>;
+	};
+
+	pinctrl_bt: bt0grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD1_DATA4_GPIO2_IO6		0x19 /* BT_REG_ON */
+			MX8MM_IOMUXC_SD1_DATA5_GPIO2_IO7		0x19 /* BT_DEV_WU */
+			MX8MM_IOMUXC_SD1_DATA6_GPIO2_IO8		0x19 /* BT_HST_WU */
+		>;
+	};
+
+	pinctrl_fec1: fec1grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_ENET_MDC_ENET1_MDC			0x3
+			MX8MM_IOMUXC_ENET_MDIO_ENET1_MDIO		0x3
+			MX8MM_IOMUXC_ENET_TD3_ENET1_RGMII_TD3		0x1f
+			MX8MM_IOMUXC_ENET_TD2_ENET1_RGMII_TD2		0x1f
+			MX8MM_IOMUXC_ENET_TD1_ENET1_RGMII_TD1		0x1f
+			MX8MM_IOMUXC_ENET_TD0_ENET1_RGMII_TD0		0x1f
+			MX8MM_IOMUXC_ENET_RD3_ENET1_RGMII_RD3		0x91
+			MX8MM_IOMUXC_ENET_RD2_ENET1_RGMII_RD2		0x91
+			MX8MM_IOMUXC_ENET_RD1_ENET1_RGMII_RD1		0x91
+			MX8MM_IOMUXC_ENET_RD0_ENET1_RGMII_RD0		0x91
+			MX8MM_IOMUXC_ENET_TXC_ENET1_RGMII_TXC		0x1f
+			MX8MM_IOMUXC_ENET_RXC_ENET1_RGMII_RXC		0x91
+			MX8MM_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
+			MX8MM_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
+		>;
+	};
+
+	pinctrl_gpio_led: gpioledgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_GPIO1_IO12_GPIO1_IO12		0x19
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_I2C1_SCL_I2C1_SCL			0x400001c3
+			MX8MM_IOMUXC_I2C1_SDA_I2C1_SDA			0x400001c3
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_I2C2_SCL_I2C2_SCL			0x400001c3
+			MX8MM_IOMUXC_I2C2_SDA_I2C2_SDA			0x400001c3
+		>;
+	};
+
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_I2C3_SCL_I2C3_SCL			0x400001c3
+			MX8MM_IOMUXC_I2C3_SDA_I2C3_SDA			0x400001c3
+		>;
+	};
+
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_I2C4_SCL_I2C4_SCL			0x400001c3
+			MX8MM_IOMUXC_I2C4_SDA_I2C4_SDA			0x400001c3
+		>;
+	};
+
+	pinctrl_pmic: pmicgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_GPIO1_IO03_GPIO1_IO3		0x41
+		>;
+	};
+
+	pinctrl_pwm_backlight: pwm_backlightgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_GPIO1_IO13_PWM2_OUT		0x03
+		>;
+	};
+
+
+	pinctrl_sai2: sai2grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SAI2_MCLK_SAI2_MCLK		0xd6
+			MX8MM_IOMUXC_SAI2_TXFS_SAI2_TX_SYNC		0xd6
+			MX8MM_IOMUXC_SAI2_RXFS_SAI2_RX_SYNC		0xd6
+			MX8MM_IOMUXC_SAI2_TXC_SAI2_TX_BCLK		0xd6
+			MX8MM_IOMUXC_SAI2_TXD0_SAI2_TX_DATA0		0xd6
+			MX8MM_IOMUXC_SAI2_RXD0_SAI2_RX_DATA0		0xd6
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_UART1_RXD_UART1_DCE_RX		0x140
+			MX8MM_IOMUXC_UART1_TXD_UART1_DCE_TX		0x140
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_UART2_RXD_UART2_DCE_RX		0x140
+			MX8MM_IOMUXC_UART2_TXD_UART2_DCE_TX		0x140
+		>;
+	};
+
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_UART3_RXD_UART3_DCE_RX		0x49
+			MX8MM_IOMUXC_UART3_TXD_UART3_DCE_TX		0x49
+		>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_ECSPI2_MISO_UART4_DCE_CTS_B	0x140
+			MX8MM_IOMUXC_ECSPI2_MOSI_UART4_DCE_TX		0x140
+			MX8MM_IOMUXC_ECSPI2_SS0_UART4_DCE_RTS_B		0x140
+			MX8MM_IOMUXC_ECSPI2_SCLK_UART4_DCE_RX		0x140
+		>;
+	};
+
+	pinctrl_usdhc1_gpio: usdhc1grpgpiogrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD1_RESET_B_GPIO2_IO10		0x41
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK			0x190
+			MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD			0x1d0
+			MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0		0x1d0
+			MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1		0x1d0
+			MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2		0x1d0
+			MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3		0x1d0
+			MX8MM_IOMUXC_GPIO1_IO03_USDHC1_VSELECT		0x1d0
+		>;
+	};
+
+	pinctrl_usdhc1_100mhz: usdhc1grp100mhzgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK			0x194
+			MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD			0x1d4
+			MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0		0x1d4
+			MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1		0x1d4
+			MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2		0x1d4
+			MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3		0x1d4
+			MX8MM_IOMUXC_GPIO1_IO03_USDHC1_VSELECT		0x1d0
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1grp200mhzgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK			0x196
+			MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD			0x1d6
+			MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0		0x1d6
+			MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1		0x1d6
+			MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2		0x1d6
+			MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3		0x1d6
+			MX8MM_IOMUXC_GPIO1_IO03_USDHC1_VSELECT		0x1d0
+		>;
+	};
+
+	pinctrl_usdhc2_gpio: usdhc2grpgpiogrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD2_RESET_B_GPIO2_IO19		0x41
+			MX8MM_IOMUXC_SD2_CD_B_GPIO2_IO12		0x41
+			MX8MM_IOMUXC_SD2_WP_GPIO2_IO20			0x00
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK			0x190
+			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD			0x1d0
+			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0		0x1d0
+			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1		0x1d0
+			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2		0x1d0
+			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d0
+			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0x1d0
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2grp100mhzgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK			0x194
+			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD			0x1d4
+			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0		0x1d4
+			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1		0x1d4
+			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2		0x1d4
+			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d4
+			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0x1d0
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2grp200mhzgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK			0x196
+			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD			0x1d6
+			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0		0x1d6
+			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1		0x1d6
+			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2		0x1d6
+			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d6
+			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT		0x1d0
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x40000190
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d0
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d0
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d0
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d0
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d0
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d0
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d0
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d0
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d0
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x190
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3grp100mhzgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x40000194
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d4
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d4
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d4
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d4
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d4
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d4
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d4
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d4
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d4
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x194
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3grp200mhzgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK		0x40000196
+			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD		0x1d6
+			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0		0x1d6
+			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1		0x1d6
+			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2		0x1d6
+			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3		0x1d6
+			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4		0x1d6
+			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5		0x1d6
+			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6		0x1d6
+			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7		0x1d6
+			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE		0x196
+		>;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B		0xc6
+		>;
+	};
+};
-- 
2.34.1


