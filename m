Return-Path: <devicetree+bounces-69239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDD38CF48F
	for <lists+devicetree@lfdr.de>; Sun, 26 May 2024 16:45:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 14A552813AF
	for <lists+devicetree@lfdr.de>; Sun, 26 May 2024 14:45:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F322518B05;
	Sun, 26 May 2024 14:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="GVBk1521"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9896171CD;
	Sun, 26 May 2024 14:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.61.82.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716734694; cv=none; b=tLtVGyU9UUNbWygdGi5zkg+QDtLJOenu2oE0Q1mdhIlTmvd5Mamqe1YNBq7CjDemNsKXfwNLgcrvoUwTI1NEZbjJ9cRRnN2dm+smJQqtrCC6/LFRjVdky6RusfO7vcU6x2xTApp8TAkJmmmyVc3Ei286OKBGByu7SOTxP1MF+O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716734694; c=relaxed/simple;
	bh=cnlPZNHcZxqlcUxmXx30/DOKKSz5kTlboERKFHBnNPc=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RZjREaQQtDdA2aHoJEr/ndlBL/4wb6+ZrTn4DdO1X5RdOyuqeEz51NgTpBh6b4mPLCBDkDzLt3yn60ljHsgIaI0icGZ/vmATdlt2Kva9yfY9BGmB8m798NtuhMydm+XRh+Upen/7SGvG6sZHstzkffYjI/aVVcXkuftToayoV2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=GVBk1521; arc=none smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 7f4c272e1b6e11efbfff99f2466cf0b4-20240526
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=f3v3sbCxG3glRRrq2sOeMMfFoN96nKeA2hCMfbqCr8A=;
	b=GVBk1521BTEbkQB7tSmToPNcTCR24pUZ4CJX/aa5E6L4UJ4l1EOVy5JPTMUX8V58eTp7pdyhDsIpkbQk1nAKP8BqkUeiu5BzEqbKUzXaHy4ZY/kZ5/fNTsIUSbSRBvulmlPNhhSWKyXd9GRX9rpP14kEL/EQFT8+MtAS0ESYH28=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.38,REQID:8cf9c456-113b-46f7-a6e0-22272c85f953,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:82c5f88,CLOUDID:c219d143-4544-4d06-b2b2-d7e12813c598,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 7f4c272e1b6e11efbfff99f2466cf0b4-20240526
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 2126667164; Sun, 26 May 2024 22:44:46 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Sun, 26 May 2024 22:44:44 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Sun, 26 May 2024 22:44:44 +0800
From: Jason-JH.Lin <jason-jh.lin@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, Chun-Kuang Hu
	<chunkuang.hu@kernel.org>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>
CC: Conor Dooley <conor+dt@kernel.org>, Jason-ch Chen
	<jason-ch.chen@mediatek.com>, "Jason-JH . Lin" <jason-jh.lin@mediatek.com>,
	Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>,
	Shawn Sung <shawn.sung@mediatek.com>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-mediatek@lists.infradead.org>, <dri-devel@lists.freedesktop.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Subject: [PATCH RESEND,v6 5/8] mailbox: mediatek: Move reuseable definition to header for secure driver
Date: Sun, 26 May 2024 22:44:40 +0800
Message-ID: <20240526144443.14345-6-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20240526144443.14345-1-jason-jh.lin@mediatek.com>
References: <20240526144443.14345-1-jason-jh.lin@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--8.384000-8.000000
X-TMASE-MatchedRID: VUvK7TVZCu5LbaTfilVXfTPDkSOzeDWWf6/Md8Lb2l/1gF7PCEF9bli5
	r+TKtIsr64Ta3P14gV2y7ec+ITUwMzW+K/PcvqBra0aUozXm0DZhwbaywi9zZ5I7pKjpAaDKcHj
	giTON9jL2AGYwj2gIyTCFODyyOV42WBgg/1jJcKSolIr4dI9j76OSgZnCaMw2l2j8d+K0VSitbj
	X4EGqr75TUFtbI5FWRZdiH6FXuQ0+R9xZEuG20iJ4CIKY/Hg3AaZGo0EeYG96i9JVLbqc4Fyq2r
	l3dzGQ1i5vyLGs70nnbP6Jz0phFJyzcX6iv/sgJXUsAY2sv0aNEpCUbu6x3lcC+ksT6a9fy
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--8.384000-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: 91F02D06F32DED2FC9F3084A621CC82DD8C526A2FB7972421BE51B8AB5A5081D2000:8
X-MTK: N

To support CMDQ secure driver, move some reuseable definition to header.
- define: e.g. CMDQ_GCE_NUM_MAX, CMDQ_THR_BASE, CMDQ_THR_SIZE.
- struct: e.g. cmdq_thread, cmdq, cmdq_task.
- include: e.g. <linux/clk.h>.

Add "#include <linux/mailbox_controller.h>" for the function that takes
"struct mbox_chan * chan" as a parameter. That may occur a build error
if secure driver header includes the mtk-cmdq-mailbox.h.
- function: e.g. cmdq_get_shift_pa(struct mbox_chan *chan).

Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>
---
 drivers/mailbox/mtk-cmdq-mailbox.c       | 30 ---------------------
 include/linux/mailbox/mtk-cmdq-mailbox.h | 33 ++++++++++++++++++++++++
 2 files changed, 33 insertions(+), 30 deletions(-)

diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
index 618023011d31..025e53549a45 100644
--- a/drivers/mailbox/mtk-cmdq-mailbox.c
+++ b/drivers/mailbox/mtk-cmdq-mailbox.c
@@ -3,7 +3,6 @@
 // Copyright (c) 2018 MediaTek Inc.
 
 #include <linux/bitops.h>
-#include <linux/clk.h>
 #include <linux/clk-provider.h>
 #include <linux/dma-mapping.h>
 #include <linux/errno.h>
@@ -22,13 +21,10 @@
 
 #define CMDQ_OP_CODE_MASK		(0xff << CMDQ_OP_CODE_SHIFT)
 #define CMDQ_NUM_CMD(t)			(t->cmd_buf_size / CMDQ_INST_SIZE)
-#define CMDQ_GCE_NUM_MAX		(2)
 
 #define CMDQ_CURR_IRQ_STATUS		0x10
 #define CMDQ_SYNC_TOKEN_UPDATE		0x68
 #define CMDQ_THR_SLOT_CYCLES		0x30
-#define CMDQ_THR_BASE			0x100
-#define CMDQ_THR_SIZE			0x80
 #define CMDQ_THR_WARM_RESET		0x00
 #define CMDQ_THR_ENABLE_TASK		0x04
 #define CMDQ_THR_SUSPEND_TASK		0x08
@@ -59,32 +55,6 @@
 #define CMDQ_JUMP_BY_OFFSET		0x10000000
 #define CMDQ_JUMP_BY_PA			0x10000001
 
-struct cmdq_thread {
-	struct mbox_chan	*chan;
-	void __iomem		*base;
-	struct list_head	task_busy_list;
-	u32			priority;
-};
-
-struct cmdq_task {
-	struct cmdq		*cmdq;
-	struct list_head	list_entry;
-	dma_addr_t		pa_base;
-	struct cmdq_thread	*thread;
-	struct cmdq_pkt		*pkt; /* the packet sent from mailbox client */
-};
-
-struct cmdq {
-	struct mbox_controller	mbox;
-	void __iomem		*base;
-	int			irq;
-	u32			irq_mask;
-	const struct gce_plat	*pdata;
-	struct cmdq_thread	*thread;
-	struct clk_bulk_data	clocks[CMDQ_GCE_NUM_MAX];
-	bool			suspended;
-};
-
 struct gce_plat {
 	u32 thread_nr;
 	u8 shift;
diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
index f78a08e7c6ed..43eae45a08c9 100644
--- a/include/linux/mailbox/mtk-cmdq-mailbox.h
+++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
@@ -7,10 +7,17 @@
 #ifndef __MTK_CMDQ_MAILBOX_H__
 #define __MTK_CMDQ_MAILBOX_H__
 
+#include <linux/clk.h>
+#include <linux/mailbox_controller.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 #include <linux/types.h>
 
+#define CMDQ_GCE_NUM_MAX		2
+
+#define CMDQ_THR_BASE			0x100
+#define CMDQ_THR_SIZE			0x80
+
 #define CMDQ_INST_SIZE			8 /* instruction is 64-bit */
 #define CMDQ_SUBSYS_SHIFT		16
 #define CMDQ_OP_CODE_SHIFT		24
@@ -79,6 +86,32 @@ struct cmdq_pkt {
 	bool			loop;
 };
 
+struct cmdq_thread {
+	struct mbox_chan	*chan;
+	void __iomem		*base;
+	struct list_head	task_busy_list;
+	u32			priority;
+};
+
+struct cmdq {
+	struct mbox_controller	mbox;
+	void __iomem		*base;
+	int			irq;
+	u32			irq_mask;
+	const struct gce_plat	*pdata;
+	struct cmdq_thread	*thread;
+	struct clk_bulk_data	clocks[CMDQ_GCE_NUM_MAX];
+	bool			suspended;
+};
+
+struct cmdq_task {
+	struct cmdq		*cmdq;
+	struct list_head	list_entry;
+	dma_addr_t		pa_base;
+	struct cmdq_thread	*thread;
+	struct cmdq_pkt		*pkt; /* the packet sent from mailbox client */
+};
+
 u8 cmdq_get_shift_pa(struct mbox_chan *chan);
 
 #endif /* __MTK_CMDQ_MAILBOX_H__ */
-- 
2.18.0


