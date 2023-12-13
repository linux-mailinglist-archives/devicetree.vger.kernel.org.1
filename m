Return-Path: <devicetree+bounces-24785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C968113C3
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 14:54:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D6BC2811A0
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 13:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ADCC2DF62;
	Wed, 13 Dec 2023 13:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="HpeKOBdY"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E5CA272B;
	Wed, 13 Dec 2023 05:51:59 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BDDpo1r082168;
	Wed, 13 Dec 2023 07:51:50 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702475510;
	bh=0qQebMJ7bQkjmnZJr+klT2pzAR9oH/HwmktifuqGtBE=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=HpeKOBdYWig182j+7eH8naiY3vh6+T+9CDeuERmOezu56IY369FZnJiviU9PxiEtN
	 0qWC8aWIu5/wkCTHe8cBKcKPnovvwff2ONXdXg20L2kHk44+gXVXxUwISRI4qkva9S
	 vn03XjffrB/eGEW2PQSeWuBcaa7ftiNmqpCHNfLM=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BDDpolk041274
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 13 Dec 2023 07:51:50 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 13
 Dec 2023 07:51:50 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 13 Dec 2023 07:51:50 -0600
Received: from uda0132425.dhcp.ti.com (uda0132425.dhcp.ti.com [172.24.227.94])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BDDpeLD101220;
	Wed, 13 Dec 2023 07:51:47 -0600
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
Subject: [PATCH v2 2/3] arm64: dts: ti: k3-j7*: Add additional regs for DMA components
Date: Wed, 13 Dec 2023 19:21:37 +0530
Message-ID: <20231213135138.929517-3-vigneshr@ti.com>
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

From: Manorit Chawdhry <m-chawdhry@ti.com>

Add additional reg properties for UDMA and RingAcc nodes which are
mostly used by bootloader components before Device Manager firmware
services are available, in order to setup DMA transfers.

Signed-off-by: Manorit Chawdhry <m-chawdhry@ti.com>
Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi        | 8 ++++++--
 arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi  | 8 ++++++--
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi        | 8 ++++++--
 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi  | 8 ++++++--
 arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi       | 8 ++++++--
 arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi | 8 ++++++--
 arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi       | 8 ++++++--
 arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi | 8 ++++++--
 8 files changed, 48 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
index 264913f83287..b8424994ac5f 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
@@ -281,8 +281,12 @@ main_udmap: dma-controller@31150000 {
 			compatible = "ti,j721e-navss-main-udmap";
 			reg = <0x00 0x31150000 0x00 0x100>,
 			      <0x00 0x34000000 0x00 0x100000>,
-			      <0x00 0x35000000 0x00 0x100000>;
-			reg-names = "gcfg", "rchanrt", "tchanrt";
+			      <0x00 0x35000000 0x00 0x100000>,
+			      <0x00 0x30b00000 0x00 0x4000>,
+			      <0x00 0x30c00000 0x00 0x4000>,
+			      <0x00 0x30d00000 0x00 0x4000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt",
+				    "tchan", "rchan", "rflow";
 			msi-parent = <&main_udmass_inta>;
 			#dma-cells = <1>;
 
diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
index 672cb2acc1be..60b26374ae0c 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
@@ -353,8 +353,12 @@ mcu_udmap: dma-controller@285c0000 {
 			compatible = "ti,j721e-navss-mcu-udmap";
 			reg = <0x00 0x285c0000 0x00 0x100>,
 			      <0x00 0x2a800000 0x00 0x40000>,
-			      <0x00 0x2aa00000 0x00 0x40000>;
-			reg-names = "gcfg", "rchanrt", "tchanrt";
+			      <0x00 0x2aa00000 0x00 0x40000>,
+			      <0x00 0x284a0000 0x00 0x4000>,
+			      <0x00 0x284c0000 0x00 0x4000>,
+			      <0x00 0x28400000 0x00 0x2000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt",
+				    "tchan", "rchan", "rflow";
 			msi-parent = <&main_udmass_inta>;
 			#dma-cells = <1>;
 
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 746b9f8b1c64..2569b4c08ffb 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -382,8 +382,12 @@ main_udmap: dma-controller@31150000 {
 			compatible = "ti,j721e-navss-main-udmap";
 			reg = <0x0 0x31150000 0x0 0x100>,
 			      <0x0 0x34000000 0x0 0x100000>,
-			      <0x0 0x35000000 0x0 0x100000>;
-			reg-names = "gcfg", "rchanrt", "tchanrt";
+			      <0x0 0x35000000 0x0 0x100000>,
+			      <0x0 0x30b00000 0x0 0x20000>,
+			      <0x0 0x30c00000 0x0 0x10000>,
+			      <0x0 0x30d00000 0x0 0x8000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt",
+				    "tchan", "rchan", "rflow";
 			msi-parent = <&main_udmass_inta>;
 			#dma-cells = <1>;
 
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
index 8f259efe3af9..a74912d9e4da 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
@@ -475,8 +475,12 @@ mcu_udmap: dma-controller@285c0000 {
 			compatible = "ti,j721e-navss-mcu-udmap";
 			reg = <0x0 0x285c0000 0x0 0x100>,
 			      <0x0 0x2a800000 0x0 0x40000>,
-			      <0x0 0x2aa00000 0x0 0x40000>;
-			reg-names = "gcfg", "rchanrt", "tchanrt";
+			      <0x0 0x2aa00000 0x0 0x40000>,
+			      <0x0 0x284a0000 0x0 0x4000>,
+			      <0x0 0x284c0000 0x0 0x4000>,
+			      <0x0 0x28400000 0x0 0x2000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt",
+				    "tchan", "rchan", "rflow";
 			msi-parent = <&main_udmass_inta>;
 			#dma-cells = <1>;
 
diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
index b03731b53a26..bf959312fad0 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
@@ -1086,8 +1086,12 @@ main_udmap: dma-controller@31150000 {
 			compatible = "ti,j721e-navss-main-udmap";
 			reg = <0x0 0x31150000 0x0 0x100>,
 			      <0x0 0x34000000 0x0 0x80000>,
-			      <0x0 0x35000000 0x0 0x200000>;
-			reg-names = "gcfg", "rchanrt", "tchanrt";
+			      <0x0 0x35000000 0x0 0x200000>,
+			      <0x0 0x30b00000 0x0 0x20000>,
+			      <0x0 0x30c00000 0x0 0x8000>,
+			      <0x0 0x30d00000 0x0 0x4000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt",
+				    "tchan", "rchan", "rflow";
 			msi-parent = <&main_udmass_inta>;
 			#dma-cells = <1>;
 
diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
index d9e2cab8a8c5..80aa33c58a45 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
@@ -478,8 +478,12 @@ mcu_udmap: dma-controller@285c0000 {
 			compatible = "ti,j721e-navss-mcu-udmap";
 			reg = <0x0 0x285c0000 0x0 0x100>,
 			      <0x0 0x2a800000 0x0 0x40000>,
-			      <0x0 0x2aa00000 0x0 0x40000>;
-			reg-names = "gcfg", "rchanrt", "tchanrt";
+			      <0x0 0x2aa00000 0x0 0x40000>,
+			      <0x0 0x284a0000 0x0 0x4000>,
+			      <0x0 0x284c0000 0x0 0x4000>,
+			      <0x0 0x28400000 0x0 0x2000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt",
+				    "tchan", "rchan", "rflow";
 			msi-parent = <&main_udmass_inta>;
 			#dma-cells = <1>;
 
diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
index d89bcddcfe3d..827328450f96 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
@@ -1188,8 +1188,12 @@ main_udmap: dma-controller@31150000 {
 			compatible = "ti,j721e-navss-main-udmap";
 			reg = <0x00 0x31150000 0x00 0x100>,
 			      <0x00 0x34000000 0x00 0x80000>,
-			      <0x00 0x35000000 0x00 0x200000>;
-			reg-names = "gcfg", "rchanrt", "tchanrt";
+			      <0x00 0x35000000 0x00 0x200000>,
+			      <0x00 0x30b00000 0x00 0x20000>,
+			      <0x00 0x30c00000 0x00 0x8000>,
+			      <0x00 0x30d00000 0x00 0x4000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt",
+				    "tchan", "rchan", "rflow";
 			msi-parent = <&main_udmass_inta>;
 			#dma-cells = <1>;
 
diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
index 119f4e2cc0d1..3902a921d7e5 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
@@ -486,8 +486,12 @@ mcu_udmap: dma-controller@285c0000 {
 			compatible = "ti,j721e-navss-mcu-udmap";
 			reg = <0x00 0x285c0000 0x00 0x100>,
 			      <0x00 0x2a800000 0x00 0x40000>,
-			      <0x00 0x2aa00000 0x00 0x40000>;
-			reg-names = "gcfg", "rchanrt", "tchanrt";
+			      <0x00 0x2aa00000 0x00 0x40000>,
+			      <0x00 0x284a0000 0x00 0x4000>,
+			      <0x00 0x284c0000 0x00 0x4000>,
+			      <0x00 0x28400000 0x00 0x2000>;
+			reg-names = "gcfg", "rchanrt", "tchanrt",
+				    "tchan", "rchan", "rflow";
 			msi-parent = <&main_udmass_inta>;
 			#dma-cells = <1>;
 
-- 
2.43.0


