Return-Path: <devicetree+bounces-24124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFB080E218
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 03:47:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7DC328274E
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 02:47:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E155620EA;
	Tue, 12 Dec 2023 02:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="L3KsD28y"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56F69EB;
	Mon, 11 Dec 2023 18:46:51 -0800 (PST)
X-UUID: b1320406989811eea5db2bebc7c28f94-20231212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=IUt8l+91IoXVo1cpDt79bjGAdJRilmTqvcbGtD1y4Uw=;
	b=L3KsD28ySxOB1TVEHChyB0MKuFtyte//kfSf8RafnC2KdbIKzaZ7EQwyuWeOtR1N9Jl+n1eNGxDxucPhdwajRMqOPaoOa+uGkpehD23dAMUrGJWElck3EWtETwLUIwyAgp4rmjbgDw1X0SiMIc1MMZtnq2WM+G3vpLAwfaflyaE=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.35,REQID:0a8b12e0-5d37-4538-be00-ad48219a3b2b,IP:0,U
	RL:0,TC:0,Content:-25,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:-25
X-CID-META: VersionHash:5d391d7,CLOUDID:ec85ad73-1bd3-4f48-b671-ada88705968c,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: b1320406989811eea5db2bebc7c28f94-20231212
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw01.mediatek.com
	(envelope-from <yong.wu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 154741472; Tue, 12 Dec 2023 10:46:47 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 12 Dec 2023 10:46:45 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 12 Dec 2023 10:46:44 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
	<christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
	<tjmercier@google.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Yong Wu <yong.wu@mediatek.com>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-media@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
	<linaro-mm-sig@lists.linaro.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-mediatek@lists.infradead.org>, <jianjiao.zeng@mediatek.com>,
	<kuohong.wang@mediatek.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>,
	Joakim Bech <joakim.bech@linaro.org>, Jeffrey Kardatzke
	<jkardatzke@google.com>, Nicolas Dufresne <nicolas@ndufresne.ca>,
	<ckoenig.leichtzumerken@gmail.com>
Subject: [PATCH v3 2/7] dma-buf: heaps: Initialize a secure heap
Date: Tue, 12 Dec 2023 10:46:02 +0800
Message-ID: <20231212024607.3681-3-yong.wu@mediatek.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231212024607.3681-1-yong.wu@mediatek.com>
References: <20231212024607.3681-1-yong.wu@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10-0.162000-8.000000
X-TMASE-MatchedRID: jFGZ1KSu+yPtAxjyNphE0lz+axQLnAVB5Y0kb0hqatw1LB46LFAAkpkC
	erFMaabiXQS0szagh4NSeVWfRpnv1OG0fWP55EEGma6DzXaohvPJ5SXtoJPLyO0JEDP8WtN7rVb
	mNWMCsmqzR95c6Z6Roe1oMOv2nr2N0H/zLeBgX28SDAzxRL+lMVg3VqSTJ7SoYdn5x3tXIpeSLr
	afNpSUmkpqm9YsoMoIEAhIuZPp0MQfE8yM4pjsDzXJPZYaymc4xEHRux+uk8gVPU8Gz4xVjZgtw
	ixx9AosTJt/087qXILnCRyFIAHTrUDilNfZzLJbW496KV7WSvGDSsK68ZB5JuO5WhTxlk3SeI9M
	zgCvEUcpDHQ3eKOza7W994ja5xiQ8jae4OD13tAV7Mc+rowcVKtX/F0pBwVJjSV5hDFby7aYnYB
	3Lm7XsQ==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10-0.162000-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: DCCFB0A26993BC3E487D177E281AF68FA8257BAA72E1133602723C55C68896A82000:8
X-MTK: N

Initialize a secure heap. Currently just add a null heap, Prepare for
the later patches.

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
 drivers/dma-buf/heaps/Kconfig       |  6 +++
 drivers/dma-buf/heaps/Makefile      |  1 +
 drivers/dma-buf/heaps/secure_heap.c | 67 +++++++++++++++++++++++++++++
 drivers/dma-buf/heaps/secure_heap.h | 22 ++++++++++
 4 files changed, 96 insertions(+)
 create mode 100644 drivers/dma-buf/heaps/secure_heap.c
 create mode 100644 drivers/dma-buf/heaps/secure_heap.h

diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-buf/heaps/Kconfig
index a5eef06c4226..3a9943e94200 100644
--- a/drivers/dma-buf/heaps/Kconfig
+++ b/drivers/dma-buf/heaps/Kconfig
@@ -12,3 +12,9 @@ config DMABUF_HEAPS_CMA
 	  Choose this option to enable dma-buf CMA heap. This heap is backed
 	  by the Contiguous Memory Allocator (CMA). If your system has these
 	  regions, you should say Y here.
+
+config DMABUF_HEAPS_SECURE
+	bool "DMA-BUF Secure Heap"
+	depends on DMABUF_HEAPS
+	help
+	  Choose this option to enable dma-buf secure heap. If in doubt, say N.
diff --git a/drivers/dma-buf/heaps/Makefile b/drivers/dma-buf/heaps/Makefile
index 974467791032..b1ad9d1f2fbe 100644
--- a/drivers/dma-buf/heaps/Makefile
+++ b/drivers/dma-buf/heaps/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_DMABUF_HEAPS_SECURE)	+= secure_heap.o
 obj-$(CONFIG_DMABUF_HEAPS_SYSTEM)	+= system_heap.o
 obj-$(CONFIG_DMABUF_HEAPS_CMA)		+= cma_heap.o
diff --git a/drivers/dma-buf/heaps/secure_heap.c b/drivers/dma-buf/heaps/secure_heap.c
new file mode 100644
index 000000000000..e087da5638aa
--- /dev/null
+++ b/drivers/dma-buf/heaps/secure_heap.c
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * DMABUF secure heap exporter
+ *
+ * Copyright (C) 2023 MediaTek Inc.
+ */
+
+#include <linux/dma-buf.h>
+#include <linux/dma-heap.h>
+#include <linux/err.h>
+#include <linux/slab.h>
+
+#include "secure_heap.h"
+
+static struct dma_buf *
+secure_heap_allocate(struct dma_heap *heap, unsigned long size,
+		     unsigned long fd_flags, unsigned long heap_flags)
+{
+	struct secure_buffer *sec_buf;
+	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
+	struct dma_buf *dmabuf;
+	int ret;
+
+	sec_buf = kzalloc(sizeof(*sec_buf), GFP_KERNEL);
+	if (!sec_buf)
+		return ERR_PTR(-ENOMEM);
+
+	sec_buf->size = ALIGN(size, PAGE_SIZE);
+	sec_buf->heap = heap;
+
+	exp_info.exp_name = dma_heap_get_name(heap);
+	exp_info.size = sec_buf->size;
+	exp_info.flags = fd_flags;
+	exp_info.priv = sec_buf;
+
+	dmabuf = dma_buf_export(&exp_info);
+	if (IS_ERR(dmabuf)) {
+		ret = PTR_ERR(dmabuf);
+		goto err_free_buf;
+	}
+
+	return dmabuf;
+
+err_free_buf:
+	kfree(sec_buf);
+	return ERR_PTR(ret);
+}
+
+static const struct dma_heap_ops sec_heap_ops = {
+	.allocate = secure_heap_allocate,
+};
+
+int secure_heap_add(struct secure_heap *sec_heap)
+{
+	struct dma_heap_export_info exp_info;
+	struct dma_heap *heap;
+
+	exp_info.name = sec_heap->name;
+	exp_info.ops = &sec_heap_ops;
+	exp_info.priv = (void *)sec_heap;
+
+	heap = dma_heap_add(&exp_info);
+	if (IS_ERR(heap))
+		return PTR_ERR(heap);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(secure_heap_add);
diff --git a/drivers/dma-buf/heaps/secure_heap.h b/drivers/dma-buf/heaps/secure_heap.h
new file mode 100644
index 000000000000..50733dc6d4db
--- /dev/null
+++ b/drivers/dma-buf/heaps/secure_heap.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Secure heap Header.
+ *
+ * Copyright (C) 2023 MediaTek, Inc.
+ */
+
+#ifndef _DMABUF_SECURE_HEAP_H_
+#define _DMABUF_SECURE_HEAP_H_
+
+struct secure_buffer {
+	struct dma_heap		*heap;
+	size_t			size;
+};
+
+struct secure_heap {
+	const char		*name;
+};
+
+int secure_heap_add(struct secure_heap *sec_heap);
+
+#endif
-- 
2.25.1


