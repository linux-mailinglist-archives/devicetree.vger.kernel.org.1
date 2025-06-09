Return-Path: <devicetree+bounces-183762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 45AE0AD1B53
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 12:17:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 260937A6574
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 10:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B639D253F22;
	Mon,  9 Jun 2025 10:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Wd3WhqxT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEF4825393B
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 10:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749464211; cv=none; b=UXaecOhR2i14E78gI66PhkNmNMThYKc3byu8a7aeAULNJsQk11L+Glvy6/LGWZsEcM9Zj6ntJ/ZuW3Ci8tjydFzpr5/L0t7woBJ3MqL//Hgo5MHATtI8hJw3ipTjeisWMpl/vf5dTyxIlRmsWS8SQnwSefxAggFqnJc8zoUaGyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749464211; c=relaxed/simple;
	bh=vCn3dY1/ui274fMjTTbTYPqAOzoe1XrORIk6YB4lNeE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=t01E5KWnm1h08YdlJuk2hGGp8UCqZYmgNk744ALmOMN36ssdiMZYusrIyZXYUPHwrBvv7Y8fQUfVcLuzjFdc/XqhcSZ9Og0NmmQ/e9h41qNe+1hRCLOK8pqP/N34bZMybPFjdQX975GqYXvd1tR3k3GTizUjuR+RBuSWSNduhHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Wd3WhqxT; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ad89ee255easo751139366b.3
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 03:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749464208; x=1750069008; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tCV7VzmvzfcmA29LtCpQQ4a3kNi2sbG4bX6lVPaawMs=;
        b=Wd3WhqxTW8Xi/1czE7AsKWMeGBGh8GV6bGAh5l75BgSBwquOi4uWUvmn9rbvZ3VudE
         P+qy6QFJyyWhFLcwWDEE+WZTaat4o8xiDH7LNVy3rePM1xY8T3f0E64TTqR/PRB8+4J4
         5tifdPwncib5adRGBhJZwl8+ZhIs/s3LyruZc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749464208; x=1750069008;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tCV7VzmvzfcmA29LtCpQQ4a3kNi2sbG4bX6lVPaawMs=;
        b=dU0wfozH8JlqkPm8RkaM/0xuCe90WL8VvKHdybYzftcAPmfQAnc/xA0+xy3QYGqkLf
         7R5eo3Dn+Whc12p0U66vm/KDvnKyRGqa9tAH1B6Qrg9ERUZJysFQ1P1wCQvTqfVGmaMn
         NtGCzlmNFaZNe8rMy1o1qb5zIkLS0X4awFiTK45Kz/mUYSSbs9SbLw5kjnKj1BNYXzRE
         SaorgBR+RqysuMQW+HkLuOutDpbHhtScvJlS87IuiBkuLECYZLnM5lWcpwegth5Wsx5p
         0QQ3ropa9bbDaw2y+gtWi/QE8im/1kKb8lCX+JX6jH1UkeDXdwIteTKaXSkhdpdbg6tF
         Zt2A==
X-Forwarded-Encrypted: i=1; AJvYcCXjY+ROCYtdu15ZSccYVpH0QHinHge6PRRpzFUEze7b9/0C1PN5s8tyhr9WpdfYqoNSAEkViUKHfGYm@vger.kernel.org
X-Gm-Message-State: AOJu0YyQJaZaQUNEW+43BuNP7bS1pQmyVeBem+WsOd0qS7x+dJyFCqSN
	uHY7bi4CbDepNEGrF5C28bNkIuTzGVSX7ppTPJ5+j8SSE5k3vveF/PAPvhnI+9YoL/s=
X-Gm-Gg: ASbGnctKdWqNYHopsCX2I6xCPIjfmLoaZx+g6h8Yx0O7SEMO08PKstgCVaL169JCOWo
	0/Xfz3SaQDfao3W4u/RK3LBr/MonhLBWrNvP4rfDR3fIMyiNI+K8u40M72EjtrbUUo900ICf/OM
	w/Sd1fGMnf3G5umyJgn12PD2tyqMSsWRQycqSQsbXnyGtnCSlC8k+nda+u4Wi9Rr1GaBfW5h5iq
	T44WJKwsphgg6VIXpsmC2DFSg7UHpHFAWHoNRUYTVRAOhvXBY93KAiGM8eNscCw58xCKW9QaNv5
	6iJSjbFJUuABCk6H1R5K8sPNeUCPBifuOqq08+IdibQl0m9dN21Wt7Z3HXp4aFBwLb22hzuvRpv
	xzkY0qujwwhe725S/cCZAh0cKEWmr7FIXQ5TQHRGD51SpAdtHv5w=
X-Google-Smtp-Source: AGHT+IH17UpjRjVv3onBJpVBG+ZwM0GADFSdiqEEFM4VfitHXqXBrL0887HBHqMHZEm082YwnCg9mQ==
X-Received: by 2002:a17:906:6a0a:b0:ade:17b0:9f48 with SMTP id a640c23a62f3a-ade1a9057eamr1039216066b.23.1749464207898;
        Mon, 09 Jun 2025 03:16:47 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.40.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1db55c7esm529257066b.49.2025.06.09.03.16.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jun 2025 03:16:47 -0700 (PDT)
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
Subject: [PATCH v2 03/10] ARM: dts: imx6ul: support Engicam MicroGEA BMM board
Date: Mon,  9 Jun 2025 12:15:36 +0200
Message-ID: <20250609101637.2322809-4-dario.binacchi@amarulasolutions.com>
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

Support Engicam MicroGEA BMM board with:

- 256 Mbytes NAND Flash
- 512 Mbytes DRAM DDR2
- CAN
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
 .../nxp/imx/imx6ull-engicam-microgea-bmm.dts  | 305 ++++++++++++++++++
 2 files changed, 306 insertions(+)
 create mode 100644 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts

diff --git a/arch/arm/boot/dts/nxp/imx/Makefile b/arch/arm/boot/dts/nxp/imx/Makefile
index 8b3abe817e12..57f185198217 100644
--- a/arch/arm/boot/dts/nxp/imx/Makefile
+++ b/arch/arm/boot/dts/nxp/imx/Makefile
@@ -356,6 +356,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
 	imx6ull-dhcom-pdk2.dtb \
 	imx6ull-dhcom-picoitx.dtb \
 	imx6ull-dhcor-maveo-box.dtb \
+	imx6ull-engicam-microgea-bmm.dtb \
 	imx6ull-jozacp.dtb \
 	imx6ull-kontron-bl.dtb \
 	imx6ull-myir-mys-6ulx-eval.dtb \
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts
new file mode 100644
index 000000000000..e4a3b92e2563
--- /dev/null
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts
@@ -0,0 +1,305 @@
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
+	compatible = "engicam,microgea-imx6ull-bmm",
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
+		simple-audio-card,name = "imx6ull-microgea-bmm-sgtl5000";
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
+};
+
+&can1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_can>;
+	status = "okay";
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
+&tsc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_tsc>;
+	measure-delay-time = <0x9ffff>;
+	pre-charge-time = <0xfff>;
+	xnur-gpios = <&gpio1 3 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&usbotg1 {
+	dr_mode = "host";
+	vbus-supply = <&reg_usb1_vbus>;
+	status = "okay";
+};
+
+&usbotg2 {
+	dr_mode = "host";
+	vbus-supply = <&reg_usb2_vbus>;
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
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO00__I2C2_SCL		0x4001b8b0
+			MX6UL_PAD_UART5_RX_DATA__I2C2_SDA	0x4001b8b0
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
+			MX6UL_PAD_ENET1_RX_ER__PWM8_OUT		0x11008
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
+	pinctrl_tsc: tscgrp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO01__GPIO1_IO01	0x000b0
+			MX6UL_PAD_GPIO1_IO02__GPIO1_IO02	0x000b0
+			MX6UL_PAD_GPIO1_IO03__GPIO1_IO03	0x000b0
+			MX6UL_PAD_GPIO1_IO04__GPIO1_IO04	0x000b0
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


