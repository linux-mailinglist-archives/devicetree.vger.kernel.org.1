Return-Path: <devicetree+bounces-16710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0AC7EF645
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 17:33:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5EC78B20B17
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 16:33:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A74FE30655;
	Fri, 17 Nov 2023 16:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="pvfu3abK"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8268C194;
	Fri, 17 Nov 2023 08:33:49 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AHGXfv6000576;
	Fri, 17 Nov 2023 10:33:41 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700238821;
	bh=kaPrx62qnlZ6yuQoY72MyHi6vAI4NKTEp5lq2Alv8T8=;
	h=From:To:CC:Subject:Date;
	b=pvfu3abKivYRQ4CbeZuTmipCzKo7LaTchOj5cgL9SZbj/fqLsVSqUmlTqxJEiNYBP
	 979foKUZDTOlrjzPHGHnifFbUPKLvVgFXc5G9YY97EDcF81gkYVsWIxPJtwhz5be1V
	 6AgOa1goM8qyAF6IU4Hc1Jm1u4NwIOtYD9TOrRs4=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AHGXfG2039669
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 17 Nov 2023 10:33:41 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 17
 Nov 2023 10:33:41 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 17 Nov 2023 10:33:41 -0600
Received: from fllv0039.itg.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AHGXeYf127988;
	Fri, 17 Nov 2023 10:33:40 -0600
From: Andrew Davis <afd@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Andrew Davis <afd@ti.com>
Subject: [PATCH 1/2] arm64: dts: ti: k3-am65: Enable SDHCI nodes at the board level
Date: Fri, 17 Nov 2023 10:33:38 -0600
Message-ID: <20231117163339.89952-1-afd@ti.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

SDHCI nodes defined in the top-level AM65 SoC dtsi files are incomplete
and will not be functional unless they are extended.

As the attached SD/eMMC is only known about at the board integration level,
these nodes should only be enabled when provided with this information.

Disable the SDHCI nodes in the dtsi files and only enable the ones that
are actually pinned out on a given board.

Signed-off-by: Andrew Davis <afd@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi           | 1 +
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi                     | 2 ++
 arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic-common.dtsi   | 5 -----
 arch/arm64/boot/dts/ti/k3-am654-base-board.dts               | 2 ++
 .../arm64/boot/dts/ti/k3-am6548-iot2050-advanced-common.dtsi | 1 +
 5 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
index ba1c14a54acf4..79dbb286bafc1 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
@@ -554,6 +554,7 @@ &ecap0 {
 };
 
 &sdhci1 {
+	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_mmc1_pins_default>;
 	ti,driver-strength-ohm = <50>;
diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 5ebb87f467de5..9ff3094743f21 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -449,6 +449,7 @@ sdhci0: mmc@4f80000 {
 		ti,otap-del-sel-hs400 = <0x0>;
 		ti,trm-icp = <0x8>;
 		dma-coherent;
+		status = "disabled";
 	};
 
 	sdhci1: mmc@4fa0000 {
@@ -471,6 +472,7 @@ sdhci1: mmc@4fa0000 {
 		ti,clkbuf-sel = <0x7>;
 		ti,trm-icp = <0x8>;
 		dma-coherent;
+		status = "disabled";
 	};
 
 	scm_conf: scm-conf@100000 {
diff --git a/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic-common.dtsi b/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic-common.dtsi
index 5ab434c02ab6b..e4d7cba7c62f0 100644
--- a/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am6528-iot2050-basic-common.dtsi
@@ -29,11 +29,6 @@ cpu-map {
 	/delete-node/ l2-cache1;
 };
 
-/* eMMC */
-&sdhci0 {
-	status = "disabled";
-};
-
 &main_pmx0 {
 	main_uart0_pins_default: main-uart0-default-pins {
 		pinctrl-single,pins = <
diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
index 1637ec5ab5eda..822c288d27976 100644
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -449,6 +449,7 @@ flash@0 {
 };
 
 &sdhci0 {
+	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_mmc0_pins_default>;
 	bus-width = <8>;
@@ -463,6 +464,7 @@ &sdhci0 {
  * disable sdhci1
  */
 &sdhci1 {
+	status = "okay";
 	vmmc-supply = <&vdd_mmc1_sd>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_mmc1_pins_default>;
diff --git a/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-common.dtsi b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-common.dtsi
index be55494b1f3fc..a847209c3df52 100644
--- a/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-common.dtsi
@@ -43,6 +43,7 @@ AM65X_IOPAD(0x01b0, PIN_INPUT,          0)  /* (C25) MMC0_DS */
 
 /* eMMC */
 &sdhci0 {
+	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_mmc0_pins_default>;
 	bus-width = <8>;
-- 
2.39.2


