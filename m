Return-Path: <devicetree+bounces-9884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7597CEF21
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 07:40:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A6E58B20E88
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 05:40:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAC1846689;
	Thu, 19 Oct 2023 05:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="KLaJ2D9e"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19ECE46682
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 05:40:39 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44D64106;
	Wed, 18 Oct 2023 22:40:37 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39J5eUkf048182;
	Thu, 19 Oct 2023 00:40:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1697694030;
	bh=mxmfn5p4jwE0FKA7XQnihAxoax4shVjzMc8ApEB/8CQ=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=KLaJ2D9e+6oQnjyIyr7S4xvM3bDAixGKstFavkGss8iFakGIBnkXH8/8CpJX87LEh
	 atRjvdgOMZKo5ac5+wkuU/QNoIcFfrQ6c2tgaaQIkOlvATNLuKIfF6v6Su2vHJBtqs
	 8azrFoEJ9jTVmCEHlEgFVGTLAB1VXB2DFOeuHCXk=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39J5eUWT104316
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 19 Oct 2023 00:40:30 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 19
 Oct 2023 00:40:30 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 19 Oct 2023 00:40:30 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39J5eTj8031256;
	Thu, 19 Oct 2023 00:40:29 -0500
From: Jayesh Choudhary <j-choudhary@ti.com>
To: <vigneshr@ti.com>, <nm@ti.com>, <a-bhatia1@ti.com>, <rogerq@kernel.org>
CC: <afd@ti.com>, <s-vadapalli@ti.com>, <conor+dt@kernel.org>,
        <r-ravikumar@ti.com>, <sabiya.d@ti.com>, <kristo@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <j-choudhary@ti.com>
Subject: [PATCH v12 3/5] arm64: dts: ti: k3-j784s4-main: Add DSS and DP-bridge node
Date: Thu, 19 Oct 2023 11:10:20 +0530
Message-ID: <20231019054022.175163-4-j-choudhary@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231019054022.175163-1-j-choudhary@ti.com>
References: <20231019054022.175163-1-j-choudhary@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

From: Rahul T R <r-ravikumar@ti.com>

Add DSS and DP-bridge node for J784S4 SoC. DSS IP in J784S4 is
same as DSS IP in J721E, so same compatible is being used.
The DP is Cadence MHDP8546.
Disable them by default as nodes are missing port definition
and phy link configurations which are added later in platform
dt file.

Signed-off-by: Rahul T R <r-ravikumar@ti.com>
[j-choudhary@ti.com: move dss & mhdp node together in main, fix dss node]
Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>
Reviewed-by: Aradhya Bhatia <a-bhatia1@ti.com>
Reviewed-by: Roger Quadros <rogerq@kernel.org>
---
 arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi | 69 ++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
index a8642453b710..d89bcddcfe3d 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
@@ -1996,4 +1996,73 @@ watchdog18: watchdog@2550000 {
 		/* reserved for MAIN_R5F2_1 */
 		status = "reserved";
 	};
+
+	mhdp: bridge@a000000 {
+		compatible = "ti,j721e-mhdp8546";
+		reg = <0x0 0xa000000 0x0 0x30a00>,
+		      <0x0 0x4f40000 0x0 0x20>;
+		reg-names = "mhdptx", "j721e-intg";
+		clocks = <&k3_clks 217 11>;
+		interrupt-parent = <&gic500>;
+		interrupts = <GIC_SPI 614 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&k3_pds 217 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
+
+		dp0_ports: ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			/* Remote-endpoints are on the boards so
+			 * ports are defined in the platform dt file.
+			 */
+		};
+	};
+
+	dss: dss@4a00000 {
+		compatible = "ti,j721e-dss";
+		reg = <0x00 0x04a00000 0x00 0x10000>, /* common_m */
+		      <0x00 0x04a10000 0x00 0x10000>, /* common_s0*/
+		      <0x00 0x04b00000 0x00 0x10000>, /* common_s1*/
+		      <0x00 0x04b10000 0x00 0x10000>, /* common_s2*/
+		      <0x00 0x04a20000 0x00 0x10000>, /* vidl1 */
+		      <0x00 0x04a30000 0x00 0x10000>, /* vidl2 */
+		      <0x00 0x04a50000 0x00 0x10000>, /* vid1 */
+		      <0x00 0x04a60000 0x00 0x10000>, /* vid2 */
+		      <0x00 0x04a70000 0x00 0x10000>, /* ovr1 */
+		      <0x00 0x04a90000 0x00 0x10000>, /* ovr2 */
+		      <0x00 0x04ab0000 0x00 0x10000>, /* ovr3 */
+		      <0x00 0x04ad0000 0x00 0x10000>, /* ovr4 */
+		      <0x00 0x04a80000 0x00 0x10000>, /* vp1 */
+		      <0x00 0x04aa0000 0x00 0x10000>, /* vp1 */
+		      <0x00 0x04ac0000 0x00 0x10000>, /* vp1 */
+		      <0x00 0x04ae0000 0x00 0x10000>, /* vp4 */
+		      <0x00 0x04af0000 0x00 0x10000>; /* wb */
+		reg-names = "common_m", "common_s0",
+			    "common_s1", "common_s2",
+			    "vidl1", "vidl2","vid1","vid2",
+			    "ovr1", "ovr2", "ovr3", "ovr4",
+			    "vp1", "vp2", "vp3", "vp4",
+			    "wb";
+		clocks = <&k3_clks 218 0>,
+			 <&k3_clks 218 2>,
+			 <&k3_clks 218 5>,
+			 <&k3_clks 218 14>,
+			 <&k3_clks 218 18>;
+		clock-names = "fck", "vp1", "vp2", "vp3", "vp4";
+		power-domains = <&k3_pds 218 TI_SCI_PD_EXCLUSIVE>;
+		interrupts = <GIC_SPI 602 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 603 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 604 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 605 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "common_m",
+				  "common_s0",
+				  "common_s1",
+				  "common_s2";
+		status = "disabled";
+
+		dss_ports: ports {
+			/* Ports that DSS drives are platform specific
+			 * so they are defined in platform dt file.
+			 */
+		};
+	};
 };
-- 
2.25.1


