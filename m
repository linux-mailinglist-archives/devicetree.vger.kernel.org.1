Return-Path: <devicetree+bounces-159587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A86A6B7B4
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 10:39:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E6C047A999C
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 09:37:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 373CB22B8C8;
	Fri, 21 Mar 2025 09:35:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="U2YmeLeJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861A822A7FF;
	Fri, 21 Mar 2025 09:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742549752; cv=none; b=ek1JW40u8T/i+zW7Ddokwxb2xuvkOk68gRRWeIO1TEhgzpdZNhnyMtA7FOIxLn+thRq41c/kCVmIO2/Ac2TsQ9O+epGfGYXz+9vqYrhifOvHrsC8jETmmcsvZf6yWGS8f9E+NHUJZDOUmVpkV1U946YZmP9IPzMEcS9C853+p3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742549752; c=relaxed/simple;
	bh=I1JSjc+9qLX24YSaRMh5v5i3ltum8YqIKEe/XVV4Wj4=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Mr7PlkDisYmam8PNYN0x9jnYRiPqVjz9louThA9JGvu0kPumYj8UEnJ2EzJkC5kJnXRixlnNvDpfv9kVXDT/oVSXDjdDvjsSY149BZOvLTJrKyIEr6Kp98ZK+1dtbeWb+YXc5BlT2iozwCH9wOszg4hmO3bD32Egj/+GlYKU8S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=U2YmeLeJ; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: db7c131a063711f0aae1fd9735fae912-20250321
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=jk/+80mWk+Wy9s9FVzTH90uBGiZxV+aClNHf6cRUXa0=;
	b=U2YmeLeJm6WuG10XAVQIwjiD1xIgyY80U0+0JgAMjQuJWg3p/wadR7RrVL625tNfwczboo2fMyS61LJpij2SsCTB5HdEz4pyM00qMxThtjVXHGKkPKoHPLZzArESgVPg9bwlcZkQ9QG5YTdrXYSF/BcA42lKy+gntlDbVngXSQg=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.2.1,REQID:292e53b4-8146-4f17-81a9-d3f06c8cd97e,IP:0,UR
	L:0,TC:0,Content:0,EDM:-25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-25
X-CID-META: VersionHash:0ef645f,CLOUDID:6af4e8fd-c03c-4d2b-a585-04cfa9287728,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102,TC:nil,Content:0|50,EDM:1,
	IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:
	0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: db7c131a063711f0aae1fd9735fae912-20250321
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw01.mediatek.com
	(envelope-from <paul-pl.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1456579300; Fri, 21 Mar 2025 17:35:42 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.39; Fri, 21 Mar 2025 17:35:40 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1258.39 via Frontend Transport; Fri, 21 Mar 2025 17:35:40 +0800
From: paul-pl.chen <paul-pl.chen@mediatek.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<chunkuang.hu@kernel.org>, <angelogioacchino.delregno@collabora.com>
CC: <matthias.bgg@gmail.com>, <p.zabel@pengutronix.de>,
	<jason-jh.lin@mediatek.com>, <nancy.lin@mediatek.com>,
	<singo.chang@mediatek.com>, <xiandong.wang@mediatek.com>,
	<sirius.wang@mediatek.com>, <paul-pl.chen@mediatek.com>,
	<sunny.shen@mediatek.com>, <fshao@chromium.org>, <treapking@chromium.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Subject: [PATCH v2 14/15] drm/mediatek: Add support for multiple mmsys in the one mediatek-drm driver
Date: Fri, 21 Mar 2025 17:33:43 +0800
Message-ID: <20250321093435.94835-15-paul-pl.chen@mediatek.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250321093435.94835-1-paul-pl.chen@mediatek.com>
References: <20250321093435.94835-1-paul-pl.chen@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Nancy Lin <nancy.lin@mediatek.com>

To support multiple mmsys instances in the one mediatek-drm instance,
providing improved flexibility and scalability by the following changes:

1. Add DDP_COMPONENT_DRM_OVLSYS_ADAPTOR* to probe the
  ovlsys_adaptor drivers and support different mmsys composition.
2. Added new component types MTK_DISP_VIRTUAL to support the
  routing to virtual display components.
3. Added and adjusted the existed structure or interface to extend
  the support of multiple mmsys instances.
4. Modified the component matching and binding logic to support
  multiple mmsys instances.

Signed-off-by: Nancy Lin <nancy.lin@mediatek.com>
Signed-off-by: Paul-pl Chen <paul-pl.chen@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_crtc.c     | 342 +++++++++++++++++++-----
 drivers/gpu/drm/mediatek/mtk_crtc.h     |   6 +-
 drivers/gpu/drm/mediatek/mtk_ddp_comp.c | 102 +++----
 drivers/gpu/drm/mediatek/mtk_ddp_comp.h |   2 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c  |  86 +++---
 drivers/gpu/drm/mediatek/mtk_drm_drv.h  |  16 +-
 6 files changed, 392 insertions(+), 162 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_crtc.c b/drivers/gpu/drm/mediatek/mtk_crtc.c
index 8f6fba4217ec..4f91ffdd08ae 100644
--- a/drivers/gpu/drm/mediatek/mtk_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_crtc.c
@@ -58,13 +58,17 @@ struct mtk_crtc {
 	wait_queue_head_t		cb_blocking_queue;
 #endif
 
-	struct device			*mmsys_dev;
+	struct device			*mmsys_dev[MAX_MMSYS];
 	struct device			*dma_dev;
-	struct mtk_mutex		*mutex;
+	struct device			*vdisp_ao_dev;
+	struct mtk_mutex		*mutex[MAX_MMSYS];
 	unsigned int			ddp_comp_nr;
 	struct mtk_ddp_comp		**ddp_comp;
+	enum mtk_drm_mmsys		*ddp_comp_sys;
+	bool				exist[MAX_MMSYS];
 	unsigned int			num_conn_routes;
 	const struct mtk_drm_route	*conn_routes;
+	enum mtk_drm_mmsys		conn_routes_sys;
 
 	/* lock for display hardware access */
 	struct mutex			hw_lock;
@@ -82,6 +86,11 @@ struct mtk_crtc_state {
 	unsigned int			pending_vrefresh;
 };
 
+struct mtk_crtc_comp_info {
+	enum mtk_drm_mmsys sys;
+	unsigned int comp_id;
+};
+
 static inline struct mtk_crtc *to_mtk_crtc(struct drm_crtc *c)
 {
 	return container_of(c, struct mtk_crtc, base);
@@ -130,7 +139,10 @@ static void mtk_crtc_destroy(struct drm_crtc *crtc)
 	struct mtk_crtc *mtk_crtc = to_mtk_crtc(crtc);
 	int i;
 
-	mtk_mutex_put(mtk_crtc->mutex);
+	for (i = 0; i < MAX_MMSYS; i++)
+		if (mtk_crtc->mutex[i])
+			mtk_mutex_put(mtk_crtc->mutex[i]);
+
 #if IS_REACHABLE(CONFIG_MTK_CMDQ)
 	if (mtk_crtc->cmdq_client.chan) {
 		cmdq_pkt_destroy(&mtk_crtc->cmdq_client, &mtk_crtc->cmdq_handle);
@@ -228,7 +240,14 @@ static int mtk_crtc_ddp_clk_enable(struct mtk_crtc *mtk_crtc)
 	int i;
 
 	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
+		enum mtk_drm_mmsys mmsys;
+
 		ret = mtk_ddp_comp_clk_enable(mtk_crtc->ddp_comp[i]);
+		if (mtk_ddp_comp_get_type(mtk_crtc->ddp_comp[i]->id) == MTK_DISP_VIRTUAL) {
+			mmsys = mtk_crtc->ddp_comp_sys[i];
+			ret = mtk_mmsys_ddp_clk_enable(mtk_crtc->mmsys_dev[mmsys],
+						       mtk_crtc->ddp_comp[i]->id);
+		}
 		if (ret) {
 			DRM_ERROR("Failed to enable clock %d: %d\n", i, ret);
 			goto err;
@@ -237,17 +256,28 @@ static int mtk_crtc_ddp_clk_enable(struct mtk_crtc *mtk_crtc)
 
 	return 0;
 err:
-	while (--i >= 0)
+	while (--i >= 0) {
 		mtk_ddp_comp_clk_disable(mtk_crtc->ddp_comp[i]);
+		if (mtk_ddp_comp_get_type(mtk_crtc->ddp_comp[i]->id) == MTK_DISP_VIRTUAL)
+			mtk_mmsys_ddp_clk_disable(mtk_crtc->mmsys_dev[mtk_crtc->ddp_comp_sys[i]],
+						  mtk_crtc->ddp_comp[i]->id);
+	}
 	return ret;
 }
 
 static void mtk_crtc_ddp_clk_disable(struct mtk_crtc *mtk_crtc)
 {
 	int i;
+	enum mtk_drm_mmsys mmsys;
 
-	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
+	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
 		mtk_ddp_comp_clk_disable(mtk_crtc->ddp_comp[i]);
+		if (mtk_ddp_comp_get_type(mtk_crtc->ddp_comp[i]->id) == MTK_DISP_VIRTUAL) {
+			mmsys = mtk_crtc->ddp_comp_sys[i];
+			mtk_mmsys_ddp_clk_disable(mtk_crtc->mmsys_dev[mmsys],
+						  mtk_crtc->ddp_comp[i]->id);
+		}
+	}
 }
 
 static
@@ -340,7 +370,8 @@ static int mtk_crtc_ddp_hw_init(struct mtk_crtc *mtk_crtc)
 	struct drm_connector_list_iter conn_iter;
 	unsigned int width, height, vrefresh, bpc = MTK_MAX_BPC;
 	int ret;
-	int i;
+	int i, j;
+	enum mtk_drm_mmsys mmsys;
 
 	if (WARN_ON(!crtc->state))
 		return -EINVAL;
@@ -370,10 +401,18 @@ static int mtk_crtc_ddp_hw_init(struct mtk_crtc *mtk_crtc)
 		return ret;
 	}
 
-	ret = mtk_mutex_prepare(mtk_crtc->mutex);
-	if (ret < 0) {
-		DRM_ERROR("Failed to enable mutex clock: %d\n", ret);
-		goto err_pm_runtime_put;
+	for (i = 0; i < MAX_MMSYS; i++)
+		if (mtk_crtc->exist[i])
+			mtk_mmsys_top_clk_enable(mtk_crtc->mmsys_dev[i]);
+
+	for (i = 0; i < MAX_MMSYS; i++) {
+		if (!mtk_crtc->mutex[i] || !mtk_crtc->exist[i])
+			continue;
+		ret = mtk_mutex_prepare(mtk_crtc->mutex[i]);
+		if (ret < 0) {
+			DRM_ERROR("Failed to enable mmsys%d mutex clock: %d\n", i, ret);
+			goto err_pm_runtime_put;
+		}
 	}
 
 	ret = mtk_crtc_ddp_clk_enable(mtk_crtc);
@@ -382,19 +421,36 @@ static int mtk_crtc_ddp_hw_init(struct mtk_crtc *mtk_crtc)
 		goto err_mutex_unprepare;
 	}
 
+	if (mtk_crtc->vdisp_ao_dev)
+		mtk_mmsys_default_config(mtk_crtc->vdisp_ao_dev);
+
+	for (i = 0; i < MAX_MMSYS; i++)
+		if (mtk_crtc->exist[i])
+			mtk_mmsys_default_config(mtk_crtc->mmsys_dev[i]);
+
 	for (i = 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
-		if (!mtk_ddp_comp_connect(mtk_crtc->ddp_comp[i], mtk_crtc->mmsys_dev,
+		mmsys = mtk_crtc->ddp_comp_sys[i];
+		if (!mtk_ddp_comp_connect(mtk_crtc->ddp_comp[i], mtk_crtc->mmsys_dev[mmsys],
 					  mtk_crtc->ddp_comp[i + 1]->id))
-			mtk_mmsys_ddp_connect(mtk_crtc->mmsys_dev,
+			mtk_mmsys_ddp_connect(mtk_crtc->mmsys_dev[mmsys],
 					      mtk_crtc->ddp_comp[i]->id,
 					      mtk_crtc->ddp_comp[i + 1]->id);
-		if (!mtk_ddp_comp_add(mtk_crtc->ddp_comp[i], mtk_crtc->mutex))
-			mtk_mutex_add_comp(mtk_crtc->mutex,
+		if (!mtk_ddp_comp_add(mtk_crtc->ddp_comp[i], mtk_crtc->mutex[mmsys]))
+			mtk_mutex_add_comp(mtk_crtc->mutex[mmsys],
 					   mtk_crtc->ddp_comp[i]->id);
 	}
-	if (!mtk_ddp_comp_add(mtk_crtc->ddp_comp[i], mtk_crtc->mutex))
-		mtk_mutex_add_comp(mtk_crtc->mutex, mtk_crtc->ddp_comp[i]->id);
-	mtk_mutex_enable(mtk_crtc->mutex);
+	mmsys = mtk_crtc->ddp_comp_sys[i];
+	if (!mtk_ddp_comp_add(mtk_crtc->ddp_comp[i], mtk_crtc->mutex[mmsys]))
+		mtk_mutex_add_comp(mtk_crtc->mutex[mmsys], mtk_crtc->ddp_comp[i]->id);
+
+	/* Need to set sof source for all mmsys mutexes in this crtc */
+	for (j = 0; j < MAX_MMSYS; j++)
+		if (mtk_crtc->exist[j] && mtk_crtc->mutex[j])
+			mtk_mutex_add_comp_sof(mtk_crtc->mutex[j], mtk_crtc->ddp_comp[i]->id);
+
+	for (i = 0; i < MAX_MMSYS; i++)
+		if (mtk_crtc->exist[i] && mtk_crtc->mutex[i])
+			mtk_mutex_enable(mtk_crtc->mutex[i]);
 
 	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
 		struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[i];
@@ -402,7 +458,11 @@ static int mtk_crtc_ddp_hw_init(struct mtk_crtc *mtk_crtc)
 		if (i == 1)
 			mtk_ddp_comp_bgclr_in_on(comp);
 
-		mtk_ddp_comp_config(comp, width, height, vrefresh, bpc, NULL);
+		if (mtk_ddp_comp_get_type(comp->id) == MTK_DISP_VIRTUAL)
+			mtk_mmsys_ddp_config(mtk_crtc->mmsys_dev[mtk_crtc->ddp_comp_sys[i]],
+					     comp->id, width, height, NULL);
+		else
+			mtk_ddp_comp_config(comp, width, height, vrefresh, bpc, NULL);
 		mtk_ddp_comp_start(comp);
 	}
 
@@ -426,7 +486,10 @@ static int mtk_crtc_ddp_hw_init(struct mtk_crtc *mtk_crtc)
 	return 0;
 
 err_mutex_unprepare:
-	mtk_mutex_unprepare(mtk_crtc->mutex);
+	while (--i >= 0)
+		if (mtk_crtc->exist[i] && mtk_crtc->mutex[i])
+			mtk_mutex_unprepare(mtk_crtc->mutex[i]);
+
 err_pm_runtime_put:
 	pm_runtime_put(crtc->dev->dev);
 	return ret;
@@ -437,7 +500,8 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_crtc *mtk_crtc)
 	struct drm_device *drm = mtk_crtc->base.dev;
 	struct drm_crtc *crtc = &mtk_crtc->base;
 	unsigned long flags;
-	int i;
+	int i, j;
+	enum mtk_drm_mmsys mmsys;
 
 	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
 		mtk_ddp_comp_stop(mtk_crtc->ddp_comp[i]);
@@ -445,27 +509,47 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_crtc *mtk_crtc)
 			mtk_ddp_comp_bgclr_in_off(mtk_crtc->ddp_comp[i]);
 	}
 
-	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
-		if (!mtk_ddp_comp_remove(mtk_crtc->ddp_comp[i], mtk_crtc->mutex))
-			mtk_mutex_remove_comp(mtk_crtc->mutex,
+	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
+		mmsys = mtk_crtc->ddp_comp_sys[i];
+		if (!mtk_ddp_comp_remove(mtk_crtc->ddp_comp[i], mtk_crtc->mutex[mmsys]))
+			mtk_mutex_remove_comp(mtk_crtc->mutex[mtk_crtc->ddp_comp_sys[i]],
 					      mtk_crtc->ddp_comp[i]->id);
-	mtk_mutex_disable(mtk_crtc->mutex);
+	}
 	for (i = 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
-		if (!mtk_ddp_comp_disconnect(mtk_crtc->ddp_comp[i], mtk_crtc->mmsys_dev,
-					     mtk_crtc->ddp_comp[i + 1]->id))
-			mtk_mmsys_ddp_disconnect(mtk_crtc->mmsys_dev,
-						 mtk_crtc->ddp_comp[i]->id,
-						 mtk_crtc->ddp_comp[i + 1]->id);
-		if (!mtk_ddp_comp_remove(mtk_crtc->ddp_comp[i], mtk_crtc->mutex))
-			mtk_mutex_remove_comp(mtk_crtc->mutex,
+		struct mtk_ddp_comp *comp;
+		unsigned int curr, next;
+
+		comp = mtk_crtc->ddp_comp[i];
+		curr = mtk_crtc->ddp_comp[i]->id;
+		next = mtk_crtc->ddp_comp[i + 1]->id;
+		mmsys = mtk_crtc->ddp_comp_sys[i];
+		if (!mtk_ddp_comp_disconnect(comp, mtk_crtc->mmsys_dev[mmsys], next))
+			mtk_mmsys_ddp_disconnect(mtk_crtc->mmsys_dev[mmsys], curr, next);
+		if (!mtk_ddp_comp_remove(comp, mtk_crtc->mutex[mmsys]))
+			mtk_mutex_remove_comp(mtk_crtc->mutex[mtk_crtc->ddp_comp_sys[i]],
 					      mtk_crtc->ddp_comp[i]->id);
+
 	}
-	if (!mtk_ddp_comp_remove(mtk_crtc->ddp_comp[i], mtk_crtc->mutex))
-		mtk_mutex_remove_comp(mtk_crtc->mutex, mtk_crtc->ddp_comp[i]->id);
+
+	mmsys = mtk_crtc->ddp_comp_sys[i];
+	if (!mtk_ddp_comp_remove(mtk_crtc->ddp_comp[i], mtk_crtc->mutex[mmsys]))
+		mtk_mutex_remove_comp(mtk_crtc->mutex[mmsys], mtk_crtc->ddp_comp[i]->id);
+
+	/* Need to remove sof source for all mmsys mutexes in this crtc */
+	for (j = 0; j < MAX_MMSYS; j++)
+		if (mtk_crtc->exist[j] && mtk_crtc->mutex[j])
+			mtk_mutex_remove_comp_sof(mtk_crtc->mutex[j], mtk_crtc->ddp_comp[i]->id);
+
 	mtk_crtc_ddp_clk_disable(mtk_crtc);
-	mtk_mutex_unprepare(mtk_crtc->mutex);
+	for (i = 0; i < MAX_MMSYS; i++)
+		if (mtk_crtc->exist[i] && mtk_crtc->mutex[i])
+			mtk_mutex_unprepare(mtk_crtc->mutex[i]);
 
-	pm_runtime_put(drm->dev);
+	for (i = 0; i < MAX_MMSYS; i++)
+		if (mtk_crtc->exist[i])
+			mtk_mmsys_top_clk_disable(mtk_crtc->mmsys_dev[i]);
+
+	pm_runtime_put_sync(drm->dev);
 
 	if (crtc->state->event && !crtc->state->active) {
 		spin_lock_irqsave(&crtc->dev->event_lock, flags);
@@ -589,9 +673,15 @@ static void mtk_crtc_update_config(struct mtk_crtc *mtk_crtc, bool needs_vblank)
 		mtk_crtc->pending_async_planes = true;
 
 	if (priv->data->shadow_register) {
-		mtk_mutex_acquire(mtk_crtc->mutex);
+		for (i = 0; i < MAX_MMSYS; i++)
+			if (mtk_crtc->exist[i] && mtk_crtc->mutex[i])
+				mtk_mutex_acquire(mtk_crtc->mutex[i]);
+
 		mtk_crtc_ddp_config(crtc, NULL);
-		mtk_mutex_release(mtk_crtc->mutex);
+
+		for (i = 0; i < MAX_MMSYS; i++)
+			if (mtk_crtc->exist[i] && mtk_crtc->mutex[i])
+				mtk_mutex_release(mtk_crtc->mutex[i]);
 	}
 #if IS_REACHABLE(CONFIG_MTK_CMDQ)
 	if (mtk_crtc->cmdq_client.chan) {
@@ -675,6 +765,7 @@ static void mtk_crtc_update_output(struct drm_crtc *crtc,
 {
 	int crtc_index = drm_crtc_index(crtc);
 	int i;
+	unsigned int mmsys;
 	struct device *dev;
 	struct drm_crtc_state *crtc_state = state->crtcs[crtc_index].new_state;
 	struct mtk_crtc *mtk_crtc = to_mtk_crtc(crtc);
@@ -687,7 +778,8 @@ static void mtk_crtc_update_output(struct drm_crtc *crtc,
 	if (!mtk_crtc->num_conn_routes)
 		return;
 
-	priv = ((struct mtk_drm_private *)crtc->dev->dev_private)->all_drm_private[crtc_index];
+	mmsys = mtk_crtc->conn_routes_sys;
+	priv = ((struct mtk_drm_private *)crtc->dev->dev_private)->all_drm_private[mmsys];
 	dev = priv->dev;
 
 	dev_dbg(dev, "connector change:%d, encoder mask:0x%x for crtc:%d\n",
@@ -700,6 +792,8 @@ static void mtk_crtc_update_output(struct drm_crtc *crtc,
 		if (comp->encoder_index >= 0 &&
 		    (encoder_mask & BIT(comp->encoder_index))) {
 			mtk_crtc->ddp_comp[mtk_crtc->ddp_comp_nr - 1] = comp;
+			mtk_crtc->ddp_comp_sys[mtk_crtc->ddp_comp_nr - 1] = mmsys;
+			mtk_crtc->exist[mmsys] = true;
 			dev_dbg(dev, "Add comp_id: %d at path index %d\n",
 				comp->id, mtk_crtc->ddp_comp_nr - 1);
 			break;
@@ -736,9 +830,31 @@ static void mtk_crtc_atomic_enable(struct drm_crtc *crtc,
 	struct mtk_crtc *mtk_crtc = to_mtk_crtc(crtc);
 	struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
 	int ret;
+	int i, j;
+	int mmsys_cnt = 0;
 
 	DRM_DEBUG_DRIVER("%s %d\n", __func__, crtc->base.id);
 
+	for (i = 0; i < MAX_MMSYS; i++)
+		if (mtk_crtc->exist[i])
+			mmsys_cnt++;
+
+	if (mmsys_cnt > 1) {
+		for (i = 0; i < MAX_MMSYS; i++) {
+			if (!mtk_crtc->exist[i])
+				continue;
+			ret = pm_runtime_resume_and_get(mtk_crtc->mmsys_dev[i]);
+			if (ret < 0) {
+				DRM_DEV_ERROR(mtk_crtc->mmsys_dev[i],
+					      "Failed to enable power domain: %d\n", ret);
+				for (j = i - 1; j >= 0; j--)
+					if (mtk_crtc->exist[i])
+						pm_runtime_put(mtk_crtc->mmsys_dev[j]);
+				return;
+			}
+		}
+	}
+
 	ret = mtk_ddp_comp_power_on(comp);
 	if (ret < 0) {
 		DRM_DEV_ERROR(comp->dev, "Failed to enable power domain: %d\n", ret);
@@ -762,7 +878,8 @@ static void mtk_crtc_atomic_disable(struct drm_crtc *crtc,
 {
 	struct mtk_crtc *mtk_crtc = to_mtk_crtc(crtc);
 	struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
-	int i;
+	int i, ret;
+	int mmsys_cnt = 0;
 
 	DRM_DEBUG_DRIVER("%s %d\n", __func__, crtc->base.id);
 	if (!mtk_crtc->enabled)
@@ -794,6 +911,22 @@ static void mtk_crtc_atomic_disable(struct drm_crtc *crtc,
 	mtk_crtc_ddp_hw_fini(mtk_crtc);
 	mtk_ddp_comp_power_off(comp);
 
+	for (i = 0; i < MAX_MMSYS; i++)
+		if (mtk_crtc->exist[i])
+			mmsys_cnt++;
+
+	if (mmsys_cnt > 1) {
+		for (i = 0; i < MAX_MMSYS; i++) {
+			if (mtk_crtc->exist[i]) {
+				ret = pm_runtime_put(mtk_crtc->mmsys_dev[i]);
+				if (ret < 0)
+					DRM_DEV_ERROR(mtk_crtc->mmsys_dev[i],
+						      "Failed to disable power domain: %d\n",
+						      ret);
+			}
+		}
+	}
+
 	mtk_crtc->enabled = false;
 }
 
@@ -953,49 +1086,108 @@ struct device *mtk_crtc_dma_dev_get(struct drm_crtc *crtc)
 	return mtk_crtc->dma_dev;
 }
 
-int mtk_crtc_create(struct drm_device *drm_dev, const unsigned int *path,
-		    unsigned int path_len, int priv_data_index,
-		    const struct mtk_drm_route *conn_routes,
-		    unsigned int num_conn_routes)
+int mtk_crtc_create(struct drm_device *drm_dev, enum mtk_crtc_path path_sel)
 {
 	struct mtk_drm_private *priv = drm_dev->dev_private;
 	struct device *dev = drm_dev->dev;
 	struct mtk_crtc *mtk_crtc;
 	unsigned int num_comp_planes = 0;
 	int ret;
-	int i;
+	int i, j, k;
 	bool has_ctm = false;
 	uint gamma_lut_size = 0;
 	struct drm_crtc *tmp;
 	int crtc_i = 0;
-
-	if (!path)
-		return 0;
-
-	priv = priv->all_drm_private[priv_data_index];
+	struct mtk_drm_private *subsys_priv;
+	struct mtk_crtc_comp_info path[DDP_COMPONENT_ID_MAX];
+	unsigned int path_len = 0;
+	const struct mtk_drm_route *conn_routes = NULL;
+	unsigned int num_conn_routes = 0;
+	enum mtk_drm_mmsys conn_mmsys;
 
 	drm_for_each_crtc(tmp, drm_dev)
 		crtc_i++;
 
+	for (j = 0; j < priv->data->mmsys_dev_num; j++) {
+		for (k = 0; k < MAX_MMSYS; k++) {
+			const unsigned int *subsys_path;
+			unsigned int subsys_path_len = 0;
+			unsigned int order = 0;
+
+			subsys_priv = priv->all_drm_private[k];
+			if (!subsys_priv)
+				continue;
+
+			if (path_sel == CRTC_MAIN) {
+				subsys_path = subsys_priv->data->main_path;
+				subsys_path_len = subsys_priv->data->main_len;
+				order = subsys_priv->data->main_order;
+			} else if (path_sel == CRTC_EXT) {
+				subsys_path = subsys_priv->data->ext_path;
+				subsys_path_len = subsys_priv->data->ext_len;
+				order = subsys_priv->data->ext_order;
+			} else if (path_sel == CRTC_THIRD) {
+				subsys_path = subsys_priv->data->third_path;
+				subsys_path_len = subsys_priv->data->third_len;
+				order = subsys_priv->data->third_order;
+			}
+
+			if (subsys_priv->data->num_conn_routes) {
+				conn_routes = subsys_priv->data->conn_routes;
+				num_conn_routes = subsys_priv->data->num_conn_routes;
+				conn_mmsys = subsys_priv->data->mmsys_id;
+			}
+
+			if (j != order)
+				continue;
+			if (!subsys_path_len)
+				continue;
+
+			for (i = 0; i < subsys_path_len; i++) {
+				path[path_len].sys = subsys_priv->data->mmsys_id;
+				path[path_len].comp_id = subsys_path[i];
+				path_len++;
+			}
+		}
+	}
+
+	if (!path_len)
+		return 0;
+
+	if (num_conn_routes) {
+		for (i = 0; i < num_conn_routes; i++)
+			if (conn_routes->crtc_id == crtc_i)
+				break;
+		if (i == num_conn_routes) {
+			num_conn_routes = 0;
+			conn_routes = NULL;
+		}
+	}
+
 	for (i = 0; i < path_len; i++) {
-		enum mtk_ddp_comp_id comp_id = path[i];
+		enum mtk_ddp_comp_id comp_id = path[i].comp_id;
 		struct device_node *node;
 		struct mtk_ddp_comp *comp;
 
+		priv = priv->all_drm_private[path[i].sys];
 		node = priv->comp_node[comp_id];
 		comp = &priv->ddp_comp[comp_id];
 
 		/* Not all drm components have a DTS device node, such as ovl_adaptor,
 		 * which is the drm bring up sub driver
 		 */
-		if (!node && comp_id != DDP_COMPONENT_DRM_OVL_ADAPTOR) {
+		if (!node && comp_id != DDP_COMPONENT_DRM_OVL_ADAPTOR &&
+		    comp_id != DDP_COMPONENT_DRM_OVLSYS_ADAPTOR0 &&
+		    comp_id != DDP_COMPONENT_DRM_OVLSYS_ADAPTOR1 &&
+		    comp_id != DDP_COMPONENT_DRM_OVLSYS_ADAPTOR2 &&
+		    mtk_ddp_comp_get_type(comp_id) != MTK_DISP_VIRTUAL) {
 			dev_info(dev,
 				"Not creating crtc %d because component %d is disabled or missing\n",
 				crtc_i, comp_id);
 			return 0;
 		}
 
-		if (!comp->dev) {
+		if (!comp->dev && mtk_ddp_comp_get_type(comp_id) != MTK_DISP_VIRTUAL) {
 			dev_err(dev, "Component %pOF not initialized\n", node);
 			return -ENODEV;
 		}
@@ -1005,7 +1197,9 @@ int mtk_crtc_create(struct drm_device *drm_dev, const unsigned int *path,
 	if (!mtk_crtc)
 		return -ENOMEM;
 
-	mtk_crtc->mmsys_dev = priv->mmsys_dev;
+	for (i = 0; i < MAX_MMSYS; i++)
+		if (priv->all_drm_private[i])
+			mtk_crtc->mmsys_dev[i] = priv->all_drm_private[i]->mmsys_dev;
 	mtk_crtc->ddp_comp_nr = path_len;
 	mtk_crtc->ddp_comp = devm_kcalloc(dev,
 					  mtk_crtc->ddp_comp_nr + (conn_routes ? 1 : 0),
@@ -1014,19 +1208,36 @@ int mtk_crtc_create(struct drm_device *drm_dev, const unsigned int *path,
 	if (!mtk_crtc->ddp_comp)
 		return -ENOMEM;
 
-	mtk_crtc->mutex = mtk_mutex_get(priv->mutex_dev);
-	if (IS_ERR(mtk_crtc->mutex)) {
-		ret = PTR_ERR(mtk_crtc->mutex);
-		dev_err(dev, "Failed to get mutex: %d\n", ret);
-		return ret;
+	mtk_crtc->ddp_comp_sys = devm_kmalloc_array(dev, mtk_crtc->ddp_comp_nr +
+						    (conn_routes ? 1 : 0),
+						    sizeof(*mtk_crtc->ddp_comp_sys), GFP_KERNEL);
+	if (!mtk_crtc->ddp_comp_sys)
+		return -ENOMEM;
+
+	for (i = 0; i < MAX_MMSYS; i++) {
+		if (!priv->all_drm_private[i])
+			continue;
+
+		priv = priv->all_drm_private[i];
+		mtk_crtc->mutex[i] = mtk_mutex_get(priv->mutex_dev);
+		if (IS_ERR(mtk_crtc->mutex[i])) {
+			ret = PTR_ERR(mtk_crtc->mutex[i]);
+			dev_err(dev, "Failed to get mutex: %d\n", ret);
+			return ret;
+		}
 	}
 
 	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
-		unsigned int comp_id = path[i];
+		unsigned int comp_id = path[i].comp_id;
 		struct mtk_ddp_comp *comp;
 
+		priv = priv->all_drm_private[path[i].sys];
 		comp = &priv->ddp_comp[comp_id];
+		if (mtk_ddp_comp_get_type(comp_id) == MTK_DISP_VIRTUAL)
+			comp->id = comp_id;
 		mtk_crtc->ddp_comp[i] = comp;
+		mtk_crtc->ddp_comp_sys[i] = path[i].sys;
+		mtk_crtc->exist[path[i].sys] = true;
 
 		if (comp->funcs) {
 			if (comp->funcs->gamma_set && comp->funcs->gamma_get_lut_size) {
@@ -1063,8 +1274,10 @@ int mtk_crtc_create(struct drm_device *drm_dev, const unsigned int *path,
 	 * In the case of ovl_adaptor sub driver, it needs to use the
 	 * dma_dev_get function to get representative dma dev.
 	 */
-	mtk_crtc->dma_dev = mtk_ddp_comp_dma_dev_get(&priv->ddp_comp[path[0]]);
+	priv = priv->all_drm_private[path[0].sys];
+	mtk_crtc->dma_dev = mtk_ddp_comp_dma_dev_get(&priv->ddp_comp[path[0].comp_id]);
 
+	mtk_crtc->vdisp_ao_dev = priv->vdisp_ao_dev;
 	ret = mtk_crtc_init(drm_dev, mtk_crtc, crtc_i);
 	if (ret < 0)
 		return ret;
@@ -1077,7 +1290,7 @@ int mtk_crtc_create(struct drm_device *drm_dev, const unsigned int *path,
 
 #if IS_REACHABLE(CONFIG_MTK_CMDQ)
 	i = priv->mbox_index++;
-	mtk_crtc->cmdq_client.client.dev = mtk_crtc->mmsys_dev;
+	mtk_crtc->cmdq_client.client.dev = mtk_crtc->mmsys_dev[priv->data->mmsys_id];
 	mtk_crtc->cmdq_client.client.tx_block = false;
 	mtk_crtc->cmdq_client.client.knows_txdone = true;
 	mtk_crtc->cmdq_client.client.rx_callback = ddp_cmdq_cb;
@@ -1117,6 +1330,7 @@ int mtk_crtc_create(struct drm_device *drm_dev, const unsigned int *path,
 #endif
 
 	if (conn_routes) {
+		priv = priv->all_drm_private[conn_mmsys];
 		for (i = 0; i < num_conn_routes; i++) {
 			unsigned int comp_id = conn_routes[i].route_ddp;
 			struct device_node *node = priv->comp_node[comp_id];
@@ -1133,6 +1347,7 @@ int mtk_crtc_create(struct drm_device *drm_dev, const unsigned int *path,
 			mtk_ddp_comp_encoder_index_set(&priv->ddp_comp[comp_id]);
 		}
 
+		mtk_crtc->conn_routes_sys = conn_mmsys;
 		mtk_crtc->num_conn_routes = num_conn_routes;
 		mtk_crtc->conn_routes = conn_routes;
 
@@ -1140,5 +1355,10 @@ int mtk_crtc_create(struct drm_device *drm_dev, const unsigned int *path,
 		mtk_crtc->ddp_comp_nr++;
 	}
 
+	for (i = 0; i < MAX_MMSYS; i++)
+		if (mtk_crtc->exist[i])
+			device_link_add(mtk_crtc->base.dev->dev,
+					priv->all_drm_private[i]->mutex_dev, 0);
+
 	return 0;
 }
diff --git a/drivers/gpu/drm/mediatek/mtk_crtc.h b/drivers/gpu/drm/mediatek/mtk_crtc.h
index 388e900b6f4d..255f2823d17a 100644
--- a/drivers/gpu/drm/mediatek/mtk_crtc.h
+++ b/drivers/gpu/drm/mediatek/mtk_crtc.h
@@ -15,10 +15,8 @@
 #define MTK_MIN_BPC	3
 
 void mtk_crtc_commit(struct drm_crtc *crtc);
-int mtk_crtc_create(struct drm_device *drm_dev, const unsigned int *path,
-		    unsigned int path_len, int priv_data_index,
-		    const struct mtk_drm_route *conn_routes,
-		    unsigned int num_conn_routes);
+int mtk_crtc_create(struct drm_device *drm_dev,
+		    enum mtk_crtc_path path_sel);
 int mtk_crtc_plane_check(struct drm_crtc *crtc, struct drm_plane *plane,
 			 struct mtk_plane_state *state);
 void mtk_crtc_async_update(struct drm_crtc *crtc, struct drm_plane *plane,
diff --git a/drivers/gpu/drm/mediatek/mtk_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
index c96e027359ac..6628f5cd732a 100644
--- a/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
@@ -467,6 +467,7 @@ static const char * const mtk_ddp_comp_stem[MTK_DDP_COMP_TYPE_MAX] = {
 	[MTK_DISP_PWM] = "pwm",
 	[MTK_DISP_RDMA] = "rdma",
 	[MTK_DISP_UFOE] = "ufoe",
+	[MTK_DISP_VIRTUAL] = "virtual",
 	[MTK_DISP_WDMA] = "wdma",
 	[MTK_DP_INTF] = "dp-intf",
 	[MTK_DPI] = "dpi",
@@ -490,6 +491,15 @@ static const struct mtk_ddp_comp_match mtk_ddp_matches[DDP_COMPONENT_DRM_ID_MAX]
 	[DDP_COMPONENT_COLOR0]		= { MTK_DISP_COLOR,		0, &ddp_color },
 	[DDP_COMPONENT_COLOR1]		= { MTK_DISP_COLOR,		1, &ddp_color },
 	[DDP_COMPONENT_DITHER0]		= { MTK_DISP_DITHER,		0, &ddp_dither },
+	[DDP_COMPONENT_DLI_ASYNC0]      = { MTK_DISP_VIRTUAL,           -1, NULL },
+	[DDP_COMPONENT_DLI_ASYNC1]      = { MTK_DISP_VIRTUAL,           -1, NULL },
+	[DDP_COMPONENT_DLI_ASYNC8]      = { MTK_DISP_VIRTUAL,           -1, NULL },
+	[DDP_COMPONENT_DLI_ASYNC21]     = { MTK_DISP_VIRTUAL,           -1, NULL },
+	[DDP_COMPONENT_DLI_ASYNC22]     = { MTK_DISP_VIRTUAL,           -1, NULL },
+	[DDP_COMPONENT_DLI_ASYNC23]     = { MTK_DISP_VIRTUAL,           -1, NULL },
+	[DDP_COMPONENT_DLO_ASYNC1]      = { MTK_DISP_VIRTUAL,           -1, NULL },
+	[DDP_COMPONENT_DLO_ASYNC2]      = { MTK_DISP_VIRTUAL,           -1, NULL },
+	[DDP_COMPONENT_DLO_ASYNC3]      = { MTK_DISP_VIRTUAL,           -1, NULL },
 	[DDP_COMPONENT_DP_INTF0]	= { MTK_DP_INTF,		0, &ddp_dpi },
 	[DDP_COMPONENT_DP_INTF1]	= { MTK_DP_INTF,		1, &ddp_dpi },
 	[DDP_COMPONENT_DPI0]		= { MTK_DPI,			0, &ddp_dpi },
@@ -497,6 +507,7 @@ static const struct mtk_ddp_comp_match mtk_ddp_matches[DDP_COMPONENT_DRM_ID_MAX]
 	[DDP_COMPONENT_DRM_OVL_ADAPTOR]	= { MTK_DISP_OVL_ADAPTOR,	0, &ddp_ovl_adaptor },
 	[DDP_COMPONENT_DRM_OVLSYS_ADAPTOR0] = { MTK_DISP_OVLSYS_ADAPTOR, 0, &ddp_ovlsys_adaptor},
 	[DDP_COMPONENT_DRM_OVLSYS_ADAPTOR1] = { MTK_DISP_OVLSYS_ADAPTOR, 1, &ddp_ovlsys_adaptor},
+	[DDP_COMPONENT_DRM_OVLSYS_ADAPTOR2] = { MTK_DISP_OVLSYS_ADAPTOR, 2, &ddp_ovlsys_adaptor},
 	[DDP_COMPONENT_DSC0]		= { MTK_DISP_DSC,		0, &ddp_dsc },
 	[DDP_COMPONENT_DSC1]		= { MTK_DISP_DSC,		1, &ddp_dsc },
 	[DDP_COMPONENT_DSI0]		= { MTK_DSI,			0, &ddp_dsi },
@@ -513,7 +524,10 @@ static const struct mtk_ddp_comp_match mtk_ddp_matches[DDP_COMPONENT_DRM_ID_MAX]
 	[DDP_COMPONENT_OD0]		= { MTK_DISP_OD,		0, &ddp_od },
 	[DDP_COMPONENT_OD1]		= { MTK_DISP_OD,		1, &ddp_od },
 	[DDP_COMPONENT_OVL0]		= { MTK_DISP_OVL,		0, &ddp_ovl },
+	[DDP_COMPONENT_OVL0_DLO_ASYNC5] = { MTK_DISP_VIRTUAL,           -1, NULL },
+	[DDP_COMPONENT_OVL0_DLO_ASYNC6] = { MTK_DISP_VIRTUAL,           -1, NULL },
 	[DDP_COMPONENT_OVL1]		= { MTK_DISP_OVL,		1, &ddp_ovl },
+	[DDP_COMPONENT_OVL1_DLO_ASYNC5] = { MTK_DISP_VIRTUAL,           -1, NULL },
 	[DDP_COMPONENT_OVL_2L0]		= { MTK_DISP_OVL_2L,		0, &ddp_ovl },
 	[DDP_COMPONENT_OVL_2L1]		= { MTK_DISP_OVL_2L,		1, &ddp_ovl },
 	[DDP_COMPONENT_OVL_2L2]		= { MTK_DISP_OVL_2L,		2, &ddp_ovl },
@@ -564,27 +578,6 @@ static int mtk_ddp_comp_find_in_route(struct device *dev,
 	return -ENODEV;
 }
 
-static bool mtk_ddp_path_available(const unsigned int *path,
-				   unsigned int path_len,
-				   struct device_node **comp_node)
-{
-	unsigned int i;
-
-	if (!path || !path_len)
-		return false;
-
-	for (i = 0U; i < path_len; i++) {
-		/* OVL_ADAPTOR doesn't have a device node */
-		if (path[i] == DDP_COMPONENT_DRM_OVL_ADAPTOR)
-			continue;
-
-		if (!comp_node[path[i]])
-			return false;
-	}
-
-	return true;
-}
-
 int mtk_ddp_comp_get_id(struct device_node *node,
 			enum mtk_ddp_comp_type comp_type)
 {
@@ -600,53 +593,36 @@ int mtk_ddp_comp_get_id(struct device_node *node,
 	return -EINVAL;
 }
 
+enum mtk_ddp_comp_type mtk_ddp_comp_get_type(unsigned int comp_id)
+{
+	return mtk_ddp_matches[comp_id].type;
+}
+
 int mtk_find_possible_crtcs(struct drm_device *drm, struct device *dev)
 {
 	struct mtk_drm_private *private = drm->dev_private;
-	const struct mtk_mmsys_driver_data *data;
-	struct mtk_drm_private *priv_n;
-	int i = 0, j;
 	int ret;
 
-	for (j = 0; j < private->data->mmsys_dev_num; j++) {
-		priv_n = private->all_drm_private[j];
-		data = priv_n->data;
-
-		if (mtk_ddp_path_available(data->main_path, data->main_len,
-					   priv_n->comp_node)) {
-			if (mtk_ddp_comp_find(dev, data->main_path,
-					      data->main_len,
-					      priv_n->ddp_comp))
-				return BIT(i);
-			i++;
-		}
-
-		if (mtk_ddp_path_available(data->ext_path, data->ext_len,
-					   priv_n->comp_node)) {
-			if (mtk_ddp_comp_find(dev, data->ext_path,
-					      data->ext_len,
-					      priv_n->ddp_comp))
-				return BIT(i);
-			i++;
-		}
-
-		if (mtk_ddp_path_available(data->third_path, data->third_len,
-					   priv_n->comp_node)) {
-			if (mtk_ddp_comp_find(dev, data->third_path,
-					      data->third_len,
-					      priv_n->ddp_comp))
-				return BIT(i);
-			i++;
-		}
-	}
-
-	ret = mtk_ddp_comp_find_in_route(dev,
-					 private->data->conn_routes,
-					 private->data->num_conn_routes,
-					 private->ddp_comp);
-
-	if (ret < 0)
-		DRM_INFO("Failed to find comp in ddp table, ret = %d\n", ret);
+	if (mtk_ddp_comp_find(dev,
+			      private->data->main_path,
+			      private->data->main_len,
+			      private->ddp_comp))
+		ret = BIT(0);
+	else if (mtk_ddp_comp_find(dev,
+				   private->data->ext_path,
+				   private->data->ext_len,
+				   private->ddp_comp))
+		ret = BIT(1);
+	else if (mtk_ddp_comp_find(dev,
+				   private->data->third_path,
+				   private->data->third_len,
+				   private->ddp_comp))
+		ret = BIT(2);
+	else
+		ret = mtk_ddp_comp_find_in_route(dev,
+						 private->data->conn_routes,
+						 private->data->num_conn_routes,
+						 private->ddp_comp);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/mediatek/mtk_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_ddp_comp.h
index ef64ce7a071f..badb42bd4f7c 100644
--- a/drivers/gpu/drm/mediatek/mtk_ddp_comp.h
+++ b/drivers/gpu/drm/mediatek/mtk_ddp_comp.h
@@ -40,6 +40,7 @@ enum mtk_ddp_comp_type {
 	MTK_DISP_PWM,
 	MTK_DISP_RDMA,
 	MTK_DISP_UFOE,
+	MTK_DISP_VIRTUAL,
 	MTK_DISP_WDMA,
 	MTK_DPI,
 	MTK_DP_INTF,
@@ -47,6 +48,7 @@ enum mtk_ddp_comp_type {
 	MTK_OVL_BLENDER,
 	MTK_OVL_EXDMA,
 	MTK_OVL_OUTPROC,
+	MTK_VDISP_AO,
 	MTK_DDP_COMP_TYPE_MAX,
 };
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 0639201e2e92..b9c6a2a657ea 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -374,7 +374,7 @@ static int mtk_drm_match(struct device *dev, const void *data)
 static bool mtk_drm_get_all_drm_priv(struct device *dev)
 {
 	struct mtk_drm_private *drm_priv = dev_get_drvdata(dev);
-	struct mtk_drm_private *all_drm_priv[MAX_CRTC];
+	struct mtk_drm_private *all_drm_priv[MAX_MMSYS] = {NULL};
 	struct mtk_drm_private *temp_drm_priv;
 	struct device_node *phandle = dev->parent->of_node;
 	const struct of_device_id *of_id;
@@ -402,26 +402,22 @@ static bool mtk_drm_get_all_drm_priv(struct device *dev)
 		if (!temp_drm_priv)
 			continue;
 
-		if (temp_drm_priv->data->main_len)
-			all_drm_priv[CRTC_MAIN] = temp_drm_priv;
-		else if (temp_drm_priv->data->ext_len)
-			all_drm_priv[CRTC_EXT] = temp_drm_priv;
-		else if (temp_drm_priv->data->third_len)
-			all_drm_priv[CRTC_THIRD] = temp_drm_priv;
+		all_drm_priv[temp_drm_priv->data->mmsys_id] = temp_drm_priv;
 
 		if (temp_drm_priv->mtk_drm_bound)
 			cnt++;
 
-		if (cnt == MAX_CRTC) {
+		if (cnt == temp_drm_priv->data->mmsys_dev_num) {
 			of_node_put(node);
 			break;
 		}
 	}
 
 	if (drm_priv->data->mmsys_dev_num == cnt) {
-		for (i = 0; i < cnt; i++)
-			for (j = 0; j < cnt; j++)
-				all_drm_priv[j]->all_drm_private[i] = all_drm_priv[i];
+		for (i = 0; i < MAX_MMSYS; i++)
+			for (j = 0; j < MAX_MMSYS; j++)
+				if (all_drm_priv[j])
+					all_drm_priv[j]->all_drm_private[i] = all_drm_priv[i];
 
 		return true;
 	}
@@ -506,7 +502,10 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 	drm->mode_config.funcs = &mtk_drm_mode_config_funcs;
 	drm->mode_config.helper_private = &mtk_drm_mode_config_helpers;
 
-	for (i = 0; i < private->data->mmsys_dev_num; i++) {
+	for (i = 0; i < MAX_MMSYS; i++) {
+		if (!private->all_drm_private[i])
+			continue;
+
 		drm->dev_private = private->all_drm_private[i];
 		ret = component_bind_all(private->all_drm_private[i]->dev, drm);
 		if (ret)
@@ -529,8 +528,10 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 	 *    third path.
 	 */
 	for (i = 0; i < MAX_CRTC; i++) {
-		for (j = 0; j < private->data->mmsys_dev_num; j++) {
+		for (j = 0; j < MAX_MMSYS; j++) {
 			priv_n = private->all_drm_private[j];
+			if (!priv_n)
+				continue;
 
 			if (priv_n->data->max_width)
 				drm->mode_config.max_width = priv_n->data->max_width;
@@ -542,28 +543,23 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 				drm->mode_config.min_height = priv_n->data->min_height;
 
 			if (i == CRTC_MAIN && priv_n->data->main_len) {
-				ret = mtk_crtc_create(drm, priv_n->data->main_path,
-						      priv_n->data->main_len, j,
-						      priv_n->data->conn_routes,
-						      priv_n->data->num_conn_routes);
+				ret = mtk_crtc_create(drm, CRTC_MAIN);
 				if (ret)
 					goto err_component_unbind;
 
-				continue;
+				break;
 			} else if (i == CRTC_EXT && priv_n->data->ext_len) {
-				ret = mtk_crtc_create(drm, priv_n->data->ext_path,
-						      priv_n->data->ext_len, j, NULL, 0);
+				ret = mtk_crtc_create(drm, CRTC_EXT);
 				if (ret)
 					goto err_component_unbind;
 
-				continue;
+				break;
 			} else if (i == CRTC_THIRD && priv_n->data->third_len) {
-				ret = mtk_crtc_create(drm, priv_n->data->third_path,
-						      priv_n->data->third_len, j, NULL, 0);
+				ret = mtk_crtc_create(drm, CRTC_THIRD);
 				if (ret)
 					goto err_component_unbind;
 
-				continue;
+				break;
 			}
 		}
 	}
@@ -582,8 +578,9 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 		goto err_component_unbind;
 	}
 
-	for (i = 0; i < private->data->mmsys_dev_num; i++)
-		private->all_drm_private[i]->dma_dev = dma_dev;
+	for (i = 0; i < MAX_MMSYS; i++)
+		if (private->all_drm_private[i])
+			private->all_drm_private[i]->dma_dev = dma_dev;
 
 	/*
 	 * Configure the DMA segment size to make sure we get contiguous IOVA
@@ -601,11 +598,13 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 	return 0;
 
 err_component_unbind:
-	for (i = 0; i < private->data->mmsys_dev_num; i++)
-		component_unbind_all(private->all_drm_private[i]->dev, drm);
+	for (i = 0; i < MAX_MMSYS; i++)
+		if (private->all_drm_private[i])
+			component_unbind_all(private->all_drm_private[i]->dev, drm);
 put_mutex_dev:
-	for (i = 0; i < private->data->mmsys_dev_num; i++)
-		put_device(private->all_drm_private[i]->mutex_dev);
+	for (i = 0; i < MAX_MMSYS; i++)
+		if (private->all_drm_private[i])
+			put_device(private->all_drm_private[i]->mutex_dev);
 
 	return ret;
 }
@@ -669,6 +668,19 @@ static int mtk_drm_bind(struct device *dev)
 	}
 
 	private->mutex_dev = &pdev->dev;
+
+	if (private->vdisp_ao_node) {
+		pdev = of_find_device_by_node(private->vdisp_ao_node);
+		if (!pdev) {
+			dev_err(dev, "Waiting for vdisp_ao device %pOF\n",
+				private->vdisp_ao_node);
+			of_node_put(private->mutex_node);
+			of_node_put(private->vdisp_ao_node);
+			return -EPROBE_DEFER;
+		}
+		private->vdisp_ao_dev = &pdev->dev;
+	}
+
 	private->mtk_drm_bound = true;
 	private->dev = dev;
 
@@ -681,8 +693,9 @@ static int mtk_drm_bind(struct device *dev)
 
 	private->drm_master = true;
 	drm->dev_private = private;
-	for (i = 0; i < private->data->mmsys_dev_num; i++)
-		private->all_drm_private[i]->drm = drm;
+	for (i = 0; i < MAX_MMSYS; i++)
+		if (private->all_drm_private[i])
+			private->all_drm_private[i]->drm = drm;
 
 	ret = mtk_drm_kms_init(drm);
 	if (ret < 0)
@@ -1125,7 +1138,7 @@ static int mtk_drm_probe(struct platform_device *pdev)
 		private->data = mtk_drm_data;
 	}
 
-	private->all_drm_private = devm_kmalloc_array(dev, private->data->mmsys_dev_num,
+	private->all_drm_private = devm_kmalloc_array(dev, MAX_MMSYS,
 						      sizeof(*private->all_drm_private),
 						      GFP_KERNEL);
 	if (!private->all_drm_private)
@@ -1220,6 +1233,12 @@ static int mtk_drm_probe(struct platform_device *pdev)
 			continue;
 		}
 
+		if (comp_type == MTK_VDISP_AO) {
+			private->vdisp_ao_node = of_node_get(node);
+			dev_dbg(dev, "get vdisp_ao node");
+			continue;
+		}
+
 		comp_id = mtk_ddp_comp_get_id(node, comp_type);
 		if (comp_id < 0) {
 			dev_warn(dev, "Skipping unknown component %pOF\n",
@@ -1295,6 +1314,7 @@ static void mtk_drm_remove(struct platform_device *pdev)
 	component_master_del(&pdev->dev, &mtk_drm_ops);
 	pm_runtime_disable(&pdev->dev);
 	of_node_put(private->mutex_node);
+	of_node_put(private->vdisp_ao_node);
 	for (i = 0; i < DDP_COMPONENT_DRM_ID_MAX; i++)
 		of_node_put(private->comp_node[i]);
 }
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
index 6e9ed9837c5b..6a6d689345b1 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
@@ -13,7 +13,8 @@
 #define DDP_COMPONENT_DRM_OVL_ADAPTOR (DDP_COMPONENT_ID_MAX + 1)
 #define DDP_COMPONENT_DRM_OVLSYS_ADAPTOR0 (DDP_COMPONENT_DRM_OVL_ADAPTOR + 1)
 #define DDP_COMPONENT_DRM_OVLSYS_ADAPTOR1 (DDP_COMPONENT_DRM_OVLSYS_ADAPTOR0 + 1)
-#define DDP_COMPONENT_DRM_ID_MAX (DDP_COMPONENT_DRM_OVLSYS_ADAPTOR1 + 1)
+#define DDP_COMPONENT_DRM_OVLSYS_ADAPTOR2 (DDP_COMPONENT_DRM_OVLSYS_ADAPTOR1 + 1)
+#define DDP_COMPONENT_DRM_ID_MAX (DDP_COMPONENT_DRM_OVLSYS_ADAPTOR2 + 1)
 
 enum mtk_crtc_path {
 	CRTC_MAIN,
@@ -22,6 +23,14 @@ enum mtk_crtc_path {
 	MAX_CRTC,
 };
 
+enum mtk_drm_mmsys {
+	DISPSYS0,
+	DISPSYS1,
+	OVLSYS0,
+	OVLSYS1,
+	MAX_MMSYS,
+};
+
 struct device;
 struct device_node;
 struct drm_crtc;
@@ -38,10 +47,13 @@ struct mtk_drm_route {
 struct mtk_mmsys_driver_data {
 	const unsigned int *main_path;
 	unsigned int main_len;
+	unsigned int main_order;
 	const unsigned int *ext_path;
 	unsigned int ext_len;
+	unsigned int ext_order;
 	const unsigned int *third_path;
 	unsigned int third_len;
+	unsigned int third_order;
 	const struct mtk_drm_route *conn_routes;
 	unsigned int num_conn_routes;
 
@@ -63,6 +75,8 @@ struct mtk_drm_private {
 	struct device_node *mutex_node;
 	struct device *mutex_dev;
 	struct device *mmsys_dev;
+	struct device_node *vdisp_ao_node;
+	struct device *vdisp_ao_dev;
 	struct device_node *comp_node[DDP_COMPONENT_DRM_ID_MAX];
 	struct mtk_ddp_comp ddp_comp[DDP_COMPONENT_DRM_ID_MAX];
 	struct mtk_mmsys_driver_data *data;
-- 
2.45.2


