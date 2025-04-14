Return-Path: <devicetree+bounces-166690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F383EA88095
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 14:39:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE187170E01
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 12:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B779F2BF3CE;
	Mon, 14 Apr 2025 12:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cGWFzy5U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EFA2BEC4C;
	Mon, 14 Apr 2025 12:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744634356; cv=none; b=aP0dG9+rTaVz/EY3rlFSEFqfRuw+NWYj3bNgOcy1RiFksiPRu75MdV8tGACu2xBqgwbMwykNfz1EFA673IG48Um1Py515NVEJdgAg/ownGFbCITA94fZto0TLWXcvNHeBtB9qyDU5sdy8x4gGlVb6p6pqB9lOWcz8+86xRXBYFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744634356; c=relaxed/simple;
	bh=5kKaN6vSWre0aft+61g14tLQKMflW/kK92xkyjpLjO8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dINC3D3UVOkTmNJ0nR1vOL93eTT4CXdThHTozbJpuuGy+SNNIdUO7xjW2YAwelK8yH/Hdh+G30G4sa2F8cgI5AYpu+2QTp0SFq2gH2cj3Xt7zbC+KSe9gHW8ovHwto66/TwuCUzQxnwxN+WMIh24a+dfSqcB33CWHHu5HdsKpqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cGWFzy5U; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-39c1efbefc6so2483373f8f.1;
        Mon, 14 Apr 2025 05:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744634351; x=1745239151; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u8z8Iatl0qiEjytm1viMKWzeCF4oVs9nHJy1ziSfqA0=;
        b=cGWFzy5UBEL6jSopg0aHGzzO2gcg3HcFaEBXoDexkF16jj4x/wHhkz+Q0+yYjXQ4c1
         2VXHg2FWnSTB6bzqkUakbmiicRs+Yq8PFbDU1YFKLaPfORP2dCuUyf2VcJcQbxFF9jch
         dWqtH6B4eT8VFOpcn+dh+C0E7BBVsYeuocKJfkjFYWNvvYLOg97vgs65jYSYK6DslU5t
         X/Jh63XPdNaaR/dqqz2Vy99Dd1Gcd+ogEBWW00efOTO/2ffnov+mvrc2wHOoM9bQC3WA
         lr/4u80m+GiI6kxDPqxX8WObS1YFIe7ymugcRuHs6/FpyG1i1Uv+4gxQowVv7aapKO2K
         JKnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744634351; x=1745239151;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u8z8Iatl0qiEjytm1viMKWzeCF4oVs9nHJy1ziSfqA0=;
        b=a4f/4E5PRZMTgjD5h/T0Lzm9SV2HdE0FtJ6WDdYAnC7oRGFVfwbypAL6NTDX7gLrBP
         /hY7DsSbrT4DBA6i7SyzLz3fmk3phiZbZau4E4Vl4EoAd+DFy7unITh+deKDtngVch15
         drCrt7W6sEbcusW9mz/L+yoCYqQ9KBvasy2kPQZlqYFmgOUrT52cg5ZEx7YLW+1Ttbew
         yhaHTLWhsYiYNLVv1D5KdZFsIFvHlPJ0Vb8LBbLP4EZ78OjTcwEp7JIFYFL1B80W1Ril
         0l0c8srWdsNNE2cbZepXt3mtrnfQz4VPLP68KRoQrZkZQrtdjEDuvq8zUDUrAetSN0NX
         +GcA==
X-Forwarded-Encrypted: i=1; AJvYcCUXVeAGIyckAV8O5qUx1JxwObrnmtR8pdXbJGZZ6+Cm5N3+gnoEwS2DOpQlndKEf4OneNzfzmNUq0pN@vger.kernel.org, AJvYcCWIkX2wQiB6Iimcnmtr/LwuSOc5y/MQdFKlyaoW1Or2styA6kxcwmnXBetS6xAeDniyCEbeUTp2FPtn2s8F@vger.kernel.org
X-Gm-Message-State: AOJu0Ywwu/t2bfkZf/rqqZ9L9xlGCbXQneFicxs0XrxwYhp3Vrbhn4Vh
	pib7fXZ+EPAVA1qjt/GcrgSCi2Xoh0iVoomBJ7NKa0CUz5YJFYnU
X-Gm-Gg: ASbGncuAy+n32Ot+J2c0PZvFVfpDF5NFcF2oi5EmLeM7C/n1IlpwhK5XOdyUzNu1shy
	YM9W7Ck4y3lUa+hvaSkdtwaztHqmvcC71ojdYw5Gi7vYsHF0A4WGMU6QChGZr8nOQwBYy4ocu4J
	YFxApvC4mgEq/bKv7kLasDR76bxylEFxVm9Ko487eEOckzpWNckN2bY3t3qjKuI4oMpIkikiAMi
	PoGVEuHDc/9h+K3juiXsq5SlGD9ohglW93oY/KS8oArNk5+Rrda2L0rv13O1aluJNN1v607f7It
	5wI+figmLWgUigW+A7zYJp+IoT+F25svA/V2Jj/KWKZYOqc=
X-Google-Smtp-Source: AGHT+IHxjt5do6sLn6rwsd6YYfXyt1lSduig0Fz58gEz4ZSjdu4fBbyBH4JKZZqgVznPMR8vpr4lTg==
X-Received: by 2002:a05:6000:1a8f:b0:391:43cb:43e6 with SMTP id ffacd0b85a97d-39eaaec9dc1mr10281335f8f.51.1744634351143;
        Mon, 14 Apr 2025 05:39:11 -0700 (PDT)
Received: from vitor-nb.. ([2001:8a0:e602:d900:68a4:1b76:fda:f9fe])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae96bf97sm10703259f8f.25.2025.04.14.05.39.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 05:39:10 -0700 (PDT)
From: Vitor Soares <ivitro@gmail.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Baluta <daniel.baluta@gmail.com>
Cc: Vitor Soares <vitor.soares@toradex.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	ivitro@gmail.com,
	Hiago De Franco <hiago.franco@toradex.com>
Subject: [PATCH v2 2/2] arm64: dts: freescale: add Toradex SMARC iMX8MP
Date: Mon, 14 Apr 2025 13:38:27 +0100
Message-Id: <20250414123827.428339-3-ivitro@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250414123827.428339-1-ivitro@gmail.com>
References: <20250414123827.428339-1-ivitro@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vitor Soares <vitor.soares@toradex.com>

Add DT support for Toradex SMARC iMX8MP SoM and Toradex SMARC Development
carrier board.

Link: https://www.toradex.com/computer-on-modules/smarc-arm-family/nxp-imx-8m-plus
Link: https://www.toradex.com/products/carrier-board/smarc-development-board-kit
Co-developed-by: Hiago De Franco <hiago.franco@toradex.com>
Signed-off-by: Hiago De Franco <hiago.franco@toradex.com>
Signed-off-by: Vitor Soares <vitor.soares@toradex.com>
---
v1 -> v2:
  - Move Makefile rule to the proper place. (Daniel Baluta)
  - Remove the dsp_reserved node, it is already disabled in imx8mp.dtsi

 arch/arm64/boot/dts/freescale/Makefile        |    1 +
 .../freescale/imx8mp-toradex-smarc-dev.dts    |  297 ++++
 .../dts/freescale/imx8mp-toradex-smarc.dtsi   | 1284 +++++++++++++++++
 3 files changed, 1582 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-toradex-smarc-dev.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-toradex-smarc.dtsi

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index b6d3fe26d621..2114dc7338e6 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -212,6 +212,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mp-skov-revb-lt6.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-skov-revb-mi1010ait-1cp1.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-skov-revc-bd500.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-skov-revc-tian-g07017.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mp-toradex-smarc-dev.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-tqma8mpql-mba8mpxl.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-tqma8mpql-mba8mp-ras314.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-var-som-symphony.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-toradex-smarc-dev.dts b/arch/arm64/boot/dts/freescale/imx8mp-toradex-smarc-dev.dts
new file mode 100644
index 000000000000..581f221323b7
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-toradex-smarc-dev.dts
@@ -0,0 +1,297 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/* Copyright (C) 2025 Toradex */
+
+/dts-v1/;
+
+#include "imx8mp-toradex-smarc.dtsi"
+
+/ {
+	model = "Toradex SMARC iMX8M Plus on Toradex SMARC Development Board";
+	compatible = "toradex,smarc-imx8mp-dev",
+		     "toradex,smarc-imx8mp",
+		     "fsl,imx8mp";
+
+	hdmi-connector {
+		compatible = "hdmi-connector";
+		label = "J64";
+		type = "a";
+
+		port {
+			native_hdmi_connector_in: endpoint {
+				remote-endpoint = <&hdmi_tx_out>;
+			};
+		};
+	};
+
+	reg_carrier_1p8v: regulator-carrier-1p8v {
+		compatible = "regulator-fixed";
+		regulator-max-microvolt = <1800000>;
+		regulator-min-microvolt = <1800000>;
+		regulator-name = "On-carrier 1V8";
+	};
+
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,bitclock-master = <&codec_dai>;
+		simple-audio-card,format = "i2s";
+		simple-audio-card,frame-master = <&codec_dai>;
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,name = "tdx-smarc-wm8904";
+		simple-audio-card,routing =
+			"Headphone Jack", "HPOUTL",
+			"Headphone Jack", "HPOUTR",
+			"IN2L", "Line In Jack",
+			"IN2R", "Line In Jack",
+			"Microphone Jack", "MICBIAS",
+			"IN1L", "Microphone Jack";
+		simple-audio-card,widgets =
+			"Microphone", "Microphone Jack",
+			"Headphone", "Headphone Jack",
+			"Line", "Line In Jack";
+
+		codec_dai: simple-audio-card,codec {
+			clocks = <&audio_blk_ctrl IMX8MP_CLK_AUDIOMIX_SAI1_MCLK1>;
+			sound-dai = <&wm8904_1a>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&sai1>;
+		};
+	};
+};
+
+&aud2htx {
+	status = "okay";
+};
+
+/* SMARC SPI0 */
+&ecspi1 {
+	status = "okay";
+};
+
+/* SMARC GBE0 */
+&eqos {
+	status = "okay";
+};
+
+/* SMARC GBE1 */
+&fec {
+	status = "okay";
+};
+
+/* SMARC CAN1 */
+&flexcan1 {
+	status = "okay";
+};
+
+/* SMARC CAN0 */
+&flexcan2 {
+	status = "okay";
+};
+
+&gpio1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio7>,
+		    <&pinctrl_gpio8>,
+		    <&pinctrl_gpio9>,
+		    <&pinctrl_gpio10>,
+		    <&pinctrl_gpio11>,
+		    <&pinctrl_gpio12>,
+		    <&pinctrl_gpio13>;
+};
+
+&gpio3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lvds_dsi_sel>;
+};
+
+&gpio4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio4>, <&pinctrl_gpio6>;
+};
+
+&hdmi_pvi {
+	status = "okay";
+};
+
+/* SMARC HDMI */
+&hdmi_tx {
+	status = "okay";
+
+	ports {
+		port@1 {
+			hdmi_tx_out: endpoint {
+				remote-endpoint = <&native_hdmi_connector_in>;
+			};
+		};
+	};
+};
+
+&hdmi_tx_phy {
+	status = "okay";
+};
+
+/* SMARC I2C_LCD */
+&i2c2 {
+	status = "okay";
+
+	i2c-mux@70 {
+		compatible = "nxp,pca9543";
+		reg = <0x70>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		/* I2C on DSI Connector Pins 4/6 */
+		i2c_dsi_0: i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		/* I2C on DSI Connector Pins 52/54 */
+		i2c_dsi_1: i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
+};
+
+/* SMARC I2C_CAM0 */
+&i2c3 {
+	status = "okay";
+};
+
+/* SMARC I2C_GP */
+&i2c4 {
+	/* Audio Codec */
+	wm8904_1a: audio-codec@1a {
+		compatible = "wlf,wm8904";
+		reg = <0x1a>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_sai1>, <&pinctrl_sai1_mclk>;
+		#sound-dai-cells = <0>;
+		clocks = <&audio_blk_ctrl IMX8MP_CLK_AUDIOMIX_SAI1_MCLK1>;
+		clock-names = "mclk";
+		AVDD-supply = <&reg_carrier_1p8v>;
+		CPVDD-supply = <&reg_carrier_1p8v>;
+		DBVDD-supply = <&reg_carrier_1p8v>;
+		DCVDD-supply = <&reg_carrier_1p8v>;
+		MICVDD-supply = <&reg_carrier_1p8v>;
+	};
+
+	/* On-Carrier Temperature Sensor */
+	temperature-sensor@4f {
+		compatible = "ti,tmp1075";
+		reg = <0x4f>;
+	};
+
+	/* On-Carrier EEPROM */
+	eeprom@57 {
+		compatible = "st,24c02", "atmel,24c02";
+		reg = <0x57>;
+		pagesize = <16>;
+	};
+};
+
+/* SMARC I2C_CAM1 */
+&i2c5 {
+	status = "okay";
+};
+
+/* SMARC I2C_PM */
+&i2c6 {
+	clock-frequency = <100000>;
+	status = "okay";
+
+	/* Fan controller */
+	fan@18 {
+		compatible = "ti,amc6821";
+		reg = <0x18>;
+	};
+
+	/* Current measurement into module VDD */
+	hwmon@40 {
+		compatible = "ti,ina226";
+		reg = <0x40>;
+		shunt-resistor = <5000>;
+	};
+};
+
+&lcdif3 {
+	status = "okay";
+};
+
+/* SMARC PCIE_A, M2 Key B */
+&pcie {
+	status = "okay";
+};
+
+&pcie_phy {
+	status = "okay";
+};
+
+/* SMARC LCD1_BKLT_PWM */
+&pwm1 {
+	status = "okay";
+};
+
+/* SMARC LCD0_BKLT_PWM */
+&pwm2 {
+	status = "okay";
+};
+
+/* SMARC I2S0 */
+&sai1 {
+	assigned-clocks = <&clk IMX8MP_CLK_SAI1>;
+	assigned-clock-parents = <&clk IMX8MP_AUDIO_PLL1_OUT>;
+	assigned-clock-rates = <24576000>;
+	fsl,sai-mclk-direction-output;
+	status = "okay";
+};
+
+/* SMARC HDMI Audio */
+&sound_hdmi {
+	status = "okay";
+};
+
+/* SMARC SER0, RS485. Optional M.2 KEY E */
+&uart1 {
+	linux,rs485-enabled-at-boot-time;
+	rs485-rts-active-low;
+	rs485-rx-during-tx;
+	status = "okay";
+};
+
+/* SMARC SER2 */
+&uart2 {
+	status = "okay";
+};
+
+/* SMARC SER1, used as the Linux Console */
+&uart4 {
+	status = "okay";
+};
+
+/* SMARC USB0 */
+&usb3_0 {
+	status = "okay";
+};
+
+/* SMARC USB1..4 */
+&usb3_1 {
+	status = "okay";
+};
+
+&usb3_phy0 {
+	status = "okay";
+};
+
+&usb3_phy1 {
+	status = "okay";
+};
+
+/* SMARC SDIO */
+&usdhc2 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-toradex-smarc.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-toradex-smarc.dtsi
new file mode 100644
index 000000000000..0a8b9eee5ed9
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-toradex-smarc.dtsi
@@ -0,0 +1,1284 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/* Copyright (C) 2025 Toradex */
+
+#include <dt-bindings/phy/phy-imx8-pcie.h>
+#include <dt-bindings/net/ti-dp83867.h>
+#include "imx8mp.dtsi"
+
+/ {
+	aliases {
+		can0 = &flexcan2;
+		can1 = &flexcan1;
+		ethernet0 = &eqos;
+		ethernet1 = &fec;
+		mmc0 = &usdhc3;
+		mmc1 = &usdhc2;
+		mmc2 = &usdhc1;
+		rtc0 = &rtc_i2c;
+		rtc1 = &snvs_rtc;
+		serial0 = &uart1;
+		serial1 = &uart4;
+		serial2 = &uart2;
+		serial3 = &uart3;
+	};
+
+	chosen {
+		stdout-path = &uart4;
+	};
+
+	connector {
+		compatible = "gpio-usb-b-connector", "usb-b-connector";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usb0_id>;
+		id-gpios = <&gpio5 2 GPIO_ACTIVE_HIGH>;
+		label = "USB0";
+		self-powered;
+		type = "micro";
+		vbus-supply = <&reg_usb0_vbus>;
+
+		port {
+			usb_dr_connector: endpoint {
+				remote-endpoint = <&usb3_0_dwc>;
+			};
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_sleep>;
+
+		smarc_key_sleep: key-sleep {
+			gpios = <&gpio3 1 GPIO_ACTIVE_LOW>;
+			label = "SMARC_SLEEP#";
+			wakeup-source;
+			linux,code = <KEY_SLEEP>;
+		};
+	};
+
+	reg_usb0_vbus: regulator-usb0-vbus {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usb0_en_oc>;
+		gpios = <&gpio1 12 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-name = "USB0_EN_OC#";
+	};
+
+	reg_usb1_vbus: regulator-usb1-vbus {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usb1_en_oc>;
+		gpios = <&gpio1 14 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-name = "USB2_EN_OC#";
+	};
+
+	reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usdhc2_pwr_en>;
+		gpios = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		off-on-delay-us = <100000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-name = "3V3_SD";
+		startup-delay-us = <20000>;
+	};
+
+	reg_usdhc2_vqmmc: regulator-usdhc2-vqmmc {
+		compatible = "regulator-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usdhc2_vsel>;
+		gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <1800000>;
+		states = <1800000 0x1>,
+			 <3300000 0x0>;
+		regulator-name = "PMIC_USDHC_VSELECT";
+		vin-supply = <&reg_sd_3v3_1v8>;
+	};
+
+	reg_wifi_en: regulator-wifi-en {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_wifi_pwr_en>;
+		gpios = <&gpio3 14 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-name = "CTRL_EN_WIFI";
+		startup-delay-us = <2000>;
+	};
+
+	reserved-memory {
+		linux,cma {
+			size = <0 0x20000000>;
+			alloc-ranges = <0 0x40000000 0 0x80000000>;
+		};
+	};
+
+	sound_hdmi: sound-hdmi {
+		compatible = "fsl,imx-audio-hdmi";
+		model = "audio-hdmi";
+		audio-cpu = <&aud2htx>;
+		hdmi-out;
+		status = "disabled";
+	};
+};
+
+&A53_0 {
+	cpu-supply = <&reg_vdd_arm>;
+};
+
+&A53_1 {
+	cpu-supply = <&reg_vdd_arm>;
+};
+
+&A53_2 {
+	cpu-supply = <&reg_vdd_arm>;
+};
+
+&A53_3 {
+	cpu-supply = <&reg_vdd_arm>;
+};
+
+/* SMARC SPI0 */
+&ecspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	cs-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>, <&gpio4 28 GPIO_ACTIVE_LOW>;
+};
+
+/* SMARC SPI1 */
+&ecspi2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi2>, <&pinctrl_tpm_cs>;
+	cs-gpios = <&gpio5 13 GPIO_ACTIVE_LOW>,
+		   <&gpio4 3 GPIO_ACTIVE_LOW>,
+		   <&gpio3 6 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	tpm@2 {
+		compatible = "infineon,slb9670", "tcg,tpm_tis-spi";
+		reg = <2>;
+		spi-max-frequency = <18500000>;
+	};
+};
+
+/* SMARC GBE0 */
+&eqos {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_eqos>,
+		    <&pinctrl_eth_mdio>,
+		    <&pinctrl_eqos_1588_event>;
+	phy-handle = <&eqos_phy>;
+	phy-mode = "rgmii-id";
+	snps,force_thresh_dma_mode;
+	snps,mtl-rx-config = <&mtl_rx_setup>;
+	snps,mtl-tx-config = <&mtl_tx_setup>;
+
+	mdio: mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+
+	mtl_rx_setup: rx-queues-config {
+		snps,rx-queues-to-use = <5>;
+
+		queue0 {
+			snps,dcb-algorithm;
+			snps,priority = <0x1>;
+			snps,map-to-dma-channel = <0>;
+		};
+
+		queue1 {
+			snps,dcb-algorithm;
+			snps,priority = <0x2>;
+			snps,map-to-dma-channel = <1>;
+		};
+
+		queue2 {
+			snps,dcb-algorithm;
+			snps,priority = <0x4>;
+			snps,map-to-dma-channel = <2>;
+		};
+
+		queue3 {
+			snps,dcb-algorithm;
+			snps,priority = <0x8>;
+			snps,map-to-dma-channel = <3>;
+		};
+
+		queue4 {
+			snps,dcb-algorithm;
+			snps,priority = <0xf0>;
+			snps,map-to-dma-channel = <4>;
+		};
+	};
+
+	mtl_tx_setup: tx-queues-config {
+		snps,tx-queues-to-use = <5>;
+
+		queue0 {
+			snps,dcb-algorithm;
+			snps,priority = <0x1>;
+		};
+
+		queue1 {
+			snps,dcb-algorithm;
+			snps,priority = <0x2>;
+		};
+
+		queue2 {
+			snps,dcb-algorithm;
+			snps,priority = <0x4>;
+		};
+
+		queue3 {
+			snps,dcb-algorithm;
+			snps,priority = <0x8>;
+		};
+
+		queue4 {
+			snps,dcb-algorithm;
+			snps,priority = <0xf0>;
+		};
+	};
+};
+
+/* SMARC GBE1 */
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec>, <&pinctrl_fec_1588_event>;
+	phy-handle = <&fec_phy>;
+	phy-mode = "rgmii-id";
+	fsl,magic-packet;
+};
+
+/* SMARC CAN1 */
+&flexcan1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan1>;
+};
+
+/* SMARC CAN0 */
+&flexcan2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan2>;
+};
+
+&gpio1 {
+	gpio-line-names = "SMARC_GPIO7", /* 0 */
+			  "SMARC_GPIO8",
+			  "",
+			  "PMIC_INT#",
+			  "PMIC_USDHC_VSELECT",
+			  "SMARC_GPIO9",
+			  "SMARC_GPIO10",
+			  "SMARC_GPIO11",
+			  "SMARC_GPIO12",
+			  "",
+			  "SMARC_GPIO5", /* 10 */
+			  "",
+			  "SMARC_USB0_EN_OC#",
+			  "SMARC_GPIO13",
+			  "SMARC_USB2_EN_OC#";
+};
+
+&gpio2 {
+	gpio-line-names = "", /* 0 */
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "", /* 10 */
+			  "",
+			  "SMARC_SDIO_CD#",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "SMARC_SDIO_PWR_EN",
+			  "SMARC_SDIO_WP"; /* 20 */
+};
+
+&gpio3 {
+	gpio-line-names = "ETH_0_INT#", /* 0 */
+			  "SLEEP#",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "TPM_CS#",
+			  "LVDS_DSI_SEL",
+			  "MCU_INT#",
+			  "GPIO_EX_INT#",
+			  "", /* 10 */
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "SMARC_SMB_ALERT#",
+			  "",
+			  "",
+			  "",
+			  "SMARC_I2C_PM_DAT", /* 20 */
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "SMARC_I2C_PM_CK";
+
+	lvds_dsi_mux_hog: lvds-dsi-mux-hog {
+		gpio-hog;
+		gpios = <7 GPIO_ACTIVE_HIGH>;
+		line-name = "LVDS_DSI_SEL";
+		/* LVDS_DSI_SEL as DSI */
+		output-low;
+	};
+};
+
+&gpio4 {
+	gpio-line-names = "SMARC_PCIE_WAKE#", /* 0 */
+			  "",
+			  "",
+			  "SMARC_SPI1_CS1#",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "", /* 10 */
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "SMARC_GPIO4",
+			  "SMARC_PCIE_A_RST#",
+			  "", /* 20 */
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "SMARC_SPI0_CS1#",
+			  "SMARC_GPIO6";
+};
+
+&gpio5 {
+	gpio-line-names = "", /* 0 */
+			  "",
+			  "SMARC_USB0_OTG_ID",
+			  "SMARC_I2C_CAM1_CK",
+			  "SMARC_I2C_CAM1_DAT",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "SMARC_SPI0_CS0#",
+			  "", /* 10 */
+			  "",
+			  "",
+			  "SMARC_SPI1_CS0#",
+			  "CTRL_I2C_SCL",
+			  "CTRL_I2C_SDA",
+			  "SMARC_I2C_LCD_CK",
+			  "SMARC_I2C_LCD_DAT",
+			  "SMARC_I2C_CAM0_CK",
+			  "SMARC_I2C_CAM0_DAT",
+			  "SMARC_I2C_GP_CK", /* 20 */
+			  "SMARC_I2C_GP_DAT";
+};
+
+/* SMARC HDMI */
+&hdmi_tx {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hdmi>;
+};
+
+/* On-module I2C */
+&i2c1 {
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	pinctrl-1 = <&pinctrl_i2c1_gpio>;
+	clock-frequency = <400000>;
+	scl-gpios = <&gpio5 14 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	single-master;
+	status = "okay";
+
+	som_gpio_expander: gpio-expander@21 {
+		compatible = "nxp,pcal6408";
+		reg = <0x21>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pcal6408>;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupt-parent = <&gpio3>;
+		interrupts = <9 IRQ_TYPE_LEVEL_LOW>;
+		#gpio-cells = <2>;
+		gpio-controller;
+		gpio-line-names =
+			"SMARC_GPIO0",
+			"SMARC_GPIO1",
+			"SMARC_GPIO2",
+			"SMARC_GPIO3",
+			"SMARC_LCD0_VDD_EN",
+			"SMARC_LCD0_BKLT_EN",
+			"SMARC_LCD1_VDD_EN",
+			"SMARC_LCD1_BKLT_EN";
+	};
+
+	pca9450: pmic@25 {
+		compatible = "nxp,pca9450c";
+		reg = <0x25>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pmic>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
+
+		regulators {
+			BUCK1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <1000000>;
+				regulator-min-microvolt = <805000>;
+				regulator-name = "+VDD_SOC (PMIC BUCK1)";
+				regulator-ramp-delay = <3125>;
+			};
+
+			reg_vdd_arm: BUCK2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <1000000>;
+				regulator-min-microvolt = <805000>;
+				regulator-name = "+VDD_ARM (PMIC BUCK2)";
+				regulator-ramp-delay = <3125>;
+				nxp,dvs-run-voltage = <950000>;
+				nxp,dvs-standby-voltage = <850000>;
+			};
+
+			reg_3v3: BUCK4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <3300000>;
+				regulator-min-microvolt = <3300000>;
+				regulator-name = "+V3.3 (PMIC BUCK4)";
+			};
+
+			reg_1v8: BUCK5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <1800000>;
+				regulator-min-microvolt = <1800000>;
+				regulator-name = "+V1.8 (PMIC BUCK5)";
+			};
+
+			BUCK6 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <1155000>;
+				regulator-min-microvolt = <1045000>;
+				regulator-name = "+VDD_DDR (PMIC BUCK6)";
+			};
+
+			LDO1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <1950000>;
+				regulator-min-microvolt = <1710000>;
+				regulator-name = "+V1.8_SNVS (PMIC LDO1)";
+			};
+
+			LDO3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <1800000>;
+				regulator-min-microvolt = <1800000>;
+				regulator-name = "+V1.8A (PMIC LDO3)";
+			};
+
+			LDO4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-max-microvolt = <3300000>;
+				regulator-min-microvolt = <3300000>;
+				regulator-name = "+V3.3_ADC (PMIC LDO4)";
+			};
+
+			reg_sd_3v3_1v8: LDO5 {
+				regulator-max-microvolt = <3300000>;
+				regulator-min-microvolt = <1800000>;
+				regulator-name = "+V3.3_1.8_SD (PMIC LDO5)";
+			};
+		};
+	};
+
+	rtc_i2c: rtc@32 {
+		compatible = "epson,rx8130";
+		reg = <0x32>;
+	};
+
+	temperature-sensor@48 {
+		compatible = "ti,tmp1075";
+		reg = <0x48>;
+	};
+
+	eeprom@50 {
+		compatible = "st,24c02", "atmel,24c02";
+		reg = <0x50>;
+		pagesize = <16>;
+	};
+};
+
+/* SMARC I2C_LCD */
+&i2c2 {
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	pinctrl-1 = <&pinctrl_i2c2_gpio>;
+	clock-frequency = <100000>;
+	scl-gpios = <&gpio5 16 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 17 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	single-master;
+};
+
+/* SMARC I2C_CAM0 */
+&i2c3 {
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	pinctrl-1 = <&pinctrl_i2c3_gpio>;
+	clock-frequency = <400000>;
+	scl-gpios = <&gpio5 18 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 19 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	single-master;
+};
+
+/* SMARC I2C_GP */
+&i2c4 {
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c4>;
+	pinctrl-1 = <&pinctrl_i2c4_gpio>;
+	clock-frequency = <400000>;
+	scl-gpios = <&gpio5 20 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 21 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	single-master;
+	status = "okay";
+
+	eeprom@50 {
+		compatible = "st,24c32", "atmel,24c32";
+		reg = <0x50>;
+		pagesize = <32>;
+	};
+};
+
+/* SMARC I2C_CAM1 */
+&i2c5 {
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c5>;
+	pinctrl-1 = <&pinctrl_i2c5_gpio>;
+	clock-frequency = <400000>;
+	scl-gpios = <&gpio5 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	single-master;
+};
+
+/* SMARC I2C_PM */
+&i2c6 {
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c6>;
+	pinctrl-1 = <&pinctrl_i2c6_gpio>;
+	clock-frequency = <400000>;
+	scl-gpios = <&gpio3 28 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio3 20 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	single-master;
+};
+
+&mdio {
+	eqos_phy: ethernet-phy@1 {
+		reg = <1>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+		ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+	};
+
+	fec_phy: ethernet-phy@2 {
+		reg = <2>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+		ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+	};
+};
+
+/* SMARC PCIE_A */
+&pcie {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pcie>;
+	reset-gpios = <&gpio4 19 GPIO_ACTIVE_LOW>;
+};
+
+&pcie_phy {
+	clocks = <&hsio_blk_ctrl>;
+	clock-names = "ref";
+	fsl,clkreq-unsupported;
+	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_OUTPUT>;
+};
+
+/* SMARC LCD1_BKLT_PWM */
+&pwm1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lcd1_bklt_pwm1>;
+};
+
+/* SMARC LCD0_BKLT_PWM */
+&pwm2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lcd0_bklt_pwm2>;
+};
+
+/* SMARC GPIO5 as PWM */
+&pwm3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio5_pwm>;
+};
+
+&snvs_pwrkey {
+	status = "okay";
+};
+
+/* SMARC SER0 */
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	uart-has-rtscts;
+};
+
+/* SMARC SER2 */
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	uart-has-rtscts;
+};
+
+/* On-module Bluetooth, optional SMARC SER3 */
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_bt_uart>;
+	uart-has-rtscts;
+	status = "okay";
+
+	som_bt: bluetooth {
+		compatible = "mrvl,88w8997";
+		max-speed = <921600>;
+	};
+};
+
+/* SMARC SER1, used as the Linux Console */
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+};
+
+/* SMARC USB0 */
+&usb3_0 {
+	fsl,disable-port-power-control;
+};
+
+/* SMARC USB1..4 */
+&usb3_1 {
+	fsl,disable-port-power-control;
+};
+
+&usb3_phy1 {
+	vbus-supply = <&reg_usb1_vbus>;
+};
+
+&usb_dwc3_0 {
+	adp-disable;
+	dr_mode = "otg";
+	hnp-disable;
+	maximum-speed = "high-speed";
+	srp-disable;
+	usb-role-switch;
+
+	port {
+		usb3_0_dwc: endpoint {
+			remote-endpoint = <&usb_dr_connector>;
+		};
+	};
+};
+
+&usb_dwc3_1 {
+	dr_mode = "host";
+};
+
+/* On-module Wi-Fi */
+&usdhc1 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
+	keep-power-in-suspend;
+	non-removable;
+	vmmc-supply = <&reg_wifi_en>;
+	status = "okay";
+};
+
+/* SMARC SDIO */
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz", "sleep";
+	pinctrl-0 = <&pinctrl_usdhc2>,
+		    <&pinctrl_usdhc2_cd>,
+		    <&pinctrl_usdhc2_wp>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>,
+		    <&pinctrl_usdhc2_cd>,
+		    <&pinctrl_usdhc2_wp>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>,
+		    <&pinctrl_usdhc2_cd>,
+		    <&pinctrl_usdhc2_wp>;
+	pinctrl-3 = <&pinctrl_usdhc2_sleep>,
+		    <&pinctrl_usdhc2_cd_sleep>,
+		    <&pinctrl_usdhc2_wp>;
+	assigned-clocks = <&clk IMX8MP_CLK_USDHC2>;
+	assigned-clock-rates = <400000000>;
+	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	vqmmc-supply = <&reg_usdhc2_vqmmc>;
+	wp-gpios = <&gpio2 20 GPIO_ACTIVE_HIGH>;
+};
+
+/* On-module eMMC */
+&usdhc3 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	assigned-clocks = <&clk IMX8MP_CLK_USDHC3_ROOT>;
+	assigned-clock-rates = <400000000>;
+	bus-width = <8>;
+	non-removable;
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
+	/* On-module Bluetooth */
+	pinctrl_bt_uart: btuartgrp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_DATA6__UART3_DCE_TX	0x1c4>, /* WiFi_UART_TXD */
+			   <MX8MP_IOMUXC_SD1_DATA7__UART3_DCE_RX	0x1c4>, /* WiFi_UART_RXD */
+			   <MX8MP_IOMUXC_SD1_STROBE__UART3_DCE_CTS	0x1c4>, /* WiFi_UART_RTS */
+			   <MX8MP_IOMUXC_SD1_RESET_B__UART3_DCE_RTS	0x1c4>; /* WiFi_UART_CTS */
+	};
+
+	/* SMARC CAM_MCK */
+	pinctrl_csi_mclk: csimclkgrp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO15__CCM_CLKO2	0x16>; /* SMARC S6 - CAM_MCK  */
+	};
+
+	/* SMARC SPI0 */
+	pinctrl_ecspi1: ecspi1grp {
+		fsl,pins = <MX8MP_IOMUXC_ECSPI1_MISO__ECSPI1_MISO	0x1c4>, /* SMARC P45 - SPI0_DIN */
+			   <MX8MP_IOMUXC_ECSPI1_MOSI__ECSPI1_MOSI	0x4>,   /* SMARC P46 - SPI0_DO */
+			   <MX8MP_IOMUXC_ECSPI1_SCLK__ECSPI1_SCLK	0x4>,   /* SMARC P44 - SPI0_CK */
+			   <MX8MP_IOMUXC_ECSPI1_SS0__GPIO5_IO09		0x1c4>, /* SMARC P43 - SPI0_CS0# */
+			   <MX8MP_IOMUXC_SAI3_RXFS__GPIO4_IO28		0x1c4>; /* SMARC P31 - SPI0_CS1# */
+	};
+
+	/* SMARC SPI1 */
+	pinctrl_ecspi2: ecspi2grp {
+		fsl,pins = <MX8MP_IOMUXC_ECSPI2_MISO__ECSPI2_MISO	0x1c4>, /* SMARC P56 - SPI1_DIN */
+			   <MX8MP_IOMUXC_ECSPI2_MOSI__ECSPI2_MOSI	0x4>,   /* SMARC P57 - SPI1_DO */
+			   <MX8MP_IOMUXC_ECSPI2_SCLK__ECSPI2_SCLK	0x4>,   /* SMARC P58 - SPI1_CK */
+			   <MX8MP_IOMUXC_ECSPI2_SS0__GPIO5_IO13		0x1c4>, /* SMARC P54 - SPI1_CS0# */
+			   <MX8MP_IOMUXC_SAI1_RXD1__GPIO4_IO03		0x1c4>; /* SMARC P55 - SPI1_CS1# */
+	};
+
+	/* ETH_0 RGMII (On-module PHY) */
+	pinctrl_eqos: eqosgrp {
+		fsl,pins = <MX8MP_IOMUXC_ENET_RD0__ENET_QOS_RGMII_RD0			0x90>, /* ETH0_RGMII_RXD0 */
+			   <MX8MP_IOMUXC_ENET_RD1__ENET_QOS_RGMII_RD1			0x90>, /* ETH0_RGMII_RXD1 */
+			   <MX8MP_IOMUXC_ENET_RD2__ENET_QOS_RGMII_RD2			0x90>, /* ETH0_RGMII_RXD2 */
+			   <MX8MP_IOMUXC_ENET_RD3__ENET_QOS_RGMII_RD3			0x90>, /* ETH0_RGMII_RXD3 */
+			   <MX8MP_IOMUXC_ENET_RXC__CCM_ENET_QOS_CLOCK_GENERATE_RX_CLK	0x90>, /* ETH0_RGMII_RXC */
+			   <MX8MP_IOMUXC_ENET_RX_CTL__ENET_QOS_RGMII_RX_CTL		0x90>, /* ETH0_RGMII_RX_CTL */
+			   <MX8MP_IOMUXC_ENET_TD0__ENET_QOS_RGMII_TD0			0x16>, /* ETH0_RGMII_TXD0 */
+			   <MX8MP_IOMUXC_ENET_TD1__ENET_QOS_RGMII_TD1			0x16>, /* ETH0_RGMII_TXD1 */
+			   <MX8MP_IOMUXC_ENET_TD2__ENET_QOS_RGMII_TD2			0x16>, /* ETH0_RGMII_TXD2 */
+			   <MX8MP_IOMUXC_ENET_TD3__ENET_QOS_RGMII_TD3			0x16>, /* ETH0_RGMII_TXD3 */
+			   <MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL		0x16>, /* ETH0_RGMII_TX_CTL */
+			   <MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK	0x16>; /* ETH0_RGMII_TXC */
+	};
+
+	/* SMARC GBE0_SDP */
+	pinctrl_eqos_1588_event: eqos1588eventgrp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO09__ENET_QOS_1588_EVENT0_OUT	0x4>; /* SMARC P6 - GBE0_SDP */
+	};
+
+	/* ETH_0_MDIO and ETH_0_INT# shared between ETH_PHY0 and ETH_PHY1 */
+	pinctrl_eth_mdio: ethmdiogrp {
+		fsl,pins = <MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC		0x2>,  /* ETH_0_MDC */
+			   <MX8MP_IOMUXC_ENET_MDIO__ENET_QOS_MDIO	0x2>,  /* ETH_0_MDIO */
+			   <MX8MP_IOMUXC_NAND_ALE__GPIO3_IO00		0x80>; /* ETH_0_INT# */
+	};
+
+	/* ETH_1 RGMII (On-module PHY) */
+	pinctrl_fec: fecgrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_RXD4__ENET1_RGMII_RD0	0x90>, /* ETH1_RGMII_RXD0 */
+			   <MX8MP_IOMUXC_SAI1_RXD5__ENET1_RGMII_RD1	0x90>, /* ETH1_RGMII_RXD1 */
+			   <MX8MP_IOMUXC_SAI1_RXD6__ENET1_RGMII_RD2	0x90>, /* ETH1_RGMII_RXD2 */
+			   <MX8MP_IOMUXC_SAI1_RXD7__ENET1_RGMII_RD3	0x90>, /* ETH1_RGMII_RXD3 */
+			   <MX8MP_IOMUXC_SAI1_TXC__ENET1_RGMII_RXC	0x90>, /* ETH1_RGMII_RXC */
+			   <MX8MP_IOMUXC_SAI1_TXFS__ENET1_RGMII_RX_CTL	0x90>, /* ETH1_RGMII_RX_CTL */
+			   <MX8MP_IOMUXC_SAI1_TXD0__ENET1_RGMII_TD0	0x16>, /* ETH1_RGMII_TXD0 */
+			   <MX8MP_IOMUXC_SAI1_TXD1__ENET1_RGMII_TD1	0x16>, /* ETH1_RGMII_TXD1 */
+			   <MX8MP_IOMUXC_SAI1_TXD2__ENET1_RGMII_TD2	0x16>, /* ETH1_RGMII_TXD2 */
+			   <MX8MP_IOMUXC_SAI1_TXD3__ENET1_RGMII_TD3	0x16>, /* ETH1_RGMII_TXD3 */
+			   <MX8MP_IOMUXC_SAI1_TXD4__ENET1_RGMII_TX_CTL	0x16>, /* ETH1_RGMII_TX_CTL */
+			   <MX8MP_IOMUXC_SAI1_TXD5__ENET1_RGMII_TXC	0x16>; /* ETH1_RGMII_TXC */
+	};
+
+	/* SMARC GBE1_SDP */
+	pinctrl_fec_1588_event: fec1588eventgrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_RXC__ENET1_1588_EVENT0_OUT	0x4>; /* SMARC P5 - GBE1_SDP */
+	};
+
+	/* SMARC CAN1 */
+	pinctrl_flexcan1: flexcan1grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI2_TXC__CAN1_RX	0x154>, /* SMARC P146 - CAN1_RX */
+			   <MX8MP_IOMUXC_SAI2_RXC__CAN1_TX	0x154>; /* SMARC P145 - CAN1_TX */
+	};
+
+	/* SMARC CAN0 */
+	pinctrl_flexcan2: flexcan2grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI2_MCLK__CAN2_RX	0x154>, /* SMARC P144 - CAN0_RX */
+			   <MX8MP_IOMUXC_SAI2_TXD0__CAN2_TX	0x154>; /* SMARC P143 - CAN0_TX */
+	};
+
+	/* SMARC GPIO4 */
+	pinctrl_gpio4: gpio4grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_TXD6__GPIO4_IO18	0x144>; /* SMARC P112 - GPIO4 */
+	};
+
+	/* SMARC GPIO5 */
+	pinctrl_gpio5: gpio5grp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO10__GPIO1_IO10	0x144>; /* SMARC P113 - GPIO5 */
+	};
+
+	/* SMARC GPIO5 as PWM */
+	pinctrl_gpio5_pwm: gpio5pwmgrp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO10__PWM3_OUT	0x12>; /* SMARC P113 - PWM_OUT */
+	};
+
+	/* SMARC GPIO6 */
+	pinctrl_gpio6: gpio6grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI3_RXC__GPIO4_IO29	0x144>; /* SMARC P114 - GPIO6 */
+	};
+
+	/* SMARC GPIO7 */
+	pinctrl_gpio7: gpio7grp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO00__GPIO1_IO00	0x144>; /* SMARC P115 - GPIO7 */
+	};
+
+	/* SMARC GPIO8 */
+	pinctrl_gpio8: gpio8grp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO01__GPIO1_IO01	0x144>; /* SMARC P116 - GPIO8 */
+	};
+
+	/* SMARC GPIO9 */
+	pinctrl_gpio9: gpio9grp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO05__GPIO1_IO05	0x144>; /* SMARC P117 - GPIO9 */
+	};
+
+	/* SMARC GPIO10 */
+	pinctrl_gpio10: gpio10grp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO06__GPIO1_IO06	0x144>; /* SMARC P118 - GPIO10 */
+	};
+
+	/* SMARC GPIO11 */
+	pinctrl_gpio11: gpio11grp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO07__GPIO1_IO07	0x144>; /* SMARC P119 - GPIO11 */
+	};
+
+	/* SMARC GPIO12 */
+	pinctrl_gpio12: gpio12grp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO08__GPIO1_IO08	0x144>; /* SMARC S142 - GPIO12 */
+	};
+
+	/* SMARC GPIO13 */
+	pinctrl_gpio13: gpio13grp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO13__GPIO1_IO13	0x144>; /* SMARC S123 - GPIO13 */
+	};
+
+	/* SMARC HDMI */
+	pinctrl_hdmi: hdmigrp {
+		fsl,pins = <MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL	0x400001c6>, /* SMARC P105 - HDMI_CTRL_CK */
+			   <MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA	0x400001c6>, /* SMARC P106 - HDMI_CTRL_DAT */
+			   <MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD	0x180>;      /* SMARC P104 - HDMI_HPD */
+	};
+
+	/* On-module I2C */
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL	0x400001c6>, /* CTRL_I2C_SCL */
+			   <MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA	0x400001c6>; /* CTRL_I2C_SDA */
+	};
+
+	/* On-module I2C as GPIOs */
+	pinctrl_i2c1_gpio: i2c1gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_I2C1_SCL__GPIO5_IO14	0x400001c6>, /* CTRL_I2C_SCL */
+			   <MX8MP_IOMUXC_I2C1_SDA__GPIO5_IO15	0x400001c6>; /* CTRL_I2C_SDA */
+	};
+
+	/* SMARC I2C_LCD */
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL	0x400001c6>, /* SMARC S139 - I2C_LCD_CK */
+			   <MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA	0x400001c6>; /* SMARC S140 - I2C_LCD_DAT */
+	};
+
+	/* SMARC I2C_LCD as GPIOs */
+	pinctrl_i2c2_gpio: i2c2gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_I2C2_SCL__GPIO5_IO16	0x400001c6>, /* SMARC S139 - I2C_LCD_CK */
+			   <MX8MP_IOMUXC_I2C2_SDA__GPIO5_IO17	0x400001c6>; /* SMARC S140 - I2C_LCD_DAT */
+	};
+
+	/* SMARC I2C_CAM0 */
+	pinctrl_i2c3: i2c3grp {
+		fsl,pins = <MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL	0x400001c6>, /* SMARC S5 - I2C_CAM0_CK */
+			   <MX8MP_IOMUXC_I2C3_SDA__I2C3_SDA	0x400001c6>; /* SMARC S7 - I2C_CAM0_DAT */
+	};
+
+	/* SMARC I2C_CAM0 as GPIOs */
+	pinctrl_i2c3_gpio: i2c3gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_I2C3_SCL__GPIO5_IO18	0x400001c6>, /* SMARC S5 - I2C_CAM0_CK */
+			   <MX8MP_IOMUXC_I2C3_SDA__GPIO5_IO19	0x400001c6>; /* SMARC S7 - I2C_CAM0_DAT */
+	};
+
+	/* SMARC I2C_GP */
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <MX8MP_IOMUXC_I2C4_SCL__I2C4_SCL	0x400001c6>, /* SMARC S48 - I2C_GP_CK */
+			   <MX8MP_IOMUXC_I2C4_SDA__I2C4_SDA	0x400001c6>; /* SMARC S49 - I2C_GP_DAT */
+	};
+
+	/* SMARC I2C_GP as GPIOs */
+	pinctrl_i2c4_gpio: i2c4gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_I2C4_SCL__GPIO5_IO20	0x400001c6>, /* SMARC S48 - I2C_GP_CK */
+			   <MX8MP_IOMUXC_I2C4_SDA__GPIO5_IO21	0x400001c6>; /* SMARC S49 - I2C_GP_DAT */
+	};
+
+	/* SMARC I2C_CAM1 */
+	pinctrl_i2c5: i2c5grp {
+		fsl,pins = <MX8MP_IOMUXC_SPDIF_RX__I2C5_SDA	0x400001c6>, /* SMARC S2 - I2C_CAM1_DAT  */
+			   <MX8MP_IOMUXC_SPDIF_TX__I2C5_SCL	0x400001c6>; /* SMARC S1 - I2C_CAM1_CK  */
+	};
+
+	/* SMARC I2C_CAM1 as GPIOs */
+	pinctrl_i2c5_gpio: i2c5gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_SPDIF_RX__GPIO5_IO04	0x400001c6>, /* SMARC S2 - I2C_CAM1_DAT  */
+			   <MX8MP_IOMUXC_SPDIF_TX__GPIO5_IO03	0x400001c6>; /* SMARC S1 - I2C_CAM1_CK  */
+	};
+
+	/* SMARC I2C_PM */
+	pinctrl_i2c6: i2c6grp {
+		fsl,pins = <MX8MP_IOMUXC_HDMI_CEC__I2C6_SCL	0x400001c6>, /* SMARC P121 - I2C_PM_CK */
+			   <MX8MP_IOMUXC_SAI5_RXC__I2C6_SDA	0x400001c6>; /* SMARC P122 - I2C_PM_DAT */
+	};
+
+	/* SMARC I2C_PM as GPIOs */
+	pinctrl_i2c6_gpio: i2c6gpiogrp {
+		fsl,pins = <MX8MP_IOMUXC_HDMI_CEC__GPIO3_IO28	0x400001c6>, /* SMARC P121 - I2C_PM_CK */
+			   <MX8MP_IOMUXC_SAI5_RXC__GPIO3_IO20	0x400001c6>; /* SMARC P122 - I2C_PM_DAT */
+	};
+
+	pinctrl_lvds_dsi_sel: lvdsdsiselgrp {
+		fsl,pins = <MX8MP_IOMUXC_NAND_DATA01__GPIO3_IO07	0x104>; /* LVDS_DSI_SEL */
+	};
+
+	pinctrl_mcu_int: mcuintgrp {
+		fsl,pins = <MX8MP_IOMUXC_NAND_DATA02__GPIO3_IO08	0x1C0>; /* MCU_INT# */
+	};
+
+	/* SMARC LCD1_BKLT_PWM */
+	pinctrl_lcd1_bklt_pwm1: pwm1grp {
+		fsl,pins = <MX8MP_IOMUXC_SPDIF_EXT_CLK__PWM1_OUT	0x12>; /* SMARC S122 - LCD1_BKLT_PWM */
+	};
+
+	/* SMARC LCD0_BKLT_PWM */
+	pinctrl_lcd0_bklt_pwm2: pwm2grp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO11__PWM2_OUT	0x12>; /* SMARC S141 - LCD0_BKLT_PWM */
+	};
+
+	/* PCAL6408 Interrupt */
+	pinctrl_pcal6408: pcal6408intgrp {
+		fsl,pins = <MX8MP_IOMUXC_NAND_DATA03__GPIO3_IO09	0x1c4>; /* GPIO_EX_INT# */
+	};
+
+	/* SMARC PCIE_A */
+	pinctrl_pcie: pciegrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_RXFS__GPIO4_IO00	0x1c0>, /* SMARC S146 - PCIE_WAKE# */
+			   <MX8MP_IOMUXC_SAI1_TXD7__GPIO4_IO19	0x04>;  /* SMARC P75 - PCIE_A_RST# */
+	};
+
+	/* PMIC Interrupt */
+	pinctrl_pmic: pmicintgrp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03	0x1c4>; /* PMIC_INT# */
+	};
+
+	/* SMARC I2S0 */
+	pinctrl_sai1: sai1grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI5_MCLK__AUDIOMIX_SAI1_TX_BCLK	0x94>, /* SMARC S42 - I2S0_CK */
+			   <MX8MP_IOMUXC_SAI5_RXD1__AUDIOMIX_SAI1_TX_SYNC	0x94>, /* SMARC S39 - I2S0_LRCLK */
+			   <MX8MP_IOMUXC_SAI1_RXD0__AUDIOMIX_SAI1_RX_DATA00	0x94>, /* SMARC S41 - I2S0_SDIN */
+			   <MX8MP_IOMUXC_SAI5_RXFS__AUDIOMIX_SAI1_TX_DATA00	0x94>; /* SMARC S40 - I2S0_SDOUT */
+	};
+
+	/* SMARC AUDIO_MCK */
+	pinctrl_sai1_mclk: sai1mclkgrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_MCLK__AUDIOMIX_SAI1_MCLK	0x96>; /* SMARC S38 - AUDIO_MCK */
+	};
+
+	/* SMARC I2S2 */
+	pinctrl_sai3: sai3grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI3_RXD__AUDIOMIX_SAI3_RX_DATA00	0x94>, /* SMARC S52 - I2S2_SDIN */
+			   <MX8MP_IOMUXC_SAI3_TXC__AUDIOMIX_SAI3_TX_BCLK	0x94>, /* SMARC S53 - I2S2_CK */
+			   <MX8MP_IOMUXC_SAI3_TXD__AUDIOMIX_SAI3_TX_DATA00	0x94>, /* SMARC S51 - I2S2_SDOUT */
+			   <MX8MP_IOMUXC_SAI3_TXFS__AUDIOMIX_SAI3_TX_SYNC	0x94>; /* SMARC S50 - I2S2_LRCLK */
+	};
+
+	/* SMARC SLEEP# */
+	pinctrl_sleep: sleepgrp {
+		fsl,pins = <MX8MP_IOMUXC_NAND_CE0_B__GPIO3_IO01	0x1C0>; /* SMARC S149 - SLEEP# */
+	};
+
+	/* SMARC SMB_ALERT# */
+	pinctrl_smb_alert: smbalertgrp {
+		fsl,pins = <MX8MP_IOMUXC_NAND_READY_B__GPIO3_IO16	0x1C0>; /* SMARC P1 - SMB_ALERT# */
+	};
+
+	/* TPM_CS# */
+	pinctrl_tpm_cs: tpmcsgrp {
+		fsl,pins = <MX8MP_IOMUXC_NAND_DATA00__GPIO3_IO06	0x82>; /* TPM_CS# */
+	};
+
+	/* WIFI_BT_WKUP_HOST/TPM_INT# */
+	pinctrl_tpm_irq_wifi_bt_wkup: tpmirq-wifibtwkupgrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI1_RXD2__GPIO4_IO04	0x16>; /* WIFI_BT_WKUP_HOST/TPM_INT# */
+	};
+
+	/* SMARC SER0 */
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <MX8MP_IOMUXC_SAI2_RXD0__UART1_DCE_RTS	0x1c4>, /* SMARC P132 - SER2_CTS */
+			   <MX8MP_IOMUXC_SAI2_TXFS__UART1_DCE_CTS	0x1c4>, /* SMARC P131 - SER2_RTS */
+			   <MX8MP_IOMUXC_UART1_RXD__UART1_DCE_RX	0x1c4>, /* SMARC P130 - SER2_RX */
+			   <MX8MP_IOMUXC_UART1_TXD__UART1_DCE_TX	0x1c4>; /* SMARC P139 - SER2_TX */
+	};
+
+	/* SMARC SER2 */
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_DATA4__UART2_DCE_RTS	0x1c4>, /* SMARC P139 - SER2_CTS */
+			   <MX8MP_IOMUXC_SD1_DATA5__UART2_DCE_CTS	0x1c4>, /* SMARC P138 - SER2_RTS */
+			   <MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX	0x1c4>, /* SMARC P137 - SER2_RX */
+			   <MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX	0x1c4>; /* SMARC P136 - SER2_TX */
+	};
+
+	/* SMARC SER3 */
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <MX8MP_IOMUXC_UART3_RXD__UART3_DCE_RX	0x1c4>, /* SMARC P141 - SER3_RX */
+			   <MX8MP_IOMUXC_UART3_TXD__UART3_DCE_TX	0x1c4>; /* SMARC P140 - SER3_TX */
+	};
+
+	/* SMARC SER1 */
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <MX8MP_IOMUXC_UART4_RXD__UART4_DCE_RX	0x1c4>, /* SMARC P135 - SER1_RX */
+			   <MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX	0x1c4>; /* SMARC P134 - SER1_TX */
+	};
+
+	/* SMARC USB0_OTG_ID */
+	pinctrl_usb0_id: usb0idgrp {
+		fsl,pins = <MX8MP_IOMUXC_SAI3_MCLK__GPIO5_IO02	0x1c4>; /* SMARC P64 - USB0_OTG_ID */
+	};
+
+	/* SMARC USB0_EN_OC# */
+	pinctrl_usb0_en_oc: usb0enocgrp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO12__GPIO1_IO12	0x04>; /* SMARC P62 - USB0_EN_OC# */
+	};
+
+	/* On module USB Hub VBUS, or SMARC USB2_EN_OC# depending on assembling */
+	pinctrl_usb1_en_oc: usb1enocgrp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO14__GPIO1_IO14	0x04>; /* SMARC P71 - USB2_EN_OC# */
+	};
+
+	/* On-module Wi-Fi */
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_CLK__USDHC1_CLK		0x190>, /* WiFi_SDIO_CLK */
+			   <MX8MP_IOMUXC_SD1_CMD__USDHC1_CMD		0x1d0>, /* WiFi_SDIO_CMD */
+			   <MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0	0x1d0>, /* WiFi_SDIO_DATA0 */
+			   <MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1	0x1d0>, /* WiFi_SDIO_DATA1 */
+			   <MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2	0x1d0>, /* WiFi_SDIO_DATA2 */
+			   <MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3	0x1d0>; /* WiFi_SDIO_DATA3 */
+	};
+
+	/* On-module Wi-Fi */
+	pinctrl_usdhc1_100mhz: usdhc1-100mhzgrp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_CLK__USDHC1_CLK		0x194>, /* WiFi_SDIO_CLK */
+			   <MX8MP_IOMUXC_SD1_CMD__USDHC1_CMD		0x1d4>, /* WiFi_SDIO_CMD */
+			   <MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0	0x1d4>, /* WiFi_SDIO_DATA0 */
+			   <MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1	0x1d4>, /* WiFi_SDIO_DATA1 */
+			   <MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2	0x1d4>, /* WiFi_SDIO_DATA2 */
+			   <MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3	0x1d4>; /* WiFi_SDIO_DATA3 */
+	};
+
+	/* On-module Wi-Fi */
+	pinctrl_usdhc1_200mhz: usdhc1-200mhzgrp {
+		fsl,pins = <MX8MP_IOMUXC_SD1_CLK__USDHC1_CLK		0x196>, /* WiFi_SDIO_CLK */
+			   <MX8MP_IOMUXC_SD1_CMD__USDHC1_CMD		0x1d6>, /* WiFi_SDIO_CMD */
+			   <MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0	0x1d6>, /* WiFi_SDIO_DATA0 */
+			   <MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1	0x1d6>, /* WiFi_SDIO_DATA1 */
+			   <MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2	0x1d6>, /* WiFi_SDIO_DATA2 */
+			   <MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3	0x1d6>; /* WiFi_SDIO_DATA3 */
+	};
+
+	/* SMARC SDIO */
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x190>, /* SMARC P36 - SDIO_CK */
+			   <MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d0>, /* SMARC P34 - SDIO_CMD */
+			   <MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d0>, /* SMARC P39 - SDIO_DO */
+			   <MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d0>, /* SMARC P40 - SDIO_D1 */
+			   <MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d0>, /* SMARC P41 - SDIO_D2 */
+			   <MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d0>; /* SMARC P42 - SDIO_D3 */
+	};
+
+	/* SMARC SDIO 100MHz */
+	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x194>, /* SMARC P36 - SDIO_CK */
+			   <MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d4>, /* SMARC P34 - SDIO_CMD */
+			   <MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d4>, /* SMARC P39 - SDIO_DO */
+			   <MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d4>, /* SMARC P40 - SDIO_D1 */
+			   <MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d4>, /* SMARC P41 - SDIO_D2 */
+			   <MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d4>; /* SMARC P42 - SDIO_D3 */
+	};
+
+	/* SMARC SDIO 200MHz */
+	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x196>, /* SMARC P36 - SDIO_CK */
+			   <MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d6>, /* SMARC P34 - SDIO_CMD */
+			   <MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d6>, /* SMARC P39 - SDIO_DO */
+			   <MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d6>, /* SMARC P40 - SDIO_D1 */
+			   <MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d6>, /* SMARC P41 - SDIO_D2 */
+			   <MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d6>; /* SMARC P42 - SDIO_D3 */
+	};
+
+	/* SMARC SDIO_CD# */
+	pinctrl_usdhc2_cd: usdhc2cdgrp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12	0x1c4>; /* SMARC P35 - SDIO_CD# */
+	};
+
+	/* SMARC SDIO_CD# */
+	pinctrl_usdhc2_cd_sleep: usdhc2cdslpgrp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12	0x0>; /* SMARC P35 - SDIO_CD# */
+	};
+
+	/* SMARC SDIO_PWR_EN */
+	pinctrl_usdhc2_pwr_en: usdhc2pwrengrp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19	0x1c4>; /* SMARC P37 - SDIO_PWR_EN */
+	};
+
+	/* SMARC SDIO Sleep - Avoid backfeeding with removed card power */
+	pinctrl_usdhc2_sleep: usdhc2slpgrp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x100>, /* SMARC P36 - SDIO_CK */
+			   <MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x100>, /* SMARC P34 - SDIO_CMD */
+			   <MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x100>, /* SMARC P39 - SDIO_DO */
+			   <MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x100>, /* SMARC P39 - SDIO_D1 */
+			   <MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x100>, /* SMARC P39 - SDIO_D2 */
+			   <MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x100>; /* SMARC P39 - SDIO_D3 */
+	};
+
+	pinctrl_usdhc2_vsel: usdhc2vselgrp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO04__GPIO1_IO04	0x4>; /* PMIC_USDHC_VSELECT */
+	};
+
+	/* SMARC SDIO_WP */
+	pinctrl_usdhc2_wp: usdhc2wpgrp {
+		fsl,pins = <MX8MP_IOMUXC_SD2_WP__GPIO2_IO20	0x144>; /* SMARC P33 - SDIO_WP */
+	};
+
+	/* On-module eMMC */
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x190>, /* eMMC_STROBE */
+			   <MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d0>, /* eMMC_DATA5 */
+			   <MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d0>, /* eMMC_DATA6 */
+			   <MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7		0x1d0>, /* eMMC_DATA7 */
+			   <MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d0>, /* eMMC_DATA0 */
+			   <MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d0>, /* eMMC_DATA1 */
+			   <MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d0>, /* eMMC_DATA2 */
+			   <MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d0>, /* eMMC_DATA3 */
+			   <MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d0>, /* eMMC_DATA4 */
+			   <MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK		0x190>, /* eMMC_CLK */
+			   <MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD		0x1d0>; /* eMMC_CMD */
+	};
+
+	/* On-module eMMC */
+	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
+		fsl,pins = <MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x194>, /* eMMC_STROBE */
+			   <MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d4>, /* eMMC_DATA5 */
+			   <MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d4>, /* eMMC_DATA6 */
+			   <MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7		0x1d4>, /* eMMC_DATA7 */
+			   <MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d4>, /* eMMC_DATA0 */
+			   <MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d4>, /* eMMC_DATA1 */
+			   <MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d4>, /* eMMC_DATA2 */
+			   <MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d4>, /* eMMC_DATA3 */
+			   <MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d4>, /* eMMC_DATA4 */
+			   <MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK		0x194>, /* eMMC_CLK */
+			   <MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD		0x1d4>; /* eMMC_CMD */
+	};
+
+	/* On-module eMMC */
+	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
+		fsl,pins = <MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x196>, /* eMMC_STROBE */
+			   <MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d2>, /* eMMC_DATA5 */
+			   <MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d2>, /* eMMC_DATA6 */
+			   <MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7		0x1d2>, /* eMMC_DATA7 */
+			   <MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d2>, /* eMMC_DATA0 */
+			   <MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d2>, /* eMMC_DATA1 */
+			   <MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d2>, /* eMMC_DATA2 */
+			   <MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d2>, /* eMMC_DATA3 */
+			   <MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d2>, /* eMMC_DATA4 */
+			   <MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK		0x196>, /* eMMC_CLK */
+			   <MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD		0x1d6>; /* eMMC_CMD */
+	};
+
+	/* SoC Watchdog */
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B	0x4>; /* CTRL_SOC_WDOG */
+	};
+
+	/* On-module Wi-Fi power enable */
+	pinctrl_wifi_pwr_en: wifipwrengrp {
+		fsl,pins = <MX8MP_IOMUXC_NAND_DQS__GPIO3_IO14	0x104>; /* CTRL_EN_WIFI */
+	};
+};
-- 
2.34.1


