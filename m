Return-Path: <devicetree+bounces-60862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D478AAABB
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 10:42:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2358628649E
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 08:42:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8D0F78286;
	Fri, 19 Apr 2024 08:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="XIXqqXPz"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438A4657CE;
	Fri, 19 Apr 2024 08:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713516154; cv=none; b=QlpO/g9NTJgyQa92UyRrQpkcw0hl/x1juSIUaYZ70qNkin9LJx80sP9yeCAH5sDILn0SKoWl6M/LCIPmTubpW1PnT+LB1ToPYaijeYv4U6oRpZKpbYqw8KR6B28UXW3FP2VloW3YCjjOego0yX+E8OUmIR16pnUnbg9mT15ZA1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713516154; c=relaxed/simple;
	bh=WMbv5YBr2J+JWFA49qO6UQv4pLbd09bsFiv5wcgOGWI=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BhuuIm1N8LIKSWQ6vKBP6L0dxEoXfRYAVJq4+CoDSB239YDHi3J4QdCSf4XX6u8a1MGUDdtu+7KAI/loOq4hu2Ne+d77CUuWrfoMKC9/AhkzLNFeBcEbY33jP0OWpmUFWUsZlp54pHqcfedYbxXEXrXTFxN1eU78uBPtKQ4n3fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=XIXqqXPz; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: beca9308fe2811eeb8927bc1f75efef4-20240419
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=1hko/8p/iuUJN4j5Stlmp76do2eo+A6kLx5/6rzJQs0=;
	b=XIXqqXPzr2d2tS5QOHwbOWl4LciSaLuFEgrqX/LdwKJjnR6PyfP9JmRZgyGvHzDjemD2WtgRhXeRILsXBDdtndg3R/6R8cJF6OV/cwrK87RcY61Z/oYTXHZcKckVQHgdWo1pAZvjvT88jfMGw3G9YmEUItJh+c8tKU4CNZJX/+w=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.38,REQID:12457356-5269-4c57-88c4-66bcda7a7cf9,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:82c5f88,CLOUDID:f45cc691-e2c0-40b0-a8fe-7c7e47299109,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: beca9308fe2811eeb8927bc1f75efef4-20240419
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw01.mediatek.com
	(envelope-from <olivia.wen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1605094234; Fri, 19 Apr 2024 16:42:24 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 19 Apr 2024 16:42:23 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 19 Apr 2024 16:42:23 +0800
From: Olivia Wen <olivia.wen@mediatek.com>
To: Bjorn Andersson <andersson@kernel.org>, Mathieu Poirier
	<mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Tinghan
 Shen <tinghan.shen@mediatek.com>, <linux-remoteproc@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	<jason-ch.chen@mediatek.com>, <yaya.chang@mediatek.com>,
	<teddy.chen@mediatek.com>, <olivia.wen@mediatek.com>
Subject: [PATCH v2 2/2] remoteproc: mediatek: Support MT8188 SCP core 1
Date: Fri, 19 Apr 2024 16:42:11 +0800
Message-ID: <20240419084211.31901-3-olivia.wen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20240419084211.31901-1-olivia.wen@mediatek.com>
References: <20240419084211.31901-1-olivia.wen@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-MTK: N

From: "olivia.wen" <olivia.wen@mediatek.com>

There are three primary modifications.

1. The struct mtk_scp_of_data usage on MT8188
MT8192 functions are unsuitable for the dual-core MT8188 SCP,
which has two RISC-V cores similar to MT8195 but without L1TCM.
We've added MT8188-specific functions to configure L1TCM
in multicore setups.

2. SCP_IPI_IMGSYS_CMD feature
This version also adds SCP_IPI_IMGSYS_CMD to facilitate
communication between the imgsys kernel and the backend driver.

3. Different code sizes and IPI share buffer sizes
Each SCP necessitates different code and IPI share buffer sizes.
Introducing a structure mtk_scp_sizes_data to handle them.

Signed-off-by: olivia.wen <olivia.wen@mediatek.com>
---
 drivers/remoteproc/mtk_common.h    |  11 +-
 drivers/remoteproc/mtk_scp.c       | 230 +++++++++++++++++++++++++++++++++----
 drivers/remoteproc/mtk_scp_ipi.c   |   7 +-
 include/linux/remoteproc/mtk_scp.h |   1 +
 4 files changed, 223 insertions(+), 26 deletions(-)

diff --git a/drivers/remoteproc/mtk_common.h b/drivers/remoteproc/mtk_common.h
index 6d7736a..fd5c539 100644
--- a/drivers/remoteproc/mtk_common.h
+++ b/drivers/remoteproc/mtk_common.h
@@ -78,7 +78,6 @@
 #define MT8195_L2TCM_OFFSET			0x850d0
 
 #define SCP_FW_VER_LEN			32
-#define SCP_SHARE_BUFFER_SIZE		288
 
 struct scp_run {
 	u32 signaled;
@@ -97,6 +96,11 @@ struct scp_ipi_desc {
 
 struct mtk_scp;
 
+struct mtk_scp_sizes_data {
+	size_t max_dram_size;
+	size_t ipi_share_buffer_size;
+};
+
 struct mtk_scp_of_data {
 	int (*scp_clk_get)(struct mtk_scp *scp);
 	int (*scp_before_load)(struct mtk_scp *scp);
@@ -110,6 +114,7 @@ struct mtk_scp_of_data {
 	u32 host_to_scp_int_bit;
 
 	size_t ipi_buf_offset;
+	const struct mtk_scp_sizes_data *scp_sizes;
 };
 
 struct mtk_scp_of_cluster {
@@ -141,10 +146,10 @@ struct mtk_scp {
 	struct scp_ipi_desc ipi_desc[SCP_IPI_MAX];
 	bool ipi_id_ack[SCP_IPI_MAX];
 	wait_queue_head_t ack_wq;
+	u8 *share_buf;
 
 	void *cpu_addr;
 	dma_addr_t dma_addr;
-	size_t dram_size;
 
 	struct rproc_subdev *rpmsg_subdev;
 
@@ -162,7 +167,7 @@ struct mtk_scp {
 struct mtk_share_obj {
 	u32 id;
 	u32 len;
-	u8 share_buf[SCP_SHARE_BUFFER_SIZE];
+	u8 *share_buf;
 };
 
 void scp_memcpy_aligned(void __iomem *dst, const void *src, unsigned int len);
diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
index 6751829..e281d28 100644
--- a/drivers/remoteproc/mtk_scp.c
+++ b/drivers/remoteproc/mtk_scp.c
@@ -20,7 +20,6 @@
 #include "mtk_common.h"
 #include "remoteproc_internal.h"
 
-#define MAX_CODE_SIZE 0x500000
 #define SECTION_NAME_IPI_BUFFER ".ipi_buffer"
 
 /**
@@ -94,14 +93,15 @@ static void scp_ipi_handler(struct mtk_scp *scp)
 {
 	struct mtk_share_obj __iomem *rcv_obj = scp->recv_buf;
 	struct scp_ipi_desc *ipi_desc = scp->ipi_desc;
-	u8 tmp_data[SCP_SHARE_BUFFER_SIZE];
 	scp_ipi_handler_t handler;
 	u32 id = readl(&rcv_obj->id);
 	u32 len = readl(&rcv_obj->len);
+	const struct mtk_scp_sizes_data *scp_sizes;
 
-	if (len > SCP_SHARE_BUFFER_SIZE) {
-		dev_err(scp->dev, "ipi message too long (len %d, max %d)", len,
-			SCP_SHARE_BUFFER_SIZE);
+	scp_sizes = scp->data->scp_sizes;
+	if (len > scp_sizes->ipi_share_buffer_size) {
+		dev_err(scp->dev, "ipi message too long (len %d, max %zd)", len,
+			scp_sizes->ipi_share_buffer_size);
 		return;
 	}
 	if (id >= SCP_IPI_MAX) {
@@ -117,8 +117,9 @@ static void scp_ipi_handler(struct mtk_scp *scp)
 		return;
 	}
 
-	memcpy_fromio(tmp_data, &rcv_obj->share_buf, len);
-	handler(tmp_data, len, ipi_desc[id].priv);
+	memset(scp->share_buf, 0, scp_sizes->ipi_share_buffer_size);
+	memcpy_fromio(scp->share_buf, &rcv_obj->share_buf, len);
+	handler(scp->share_buf, len, ipi_desc[id].priv);
 	scp_ipi_unlock(scp, id);
 
 	scp->ipi_id_ack[id] = true;
@@ -133,6 +134,8 @@ static int scp_ipi_init(struct mtk_scp *scp, const struct firmware *fw)
 {
 	int ret;
 	size_t buf_sz, offset;
+	size_t share_buf_offset;
+	const struct mtk_scp_sizes_data *scp_sizes;
 
 	/* read the ipi buf addr from FW itself first */
 	ret = scp_elf_read_ipi_buf_addr(scp, fw, &offset);
@@ -152,12 +155,15 @@ static int scp_ipi_init(struct mtk_scp *scp, const struct firmware *fw)
 		return -EOVERFLOW;
 	}
 
+	scp_sizes = scp->data->scp_sizes;
 	scp->recv_buf = (struct mtk_share_obj __iomem *)
 			(scp->sram_base + offset);
+	share_buf_offset = sizeof(scp->recv_buf->id)
+		+ sizeof(scp->recv_buf->len) + scp_sizes->ipi_share_buffer_size;
 	scp->send_buf = (struct mtk_share_obj __iomem *)
-			(scp->sram_base + offset + sizeof(*scp->recv_buf));
-	memset_io(scp->recv_buf, 0, sizeof(*scp->recv_buf));
-	memset_io(scp->send_buf, 0, sizeof(*scp->send_buf));
+			(scp->sram_base + offset + share_buf_offset);
+	memset_io(scp->recv_buf, 0, share_buf_offset);
+	memset_io(scp->send_buf, 0, share_buf_offset);
 
 	return 0;
 }
@@ -471,6 +477,86 @@ static int mt8186_scp_before_load(struct mtk_scp *scp)
 	return 0;
 }
 
+static int mt8188_scp_l2tcm_on(struct mtk_scp *scp)
+{
+	struct mtk_scp_of_cluster *scp_cluster = scp->cluster;
+
+	mutex_lock(&scp_cluster->cluster_lock);
+
+	if (scp_cluster->l2tcm_refcnt == 0) {
+		/* clear SPM interrupt, SCP2SPM_IPC_CLR */
+		writel(0xff, scp->cluster->reg_base + MT8192_SCP2SPM_IPC_CLR);
+
+		/* Power on L2TCM */
+		scp_sram_power_on(scp->cluster->reg_base + MT8192_L2TCM_SRAM_PD_0, 0);
+		scp_sram_power_on(scp->cluster->reg_base + MT8192_L2TCM_SRAM_PD_1, 0);
+		scp_sram_power_on(scp->cluster->reg_base + MT8192_L2TCM_SRAM_PD_2, 0);
+		scp_sram_power_on(scp->cluster->reg_base + MT8192_L1TCM_SRAM_PDN, 0);
+	}
+
+	scp_cluster->l2tcm_refcnt += 1;
+
+	mutex_unlock(&scp_cluster->cluster_lock);
+
+	return 0;
+}
+
+static int mt8188_scp_before_load(struct mtk_scp *scp)
+{
+	writel(1, scp->cluster->reg_base + MT8192_CORE0_SW_RSTN_SET);
+
+	mt8188_scp_l2tcm_on(scp);
+
+	scp_sram_power_on(scp->cluster->reg_base + MT8192_CPU0_SRAM_PD, 0);
+
+	/* enable MPU for all memory regions */
+	writel(0xff, scp->cluster->reg_base + MT8192_CORE0_MEM_ATT_PREDEF);
+
+	return 0;
+}
+
+static int mt8188_scp_c1_before_load(struct mtk_scp *scp)
+{
+	u32 sec_ctrl;
+	struct mtk_scp *scp_c0;
+	struct mtk_scp_of_cluster *scp_cluster = scp->cluster;
+
+	scp->data->scp_reset_assert(scp);
+
+	mt8188_scp_l2tcm_on(scp);
+
+	scp_sram_power_on(scp->cluster->reg_base + MT8195_CPU1_SRAM_PD, 0);
+
+	/* enable MPU for all memory regions */
+	writel(0xff, scp->cluster->reg_base + MT8195_CORE1_MEM_ATT_PREDEF);
+
+	/*
+	 * The L2TCM_OFFSET_RANGE and L2TCM_OFFSET shift the destination address
+	 * on SRAM when SCP core 1 accesses SRAM.
+	 *
+	 * This configuration solves booting the SCP core 0 and core 1 from
+	 * different SRAM address because core 0 and core 1 both boot from
+	 * the head of SRAM by default. this must be configured before boot SCP core 1.
+	 *
+	 * The value of L2TCM_OFFSET_RANGE is from the viewpoint of SCP core 1.
+	 * When SCP core 1 issues address within the range (L2TCM_OFFSET_RANGE),
+	 * the address will be added with a fixed offset (L2TCM_OFFSET) on the bus.
+	 * The shift action is tranparent to software.
+	 */
+	writel(0, scp->cluster->reg_base + MT8195_L2TCM_OFFSET_RANGE_0_LOW);
+	writel(scp->sram_size, scp->cluster->reg_base + MT8195_L2TCM_OFFSET_RANGE_0_HIGH);
+
+	scp_c0 = list_first_entry(&scp_cluster->mtk_scp_list, struct mtk_scp, elem);
+	writel(scp->sram_phys - scp_c0->sram_phys, scp->cluster->reg_base + MT8195_L2TCM_OFFSET);
+
+	/* enable SRAM offset when fetching instruction and data */
+	sec_ctrl = readl(scp->cluster->reg_base + MT8195_SEC_CTRL);
+	sec_ctrl |= MT8195_CORE_OFFSET_ENABLE_I | MT8195_CORE_OFFSET_ENABLE_D;
+	writel(sec_ctrl, scp->cluster->reg_base + MT8195_SEC_CTRL);
+
+	return 0;
+}
+
 static int mt8192_scp_before_load(struct mtk_scp *scp)
 {
 	/* clear SPM interrupt, SCP2SPM_IPC_CLR */
@@ -661,14 +747,16 @@ static int scp_start(struct rproc *rproc)
 static void *mt8183_scp_da_to_va(struct mtk_scp *scp, u64 da, size_t len)
 {
 	int offset;
+	const struct mtk_scp_sizes_data *scp_sizes;
 
+	scp_sizes = scp->data->scp_sizes;
 	if (da < scp->sram_size) {
 		offset = da;
 		if (offset >= 0 && (offset + len) <= scp->sram_size)
 			return (void __force *)scp->sram_base + offset;
-	} else if (scp->dram_size) {
+	} else if (scp_sizes->max_dram_size) {
 		offset = da - scp->dma_addr;
-		if (offset >= 0 && (offset + len) <= scp->dram_size)
+		if (offset >= 0 && (offset + len) <= scp_sizes->max_dram_size)
 			return scp->cpu_addr + offset;
 	}
 
@@ -678,7 +766,9 @@ static void *mt8183_scp_da_to_va(struct mtk_scp *scp, u64 da, size_t len)
 static void *mt8192_scp_da_to_va(struct mtk_scp *scp, u64 da, size_t len)
 {
 	int offset;
+	const struct mtk_scp_sizes_data *scp_sizes;
 
+	scp_sizes = scp->data->scp_sizes;
 	if (da >= scp->sram_phys &&
 	    (da + len) <= scp->sram_phys + scp->sram_size) {
 		offset = da - scp->sram_phys;
@@ -694,9 +784,9 @@ static void *mt8192_scp_da_to_va(struct mtk_scp *scp, u64 da, size_t len)
 	}
 
 	/* optional memory region */
-	if (scp->dram_size &&
+	if (scp_sizes->max_dram_size &&
 	    da >= scp->dma_addr &&
-	    (da + len) <= scp->dma_addr + scp->dram_size) {
+	    (da + len) <= scp->dma_addr + scp_sizes->max_dram_size) {
 		offset = da - scp->dma_addr;
 		return scp->cpu_addr + offset;
 	}
@@ -717,6 +807,47 @@ static void mt8183_scp_stop(struct mtk_scp *scp)
 	writel(0, scp->cluster->reg_base + MT8183_WDT_CFG);
 }
 
+static void mt8188_scp_l2tcm_off(struct mtk_scp *scp)
+{
+	struct mtk_scp_of_cluster *scp_cluster = scp->cluster;
+
+	mutex_lock(&scp_cluster->cluster_lock);
+
+	if (scp_cluster->l2tcm_refcnt > 0)
+		scp_cluster->l2tcm_refcnt -= 1;
+
+	if (scp_cluster->l2tcm_refcnt == 0) {
+		/* Power off L2TCM */
+		scp_sram_power_off(scp->cluster->reg_base + MT8192_L2TCM_SRAM_PD_0, 0);
+		scp_sram_power_off(scp->cluster->reg_base + MT8192_L2TCM_SRAM_PD_1, 0);
+		scp_sram_power_off(scp->cluster->reg_base + MT8192_L2TCM_SRAM_PD_2, 0);
+		scp_sram_power_off(scp->cluster->reg_base + MT8192_L1TCM_SRAM_PDN, 0);
+	}
+
+	mutex_unlock(&scp_cluster->cluster_lock);
+}
+
+static void mt8188_scp_stop(struct mtk_scp *scp)
+{
+	mt8188_scp_l2tcm_off(scp);
+
+	scp_sram_power_off(scp->cluster->reg_base + MT8192_CPU0_SRAM_PD, 0);
+
+	/* Disable SCP watchdog */
+	writel(0, scp->cluster->reg_base + MT8192_CORE0_WDT_CFG);
+}
+
+static void mt8188_scp_c1_stop(struct mtk_scp *scp)
+{
+	mt8188_scp_l2tcm_off(scp);
+
+	/* Power off CPU SRAM */
+	scp_sram_power_off(scp->cluster->reg_base + MT8195_CPU1_SRAM_PD, 0);
+
+	/* Disable SCP watchdog */
+	writel(0, scp->cluster->reg_base + MT8195_CORE1_WDT_CFG);
+}
+
 static void mt8192_scp_stop(struct mtk_scp *scp)
 {
 	/* Disable SRAM clock */
@@ -876,6 +1007,7 @@ EXPORT_SYMBOL_GPL(scp_mapping_dm_addr);
 static int scp_map_memory_region(struct mtk_scp *scp)
 {
 	int ret;
+	const struct mtk_scp_sizes_data *scp_sizes;
 
 	ret = of_reserved_mem_device_init(scp->dev);
 
@@ -891,8 +1023,8 @@ static int scp_map_memory_region(struct mtk_scp *scp)
 	}
 
 	/* Reserved SCP code size */
-	scp->dram_size = MAX_CODE_SIZE;
-	scp->cpu_addr = dma_alloc_coherent(scp->dev, scp->dram_size,
+	scp_sizes = scp->data->scp_sizes;
+	scp->cpu_addr = dma_alloc_coherent(scp->dev, scp_sizes->max_dram_size,
 					   &scp->dma_addr, GFP_KERNEL);
 	if (!scp->cpu_addr)
 		return -ENOMEM;
@@ -902,10 +1034,13 @@ static int scp_map_memory_region(struct mtk_scp *scp)
 
 static void scp_unmap_memory_region(struct mtk_scp *scp)
 {
-	if (scp->dram_size == 0)
+	const struct mtk_scp_sizes_data *scp_sizes;
+
+	scp_sizes = scp->data->scp_sizes;
+	if (scp_sizes->max_dram_size == 0)
 		return;
 
-	dma_free_coherent(scp->dev, scp->dram_size, scp->cpu_addr,
+	dma_free_coherent(scp->dev, scp_sizes->max_dram_size, scp->cpu_addr,
 			  scp->dma_addr);
 	of_reserved_mem_device_release(scp->dev);
 }
@@ -969,6 +1104,7 @@ static struct mtk_scp *scp_rproc_init(struct platform_device *pdev,
 	struct resource *res;
 	const char *fw_name = "scp.img";
 	int ret, i;
+	const struct mtk_scp_sizes_data *scp_sizes;
 
 	ret = rproc_of_parse_firmware(dev, 0, &fw_name);
 	if (ret < 0 && ret != -EINVAL)
@@ -1016,6 +1152,13 @@ static struct mtk_scp *scp_rproc_init(struct platform_device *pdev,
 		goto release_dev_mem;
 	}
 
+	scp_sizes = scp->data->scp_sizes;
+	scp->share_buf = kzalloc(scp_sizes->ipi_share_buffer_size, GFP_KERNEL);
+	if (!scp->share_buf) {
+		dev_err(dev, "Failed to allocate IPI share buffer\n");
+		goto release_dev_mem;
+	}
+
 	init_waitqueue_head(&scp->run.wq);
 	init_waitqueue_head(&scp->ack_wq);
 
@@ -1035,6 +1178,8 @@ static struct mtk_scp *scp_rproc_init(struct platform_device *pdev,
 remove_subdev:
 	scp_remove_rpmsg_subdev(scp);
 	scp_ipi_unregister(scp, SCP_IPI_INIT);
+	kfree(scp->share_buf);
+	scp->share_buf = NULL;
 release_dev_mem:
 	scp_unmap_memory_region(scp);
 	for (i = 0; i < SCP_IPI_MAX; i++)
@@ -1050,6 +1195,8 @@ static void scp_free(struct mtk_scp *scp)
 
 	scp_remove_rpmsg_subdev(scp);
 	scp_ipi_unregister(scp, SCP_IPI_INIT);
+	kfree(scp->share_buf);
+	scp->share_buf = NULL;
 	scp_unmap_memory_region(scp);
 	for (i = 0; i < SCP_IPI_MAX; i++)
 		mutex_destroy(&scp->ipi_desc[i].lock);
@@ -1236,6 +1383,21 @@ static void scp_remove(struct platform_device *pdev)
 	mutex_destroy(&scp_cluster->cluster_lock);
 }
 
+static const struct mtk_scp_sizes_data default_scp_sizes = {
+	.max_dram_size = 0x500000,
+	.ipi_share_buffer_size = 288,
+};
+
+static const struct mtk_scp_sizes_data mt8188_scp_sizes = {
+	.max_dram_size = 0x500000,
+	.ipi_share_buffer_size = 600,
+};
+
+static const struct mtk_scp_sizes_data mt8188_scp_c1_sizes = {
+	.max_dram_size = 0xA00000,
+	.ipi_share_buffer_size = 600,
+};
+
 static const struct mtk_scp_of_data mt8183_of_data = {
 	.scp_clk_get = mt8183_scp_clk_get,
 	.scp_before_load = mt8183_scp_before_load,
@@ -1247,6 +1409,7 @@ static const struct mtk_scp_of_data mt8183_of_data = {
 	.host_to_scp_reg = MT8183_HOST_TO_SCP,
 	.host_to_scp_int_bit = MT8183_HOST_IPC_INT_BIT,
 	.ipi_buf_offset = 0x7bdb0,
+	.scp_sizes = &default_scp_sizes,
 };
 
 static const struct mtk_scp_of_data mt8186_of_data = {
@@ -1260,18 +1423,33 @@ static const struct mtk_scp_of_data mt8186_of_data = {
 	.host_to_scp_reg = MT8183_HOST_TO_SCP,
 	.host_to_scp_int_bit = MT8183_HOST_IPC_INT_BIT,
 	.ipi_buf_offset = 0x3bdb0,
+	.scp_sizes = &default_scp_sizes,
 };
 
 static const struct mtk_scp_of_data mt8188_of_data = {
 	.scp_clk_get = mt8195_scp_clk_get,
-	.scp_before_load = mt8192_scp_before_load,
-	.scp_irq_handler = mt8192_scp_irq_handler,
+	.scp_before_load = mt8188_scp_before_load,
+	.scp_irq_handler = mt8195_scp_irq_handler,
 	.scp_reset_assert = mt8192_scp_reset_assert,
 	.scp_reset_deassert = mt8192_scp_reset_deassert,
-	.scp_stop = mt8192_scp_stop,
+	.scp_stop = mt8188_scp_stop,
 	.scp_da_to_va = mt8192_scp_da_to_va,
 	.host_to_scp_reg = MT8192_GIPC_IN_SET,
 	.host_to_scp_int_bit = MT8192_HOST_IPC_INT_BIT,
+	.scp_sizes = &mt8188_scp_sizes,
+};
+
+static const struct mtk_scp_of_data mt8188_of_data_c1 = {
+	.scp_clk_get = mt8195_scp_clk_get,
+	.scp_before_load = mt8188_scp_c1_before_load,
+	.scp_irq_handler = mt8195_scp_c1_irq_handler,
+	.scp_reset_assert = mt8195_scp_c1_reset_assert,
+	.scp_reset_deassert = mt8195_scp_c1_reset_deassert,
+	.scp_stop = mt8188_scp_c1_stop,
+	.scp_da_to_va = mt8192_scp_da_to_va,
+	.host_to_scp_reg = MT8192_GIPC_IN_SET,
+	.host_to_scp_int_bit = MT8195_CORE1_HOST_IPC_INT_BIT,
+	.scp_sizes = &mt8188_scp_c1_sizes,
 };
 
 static const struct mtk_scp_of_data mt8192_of_data = {
@@ -1284,6 +1462,7 @@ static const struct mtk_scp_of_data mt8192_of_data = {
 	.scp_da_to_va = mt8192_scp_da_to_va,
 	.host_to_scp_reg = MT8192_GIPC_IN_SET,
 	.host_to_scp_int_bit = MT8192_HOST_IPC_INT_BIT,
+	.scp_sizes = &default_scp_sizes,
 };
 
 static const struct mtk_scp_of_data mt8195_of_data = {
@@ -1296,6 +1475,7 @@ static const struct mtk_scp_of_data mt8195_of_data = {
 	.scp_da_to_va = mt8192_scp_da_to_va,
 	.host_to_scp_reg = MT8192_GIPC_IN_SET,
 	.host_to_scp_int_bit = MT8192_HOST_IPC_INT_BIT,
+	.scp_sizes = &default_scp_sizes,
 };
 
 static const struct mtk_scp_of_data mt8195_of_data_c1 = {
@@ -1308,6 +1488,13 @@ static const struct mtk_scp_of_data mt8195_of_data_c1 = {
 	.scp_da_to_va = mt8192_scp_da_to_va,
 	.host_to_scp_reg = MT8192_GIPC_IN_SET,
 	.host_to_scp_int_bit = MT8195_CORE1_HOST_IPC_INT_BIT,
+	.scp_sizes = &default_scp_sizes,
+};
+
+static const struct mtk_scp_of_data *mt8188_of_data_cores[] = {
+	&mt8188_of_data,
+	&mt8188_of_data_c1,
+	NULL
 };
 
 static const struct mtk_scp_of_data *mt8195_of_data_cores[] = {
@@ -1320,6 +1507,7 @@ static const struct of_device_id mtk_scp_of_match[] = {
 	{ .compatible = "mediatek,mt8183-scp", .data = &mt8183_of_data },
 	{ .compatible = "mediatek,mt8186-scp", .data = &mt8186_of_data },
 	{ .compatible = "mediatek,mt8188-scp", .data = &mt8188_of_data },
+	{ .compatible = "mediatek,mt8188-scp-dual", .data = &mt8188_of_data_cores },
 	{ .compatible = "mediatek,mt8192-scp", .data = &mt8192_of_data },
 	{ .compatible = "mediatek,mt8195-scp", .data = &mt8195_of_data },
 	{ .compatible = "mediatek,mt8195-scp-dual", .data = &mt8195_of_data_cores },
diff --git a/drivers/remoteproc/mtk_scp_ipi.c b/drivers/remoteproc/mtk_scp_ipi.c
index cd0b601..c068227 100644
--- a/drivers/remoteproc/mtk_scp_ipi.c
+++ b/drivers/remoteproc/mtk_scp_ipi.c
@@ -162,10 +162,13 @@ int scp_ipi_send(struct mtk_scp *scp, u32 id, void *buf, unsigned int len,
 	struct mtk_share_obj __iomem *send_obj = scp->send_buf;
 	u32 val;
 	int ret;
+	const struct mtk_scp_sizes_data *scp_sizes;
+
+	scp_sizes = scp->data->scp_sizes;
 
 	if (WARN_ON(id <= SCP_IPI_INIT) || WARN_ON(id >= SCP_IPI_MAX) ||
 	    WARN_ON(id == SCP_IPI_NS_SERVICE) ||
-	    WARN_ON(len > sizeof(send_obj->share_buf)) || WARN_ON(!buf))
+	    WARN_ON(len > scp_sizes->ipi_share_buffer_size) || WARN_ON(!buf))
 		return -EINVAL;
 
 	ret = clk_prepare_enable(scp->clk);
@@ -184,7 +187,7 @@ int scp_ipi_send(struct mtk_scp *scp, u32 id, void *buf, unsigned int len,
 		goto unlock_mutex;
 	}
 
-	scp_memcpy_aligned(send_obj->share_buf, buf, len);
+	scp_memcpy_aligned(&send_obj->share_buf, buf, len);
 
 	writel(len, &send_obj->len);
 	writel(id, &send_obj->id);
diff --git a/include/linux/remoteproc/mtk_scp.h b/include/linux/remoteproc/mtk_scp.h
index 7c2b7cc9..344ff41 100644
--- a/include/linux/remoteproc/mtk_scp.h
+++ b/include/linux/remoteproc/mtk_scp.h
@@ -43,6 +43,7 @@ enum scp_ipi_id {
 	SCP_IPI_CROS_HOST_CMD,
 	SCP_IPI_VDEC_LAT,
 	SCP_IPI_VDEC_CORE,
+	SCP_IPI_IMGSYS_CMD,
 	SCP_IPI_NS_SERVICE = 0xFF,
 	SCP_IPI_MAX = 0x100,
 };
-- 
2.6.4


