Return-Path: <devicetree+bounces-4014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 673497B104C
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 03:14:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 203062814EB
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 01:14:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 661241118;
	Thu, 28 Sep 2023 01:14:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47EB370
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 01:14:53 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F356510A;
	Wed, 27 Sep 2023 18:14:50 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38S1Eeql105762;
	Wed, 27 Sep 2023 20:14:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695863681;
	bh=duYSaUtENYlzZLlT6VHy2/kKa90qV6wY4//62E7WVJo=;
	h=From:To:CC:Subject:Date;
	b=AdJY5f7bwtOKbsdvPg7S0Nq8QC/mYDtLfEpGvWb7ZOYp7j6cWzmVxqAQF496kjd9p
	 8VebwiApepUCWPA3m9ejWJ35WSjj0u//q8sMoJ1dZ1VYH+RNdQLfJlM0E1S3Hz3Uto
	 ZCKJ8IWjjuoibBPWxU+WYd+yom6TEZB382FEIPSI=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38S1Ee5n104810
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 27 Sep 2023 20:14:40 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 27
 Sep 2023 20:14:40 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 27 Sep 2023 20:14:40 -0500
Received: from localhost.localdomain (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38S1EZts058726;
	Wed, 27 Sep 2023 20:14:36 -0500
From: Keerthy <j-keerthy@ti.com>
To: <robh+dt@kernel.org>, <nm@ti.com>, <vigneshr@ti.com>,
        <conor+dt@kernel.org>, <kristo@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC: <j-keerthy@ti.com>, <u-kumar1@ti.com>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH RESEND v6 7/7] arm64: dts: ti: k3-j712s2-mcu: Add the mcu domain watchdog instances
Date: Thu, 28 Sep 2023 06:44:16 +0530
Message-ID: <20230928011416.2900-1-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
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
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

There are totally 2 instances of watchdog module in MCU domain.
These instances are coupled with the MCU domain R5F instances.
Disabling them as they are not used by Linux.

Signed-off-by: Keerthy <j-keerthy@ti.com>
---

Changes:

  * Corrected subject.

 .../boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi     | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
index 4b29418a6076..83377c47e709 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
@@ -669,4 +669,28 @@
 		ti,esm-pins = <63>;
 		bootph-pre-ram;
 	};
+
+	/*
+	 * The 2 RTI instances are couple with MCU R5Fs so keeping them
+	 * disabled as these will be used by their respective firmware
+	 */
+	mcu_watchdog0: watchdog@40600000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x40600000 0x00 0x100>;
+		clocks = <&k3_clks 295 1>;
+		power-domains = <&k3_pds 295 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 295 1>;
+		assigned-clock-parents = <&k3_clks 295 5>;
+		status = "disabled";
+	};
+
+	mcu_watchdog1: watchdog@40610000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x40610000 0x00 0x100>;
+		clocks = <&k3_clks 296 1>;
+		power-domains = <&k3_pds 296 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 296 1>;
+		assigned-clock-parents = <&k3_clks 296 5>;
+		status = "disabled";
+	};
 };
-- 
2.17.1


