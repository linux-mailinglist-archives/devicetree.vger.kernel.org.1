Return-Path: <devicetree+bounces-132489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 594289F7571
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 08:27:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 352CD1896576
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 07:26:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A79621773D;
	Thu, 19 Dec 2024 07:25:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA6B217675
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 07:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734593149; cv=none; b=ttBCGbPDaHojE6Y8D0IF0xwJfeFyvSotCJhZ7qDjIYSTODU5vaCHHIWnYyGTaM6YKu+DIoBw42RjCD7KvGCBBoqL1nHPr4+omay0wf14XNubqT2QzBL0aOr9yVy6jYaEaCk0oCxF9pCa1NnX1jumaoHHN+cx3QTnsXXc/erfp+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734593149; c=relaxed/simple;
	bh=JbO6NfMPvHMUJyBboycvE+Q+VwA3y1BdJCOUBWkfd4o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pcTHewp1kwBB6XMs4gYRSNal8o8Bfbgc3XQhZlImQY/ArKBl3xhKzPsPf6rhZkFGDEYY25IM2xwuiOEPnCG09FNiqvuebA/6nzr+SANk4KxTrMkpLx2CNMbjjIRIqFmKVhlsP9q+0v+vtI6leS01PzLUlY09pfZGsa5w+4fyS3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOAuc-00064M-0h; Thu, 19 Dec 2024 08:25:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOAua-004AOF-2s;
	Thu, 19 Dec 2024 08:25:33 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOAub-00GenW-1j;
	Thu, 19 Dec 2024 08:25:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 19 Dec 2024 08:25:30 +0100
Subject: [PATCH 06/10] arm64: dts: imx8mp-skov: describe LVDS display
 pipeline
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241219-skov-dt-updates-v1-6-38bf80dc22df@pengutronix.de>
References: <20241219-skov-dt-updates-v1-0-38bf80dc22df@pengutronix.de>
In-Reply-To: <20241219-skov-dt-updates-v1-0-38bf80dc22df@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Oleksij Rempel <o.rempel@pengutronix.de>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.13-dev
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: Oleksij Rempel <o.rempel@pengutronix.de>

The Skov i.MX8MP LT6 device tree so far described the touch screen, but
didn't describe the screen itself. Fill out these missing pieces.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../boot/dts/freescale/imx8mp-skov-revb-lt6.dts    | 60 ++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-lt6.dts b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-lt6.dts
index ccbd3abedd69..baecf768a2ee 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-lt6.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-lt6.dts
@@ -8,6 +8,45 @@ / {
 	model = "SKOV IMX8MP CPU revB - LT6";
 	compatible = "skov,imx8mp-skov-revb-lt6", "fsl,imx8mp";
 
+	lvds-decoder {
+		compatible = "ti,sn65lvds822", "lvds-decoder";
+		power-supply = <&reg_3v3>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				in_lvds1: endpoint {
+					data-mapping = "vesa-24";
+					remote-endpoint = <&ldb_lvds_ch1>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				lvds_decoder_out: endpoint {
+					remote-endpoint = <&panel_in>;
+				};
+			};
+		};
+	};
+
+	panel {
+		compatible = "logictechno,lttd800480070-l6wh-rt";
+		backlight = <&backlight>;
+		power-supply = <&reg_tft_vcom>;
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&lvds_decoder_out>;
+			};
+		};
+	};
+
 	touchscreen {
 		compatible = "resistive-adc-touch";
 		io-channels = <&adc_ts 1>, <&adc_ts 3>, <&adc_ts 4>, <&adc_ts 5>;
@@ -78,6 +117,27 @@ channel@5 {
 	};
 };
 
+&lcdif2 {
+	status = "okay";
+};
+
+&lvds_bridge {
+	assigned-clocks = <&clk IMX8MP_CLK_MEDIA_LDB>,
+				 <&clk IMX8MP_VIDEO_PLL1>;
+	assigned-clock-parents = <&clk IMX8MP_VIDEO_PLL1_OUT>;
+	/* IMX8MP_VIDEO_PLL1 = IMX8MP_CLK_MEDIA_DISP2_PIX * 2 * 7 */
+	assigned-clock-rates = <0>, <462000000>;
+	status = "okay";
+
+	ports {
+		port@2 {
+			ldb_lvds_ch1: endpoint {
+				remote-endpoint = <&in_lvds1>;
+			};
+		};
+	};
+};
+
 &pwm1 {
 	status = "okay";
 };

-- 
2.39.5


