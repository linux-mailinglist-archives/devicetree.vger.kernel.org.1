Return-Path: <devicetree+bounces-6060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8496E7B9C70
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 12:13:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 7EEA51C20920
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 10:13:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C205A125A1;
	Thu,  5 Oct 2023 10:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="Z/I6HTpN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97516125A7
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 10:13:20 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on20618.outbound.protection.outlook.com [IPv6:2a01:111:f400:7e8a::618])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B77920640;
	Thu,  5 Oct 2023 03:13:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kjaj0wPrbZytqVnUoH3ck2CLf66RCdnunzzR+cTj1mv33YZPM4sdXsFVNXj6UHOMl4bP3GRldhjypiMAlzQA1M9YJW2GvJTMPib+ZHNWONogmjczk40gD1RMuFSI2Y6T1JqF7wNfVEEj7Uz6464u6v+EgxhFkb63xu/qdr8fk+dAYA8gI4Dsf3nkyM8GjrVyPSYGetkxF8NJF8G0lCZ0hHPil0gV9GakKEhDPS2KHnyEWLgj1MXn0lv2CtGENx74B/4y5yUwb055P2vtf1ObHZRh4+9yVV4sG3+MRj2rwgphI3rz91IrIEvf2GU/9rksW6iy4qA3tlgG609xBR2WAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nlvXfBKGpxZ8z+2klhVGEehL2FNFOUzRshErj0oDtzk=;
 b=VkIIe+L3C51smBqg0gE6Pb7WB4FfaFtvCHiCiRwTvat830toHz4jscXFFoLt8IV8tjepFjsIfP70ynfQa40RYfZyymplUfVgIaONXEzDhPtd4RbBVwbUHDxze3W4eu2AsOBIodywKUNNPFIHbRWXA3jXk+50aVaLQWkglfX8W/1LClAZomYgqM77yW21EbUudULvWGf4KGJwMNRQLklNxTTCP/ijRkv77Tb3eVCMkUP1XSihYA0QR/baHO61Y2OJHcnLtx0dj2ZosrkLyLGtdua/mr9Jq7H5ouLL5aZzZaq6x8qeYT2DoOJl1NYTHhzNVxXdjTqmn33G3yYGBj7AFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nlvXfBKGpxZ8z+2klhVGEehL2FNFOUzRshErj0oDtzk=;
 b=Z/I6HTpN5scpUQQWOPv3+GGoMmwCQeiOZG+EJRLI6R+njxatoXFVYu99dUOXJuRSYYhgsJX36q0YwHiIR+iAbK+bObAEFQv2qCj37RJwVStl6EYpM8e9P5ZnD+jvKHBonNTsEIex2chFcrkfp2bPM9KjfgMztpeag8hmBbFPgys=
Received: from BL0PR02CA0012.namprd02.prod.outlook.com (2603:10b6:207:3c::25)
 by BL3PR12MB6377.namprd12.prod.outlook.com (2603:10b6:208:3b0::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.33; Thu, 5 Oct
 2023 10:12:59 +0000
Received: from MN1PEPF0000F0E3.namprd04.prod.outlook.com
 (2603:10b6:207:3c:cafe::97) by BL0PR02CA0012.outlook.office365.com
 (2603:10b6:207:3c::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.26 via Frontend
 Transport; Thu, 5 Oct 2023 10:12:59 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB03.amd.com; pr=C
Received: from SATLEXMB03.amd.com (165.204.84.17) by
 MN1PEPF0000F0E3.mail.protection.outlook.com (10.167.242.41) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.6838.22 via Frontend Transport; Thu, 5 Oct 2023 10:12:59 +0000
Received: from SATLEXMB03.amd.com (10.181.40.144) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 5 Oct
 2023 05:12:58 -0500
Received: from xhdshubhraj40.xilinx.com (10.180.168.240) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server id 15.1.2507.27 via Frontend
 Transport; Thu, 5 Oct 2023 05:12:55 -0500
From: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
To: <linux-edac@vger.kernel.org>
CC: <git@amd.com>, <devicetree@vger.kernel.org>,
	<sai.krishna.potthuri@amd.com>, <krzysztof.kozlowski@linaro.org>,
	<robh+dt@kernel.org>, <conor+dt@kernel.org>, <bp@alien8.de>,
	<tony.luck@intel.com>, <james.morse@arm.com>, <mchehab@kernel.org>,
	<rric@kernel.org>, <michal.simek@amd.com>
Subject: [PATCH v9 2/2] EDAC/versal: Add a Xilinx Versal memory controller driver
Date: Thu, 5 Oct 2023 15:42:42 +0530
Message-ID: <20231005101242.14621-3-shubhrajyoti.datta@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231005101242.14621-1-shubhrajyoti.datta@amd.com>
References: <20231005101242.14621-1-shubhrajyoti.datta@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN1PEPF0000F0E3:EE_|BL3PR12MB6377:EE_
X-MS-Office365-Filtering-Correlation-Id: c39f7546-53ad-4bac-f01b-08dbc58ba6f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	XozOpHADs3itCjJkQPoYkAek1yzT2hM7/ww+8xIccz43Syy60vIcBQibJLjfBn11Ar3/RIqIP1q4RFRIqkiPxB8DXBrdY027nvLViUJUnam3hlacAAH+0c7Mw5uF8YE0aRz3QvKDu/YDYqCV8jYTt90lVp6CnkKeyWFa2YUU2tFgai3ErGd7CrFdzQgugvvkG/9pydux7QtfxkLiKdeE4WFmNtYSd6oRyuQNhh8mAr/W0XRVYcRIA9ybdqOC4oQiAevnn7OiMkz+SAxKI7G0QMKRGO4Vop4cZ6bUTXQdFC87G99jHf+bpnQO8vKPCU2oBArkU8XF6Yji1bQMrNvF/bZBYQQ8FNffMtAlLGGRSylpmcbMtASynBg7Th2v7QR2RG7Kd4Ly+mTE/kGOsola+M0wc/1RibzgNvdHYM6eOhVx9CHx/7nCKsCLm/YGoBeIZdfxsr0dnUCUZU4nglYa5wLgXDuOYRJb9OTyrtfOZ9PNANsCSzZh318y+2abr9V0E/iH98sdf78kum5al2EbVQ3YTBLyTdWy9jH01BpX8O7rj23IUSQzpV6sHUZs/dnah1Km5OS9dWM7cnlsnpkgEpxdVtNkJZ8Hht/0lnlLGnWBzE8UsUeub08K8QN7q6zESnJLr9abbp6KRa+DOCFkb3wd+HhlkgkipGQN+sGpSu3KDKM/7evZNv/CjxDFTykveYD4YLKyGBXKbvnGh5eBCPsO7J5WHRWVOZEDSBLSX0DpAvNR3HSivXrL50m0/DpByqWanimMXNYVXKG4fk/ZzrE8CTHcB9ppVOyWg5OeStw=
X-Forefront-Antispam-Report:
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB03.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(396003)(136003)(346002)(376002)(39860400002)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(82310400011)(36840700001)(40470700004)(46966006)(1076003)(2616005)(316002)(70586007)(6916009)(41300700001)(70206006)(54906003)(44832011)(8676002)(8936002)(26005)(478600001)(4326008)(5660300002)(336012)(6666004)(426003)(7416002)(40460700003)(30864003)(2906002)(83380400001)(47076005)(36756003)(356005)(36860700001)(40480700001)(82740400003)(86362001)(81166007)(36900700001)(309714004);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2023 10:12:59.4653
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c39f7546-53ad-4bac-f01b-08dbc58ba6f2
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB03.amd.com]
X-MS-Exchange-CrossTenant-AuthSource:
	MN1PEPF0000F0E3.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR12MB6377
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
	SPF_HELO_PASS,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a EDAC driver for the RAS capabilities on the Xilinx integrated DDR
Memory Controllers (DDRMCs) which support both DDR4 and LPDDR4/4X memory
interfaces. It has four programmable NoC interface ports and is designed
to handle multiple streams of traffic.The driver
reports correctable and uncorrectable errors , and also creates
debugfs entries for error injection.

Co-developed-by: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
Signed-off-by: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>

---

Changes in v9:
Update put the disable_irq out of DEBUG flag.
Make the union packed
Update the wording in the Kconfig

Changes in v8:
remove disabling all interrupts

Changes in v7:
Update the message
Clear status after handling the error
At probe disable all the unrequested interrupts.
Alphabetically sorted diff
Rename unCorrectable to uncorrectable
Use mask0 for  GENMASK(0,5)
Add a processbit function

Changes in v6:
Fix the warn.

Changes in v5:
Update subject

Changes in v4:
Update the subject
rename the driver file.
fix the debugfs file.
fix unneeded capitalisation.
refactor code

Changes in v3:
Rebased and resent.

Changes in v2:
Update a missed out file
remove edac from compatible name
rename ddrmc_noc_base and ddrmc_base

 MAINTAINERS                          |    7 +
 drivers/edac/Kconfig                 |   12 +
 drivers/edac/Makefile                |    1 +
 drivers/edac/versal_edac.c           | 1065 ++++++++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h |   12 +
 5 files changed, 1097 insertions(+)
 create mode 100644 drivers/edac/versal_edac.c

diff --git a/MAINTAINERS b/MAINTAINERS
index aee340630eca..569c48368458 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23405,6 +23405,13 @@ F:	Documentation/devicetree/bindings/media/xilinx/
 F:	drivers/media/platform/xilinx/
 F:	include/uapi/linux/xilinx-v4l2-controls.h
 
+XILINX VERSAL EDAC DRIVER
+M:	Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
+M:	Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/memory-controllers/xlnx,versal-ddrmc-edac.yaml
+F:	drivers/edac/versal_edac.c
+
 XILINX WATCHDOG DRIVER
 M:	Srinivas Neeli <srinivas.neeli@amd.com>
 R:	Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
diff --git a/drivers/edac/Kconfig b/drivers/edac/Kconfig
index 110e99b86a66..5a7f3fabee22 100644
--- a/drivers/edac/Kconfig
+++ b/drivers/edac/Kconfig
@@ -561,4 +561,16 @@ config EDAC_NPCM
 	  error detection (in-line ECC in which a section 1/8th of the memory
 	  device used to store data is used for ECC storage).
 
+config EDAC_VERSAL
+	tristate "Xilinx Versal DDR Memory Controller"
+	depends on ARCH_ZYNQMP || COMPILE_TEST
+	help
+	  Support for error detection and correction on the Xilinx Versal DDR
+	  memory controller.
+
+	  Report both single bit errors (CE) and double bit errors (UE).
+	  Support injecting both correctable and uncorrectable errors
+	  for debugging purposes.
+
+
 endif # EDAC
diff --git a/drivers/edac/Makefile b/drivers/edac/Makefile
index 61945d3113cc..9c09893695b7 100644
--- a/drivers/edac/Makefile
+++ b/drivers/edac/Makefile
@@ -86,3 +86,4 @@ obj-$(CONFIG_EDAC_BLUEFIELD)		+= bluefield_edac.o
 obj-$(CONFIG_EDAC_DMC520)		+= dmc520_edac.o
 obj-$(CONFIG_EDAC_NPCM)			+= npcm_edac.o
 obj-$(CONFIG_EDAC_ZYNQMP)		+= zynqmp_edac.o
+obj-$(CONFIG_EDAC_VERSAL)		+= versal_edac.o
diff --git a/drivers/edac/versal_edac.c b/drivers/edac/versal_edac.c
new file mode 100644
index 000000000000..5ce2e9585a00
--- /dev/null
+++ b/drivers/edac/versal_edac.c
@@ -0,0 +1,1065 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Xilinx Versal memory controller driver
+ * Copyright (C) 2023 Advanced Micro Devices, Inc.
+ */
+#include <linux/bitfield.h>
+#include <linux/edac.h>
+#include <linux/interrupt.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/sizes.h>
+#include <linux/firmware/xlnx-zynqmp.h>
+#include <linux/firmware/xlnx-event-manager.h>
+
+#include "edac_module.h"
+
+/* Granularity of reported error in bytes */
+#define XDDR_EDAC_ERR_GRAIN			1
+
+#define XDDR_EDAC_MSG_SIZE			256
+#define EVENT					2
+
+#define XDDR_PCSR_OFFSET			0xC
+#define XDDR_ISR_OFFSET				0x14
+#define XDDR_IRQ_EN_OFFSET			0x20
+#define XDDR_IRQ1_EN_OFFSET			0x2C
+#define XDDR_IRQ_DIS_OFFSET			0x24
+#define XDDR_IRQ_CE_MASK			GENMASK(18, 15)
+#define XDDR_IRQ_UE_MASK			GENMASK(14, 11)
+
+#define XDDR_REG_CONFIG0_OFFSET			0x258
+#define XDDR_REG_CONFIG0_BUS_WIDTH_MASK		GENMASK(19, 18)
+#define XDDR_REG_CONFIG0_NUM_CHANS_MASK		BIT(17)
+#define XDDR_REG_CONFIG0_NUM_RANKS_MASK		GENMASK(15, 14)
+#define XDDR_REG_CONFIG0_SIZE_MASK		GENMASK(10, 8)
+
+#define XDDR_REG_PINOUT_OFFSET			0x25C
+#define XDDR_REG_PINOUT_ECC_EN_MASK		GENMASK(7, 5)
+
+#define ECCW0_FLIP_CTRL				0x109C
+#define ECCW0_FLIP0_OFFSET			0x10A0
+#define ECCW1_FLIP_CTRL				0x10AC
+#define ECCW1_FLIP0_OFFSET			0x10B0
+#define ECCR0_CERR_STAT_OFFSET			0x10BC
+#define ECCR0_CE_ADDR_LO_OFFSET			0x10C0
+#define ECCR0_CE_ADDR_HI_OFFSET			0x10C4
+#define ECCR0_CE_DATA_LO_OFFSET			0x10C8
+#define ECCR0_CE_DATA_HI_OFFSET			0x10CC
+#define ECCR0_CE_DATA_PAR_OFFSET		0x10D0
+
+#define ECCR0_UERR_STAT_OFFSET			0x10D4
+#define ECCR0_UE_ADDR_LO_OFFSET			0x10D8
+#define ECCR0_UE_ADDR_HI_OFFSET			0x10DC
+#define ECCR0_UE_DATA_LO_OFFSET			0x10E0
+#define ECCR0_UE_DATA_HI_OFFSET			0x10E4
+#define ECCR0_UE_DATA_PAR_OFFSET		0x10E8
+
+#define ECCR1_CERR_STAT_OFFSET			0x10F4
+#define ECCR1_CE_ADDR_LO_OFFSET			0x10F8
+#define ECCR1_CE_ADDR_HI_OFFSET			0x10FC
+#define ECCR1_CE_DATA_LO_OFFSET			0x1100
+#define ECCR1_CE_DATA_HI_OFFSET			0x110C
+#define ECCR1_CE_DATA_PAR_OFFSET		0x1108
+
+#define ECCR1_UERR_STAT_OFFSET			0x110C
+#define ECCR1_UE_ADDR_LO_OFFSET			0x1110
+#define ECCR1_UE_ADDR_HI_OFFSET			0x1114
+#define ECCR1_UE_DATA_LO_OFFSET			0x1118
+#define ECCR1_UE_DATA_HI_OFFSET			0x111C
+#define ECCR1_UE_DATA_PAR_OFFSET		0x1120
+
+#define XDDR_NOC_REG_ADEC4_OFFSET		0x44
+#define RANK_1_MASK				GENMASK(11, 6)
+#define LRANK_0_MASK				GENMASK(17, 12)
+#define LRANK_1_MASK				GENMASK(23, 18)
+#define MASK_24					GENMASK(29, 24)
+
+#define XDDR_NOC_REG_ADEC5_OFFSET		0x48
+#define XDDR_NOC_REG_ADEC6_OFFSET		0x4C
+#define XDDR_NOC_REG_ADEC7_OFFSET		0x50
+#define XDDR_NOC_REG_ADEC8_OFFSET		0x54
+#define XDDR_NOC_REG_ADEC9_OFFSET		0x58
+#define XDDR_NOC_REG_ADEC10_OFFSET		0x5C
+
+#define XDDR_NOC_REG_ADEC11_OFFSET		0x60
+#define MASK_0					GENMASK(5, 0)
+#define GRP_0_MASK				GENMASK(11, 6)
+#define GRP_1_MASK				GENMASK(17, 12)
+#define CH_0_MASK				GENMASK(23, 18)
+
+#define XDDR_NOC_REG_ADEC12_OFFSET		0x71C
+#define XDDR_NOC_REG_ADEC13_OFFSET		0x720
+
+#define XDDR_NOC_REG_ADEC14_OFFSET		0x724
+#define XDDR_NOC_ROW_MATCH_MASK			GENMASK(17, 0)
+#define XDDR_NOC_COL_MATCH_MASK			GENMASK(27, 18)
+#define XDDR_NOC_BANK_MATCH_MASK		GENMASK(29, 28)
+#define XDDR_NOC_GRP_MATCH_MASK			GENMASK(31, 30)
+
+#define XDDR_NOC_REG_ADEC15_OFFSET		0x728
+#define XDDR_NOC_RANK_MATCH_MASK		GENMASK(1, 0)
+#define XDDR_NOC_LRANK_MATCH_MASK		GENMASK(4, 2)
+#define XDDR_NOC_CH_MATCH_MASK			BIT(5)
+#define XDDR_NOC_MOD_SEL_MASK			BIT(6)
+#define XDDR_NOC_MATCH_EN_MASK			BIT(8)
+
+#define ECCR_UE_CE_ADDR_HI_ROW_MASK		GENMASK(7, 0)
+
+#define XDDR_EDAC_NR_CSROWS			1
+#define XDDR_EDAC_NR_CHANS			1
+
+#define XDDR_BUS_WIDTH_64			0
+#define XDDR_BUS_WIDTH_32			1
+#define XDDR_BUS_WIDTH_16			2
+
+#define ECC_CEPOISON_MASK			0x1
+#define ECC_UEPOISON_MASK			0x3
+
+#define XDDR_MAX_ROW_CNT			18
+#define XDDR_MAX_COL_CNT			10
+#define XDDR_MAX_RANK_CNT			2
+#define XDDR_MAX_LRANK_CNT			3
+#define XDDR_MAX_BANK_CNT			2
+#define XDDR_MAX_GRP_CNT			2
+
+#define PCSR_UNLOCK_VAL				0xF9E8D7C6
+#define XDDR_ERR_TYPE_CE			0
+#define XDDR_ERR_TYPE_UE			1
+
+#define XILINX_DRAM_SIZE_4G			0
+#define XILINX_DRAM_SIZE_6G			1
+#define XILINX_DRAM_SIZE_8G			2
+#define XILINX_DRAM_SIZE_12G			3
+#define XILINX_DRAM_SIZE_16G			4
+#define XILINX_DRAM_SIZE_32G			5
+
+/**
+ * struct ecc_error_info - ECC error log information.
+ * @burstpos:		Burst position.
+ * @lrank:		Logical Rank number.
+ * @rank:		Rank number.
+ * @group:		Group number.
+ * @bank:		Bank number.
+ * @col:		Column number.
+ * @row:		Row number.
+ * @rowhi:		Row number higher bits.
+ * @i:			ECC error info.
+ */
+union ecc_error_info {
+	struct {
+		u32 burstpos:3;
+		u32 lrank:3;
+		u32 rank:2;
+		u32 group:2;
+		u32 bank:2;
+		u32 col:10;
+		u32 row:10;
+		u32 rowhi;
+	};
+	u64 i;
+} __packed;
+
+union edac_info {
+	struct {
+		u32 row0:6;
+		u32 row1:6;
+		u32 row2:6;
+		u32 row3:6;
+		u32 row4:6;
+		u32 reserved:2;
+	};
+	struct {
+		u32 col1:6;
+		u32 col2:6;
+		u32 col3:6;
+		u32 col4:6;
+		u32 col5:6;
+		u32 reservedcol:2;
+	};
+	u32 i;
+} __packed;
+
+/**
+ * struct ecc_status - ECC status information to report.
+ * @ceinfo:	Correctable error log information.
+ * @ueinfo:	Uncorrectable error log information.
+ * @channel:	Channel number.
+ * @error_type:	Error type information.
+ */
+struct ecc_status {
+	union ecc_error_info ceinfo[2];
+	union ecc_error_info ueinfo[2];
+	u8 channel;
+	u8 error_type;
+};
+
+/**
+ * struct edac_priv - DDR memory controller private instance data.
+ * @ddrmc_baseaddr:	Base address of the DDR controller.
+ * @ddrmc_noc_baseaddr:	Base address of the DDRMC NOC.
+ * @message:		Buffer for framing the event specific info.
+ * @mc_id:		Memory controller ID.
+ * @ce_cnt:		Correctable error count.
+ * @ue_cnt:		UnCorrectable error count.
+ * @stat:		ECC status information.
+ * @lrank_bit:		Bit shifts for lrank bit.
+ * @rank_bit:		Bit shifts for rank bit.
+ * @row_bit:		Bit shifts for row bit.
+ * @col_bit:		Bit shifts for column bit.
+ * @bank_bit:		Bit shifts for bank bit.
+ * @grp_bit:		Bit shifts for group bit.
+ * @ch_bit:		Bit shifts for channel bit.
+ * @err_inject_addr:	Data poison address.
+ * @debugfs:		Debugfs handle.
+ */
+struct edac_priv {
+	void __iomem *ddrmc_baseaddr;
+	void __iomem *ddrmc_noc_baseaddr;
+	char message[XDDR_EDAC_MSG_SIZE];
+	u32 mc_id;
+	u32 ce_cnt;
+	u32 ue_cnt;
+	struct ecc_status stat;
+	u32 lrank_bit[3];
+	u32 rank_bit[2];
+	u32 row_bit[18];
+	u32 col_bit[10];
+	u32 bank_bit[2];
+	u32 grp_bit[2];
+	u32 ch_bit;
+#ifdef CONFIG_EDAC_DEBUG
+	u64 err_inject_addr;
+	struct dentry *debugfs;
+#endif
+};
+
+static void get_ce_error_info(struct edac_priv *priv)
+{
+	void __iomem *ddrmc_base;
+	struct ecc_status *p;
+	u32  regval;
+	u64  reghi;
+
+	ddrmc_base = priv->ddrmc_baseaddr;
+	p = &priv->stat;
+
+	p->error_type = XDDR_ERR_TYPE_CE;
+	regval = readl(ddrmc_base + ECCR0_CE_ADDR_LO_OFFSET);
+	reghi = regval & ECCR_UE_CE_ADDR_HI_ROW_MASK;
+	p->ceinfo[0].i = regval | reghi << 32;
+	regval = readl(ddrmc_base + ECCR0_CE_ADDR_HI_OFFSET);
+
+	edac_dbg(2, "ERR DATA: 0x%08X%08X ERR DATA PARITY: 0x%08X\n",
+		 readl(ddrmc_base + ECCR0_CE_DATA_LO_OFFSET),
+		 readl(ddrmc_base + ECCR0_CE_DATA_HI_OFFSET),
+		 readl(ddrmc_base + ECCR0_CE_DATA_PAR_OFFSET));
+
+	regval = readl(ddrmc_base + ECCR1_CE_ADDR_LO_OFFSET);
+	reghi = readl(ddrmc_base + ECCR1_CE_ADDR_HI_OFFSET);
+	p->ceinfo[1].i = regval | reghi << 32;
+	regval = readl(ddrmc_base + ECCR1_CE_ADDR_HI_OFFSET);
+
+	edac_dbg(2, "ERR DATA: 0x%08X%08X ERR DATA PARITY: 0x%08X\n",
+		 readl(ddrmc_base + ECCR1_CE_DATA_LO_OFFSET),
+		 readl(ddrmc_base + ECCR1_CE_DATA_HI_OFFSET),
+		 readl(ddrmc_base + ECCR1_CE_DATA_PAR_OFFSET));
+}
+
+static void get_ue_error_info(struct edac_priv *priv)
+{
+	void __iomem *ddrmc_base;
+	struct ecc_status *p;
+	u32  regval;
+	u64 reghi;
+
+	ddrmc_base = priv->ddrmc_baseaddr;
+	p = &priv->stat;
+
+	p->error_type = XDDR_ERR_TYPE_UE;
+	regval = readl(ddrmc_base + ECCR0_UE_ADDR_LO_OFFSET);
+	reghi = readl(ddrmc_base + ECCR0_UE_ADDR_HI_OFFSET);
+
+	p->ueinfo[0].i = regval | reghi << 32;
+	regval = readl(ddrmc_base + ECCR0_UE_ADDR_HI_OFFSET);
+
+	edac_dbg(2, "ERR DATA: 0x%08X%08X ERR DATA PARITY: 0x%08X\n",
+		 readl(ddrmc_base + ECCR0_UE_DATA_LO_OFFSET),
+		 readl(ddrmc_base + ECCR0_UE_DATA_HI_OFFSET),
+		 readl(ddrmc_base + ECCR0_UE_DATA_PAR_OFFSET));
+
+	regval = readl(ddrmc_base + ECCR1_UE_ADDR_LO_OFFSET);
+	reghi = readl(ddrmc_base + ECCR1_UE_ADDR_HI_OFFSET);
+	p->ueinfo[1].i = regval | reghi << 32;
+
+	edac_dbg(2, "ERR DATA: 0x%08X%08X ERR DATA PARITY: 0x%08X\n",
+		 readl(ddrmc_base + ECCR1_UE_DATA_LO_OFFSET),
+		 readl(ddrmc_base + ECCR1_UE_DATA_HI_OFFSET),
+		 readl(ddrmc_base + ECCR1_UE_DATA_PAR_OFFSET));
+}
+
+static bool get_error_info(struct edac_priv *priv)
+{
+	u32 eccr0_ceval, eccr1_ceval, eccr0_ueval, eccr1_ueval;
+	void __iomem *ddrmc_base;
+	struct ecc_status *p;
+
+	ddrmc_base = priv->ddrmc_baseaddr;
+	p = &priv->stat;
+
+	eccr0_ceval = readl(ddrmc_base + ECCR0_CERR_STAT_OFFSET);
+	eccr1_ceval = readl(ddrmc_base + ECCR1_CERR_STAT_OFFSET);
+	eccr0_ueval = readl(ddrmc_base + ECCR0_UERR_STAT_OFFSET);
+	eccr1_ueval = readl(ddrmc_base + ECCR1_UERR_STAT_OFFSET);
+
+	if (!eccr0_ceval && !eccr1_ceval && !eccr0_ueval && !eccr1_ueval)
+		return 1;
+	if (!eccr0_ceval)
+		p->channel = 1;
+	else
+		p->channel = 0;
+
+	if (eccr0_ceval || eccr1_ceval)
+		get_ce_error_info(priv);
+
+	if (eccr0_ueval || eccr1_ueval) {
+		if (!eccr0_ueval)
+			p->channel = 1;
+		else
+			p->channel = 0;
+		get_ue_error_info(priv);
+	}
+
+	/* Unlock the PCSR registers */
+	writel(PCSR_UNLOCK_VAL, ddrmc_base + XDDR_PCSR_OFFSET);
+
+	writel(0, ddrmc_base + ECCR0_CERR_STAT_OFFSET);
+	writel(0, ddrmc_base + ECCR1_CERR_STAT_OFFSET);
+	writel(0, ddrmc_base + ECCR0_UERR_STAT_OFFSET);
+	writel(0, ddrmc_base + ECCR1_UERR_STAT_OFFSET);
+
+	/* Lock the PCSR registers */
+	writel(1, ddrmc_base + XDDR_PCSR_OFFSET);
+
+	return 0;
+}
+
+/**
+ * convert_to_physical - Convert to physical address.
+ * @priv:	DDR memory controller private instance data.
+ * @pinf:	ECC error info structure.
+ *
+ * Return: Physical address of the DDR memory.
+ */
+static unsigned long convert_to_physical(struct edac_priv *priv, union ecc_error_info pinf)
+{
+	unsigned long err_addr = 0;
+	u32 index;
+	u32 row;
+
+	row = pinf.rowhi << 10 | pinf.row;
+	for (index = 0; index < XDDR_MAX_ROW_CNT; index++) {
+		err_addr |= (row & BIT(0)) << priv->row_bit[index];
+		row >>= 1;
+	}
+
+	for (index = 0; index < XDDR_MAX_COL_CNT; index++) {
+		err_addr |= (pinf.col & BIT(0)) << priv->col_bit[index];
+		pinf.col >>= 1;
+	}
+
+	for (index = 0; index < XDDR_MAX_BANK_CNT; index++) {
+		err_addr |= (pinf.bank & BIT(0)) << priv->bank_bit[index];
+		pinf.bank >>= 1;
+	}
+
+	for (index = 0; index < XDDR_MAX_GRP_CNT; index++) {
+		err_addr |= (pinf.group & BIT(0)) << priv->grp_bit[index];
+		pinf.group >>= 1;
+	}
+
+	for (index = 0; index < XDDR_MAX_RANK_CNT; index++) {
+		err_addr |= (pinf.rank & BIT(0)) << priv->rank_bit[index];
+		pinf.rank >>= 1;
+	}
+
+	for (index = 0; index < XDDR_MAX_LRANK_CNT; index++) {
+		err_addr |= (pinf.lrank & BIT(0)) << priv->lrank_bit[index];
+		pinf.lrank >>= 1;
+	}
+
+	err_addr |= (priv->stat.channel & BIT(0)) << priv->ch_bit;
+
+	return err_addr;
+}
+
+/**
+ * handle_error - Handle Correctable and Uncorrectable errors.
+ * @mci:	EDAC memory controller instance.
+ * @stat:	ECC status structure.
+ *
+ * Handles ECC correctable and uncorrectable errors.
+ */
+static void handle_error(struct mem_ctl_info *mci, struct ecc_status *stat)
+{
+	struct edac_priv *priv = mci->pvt_info;
+	union ecc_error_info pinf;
+
+	if (stat->error_type == XDDR_ERR_TYPE_CE) {
+		priv->ce_cnt++;
+		pinf = stat->ceinfo[stat->channel];
+		snprintf(priv->message, XDDR_EDAC_MSG_SIZE,
+			 "Error type:%s MC ID: %d Addr at %lx Burst Pos: %d\n",
+			 "CE", priv->mc_id,
+			 convert_to_physical(priv, pinf), pinf.burstpos);
+
+		edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci,
+				     priv->ce_cnt, 0, 0, 0, 0, 0, -1,
+				     priv->message, "");
+	}
+
+	if (stat->error_type == XDDR_ERR_TYPE_UE) {
+		priv->ue_cnt++;
+		pinf = stat->ueinfo[stat->channel];
+		snprintf(priv->message, XDDR_EDAC_MSG_SIZE,
+			 "Error type:%s MC ID: %d Addr at %lx Burst Pos: %d\n",
+			 "UE", priv->mc_id,
+			 convert_to_physical(priv, pinf), pinf.burstpos);
+
+		edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci,
+				     priv->ue_cnt, 0, 0, 0, 0, 0, -1,
+				     priv->message, "");
+	}
+
+	memset(stat, 0, sizeof(*stat));
+}
+
+/**
+ * err_callback - Handle Correctable and Uncorrectable errors.
+ * @payload:	payload data.
+ * @data:	mci controller data.
+ *
+ * Handles ECC correctable and uncorrectable errors.
+ */
+static void err_callback(const u32 *payload, void *data)
+{
+	struct mem_ctl_info *mci = (struct mem_ctl_info *)data;
+	struct edac_priv *priv;
+	struct ecc_status *p;
+	int regval;
+
+	priv = mci->pvt_info;
+	p = &priv->stat;
+
+	regval = readl(priv->ddrmc_baseaddr + XDDR_ISR_OFFSET);
+
+	if (payload[EVENT] == XPM_EVENT_ERROR_MASK_DDRMC_CR)
+		p->error_type = XDDR_ERR_TYPE_CE;
+	if (payload[EVENT] == XPM_EVENT_ERROR_MASK_DDRMC_NCR)
+		p->error_type = XDDR_ERR_TYPE_UE;
+
+	if (get_error_info(priv))
+		return;
+
+	handle_error(mci, &priv->stat);
+
+	/* Unlock the PCSR registers */
+	writel(PCSR_UNLOCK_VAL, priv->ddrmc_baseaddr + XDDR_PCSR_OFFSET);
+
+	/* Clear the ISR */
+	writel(regval, priv->ddrmc_baseaddr + XDDR_ISR_OFFSET);
+
+	/* Lock the PCSR registers */
+	writel(1, priv->ddrmc_baseaddr + XDDR_PCSR_OFFSET);
+	edac_dbg(3, "Total error count CE %d UE %d\n",
+		 priv->ce_cnt, priv->ue_cnt);
+}
+
+/**
+ * get_dwidth - Return the controller memory width.
+ * @base:	DDR memory controller base address.
+ *
+ * Get the EDAC device type width appropriate for the controller
+ * configuration.
+ *
+ * Return: a device type width enumeration.
+ */
+static enum dev_type get_dwidth(const void __iomem *base)
+{
+	enum dev_type dt;
+	u32 regval;
+	u32 width;
+
+	regval = readl(base + XDDR_REG_CONFIG0_OFFSET);
+	width  = FIELD_GET(XDDR_REG_CONFIG0_BUS_WIDTH_MASK, regval);
+
+	switch (width) {
+	case XDDR_BUS_WIDTH_16:
+		dt = DEV_X2;
+		break;
+	case XDDR_BUS_WIDTH_32:
+		dt = DEV_X4;
+		break;
+	case XDDR_BUS_WIDTH_64:
+		dt = DEV_X8;
+		break;
+	default:
+		dt = DEV_UNKNOWN;
+	}
+
+	return dt;
+}
+
+/**
+ * get_ecc_state - Return the controller ECC enable/disable status.
+ * @base:	DDR memory controller base address.
+ *
+ * Get the ECC enable/disable status for the controller.
+ *
+ * Return: a ECC status boolean i.e true/false - enabled/disabled.
+ */
+static bool get_ecc_state(void __iomem *base)
+{
+	enum dev_type dt;
+	u32 ecctype;
+
+	dt = get_dwidth(base);
+	if (dt == DEV_UNKNOWN)
+		return false;
+
+	ecctype = readl(base + XDDR_REG_PINOUT_OFFSET);
+	ecctype &= XDDR_REG_PINOUT_ECC_EN_MASK;
+
+	return !!ecctype;
+}
+
+/**
+ * get_memsize - Get the size of the attached memory device.
+ * @priv:	DDR memory controller private instance data.
+ *
+ * Return: the memory size in bytes.
+ */
+static u64 get_memsize(struct edac_priv *priv)
+{
+	u32 regval;
+	u64 size;
+
+	regval = readl(priv->ddrmc_baseaddr + XDDR_REG_CONFIG0_OFFSET);
+	regval  = FIELD_GET(XDDR_REG_CONFIG0_SIZE_MASK, regval);
+
+	switch (regval) {
+	case XILINX_DRAM_SIZE_4G:
+		size = 4U;      break;
+	case XILINX_DRAM_SIZE_6G:
+		size = 6U;      break;
+	case XILINX_DRAM_SIZE_8G:
+		size = 8U;      break;
+	case XILINX_DRAM_SIZE_12G:
+		size = 12U;     break;
+	case XILINX_DRAM_SIZE_16G:
+		size = 16U;     break;
+	case XILINX_DRAM_SIZE_32G:
+		size = 32U;     break;
+	/* Invalid configuration */
+	default:
+		size = 0;	break;
+	}
+
+	size *= SZ_1G;
+	return size;
+}
+
+/**
+ * init_csrows - Initialize the csrow data.
+ * @mci:	EDAC memory controller instance.
+ *
+ * Initialize the chip select rows associated with the EDAC memory
+ * controller instance.
+ */
+static void init_csrows(struct mem_ctl_info *mci)
+{
+	struct edac_priv *priv = mci->pvt_info;
+	struct csrow_info *csi;
+	struct dimm_info *dimm;
+	unsigned long size;
+	u32 row;
+	int ch;
+
+	size = get_memsize(priv);
+	for (row = 0; row < mci->nr_csrows; row++) {
+		csi = mci->csrows[row];
+		for (ch = 0; ch < csi->nr_channels; ch++) {
+			dimm = csi->channels[ch]->dimm;
+			dimm->edac_mode	= EDAC_SECDED;
+			dimm->mtype = MEM_DDR4;
+			dimm->nr_pages = (size >> PAGE_SHIFT) / csi->nr_channels;
+			dimm->grain = XDDR_EDAC_ERR_GRAIN;
+			dimm->dtype = get_dwidth(priv->ddrmc_baseaddr);
+		}
+	}
+}
+
+/**
+ * mc_init - Initialize one driver instance.
+ * @mci:	EDAC memory controller instance.
+ * @pdev:	platform device.
+ *
+ * Perform initialization of the EDAC memory controller instance and
+ * related driver-private data associated with the memory controller the
+ * instance is bound to.
+ */
+static void mc_init(struct mem_ctl_info *mci, struct platform_device *pdev)
+{
+	mci->pdev = &pdev->dev;
+	platform_set_drvdata(pdev, mci);
+
+	/* Initialize controller capabilities and configuration */
+	mci->mtype_cap = MEM_FLAG_DDR4;
+	mci->edac_ctl_cap = EDAC_FLAG_NONE | EDAC_FLAG_SECDED;
+	mci->scrub_cap = SCRUB_HW_SRC;
+	mci->scrub_mode = SCRUB_NONE;
+
+	mci->edac_cap = EDAC_FLAG_SECDED;
+	mci->ctl_name = "xlnx_ddr_controller";
+	mci->dev_name = dev_name(&pdev->dev);
+	mci->mod_name = "xlnx_edac";
+
+	edac_op_state = EDAC_OPSTATE_INT;
+
+	init_csrows(mci);
+}
+
+static void enable_intr(struct edac_priv *priv)
+{
+	/* Unlock the PCSR registers */
+	writel(PCSR_UNLOCK_VAL, priv->ddrmc_baseaddr + XDDR_PCSR_OFFSET);
+
+	/* Enable UE and CE Interrupts to support the interrupt case */
+	writel(XDDR_IRQ_CE_MASK | XDDR_IRQ_UE_MASK,
+	       priv->ddrmc_baseaddr + XDDR_IRQ_EN_OFFSET);
+
+	writel(XDDR_IRQ_UE_MASK,
+	       priv->ddrmc_baseaddr + XDDR_IRQ1_EN_OFFSET);
+	/* Lock the PCSR registers */
+	writel(1, priv->ddrmc_baseaddr + XDDR_PCSR_OFFSET);
+}
+
+static void disable_intr(struct edac_priv *priv)
+{
+	/* Unlock the PCSR registers */
+	writel(PCSR_UNLOCK_VAL, priv->ddrmc_baseaddr + XDDR_PCSR_OFFSET);
+
+	/* Disable UE/CE Interrupts */
+	writel(XDDR_IRQ_CE_MASK | XDDR_IRQ_UE_MASK,
+	       priv->ddrmc_baseaddr + XDDR_IRQ_DIS_OFFSET);
+
+	/* Lock the PCSR registers */
+	writel(1, priv->ddrmc_baseaddr + XDDR_PCSR_OFFSET);
+}
+
+#define to_mci(k) container_of(k, struct mem_ctl_info, dev)
+
+#ifdef CONFIG_EDAC_DEBUG
+/**
+ * poison_setup - Update poison registers.
+ * @priv:	DDR memory controller private instance data.
+ *
+ * Update poison registers as per DDR mapping upon write of the address
+ * location the fault is injected.
+ * Return: none.
+ */
+static void poison_setup(struct edac_priv *priv)
+{
+	u32 col = 0, row = 0, bank = 0, grp = 0, rank = 0, lrank = 0, ch = 0;
+	u32 index, regval;
+
+	for (index = 0; index < XDDR_MAX_ROW_CNT; index++) {
+		row |= (((priv->err_inject_addr >> priv->row_bit[index]) &
+						BIT(0)) << index);
+	}
+
+	for (index = 0; index < XDDR_MAX_COL_CNT; index++) {
+		col |= (((priv->err_inject_addr >> priv->col_bit[index]) &
+						BIT(0)) << index);
+	}
+
+	for (index = 0; index < XDDR_MAX_BANK_CNT; index++) {
+		bank |= (((priv->err_inject_addr >> priv->bank_bit[index]) &
+						BIT(0)) << index);
+	}
+
+	for (index = 0; index < XDDR_MAX_GRP_CNT; index++) {
+		grp |= (((priv->err_inject_addr >> priv->grp_bit[index]) &
+						BIT(0)) << index);
+	}
+
+	for (index = 0; index < XDDR_MAX_RANK_CNT; index++) {
+		rank |= (((priv->err_inject_addr >> priv->rank_bit[index]) &
+						BIT(0)) << index);
+	}
+
+	for (index = 0; index < XDDR_MAX_LRANK_CNT; index++) {
+		lrank |= (((priv->err_inject_addr >> priv->lrank_bit[index]) &
+						BIT(0)) << index);
+	}
+
+	ch = (priv->err_inject_addr >> priv->ch_bit) & BIT(0);
+	if (ch)
+		writel(0xFF, priv->ddrmc_baseaddr + ECCW1_FLIP_CTRL);
+	else
+		writel(0xFF, priv->ddrmc_baseaddr + ECCW0_FLIP_CTRL);
+
+	writel(0, priv->ddrmc_noc_baseaddr + XDDR_NOC_REG_ADEC12_OFFSET);
+	writel(0, priv->ddrmc_noc_baseaddr + XDDR_NOC_REG_ADEC13_OFFSET);
+
+	regval = row & XDDR_NOC_ROW_MATCH_MASK;
+	regval |= FIELD_PREP(XDDR_NOC_COL_MATCH_MASK, col);
+	regval |= FIELD_PREP(XDDR_NOC_BANK_MATCH_MASK, bank);
+	regval |= FIELD_PREP(XDDR_NOC_GRP_MATCH_MASK, grp);
+	writel(regval, priv->ddrmc_noc_baseaddr + XDDR_NOC_REG_ADEC14_OFFSET);
+
+	regval = rank & XDDR_NOC_RANK_MATCH_MASK;
+	regval |= FIELD_PREP(XDDR_NOC_LRANK_MATCH_MASK, lrank);
+	regval |= FIELD_PREP(XDDR_NOC_CH_MATCH_MASK, ch);
+	regval |= (XDDR_NOC_MOD_SEL_MASK | XDDR_NOC_MATCH_EN_MASK);
+	writel(regval, priv->ddrmc_noc_baseaddr + XDDR_NOC_REG_ADEC15_OFFSET);
+}
+
+static ssize_t xddr_inject_data_poison_store(struct mem_ctl_info *mci,
+					     const char __user *data)
+{
+	struct edac_priv *priv = mci->pvt_info;
+
+	writel(0, priv->ddrmc_baseaddr + ECCW0_FLIP0_OFFSET);
+	writel(0, priv->ddrmc_baseaddr + ECCW1_FLIP0_OFFSET);
+
+	if (strncmp(data, "CE", 2) == 0) {
+		writel(ECC_CEPOISON_MASK, priv->ddrmc_baseaddr +
+		       ECCW0_FLIP0_OFFSET);
+		writel(ECC_CEPOISON_MASK, priv->ddrmc_baseaddr +
+		       ECCW1_FLIP0_OFFSET);
+	} else {
+		writel(ECC_UEPOISON_MASK, priv->ddrmc_baseaddr +
+		       ECCW0_FLIP0_OFFSET);
+		writel(ECC_UEPOISON_MASK, priv->ddrmc_baseaddr +
+		       ECCW1_FLIP0_OFFSET);
+	}
+
+	/* Lock the PCSR registers */
+	writel(1, priv->ddrmc_baseaddr + XDDR_PCSR_OFFSET);
+
+	return 0;
+}
+
+static ssize_t inject_data_poison_store(struct file *file, const char __user *data,
+					size_t count, loff_t *ppos)
+{
+	struct device *dev = file->private_data;
+	struct mem_ctl_info *mci = to_mci(dev);
+	struct edac_priv *priv = mci->pvt_info;
+
+	/* Unlock the PCSR registers */
+	writel(PCSR_UNLOCK_VAL, priv->ddrmc_baseaddr + XDDR_PCSR_OFFSET);
+	writel(PCSR_UNLOCK_VAL, priv->ddrmc_noc_baseaddr + XDDR_PCSR_OFFSET);
+
+	poison_setup(priv);
+
+	/* Lock the PCSR registers */
+	writel(1, priv->ddrmc_noc_baseaddr + XDDR_PCSR_OFFSET);
+
+	xddr_inject_data_poison_store(mci, data);
+
+	return count;
+}
+
+static const struct file_operations xddr_inject_enable_fops = {
+	.open = simple_open,
+	.write = inject_data_poison_store,
+	.llseek = generic_file_llseek,
+};
+
+static void create_debugfs_attributes(struct mem_ctl_info *mci)
+{
+	struct edac_priv *priv = mci->pvt_info;
+
+	priv->debugfs = edac_debugfs_create_dir(mci->dev_name);
+	if (!priv->debugfs)
+		return;
+
+	edac_debugfs_create_file("inject_error", 0200, priv->debugfs,
+				 &mci->dev, &xddr_inject_enable_fops);
+	debugfs_create_x64("address", 0600, priv->debugfs,
+			   &priv->err_inject_addr);
+	mci->debugfs = priv->debugfs;
+}
+
+static inline void process_bit(struct edac_priv *priv, unsigned int start, u32 regval)
+{
+	union edac_info rows;
+
+	rows.i  = regval;
+	priv->row_bit[start]	 = rows.row0;
+	priv->row_bit[start + 1] = rows.row1;
+	priv->row_bit[start + 2] = rows.row2;
+	priv->row_bit[start + 3] = rows.row3;
+	priv->row_bit[start + 4] = rows.row4;
+}
+
+static void setup_row_address_map(struct edac_priv *priv)
+{
+	u32 regval;
+	union edac_info rows;
+
+	regval = readl(priv->ddrmc_noc_baseaddr + XDDR_NOC_REG_ADEC5_OFFSET);
+	process_bit(priv, 0, regval);
+
+	regval = readl(priv->ddrmc_noc_baseaddr + XDDR_NOC_REG_ADEC6_OFFSET);
+	process_bit(priv, 5, regval);
+
+	regval = readl(priv->ddrmc_noc_baseaddr + XDDR_NOC_REG_ADEC7_OFFSET);
+	process_bit(priv, 10, regval);
+
+	regval = readl(priv->ddrmc_noc_baseaddr + XDDR_NOC_REG_ADEC8_OFFSET);
+	rows.i  = regval;
+
+	priv->row_bit[15] = rows.row0;
+	priv->row_bit[16] = rows.row1;
+	priv->row_bit[17] = rows.row2;
+}
+
+static void setup_column_address_map(struct edac_priv *priv)
+{
+	u32 regval;
+	union edac_info cols;
+
+	regval = readl(priv->ddrmc_noc_baseaddr + XDDR_NOC_REG_ADEC8_OFFSET);
+	priv->col_bit[0] = FIELD_GET(MASK_24, regval);
+
+	regval = readl(priv->ddrmc_noc_baseaddr + XDDR_NOC_REG_ADEC9_OFFSET);
+	cols.i  = regval;
+	priv->col_bit[1] = cols.col1;
+	priv->col_bit[2] = cols.col2;
+	priv->col_bit[3] = cols.col3;
+	priv->col_bit[4] = cols.col4;
+	priv->col_bit[5] = cols.col5;
+
+	regval = readl(priv->ddrmc_noc_baseaddr + XDDR_NOC_REG_ADEC10_OFFSET);
+	cols.i  = regval;
+	priv->col_bit[6] = cols.col1;
+	priv->col_bit[7] = cols.col2;
+	priv->col_bit[8] = cols.col3;
+	priv->col_bit[9] = cols.col4;
+}
+
+static void setup_bank_grp_ch_address_map(struct edac_priv *priv)
+{
+	u32 regval;
+
+	regval = readl(priv->ddrmc_noc_baseaddr + XDDR_NOC_REG_ADEC10_OFFSET);
+	priv->bank_bit[0] = FIELD_GET(MASK_24, regval);
+
+	regval = readl(priv->ddrmc_noc_baseaddr + XDDR_NOC_REG_ADEC11_OFFSET);
+	priv->bank_bit[1] = (regval & MASK_0);
+	priv->grp_bit[0] = FIELD_GET(GRP_0_MASK, regval);
+	priv->grp_bit[1] = FIELD_GET(GRP_1_MASK, regval);
+	priv->ch_bit = FIELD_GET(CH_0_MASK, regval);
+}
+
+static void setup_rank_lrank_address_map(struct edac_priv *priv)
+{
+	u32 regval;
+
+	regval = readl(priv->ddrmc_noc_baseaddr + XDDR_NOC_REG_ADEC4_OFFSET);
+	priv->rank_bit[0] = (regval & MASK_0);
+	priv->rank_bit[1] = FIELD_GET(RANK_1_MASK, regval);
+	priv->lrank_bit[0] = FIELD_GET(LRANK_0_MASK, regval);
+	priv->lrank_bit[1] = FIELD_GET(LRANK_1_MASK, regval);
+	priv->lrank_bit[2] = FIELD_GET(MASK_24, regval);
+}
+
+/**
+ * setup_address_map - Set Address Map by querying ADDRMAP registers.
+ * @priv:	DDR memory controller private instance data.
+ *
+ * Set Address Map by querying ADDRMAP registers.
+ *
+ * Return: none.
+ */
+static void setup_address_map(struct edac_priv *priv)
+{
+	setup_row_address_map(priv);
+
+	setup_column_address_map(priv);
+
+	setup_bank_grp_ch_address_map(priv);
+
+	setup_rank_lrank_address_map(priv);
+}
+#endif /* CONFIG_EDAC_DEBUG */
+
+static const struct of_device_id xlnx_edac_match[] = {
+	{ .compatible = "xlnx,versal-ddrmc", },
+	{
+		/* end of table */
+	}
+};
+
+MODULE_DEVICE_TABLE(of, xlnx_edac_match);
+static u32 emif_get_id(struct device_node *node)
+{
+	u32 addr, my_addr, my_id = 0;
+	struct device_node *np;
+	const __be32 *addrp;
+
+	addrp = of_get_address(node, 0, NULL, NULL);
+	my_addr = (u32)of_translate_address(node, addrp);
+
+	for_each_matching_node(np, xlnx_edac_match) {
+		if (np == node)
+			continue;
+
+		addrp = of_get_address(np, 0, NULL, NULL);
+		addr = (u32)of_translate_address(np, addrp);
+
+		edac_printk(KERN_INFO, EDAC_MC,
+			    "addr=%x, my_addr=%x\n",
+			    addr, my_addr);
+
+		if (addr < my_addr)
+			my_id++;
+	}
+
+	return my_id;
+}
+
+static int mc_probe(struct platform_device *pdev)
+{
+	void __iomem *ddrmc_baseaddr, *ddrmc_noc_baseaddr;
+	struct edac_mc_layer layers[2];
+	struct mem_ctl_info *mci;
+	u8 num_chans, num_csrows;
+	struct edac_priv *priv;
+	u32 edac_mc_id, regval;
+	int rc;
+
+	ddrmc_baseaddr = devm_platform_ioremap_resource_byname(pdev, "base");
+	if (IS_ERR(ddrmc_baseaddr))
+		return PTR_ERR(ddrmc_baseaddr);
+
+	ddrmc_noc_baseaddr = devm_platform_ioremap_resource_byname(pdev, "noc");
+	if (IS_ERR(ddrmc_noc_baseaddr))
+		return PTR_ERR(ddrmc_noc_baseaddr);
+
+	if (!get_ecc_state(ddrmc_baseaddr))
+		return -ENXIO;
+
+	/* Allocate ID number for our EMIF controller */
+	edac_mc_id = emif_get_id(pdev->dev.of_node);
+	if (edac_mc_id < 0)
+		return -EINVAL;
+
+	regval = readl(ddrmc_baseaddr + XDDR_REG_CONFIG0_OFFSET);
+	num_chans = FIELD_PREP(XDDR_REG_CONFIG0_NUM_CHANS_MASK, regval);
+	num_chans++;
+
+	num_csrows = FIELD_PREP(XDDR_REG_CONFIG0_NUM_RANKS_MASK, regval);
+	num_csrows *= 2;
+	if (!num_csrows)
+		num_csrows = 1;
+
+	layers[0].type = EDAC_MC_LAYER_CHIP_SELECT;
+	layers[0].size = num_csrows;
+	layers[0].is_virt_csrow = true;
+	layers[1].type = EDAC_MC_LAYER_CHANNEL;
+	layers[1].size = num_chans;
+	layers[1].is_virt_csrow = false;
+
+	mci = edac_mc_alloc(edac_mc_id, ARRAY_SIZE(layers), layers,
+			    sizeof(struct edac_priv));
+	if (!mci) {
+		edac_printk(KERN_ERR, EDAC_MC,
+			    "Failed memory allocation for mc instance\n");
+		return -ENOMEM;
+	}
+
+	priv = mci->pvt_info;
+	priv->ddrmc_baseaddr = ddrmc_baseaddr;
+	priv->ddrmc_noc_baseaddr = ddrmc_noc_baseaddr;
+	priv->ce_cnt = 0;
+	priv->ue_cnt = 0;
+	priv->mc_id = edac_mc_id;
+
+	mc_init(mci, pdev);
+
+	rc = edac_mc_add_mc(mci);
+	if (rc) {
+		edac_printk(KERN_ERR, EDAC_MC,
+			    "Failed to register with EDAC core\n");
+		goto free_edac_mc;
+	}
+
+	rc = xlnx_register_event(PM_NOTIFY_CB, EVENT_ERROR_PMC_ERR1,
+				 XPM_EVENT_ERROR_MASK_DDRMC_CR | XPM_EVENT_ERROR_MASK_DDRMC_NCR |
+				 XPM_EVENT_ERROR_MASK_NOC_CR | XPM_EVENT_ERROR_MASK_NOC_NCR,
+				 false, err_callback, mci);
+	if (rc) {
+		if (rc == -EACCES)
+			rc = -EPROBE_DEFER;
+
+		goto del_mc;
+	}
+
+#ifdef CONFIG_EDAC_DEBUG
+	create_debugfs_attributes(mci);
+	setup_address_map(priv);
+#endif
+	enable_intr(priv);
+	return rc;
+
+del_mc:
+	edac_mc_del_mc(&pdev->dev);
+free_edac_mc:
+	edac_mc_free(mci);
+
+	return rc;
+}
+
+static int mc_remove(struct platform_device *pdev)
+{
+	struct mem_ctl_info *mci = platform_get_drvdata(pdev);
+	struct edac_priv *priv = mci->pvt_info;
+
+	disable_intr(priv);
+
+#ifdef CONFIG_EDAC_DEBUG
+	debugfs_remove_recursive(priv->debugfs);
+#endif
+
+	xlnx_unregister_event(PM_NOTIFY_CB, EVENT_ERROR_PMC_ERR1,
+			      XPM_EVENT_ERROR_MASK_DDRMC_CR |
+			      XPM_EVENT_ERROR_MASK_NOC_CR |
+			      XPM_EVENT_ERROR_MASK_NOC_NCR |
+			      XPM_EVENT_ERROR_MASK_DDRMC_NCR, err_callback, mci);
+	edac_mc_del_mc(&pdev->dev);
+	edac_mc_free(mci);
+
+	return 0;
+}
+
+static struct platform_driver xilinx_ddr_edac_mc_driver = {
+	.driver = {
+		.name = "xilinx-ddrmc-edac",
+		.of_match_table = xlnx_edac_match,
+	},
+	.probe = mc_probe,
+	.remove = mc_remove,
+};
+
+module_platform_driver(xilinx_ddr_edac_mc_driver);
+
+MODULE_AUTHOR("AMD Inc");
+MODULE_DESCRIPTION("Xilinx DDRMC ECC driver");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 9dda7d9898ff..169e165d37aa 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -87,6 +87,18 @@
 #define SD_ITAPDLY	0xFF180314
 #define SD_OTAPDLYSEL	0xFF180318
 
+/**
+ * XPM_EVENT_ERROR_MASK_DDRMC_CR: Error event mask for DDRMC MC Correctable ECC Error.
+ */
+#define XPM_EVENT_ERROR_MASK_DDRMC_CR		BIT(18)
+
+/**
+ * XPM_EVENT_ERROR_MASK_DDRMC_NCR: Error event mask for DDRMC MC Non-Correctable ECC Error.
+ */
+#define XPM_EVENT_ERROR_MASK_DDRMC_NCR		BIT(19)
+#define XPM_EVENT_ERROR_MASK_NOC_NCR		BIT(13)
+#define XPM_EVENT_ERROR_MASK_NOC_CR		BIT(12)
+
 enum pm_api_cb_id {
 	PM_INIT_SUSPEND_CB = 30,
 	PM_ACKNOWLEDGE_CB = 31,
-- 
2.17.1


