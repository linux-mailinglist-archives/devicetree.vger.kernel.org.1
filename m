Return-Path: <devicetree+bounces-179155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F8CABEFBF
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 11:29:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 210834A1E73
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 09:29:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8CC0242D8A;
	Wed, 21 May 2025 09:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ByoxxGDY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 991E224167F
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 09:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747819717; cv=none; b=GRBzE598C6lNsXjGGxE513TmNs34rRQgK9ZlDaScZey1L8XXaoj/K+icrRRUojYylWZK1EJqosu0bVGMeFnMB9mgv+7MBSBq8w6tQPiaMeuhOs9lTS8tDABmdRH/TBYPZn1LpQyEj37vSkocy+OhJNw3gWxec6Hivgb5ppVruiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747819717; c=relaxed/simple;
	bh=FomHqmQ14E2Bt24ovsI6OM78X7YORg7U3Xg/Dt8cjMg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FINKIzvDO++HR+47v/9HWaNxGZKcQ8wuy+DehCIBkNV1CqsotCENsssrwiekY7wRzTFJ1ZrswTuUVPXqEAbrMPj45upw8pZ81qwDaoBwrEc5bMPpK9WmsQlcpzD2TgEODvEIoiOocs3NzXHYGM5t5GtzO0ZDj+PQ1waYNE4zQA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=ByoxxGDY; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-601aa44af77so7036821a12.3
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 02:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1747819714; x=1748424514; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=88zSqdF1oery5Ifyy1daaJl4Nvz7hA233uJOXHAMsbU=;
        b=ByoxxGDYwjvdgjhgBRiRr10Pn0MvmVhe9Qge6H4NMTP4G4pF7NXDYcjFrgZ6yq2Y7l
         AEJlT7bxgcju5FJtniNGGoTbyiQPEXJ6F5e8YUHIk/rEFso1V6J3hvDrLUWnWR78OBEo
         PGIlyF68riTmZbhVFbEQe4agjfybx3M4oaqr8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747819714; x=1748424514;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=88zSqdF1oery5Ifyy1daaJl4Nvz7hA233uJOXHAMsbU=;
        b=gTX9vLAiVgPC2G2c+dACiHZkVw/hw3x40WicJpl0mTiMxiqXGaqH0IliWvtVlhVcEK
         2UodLDvlvvFL+pyB3qV9peRxP5tYMftl+tvCykb6kOuq2ceOogA5zuuiAlUx2VLr6OoQ
         zqYCgPbR26NLsKe+duXrM3UZ4/SqReJV8v4dx1KE0+An6vYr+e4p3OT3u8xfiJbWx9rr
         +1jjmgUlWRLbqQa453R/LY/Z7C29knu/PWILjpphKIb+ZQ1db7QVoTiD1nhYV5FA8JrZ
         Oo73c9cAi9+A67hK6JL+x9BjooQyKOz5pqgMf3AyjmflnbZ1x7gIhZYQaVqveJJ1cWJp
         /jqw==
X-Forwarded-Encrypted: i=1; AJvYcCWlNLi4ahTGwFSCAiyMU7hk949YXpkaT2LUIBi4pBWRcZvSzNuaTZf82SVhZJP05FeNW2BDMqqrGSdP@vger.kernel.org
X-Gm-Message-State: AOJu0YyxK7g2EkAW/UP67kV/fI/4zyZ4c6Sxy+9EP2N5Ma4V9WXzXqs0
	aySJ4v2v8d3cTJOeNfYYZMyEbLx/0AUyO7HJWZxfInCZPo6mWIK/6Df9ZrXPbapGbsc=
X-Gm-Gg: ASbGncu5hDX5rz4D6BsL8xiBe0oi9vK4eh2v4yOUWpSDSd27iFZ4TuIGb9R3ssJZJxk
	DGRuPTw5JINH6KtY5V4k5U9eB5CnHu6emRj9Um28PLpLiOgAEIwKfVHjbl8tw3SWshWmlm3M/AY
	W5nmj/N2YW1dwor+x7gOQWYeDrbTt6L2R7qxL7oP9guOCbpMdb6oXwpGCl6qLF3bzMDHjqWAFRI
	qmrP4cT/HsJvKSSR5Qw5d/SzcnrFPkdQ4DiMfmzay+jdyvoSK5TS8hTgQ7LDUNiKzAPL7x8szED
	BZUAnEt5corcG3zo3raCvFyRdY8qSjL6SB8ZZ0NrqfmFdAXi1fJs8SFFv4kX9soho6pc/TG1Wqz
	wt6VrGSEwV26O
X-Google-Smtp-Source: AGHT+IHbZ8J/wRZ5lk7VnfS42O+2zQL+znLKT7ZMo3IHYU7HZnK0RacmYNlNgAkU20/pUPem8p2E7Q==
X-Received: by 2002:a17:906:4794:b0:ad5:54e0:4c97 with SMTP id a640c23a62f3a-ad554e04df2mr1260109466b.50.1747819713811;
        Wed, 21 May 2025 02:28:33 -0700 (PDT)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:cfc5:5070:d6f4:1d86])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d275d9fsm867442466b.74.2025.05.21.02.28.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 02:28:33 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	michael@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] ARM: dts: mxs: support i.MX28 Amarula rmm board
Date: Wed, 21 May 2025 11:28:22 +0200
Message-ID: <20250521092826.1035448-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250521092826.1035448-1-dario.binacchi@amarulasolutions.com>
References: <20250521092826.1035448-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The board includes the following resources:
 - 256 Mbytes NAND Flash
 - 256 Mbytes SRAM
 - LCD-TFT controller
 - CAN
 - USB 2.0 high-speed/full-speed
 - Ethernet MAC

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

 arch/arm/boot/dts/nxp/mxs/Makefile            |   1 +
 .../boot/dts/nxp/mxs/imx28-amarula-rmm.dts    | 302 ++++++++++++++++++
 2 files changed, 303 insertions(+)
 create mode 100644 arch/arm/boot/dts/nxp/mxs/imx28-amarula-rmm.dts

diff --git a/arch/arm/boot/dts/nxp/mxs/Makefile b/arch/arm/boot/dts/nxp/mxs/Makefile
index 96dd31ea19ba..d72ba702b6fa 100644
--- a/arch/arm/boot/dts/nxp/mxs/Makefile
+++ b/arch/arm/boot/dts/nxp/mxs/Makefile
@@ -5,6 +5,7 @@ dtb-$(CONFIG_ARCH_MXS) += \
 	imx23-sansa.dtb \
 	imx23-stmp378x_devb.dtb \
 	imx23-xfi3.dtb \
+	imx28-amarula-rmm.dtb \
 	imx28-apf28.dtb \
 	imx28-apf28dev.dtb \
 	imx28-apx4devkit.dtb \
diff --git a/arch/arm/boot/dts/nxp/mxs/imx28-amarula-rmm.dts b/arch/arm/boot/dts/nxp/mxs/imx28-amarula-rmm.dts
new file mode 100644
index 000000000000..ce6b34e35e1c
--- /dev/null
+++ b/arch/arm/boot/dts/nxp/mxs/imx28-amarula-rmm.dts
@@ -0,0 +1,302 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2025 Amarula Solutions, Dario Binacchi <dario.binacchi@amarulasolutions.com>
+ */
+
+/dts-v1/;
+#include "imx28.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+
+/ {
+	model = "Amarula i.MX28 rmm";
+	compatible = "amarula,imx28-rmm", "fsl,imx28";
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0x40000000 0x08000000>;
+	};
+
+	reg_5v: regulator-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "5v";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
+
+	reg_3v3: regulator-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	reg_1v8: regulator-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
+
+	reg_fec_3v3: regulator-fec-3v3 {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&fec_3v3_enable_pin>;
+		regulator-name = "fec-3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpios = <&gpio3 27 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		startup-delay-us = <300000>;
+		vin-supply = <&reg_5v>;
+	};
+
+	reg_usb0_vbus: regulator-usb0-vbus {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb0_vbus_enable_pin>;
+		regulator-name = "usb0_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio2 5 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	reg_usb1_vbus: regulator-usb1-vbus {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb1_vbus_enable_pin>;
+		regulator-name = "usb1_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio2 6 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm 4 5000000 0>;
+		brightness-levels = <0 255>;
+		num-interpolated-steps = <255>;
+		default-brightness-level = <255>;
+		power-supply = <&reg_5v>;
+	};
+
+	beeper {
+		compatible = "pwm-beeper";
+		pwms = <&pwm 7 100000 0>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&leds_pins>;
+
+		led-0 {
+			label = "status";
+			gpios = <&gpio2 7 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		led-1 {
+			label = "x22_5";
+			gpios = <&gpio3 16 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		led-2 {
+			label = "x22_4";
+			gpios = <&gpio3 17 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+	};
+};
+
+&auart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&auart0_2pins_a>;
+	status = "okay";
+};
+
+&auart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&auart1_pins_a>;
+	status = "okay";
+};
+
+&can0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&can0_pins_a>;
+	xceiver-supply = <&reg_3v3>;
+	status = "okay";
+};
+
+&duart {
+	pinctrl-names = "default";
+	pinctrl-0 = <&duart_pins_b>;
+	status = "okay";
+};
+
+&duart_pins_b {
+	fsl,voltage = <MXS_VOLTAGE_LOW>;
+};
+
+&gpmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&gpmi_pins_a &gpmi_status_cfg>;
+	status = "okay";
+};
+
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0_pins_a>;
+	status = "okay";
+
+	polytouch: edt-ft5x06@38 {
+		compatible = "edt,edt-ft5x06";
+		reg = <0x38>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&edt_ft5x06_pins &edt_ft5x06_wake_pin>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <19 IRQ_TYPE_EDGE_RISING>;
+		reset-gpios = <&gpio0 21 GPIO_ACTIVE_LOW>;
+		wake-gpios = <&gpio0 18 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&lradc {
+	status = "okay";
+};
+
+&mac0 {
+	phy-mode = "rmii";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mac0_pins_a>;
+	phy-supply = <&reg_fec_3v3>;
+	phy-handle = <&ethphy>;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+			max-speed = <100>;
+			reset-gpios = <&gpio3 28 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <4000>;
+			reset-deassert-us = <4000>;
+		};
+	};
+};
+
+&pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hog_pins_a>;
+
+	hog_pins_a: hog-0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_LCD_RESET__GPIO_3_30 /* LCD reset */
+			MX28_PAD_SSP2_SS1__GPIO_2_20  /* External power */
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	edt_ft5x06_pins: edt-ft5x06-0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_GPMI_RDY1__GPIO_0_21 /* Reset */
+			MX28_PAD_GPMI_CE3N__GPIO_0_19 /* Interrupt */
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_ENABLE>;
+	};
+
+	edt_ft5x06_wake_pin: edt-ft5x06-wake-0 {
+		reg = <0>;
+		fsl,pinmux-ids = <MX28_PAD_GPMI_CE2N__GPIO_0_18>;
+		fsl,drive-strength = <MXS_DRIVE_16mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	fec_3v3_enable_pin: fec-3v3-enable-0 {
+		reg = <0>;
+		fsl,pinmux-ids = <MX28_PAD_SPDIF__GPIO_3_27>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	leds_pins: leds-0 {
+		reg = <0>;
+		fsl,pinmux-ids = <
+			MX28_PAD_SSP0_DATA7__GPIO_2_7
+			MX28_PAD_PWM0__GPIO_3_16
+			MX28_PAD_PWM1__GPIO_3_17
+		>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	usb0_vbus_enable_pin: usb0-vbus-enable-0 {
+		reg = <0>;
+		fsl,pinmux-ids = <MX28_PAD_SSP0_DATA5__GPIO_2_5>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+
+	usb1_vbus_enable_pin: usb1-vbus-enable-0 {
+		reg = <0>;
+		fsl,pinmux-ids = <MX28_PAD_SSP0_DATA6__GPIO_2_6>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
+	};
+};
+
+&pwm {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm4_pins_a &pwm7_pins_a>;
+	status = "okay";
+};
+
+&ssp0 {
+	compatible = "fsl,imx28-mmc";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc0_4bit_pins_a &mmc0_sck_cfg>;
+	status = "okay";
+	bus-width = <4>;
+	broken-cd;
+};
+
+&usb0 {
+	status = "okay";
+	vbus-supply = <&reg_usb0_vbus>;
+	dr_mode = "host";
+};
+
+&usb1 {
+	status = "okay";
+	vbus-supply = <&reg_usb1_vbus>;
+	dr_mode = "host";
+};
+
+&usbphy0 {
+	status = "okay";
+};
+
+&usbphy1 {
+	status = "okay";
+};
-- 
2.43.0


