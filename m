Return-Path: <devicetree+bounces-16711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC0B7EF644
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 17:33:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BAE552813B3
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 16:33:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 648DF32C8B;
	Fri, 17 Nov 2023 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="p8ZiYuR3"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A08A196;
	Fri, 17 Nov 2023 08:33:50 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AHGXfJD000580;
	Fri, 17 Nov 2023 10:33:41 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700238821;
	bh=TRVFdbxp5TfB9zohoIzap5ZelvMfSVt1e9KtfukunVc=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=p8ZiYuR3j+zQLfETJ0OmYQF/VmtESq62TxInPoZl0cHr73sLuMFmGo3m1tknDdK7h
	 0gFgZLqn1snrVLtvW3Hv4JzG837Ds+3C4Pz9dibBXMe9MYqa0DG6VsEqWl4I/kRFWL
	 F/n/0gSngu9bBnv4bHaWyU0pj9qwkUHuL2o7oQdM=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AHGXfpY097084
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 17 Nov 2023 10:33:41 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 17
 Nov 2023 10:33:41 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 17 Nov 2023 10:33:41 -0600
Received: from fllv0039.itg.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AHGXeYg127988;
	Fri, 17 Nov 2023 10:33:41 -0600
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
Subject: [PATCH 2/2] arm64: dts: ti: k3-am64: Enable SDHCI nodes at the board level
Date: Fri, 17 Nov 2023 10:33:39 -0600
Message-ID: <20231117163339.89952-2-afd@ti.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231117163339.89952-1-afd@ti.com>
References: <20231117163339.89952-1-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

SDHCI nodes defined in the top-level AM64 SoC dtsi files are incomplete
and will not be functional unless they are extended.

As the attached SD/eMMC is only known about at the board integration level,
these nodes should only be enabled when provided with this information.

Disable the SDHCI nodes in the dtsi files and only enable the ones that
are actually pinned out on a given board.

Signed-off-by: Andrew Davis <afd@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am64-main.dtsi                 | 2 ++
 arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi          | 1 +
 arch/arm64/boot/dts/ti/k3-am642-evm.dts                  | 6 ++++--
 arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-rdk.dts | 1 +
 arch/arm64/boot/dts/ti/k3-am642-sk.dts                   | 4 +++-
 arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts   | 1 -
 arch/arm64/boot/dts/ti/k3-am642-tqma64xxl.dtsi           | 1 +
 7 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
index 0be642bc1b86d..c3300c36fdbcb 100644
--- a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
@@ -623,6 +623,7 @@ sdhci0: mmc@fa10000 {
 		ti,otap-del-sel-mmc-hs = <0x0>;
 		ti,otap-del-sel-ddr52 = <0x6>;
 		ti,otap-del-sel-hs200 = <0x7>;
+		status = "disabled";
 	};
 
 	sdhci1: mmc@fa00000 {
@@ -641,6 +642,7 @@ sdhci1: mmc@fa00000 {
 		ti,otap-del-sel-sdr104 = <0x6>;
 		ti,otap-del-sel-ddr50 = <0x9>;
 		ti,clkbuf-sel = <0x7>;
+		status = "disabled";
 	};
 
 	cpsw3g: ethernet@8000000 {
diff --git a/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi b/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
index f87f09d83c956..b8f844f667afc 100644
--- a/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
@@ -211,6 +211,7 @@ flash@0 {
 };
 
 &sdhci0 {
+	status = "okay";
 	bus-width = <8>;
 	non-removable;
 	ti,driver-strength-ohm = <50>;
diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
index 4dba18941015d..256606be56fef 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
@@ -487,17 +487,19 @@ eeprom@0 {
 	};
 };
 
+/* eMMC */
 &sdhci0 {
-	/* emmc */
+	status = "okay";
 	bus-width = <8>;
 	non-removable;
 	ti,driver-strength-ohm = <50>;
 	disable-wp;
 };
 
+/* SD/MMC */
 &sdhci1 {
-	/* SD/MMC */
 	bootph-all;
+	status = "okay";
 	vmmc-supply = <&vdd_mmc1>;
 	pinctrl-names = "default";
 	bus-width = <4>;
diff --git a/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-rdk.dts b/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-rdk.dts
index 9175e96842d82..53b64e55413f9 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-rdk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-rdk.dts
@@ -264,6 +264,7 @@ &main_uart1 {
 };
 
 &sdhci1 {
+	status = "okay";
 	vmmc-supply = <&vcc_3v3_mmc>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&main_mmc1_pins_default>;
diff --git a/arch/arm64/boot/dts/ti/k3-am642-sk.dts b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
index f29c8a9b59ba7..bffbd234f715a 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
@@ -439,6 +439,7 @@ &mcu_gpio0 {
 };
 
 &sdhci0 {
+	status = "okay";
 	vmmc-supply = <&wlan_en>;
 	bus-width = <4>;
 	non-removable;
@@ -458,9 +459,10 @@ wlcore: wlcore@2 {
 	};
 };
 
+/* SD/MMC */
 &sdhci1 {
-	/* SD/MMC */
 	bootph-all;
+	status = "okay";
 	vmmc-supply = <&vdd_mmc1>;
 	pinctrl-names = "default";
 	bus-width = <4>;
diff --git a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
index d95d80076a427..55102d35cecc1 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
@@ -425,7 +425,6 @@ &sdhci1 {
 	ti,driver-strength-ohm = <50>;
 	ti,fails-without-test-cd;
 	/* Enabled by overlay */
-	status = "disabled";
 };
 
 &tscadc0 {
diff --git a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl.dtsi b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl.dtsi
index d82d4a98306a7..6c785eff7d2ff 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl.dtsi
@@ -219,6 +219,7 @@ partitions {
 };
 
 &sdhci0 {
+	status = "okay";
 	non-removable;
 	disable-wp;
 	no-sdio;
-- 
2.39.2


