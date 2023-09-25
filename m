Return-Path: <devicetree+bounces-3035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 814067AD306
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 10:14:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id D163FB209DA
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 08:14:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9FB9111B7;
	Mon, 25 Sep 2023 08:14:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B72FC0C
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 08:14:19 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 393A51F28;
	Mon, 25 Sep 2023 01:14:03 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38P8DtdT013963;
	Mon, 25 Sep 2023 03:13:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695629635;
	bh=tMXuuAh5P1d8OdCcz9JvvGRPbziZCHBKLoQNUUqPiL4=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=YJWeu5nzKZxY64dqpqIpeS5BtNY/LMhTnvHDsqaBnGkgOTGwmqbY5eu1bY8g6hUGW
	 AkZe8IVchwuiqsRMdiwSiklGAzkzsl9EiPh4yWp82xGgt5f/MDvWsNuzpNd6I+i3bp
	 alQi6GZ9ocyCrez5gwd69TJbSJKI9PqENa5Huv9c=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38P8DtMl044475
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 25 Sep 2023 03:13:55 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 25
 Sep 2023 03:13:55 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 25 Sep 2023 03:13:55 -0500
Received: from keerthy.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38P8Db3I007734;
	Mon, 25 Sep 2023 03:13:52 -0500
From: Keerthy <j-keerthy@ti.com>
To: <robh+dt@kernel.org>, <nm@ti.com>, <vigneshr@ti.com>,
        <conor+dt@kernel.org>, <kristo@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC: <j-keerthy@ti.com>, <u-kumar1@ti.com>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 4/7] arm64: dts: ti: k3-j784s4-main: Add the main domain watchdog instances
Date: Mon, 25 Sep 2023 13:43:29 +0530
Message-ID: <20230925081332.15906-5-j-keerthy@ti.com>
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
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

There are totally 19 instances of watchdog module. One each for the
8 A72 cores, one each for the 4 C7x cores, 1 for the GPU, 1 each
for the 6 R5F cores in the main domain. Keeping only the A72 instances
enabled and disabling the rest by default.

Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi | 182 +++++++++++++++++++++
 1 file changed, 182 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
index 26dc3776f911..8c3efe066803 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
@@ -1576,4 +1576,186 @@
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
+	watchdog16: watchdog@2300000 {
+		status = "disabled";
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2300000 0x00 0x100>;
+		clocks = <&k3_clks 356 1>;
+		power-domains = <&k3_pds 356 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 356 0>;
+		assigned-clock-parents = <&k3_clks 356 4>;
+	};
+
+	watchdog17: watchdog@2310000 {
+		status = "disabled";
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2310000 0x00 0x100>;
+		clocks = <&k3_clks 357 1>;
+		power-domains = <&k3_pds 357 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 357 0>;
+		assigned-clock-parents = <&k3_clks 357 4>;
+	};
+
+	watchdog18: watchdog@2320000 {
+		status = "disabled";
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2320000 0x00 0x100>;
+		clocks = <&k3_clks 358 1>;
+		power-domains = <&k3_pds 358 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 358 0>;
+		assigned-clock-parents = <&k3_clks 358 4>;
+	};
+
+	watchdog19: watchdog@2330000 {
+		status = "disabled";
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2330000 0x00 0x100>;
+		clocks = <&k3_clks 359 1>;
+		power-domains = <&k3_pds 359 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 359 0>;
+		assigned-clock-parents = <&k3_clks 359 4>;
+	};
+
+	watchdog15: watchdog@22f0000 {
+		status = "disabled";
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x22f0000 0x00 0x100>;
+		clocks = <&k3_clks 360 1>;
+		power-domains = <&k3_pds 360 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 360 0>;
+		assigned-clock-parents = <&k3_clks 360 4>;
+	};
+
+	watchdog28: watchdog@23c0000 {
+		status = "disabled";
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x23c0000 0x00 0x100>;
+		clocks = <&k3_clks 361 1>;
+		power-domains = <&k3_pds 361 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 361 0>;
+		assigned-clock-parents = <&k3_clks 361 4>;
+	};
+
+	watchdog29: watchdog@23d0000 {
+		status = "disabled";
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x23d0000 0x00 0x100>;
+		clocks = <&k3_clks 362 1>;
+		power-domains = <&k3_pds 362 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 362 0>;
+		assigned-clock-parents = <&k3_clks 362 4>;
+	};
+
+	watchdog30: watchdog@23e0000 {
+		status = "disabled";
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x23e0000 0x00 0x100>;
+		clocks = <&k3_clks 363 1>;
+		power-domains = <&k3_pds 363 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 363 0>;
+		assigned-clock-parents = <&k3_clks 363 4>;
+	};
+
+	watchdog31: watchdog@23f0000 {
+		status = "disabled";
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x23f0000 0x00 0x100>;
+		clocks = <&k3_clks 364 1>;
+		power-domains = <&k3_pds 364 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 364 0>;
+		assigned-clock-parents = <&k3_clks 364 4>;
+	};
+
+	watchdog32: watchdog@2540000 {
+		status = "disabled";
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2540000 0x00 0x100>;
+		clocks = <&k3_clks 365 1>;
+		power-domains = <&k3_pds 365 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 365 0>;
+		assigned-clock-parents = <&k3_clks 366 4>;
+	};
+
+	watchdog33: watchdog@2550000 {
+		status = "disabled";
+		compatible = "ti,j7-rti-wdt";
+		reg = <0x00 0x2550000 0x00 0x100>;
+		clocks = <&k3_clks 366 1>;
+		power-domains = <&k3_pds 366 TI_SCI_PD_EXCLUSIVE>;
+		assigned-clocks = <&k3_clks 366 0>;
+		assigned-clock-parents = <&k3_clks 366 4>;
+	};
 };
-- 
2.17.1


