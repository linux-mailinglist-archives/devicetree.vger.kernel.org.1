Return-Path: <devicetree+bounces-43947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D546E85BEAF
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 15:23:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 068C81C224E9
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 14:23:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E5F86A8CA;
	Tue, 20 Feb 2024 14:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="iQbwGvW3";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="NkvhTdXR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525FA6A351
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 14:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708438996; cv=none; b=Nfc+LoU4NlXtrqk7ZwzH+ml0K4ROWCl1d1ndUxo0ccS+r26aEvkRRyr7/7iqWE3OUIL/xATqsfuUXPWL00IlMxHUmj8nwWrD36yxUTyBExkpQmyAH/CwR8242P/i15RTWKssk5lpaYon8San8xDZyjhnuMSDwgHej+7uNnrGrC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708438996; c=relaxed/simple;
	bh=poIIO3C86oiJJtSMnerGOdrySyVDrVNfWImr6e61zAs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Enk2TBkNtRWKC6cHkdGrW3FvfcBVkUbVQFZWhlKRsJU4xBNv50Va9BCf4AtqA/pBh5CHY09+wdxphpeRJVrjdtdCGNr+YaXUVb5qqCYRfQUAtpD1uFtJaCQrXjAgy13Bj4R/Yi5VBi0QG8FgJzIG3pjTXU3ZyVz+yMDXShRGpI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=iQbwGvW3; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=NkvhTdXR reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1708438992; x=1739974992;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=bhfK3UuyDdGUzQTKDYz+eZKapmcINuEU07EpUYoYLsc=;
  b=iQbwGvW3HHznIYkx3fIyDvWWXeZt/uxl/0nsByee8StTMLnSUbruCsRA
   gNOVwrNAYv2ssnrQvFZY/AmVmMoPjpHJLev3xq50UQbnKZ19gmQ/hDu+o
   HFciWs5ndcGlhxjo9WV3AAWPNb4UxmGwjYvvHpV2oyTi/nbIB4sCqlnDO
   QC6qqnadxqJ6atvxJc+WeiFP+axGih27dkQqiv1Zr0eDAylU28DFsSoNk
   ESAJWnnlVTNByjz7xB6GCE1oq4NKtv1EAjrBzWksEbIcgzFqSUJkSuaLi
   UMdBYGAFlNv6HmjYJBB1vYu9Qhd0OEZBfCzHj3Di7d/TQZX2Km0UT91A4
   g==;
X-IronPort-AV: E=Sophos;i="6.06,172,1705359600"; 
   d="scan'208";a="35502265"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 20 Feb 2024 15:23:09 +0100
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E217C16F4E6;
	Tue, 20 Feb 2024 15:23:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1708438985; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=bhfK3UuyDdGUzQTKDYz+eZKapmcINuEU07EpUYoYLsc=;
	b=NkvhTdXRzl8z1ROKmwv89PEo/AUxIhvct3Ui7rdk72l2O0Uq+vKcJ4YxlecY736HNWDrAJ
	rjAhL5vsfQesjR0jlJRq38B/xsqtSZWzRw4wrflPmDB02F1kks9/Mu++Fcy4D3c3cKteFc
	N1LaIOYvkKRoNNB8e7E7RGDA/aa3XAyU1p3jNmY0hLUIzr8ttXiQcH1cgCqYqhV2kiiPXO
	1lR5El/rc+jNst7RADbWZhB4+0wYky2BmcsPNiEJ2EAl29rG2XhMAPuxTjQbDXp/kTy8Lw
	XCiG3LHUml7JDjzuamx9tFKwY8ED+VM/b0APIsamb6Y1WN1ZHuikTbeGhzq7lA==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
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
Subject: [PATCH 1/1] arm64: dts: freescale: imx8mm/imx8mq: mba8mx: Use PCIe clock generator
Date: Tue, 20 Feb 2024 15:23:06 +0100
Message-Id: <20240220142306.2514269-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

PCIe reference clock is provided by Renesas 9FGV0441. Reference this
instead of a fixed-clock.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
I've dropped Geert Uytterhoeven and Magnus Damm from get_maintainers.pl
output as they seem to be triggered by 'renesas' keyword only.

It's a bit unclear what the clock IMX8MQ_CLK_PCIEx_PHY is actually
about. I assume 'pcie_bus' is the reference clock for the PCIe
device while 'pcie_phy' is the reference clock for the RC. Both
are provided by the external clock generator.

 .../dts/freescale/imx8mm-tqma8mqml-mba8mx.dts | 14 +++++++----
 .../dts/freescale/imx8mq-tqma8mq-mba8mx.dts   | 23 +++++--------------
 arch/arm64/boot/dts/freescale/mba8mx.dtsi     | 19 ++++++++++-----
 3 files changed, 29 insertions(+), 27 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
index ea6e8b85169f7..01b632b220dc7 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
@@ -5,6 +5,8 @@
 
 /dts-v1/;
 
+#include <dt-bindings/phy/phy-imx8-pcie.h>
+
 #include "imx8mm-tqma8mqml.dtsi"
 #include "mba8mx.dtsi"
 
@@ -74,19 +76,23 @@ expander2: gpio@27 {
 };
 
 &pcie_phy {
-	clocks = <&pcie0_refclk>;
+	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
+	fsl,clkreq-unsupported;
+	clocks = <&pcieclk 2>;
+	clock-names = "ref";
 	status = "okay";
 };
 
+/* PCIe slot on X36 */
 &pcie0 {
 	reset-gpio = <&expander0 14 GPIO_ACTIVE_LOW>;
-	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&pcie0_refclk>,
+	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&pcieclk 3>,
 		 <&clk IMX8MM_CLK_PCIE1_AUX>;
 	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
-				<&clk IMX8MM_CLK_PCIE1_CTRL>;
+			  <&clk IMX8MM_CLK_PCIE1_CTRL>;
 	assigned-clock-rates = <10000000>, <250000000>;
 	assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_50M>,
-				<&clk IMX8MM_SYS_PLL2_250M>;
+				 <&clk IMX8MM_SYS_PLL2_250M>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
index b302daca4ce64..b2e17d4f335eb 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
@@ -28,18 +28,6 @@ extcon_usbotg: extcon-usbotg0 {
 		id-gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
 	};
 
-	pcie0_refclk: pcie0-refclk {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <100000000>;
-	};
-
-	pcie1_refclk: pcie1-refclk {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <100000000>;
-	};
-
 	reg_otg_vbus: regulator-otg-vbus {
 		compatible = "regulator-fixed";
 		pinctrl-names = "default";
@@ -103,23 +91,24 @@ &led2 {
 	gpios = <&gpio3 16 GPIO_ACTIVE_HIGH>;
 };
 
+/* PCIe slot on X36 */
 &pcie0 {
 	reset-gpio = <&expander0 14 GPIO_ACTIVE_LOW>;
 	clocks = <&clk IMX8MQ_CLK_PCIE1_ROOT>,
-		 <&pcie0_refclk>,
-		 <&clk IMX8MQ_CLK_PCIE1_PHY>,
+		 <&pcieclk 3>,
+		 <&pcieclk 2>,
 		 <&clk IMX8MQ_CLK_PCIE1_AUX>;
 	status = "okay";
 };
 
 /*
- * miniPCIe, also usable for cards with USB. Therefore configure the reset as
+ * miniPCIe on X28, also usable for cards with USB. Therefore configure the reset as
  * static gpio hog.
  */
 &pcie1 {
 	clocks = <&clk IMX8MQ_CLK_PCIE2_ROOT>,
-		 <&pcie1_refclk>,
-		 <&clk IMX8MQ_CLK_PCIE2_PHY>,
+		 <&pcieclk 1>,
+		 <&pcieclk 0>,
 		 <&clk IMX8MQ_CLK_PCIE2_AUX>;
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/mba8mx.dtsi b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
index e2bc53b8d39a8..c82af672d1834 100644
--- a/arch/arm64/boot/dts/freescale/mba8mx.dtsi
+++ b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
@@ -29,6 +29,12 @@ chosen {
 		stdout-path = &uart3;
 	};
 
+	clk_xtal25: clk-xtal25 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <25000000>;
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
@@ -100,12 +106,6 @@ panel_in_lvds: endpoint {
 		};
 	};
 
-	pcie0_refclk: pcie0-refclk {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <100000000>;
-	};
-
 	reg_12v: regulator-12v {
 		compatible = "regulator-fixed";
 		regulator-name = "MBA8MX_12V";
@@ -264,6 +264,13 @@ eeprom3: eeprom@57 {
 		pagesize = <16>;
 		vcc-supply = <&reg_vcc_3v3>;
 	};
+
+	pcieclk: clk@68 {
+		compatible = "renesas,9fgv0441";
+		reg = <0x68>;
+		clocks = <&clk_xtal25>;
+		#clock-cells = <1>;
+	};
 };
 
 &i2c3 {
-- 
2.34.1


