Return-Path: <devicetree+bounces-1260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FB77A5923
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 07:04:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F6CA28182F
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 05:04:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF69A30F87;
	Tue, 19 Sep 2023 05:03:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF5623C1
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 05:03:56 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01A5DFC;
	Mon, 18 Sep 2023 22:03:54 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38J53ilr033417;
	Tue, 19 Sep 2023 00:03:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695099824;
	bh=Qxte3NSWyXwQKUnE4uwx5fv70zsk2G/8xvszmCXZ6lI=;
	h=From:To:CC:Subject:Date;
	b=tlW2CQGrFP91DlqnsV35cMcdBcgWE7cW+QW5bbfXywlNCzk7G7ysl8G1IEi1+qvpi
	 /J3640BbAP/DMdxUbHRuTBD1kwImg4md5dlDJ+LF6wbpEXfgg4xoA28ytVP9qe18aB
	 7A+8dJfWhhjaw4WDVPNWvp9rZyoCwt4n9kNN6dMA=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38J53i2i067738
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 19 Sep 2023 00:03:44 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 19
 Sep 2023 00:03:44 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 19 Sep 2023 00:03:44 -0500
Received: from uda0500640.dal.design.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38J53ecD081238;
	Tue, 19 Sep 2023 00:03:41 -0500
From: Ravi Gunasekaran <r-gunasekaran@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>
CC: <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <r-gunasekaran@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-am654-base-board: Add I2C I/O expander
Date: Tue, 19 Sep 2023 10:33:40 +0530
Message-ID: <20230919050340.16156-1-r-gunasekaran@ti.com>
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
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

AM654 baseboard has two TCA9554 I/O expander on the WKUP_I2C0 bus.
The expander at address 0x38 is used to detect daughter cards.
Add a node for this I/O expander.

Signed-off-by: Ravi Gunasekaran <r-gunasekaran@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am654-base-board.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
index f5c26e9fba98..035b20386ef3 100644
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -381,6 +381,13 @@
 		interrupt-controller;
 		#interrupt-cells = <2>;
 	};
+
+	pca9554_1: gpio@38 {
+		compatible = "nxp,pca9554";
+		reg = <0x38>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
 };
 
 &mcu_i2c0 {

base-commit: dfa449a58323de195773cf928d99db4130702bf7
-- 
2.17.1


