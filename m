Return-Path: <devicetree+bounces-24783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E54C8113B4
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 14:53:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C7C9B1F229EF
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 13:53:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECC832E3FF;
	Wed, 13 Dec 2023 13:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="dBvRpnne"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D9392D63;
	Wed, 13 Dec 2023 05:52:03 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BDDprYx026786;
	Wed, 13 Dec 2023 07:51:53 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702475513;
	bh=bhumMpBR4LJkmxiweDxOklgbVuS1BkjYIlFp4Cmmodc=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=dBvRpnneGZoYt8bWiraEBycBgcSZuYSv6IszAlJYeUiCJ99OLMmR2tZ5C93W+wFlA
	 sA1/GVMjje6D7IZuDX9/z1P5+jQM7AKSxY6mIAFN+Bx3tZFN94yTE6377FpQ02qTre
	 zxPbYxWR8AGxJohEu/wgkQEd6Nke0k6vVQoCqVG4=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BDDprJP007777
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 13 Dec 2023 07:51:53 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 13
 Dec 2023 07:51:53 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 13 Dec 2023 07:51:53 -0600
Received: from uda0132425.dhcp.ti.com (uda0132425.dhcp.ti.com [172.24.227.94])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BDDpeLE101220;
	Wed, 13 Dec 2023 07:51:50 -0600
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <j-luthra@ti.com>
Subject: [PATCH v2 3/3] arm64: dts: ti: k3-am6*: Add additional regs for DMA components
Date: Wed, 13 Dec 2023 19:21:38 +0530
Message-ID: <20231213135138.929517-4-vigneshr@ti.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213135138.929517-1-vigneshr@ti.com>
References: <20231213135138.929517-1-vigneshr@ti.com>
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
index 49000a97c153..357970f1134f 100644
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
+			      <0x00 0x485e0000 0x00 0x10000>,
+			      <0x00 0x484a0000 0x00 0x2000>,
+			      <0x00 0x484c0000 0x00 0x2000>,
+			      <0x00 0x48430000 0x00 0x1000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt", "ringrt",
+				    "ring", "tchan", "rchan", "rflow";
 			msi-parent = <&inta_main_dmss>;
 			#dma-cells = <2>;
 
diff --git a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
index 2338a92a4c9f..f0b8c9ab1459 100644
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
+			      <0x00 0x485e0000 0x00 0x10000>,
+			      <0x00 0x484a0000 0x00 0x2000>,
+			      <0x00 0x484c0000 0x00 0x2000>,
+			      <0x00 0x48430000 0x00 0x1000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt", "ringrt",
+				    "ring", "tchan", "rchan", "rflow";
 			msi-parent = <&inta_main_dmss>;
 			#dma-cells = <2>;
 			ti,sci = <&dmsc>;
diff --git a/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62p-main.dtsi
index 963758c7d377..4c51bae06b57 100644
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
+			      <0x00 0x485e0000 0x00 0x10000>,
+			      <0x00 0x484a0000 0x00 0x2000>,
+			      <0x00 0x484c0000 0x00 0x2000>,
+			      <0x00 0x48430000 0x00 0x1000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt", "ringrt",
+				    "ring", "tchan", "rchan", "rflow";
 			msi-parent = <&inta_main_dmss>;
 			#dma-cells = <2>;
 			bootph-all;
diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
index c7be378492e2..e348114f42e0 100644
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


