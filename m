Return-Path: <devicetree+bounces-10510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C14087D1A0E
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 02:53:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7073F2825FC
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 00:53:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A77B37C;
	Sat, 21 Oct 2023 00:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="KpVtTrBQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF3D3379
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 00:53:00 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50D3A13E;
	Fri, 20 Oct 2023 17:52:56 -0700 (PDT)
Received: from Monstersaurus.local (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9F7AD3D9;
	Sat, 21 Oct 2023 02:52:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1697849566;
	bh=lryYCPXwnY6lJv+ykkheug+vJfZinI6XiTaoqh0vci4=;
	h=From:To:Cc:Subject:Date:From;
	b=KpVtTrBQyslzfU0zg8LtSb/TliuNVSn4/r11IqLgVq2ncyaCeuzdLn6MHZavVbotr
	 NNTpHpdYvwEpnJlxoFnfPMs1okgXfPhJuQQdjC9lxxRQjcs16jz76yzoZT2md8SDsM
	 S4yUiDamxHmLkt4ga7TP3rDtGfPKTZyF68kPTNdk=
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
To: devicetree@vger.kernel.org
Cc: Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] arm64: dts: freescale: debix-som-a-bmb-08: Add CSI Power Regulators
Date: Sat, 21 Oct 2023 01:52:47 +0100
Message-Id: <20231021005250.3498664-1-kieran.bingham@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Provide the 1.8 and 3.3 volt regulators that are utilised on the Debix
SOM BMB-08 base board.

Facilitate this by also supplying the pin control used to enable the
regulators on the second MIPI CSI port.

Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
---
 .../freescale/imx8mp-debix-som-a-bmb-08.dts   | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts b/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts
index 0b0c95432bdc..e058402f1f2e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts
@@ -63,6 +63,50 @@ regulator-som-vdd3v3 {
 		regulator-always-on;
 	};
 
+	reg_csi1_1v8: regulator-csi1-vdd1v8 {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-name = "CSI1_VDD1V8_SW";
+		gpio = <&expander0 13 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&reg_baseboard_vdd3v3>;
+		enable-active-high;
+	};
+
+	reg_csi1_3v3: regulator-csi1-vdd3v3 {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "CSI1_VDD3V3_SW";
+		gpio = <&expander0 14 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&reg_vdd5v0>;
+	};
+
+	reg_csi2_1v8: regulator-csi2-vdd1v8 {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_csi2_1v8>;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-name = "CSI2_VDD1V8_SW";
+		gpio = <&gpio3 21 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&reg_baseboard_vdd3v3>;
+	};
+
+	reg_csi2_3v3: regulator-csi2-vdd3v3 {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_csi2_3v3>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "CSI2_VDD3V3_SW";
+		gpio = <&gpio4 25 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&reg_vdd5v0>;
+	};
+
 	regulator-vbus-usb20 {
 		compatible = "regulator-fixed";
 		regulator-min-microvolt = <5000000>;
@@ -413,6 +457,18 @@ MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03		0x41
 		>;
 	};
 
+	pinctrl_reg_csi2_1v8: regcsi21v8grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI5_RXD0__GPIO3_IO21		0x19
+		>;
+	};
+
+	pinctrl_reg_csi2_3v3: regcsi23v3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI2_TXC__GPIO4_IO25		0x19
+		>;
+	};
+
 	pinctrl_uart2: uart2grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX		0x14f
-- 
2.34.1


