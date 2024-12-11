Return-Path: <devicetree+bounces-129580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0E99EC33A
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 04:24:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E4E5218825C4
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 03:24:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FF7723589C;
	Wed, 11 Dec 2024 03:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="LR34sI5X"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2D5C21126D;
	Wed, 11 Dec 2024 03:23:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.61.82.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733887390; cv=none; b=SlKKJdgTtCG+BbjDWneYZzmZoRtUIl9aFV5f85MhPIpo5KiFzNw0/s/fxWSmM2QTeQgVyiQcwaVjlFvx1sJg6+kTte2HRrUo+iLo5jm9/r4vaj2WZUFJZ8SO4gLKG5q7NbIUROCQ2kcpCq2J6FSZHKJnmZoOjORPpuV9Qw0FAyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733887390; c=relaxed/simple;
	bh=i4eseadq0yF3u27/O7c4qYfIda4Y0vxDnN/Pew28PsM=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=KC0qYN2Lc/vP+VLKzUuqD0YUQufUBoYwr7Jf8ZTzuh4K3Sb9RVYIoryyQ46MUiBReT7RAr2Crmed40ga1HSo+UPcGqeY2W/XgZ7LuasKRJakng2f4Z3vpW6b9yJN/pbl+xtmbB6whHHcF+v6xhlj5yipTzthHbr7LMuc9Q/tbmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=LR34sI5X; arc=none smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 399e137ab76f11efbd192953cf12861f-20241211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=QHHfXxXTtIT711PwtmD8OHg8alz5hcJljKvzUFkRt2Q=;
	b=LR34sI5XrDw8tk7yWaQ5kzQsy9p6Bp2jVRuDRrp4XJe/woI0UHwz7bxLpuaBIgx4dsidXwk9o2pjuF6gjiBb0JNWNWcznF3ez+C582xXx8lBkn7y7LwuRBIRkXe+RDCaATMAk4IevRmkRfoVBWrI71Xwgw8z6e0F8SnnnxO2Rg8=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:f35f3e88-8396-43f8-bf85-1a37df339a2f,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6493067,CLOUDID:f1aa5108-686e-4b1e-a5b6-b56fe99a6d8f,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102,TC:nil,Content:0,EDM:-3,IP
	:nil,URL:11|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV
	:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: 399e137ab76f11efbd192953cf12861f-20241211
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw02.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1119460056; Wed, 11 Dec 2024 11:23:00 +0800
Received: from mtkmbs13n2.mediatek.inc (172.21.101.108) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 11 Dec 2024 11:22:58 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Wed, 11 Dec 2024 11:22:58 +0800
From: Jason-JH.Lin <jason-jh.lin@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Chun-Kuang Hu
	<chunkuang.hu@kernel.org>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, Mauro Carvalho Chehab
	<mchehab@kernel.org>
CC: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-media@vger.kernel.org>,
	"Jason-JH . Lin" <jason-jh.lin@mediatek.com>, Singo Chang
	<singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Moudy Ho
	<moudy.ho@mediatek.com>, Xavier Chang <xavier.chang@mediatek.com>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Subject: [PATCH v2 3/8] mailbox: mtk-cmdq: Add driver data to support for MT8196
Date: Wed, 11 Dec 2024 11:22:51 +0800
Message-ID: <20241211032256.28494-4-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20241211032256.28494-1-jason-jh.lin@mediatek.com>
References: <20241211032256.28494-1-jason-jh.lin@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--12.449300-8.000000
X-TMASE-MatchedRID: Ig3S9zgZG04b+BGg6rnrdm3NvezwBrVmh8Ytn75ClDMJW4Re2U2pyx6E
	9+AcIES7yECTg3cyHcwrQNqPlh2oh4QHE7x6AHFuw4PlNTUpnLmuiRuR9mCaukdmDSBYfnJRGzj
	pHB/c7HnwDJaTY0Uw1uKOmN63egZIIehgzEQFIVslAj6R+xEl2u3+iQEtoSj4te8MfJIL55QgDo
	PRN+3eLyQzZXePPedHFhyEDOk22xM+1pl4Iwv2f1eollpgzyxAuftX4oH7dy7UlVJM/QT13ms2u
	XkUuWs00nW9LPl/NgNVsj33gXD+t3CDdBTw31/IGVyS87Wb4lwikU4xQFgb7psoi2XrUn/Jn6Kd
	MrRsL14qtq5d3cxkNeGtuJ1W9CjFZ/ftMEWkM7ypVdo6s65/r1Uim79895tpT63wLHxw3eE=
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--12.449300-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: B793E074761ECEDAB36DCB444D0F09862B8E9ACA8FB04A87A87F3A4DAF224D142000:8
X-MTK: N

MT8196 has 4 hardware changes compared with the previous SoC,
which correspond to the 4 new driver data:

1. mminfra_offset: For GCE data plane control
   Since GCE has been moved into mminfra, GCE needs to append the
   mminfra offset to the DRAM address when accessing the DRAM.

2. gce_vm: For GCE hardware virtualization
   Currently, the first version of the mt8196 mailbox controller only
   requires setting the VM-related registers to enable the permissions
   of a host VM.

3. dma_mask_bit: For dma address bit control
   In order to avoid the hardware limitations of MT8196 accessing DRAM,
   GCE needs to configure the DMA address to be less than 35 bits.

4. subsys_num: For subsys ID validation
   In previous SoCs, most hardware supported the 5-bit GCE subsys ID.
   When GCE executed instructions, the corresponding hareware register
   could be found through the subsys ID.
   However, 8196 most hardware does not support subsys ID, so the
   subsys ID will be set to an invalid value that exceeds the max
   supported subsys ID.
   By defining subsys_num, which is the max supported subsys ID, to
   determine whether the subsys ID is supported.
   So that mtk-cmdq-helper can know how to program the command.

Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
---
 drivers/mailbox/mtk-cmdq-mailbox.c       | 107 +++++++++++++++++++++--
 include/linux/mailbox/mtk-cmdq-mailbox.h |   3 +
 2 files changed, 102 insertions(+), 8 deletions(-)

diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
index d186865b8dce..a01646ee28b2 100644
--- a/drivers/mailbox/mtk-cmdq-mailbox.c
+++ b/drivers/mailbox/mtk-cmdq-mailbox.c
@@ -43,6 +43,17 @@
 #define GCE_CTRL_BY_SW				GENMASK(2, 0)
 #define GCE_DDR_EN				GENMASK(18, 16)
 
+#define GCE_VM_ID_MAP0			0x5018
+#define GCE_VM_MAP0_ALL_HOST			GENMASK(29, 0)
+#define GCE_VM_ID_MAP1			0x501c
+#define GCE_VM_MAP1_ALL_HOST			GENMASK(29, 0)
+#define GCE_VM_ID_MAP2			0x5020
+#define GCE_VM_MAP2_ALL_HOST			GENMASK(29, 0)
+#define GCE_VM_ID_MAP3			0x5024
+#define GCE_VM_MAP3_ALL_HOST			GENMASK(5, 0)
+#define GCE_VM_CPR_GSIZE		0x50c4
+#define GCE_VM_CPR_GSIZE_HSOT			GENMASK(3, 0)
+
 #define CMDQ_THR_ACTIVE_SLOT_CYCLES	0x3200
 #define CMDQ_THR_ENABLED		0x1
 #define CMDQ_THR_DISABLED		0x0
@@ -87,11 +98,25 @@ struct cmdq {
 struct gce_plat {
 	u32 thread_nr;
 	u8 shift;
+	u64 mminfra_offset;
 	bool control_by_sw;
 	bool sw_ddr_en;
+	bool gce_vm;
+	u32 dma_mask_bit;
+	u8 subsys_num;
 	u32 gce_num;
 };
 
+static inline u32 cmdq_reg_shift_addr(u32 addr, const struct gce_plat *pdata)
+{
+	return ((addr + pdata->mminfra_offset) >> pdata->shift);
+}
+
+static inline u32 cmdq_reg_revert_addr(u32 addr, const struct gce_plat *pdata)
+{
+	return ((addr << pdata->shift) - pdata->mminfra_offset);
+}
+
 static void cmdq_sw_ddr_enable(struct cmdq *cmdq, bool enable)
 {
 	WARN_ON(clk_bulk_enable(cmdq->pdata->gce_num, cmdq->clocks));
@@ -112,6 +137,38 @@ u8 cmdq_get_shift_pa(struct mbox_chan *chan)
 }
 EXPORT_SYMBOL(cmdq_get_shift_pa);
 
+u64 cmdq_get_offset_pa(struct mbox_chan *chan)
+{
+	struct cmdq *cmdq = container_of(chan->mbox, struct cmdq, mbox);
+
+	return cmdq->pdata->mminfra_offset;
+}
+EXPORT_SYMBOL(cmdq_get_offset_pa);
+
+bool cmdq_subsys_is_valid(struct mbox_chan *chan, u8 subsys)
+{
+	struct cmdq *cmdq = container_of(chan->mbox, struct cmdq, mbox);
+
+	return (subsys < cmdq->pdata->subsys_num);
+}
+EXPORT_SYMBOL(cmdq_subsys_is_valid);
+
+bool cmdq_addr_need_offset(struct mbox_chan *chan, dma_addr_t addr)
+{
+	struct cmdq *cmdq = container_of(chan->mbox, struct cmdq, mbox);
+
+	if (cmdq->pdata->mminfra_offset == 0)
+		return false;
+
+	/*
+	 * mminfra will recognize the addr that greater than the mminfra_offset
+	 * as a transaction to DRAM.
+	 * So the caller needs to append mminfra_offset for the true case.
+	 */
+	return (addr >= cmdq->pdata->mminfra_offset);
+}
+EXPORT_SYMBOL(cmdq_addr_need_offset);
+
 static int cmdq_thread_suspend(struct cmdq *cmdq, struct cmdq_thread *thread)
 {
 	u32 status;
@@ -143,6 +200,17 @@ static void cmdq_init(struct cmdq *cmdq)
 	u32 gctl_regval = 0;
 
 	WARN_ON(clk_bulk_enable(cmdq->pdata->gce_num, cmdq->clocks));
+
+	if (cmdq->pdata->gce_vm) {
+		/* config cpr size for host vm */
+		writel(GCE_VM_CPR_GSIZE_HSOT, cmdq->base + GCE_VM_CPR_GSIZE);
+		/* config CPR_GSIZE before setting VM_ID_MAP to avoid data leakage */
+		writel(GCE_VM_MAP0_ALL_HOST, cmdq->base + GCE_VM_ID_MAP0);
+		writel(GCE_VM_MAP1_ALL_HOST, cmdq->base + GCE_VM_ID_MAP1);
+		writel(GCE_VM_MAP2_ALL_HOST, cmdq->base + GCE_VM_ID_MAP2);
+		writel(GCE_VM_MAP3_ALL_HOST, cmdq->base + GCE_VM_ID_MAP3);
+	}
+
 	if (cmdq->pdata->control_by_sw)
 		gctl_regval = GCE_CTRL_BY_SW;
 	if (cmdq->pdata->sw_ddr_en)
@@ -199,7 +267,7 @@ static void cmdq_task_insert_into_thread(struct cmdq_task *task)
 				prev_task->pkt->cmd_buf_size, DMA_TO_DEVICE);
 	prev_task_base[CMDQ_NUM_CMD(prev_task->pkt) - 1] =
 		(u64)CMDQ_JUMP_BY_PA << 32 |
-		(task->pa_base >> task->cmdq->pdata->shift);
+		cmdq_reg_shift_addr(task->pa_base, task->cmdq->pdata);
 	dma_sync_single_for_device(dev, prev_task->pa_base,
 				   prev_task->pkt->cmd_buf_size, DMA_TO_DEVICE);
 
@@ -264,7 +332,7 @@ static void cmdq_thread_irq_handler(struct cmdq *cmdq,
 	else
 		return;
 
-	curr_pa = readl(thread->base + CMDQ_THR_CURR_ADDR) << cmdq->pdata->shift;
+	curr_pa = cmdq_reg_shift_addr(readl(thread->base + CMDQ_THR_CURR_ADDR), cmdq->pdata);
 
 	list_for_each_entry_safe(task, tmp, &thread->task_busy_list,
 				 list_entry) {
@@ -416,9 +484,9 @@ static int cmdq_mbox_send_data(struct mbox_chan *chan, void *data)
 		 */
 		WARN_ON(cmdq_thread_reset(cmdq, thread) < 0);
 
-		writel(task->pa_base >> cmdq->pdata->shift,
+		writel(cmdq_reg_shift_addr(task->pa_base, cmdq->pdata),
 		       thread->base + CMDQ_THR_CURR_ADDR);
-		writel((task->pa_base + pkt->cmd_buf_size) >> cmdq->pdata->shift,
+		writel(cmdq_reg_shift_addr(task->pa_base + pkt->cmd_buf_size, cmdq->pdata),
 		       thread->base + CMDQ_THR_END_ADDR);
 
 		writel(thread->priority, thread->base + CMDQ_THR_PRIORITY);
@@ -426,10 +494,10 @@ static int cmdq_mbox_send_data(struct mbox_chan *chan, void *data)
 		writel(CMDQ_THR_ENABLED, thread->base + CMDQ_THR_ENABLE_TASK);
 	} else {
 		WARN_ON(cmdq_thread_suspend(cmdq, thread) < 0);
-		curr_pa = readl(thread->base + CMDQ_THR_CURR_ADDR) <<
-			cmdq->pdata->shift;
-		end_pa = readl(thread->base + CMDQ_THR_END_ADDR) <<
-			cmdq->pdata->shift;
+		curr_pa = cmdq_reg_revert_addr(readl(thread->base + CMDQ_THR_CURR_ADDR),
+					       cmdq->pdata);
+		end_pa = cmdq_reg_revert_addr(readl(thread->base + CMDQ_THR_END_ADDR),
+					      cmdq->pdata);
 		/* check boundary */
 		if (curr_pa == end_pa - CMDQ_INST_SIZE ||
 		    curr_pa == end_pa) {
@@ -663,6 +731,9 @@ static int cmdq_probe(struct platform_device *pdev)
 	if (err)
 		return err;
 
+	if (cmdq->pdata->dma_mask_bit)
+		dma_set_coherent_mask(dev, DMA_BIT_MASK(cmdq->pdata->dma_mask_bit));
+
 	cmdq->mbox.dev = dev;
 	cmdq->mbox.chans = devm_kcalloc(dev, cmdq->pdata->thread_nr,
 					sizeof(*cmdq->mbox.chans), GFP_KERNEL);
@@ -736,6 +807,7 @@ static const struct gce_plat gce_plat_mt6779 = {
 	.thread_nr = 24,
 	.shift = 3,
 	.control_by_sw = false,
+	.subsys_num = 30,
 	.gce_num = 1
 };
 
@@ -743,6 +815,7 @@ static const struct gce_plat gce_plat_mt8173 = {
 	.thread_nr = 16,
 	.shift = 0,
 	.control_by_sw = false,
+	.subsys_num = 4,
 	.gce_num = 1
 };
 
@@ -750,6 +823,7 @@ static const struct gce_plat gce_plat_mt8183 = {
 	.thread_nr = 24,
 	.shift = 0,
 	.control_by_sw = false,
+	.subsys_num = 30,
 	.gce_num = 1
 };
 
@@ -758,6 +832,7 @@ static const struct gce_plat gce_plat_mt8186 = {
 	.shift = 3,
 	.control_by_sw = true,
 	.sw_ddr_en = true,
+	.subsys_num = 30,
 	.gce_num = 1
 };
 
@@ -765,6 +840,7 @@ static const struct gce_plat gce_plat_mt8188 = {
 	.thread_nr = 32,
 	.shift = 3,
 	.control_by_sw = true,
+	.subsys_num = 26,
 	.gce_num = 2
 };
 
@@ -772,6 +848,7 @@ static const struct gce_plat gce_plat_mt8192 = {
 	.thread_nr = 24,
 	.shift = 3,
 	.control_by_sw = true,
+	.subsys_num = 30,
 	.gce_num = 1
 };
 
@@ -779,6 +856,19 @@ static const struct gce_plat gce_plat_mt8195 = {
 	.thread_nr = 24,
 	.shift = 3,
 	.control_by_sw = true,
+	.subsys_num = 26,
+	.gce_num = 2
+};
+
+static const struct gce_plat gce_plat_mt8196 = {
+	.thread_nr = 32,
+	.shift = 3,
+	.mminfra_offset = 0x80000000, /* 2GB */
+	.control_by_sw = true,
+	.sw_ddr_en = true,
+	.gce_vm = true,
+	.dma_mask_bit = 35,
+	.subsys_num = 30,
 	.gce_num = 2
 };
 
@@ -790,6 +880,7 @@ static const struct of_device_id cmdq_of_ids[] = {
 	{.compatible = "mediatek,mt8188-gce", .data = (void *)&gce_plat_mt8188},
 	{.compatible = "mediatek,mt8192-gce", .data = (void *)&gce_plat_mt8192},
 	{.compatible = "mediatek,mt8195-gce", .data = (void *)&gce_plat_mt8195},
+	{.compatible = "mediatek,mt8196-gce", .data = (void *)&gce_plat_mt8196},
 	{}
 };
 MODULE_DEVICE_TABLE(of, cmdq_of_ids);
diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
index a8f0070c7aa9..3a675c970c21 100644
--- a/include/linux/mailbox/mtk-cmdq-mailbox.h
+++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
@@ -79,5 +79,8 @@ struct cmdq_pkt {
 };
 
 u8 cmdq_get_shift_pa(struct mbox_chan *chan);
+u64 cmdq_get_offset_pa(struct mbox_chan *chan);
+bool cmdq_subsys_is_valid(struct mbox_chan *chan, u8 subsys);
+bool cmdq_addr_need_offset(struct mbox_chan *chan, dma_addr_t addr);
 
 #endif /* __MTK_CMDQ_MAILBOX_H__ */
-- 
2.43.0


