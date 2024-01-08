Return-Path: <devicetree+bounces-30088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 479308267C0
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 06:27:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 151081C20DA5
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 05:27:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F7D879E0;
	Mon,  8 Jan 2024 05:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="gjoP364Y"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2071.outbound.protection.outlook.com [40.107.223.71])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699B679CC
	for <devicetree@vger.kernel.org>; Mon,  8 Jan 2024 05:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OCS9HMj92CEFPkPJ+LyyWi1pFE4i9ZSSQEiL2h1fRZGB9nBf56Us5SFsym93WQRYfmHjKx8QfgBKzWhh9v/OWRa90BnghJHBtUfpWxxAHLlqTBbd5KzNBoVcFec4Z7LYFDg0112L0tA7cSvY5/OCr6wQLFBjwd5GiX151+2BCF6mfFkxW2j4ASBEz2T2ra4eHnxaXGKFRaY5XZ4nLZHDV7bcPRnqI9MVrnt9OmgrWmsozGDrtYdF0asNtApw3gI+lPlWnvp7y89BcNYexu5aSi9EmafiABHA1kGZX6ebH/69N948FqTLZtgcFBIDeTUEpIZAhDOJEfDNJt5BrkZeEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vVWatS5AbNd/jB3bOfkLVhHCKB6aD2Z1ZwSReJc2SdY=;
 b=C/R5y5sOzZUrI7E7b7I27h3OqjvitVuSfbI5uFovXibvrA7ovEuXVxXQ5tF4ckTLl0qaRjbX0SkhM0/8vmaPNOBcchenZe9B6+THoTZphBiBFtDJdXZQ0M3JZnstshx+VreowLweAVVaMhRNhEibcMdekqbXcgJ7d2bDf1TEVkz4Dsd6kIfAExd0Q3HR6E6IZomgElo1tosSXIM+bqXrjB6Z6lh/3lPZObV6R3qo3KvIvMK9p5WZSH6vY22fW8QFY0qBvDfyvU2aauHjmjVIPp+OQYHotDd2uqNshnotSs7Ic3JPMeLEMqmZMfxwA2ZcebyjDNdiT8kN4XJ/tHL80Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=linaro.org smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vVWatS5AbNd/jB3bOfkLVhHCKB6aD2Z1ZwSReJc2SdY=;
 b=gjoP364YR3GIucDU7/VnvhSoyiPL1BJtv7QQlVfRvmGUdaCEh7AmX/8+g2BHaGsnYsHjHg1X5vPPy3GNIPLUXFW9a+hImRP3jCHNmlJ8z5zROAxR/9jVPlqGQXPLEMgLlcbqmWwNhfKsaSDKynpslVE2HCI3ACViQRwlv9zFtK0=
Received: from DM6PR13CA0040.namprd13.prod.outlook.com (2603:10b6:5:134::17)
 by IA0PR12MB8253.namprd12.prod.outlook.com (2603:10b6:208:402::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.21; Mon, 8 Jan
 2024 05:27:14 +0000
Received: from DS2PEPF00003442.namprd04.prod.outlook.com
 (2603:10b6:5:134:cafe::f5) by DM6PR13CA0040.outlook.office365.com
 (2603:10b6:5:134::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.14 via Frontend
 Transport; Mon, 8 Jan 2024 05:27:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB03.amd.com; pr=C
Received: from SATLEXMB03.amd.com (165.204.84.17) by
 DS2PEPF00003442.mail.protection.outlook.com (10.167.17.69) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.7181.13 via Frontend Transport; Mon, 8 Jan 2024 05:27:14 +0000
Received: from SATLEXMB08.amd.com (10.181.40.132) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.34; Sun, 7 Jan
 2024 23:27:13 -0600
Received: from SATLEXMB04.amd.com (10.181.40.145) by SATLEXMB08.amd.com
 (10.181.40.132) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.32; Sun, 7 Jan
 2024 21:26:58 -0800
Received: from xhdbharathm40.xilinx.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server id 15.1.2507.34 via Frontend
 Transport; Sun, 7 Jan 2024 23:26:56 -0600
From: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
To: <srinivas.kandagatla@linaro.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<michal.simek@amd.com>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>
CC: <linux-kernel@vger.kernel.org->, <praveent@amd.com>
Subject: [PATCH V3 3/3] nvmem: zynqmp_nvmem: Add support to access efuse
Date: Mon, 8 Jan 2024 10:56:17 +0530
Message-ID: <20240108052617.32510-4-praveen.teja.kundanala@amd.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240108052617.32510-1-praveen.teja.kundanala@amd.com>
References: <20240108052617.32510-1-praveen.teja.kundanala@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS2PEPF00003442:EE_|IA0PR12MB8253:EE_
X-MS-Office365-Filtering-Correlation-Id: 14dfe97b-6c36-4ce3-01d6-08dc100a790f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	b93GFQ2PZrjDTuLI73zKkubJ/nxj66VIz6AIa9b5wBr5YRahzN08yDHHMiNqt9f8iV+8DwlNgZvnrhyWnEK7GLC6j1Nprg39tHeqAqoWwvxudKzIGIaPVFIFswprbabkz452zFMaWqGUteTCUVVTzDKlPyByY7t+VnEeam6w0nuYIJtoyergQwBzMNtSFSRJH1gXL5Y64GXKSs4MZEz7+OnnRyDypAZHSwTueZ9GG+jSrb2G1H5LSxPlVneNx/ATY1BU5U4/3fsk0F+17zZvA7S4fZ8ZHDmsxNgirIy7Njs0ceLwecvrNzaiBHnnkIXqsCe0rWUcXpu767Ib441tX28hFtO7F+bkYpVs94W9BBapfaHD7OSgZYmzmY0Qpd14kQz0/iO/+xaGP/0FvC2HQYKEMBsTi8Fz1sS6cPDEgYKQMGSGco2AysXZU53e9yoH1PVfW0U4NIgwdTN60Omefkia1BoRUp3Gs10SOi25SF3987UIY/DhXm1car/iPskpyMg9OB+Zw+bRmpYUr8eAboV/GL30/dM9Q84KQixu2Pan+7JGZdhi1rpxlSBZpkhmQxFOhWosIrzP7V491vCXefSdhdKyiVKgb90sNfZMK7KNxy4hnQLJ71jXr1AF7KvzwQm2/tUJ08EgWElhto8tNhvEBa+9Q4cQojMRTkjKNiEr1ivEAnpuZhRnauspjffavLpXvddZSs7TatEFSv7q3TLI9mWJsYIVQigpoqXOtyARhrEsrv5cRgtOf9ttJPsR7cFDSaMNzCZRC5VcfKLHzg==
X-Forefront-Antispam-Report:
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB03.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(39860400002)(346002)(136003)(396003)(376002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(82310400011)(40470700004)(46966006)(36840700001)(40460700003)(40480700001)(426003)(26005)(1076003)(2616005)(336012)(6666004)(478600001)(82740400003)(103116003)(36756003)(86362001)(81166007)(356005)(5660300002)(2906002)(41300700001)(36860700001)(47076005)(83380400001)(110136005)(70586007)(70206006)(316002)(4326008)(8676002)(8936002)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2024 05:27:14.5730
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 14dfe97b-6c36-4ce3-01d6-08dc100a790f
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB03.amd.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DS2PEPF00003442.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB8253

Add support to read/write efuse memory map of ZynqMP.
Below are the offsets of ZynqMP efuse memory map
	0 - SOC version(read only)
	0xC - 0xFC -ZynqMP specific purpose efuses
	0x100 - 0x17F - Physical Unclonable Function(PUF)
                efuses repurposed as user efuses

Signed-off-by: Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
---
 MAINTAINERS                  |   8 ++
 drivers/nvmem/zynqmp_nvmem.c | 215 ++++++++++++++++++++++++++++++-----
 2 files changed, 192 insertions(+), 31 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 97f51d5ec1cf..10cb04646b17 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -24008,6 +24008,14 @@ M:	Harsha <harsha.harsha@amd.com>
 S:	Maintained
 F:	drivers/crypto/xilinx/zynqmp-sha.c
 
+XILINX ZYNQMP NVMEM DRIVER
+M:	Praveen Teja Kundanala <praveen.teja.kundanala@amd.com>
+M:	Kalyani Akula <kalyani.akula@amd.com>
+R:	Michal Simek <michal.simek@amd.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/nvmem/xlnx,zynqmp-nvmem.yaml
+F:	drivers/nvmem/zynqmp_nvmem.c
+
 XILLYBUS DRIVER
 M:	Eli Billauer <eli.billauer@gmail.com>
 L:	linux-kernel@vger.kernel.org
diff --git a/drivers/nvmem/zynqmp_nvmem.c b/drivers/nvmem/zynqmp_nvmem.c
index 7f15aa89a9d0..8682adaacd69 100644
--- a/drivers/nvmem/zynqmp_nvmem.c
+++ b/drivers/nvmem/zynqmp_nvmem.c
@@ -1,8 +1,10 @@
 // SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright (C) 2019 Xilinx, Inc.
+ * Copyright (C) 2022 - 2023, Advanced Micro Devices, Inc.
  */
 
+#include <linux/dma-mapping.h>
 #include <linux/module.h>
 #include <linux/nvmem-provider.h>
 #include <linux/of.h>
@@ -10,36 +12,190 @@
 #include <linux/firmware/xlnx-zynqmp.h>
 
 #define SILICON_REVISION_MASK 0xF
+#define P_USER_0_64_UPPER_MASK	GENMASK(31, 16)
+#define P_USER_127_LOWER_4_BIT_MASK GENMASK(3, 0)
+#define WORD_INBYTES		4
+#define SOC_VER_SIZE		0x4
+#define EFUSE_MEMORY_SIZE	0x177
+#define UNUSED_SPACE		0x8
+#define ZYNQMP_NVMEM_SIZE	(SOC_VER_SIZE + UNUSED_SPACE + \
+				 EFUSE_MEMORY_SIZE)
+#define SOC_VERSION_OFFSET	0x0
+#define EFUSE_START_OFFSET	0xC
+#define EFUSE_END_OFFSET	0xFC
+#define EFUSE_PUF_START_OFFSET	0x100
+#define EFUSE_PUF_MID_OFFSET	0x140
+#define EFUSE_PUF_END_OFFSET	0x17F
+#define EFUSE_NOT_ENABLED	29
 
-struct zynqmp_nvmem_data {
-	struct device *dev;
-	struct nvmem_device *nvmem;
+/*
+ * efuse access type
+ */
+enum efuse_access {
+	EFUSE_READ = 0,
+	EFUSE_WRITE
+};
+
+/**
+ * struct xilinx_efuse - the basic structure
+ * @src:	address of the buffer to store the data to be write/read
+ * @size:	read/write word count
+ * @offset:	read/write offset
+ * @flag:	0 - represents efuse read and 1- represents efuse write
+ * @pufuserfuse:0 - represents non-puf efuses, offset is used for read/write
+ *		1 - represents puf user fuse row number.
+ *
+ * this structure stores all the required details to
+ * read/write efuse memory.
+ */
+struct xilinx_efuse {
+	u64 src;
+	u32 size;
+	u32 offset;
+	enum efuse_access flag;
+	u32 pufuserfuse;
 };
 
-static int zynqmp_nvmem_read(void *context, unsigned int offset,
-			     void *val, size_t bytes)
+static int zynqmp_efuse_access(void *context, unsigned int offset,
+			       void *val, size_t bytes, enum efuse_access flag,
+			       unsigned int pufflag)
 {
+	struct device *dev = context;
+	struct xilinx_efuse *efuse;
+	dma_addr_t dma_addr;
+	dma_addr_t dma_buf;
+	size_t words = bytes / WORD_INBYTES;
 	int ret;
-	int idcode, version;
-	struct zynqmp_nvmem_data *priv = context;
-
-	ret = zynqmp_pm_get_chipid(&idcode, &version);
-	if (ret < 0)
-		return ret;
+	int value;
+	char *data;
+
+	if (bytes % WORD_INBYTES != 0) {
+		dev_err(dev, "Bytes requested should be word aligned\n");
+		return -EOPNOTSUPP;
+	}
+
+	if (pufflag == 0 && offset % WORD_INBYTES) {
+		dev_err(dev, "Offset requested should be word aligned\n");
+		return -EOPNOTSUPP;
+	}
+
+	if (pufflag == 1 && flag == EFUSE_WRITE) {
+		memcpy(&value, val, bytes);
+		if ((offset == EFUSE_PUF_START_OFFSET ||
+		     offset == EFUSE_PUF_MID_OFFSET) &&
+		    value & P_USER_0_64_UPPER_MASK) {
+			dev_err(dev, "Only lower 4 bytes are allowed to be programmed in P_USER_0 & P_USER_64\n");
+			return -EOPNOTSUPP;
+		}
+
+		if (offset == EFUSE_PUF_END_OFFSET &&
+		    (value & P_USER_127_LOWER_4_BIT_MASK)) {
+			dev_err(dev, "Only MSB 28 bits are allowed to be programmed for P_USER_127\n");
+			return -EOPNOTSUPP;
+		}
+	}
+
+	efuse = dma_alloc_coherent(dev, sizeof(struct xilinx_efuse),
+				   &dma_addr, GFP_KERNEL);
+	if (!efuse)
+		return -ENOMEM;
 
-	dev_dbg(priv->dev, "Read chipid val %x %x\n", idcode, version);
-	*(int *)val = version & SILICON_REVISION_MASK;
+	data = dma_alloc_coherent(dev, sizeof(bytes),
+				  &dma_buf, GFP_KERNEL);
+	if (!data) {
+		ret = -ENOMEM;
+		goto efuse_data_fail;
+	}
+
+	if (flag == EFUSE_WRITE) {
+		memcpy(data, val, bytes);
+		efuse->flag = EFUSE_WRITE;
+	} else {
+		efuse->flag = EFUSE_READ;
+	}
+
+	efuse->src = dma_buf;
+	efuse->size = words;
+	efuse->offset = offset;
+	efuse->pufuserfuse = pufflag;
+
+	zynqmp_pm_efuse_access(dma_addr, (u32 *)&ret);
+	if (ret != 0) {
+		if (ret == EFUSE_NOT_ENABLED) {
+			dev_err(dev, "efuse access is not enabled\n");
+			ret = -EOPNOTSUPP;
+		} else {
+			dev_err(dev, "Error in efuse read %x\n", ret);
+			ret = -EPERM;
+		}
+		goto efuse_access_err;
+	}
+
+	if (flag == EFUSE_READ)
+		memcpy(val, data, bytes);
+efuse_access_err:
+	dma_free_coherent(dev, sizeof(bytes),
+			  data, dma_buf);
+efuse_data_fail:
+	dma_free_coherent(dev, sizeof(struct xilinx_efuse),
+			  efuse, dma_addr);
+
+	return ret;
+}
 
-	return 0;
+static int zynqmp_nvmem_read(void *context, unsigned int offset, void *val, size_t bytes)
+{
+	struct device *dev = context;
+	int ret;
+	int pufflag = 0;
+	int idcode;
+	int version;
+
+	if (offset >= EFUSE_PUF_START_OFFSET && offset <= EFUSE_PUF_END_OFFSET)
+		pufflag = 1;
+
+	switch (offset) {
+	/* Soc version offset is zero */
+	case SOC_VERSION_OFFSET:
+		if (bytes != SOC_VER_SIZE)
+			return -EOPNOTSUPP;
+
+		ret = zynqmp_pm_get_chipid((u32 *)&idcode, (u32 *)&version);
+		if (ret < 0)
+			return ret;
+
+		dev_dbg(dev, "Read chipid val %x %x\n", idcode, version);
+		*(int *)val = version & SILICON_REVISION_MASK;
+		break;
+	/* Efuse offset starts from 0xc */
+	case EFUSE_START_OFFSET ... EFUSE_END_OFFSET:
+	case EFUSE_PUF_START_OFFSET ... EFUSE_PUF_END_OFFSET:
+		ret = zynqmp_efuse_access(context, offset, val,
+					  bytes, EFUSE_READ, pufflag);
+		break;
+	default:
+		*(u32 *)val = 0xDEADBEEF;
+		ret = 0;
+		break;
+	}
+
+	return ret;
 }
 
-static struct nvmem_config econfig = {
-	.name = "zynqmp-nvmem",
-	.owner = THIS_MODULE,
-	.word_size = 1,
-	.size = 1,
-	.read_only = true,
-};
+static int zynqmp_nvmem_write(void *context,
+			      unsigned int offset, void *val, size_t bytes)
+{
+	int pufflag = 0;
+
+	if (offset < EFUSE_START_OFFSET || offset > EFUSE_PUF_END_OFFSET)
+		return -EOPNOTSUPP;
+
+	if (offset >= EFUSE_PUF_START_OFFSET && offset <= EFUSE_PUF_END_OFFSET)
+		pufflag = 1;
+
+	return zynqmp_efuse_access(context, offset,
+				   val, bytes, EFUSE_WRITE, pufflag);
+}
 
 static const struct of_device_id zynqmp_nvmem_match[] = {
 	{ .compatible = "xlnx,zynqmp-nvmem-fw", },
@@ -50,21 +206,18 @@ MODULE_DEVICE_TABLE(of, zynqmp_nvmem_match);
 static int zynqmp_nvmem_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct zynqmp_nvmem_data *priv;
-
-	priv = devm_kzalloc(dev, sizeof(struct zynqmp_nvmem_data), GFP_KERNEL);
-	if (!priv)
-		return -ENOMEM;
+	struct nvmem_config econfig = {};
 
-	priv->dev = dev;
+	econfig.name = "zynqmp-nvmem";
+	econfig.owner = THIS_MODULE;
+	econfig.word_size = 1;
+	econfig.size = ZYNQMP_NVMEM_SIZE;
 	econfig.dev = dev;
 	econfig.add_legacy_fixed_of_cells = true;
 	econfig.reg_read = zynqmp_nvmem_read;
-	econfig.priv = priv;
-
-	priv->nvmem = devm_nvmem_register(dev, &econfig);
+	econfig.reg_write = zynqmp_nvmem_write;
 
-	return PTR_ERR_OR_ZERO(priv->nvmem);
+	return PTR_ERR_OR_ZERO(devm_nvmem_register(dev, &econfig));
 }
 
 static struct platform_driver zynqmp_nvmem_driver = {
-- 
2.38.1


