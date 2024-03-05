Return-Path: <devicetree+bounces-48256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDCE8711E2
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 01:42:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6B542833CE
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 00:42:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBB084C96;
	Tue,  5 Mar 2024 00:42:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="ePlwsm6k"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120B046B5
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 00:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709599352; cv=none; b=S9xCwlAVUHhF6cwZU8VjdvzCLYSUthd4Bl2UZQTSgg+Hm/yf06OJPnqAtJi3DQ55AA3480SJcFST0Q+7HsKgpw28Wr/kFuOl1zOSmLBhBcMOanKK5UyPmUKqpuwjdLcwCDtKdCWA19/5UvUGeSmuJCa9+O83wPS6WJWLuxAZRs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709599352; c=relaxed/simple;
	bh=wVXIGbNIzcQQwvvYo0cYgV8D+lPD9fTSdJwHuN2XbGE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jQiLY8hENQ4Dc0/QoZJRuLTn7xY7sy0zTVM43GYXfBVw6XifRbhXrUGG3ONwPLBc29TZV3xLDUVQIdOx4fdsKjgZiVvzXbvbX9HMuFdtn2HOh0vY4mFNmE+Qzuj22kEYHPQi9nMDIutRuxYY72mZcYPmgxeIk19+gymYZKHMJKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=ePlwsm6k; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (89-27-53-110.bb.dnainternet.fi [89.27.53.110])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C01763370;
	Tue,  5 Mar 2024 01:42:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1709599331;
	bh=wVXIGbNIzcQQwvvYo0cYgV8D+lPD9fTSdJwHuN2XbGE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ePlwsm6kgPBNJqfiIIBXgLM9Y+gnCyWNPO4UgA8eKb4EaOVhTffw0D3fztc28eans
	 zv7T7zcqaeVP8tbONo9gF+s9b0UFPZUcDLF3/tmUkt+MI6LHBa4q4VzBkLIfPZSHYH
	 YT5/eMTcgiwh9083hNbMMi+/fEa+eah8wMK+bgco=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Valentin Raevsky <valentin@compulab.co.il>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 4/4] arm64: dts: freescale: Add device tree for Compulab SB-UCM-iMX8MPLUS
Date: Tue,  5 Mar 2024 02:42:21 +0200
Message-ID: <20240305004222.622-5-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240305004222.622-1-laurent.pinchart@ideasonboard.com>
References: <20240305004222.622-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Compulab SB-UCM-iMX8MPLUS is a carrier board designed as an
evaluation board for the UCM-iMX8M-Plus SoM. It integrates support for
ethernet, USB, display (HDMI, DSI and LVDS), cameras (CSI-2 and GMSL),
audio and various other peripherals. Add a .dts that models the SB-UCM.

Not all peripherals present on the board are enabled yet, as I couldn't
test them all. Missing features include PCIe, audio, camera (CSI-2 and
GMSL), display (DSI and LVDS, I have tested HDMI), SIM and CAN. The I2C,
SPI and other buses routed to extensions connectors have also not been
tested. They can be added to the device tree at a later time.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8mp-sb-ucm.dts      | 284 ++++++++++++++++++
 2 files changed, 285 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-sb-ucm.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 2cb0212b63c6..02efa97fc464 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -164,6 +164,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-icore-mx8mp-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-msc-sm2s-ep1.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-phyboard-pollux-rdk.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mp-sb-ucm.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-skov-revb-hdmi.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-skov-revb-lt6.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-skov-revb-mi1010ait-1cp1.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-sb-ucm.dts b/arch/arm64/boot/dts/freescale/imx8mp-sb-ucm.dts
new file mode 100644
index 000000000000..eba851f77263
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-sb-ucm.dts
@@ -0,0 +1,284 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2021 CompuLab
+ * Copyright 2024 Ideas on Board Oy
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/clock/imx8mp-clock.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/usb/pd.h>
+
+#include "imx8mp-pinfunc.h"
+#include "imx8mp-ucm.dtsi"
+
+/ {
+	model = "CompuLab SB-UCM-iMX8MPLUS";
+	compatible = "compulab,sb-ucm-imx8mp", "compulab,ucm-imx8mp", "fsl,imx8mp";
+
+	chosen {
+		stdout-path = &uart2;
+	};
+
+	hdmi-connector {
+		compatible = "hdmi-connector";
+		label = "hdmi";
+		type = "a";
+
+		port {
+			hdmi_connector_in: endpoint {
+				remote-endpoint = <&hdmi_tx_out>;
+			};
+		};
+	};
+
+	usb-connector {
+		compatible = "usb-c-connector";
+		label = "USB-C";
+		data-role = "dual";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				hs_ep: endpoint {
+					remote-endpoint = <&usb3_hs_ep>;
+				};
+			};
+			port@1 {
+				reg = <1>;
+
+				ss_ep: endpoint {
+					remote-endpoint = <&hd3ss3220_in_ep>;
+				};
+			};
+		};
+	};
+};
+
+&eqos {
+	status = "okay";
+};
+
+&hdmi_pvi {
+	status = "okay";
+};
+
+&hdmi_tx {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hdmi>;
+	status = "okay";
+
+	ports {
+		port@1 {
+			hdmi_tx_out: endpoint {
+				remote-endpoint = <&hdmi_connector_in>;
+			};
+		};
+	};
+};
+
+&hdmi_tx_phy {
+	status = "okay";
+};
+
+&i2c2 {
+	pca9555: gpio@20 {
+		compatible = "nxp,pca9555";
+		reg = <0x20>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	usb-typec@47 {
+		compatible = "ti,hd3ss3220";
+		reg = <0x47>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_typec>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <19 IRQ_TYPE_LEVEL_LOW>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				hd3ss3220_in_ep: endpoint {
+					remote-endpoint = <&ss_ep>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				hd3ss3220_out_ep: endpoint {
+					remote-endpoint = <&usb3_role_switch>;
+				};
+			};
+		};
+	};
+
+	eeprom@54 {
+		compatible = "catalyst,24c08", "atmel,24c08";
+		reg = <0x54>;
+		pagesize = <16>;
+	};
+};
+
+&iomuxc {
+	pinctrl_hdmi: hdmigrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL	0x1c2
+			MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA	0x1c2
+			MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD		0x0
+			MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC		0x0
+		>;
+	};
+
+	pinctrl_typec: typec1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI1_TXD7__GPIO4_IO19		0x1c4
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_UART1_RXD__UART1_DCE_RX		0x140
+			MX8MP_IOMUXC_UART1_TXD__UART1_DCE_TX		0x140
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX		0x140
+			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX		0x140
+		>;
+	};
+
+	pinctrl_usdhc2_gpio: usdhc2-gpiogrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12		0x1c4
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x190
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d0
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0		0x1d0
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1		0x1d0
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2		0x1d0
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3		0x1d0
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT		0xc0
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x194
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d4
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0		0x1d4
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1		0x1d4
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2		0x1d4
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3		0x1d4
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT		0xc0
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x196
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d6
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0		0x1d6
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1		0x1d6
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2		0x1d6
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3		0x1d6
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT		0xc0
+		>;
+	};
+};
+
+&lcdif3 {
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+/* Serial debug console */
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
+&usb3_0 {
+	status = "okay";
+};
+
+&usb_dwc3_0 {
+	dr_mode = "otg";
+	hnp-disable;
+	srp-disable;
+	adp-disable;
+	usb-role-switch;
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			reg = <0>;
+			usb3_hs_ep: endpoint {
+				remote-endpoint = <&hs_ep>;
+			};
+		};
+		port@1 {
+			reg = <1>;
+			usb3_role_switch: endpoint {
+				remote-endpoint = <&hd3ss3220_out_ep>;
+			};
+		};
+	};
+};
+
+&usb3_phy0 {
+	status = "okay";
+};
+
+&usb3_1 {
+	status = "okay";
+};
+
+&usb_dwc3_1 {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usb3_phy1 {
+	status = "okay";
+};
+
+/* Micro-SD socket */
+&usdhc2 {
+	assigned-clocks = <&clk IMX8MP_CLK_USDHC2>;
+	assigned-clock-rates = <400000000>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
+	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+	bus-width = <4>;
+	status = "okay";
+};
-- 
Regards,

Laurent Pinchart


