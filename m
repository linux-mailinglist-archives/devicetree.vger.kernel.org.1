Return-Path: <devicetree+bounces-1605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 712DA7A7234
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 07:39:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8412C1C20941
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 05:39:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5444C23B5;
	Wed, 20 Sep 2023 05:38:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A545F15A5
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 05:38:56 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 854FDDC;
	Tue, 19 Sep 2023 22:38:50 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38K5cdt1060939;
	Wed, 20 Sep 2023 00:38:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695188319;
	bh=jsxVevMY5Wr7MEriWYKMlcwyv1u6HIe+qc9KeoSw6N8=;
	h=From:To:CC:Subject:Date;
	b=lX8J1F0hugzx7V5LhH4AyB1DMnGQbQa6ibwh/T8CawrOQaf1BRjxqmY+KLW9rqokB
	 PKSLL7v2tyLPVOd7UebgJiSqmB3rfL4pkKQFJ5MmHf5VGoMn83fHfquS+HVpeQn0OI
	 baz/VyN4gCLyT/bFc/QHenC6q4qerEPm9lVIkkU8=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38K5cdJo096820
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 20 Sep 2023 00:38:39 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 20
 Sep 2023 00:38:38 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 20 Sep 2023 00:38:38 -0500
Received: from uda0500640.dal.design.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38K5cZ7r041938;
	Wed, 20 Sep 2023 00:38:35 -0500
From: Ravi Gunasekaran <r-gunasekaran@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <afd@ti.com>
CC: <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <r-gunasekaran@ti.com>
Subject: [PATCH v2] arm64: dts: ti: k3-am654-base-board: Add I2C I/O expander
Date: Wed, 20 Sep 2023 11:08:34 +0530
Message-ID: <20230920053834.21399-1-r-gunasekaran@ti.com>
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

AM654 baseboard has two TCA9554 I/O expander on the WKUP_I2C0 bus.
The expander at address 0x38 is used to detect daughter cards.
Add a node for this I/O expander.

Signed-off-by: Ravi Gunasekaran <r-gunasekaran@ti.com>
---
Changes from v1:
---------------
* Moved the expander node @38 to appear before the one at address 39.
* Removed the label pca9554_1 for the node as it is not used.

v1: https://lore.kernel.org/all/20230919050340.16156-1-r-gunasekaran@ti.com/

 arch/arm64/boot/dts/ti/k3-am654-base-board.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
index f5c26e9fba98..1637ec5ab5ed 100644
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -369,6 +369,13 @@
 		ti,enable-vout-discharge;
 	};
 
+	gpio@38 {
+		compatible = "nxp,pca9554";
+		reg = <0x38>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
 	pca9554: gpio@39 {
 		compatible = "nxp,pca9554";
 		reg = <0x39>;

base-commit: dfa449a58323de195773cf928d99db4130702bf7
-- 
2.17.1


