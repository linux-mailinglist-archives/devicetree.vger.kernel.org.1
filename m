Return-Path: <devicetree+bounces-2282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FB27AA6EA
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 04:11:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A57E02810E4
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 02:11:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6DAD394;
	Fri, 22 Sep 2023 02:11:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3C7377
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 02:11:45 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3559FCE;
	Thu, 21 Sep 2023 19:11:44 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38LA0oR8085102;
	Thu, 21 Sep 2023 05:00:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695290450;
	bh=EsvOrBq7yihY3/OtNp4KrVyXfQle0crBb8XNiHbDFO0=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=oSAKg0QR5KV/xt9mePeF/2xZCVPOWmF2STv/s36X85SjJwXNBgY6w+AIrUO+5ovJ8
	 65wqZ8EtefNXVU/Ini2/NuzEtuwQTfOd3y9GcehwOaGD4MTwrB8JQvbBv9ZZgZZxJs
	 zdGPjesgR41mhyHr4+wuBOKrjHiHxGB5YvBRpbBQ=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38LA0olY024130
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 21 Sep 2023 05:00:50 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 21
 Sep 2023 05:00:49 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 21 Sep 2023 05:00:49 -0500
Received: from uda0500640.dal.design.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38LA0dD5060269;
	Thu, 21 Sep 2023 05:00:47 -0500
From: Ravi Gunasekaran <r-gunasekaran@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>
CC: <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <sinthu.raja@ti.com>,
        <r-gunasekaran@ti.com>
Subject: [PATCH 2/3] arm64: dts: ti: k3-am68-sk: Add DT node for PCIe
Date: Thu, 21 Sep 2023 15:30:38 +0530
Message-ID: <20230921100039.19897-3-r-gunasekaran@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230921100039.19897-1-r-gunasekaran@ti.com>
References: <20230921100039.19897-1-r-gunasekaran@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Sinthu Raja <sinthu.raja@ti.com>

AM68 Starter kit features with one PCIe M.2 Key M connector
interfaced via two SerDes lanes. Update the SerDes configuration
for PCIe.

Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
Signed-off-by: Ravi Gunasekaran <r-gunasekaran@ti.com>
---
 .../boot/dts/ti/k3-am68-sk-base-board.dts     | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts b/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
index 5df5946687b3..81c2307c77f9 100644
--- a/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
@@ -553,3 +553,32 @@
 		};
 	};
 };
+
+&serdes_ln_ctrl {
+	idle-states = <J721S2_SERDES0_LANE0_PCIE1_LANE0>, <J721S2_SERDES0_LANE1_PCIE1_LANE1>,
+		      <J721S2_SERDES0_LANE2_USB_SWAP>, <J721S2_SERDES0_LANE3_USB>;
+};
+
+&serdes_refclk {
+	clock-frequency = <100000000>;
+};
+
+&serdes0 {
+	status = "okay";
+
+	serdes0_pcie_link: phy@0 {
+		reg = <0>;
+		cdns,num-lanes = <2>;
+		#phy-cells = <0>;
+		cdns,phy-type = <PHY_TYPE_PCIE>;
+		resets = <&serdes_wiz0 1>, <&serdes_wiz0 2>;
+	};
+};
+
+&pcie1_rc {
+	status = "okay";
+	reset-gpios = <&exp1 10 GPIO_ACTIVE_HIGH>;
+	phys = <&serdes0_pcie_link>;
+	phy-names = "pcie-phy";
+	num-lanes = <2>;
+};
-- 
2.17.1


