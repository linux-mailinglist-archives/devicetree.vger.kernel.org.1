Return-Path: <devicetree+bounces-21958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 14454805DDC
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 19:43:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1EC131C210A9
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 18:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 439C6391;
	Tue,  5 Dec 2023 18:43:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
X-Greylist: delayed 1222 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 05 Dec 2023 10:43:22 PST
Received: from finn.localdomain (finn.gateworks.com [108.161.129.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4636410D3;
	Tue,  5 Dec 2023 10:43:22 -0800 (PST)
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139] helo=tharvey.pdc.gateworks.com)
	by finn.localdomain with esmtp (Exim 4.93)
	(envelope-from <tharvey@gateworks.com>)
	id 1rAa4A-00BDe6-Vq; Tue, 05 Dec 2023 18:22:43 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Tim Harvey <tharvey@gateworks.com>
Subject: [PATCH] arm64: dts: imx8mm-venice-gw7: Fix pci sub-nodes
Date: Tue,  5 Dec 2023 10:22:41 -0800
Message-Id: <20231205182241.2550284-1-tharvey@gateworks.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Several schema warnings were fixed in commit
d61c5068729a ("arm64: dts: imx8mm-venice-gw7: Fix pci sub-nodes")
however the node names and the ethernet NIC node were not quite correct.

Fix the node names as the ethernet device should have a node name of
'ethernet' and remove the device_type, #address-cells, #size-cells, and
ranges properties that should only be on busses/bridges.

Fixes: d61c5068729a ("arm64: dts: imx8mm-venice-gw7: Fix pci sub-nodes")
Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 .../dts/freescale/imx8mm-venice-gw72xx.dtsi    | 18 +++++++-----------
 .../dts/freescale/imx8mm-venice-gw73xx.dtsi    | 18 +++++++-----------
 .../dts/freescale/imx8mm-venice-gw7902.dts     | 10 +++-------
 3 files changed, 17 insertions(+), 29 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx.dtsi
index a337e8f20441..31f16f7cf37c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx.dtsi
@@ -157,33 +157,29 @@ &pcie0 {
 				 <&clk IMX8MM_SYS_PLL2_250M>;
 	status = "okay";
 
-	pcie@0,0 {
-		reg = <0x0000 0 0 0 0>;
+	pcie@0 {
 		device_type = "pci";
+		reg = <0x0000 0 0 0 0>;
 		#address-cells = <3>;
 		#size-cells = <2>;
 		ranges;
 
-		pcie@0,0 {
-			reg = <0x0000 0 0 0 0>;
+		pcie@0 {
 			device_type = "pci";
+			reg = <0x0000 0 0 0 0>;
 			#address-cells = <3>;
 			#size-cells = <2>;
 			ranges;
 
-			pcie@3,0 {
-				reg = <0x1800 0 0 0 0>;
+			pcie@3 {
 				device_type = "pci";
+				reg = <0x1800 0 0 0 0>;
 				#address-cells = <3>;
 				#size-cells = <2>;
 				ranges;
 
-				eth1: pcie@0,0 {
+				eth1: ethernet@0 {
 					reg = <0x0000 0 0 0 0>;
-					device_type = "pci";
-					#address-cells = <3>;
-					#size-cells = <2>;
-					ranges;
 
 					local-mac-address = [00 00 00 00 00 00];
 				};
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi
index 2247d1c4e2af..6f5a6d91c95e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi
@@ -177,33 +177,29 @@ &pcie0 {
 				 <&clk IMX8MM_SYS_PLL2_250M>;
 	status = "okay";
 
-	pcie@0,0 {
-		reg = <0x0000 0 0 0 0>;
+	pcie@0 {
 		device_type = "pci";
+		reg = <0x0000 0 0 0 0>;
 		#address-cells = <3>;
 		#size-cells = <2>;
 		ranges;
 
-		pcie@0,0 {
-			reg = <0x0000 0 0 0 0>;
+		pcie@0 {
 			device_type = "pci";
+			reg = <0x0000 0 0 0 0>;
 			#address-cells = <3>;
 			#size-cells = <2>;
 			ranges;
 
-			pcie@4,0 {
-				reg = <0x2000 0 0 0 0>;
+			pcie@4 {
 				device_type = "pci";
+				reg = <0x2000 0 0 0 0>;
 				#address-cells = <3>;
 				#size-cells = <2>;
 				ranges;
 
-				eth1: pcie@0,0 {
+				eth1: ethernet@0 {
 					reg = <0x0000 0 0 0 0>;
-					device_type = "pci";
-					#address-cells = <3>;
-					#size-cells = <2>;
-					ranges;
 
 					local-mac-address = [00 00 00 00 00 00];
 				};
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
index 7ef17c2b0e9d..4bb22fdc5d2e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
@@ -633,19 +633,15 @@ &pcie0 {
 				 <&clk IMX8MM_SYS_PLL2_250M>;
 	status = "okay";
 
-	pcie@0,0 {
-		reg = <0x0000 0 0 0 0>;
+	pcie@0 {
 		device_type = "pci";
+		reg = <0x0000 0 0 0 0>;
 		#address-cells = <3>;
 		#size-cells = <2>;
 		ranges;
 
-		eth1: pcie@0,0 {
+		eth1: ethernet@0 {
 			reg = <0x0000 0 0 0 0>;
-			device_type = "pci";
-			#address-cells = <3>;
-			#size-cells = <2>;
-			ranges;
 
 			local-mac-address = [00 00 00 00 00 00];
 		};
-- 
2.25.1


