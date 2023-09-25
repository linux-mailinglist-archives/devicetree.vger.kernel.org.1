Return-Path: <devicetree+bounces-3038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1717AD307
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 10:14:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 8E38B1C20930
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 08:14:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5554211C8E;
	Mon, 25 Sep 2023 08:14:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E22411720
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 08:14:26 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D862CCD5;
	Mon, 25 Sep 2023 01:14:14 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38P8E2np114443;
	Mon, 25 Sep 2023 03:14:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695629642;
	bh=M6dmPTlZwN8LWaHzMJBNwX0ICu3U/69mZsb9rHheQbY=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=OdoKpfdGILv25otCzpnPr5aGjxqAhT9cghQamAJX39pb14nEeqBd2iPDcSoPPOyvm
	 fNwyxkGSNxWmoaM4BNuJV+9ajrfttw4wfDLvABcVOgZqPCSjpbhf2sBdRc1Efxcy9K
	 KyknYGw3nS5lE4lz0dP5abFJGkyWI5mttj9T31j0=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38P8E2F7007066
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 25 Sep 2023 03:14:02 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 25
 Sep 2023 03:14:02 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 25 Sep 2023 03:14:02 -0500
Received: from keerthy.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38P8Db3K007734;
	Mon, 25 Sep 2023 03:13:59 -0500
From: Keerthy <j-keerthy@ti.com>
To: <robh+dt@kernel.org>, <nm@ti.com>, <vigneshr@ti.com>,
        <conor+dt@kernel.org>, <kristo@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC: <j-keerthy@ti.com>, <u-kumar1@ti.com>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 6/7] arm64: dts: ti: k3-j721s2-main: Add the main domain watchdog instances
Date: Mon, 25 Sep 2023 13:43:31 +0530
Message-ID: <20230925081332.15906-7-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230925081332.15906-1-j-keerthy@ti.com>
References: <20230925081332.15906-1-j-keerthy@ti.com>
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
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

There are totally 9 instances of watchdog module. One each for the
2 A72 cores, one each for the 2 C7x cores, 1 for the GPU, 1 each
for the 4 R5F cores in the main domain. Keeping only the A72 instances
enabled and disabling the rest by default.

Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi | 88 ++++++++++++++++++++++
 1 file changed, 88 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
index 8a717b592238..5e3c0ef9b10b 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
@@ -1702,4 +1702,92 @@
 		ti,esm-pins = <688>, <689>;
 		bootph-pre-ram;
 	};
+
+	watchdog0: watchdog@2200000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2200000 0x00 0x100>;
+		clocks = <&k3_clks 286 1>;
+		power-domains = <&k3_pds 286 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 286 1>;
+		assigned-clock-parents = <&k3_clks 286 5>;
+	};
+
+	watchdog1: watchdog@2210000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2210000 0x00 0x100>;
+		clocks = <&k3_clks 287 1>;
+		power-domains = <&k3_pds 287 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 287 1>;
+		assigned-clock-parents = <&k3_clks 287 5>;
+	};
+
+	watchdog16: watchdog@2300000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2300000 0x00 0x100>;
+		clocks = <&k3_clks 288 1>;
+		power-domains = <&k3_pds 288 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 288 1>;
+		assigned-clock-parents = <&k3_clks 288 5>;
+		status = "disabled";
+	};
+
+	watchdog17: watchdog@2310000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2310000 0x00 0x100>;
+		clocks = <&k3_clks 289 1>;
+		power-domains = <&k3_pds 289 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 289 1>;
+		assigned-clock-parents = <&k3_clks 289 5>;
+		status = "disabled";
+	};
+
+	watchdog15: watchdog@22f0000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x22f0000 0x00 0x100>;
+		clocks = <&k3_clks 290 1>;
+		power-domains = <&k3_pds 290 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 290 1>;
+		assigned-clock-parents = <&k3_clks 290 5>;
+		status = "disabled";
+	};
+
+	watchdog28: watchdog@23c0000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x23c0000 0x00 0x100>;
+		clocks = <&k3_clks 291 1>;
+		power-domains = <&k3_pds 291 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 291 1>;
+		assigned-clock-parents = <&k3_clks 291 5>;
+		status = "disabled";
+	};
+
+	watchdog29: watchdog@23d0000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x23d0000 0x00 0x100>;
+		clocks = <&k3_clks 292 1>;
+		power-domains = <&k3_pds 292 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 292 1>;
+		assigned-clock-parents = <&k3_clks 292 5>;
+		status = "disabled";
+	};
+
+	watchdog30: watchdog@23e0000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x23e0000 0x00 0x100>;
+		clocks = <&k3_clks 293 1>;
+		power-domains = <&k3_pds 293 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 293 1>;
+		assigned-clock-parents = <&k3_clks 293 5>;
+		status = "disabled";
+	};
+
+	watchdog31: watchdog@23f0000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x23f0000 0x00 0x100>;
+		clocks = <&k3_clks 294 1>;
+		power-domains = <&k3_pds 294 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 294 1>;
+		assigned-clock-parents = <&k3_clks 294 5>;
+		status = "disabled";
+	};
 };
-- 
2.17.1


