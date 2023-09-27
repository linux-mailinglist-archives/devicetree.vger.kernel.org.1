Return-Path: <devicetree+bounces-3819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E153D7B0391
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 14:12:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 0F191B20B66
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 12:12:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BD4A28684;
	Wed, 27 Sep 2023 12:12:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D705B2868A
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 12:12:14 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B75A0139;
	Wed, 27 Sep 2023 05:12:13 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38RCC0Zb108061;
	Wed, 27 Sep 2023 07:12:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695816720;
	bh=57mCXwxyotaHUWw5CpiJYMffjaQKYYAlBsulxLdV9xk=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=q1paZPdvUmnleRhs9qvueU9AIgTfbXF2DuO0uSoufVbhtGUF0Q0z4T8pOvQqVxyZG
	 Y/hg18+i3AOiJk67aC1YOcNe6c0trX+bUrR94X68/UiE9TfTCk4QbKsPqmF4Ux+8wB
	 xHiR1dzFDUFl3IBsUgIyX0vp9UKbFuDKfz/SsWjA=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38RCC0eu097399
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 27 Sep 2023 07:12:00 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 27
 Sep 2023 07:12:00 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 27 Sep 2023 07:12:00 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38RCBxxY101911;
	Wed, 27 Sep 2023 07:11:59 -0500
From: Jayesh Choudhary <j-choudhary@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <a-bhatia1@ti.com>
CC: <afd@ti.com>, <rogerq@kernel.org>, <s-vadapalli@ti.com>,
        <conor+dt@kernel.org>, <r-ravikumar@ti.com>, <sabiya.d@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <j-choudhary@ti.com>
Subject: [PATCH v10 1/5] arm64: dts: ti: k3-j784s4-main: Add system controller and SERDES lane mux
Date: Wed, 27 Sep 2023 17:41:53 +0530
Message-ID: <20230927121157.278592-2-j-choudhary@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230927121157.278592-1-j-choudhary@ti.com>
References: <20230927121157.278592-1-j-choudhary@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Siddharth Vadapalli <s-vadapalli@ti.com>

The system controller node manages the CTRL_MMR0 region.
Add serdes_ln_ctrl node which is used for controlling the SERDES lane mux.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
[j-choudhary@ti.com: Fix serdes_ln_ctrl node]
Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi | 40 ++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
index efed2d683f63..6d9a5a91fa75 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
@@ -5,6 +5,10 @@
  * Copyright (C) 2022 Texas Instruments Incorporated - https://www.ti.com/
  */
 
+#include <dt-bindings/mux/mux.h>
+
+#include "k3-serdes.h"
+
 &cbass_main {
 	msmc_ram: sram@70000000 {
 		compatible = "mmio-sram";
@@ -26,6 +30,42 @@ l3cache-sram@200000 {
 		};
 	};
 
+	scm_conf: bus@100000 {
+		compatible = "simple-bus";
+		reg = <0x00 0x00100000 0x00 0x1c000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x00 0x00 0x00100000 0x1c000>;
+
+		serdes_ln_ctrl: mux-controller@4080 {
+			compatible = "reg-mux";
+			reg = <0x00004080 0x30>;
+			#mux-control-cells = <1>;
+			mux-reg-masks = <0x4080 0x3>, <0x4084 0x3>, /* SERDES0 lane0/1 select */
+					<0x4088 0x3>, <0x408c 0x3>, /* SERDES0 lane2/3 select */
+					<0x4090 0x3>, <0x4094 0x3>, /* SERDES1 lane0/1 select */
+					<0x4098 0x3>, <0x409c 0x3>, /* SERDES1 lane2/3 select */
+					<0x40a0 0x3>, <0x40a4 0x3>, /* SERDES2 lane0/1 select */
+					<0x40a8 0x3>, <0x40ac 0x3>; /* SERDES2 lane2/3 select */
+			idle-states = <J784S4_SERDES0_LANE0_PCIE1_LANE0>,
+				      <J784S4_SERDES0_LANE1_PCIE1_LANE1>,
+				      <J784S4_SERDES0_LANE2_IP3_UNUSED>,
+				      <J784S4_SERDES0_LANE3_USB>,
+				      <J784S4_SERDES1_LANE0_PCIE0_LANE0>,
+				      <J784S4_SERDES1_LANE1_PCIE0_LANE1>,
+				      <J784S4_SERDES1_LANE2_PCIE0_LANE2>,
+				      <J784S4_SERDES1_LANE3_PCIE0_LANE3>,
+				      <J784S4_SERDES2_LANE0_IP2_UNUSED>,
+				      <J784S4_SERDES2_LANE1_IP2_UNUSED>,
+				      <J784S4_SERDES2_LANE2_QSGMII_LANE1>,
+				      <J784S4_SERDES2_LANE3_QSGMII_LANE2>,
+				      <J784S4_SERDES4_LANE0_EDP_LANE0>,
+				      <J784S4_SERDES4_LANE1_EDP_LANE1>,
+				      <J784S4_SERDES4_LANE2_EDP_LANE2>,
+				      <J784S4_SERDES4_LANE3_EDP_LANE3>;
+		};
+	};
+
 	gic500: interrupt-controller@1800000 {
 		compatible = "arm,gic-v3";
 		#address-cells = <2>;
-- 
2.25.1


