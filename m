Return-Path: <devicetree+bounces-3464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 461927AEE6D
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 16:28:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id EC75428145B
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 14:28:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24FDE2E624;
	Tue, 26 Sep 2023 14:28:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C3326E11
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 14:28:23 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49CE5DE;
	Tue, 26 Sep 2023 07:28:22 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38QESFCu099221;
	Tue, 26 Sep 2023 09:28:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695738495;
	bh=Ty8xUcXtF1X5VYnnauZFR16IDDS0tlRdzyOXJ9wKHYE=;
	h=From:To:CC:Subject:Date;
	b=TKoVyrkI0sYMKWdlT8JU3dXyEf7EciN53b086/+05as6KBwMgYUPyP+GVXdWGoXv3
	 L6sdCPy+DxvybfE8nRuO0tX68TVn2feZoEMc9Awd3VqHXrER23jLdCgp3o9TXsCUzx
	 fY5oWL4OAKMjipa/pCNzpUotQ5dluN3iadsg+GeI=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38QESF9f024221
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 26 Sep 2023 09:28:15 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 26
 Sep 2023 09:28:14 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 26 Sep 2023 09:28:15 -0500
Received: from a0497641-HP-Z2-Tower-G9-Workstation-Desktop-PC.dhcp.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38QESBT0001257;
	Tue, 26 Sep 2023 09:28:12 -0500
From: Neha Malcom Francis <n-francis@ti.com>
To: <robh+dt@kernel.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
CC: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <n-francis@ti.com>,
        <u-kumar1@ti.com>
Subject: [PATCH v2] arm64: dts: ti: k3-j721e-mcu-wakeup: Add MCU domain ESM instance
Date: Tue, 26 Sep 2023 19:58:10 +0530
Message-ID: <20230926142810.602384-1-n-francis@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Currently J721E defines only the main_esm in DTS. Add node for mcu_esm
as well.

According to J721E TRM (12.11.2.2 ESM Environment) [1], we see that the
interrupt line from ESMi (main_esm) is routed to MCU_ESM (mcu_esm). This
is MCU_ESM0_LVL_IN_95 with interrupt ID 95. Configure mcu_esm
accordingly so that errors from main_esm are routed to mcu_esm and
handled.

[1] https://www.ti.com/lit/zip/spruil1

Signed-off-by: Neha Malcom Francis <n-francis@ti.com>
Reviewed-by: Udit Kumar <u-kumar1@ti.com>
---
Changes since v1:
	- Udit:
		- expanded on commit message

 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
index 05d6ef127ba7..fa8af20c7818 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
@@ -671,4 +671,11 @@ wkup_vtm0: temperature-sensor@42040000 {
 		power-domains = <&k3_pds 154 TI_SCI_PD_EXCLUSIVE>;
 		#thermal-sensor-cells = <1>;
 	};
+
+	mcu_esm: esm@40800000 {
+		compatible = "ti,j721e-esm";
+		reg = <0x00 0x40800000 0x00 0x1000>;
+		ti,esm-pins = <95>;
+		bootph-pre-ram;
+	};
 };
-- 
2.34.1


