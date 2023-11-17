Return-Path: <devicetree+bounces-16778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C53B7EFB6A
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 23:29:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 473482813D5
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 22:29:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7815146548;
	Fri, 17 Nov 2023 22:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="XXSAA7C8"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C30ED75;
	Fri, 17 Nov 2023 14:29:48 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AHMTaq5022642;
	Fri, 17 Nov 2023 16:29:36 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700260176;
	bh=9+XEs6bTa5EaIb/Fnht9tu+lvCKam0eZ24LVg4Oa43Q=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=XXSAA7C8jyxO1qHNvX3EHEEBmRWQ618yTFSkTG8Uf9rTSWA8dsw1xrZAfP/b+cnP3
	 rln4UmOIZTBhM0wODzzBvSOnE6VbmVvfoty7gPFIBjjXYHE+rZTVwQxQkEXt1g8Gtd
	 h/Ehj9P2rPDNUdm4ayRICL0kikstLU7snhlvAl+8=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AHMTajl059085
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 17 Nov 2023 16:29:36 -0600
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 17
 Nov 2023 16:29:36 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 17 Nov 2023 16:29:36 -0600
Received: from lelv0326.itg.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AHMTWQI067965;
	Fri, 17 Nov 2023 16:29:35 -0600
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
Subject: [PATCH 5/8] arm64: dts: ti: k3-j721e: Convert serdes_ln_ctrl node into reg-mux
Date: Fri, 17 Nov 2023 16:29:27 -0600
Message-ID: <20231117222930.228688-5-afd@ti.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231117222930.228688-1-afd@ti.com>
References: <20231117222930.228688-1-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

This removes a dependency on the parent node being a syscon node.
Convert from mmio-mux to reg-mux adjusting node name and properties
as needed.

Signed-off-by: Andrew Davis <afd@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 746b9f8b1c640..d3d9b81fd5a08 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -45,15 +45,15 @@ scm_conf: scm-conf@100000 {
 		ranges = <0x0 0x0 0x00100000 0x1c000>;
 
 		serdes_ln_ctrl: mux-controller@4080 {
-			compatible = "mmio-mux";
-			reg = <0x00004080 0x50>;
+			compatible = "reg-mux";
+			reg = <0x4080 0x50>;
 			#mux-control-cells = <1>;
-			mux-reg-masks = <0x4080 0x3>, <0x4084 0x3>, /* SERDES0 lane0/1 select */
-					<0x4090 0x3>, <0x4094 0x3>, /* SERDES1 lane0/1 select */
-					<0x40a0 0x3>, <0x40a4 0x3>, /* SERDES2 lane0/1 select */
-					<0x40b0 0x3>, <0x40b4 0x3>, /* SERDES3 lane0/1 select */
-					<0x40c0 0x3>, <0x40c4 0x3>, <0x40c8 0x3>, <0x40cc 0x3>;
-					/* SERDES4 lane0/1/2/3 select */
+			mux-reg-masks = <0x0 0x3>, <0x4 0x3>, /* SERDES0 lane0/1 select */
+					<0x10 0x3>, <0x14 0x3>, /* SERDES1 lane0/1 select */
+					<0x20 0x3>, <0x24 0x3>, /* SERDES2 lane0/1 select */
+					<0x30 0x3>, <0x34 0x3>, /* SERDES3 lane0/1 select */
+					<0x40 0x3>, <0x44 0x3>, /* SERDES4 lane0/1 select */
+					<0x48 0x3>, <0x4c 0x3>; /* SERDES4 lane2/3 select */
 			idle-states = <J721E_SERDES0_LANE0_PCIE0_LANE0>, <J721E_SERDES0_LANE1_PCIE0_LANE1>,
 				      <J721E_SERDES1_LANE0_PCIE1_LANE0>, <J721E_SERDES1_LANE1_PCIE1_LANE1>,
 				      <J721E_SERDES2_LANE0_PCIE2_LANE0>, <J721E_SERDES2_LANE1_PCIE2_LANE1>,
-- 
2.39.2


