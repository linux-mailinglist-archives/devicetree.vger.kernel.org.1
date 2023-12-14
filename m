Return-Path: <devicetree+bounces-25433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 122748133D1
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:02:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC55D1F221DE
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 15:02:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68F215C063;
	Thu, 14 Dec 2023 15:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="H0S9gQ7z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98CA0121
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 07:02:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702566170; x=1734102170;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=eisuyFOlTcr+YrM17j+SBgd6K1yNTIGZqxFReQQ2Qy8=;
  b=H0S9gQ7zVF8L1N5jWJS6tbXeR2mqTPm5k42PUOvr7PcCU4AbC8O0UbRp
   BFrKPTMRX+yFdXDlUMA1zkK21jfmjI3Nc+u8Auu9MqYzrVHjIslDMsYKb
   6sGbRwAbmd3JqQRcBQvKm2OWICl9OWJJkYCzpXNdbS/Y/nQNsGA+0anbX
   +dQ0cy1ldhDLJyPH+LcX61tKY24fX7Lcb3cpxRgIGGZe6OBXpcv1+Saem
   DoAuC0m0R99cj28POM+WG8CtqiOm6njlBDFl6fckAk6hfBJ6w+gDrnSz2
   6QXPZGBUJMntJdaCPrwJkCgJ2l434A5SdVtf+9u5u8M/BeoSaseYSpKN2
   g==;
X-IronPort-AV: E=Sophos;i="6.04,275,1695679200"; 
   d="scan'208";a="34513401"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2023 16:02:45 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id F3FDC280084;
	Thu, 14 Dec 2023 16:02:44 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/5] arm64: dts: imx8qxp: mba8xx: Add analog audio output on MBa8Xx
Date: Thu, 14 Dec 2023 16:02:43 +0100
Message-Id: <20231214150243.1991532-6-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214150243.1991532-1-alexander.stein@ew.tq-group.com>
References: <20231214150243.1991532-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable SAI1, add the codec to enable LINE_IN and LINE_OUT support on
MBa8Xx on connectors X9 & X10.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/mba8xx.dtsi | 27 ++++++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/mba8xx.dtsi b/arch/arm64/boot/dts/freescale/mba8xx.dtsi
index a263c3d008023..6164fefb92184 100644
--- a/arch/arm64/boot/dts/freescale/mba8xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/mba8xx.dtsi
@@ -116,7 +116,12 @@ reg_3v3_mb: regulator-usdhc2-vmmc {
 		regulator-max-microvolt = <3300000>;
 	};
 
-	/* TODO: Audio */
+	sound {
+		compatible = "fsl,imx-audio-tlv320aic32x4";
+		model = "tqm-tlv320aic32";
+		audio-codec = <&tlv320aic3x04>;
+		ssi-controller = <&sai1>;
+	};
 };
 
 &adc0 {
@@ -204,7 +209,14 @@ &flexcan2 {
 };
 
 &i2c1 {
-	/* TODO: Add Audio codec */
+	tlv320aic3x04: audio-codec@18 {
+		compatible = "ti,tlv320aic32x4";
+		reg = <0x18>;
+		clocks = <&mclkout0_lpcg 0>;
+		clock-names = "mclk";
+		iov-supply = <&reg_1v8>;
+		ldoin-supply = <&reg_3v3>;
+	};
 
 	se97b_1c: temperature-sensor@1c {
 		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
@@ -298,7 +310,16 @@ &lsio_gpio3 {
 
 /* TODO: Mini-PCIe */
 
-/* TODO: SAI1 */
+&sai1 {
+	assigned-clocks = <&clk IMX_SC_R_AUDIO_PLL_0 IMX_SC_PM_CLK_PLL>,
+			  <&clk IMX_SC_R_AUDIO_PLL_0 IMX_SC_PM_CLK_SLV_BUS>,
+			  <&clk IMX_SC_R_AUDIO_PLL_0 IMX_SC_PM_CLK_MST_BUS>,
+			  <&sai1_lpcg 0>;
+	assigned-clock-rates = <786432000>, <49152000>, <12288000>, <49152000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai1>;
+	status = "okay";
+};
 
 &usbotg1 {
 	pinctrl-names = "default";
-- 
2.34.1


