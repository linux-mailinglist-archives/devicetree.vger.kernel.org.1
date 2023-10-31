Return-Path: <devicetree+bounces-13312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4279C7DD749
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 21:47:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65AEA1C20D06
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 20:47:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 193D2249E8;
	Tue, 31 Oct 2023 20:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fris.de header.i=@fris.de header.b="eYaO5W5n"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A4A79F8
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 20:47:17 +0000 (UTC)
Received: from mail.fris.de (unknown [IPv6:2a01:4f8:c2c:390b::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 596DB103;
	Tue, 31 Oct 2023 13:47:11 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D8C28C0474;
	Tue, 31 Oct 2023 21:39:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=dkim;
	t=1698784751; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=Flgke/GQ87WNrIFxHKsXWu8sUL1eGXWKBRWwAn/HzMI=;
	b=eYaO5W5nWyOpptNh5HKB4F6Nh5zYheGzf+jeqlE0nZeSz6sP90LVmk1eUKltQtnTchVzQi
	BDFSR6wLo/YN3CoP4xkyprOwbU6CdCYx9/OGUF56ACYzIznxyL5szdoR9/slmdltJVcSH2
	M3SMSc6pQBehEVVDLPBgqIw9WCcJh26w6nt3dmXUmUXMPgRasOuP9xBu6WJznCTy6EpOm1
	4nEjxfdquo5P/btuI3Y+54GixW3/oBjh60ZybRDM93FVcdI3q0hsE5xH1a63gThRDiLrcL
	ydFvnD4VhqLLqG7s5AIFZ3YMqPfhXUFos49e/qLNqq05R6SBpAwM78NKe41YKw==
From: Frieder Schrempf <frieder@fris.de>
To: Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Frieder Schrempf <frieder.schrempf@kontron.de>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Fabio Estevam <festevam@gmail.com>,
	Gregor Herburger <gregor.herburger@ew.tq-group.com>,
	Marcel Ziswiler <marcel.ziswiler@toradex.com>,
	Marek Vasut <marex@denx.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Philippe Schenker <philippe.schenker@toradex.com>,
	Tim Harvey <tharvey@gateworks.com>
Subject: [PATCH 02/14] arm64: dts: imx8mm-kontron: Add DL (Display-Line) overlay with LVDS support
Date: Tue, 31 Oct 2023 21:37:39 +0100
Message-ID: <20231031203836.3888404-3-frieder@fris.de>
In-Reply-To: <20231031203836.3888404-1-frieder@fris.de>
References: <20231031203836.3888404-1-frieder@fris.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

From: Frieder Schrempf <frieder.schrempf@kontron.de>

The Kontron Electronics DL i.MX8MM consists of the BL i.MX8MM board
and a 7" LVDS panel. Provide an overlay that enables the panel.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
---
 arch/arm64/boot/dts/freescale/Makefile        |   4 +
 .../boot/dts/freescale/imx8mm-kontron-dl.dtso | 197 ++++++++++++++++++
 2 files changed, 201 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-kontron-dl.dtso

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 300049037eb0b..e08024797721a 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -166,6 +166,10 @@ dtb-$(CONFIG_ARCH_MXC) += imx8ulp-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-11x11-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-tqma9352-mba93xxla.dtb
 
+imx8mm-kontron-dl-dtbs			:= imx8mm-kontron-bl.dtb imx8mm-kontron-dl.dtbo
+
+dtb-$(CONFIG_ARCH_MXC) += imx8mm-kontron-dl.dtb
+
 imx8mm-venice-gw72xx-0x-imx219-dtbs	:= imx8mm-venice-gw72xx-0x.dtb imx8mm-venice-gw72xx-0x-imx219.dtbo
 imx8mm-venice-gw72xx-0x-rpidsi-dtbs	:= imx8mm-venice-gw72xx-0x.dtb imx8mm-venice-gw72xx-0x-rpidsi.dtbo
 imx8mm-venice-gw72xx-0x-rs232-rts-dtbs	:= imx8mm-venice-gw72xx-0x.dtb imx8mm-venice-gw72xx-0x-rs232-rts.dtbo
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-kontron-dl.dtso b/arch/arm64/boot/dts/freescale/imx8mm-kontron-dl.dtso
new file mode 100644
index 0000000000000..b45c30a68de42
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-kontron-dl.dtso
@@ -0,0 +1,197 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2023 Kontron Electronics GmbH
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include "imx8mm-pinfunc.h"
+
+&{/} {
+	compatible = "kontron,imx8mm-bl", "kontron,imx8mm-sl", "fsl,imx8mm";
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm1 0 50000 0>;
+		brightness-levels = <0 100>;
+		num-interpolated-steps = <100>;
+		default-brightness-level = <100>;
+	};
+
+	panel {
+		compatible = "panel-lvds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_panel>;
+		backlight = <&backlight>;
+		data-mapping = "vesa-24";
+		enable-gpios = <&gpio3 19 GPIO_ACTIVE_HIGH>;
+		height-mm = <86>;
+		width-mm = <154>;
+
+		panel-timing {
+			clock-frequency = <51200000>;
+			hactive = <1024>;
+			vactive = <600>;
+			hsync-len = <1>;
+			hfront-porch = <160>;
+			hback-porch = <160>;
+			vsync-len = <1>;
+			vfront-porch = <12>;
+			vback-porch = <23>;
+		};
+
+		port {
+			panel_out_bridge: endpoint {
+				remote-endpoint = <&bridge_out_panel>;
+			};
+		};
+	};
+};
+
+&dsi_mux_sel {
+	/delete-property/ output-high;
+	output-low;
+};
+
+&dsi_out_bridge {
+	remote-endpoint = <&bridge_in_dsi_lvds>;
+};
+
+&gpio3 {
+	panel_rst {
+		gpio-hog;
+		gpios = <20 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "panel-reset";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_panel_rst>;
+	};
+
+	panel_stby {
+		gpio-hog;
+		gpios = <21 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "panel-standby";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_panel_stby>;
+	};
+
+	panel_hinv {
+		gpio-hog;
+		gpios = <24 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "panel-horizontal-invert";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_panel_hinv>;
+	};
+
+	panel_vinv {
+		gpio-hog;
+		gpios = <25 GPIO_ACTIVE_HIGH>;
+		output-low;
+		line-name = "panel-vertical-invert";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_panel_vinv>;
+	};
+};
+
+&hdmi {
+	status = "disabled";
+};
+
+&i2c2 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	gt911@5d {
+		compatible = "goodix,gt928";
+		reg = <0x5d>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_touch>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <22 8>;
+		reset-gpios = <&gpio3 23 0>;
+		irq-gpios = <&gpio3 22 0>;
+	};
+};
+
+&lvds {
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@2 {
+			reg = <2>;
+			bridge_out_panel: endpoint {
+				remote-endpoint = <&panel_out_bridge>;
+			};
+		};
+	};
+};
+
+&pwm1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm1>;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_panel_rst: panelrstgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SAI5_RXC_GPIO3_IO20		0x19
+		>;
+	};
+
+	pinctrl_panel_stby: panelstbygrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SAI5_RXD0_GPIO3_IO21		0x19
+		>;
+	};
+
+	pinctrl_panel_hinv: panelhinvgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SAI5_RXD3_GPIO3_IO24		0x19
+		>;
+	};
+
+	pinctrl_panel_vinv: panelvinvgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SAI5_MCLK_GPIO3_IO25		0x19
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_I2C2_SCL_I2C2_SCL			0x40000083
+			MX8MM_IOMUXC_I2C2_SDA_I2C2_SDA			0x40000083
+		>;
+	};
+
+	pinctrl_pwm1: pwm1grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SPDIF_EXT_CLK_PWM1_OUT		0x6
+		>;
+	};
+
+	pinctrl_panel: panelgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SAI5_RXFS_GPIO3_IO19		0x19
+		>;
+	};
+
+	pinctrl_touch: touchgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SAI5_RXD1_GPIO3_IO22		0x19
+			MX8MM_IOMUXC_SAI5_RXD2_GPIO3_IO23		0x19
+		>;
+	};
+};
-- 
2.42.0


