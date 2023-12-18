Return-Path: <devicetree+bounces-26579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 624C9816F97
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 14:07:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B951289009
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:07:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CA0C3D563;
	Mon, 18 Dec 2023 12:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="OctsxCTe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ADE6129EE9
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 12:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702904112; x=1734440112;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=LhOaiWoTwAnhyIVZhpJf6gdGNYqUMdBRr/p/4Zp+P/8=;
  b=OctsxCTeftshLHuCfvYyxYB/kc0egKs0+2W6z9qk2o6cmvmMLjj2OSga
   QLLfYODvN0Tmveuq2n72Hy4qnBaFWdfVrS1USiSfNFpMGzJJaWUWPZk0w
   FOvzHnG2so4NVsXLG4lRLsFKq9ApXC2agylpZODp1AXsUpQt/mOPtpvaf
   9tYR8L/sJZyo94nnAmkioRMeUZpx5zXXv4EXLVe7orpz9+c+NmiqeEYPu
   lI56o0C1GJ/9eBt0DYNXi7tluMbczGxJr3FbCG//qnsIQwQwRF5SnkKVO
   BTdiT0EYRuTIArjS+CRzwT3AMtwUZHqVDdlHvbbVnDr20A828PXuJS+Ty
   Q==;
X-IronPort-AV: E=Sophos;i="6.04,285,1695679200"; 
   d="scan'208";a="34562702"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Dec 2023 13:55:02 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 8441F280096;
	Mon, 18 Dec 2023 13:55:01 +0100 (CET)
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
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 11/23] ARM: dts: imx7-mba7: Add i2c bus recovery
Date: Mon, 18 Dec 2023 13:54:47 +0100
Message-Id: <20231218125459.2769733-12-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>
References: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the pin muxing and GPIO settings for SCL/SDA for i2c2 & i2c3.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
index e887889816c7..f72fd912e1a6 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
@@ -309,8 +309,11 @@ lm75: temperature-sensor@49 {
 
 &i2c2 {
 	clock-frequency = <100000>;
-	pinctrl-names = "default";
+	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_i2c2>;
+	pinctrl-1 = <&pinctrl_i2c2_recovery>;
+	scl-gpios = <&gpio4 10 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio4 11 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "okay";
 
 	tlv320aic32x4: audio-codec@18 {
@@ -338,8 +341,11 @@ pca9555: gpio-expander@20 {
 
 &i2c3 {
 	clock-frequency = <100000>;
-	pinctrl-names = "default";
+	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_i2c3>;
+	pinctrl-1 = <&pinctrl_i2c3_recovery>;
+	scl-gpios = <&gpio4 12 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio4 13 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "okay";
 };
 
@@ -424,12 +430,24 @@ pinctrl_i2c2: i2c2grp {
 			<MX7D_PAD_I2C2_SDA__I2C2_SDA		0x40000078>;
 	};
 
+	pinctrl_i2c2_recovery: i2c2recoverygrp {
+		fsl,pins =
+			<MX7D_PAD_I2C2_SCL__GPIO4_IO10		0x40000078>,
+			<MX7D_PAD_I2C2_SDA__GPIO4_IO11		0x40000078>;
+	};
+
 	pinctrl_i2c3: i2c3grp {
 		fsl,pins =
 			<MX7D_PAD_I2C3_SCL__I2C3_SCL		0x40000078>,
 			<MX7D_PAD_I2C3_SDA__I2C3_SDA		0x40000078>;
 	};
 
+	pinctrl_i2c3_recovery: i2c3recoverygrp {
+		fsl,pins =
+			<MX7D_PAD_I2C3_SCL__GPIO4_IO12		0x40000078>,
+			<MX7D_PAD_I2C3_SDA__GPIO4_IO13		0x40000078>;
+	};
+
 	pinctrl_pca9555: pca95550grp {
 		fsl,pins =
 			<MX7D_PAD_ENET1_TX_CLK__GPIO7_IO12	0x78>;
-- 
2.34.1


