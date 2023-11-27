Return-Path: <devicetree+bounces-19195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CF07F9FC7
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:40:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C3F9B1F20E9B
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 12:40:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D0D21DDF2;
	Mon, 27 Nov 2023 12:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="mF/mwgpw"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59644135;
	Mon, 27 Nov 2023 04:40:47 -0800 (PST)
Received: from Monstersaurus.tail69b4.ts.net (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id CCF5E512;
	Mon, 27 Nov 2023 13:40:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701088809;
	bh=QUtBMdPlaSkAZ3NJBmC6cLmtMUhs14o2DySLPBMR408=;
	h=From:To:Cc:Subject:Date:From;
	b=mF/mwgpwXxAGcco1PY37ys6Rvt8V6EQvs95CJh00EWFsKXVM3TxwJ4Zdx9hERUDkZ
	 MCFVfLVp+iDkj5bIwvlLiZVg+jkrj2muNqZ42Zx0YY+3S0TeSfA2qijqcLLP5YR5CQ
	 2rNZR4rSLP5yRqWLW7jv8kh98MDhaBs442uJaj30=
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
To: devicetree@vger.kernel.org
Cc: Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v3] arm64: dts: freescale: debix-som-a-bmb-08: Add CSI Power Regulators
Date: Mon, 27 Nov 2023 12:40:34 +0000
Message-Id: <20231127124037.888597-1-kieran.bingham@ideasonboard.com>
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

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>

---
v3:
 - Fix line ordering within reg_csi1_1v8

v2:
 - Remove _SW post fixes from regulators.

 .../freescale/imx8mp-debix-som-a-bmb-08.dts   | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts b/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts
index ee43d0fa6675..08202c364a25 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts
@@ -77,6 +77,50 @@ regulator-som-vdd3v3 {
 		regulator-always-on;
 	};
 
+	reg_csi1_1v8: regulator-csi1-vdd1v8 {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-name = "CSI1_VDD1V8";
+		gpio = <&expander0 13 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&reg_baseboard_vdd3v3>;
+	};
+
+	reg_csi1_3v3: regulator-csi1-vdd3v3 {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "CSI1_VDD3V3";
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
+		regulator-name = "CSI2_VDD1V8";
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
+		regulator-name = "CSI2_VDD3V3";
+		gpio = <&gpio4 25 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&reg_vdd5v0>;
+	};
+
 	regulator-vbus-usb20 {
 		compatible = "regulator-fixed";
 		regulator-min-microvolt = <5000000>;
@@ -454,6 +498,18 @@ MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03		0x41
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


