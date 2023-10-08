Return-Path: <devicetree+bounces-6758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A667BCC27
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 06:47:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 913A91C20A45
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 04:47:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCEBB9CA6F;
	Sun,  8 Oct 2023 04:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="f2MRJEHo"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D083185E
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 04:47:30 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 564EDBA;
	Sat,  7 Oct 2023 21:47:29 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3984lP4j053432;
	Sat, 7 Oct 2023 23:47:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696740445;
	bh=FeKvZmabYLXneuzjGHEzRNXTcnsFR5MuwQTlFJ4jqBo=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=f2MRJEHogXwz8IwWYwtl1Pst6vD0Bfv3Kfl8OXyEv5q7JvmhiGo1b7Dai/VcyRZ0E
	 cU1jAfzRESwYsS0dv8GOzsPyVxdyjPYpH64jTICQf3UzaIu/5in3BvnSVKSMIitsmK
	 VL2SDE7zfhrnfYLju74ebgFBNd+QwtMJLZDlIkc4=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3984lOOA010909
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sat, 7 Oct 2023 23:47:25 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Sat, 7
 Oct 2023 23:47:24 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Sat, 7 Oct 2023 23:47:24 -0500
Received: from localhost.localdomain (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3984l1Cq032705;
	Sat, 7 Oct 2023 23:47:21 -0500
From: Keerthy <j-keerthy@ti.com>
To: <robh+dt@kernel.org>, <nm@ti.com>, <vigneshr@ti.com>,
        <conor+dt@kernel.org>, <kristo@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC: <j-keerthy@ti.com>, <u-kumar1@ti.com>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v8 5/7] arm64: dts: ti: k3-j784s4-mcu: Add the mcu domain watchdog instances
Date: Sun, 8 Oct 2023 10:16:55 +0530
Message-ID: <20231008044657.25788-6-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231008044657.25788-1-j-keerthy@ti.com>
References: <20231008044657.25788-1-j-keerthy@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

There are totally 2 instances of watchdog module in MCU domain.
These instances are coupled with the MCU domain R5F instances.
Disabling them as they are not used by Linux.

Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 .../boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi     | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
index a7b5c4cb7d3e..adb5ea6b9732 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi
@@ -714,4 +714,30 @@
 		ti,esm-pins = <63>;
 		bootph-pre-ram;
 	};
+
+	/*
+	 * The 2 RTI instances are couple with MCU R5Fs so keeping them
+	 * reserved as these will be used by their respective firmware
+	 */
+	mcu_watchdog0: watchdog@40600000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x40600000 0x00 0x100>;
+		clocks = <&k3_clks 367 1>;
+		power-domains = <&k3_pds 367 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 367 0>;
+		assigned-clock-parents = <&k3_clks 367 4>;
+		/* reserved for MCU_R5F0_0 */
+		status = "reserved";
+	};
+
+	mcu_watchdog1: watchdog@40610000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x40610000 0x00 0x100>;
+		clocks = <&k3_clks 368 1>;
+		power-domains = <&k3_pds 368 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 368 0>;
+		assigned-clock-parents = <&k3_clks 368 4>;
+		/* reserved for MCU_R5F0_1 */
+		status = "reserved";
+	};
 };
-- 
2.17.1


