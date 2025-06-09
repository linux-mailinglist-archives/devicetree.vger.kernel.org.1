Return-Path: <devicetree+bounces-183764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E617AD1B59
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 12:18:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E424188C049
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 10:18:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EC19256C9B;
	Mon,  9 Jun 2025 10:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="I51kenY/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3B92566FD
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 10:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749464219; cv=none; b=fCkM5B8D+Vj5WJxCAyU2EJo48Z4TazvWi8jI3llyziTNiZVR9Yz2yZz5CZ2RUy3wAefKqlB2tZmPd2kXF4AbfRr1c0ne0bkgvEze3cT7pMBERgv9upkN68Y5OZrvwgucpFWDBPGrfpI1sjvlnwfkof9a+fNFzv1eCAMEL2Hc7Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749464219; c=relaxed/simple;
	bh=jGw7Fx+MUhykgg1Jw1wn+sf0jpt7AD3adikXoO+OMYs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YUpB5dHSCjqrXob5Y4TKEANDASWdJBypLdlJkQ6mHoLcnVa5jnt32iJnmXo05c4tXXnHaLuLTVnrBu+vflj29PjeuXxyFcIg2Qu89LuCK5DwoqmExc2Ju7YUK5wQzZbsyGLNpFu96+JKRVOEssf+YP9A7lyGu5iijHsRYJHz5Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=I51kenY/; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-addda47ebeaso803376466b.1
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 03:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749464215; x=1750069015; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zXBTGwa6QodfqisVjyA2rE3mDoDUc1ePQOPQP5DHJfM=;
        b=I51kenY/CSmCrgf8Hyz78WsycQKrT8s0fNrKF0KlNkOLaoF2cQs47XPwGW+J1zkxu+
         ea5btIYz/dElx+gVHnPkCQsPy0CXbHdT+4KYsZJWYRH7uvGyKaRD1tY/fZW+I9bjj+sk
         lkQQsT1fO8vJVDejjE06Y1uPZoFUKrCAadetk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749464215; x=1750069015;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zXBTGwa6QodfqisVjyA2rE3mDoDUc1ePQOPQP5DHJfM=;
        b=GGIbwlvzJ+JbMKDYZz5wwDyKjDBAWRQ17Z/3iY8bzegeKFporfwxNe7j7iHvHztg6d
         OSIGnW/oywX1V/kaRJzyhTDbkhj3lSexkTSI5+Pp0JYDs+mqYFj8ZzxWFsklnL+Q+GQU
         i7h9GI15XvsgH9Wk5PuGpwbMPMjEm+DP6Mu2EelXXFDrVEYBALzcZt1B6att1adsyADO
         NoUdKZ83i5TtcdaGzcZGiGeTe5k2o9UfT2TOERLAexTylH+90n4eW9fbY8nAmurY4Imc
         AT4CAASp0+5l9TbPSPGTaf5zwKRzB5tQtgZ596yK5uxVK2PIRLk4ML7OC/ard7trx7FD
         uPPA==
X-Forwarded-Encrypted: i=1; AJvYcCXmBmUPrPRc1fsMfzijafIJa47eZnaiT5eI8x80O0J0wbu6BS9hic2iNcn/nckw+xQoUybVmYoE4b4X@vger.kernel.org
X-Gm-Message-State: AOJu0YwdazbpQb6rsEMkPl0etPE6+wF5PaV6Eof/SlOzSGgxa/36mLjr
	l6Uta0Ms0OI1Jwqg6LyndWAAOxgmjhwxX0fbY8eCwgke1RH/XtH9fsYNoRd/CNKu5Ks=
X-Gm-Gg: ASbGncvKeRZaXYxVlx27lvoK+J5UpdGmVlmb57HYb/dxqNFo63AL1QpHpTBUTY4clMD
	uMqzHuYwpDn470uZemwl+oiYvN2+7w13YXO1raE2mBBi6WxpEDSeZOiqoJtsFjvdtdMW9r2+J72
	2we+ME1sNP8GZNqy3vWvGgkKKgkOCpCzgEjBmSDlB5Na9LFIt9eERVgijPvxrt8lfvUlJRWb5Jx
	LPc/abGlfwv15vfm7T95BX2QyD6OkQuLitHwwSo55XxY+dYKimkrSD86U3kNQshRJEdNyPtCjDy
	Lx4z1wur4Ss0Brc5pKLvb+uVdmbaU1E+pdTb3aOPIDyyRqrQOYtgEn8w/cvrHms+PQeqlCVJGrN
	AeK9nnMFPvr0ND+PSWJWY3yku08t5CahRiX1maTLmL/E82+QvWIE=
X-Google-Smtp-Source: AGHT+IFsv4CH8ZnNw93OnVnvf0we0RHH28lvpWqzA40q0Zo/cV8wrkrR4gAF0LPU3oKOK1MNiJMZCw==
X-Received: by 2002:a17:907:d26:b0:ad4:8ec1:8fc9 with SMTP id a640c23a62f3a-ade1ab08d3fmr1032688766b.42.1749464214552;
        Mon, 09 Jun 2025 03:16:54 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.40.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1db55c7esm529257066b.49.2025.06.09.03.16.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jun 2025 03:16:54 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Matteo Lisi <matteo.lisi@engicam.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Peng Fan <peng.fan@nxp.com>,
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
Subject: [PATCH v2 07/10] ARM: dts: imx6ul: support Engicam MicroGEA RMM board
Date: Mon,  9 Jun 2025 12:15:40 +0200
Message-ID: <20250609101637.2322809-8-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250609101637.2322809-1-dario.binacchi@amarulasolutions.com>
References: <20250609101637.2322809-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Support Engicam MicroGEA RMM board with:

- 256 Mbytes NAND Flash
- 512 Mbytes DRAM DDR2
- CAN
- LEDs
- Micro SD card connector
- USB 2.0 high-speed/full-speed
- Ethernet MAC

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Peng Fan <peng.fan@nxp.com>

---

Changes in v2:
- Move iomuxc and iomuxc_snvs nodes to the end of the DTS file.
- Add Reviewed-by tag of Peng Fan

 arch/arm/boot/dts/nxp/imx/Makefile            |   1 +
 .../nxp/imx/imx6ull-engicam-microgea-rmm.dts  | 362 ++++++++++++++++++
 2 files changed, 363 insertions(+)
 create mode 100644 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts

diff --git a/arch/arm/boot/dts/nxp/imx/Makefile b/arch/arm/boot/dts/nxp/imx/Makefile
index 57f185198217..32dfd69b8d8b 100644
--- a/arch/arm/boot/dts/nxp/imx/Makefile
+++ b/arch/arm/boot/dts/nxp/imx/Makefile
@@ -357,6 +357,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
 	imx6ull-dhcom-picoitx.dtb \
 	imx6ull-dhcor-maveo-box.dtb \
 	imx6ull-engicam-microgea-bmm.dtb \
+	imx6ull-engicam-microgea-rmm.dtb \
 	imx6ull-jozacp.dtb \
 	imx6ull-kontron-bl.dtb \
 	imx6ull-myir-mys-6ulx-eval.dtb \
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts
new file mode 100644
index 000000000000..294e6bb6c975
--- /dev/null
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts
@@ -0,0 +1,362 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2025 Amarula Solutions, Dario Binacchi <dario.binacchi@amarulasolutions.com>
+ * Copyright (C) 2025 Engicam srl
+ */
+
+/dts-v1/;
+
+#include "imx6ull-engicam-microgea.dtsi"
+
+/ {
+	compatible = "engicam,microgea-imx6ull-rmm",
+		     "engicam,microgea-imx6ull", "fsl,imx6ull";
+	model = "Engicam MicroGEA i.MX6ULL BMM Board";
+
+	backlight {
+		compatible = "pwm-backlight";
+		brightness-levels = <0 100>;
+		num-interpolated-steps = <100>;
+		default-brightness-level = <85>;
+		pwms = <&pwm8 0 100000 0>;
+	};
+
+	buzzer {
+		compatible = "pwm-beeper";
+		pwms = <&pwm4 0 1000000 0>;
+	};
+
+	reg_1v8: regulator-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
+
+	reg_3v3: regulator-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	reg_usb1_vbus: regulator-usb1-vbus {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_usb1>;
+		regulator-name = "usb1_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio5 0 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reg_usb2_vbus: regulator-usb2-vbus {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_usb2>;
+		regulator-name = "usbotg_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio5 3 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reg_ext_pwr: regulator-ext-pwr {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_ext_pwr>;
+		regulator-name = "ext-pwr";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio5 6 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+	};
+
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "imx6ull-microgea-rmm-sgtl5000";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,bitclock-master = <&codec_dai>;
+		simple-audio-card,frame-master = <&codec_dai>;
+		simple-audio-card,widgets =
+			"Microphone", "Mic Jack",
+			"Headphone", "Headphone Jack";
+		simple-audio-card,routing =
+			"MIC_IN", "Mic Jack",
+			"Mic Jack", "Mic Bias",
+			"Headphone Jack", "HP_OUT";
+
+		cpu_dai: simple-audio-card,cpu {
+			sound-dai = <&sai2>;
+		};
+
+		codec_dai: simple-audio-card,codec {
+			sound-dai = <&codec>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_leds>;
+
+		led-0 {
+			gpios = <&gpio2 10 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+			status = "okay";
+		};
+
+		led-1 {
+			gpios = <&gpio2 11 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+			status = "okay";
+		};
+	};
+};
+
+&can1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_can>;
+	status = "okay";
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	touchscreen: touchscreen@38 {
+		compatible ="edt,edt-ft5306";
+		reg = <0x38>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_touchscreen>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <8 IRQ_TYPE_EDGE_FALLING>;
+		reset-gpios = <&gpio2 14 GPIO_ACTIVE_LOW>;
+		report-rate-hz = <6>;
+		/* settings valid only for Hycon touchscreen */
+		touchscreen-size-x = <1280>;
+		touchscreen-size-y = <800>;
+	};
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	codec: sgtl5000@a {
+		compatible = "fsl,sgtl5000";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_mclk>;
+		reg = <0x0a>;
+		#sound-dai-cells = <0>;
+		clocks = <&clks IMX6UL_CLK_CKO>;
+		assigned-clocks = <&clks IMX6UL_CLK_CKO2_SEL>,
+				  <&clks IMX6UL_CLK_CKO2_PODF>,
+				  <&clks IMX6UL_CLK_CKO2>,
+				  <&clks IMX6UL_CLK_CKO>;
+		assigned-clock-parents = <&clks IMX6UL_CLK_OSC>,
+					 <&clks IMX6UL_CLK_CKO2_SEL>,
+					 <&clks IMX6UL_CLK_CKO2_PODF>,
+					 <&clks IMX6UL_CLK_CKO2>;
+		VDDA-supply = <&reg_3v3>;
+		VDDIO-supply = <&reg_3v3>;
+		VDDD-supply = <&reg_1v8>;
+	};
+};
+
+&pwm4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm4>;
+	status = "okay";
+};
+
+&pwm8 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm8>;
+	status = "okay";
+};
+
+&sai2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai2>;
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	status = "okay";
+};
+
+&usbotg1 {
+	dr_mode = "host";
+	vbus-supply = <&reg_usb1_vbus>;
+	disable-over-current;
+	status = "okay";
+};
+
+&usbotg2 {
+	dr_mode = "host";
+	vbus-supply = <&reg_usb2_vbus>;
+	disable-over-current;
+	status = "okay";
+};
+
+/* MicroSD */
+&usdhc1 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
+	vmmc-supply = <&reg_3v3>;
+	bus-width = <4>;
+	keep-power-in-suspend;
+	non-removable;
+	wakeup-source;
+	status = "okay";
+};
+
+&iomuxc {
+
+	pinctrl_can: can-grp {
+		fsl,pins = <
+			MX6UL_PAD_UART3_RTS_B__FLEXCAN1_RX	0x1b020
+			MX6UL_PAD_UART3_CTS_B__FLEXCAN1_TX	0x1b020
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX6UL_PAD_CSI_PIXCLK__I2C1_SCL		0x4001b8b0
+			MX6UL_PAD_CSI_MCLK__I2C1_SDA		0x4001b8b0
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO00__I2C2_SCL		0x4001b8b0
+			MX6UL_PAD_GPIO1_IO01__I2C2_SDA		0x4001b8b0
+		>;
+	};
+
+	pinctrl_leds: ledsgrp {
+		fsl,pins = <
+			MX6UL_PAD_ENET2_RX_EN__GPIO2_IO10	0x130b0
+			MX6UL_PAD_ENET2_TX_DATA0__GPIO2_IO11	0x130b0
+		>;
+	};
+
+	pinctrl_mclk: mclkgrp {
+		fsl,pins = <
+			MX6UL_PAD_JTAG_TMS__CCM_CLKO1		0x13009
+		>;
+	};
+
+	pinctrl_pwm4: pwm4grp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO05__PWM4_OUT		0x110b0
+		>;
+	};
+
+	pinctrl_pwm8: pwm8grp {
+		fsl,pins = <
+			MX6UL_PAD_ENET1_RX_ER__PWM8_OUT		0x110b0
+		>;
+	};
+
+	pinctrl_sai2: sai2grp {
+		fsl,pins = <
+			MX6UL_PAD_JTAG_TCK__SAI2_RX_DATA	0x130b0
+			MX6UL_PAD_JTAG_TDI__SAI2_TX_BCLK	0x17088
+			MX6UL_PAD_JTAG_TDO__SAI2_TX_SYNC	0x17088
+			MX6UL_PAD_JTAG_TRST_B__SAI2_TX_DATA	0x120b0
+		>;
+	};
+
+	pinctrl_touchscreen: touchgrp {
+		fsl,pins = <
+			MX6UL_PAD_ENET2_TX_CLK__GPIO2_IO14	0x17059
+			MX6UL_PAD_ENET2_RX_DATA0__GPIO2_IO08	0x17059
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX6UL_PAD_UART1_TX_DATA__UART1_DCE_TX	0x1b0b1
+			MX6UL_PAD_UART1_RX_DATA__UART1_DCE_RX	0x1b0b1
+		>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+			MX6UL_PAD_UART4_TX_DATA__UART4_DCE_TX	0x0b0b0
+			MX6UL_PAD_UART4_RX_DATA__UART4_DCE_RX	0x0b0b0
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x17059
+			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x10059
+			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x17059
+			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x17059
+			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x17059
+			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x17059
+		>;
+	};
+
+	pinctrl_usdhc1_100mhz: usdhc1-100mhzgrp {
+		fsl,pins = <
+			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x170b9
+			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x100b9
+			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x170b9
+			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x170b9
+			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x170b9
+			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x170b9
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1-200mhzgrp {
+		fsl,pins = <
+			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x170f9
+			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x100f9
+			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x170f9
+			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x170f9
+			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x170f9
+			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x170f9
+		>;
+	};
+};
+
+&iomuxc_snvs {
+
+	pinctrl_reg_usb1: regusb1grp {
+		fsl,pins = <
+			MX6ULL_PAD_SNVS_TAMPER0__GPIO5_IO00	0x17059
+		>;
+	};
+
+	pinctrl_reg_usb2: regusb2grp {
+		fsl,pins = <
+			MX6ULL_PAD_SNVS_TAMPER3__GPIO5_IO03	0x17059
+		>;
+	};
+
+	pinctrl_reg_ext_pwr: reg-ext-pwrgrp {
+		fsl,pins = <
+			MX6ULL_PAD_SNVS_TAMPER6__GPIO5_IO06	0x17059
+		>;
+	};
+};
-- 
2.43.0


