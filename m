Return-Path: <devicetree+bounces-13404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2A87DDFA4
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 11:43:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 252E2B20F20
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 10:43:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BBA56FCC;
	Wed,  1 Nov 2023 10:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="DXFRpLiN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF4D23DC
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 10:43:20 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7773110;
	Wed,  1 Nov 2023 03:43:14 -0700 (PDT)
Received: from Monstersaurus.local (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id BA0768D;
	Wed,  1 Nov 2023 11:42:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1698835376;
	bh=38CcRJe+nIK650sdIpgRXxaQUBx8YAWOiB8aCVgbhsM=;
	h=From:To:Cc:Subject:Date:From;
	b=DXFRpLiNglTV9lnJGWChXEyEd8Eg92X5HEnaff3vyK+GsdcIfv0dl+dZjqNeUpAv4
	 EP3uTx4A8NIe/W4WMONtlA/G0WpP3CSi+2YvoA/zrpa42YpHij405Jc7HzofkgHsto
	 jqk2fjb9m6CbH3Xh9hAUqSd7hU+rCd3RHpw/A5o0=
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
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2] arm64: dts: freescale: debix-som: Add heartbeat LED
Date: Wed,  1 Nov 2023 10:43:04 +0000
Message-Id: <20231101104307.2207938-1-kieran.bingham@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Map the 'RUN' LED present on the Debix-SOM as a heartbeat.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
---

v2:
 - Fix label
 - Correct color and function
 - Collect RB tag

 .../dts/freescale/imx8mp-debix-som-a.dtsi     | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a.dtsi
index bc312aa1bfc8..91094c227744 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a.dtsi
@@ -6,6 +6,8 @@
 
 #include "imx8mp.dtsi"
 
+#include <dt-bindings/leds/common.h>
+
 / {
 	model = "Polyhex i.MX8MPlus Debix SOM A";
 	compatible = "polyhex,imx8mp-debix-som-a", "fsl,imx8mp";
@@ -20,6 +22,20 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
 		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_led>;
+
+		led-0 {
+			gpios = <&gpio3 16 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+			linux,default-trigger = "heartbeat";
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_GREEN>;
+		};
+	};
 };
 
 &A53_0 {
@@ -203,6 +219,12 @@ &wdog1 {
 };
 
 &iomuxc {
+	pinctrl_gpio_led: gpioledgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_READY_B__GPIO3_IO16		0x19
+		>;
+	};
+
 	pinctrl_i2c1: i2c1grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL			0x400001c2
-- 
2.34.1


