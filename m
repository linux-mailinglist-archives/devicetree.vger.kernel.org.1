Return-Path: <devicetree+bounces-69243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 044B88CF49B
	for <lists+devicetree@lfdr.de>; Sun, 26 May 2024 16:45:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 83E911F21578
	for <lists+devicetree@lfdr.de>; Sun, 26 May 2024 14:45:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8412728DDA;
	Sun, 26 May 2024 14:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="BztSt7wB"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4801B95E;
	Sun, 26 May 2024 14:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.61.82.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716734697; cv=none; b=iA6jM1hpSQrmXXb8k+QIL3gWq6yoUo+lnfbX+njzU5uSqsDwfRNt8vAf2t5JrbAiULUnTeaNO04CCDJU3r4K6LTt3YHGK4r1tG4MyAPxckxjijL0rel9M5Z1o3/XaxNpJLuoNxW91vJKNrv8iOqUeZa4A2ck68IEN2GrhmozhiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716734697; c=relaxed/simple;
	bh=HJJ0gtfc/uYYGvqyMndSoDljhuoFS6b3zuRRpa/MoLY=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=I0Ze9lxfrBOyG59CA6hMlznGvjFlQY1tOnqkElJSXxMTaPUGtxwQB6Zrcqy0RRvchafhO6dMC+o64l8sI6lZvbj8VBZBb0qmio59RPNtF6fdadfchseYZy2+sFMF6wRwV+Ch7mQe/pRsFt28hv7flFxySV/MNmMFR2ojGTtsJEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=BztSt7wB; arc=none smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 7f50ca041b6e11efbfff99f2466cf0b4-20240526
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=duLkq3MY08t3TPV16Qz00xGJ7IWdS0qMJsGqtmvG1LI=;
	b=BztSt7wB057OqQH4pWV71Nw9nzt4KGl898gT+5bThVilJANZ7RfPCCVVna4xIffHaGevJpLBPY1mlmiFGFBPJkbAIGA+OnhAiU5O9n0zjmZrgU09ZpYP3wnyXLJO8hLY85J/opG/tCMgOC+P7rDCXeHEiJ9BPi70i/apw2h//2k=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.38,REQID:d3c7d82f-a4b7-4087-bcc8-30529d6b1247,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:82c5f88,CLOUDID:7abed387-8d4f-477b-89d2-1e3bdbef96d1,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 7f50ca041b6e11efbfff99f2466cf0b4-20240526
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw02.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 831470729; Sun, 26 May 2024 22:44:46 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Sun, 26 May 2024 22:44:45 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Sun, 26 May 2024 22:44:45 +0800
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
Subject: [PATCH RESEND,v6 8/8] soc: mediatek: mtk-cmdq: Add secure cmdq_pkt APIs
Date: Sun, 26 May 2024 22:44:43 +0800
Message-ID: <20240526144443.14345-9-jason-jh.lin@mediatek.com>
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
X-MTK: N

Open secure cmdq_pkt APIs to support executing commands in secure world.

1. Add cmdq_sec_pkt_alloc_sec_data(), cmdq_sec_pkt_free_sec_data() and
   cmdq_sec_pkt_set_data() to prepare the sec_data in cmdq_pkt that will
   be referenced in the secure world.

2. Add cmdq_sec_insert_backup_cookie() and cmdq_sec_pkt_write() to
   generate commands that need to be executed in the secure world.
   In cmdq_sec_pkt_write(), we need to prepare the metadata to store
   buffer offset of the secure buffer handle because secure world can
   only translate the start address of secure buffer by secure handle.

Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>
---
 drivers/soc/mediatek/mtk-cmdq-helper.c | 155 +++++++++++++++++++++++++
 include/linux/soc/mediatek/mtk-cmdq.h  |  71 +++++++++++
 2 files changed, 226 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
index 42fae05f61a8..de6557f3ca2f 100644
--- a/drivers/soc/mediatek/mtk-cmdq-helper.c
+++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
@@ -562,4 +562,159 @@ int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
 }
 EXPORT_SYMBOL(cmdq_pkt_finalize);
 
+int cmdq_sec_insert_backup_cookie(struct cmdq_pkt *pkt)
+{
+	struct cmdq_client *cl = (struct cmdq_client *)pkt->cl;
+	struct cmdq_operand left, right;
+	dma_addr_t addr;
+
+	addr = cmdq_sec_get_exec_cnt_addr(cl->chan);
+	cmdq_pkt_assign(pkt, CMDQ_THR_SPR_IDX1, CMDQ_ADDR_HIGH(addr));
+	cmdq_pkt_read_s(pkt, CMDQ_THR_SPR_IDX1, CMDQ_ADDR_LOW(addr), CMDQ_THR_SPR_IDX1);
+
+	left.reg = true;
+	left.idx = CMDQ_THR_SPR_IDX1;
+	right.reg = false;
+	right.value = 1;
+	cmdq_pkt_logic_command(pkt, CMDQ_THR_SPR_IDX1, &left, CMDQ_LOGIC_ADD, &right);
+
+	addr = cmdq_sec_get_cookie_addr(cl->chan);
+	cmdq_pkt_assign(pkt, CMDQ_THR_SPR_IDX2, CMDQ_ADDR_HIGH(addr));
+	cmdq_pkt_write_s(pkt, CMDQ_THR_SPR_IDX2, CMDQ_ADDR_LOW(addr), CMDQ_THR_SPR_IDX1);
+	cmdq_pkt_set_event(pkt, cmdq_sec_get_eof_event_id(cl->chan));
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(cmdq_sec_insert_backup_cookie);
+
+static int cmdq_sec_realloc_addr_list(struct cmdq_pkt *pkt, const u32 count)
+{
+	struct cmdq_sec_data *sec_data = (struct cmdq_sec_data *)pkt->sec_data;
+	void *prev = (void *)(unsigned long)sec_data->addr_metadatas, *curr;
+
+	if (count <= sec_data->addr_metadata_max_cnt)
+		return 0;
+
+	curr = kcalloc(count, sizeof(*sec_data), GFP_KERNEL);
+	if (!curr)
+		return -ENOMEM;
+
+	if (count && sec_data->addr_metadatas)
+		memcpy(curr, prev, sizeof(*sec_data) * sec_data->addr_metadata_max_cnt);
+
+	kfree(prev);
+
+	sec_data->addr_metadatas = (uintptr_t)curr;
+	sec_data->addr_metadata_max_cnt = count;
+	return 0;
+}
+
+void cmdq_sec_pkt_free_sec_data(struct cmdq_pkt *pkt)
+{
+	kfree(pkt->sec_data);
+}
+EXPORT_SYMBOL_GPL(cmdq_sec_pkt_free_sec_data);
+
+int cmdq_sec_pkt_alloc_sec_data(struct cmdq_pkt *pkt)
+{
+	struct cmdq_sec_data *sec_data;
+
+	if (pkt->sec_data)
+		return 0;
+
+	sec_data = kzalloc(sizeof(*sec_data), GFP_KERNEL);
+	if (!sec_data)
+		return -ENOMEM;
+
+	pkt->sec_data = (void *)sec_data;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(cmdq_sec_pkt_alloc_sec_data);
+
+static int cmdq_sec_append_metadata(struct cmdq_pkt *pkt,
+				    const enum cmdq_iwc_addr_metadata_type type,
+				    const u32 base, const u32 offset)
+{
+	struct cmdq_sec_data *sec_data;
+	struct iwc_cmdq_addr_metadata_t *meta;
+	int idx, max, ret;
+
+	pr_debug("[%s %d] pkt:%p type:%u base:%#x offset:%#x",
+		 __func__, __LINE__, pkt, type, base, offset);
+
+	ret = cmdq_sec_pkt_alloc_sec_data(pkt);
+	if (ret < 0)
+		return ret;
+
+	sec_data = (struct cmdq_sec_data *)pkt->sec_data;
+	idx = sec_data->addr_metadata_cnt;
+	if (idx >= CMDQ_IWC_MAX_ADDR_LIST_LENGTH) {
+		pr_err("idx:%u reach over:%u", idx, CMDQ_IWC_MAX_ADDR_LIST_LENGTH);
+		return -EFAULT;
+	}
+
+	if (!sec_data->addr_metadata_max_cnt)
+		max = ADDR_METADATA_MAX_COUNT_ORIGIN;
+	else if (idx >= sec_data->addr_metadata_max_cnt)
+		max = sec_data->addr_metadata_max_cnt * 2;
+	else
+		max = sec_data->addr_metadata_max_cnt;
+
+	ret = cmdq_sec_realloc_addr_list(pkt, max);
+	if (ret)
+		return ret;
+
+	if (!sec_data->addr_metadatas) {
+		pr_info("addr_metadatas is missing");
+
+		meta = kzalloc(sizeof(*meta), GFP_KERNEL);
+		if (!meta)
+			return -ENOMEM;
+
+		sec_data->addr_metadatas = (uintptr_t)(void *)meta;
+	}
+	meta = (struct iwc_cmdq_addr_metadata_t *)(uintptr_t)sec_data->addr_metadatas;
+
+	meta[idx].type = type;
+	meta[idx].base_handle = base;
+	meta[idx].offset = offset;
+	sec_data->addr_metadata_cnt += 1;
+	return 0;
+}
+
+int cmdq_sec_pkt_set_data(struct cmdq_pkt *pkt, enum cmdq_sec_scenario scenario)
+{
+	struct cmdq_sec_data *sec_data;
+	int ret;
+
+	if (!pkt) {
+		pr_err("invalid pkt:%p", pkt);
+		return -EINVAL;
+	}
+
+	ret = cmdq_sec_pkt_alloc_sec_data(pkt);
+	if (ret < 0)
+		return ret;
+
+	pr_debug("[%s %d] pkt:%p sec_data:%p scen:%u",
+		 __func__, __LINE__, pkt, pkt->sec_data, scenario);
+
+	sec_data = (struct cmdq_sec_data *)pkt->sec_data;
+	sec_data->scenario = scenario;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(cmdq_sec_pkt_set_data);
+
+int cmdq_sec_pkt_write(struct cmdq_pkt *pkt, u8 subsys, u16 offset,
+		       enum cmdq_iwc_addr_metadata_type type,
+		       u32 base, u32 base_offset)
+{
+	cmdq_pkt_write(pkt, subsys, offset, base);
+
+	return cmdq_sec_append_metadata(pkt, type, base, base_offset);
+}
+EXPORT_SYMBOL_GPL(cmdq_sec_pkt_write);
+
 MODULE_LICENSE("GPL v2");
diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
index 5bee6f7fc400..6baf60313409 100644
--- a/include/linux/soc/mediatek/mtk-cmdq.h
+++ b/include/linux/soc/mediatek/mtk-cmdq.h
@@ -9,6 +9,7 @@
 
 #include <linux/mailbox_client.h>
 #include <linux/mailbox/mtk-cmdq-mailbox.h>
+#include <linux/mailbox/mtk-cmdq-sec-mailbox.h>
 #include <linux/timer.h>
 
 #define CMDQ_ADDR_HIGH(addr)	((u32)(((addr) >> 16) & GENMASK(31, 0)))
@@ -399,6 +400,52 @@ int cmdq_pkt_eoc(struct cmdq_pkt *pkt);
  */
 int cmdq_pkt_finalize(struct cmdq_pkt *pkt);
 
+/**
+ * cmdq_sec_pkt_free_sec_data() - free sec_data for CMDQ packet.
+ * @pkt:	the CMDQ packet.
+ */
+void cmdq_sec_pkt_free_sec_data(struct cmdq_pkt *pkt);
+
+/**
+ * cmdq_sec_pkt_alloc_sec_data() - allocate sec_data for CMDQ packet.
+ * @pkt:	the CMDQ packet.
+ *
+ * Return: 0 for success; else the error code is returned
+ */
+int cmdq_sec_pkt_alloc_sec_data(struct cmdq_pkt *pkt);
+
+/**
+ * cmdq_sec_insert_backup_cookie() - append backup cookie related instructions.
+ * @pkt:	the CMDQ packet.
+ *
+ * Return: 0 for success; else the error code is returned
+ */
+int cmdq_sec_insert_backup_cookie(struct cmdq_pkt *pkt);
+
+/**
+ * cmdq_sec_pkt_set_data() - set secure configuration to sec_data in CDMQ packet.
+ * @pkt:	the CMDQ packet.
+ * @scenario:		the scenario to CMDQ TA.
+ *
+ * Return: 0 for success; else the error code is returned
+ */
+int cmdq_sec_pkt_set_data(struct cmdq_pkt *pkt, enum cmdq_sec_scenario scenario);
+
+/**
+ * cmdq_sec_pkt_write() - append write secure buffer related instructions.
+ * @pkt:	  the CMDQ packet.
+ * @subsys:	the CMDQ sub system code.
+ * @offset:	register offset from CMDQ sub system.
+ * @type:	the address metadata conversion type.
+ * @base:	the secure handle of secure buffer.
+ * @base_offset:the address offset of secure buffer.
+ *
+ * Return: 0 for success; else the error code is returned
+ */
+int cmdq_sec_pkt_write(struct cmdq_pkt *pkt, u8 subsys, u16 offset,
+		       enum cmdq_iwc_addr_metadata_type type,
+		       u32 base, u32 base_offset);
+
 #else /* IS_ENABLED(CONFIG_MTK_CMDQ) */
 
 static inline int cmdq_dev_get_client_reg(struct device *dev,
@@ -524,6 +571,30 @@ static inline int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
 	return -EINVAL;
 }
 
+static inline void cmdq_sec_pkt_free_sec_data(struct cmdq_pkt *pkt) {}
+
+static inline int cmdq_sec_pkt_alloc_sec_data(struct cmdq_pkt *pkt)
+{
+	return -EINVAL;
+}
+
+static inline int cmdq_sec_insert_backup_cookie(struct cmdq_pkt *pkt)
+{
+	return -EINVAL;
+}
+
+static inline int cmdq_sec_pkt_set_data(struct cmdq_pkt *pkt, enum cmdq_sec_scenario scenario)
+{
+	return -EINVAL;
+}
+
+static inline int cmdq_sec_pkt_write(struct cmdq_pkt *pkt, u8 subsys, u16 offset,
+				     enum cmdq_iwc_addr_metadata_type type,
+				     u32 base, u32 base_offset)
+{
+	return -EINVAL;
+}
+
 #endif /* IS_ENABLED(CONFIG_MTK_CMDQ) */
 
 #endif	/* __MTK_CMDQ_H__ */
-- 
2.18.0


