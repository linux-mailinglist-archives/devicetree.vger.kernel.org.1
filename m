Return-Path: <devicetree+bounces-26569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 69184816F8E
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 14:06:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EE129B20F14
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0C193A1DC;
	Mon, 18 Dec 2023 12:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="F2R79y/m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F6A4129EE9
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 12:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702904104; x=1734440104;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=PyWZK/EiK2Ut49JIy/z+GCFcoRIygV/H7/Sxoqg51rI=;
  b=F2R79y/mlKm0lOeLdpI3m6phIijelPb83ObLxXW0Zyyis7bMVPINwQbL
   hV7vJ3XBfhZGSPq4KexWavP1DBIL7N9jXNRlZuHZt6RgDInZfxNRwaHi8
   ppfEC2jIOu+nfTusHW6gmXyOaYAH7D9DzKFOK4E7biYCcsmy5mR6hwFAr
   c3JL4cnDPq8Xk0DnrMV3u0WilmNdC90/OQK5GFShkO7r938xFsNoaDjsz
   EM5mH5ty+rfte0UCuvR3XeTCui0lqcFfUOJDQPNBBb7+EXVzu4vt8ktS8
   qwUaub7jkUWB3/HDUKOGA+W4ScwSl0d4BNnc/v9ptr6ZYsIXavCT/oSwT
   g==;
X-IronPort-AV: E=Sophos;i="6.04,285,1695679200"; 
   d="scan'208";a="34562690"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Dec 2023 13:54:59 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 435AF280085;
	Mon, 18 Dec 2023 13:54:59 +0100 (CET)
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
Subject: [PATCH 02/23] ARM: dts: imx7[d]-mba7: Move ethernet PHY reset into PHY node
Date: Mon, 18 Dec 2023 13:54:38 +0100
Message-Id: <20231218125459.2769733-3-alexander.stein@ew.tq-group.com>
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

Split pinctrl as well. 'reset-deassert-us' is added with a small safe
margin.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi | 13 ++++++++++---
 arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts | 13 ++++++++++---
 2 files changed, 20 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
index 2e406cc7d292..c2be1a75f70d 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
@@ -214,8 +214,6 @@ &fec1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet1>;
 	phy-mode = "rgmii-id";
-	phy-reset-gpios = <&gpio7 15 GPIO_ACTIVE_LOW>;
-	phy-reset-duration = <1>;
 	phy-supply = <&reg_fec1_pwdn>;
 	phy-handle = <&ethphy1_0>;
 	fsl,magic-packet;
@@ -228,10 +226,15 @@ mdio {
 		ethphy1_0: ethernet-phy@0 {
 			compatible = "ethernet-phy-ieee802.3-c22";
 			reg = <0>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_enet1_phy>;
 			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_50_NS>;
 			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_50_NS>;
 			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
 			ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
+			reset-gpios = <&gpio7 15 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <1000>;
+			reset-deassert-us = <500>;
 		};
 	};
 };
@@ -366,7 +369,11 @@ pinctrl_enet1: enet1grp {
 			<MX7D_PAD_ENET1_RGMII_RD1__ENET1_RGMII_RD1		0x79>,
 			<MX7D_PAD_ENET1_RGMII_RD2__ENET1_RGMII_RD2		0x79>,
 			<MX7D_PAD_ENET1_RGMII_RD3__ENET1_RGMII_RD3		0x79>,
-			<MX7D_PAD_ENET1_RGMII_RX_CTL__ENET1_RGMII_RX_CTL	0x79>,
+			<MX7D_PAD_ENET1_RGMII_RX_CTL__ENET1_RGMII_RX_CTL	0x79>;
+	};
+
+	pinctrl_enet1_phy: enet1phygrp {
+		fsl,pins =
 			/* Reset: SION, 100kPU, SRE_FAST, DSE_X1 */
 			<MX7D_PAD_ENET1_COL__GPIO7_IO15				0x40000070>,
 			/* INT/PWDN: SION, 100kPU, HYS, SRE_FAST, DSE_X1 */
diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts b/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
index 79a6d82b453a..4ea1801a7aed 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
@@ -21,8 +21,6 @@ &fec2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet2>;
 	phy-mode = "rgmii-id";
-	phy-reset-gpios = <&gpio2 28 GPIO_ACTIVE_LOW>;
-	phy-reset-duration = <1>;
 	phy-supply = <&reg_fec2_pwdn>;
 	phy-handle = <&ethphy2_0>;
 	fsl,magic-packet;
@@ -35,10 +33,15 @@ mdio {
 		ethphy2_0: ethernet-phy@0 {
 			compatible = "ethernet-phy-ieee802.3-c22";
 			reg = <0>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_enet2_phy>;
 			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_50_NS>;
 			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_50_NS>;
 			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
 			ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
+			reset-gpios = <&gpio2 28 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <1000>;
+			reset-deassert-us = <500>;
 		};
 	};
 };
@@ -62,7 +65,11 @@ pinctrl_enet2: enet2grp {
 			<MX7D_PAD_EPDC_SDLE__ENET2_RGMII_RD1		0x79>,
 			<MX7D_PAD_EPDC_SDOE__ENET2_RGMII_RD2		0x79>,
 			<MX7D_PAD_EPDC_SDSHR__ENET2_RGMII_RD3		0x79>,
-			<MX7D_PAD_EPDC_SDCE0__ENET2_RGMII_RX_CTL	0x79>,
+			<MX7D_PAD_EPDC_SDCE0__ENET2_RGMII_RX_CTL	0x79>;
+	};
+
+	pinctrl_enet2_phy: enet2phygrp {
+		fsl,pins =
 			/* Reset: SION, 100kPU, SRE_FAST, DSE_X1 */
 			<MX7D_PAD_EPDC_BDR0__GPIO2_IO28		0x40000070>,
 			/* INT/PWDN: SION, 100kPU, HYS, SRE_FAST, DSE_X1 */
-- 
2.34.1


