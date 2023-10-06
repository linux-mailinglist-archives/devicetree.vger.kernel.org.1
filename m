Return-Path: <devicetree+bounces-6346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5E87BB0DB
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 06:29:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A5781C2093E
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 04:29:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3DCB20E3;
	Fri,  6 Oct 2023 04:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="P41fhIw6"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35C1185B
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 04:29:39 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B7BBFB;
	Thu,  5 Oct 2023 21:29:38 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3964TVeJ101284;
	Thu, 5 Oct 2023 23:29:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696566571;
	bh=qOzzWVbtF/sETztCy7w4fFeaWW1k10ZaFusMp7ZvGX0=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=P41fhIw6/NuKBQPgts5WzW0akQZSkIpoc5JgW33/3B3pt6fATCYRF6RCstrGJZQSk
	 0smDNouz4LXKm6DB9v7mC9edmDvNWQM34CfsnG207rqqeymjTYLayYMeVuFM/1v6Fm
	 q3B6Mx1XDJVyGvitIfzkQIK5D1jDIei3M8Z4tT7k=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3964TVVt035824
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 5 Oct 2023 23:29:31 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 5
 Oct 2023 23:29:31 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 5 Oct 2023 23:29:31 -0500
Received: from keerthy.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3964TDH9074236;
	Thu, 5 Oct 2023 23:29:28 -0500
From: Keerthy <j-keerthy@ti.com>
To: <robh+dt@kernel.org>, <nm@ti.com>, <vigneshr@ti.com>,
        <conor+dt@kernel.org>, <kristo@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC: <j-keerthy@ti.com>, <u-kumar1@ti.com>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v7 4/7] arm64: dts: ti: k3-j784s4-main: Add the main domain watchdog instances
Date: Fri, 6 Oct 2023 09:58:58 +0530
Message-ID: <20231006042901.6474-5-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231006042901.6474-1-j-keerthy@ti.com>
References: <20231006042901.6474-1-j-keerthy@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

There are totally 19 instances of watchdog module. One each for the
8 A72 cores, one each for the 4 C7x cores, 1 for the GPU, 1 each
for the 6 R5F cores in the main domain. The non-A72 instances are
coupled with the R5Fs, C7x & GPU instances. Disabling them as they are
not used by Linux.

Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi | 187 +++++++++++++++++++++
 1 file changed, 187 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
index 26dc3776f911..b32c3e668625 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
@@ -1576,4 +1576,191 @@
 			      <695>;
 		bootph-pre-ram;
 	};
+
+	watchdog0: watchdog@2200000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2200000 0x00 0x100>;
+		clocks = <&k3_clks 348 1>;
+		power-domains = <&k3_pds 348 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 348 0>;
+		assigned-clock-parents = <&k3_clks 348 4>;
+	};
+
+	watchdog1: watchdog@2210000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2210000 0x00 0x100>;
+		clocks = <&k3_clks 349 1>;
+		power-domains = <&k3_pds 349 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 349 0>;
+		assigned-clock-parents = <&k3_clks 349 4>;
+	};
+
+	watchdog2: watchdog@2220000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2220000 0x00 0x100>;
+		clocks = <&k3_clks 350 1>;
+		power-domains = <&k3_pds 350 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 350 0>;
+		assigned-clock-parents = <&k3_clks 350 4>;
+	};
+
+	watchdog3: watchdog@2230000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2230000 0x00 0x100>;
+		clocks = <&k3_clks 351 1>;
+		power-domains = <&k3_pds 351 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 351 0>;
+		assigned-clock-parents = <&k3_clks 351 4>;
+	};
+
+	watchdog4: watchdog@2240000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2240000 0x00 0x100>;
+		clocks = <&k3_clks 352 1>;
+		power-domains = <&k3_pds 352 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 352 0>;
+		assigned-clock-parents = <&k3_clks 352 4>;
+	};
+
+	watchdog5: watchdog@2250000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2250000 0x00 0x100>;
+		clocks = <&k3_clks 353 1>;
+		power-domains = <&k3_pds 353 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 353 0>;
+		assigned-clock-parents = <&k3_clks 353 4>;
+	};
+
+	watchdog6: watchdog@2260000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2260000 0x00 0x100>;
+		clocks = <&k3_clks 354 1>;
+		power-domains = <&k3_pds 354 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 354 0>;
+		assigned-clock-parents = <&k3_clks 354 4>;
+	};
+
+	watchdog7: watchdog@2270000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2270000 0x00 0x100>;
+		clocks = <&k3_clks 355 1>;
+		power-domains = <&k3_pds 355 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 355 0>;
+		assigned-clock-parents = <&k3_clks 355 4>;
+	};
+
+	/*
+	 * The following RTI instances are coupled with MCU R5Fs, c7x and
+	 * GPU so keeping them disabled as these will be used by their
+	 * respective firmware
+	 */
+	watchdog8: watchdog@22f0000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x22f0000 0x00 0x100>;
+		clocks = <&k3_clks 360 1>;
+		power-domains = <&k3_pds 360 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 360 0>;
+		assigned-clock-parents = <&k3_clks 360 4>;
+		status = "disabled";
+	};
+
+	watchdog9: watchdog@2300000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2300000 0x00 0x100>;
+		clocks = <&k3_clks 356 1>;
+		power-domains = <&k3_pds 356 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 356 0>;
+		assigned-clock-parents = <&k3_clks 356 4>;
+		status = "disabled";
+	};
+
+	watchdog10: watchdog@2310000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2310000 0x00 0x100>;
+		clocks = <&k3_clks 357 1>;
+		power-domains = <&k3_pds 357 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 357 0>;
+		assigned-clock-parents = <&k3_clks 357 4>;
+		status = "disabled";
+	};
+
+	watchdog11: watchdog@2320000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2320000 0x00 0x100>;
+		clocks = <&k3_clks 358 1>;
+		power-domains = <&k3_pds 358 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 358 0>;
+		assigned-clock-parents = <&k3_clks 358 4>;
+		status = "disabled";
+	};
+
+	watchdog12: watchdog@2330000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2330000 0x00 0x100>;
+		clocks = <&k3_clks 359 1>;
+		power-domains = <&k3_pds 359 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 359 0>;
+		assigned-clock-parents = <&k3_clks 359 4>;
+		status = "disabled";
+	};
+
+	watchdog13: watchdog@23c0000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x23c0000 0x00 0x100>;
+		clocks = <&k3_clks 361 1>;
+		power-domains = <&k3_pds 361 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 361 0>;
+		assigned-clock-parents = <&k3_clks 361 4>;
+		status = "disabled";
+	};
+
+	watchdog14: watchdog@23d0000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x23d0000 0x00 0x100>;
+		clocks = <&k3_clks 362 1>;
+		power-domains = <&k3_pds 362 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 362 0>;
+		assigned-clock-parents = <&k3_clks 362 4>;
+		status = "disabled";
+	};
+
+	watchdog15: watchdog@23e0000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x23e0000 0x00 0x100>;
+		clocks = <&k3_clks 363 1>;
+		power-domains = <&k3_pds 363 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 363 0>;
+		assigned-clock-parents = <&k3_clks 363 4>;
+		status = "disabled";
+	};
+
+	watchdog16: watchdog@23f0000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x23f0000 0x00 0x100>;
+		clocks = <&k3_clks 364 1>;
+		power-domains = <&k3_pds 364 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 364 0>;
+		assigned-clock-parents = <&k3_clks 364 4>;
+		status = "disabled";
+	};
+
+	watchdog17: watchdog@2540000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2540000 0x00 0x100>;
+		clocks = <&k3_clks 365 1>;
+		power-domains = <&k3_pds 365 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 365 0>;
+		assigned-clock-parents = <&k3_clks 366 4>;
+		status = "disabled";
+	};
+
+	watchdog18: watchdog@2550000 {
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2550000 0x00 0x100>;
+		clocks = <&k3_clks 366 1>;
+		power-domains = <&k3_pds 366 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 366 0>;
+		assigned-clock-parents = <&k3_clks 366 4>;
+		status = "disabled";
+	};
 };
-- 
2.17.1


