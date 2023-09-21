Return-Path: <devicetree+bounces-2285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AF03A7AA6F0
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 04:13:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 61FC6281127
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 02:13:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B7DB377;
	Fri, 22 Sep 2023 02:13:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12CC27F2
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 02:13:46 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F84918F;
	Thu, 21 Sep 2023 19:13:45 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38LA0sm4085113;
	Thu, 21 Sep 2023 05:00:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695290454;
	bh=Qkoww/k25TgszooUgrPKS3E7tVrUzh5u0Uv5XvCYNmo=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=k7H8NOXWPgdULfUKNt6HBntwkvjKmtvB0jjCcD3BoQQbl7eu5tttnPchHvchM+BgE
	 nMOTcFeushghOVxXfcEruPjpSPz3utax34E7KPp0PY2ZArWHk91wdRPu0L/DmpI56y
	 IMsw//1R4WyigFghTB0u0rLqCzOnYmxvIKqU8RTw=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38LA0sM4078214
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 21 Sep 2023 05:00:54 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 21
 Sep 2023 05:00:53 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 21 Sep 2023 05:00:53 -0500
Received: from uda0500640.dal.design.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38LA0dD6060269;
	Thu, 21 Sep 2023 05:00:50 -0500
From: Ravi Gunasekaran <r-gunasekaran@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>
CC: <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <sinthu.raja@ti.com>,
        <r-gunasekaran@ti.com>
Subject: [PATCH 3/3] arm64: dts: ti: k3-am68-sk: Add DT node for USB
Date: Thu, 21 Sep 2023 15:30:39 +0530
Message-ID: <20230921100039.19897-4-r-gunasekaran@ti.com>
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

AM68 Starter kit has a USB3 hub that connects to the SerDes0 Lane 2.
Update the SerDes configuration to support USB3.

Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
Signed-off-by: Ravi Gunasekaran <r-gunasekaran@ti.com>
---
 .../boot/dts/ti/k3-am68-sk-base-board.dts     | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts b/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
index 81c2307c77f9..1e1a82f9d2b8 100644
--- a/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
@@ -573,6 +573,15 @@
 		cdns,phy-type = <PHY_TYPE_PCIE>;
 		resets = <&serdes_wiz0 1>, <&serdes_wiz0 2>;
 	};
+
+	serdes0_usb_link: phy@2 {
+		status = "okay";
+		reg = <2>;
+		cdns,num-lanes = <1>;
+		#phy-cells = <0>;
+		cdns,phy-type = <PHY_TYPE_USB3>;
+		resets = <&serdes_wiz0 3>;
+	};
 };
 
 &pcie1_rc {
@@ -582,3 +591,21 @@
 	phy-names = "pcie-phy";
 	num-lanes = <2>;
 };
+
+&usb_serdes_mux {
+	idle-states = <0>; /* USB0 to SERDES lane 2 */
+};
+
+&usbss0 {
+	status = "okay";
+	pinctrl-0 = <&main_usbss0_pins_default>;
+	pinctrl-names = "default";
+	ti,vbus-divider;
+};
+
+&usb0 {
+	dr_mode = "host";
+	maximum-speed = "super-speed";
+	phys = <&serdes0_usb_link>;
+	phy-names = "cdns3,usb3-phy";
+};
-- 
2.17.1


