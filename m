Return-Path: <devicetree+bounces-24285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF4D80EA26
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 12:17:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18AAF281D85
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 11:17:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A2B75CD26;
	Tue, 12 Dec 2023 11:17:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Tqv+8XUT"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF753EA;
	Tue, 12 Dec 2023 03:16:56 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BCBGpKE033446;
	Tue, 12 Dec 2023 05:16:51 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702379811;
	bh=ijZ7Kd9e8XLuPz/p9aDC9vgO7qpudm0ugtsmHbdg3Ug=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=Tqv+8XUTsgBF2ecdhZFtWCMjjX6hyuTvAlmJtQgbtNMa807Js51VsHIrxNUQM6be9
	 KqGxAqhGlF9QRSvJTfY8Bi8/ogr2Xj4LVX6gH5InzjfGoQT8IT4sWMI+cZgRzakn2X
	 /8/A4Q54PqOKpz+i50m7wElVnNfYqK7LaIs0jihA=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BCBGprj049088
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 12 Dec 2023 05:16:51 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 12
 Dec 2023 05:16:51 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 12 Dec 2023 05:16:51 -0600
Received: from uda0132425.dhcp.ti.com (uda0132425.dhcp.ti.com [172.24.227.94])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BCBGd8Z094897;
	Tue, 12 Dec 2023 05:16:48 -0600
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH 3/3] arm64: dts: ti: k3-am6*: Add additional regs for DMA components
Date: Tue, 12 Dec 2023 16:46:34 +0530
Message-ID: <20231212111634.3515175-4-vigneshr@ti.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231212111634.3515175-1-vigneshr@ti.com>
References: <20231212111634.3515175-1-vigneshr@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Add additional reg properties for BCDMA and PKTDMA nodes which are
mostly used by bootloader components before Device Manager firmware
services are available, in order to setup DMA transfers.

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62-main.dtsi  | 18 ++++++++++++++----
 arch/arm64/boot/dts/ti/k3-am62a-main.dtsi | 18 ++++++++++++++----
 arch/arm64/boot/dts/ti/k3-am62p-main.dtsi | 18 ++++++++++++++----
 arch/arm64/boot/dts/ti/k3-am64-main.dtsi  | 18 ++++++++++++++----
 4 files changed, 56 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
index e5c64c86d1d5..4514a140ad38 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
@@ -121,8 +121,13 @@ main_bcdma: dma-controller@485c0100 {
 			      <0x00 0x4c000000 0x00 0x20000>,
 			      <0x00 0x4a820000 0x00 0x20000>,
 			      <0x00 0x4aa40000 0x00 0x20000>,
-			      <0x00 0x4bc00000 0x00 0x100000>;
-			reg-names = "gcfg", "bchanrt", "rchanrt", "tchanrt", "ringrt";
+			      <0x00 0x4bc00000 0x00 0x100000>,
+			      <0x00 0x48600000 0x00 0x8000>,
+			      <0x00 0x484a4000 0x00 0x2000>,
+			      <0x00 0x484c2000 0x00 0x2000>,
+			      <0x00 0x48420000 0x00 0x2000>;
+			reg-names = "gcfg", "bchanrt", "rchanrt", "tchanrt", "ringrt",
+				    "ring", "tchan", "rchan", "bchan";
 			msi-parent = <&inta_main_dmss>;
 			#dma-cells = <3>;
 
@@ -138,8 +143,13 @@ main_pktdma: dma-controller@485c0000 {
 			reg = <0x00 0x485c0000 0x00 0x100>,
 			      <0x00 0x4a800000 0x00 0x20000>,
 			      <0x00 0x4aa00000 0x00 0x40000>,
-			      <0x00 0x4b800000 0x00 0x400000>;
-			reg-names = "gcfg", "rchanrt", "tchanrt", "ringrt";
+			      <0x00 0x4b800000 0x00 0x400000>,
+			      <0x00 0x485e0000 0x00 0x20000>,
+			      <0x00 0x484a0000 0x00 0x4000>,
+			      <0x00 0x484c0000 0x00 0x2000>,
+			      <0x00 0x48430000 0x00 0x4000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt", "ringrt",
+				    "ring", "tchan", "rchan", "rflow";
 			msi-parent = <&inta_main_dmss>;
 			#dma-cells = <2>;
 
diff --git a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
index 4ae7fdc5221b..36947d9d644d 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
@@ -101,8 +101,13 @@ main_bcdma: dma-controller@485c0100 {
 			      <0x00 0x4c000000 0x00 0x20000>,
 			      <0x00 0x4a820000 0x00 0x20000>,
 			      <0x00 0x4aa40000 0x00 0x20000>,
-			      <0x00 0x4bc00000 0x00 0x100000>;
-			reg-names = "gcfg", "bchanrt", "rchanrt", "tchanrt", "ringrt";
+			      <0x00 0x4bc00000 0x00 0x100000>,
+			      <0x00 0x48600000 0x00 0x8000>,
+			      <0x00 0x484a4000 0x00 0x2000>,
+			      <0x00 0x484c2000 0x00 0x2000>,
+			      <0x00 0x48420000 0x00 0x2000>;
+			reg-names = "gcfg", "bchanrt", "rchanrt", "tchanrt", "ringrt",
+				    "ring", "tchan", "rchan", "bchan";
 			msi-parent = <&inta_main_dmss>;
 			#dma-cells = <3>;
 			ti,sci = <&dmsc>;
@@ -117,8 +122,13 @@ main_pktdma: dma-controller@485c0000 {
 			reg = <0x00 0x485c0000 0x00 0x100>,
 			      <0x00 0x4a800000 0x00 0x20000>,
 			      <0x00 0x4aa00000 0x00 0x40000>,
-			      <0x00 0x4b800000 0x00 0x400000>;
-			reg-names = "gcfg", "rchanrt", "tchanrt", "ringrt";
+			      <0x00 0x4b800000 0x00 0x400000>,
+			      <0x00 0x485e0000 0x00 0x20000>,
+			      <0x00 0x484a0000 0x00 0x4000>,
+			      <0x00 0x484c0000 0x00 0x2000>,
+			      <0x00 0x48430000 0x00 0x4000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt", "ringrt",
+				    "ring", "tchan", "rchan", "rflow";
 			msi-parent = <&inta_main_dmss>;
 			#dma-cells = <2>;
 			ti,sci = <&dmsc>;
diff --git a/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi
index 963758c7d377..21981489b4db 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi
@@ -101,8 +101,13 @@ main_bcdma: dma-controller@485c0100 {
 			      <0x00 0x4c000000 0x00 0x20000>,
 			      <0x00 0x4a820000 0x00 0x20000>,
 			      <0x00 0x4aa40000 0x00 0x20000>,
-			      <0x00 0x4bc00000 0x00 0x100000>;
-			reg-names = "gcfg", "bchanrt", "rchanrt", "tchanrt", "ringrt";
+			      <0x00 0x4bc00000 0x00 0x100000>,
+			      <0x00 0x48600000 0x00 0x8000>,
+			      <0x00 0x484a4000 0x00 0x2000>,
+			      <0x00 0x484c2000 0x00 0x2000>,
+			      <0x00 0x48420000 0x00 0x2000>;
+			reg-names = "gcfg", "bchanrt", "rchanrt", "tchanrt", "ringrt",
+				    "ring", "tchan", "rchan", "bchan";
 			msi-parent = <&inta_main_dmss>;
 			#dma-cells = <3>;
 
@@ -119,8 +124,13 @@ main_pktdma: dma-controller@485c0000 {
 			reg = <0x00 0x485c0000 0x00 0x100>,
 			      <0x00 0x4a800000 0x00 0x20000>,
 			      <0x00 0x4aa00000 0x00 0x40000>,
-			      <0x00 0x4b800000 0x00 0x400000>;
-			reg-names = "gcfg", "rchanrt", "tchanrt", "ringrt";
+			      <0x00 0x4b800000 0x00 0x400000>,
+			      <0x00 0x485e0000 0x00 0x20000>,
+			      <0x00 0x484a0000 0x00 0x4000>,
+			      <0x00 0x484c0000 0x00 0x2000>,
+			      <0x00 0x48430000 0x00 0x4000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt", "ringrt",
+				    "ring", "tchan", "rchan", "rflow";
 			msi-parent = <&inta_main_dmss>;
 			#dma-cells = <2>;
 			bootph-all;
diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
index 0be642bc1b86..bcdfd61c7d98 100644
--- a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
@@ -138,8 +138,13 @@ main_bcdma: dma-controller@485c0100 {
 			      <0x00 0x4c000000 0x00 0x20000>,
 			      <0x00 0x4a820000 0x00 0x20000>,
 			      <0x00 0x4aa40000 0x00 0x20000>,
-			      <0x00 0x4bc00000 0x00 0x100000>;
-			reg-names = "gcfg", "bchanrt", "rchanrt", "tchanrt", "ringrt";
+			      <0x00 0x4bc00000 0x00 0x100000>,
+			      <0x00 0x48600000 0x00 0x8000>,
+			      <0x00 0x484a4000 0x00 0x2000>,
+			      <0x00 0x484c2000 0x00 0x2000>,
+			      <0x00 0x48420000 0x00 0x2000>;
+			reg-names = "gcfg", "bchanrt", "rchanrt", "tchanrt", "ringrt",
+				    "ring", "tchan", "rchan", "bchan";
 			msi-parent = <&inta_main_dmss>;
 			#dma-cells = <3>;
 
@@ -155,8 +160,13 @@ main_pktdma: dma-controller@485c0000 {
 			reg = <0x00 0x485c0000 0x00 0x100>,
 			      <0x00 0x4a800000 0x00 0x20000>,
 			      <0x00 0x4aa00000 0x00 0x40000>,
-			      <0x00 0x4b800000 0x00 0x400000>;
-			reg-names = "gcfg", "rchanrt", "tchanrt", "ringrt";
+			      <0x00 0x4b800000 0x00 0x400000>,
+			      <0x00 0x485e0000 0x00 0x20000>,
+			      <0x00 0x484a0000 0x00 0x4000>,
+			      <0x00 0x484c0000 0x00 0x2000>,
+			      <0x00 0x48430000 0x00 0x4000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt", "ringrt",
+				    "ring", "tchan", "rchan", "rflow";
 			msi-parent = <&inta_main_dmss>;
 			#dma-cells = <2>;
 
-- 
2.43.0


