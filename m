Return-Path: <devicetree+bounces-4989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E84207B491C
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 20:15:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 11EF41C204F5
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 18:15:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97E2B1944C;
	Sun,  1 Oct 2023 18:15:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B33F19442
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 18:15:11 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B89E10D;
	Sun,  1 Oct 2023 11:14:58 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 391IEpi6030746;
	Sun, 1 Oct 2023 13:14:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696184091;
	bh=LuC+vPLZh87mkGF8ZrVeshJQgF6CY1saUi4BtshH9Pg=;
	h=From:To:Subject:Date:In-Reply-To:References;
	b=s7sIdNuchEo4T4+Tl7JpoIojreOghtyvvWwW4B/0MbYOgSAmBchiVJDdttya5Mk2G
	 8esrnGKSWztDCJ/PXOy/M3LPmxBsgE1pL1aML9O9ZFk0q5/hNPIPeNojhOUpTjtjuy
	 Bhi/gfzCJwdu9G+TKo6Pklz7MXiea5SrQ3Y2Q72Y=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 391IEptM042198
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sun, 1 Oct 2023 13:14:51 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Sun, 1
 Oct 2023 13:14:51 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Sun, 1 Oct 2023 13:14:51 -0500
Received: from TI.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 391IEHtv063395;
	Sun, 1 Oct 2023 13:14:47 -0500
From: Apurva Nandan <a-nandan@ti.com>
To: Apurva Nandan <a-nandan@ti.com>, Nishanth Menon <nm@ti.com>,
        Vignesh
 Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Hari Nagalla <hnagalla@ti.com>,
        Udit Kumar
	<u-kumar1@ti.com>
Subject: [PATCH v5 8/9] arm64: dts : ti: k3-am69-sk: Add DDR carveout memory nodes for R5F
Date: Sun, 1 Oct 2023 23:44:16 +0530
Message-ID: <20231001181417.743306-9-a-nandan@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231001181417.743306-1-a-nandan@ti.com>
References: <20231001181417.743306-1-a-nandan@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Two carveout reserved memory nodes each have been added for each of the
R5F remote processor device within both the MCU and MAIN domains for the
TI K3 AM69 SK boards. These nodes are assigned to the respective rproc
device nodes as well. The first region will be used as the DMA pool for
the rproc device, and the second region will furnish the static carveout
regions for the firmware memory.

The current carveout addresses and sizes are defined statically for each
device. The R5F processors do not have an MMU, and as such require the
exact memory used by the firmwares to be set-aside. The firmware images
do not require any RSC_CARVEOUT entries in their resource tables either
to allocate the memory for firmware memory segments.

Note that the R5F1 carveouts are needed only if the R5F cluster is
running in Split (non-LockStep) mode. The reserved memory nodes can be
disabled later on if there is no use-case defined to use the corresponding
remote processor.

Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
Signed-off-by: Apurva Nandan <a-nandan@ti.com>
Reviewed-by: Udit Kumar <u-kumar1@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 200 ++++++++++++++++++++++++++
 1 file changed, 200 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
index 06993709111e..3cde9c644613 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
@@ -47,6 +47,102 @@ secure_ddr: optee@9e800000 {
 			reg = <0x00 0x9e800000 0x00 0x01800000>;
 			no-map;
 		};
+
+		mcu_r5fss0_core0_dma_memory_region: r5f-dma-memory@a0000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa0000000 0x00 0x100000>;
+			no-map;
+		};
+
+		mcu_r5fss0_core0_memory_region: r5f-memory@a0100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa0100000 0x00 0xf00000>;
+			no-map;
+		};
+
+		mcu_r5fss0_core1_dma_memory_region: r5f-dma-memory@a1000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa1000000 0x00 0x100000>;
+			no-map;
+		};
+
+		mcu_r5fss0_core1_memory_region: r5f-memory@a1100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa1100000 0x00 0xf00000>;
+			no-map;
+		};
+
+		main_r5fss0_core0_dma_memory_region: r5f-dma-memory@a2000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa2000000 0x00 0x100000>;
+			no-map;
+		};
+
+		main_r5fss0_core0_memory_region: r5f-memory@a2100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa2100000 0x00 0xf00000>;
+			no-map;
+		};
+
+		main_r5fss0_core1_dma_memory_region: r5f-dma-memory@a3000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa3000000 0x00 0x100000>;
+			no-map;
+		};
+
+		main_r5fss0_core1_memory_region: r5f-memory@a3100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa3100000 0x00 0xf00000>;
+			no-map;
+		};
+
+		main_r5fss1_core0_dma_memory_region: r5f-dma-memory@a4000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa4000000 0x00 0x100000>;
+			no-map;
+		};
+
+		main_r5fss1_core0_memory_region: r5f-memory@a4100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa4100000 0x00 0xf00000>;
+			no-map;
+		};
+
+		main_r5fss1_core1_dma_memory_region: r5f-dma-memory@a5000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa5000000 0x00 0x100000>;
+			no-map;
+		};
+
+		main_r5fss1_core1_memory_region: r5f-memory@a5100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa5100000 0x00 0xf00000>;
+			no-map;
+		};
+
+		main_r5fss2_core0_dma_memory_region: r5f-dma-memory@a6000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa6000000 0x00 0x100000>;
+			no-map;
+		};
+
+		main_r5fss2_core0_memory_region: r5f-memory@a6100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa6100000 0x00 0xf00000>;
+			no-map;
+		};
+
+		main_r5fss2_core1_dma_memory_region: r5f-dma-memory@a7000000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa7000000 0x00 0x100000>;
+			no-map;
+		};
+
+		main_r5fss2_core1_memory_region: r5f-memory@a7100000 {
+			compatible = "shared-dma-pool";
+			reg = <0x00 0xa7100000 0x00 0xf00000>;
+			no-map;
+		};
 	};
 
 	vusb_main: regulator-vusb-main5v0 {
@@ -248,6 +344,62 @@ J784S4_WKUP_IOPAD(0x0, PIN_INPUT, 7) /* (M33) WKUP_GPIO0_49 */
 	};
 };
 
+&mailbox0_cluster0 {
+	status = "okay";
+	interrupts = <436>;
+	mbox_mcu_r5fss0_core0: mbox-mcu-r5fss0-core0 {
+		ti,mbox-rx = <0 0 0>;
+		ti,mbox-tx = <1 0 0>;
+	};
+
+	mbox_mcu_r5fss0_core1: mbox-mcu-r5fss0-core1 {
+		ti,mbox-rx = <2 0 0>;
+		ti,mbox-tx = <3 0 0>;
+	};
+};
+
+&mailbox0_cluster1 {
+	status = "okay";
+	interrupts = <432>;
+	mbox_main_r5fss0_core0: mbox-main-r5fss0-core0 {
+		ti,mbox-rx = <0 0 0>;
+		ti,mbox-tx = <1 0 0>;
+	};
+
+	mbox_main_r5fss0_core1: mbox-main-r5fss0-core1 {
+		ti,mbox-rx = <2 0 0>;
+		ti,mbox-tx = <3 0 0>;
+	};
+};
+
+&mailbox0_cluster2 {
+	status = "okay";
+	interrupts = <428>;
+	mbox_main_r5fss1_core0: mbox-main-r5fss1-core0 {
+		ti,mbox-rx = <0 0 0>;
+		ti,mbox-tx = <1 0 0>;
+	};
+
+	mbox_main_r5fss1_core1: mbox-main-r5fss1-core1 {
+		ti,mbox-rx = <2 0 0>;
+		ti,mbox-tx = <3 0 0>;
+	};
+};
+
+&mailbox0_cluster3 {
+	status = "okay";
+	interrupts = <424>;
+	mbox_main_r5fss2_core0: mbox-main-r5fss2-core0 {
+		ti,mbox-rx = <0 0 0>;
+		ti,mbox-tx = <1 0 0>;
+	};
+
+	mbox_main_r5fss2_core1: mbox-main-r5fss2-core1 {
+		ti,mbox-rx = <2 0 0>;
+		ti,mbox-tx = <3 0 0>;
+	};
+};
+
 &wkup_uart0 {
 	/* Firmware usage */
 	status = "reserved";
@@ -362,3 +514,51 @@ &mcu_cpsw_port1 {
 	phy-mode = "rgmii-rxid";
 	phy-handle = <&mcu_phy0>;
 };
+
+&mcu_r5fss0_core0 {
+	mboxes = <&mailbox0_cluster0>, <&mbox_mcu_r5fss0_core0>;
+	memory-region = <&mcu_r5fss0_core0_dma_memory_region>,
+			<&mcu_r5fss0_core0_memory_region>;
+};
+
+&mcu_r5fss0_core1 {
+	mboxes = <&mailbox0_cluster0>, <&mbox_mcu_r5fss0_core1>;
+	memory-region = <&mcu_r5fss0_core1_dma_memory_region>,
+			<&mcu_r5fss0_core1_memory_region>;
+};
+
+&main_r5fss0_core0 {
+	mboxes = <&mailbox0_cluster1>, <&mbox_main_r5fss0_core0>;
+	memory-region = <&main_r5fss0_core0_dma_memory_region>,
+			<&main_r5fss0_core0_memory_region>;
+};
+
+&main_r5fss0_core1 {
+	mboxes = <&mailbox0_cluster1>, <&mbox_main_r5fss0_core1>;
+	memory-region = <&main_r5fss0_core1_dma_memory_region>,
+			<&main_r5fss0_core1_memory_region>;
+};
+
+&main_r5fss1_core0 {
+	mboxes = <&mailbox0_cluster2>, <&mbox_main_r5fss1_core0>;
+	memory-region = <&main_r5fss1_core0_dma_memory_region>,
+			<&main_r5fss1_core0_memory_region>;
+};
+
+&main_r5fss1_core1 {
+	mboxes = <&mailbox0_cluster2>, <&mbox_main_r5fss1_core1>;
+	memory-region = <&main_r5fss1_core1_dma_memory_region>,
+			<&main_r5fss1_core1_memory_region>;
+};
+
+&main_r5fss2_core0 {
+	mboxes = <&mailbox0_cluster3>, <&mbox_main_r5fss2_core0>;
+	memory-region = <&main_r5fss2_core0_dma_memory_region>,
+			<&main_r5fss2_core0_memory_region>;
+};
+
+&main_r5fss2_core1 {
+	mboxes = <&mailbox0_cluster3>, <&mbox_main_r5fss2_core1>;
+	memory-region = <&main_r5fss2_core1_dma_memory_region>,
+			<&main_r5fss2_core1_memory_region>;
+};
-- 
2.34.1


