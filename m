Return-Path: <devicetree+bounces-137440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B22B3A090B0
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:40:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BBE4188D4A6
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 12:40:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70AE621019E;
	Fri, 10 Jan 2025 12:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="TIU4md/l"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6803B20E321;
	Fri, 10 Jan 2025 12:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.61.82.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736512740; cv=none; b=R2MkYL9VFkubUgW0cgIM6GhkeNfzFy8a0ZQxhi9BP5DyKwZdbmfW+YTkyvmPUaCWvYTw7vbTFLJ1fWaeBUEayu5XlyanUq56wurxlppyP20BM9gqyzSDlT28LaSqfhCw7qcP/Vx6VxTCikYfT0nScjd9pXl7yVwd0GOx+vAJirk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736512740; c=relaxed/simple;
	bh=lPr4w8wB9KtZnViZR8aEFd2mDzByh/YY5ZC+1BRiYII=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PIzoLuQJqEp+oJ9Cpe1IYcqQuqY9iO2ygZCDHI9yGrkwU/KJKc+RL8MNqjT2bv6J0V5/9D/zIug8GIDu2KipAPgJ9LS9ymCXj8gwpv2H6SDXafdK98gF1W1QuGsVz5L/4Zd1EvBWgsi0wiEe6+A8Wc8yfKahP+Ei9GOnBzGA4/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=TIU4md/l; arc=none smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: d6e3e14ecf4f11efbd192953cf12861f-20250110
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=Ev9J2rfUxtBe7qH5KCr7cpqQXHKhwz9+PF5dl7a/LLo=;
	b=TIU4md/lNEzBgOVWs7mTmK/a+t2ITZ0en9YNklS4sGiM+Z90aCOadQ/TgSKBIfw0fnU8i2yMDsq7dyT3gTsQmN+dfsvYFp45GjJTKZm4gii/TcS3j87by42EM+O5J6RX61gIlTDOUDBsgsIPCa2TT5JAqSHYwJDsu96E9lYmQxU=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:c3377594-5b7e-4ebc-81e3-9902f57434a2,IP:0,U
	RL:0,TC:0,Content:0,EDM:-25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:-25
X-CID-META: VersionHash:60aa074,CLOUDID:1b3cb20e-078a-483b-8929-714244d25c49,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102,TC:nil,Content:0|50,EDM:1,
	IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:
	0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: d6e3e14ecf4f11efbd192953cf12861f-20250110
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw02.mediatek.com
	(envelope-from <paul-pl.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 190793278; Fri, 10 Jan 2025 20:38:48 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 MTKMBS09N2.mediatek.inc (172.21.101.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 10 Jan 2025 20:38:47 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 10 Jan 2025 20:38:47 +0800
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
Subject: [PATCH 11/12] drm/mediatek: add ovlsys_adaptor support for MT8196
Date: Fri, 10 Jan 2025 20:34:07 +0800
Message-ID: <20250110123835.2719824-13-paul-pl.chen@mediatek.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250110123835.2719824-1-paul-pl.chen@mediatek.com>
References: <20250110123835.2719824-1-paul-pl.chen@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: "Nancy.Lin" <nancy.lin@mediatek.com>

Ovlsys_adaptor is an encapsulated module designed to
simplify the DRM control flow. This module is composed
of 20 EXDMAs, 20 BLENDERs, and 12 OUTPROCs.
Two EXDMAs merge into one layer, allowing the module
to support 20 layers for 3 display paths.
Ovlsys_adaptor driver is integrated within the
mtk_ddp_comp framework.

Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
Signed-off-by: Paul-pl.Chen <paul-pl.chen@mediatek.com>
---
 drivers/gpu/drm/mediatek/Makefile             |   1 +
 drivers/gpu/drm/mediatek/mtk_ddp_comp.c       |  25 +
 drivers/gpu/drm/mediatek/mtk_ddp_comp.h       |   1 +
 drivers/gpu/drm/mediatek/mtk_disp_drv.h       |  31 +-
 .../drm/mediatek/mtk_disp_ovlsys_adaptor.c    | 758 ++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        |  61 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.h        |  11 +-
 7 files changed, 884 insertions(+), 4 deletions(-)
 create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_ovlsys_adaptor.c

diff --git a/drivers/gpu/drm/mediatek/Makefile b/drivers/gpu/drm/mediatek/Makefile
index 9546bc6b7b2e..dedf50860d3f 100644
--- a/drivers/gpu/drm/mediatek/Makefile
+++ b/drivers/gpu/drm/mediatek/Makefile
@@ -9,6 +9,7 @@ mediatek-drm-y := mtk_crtc.o \
 		  mtk_disp_exdma.o \
 		  mtk_disp_gamma.o \
 		  mtk_disp_merge.o \
+		  mtk_disp_ovlsys_adaptor.o \
 		  mtk_disp_ovl.o \
 		  mtk_disp_outproc.o \
 		  mtk_disp_ovl_adaptor.o \
diff --git a/drivers/gpu/drm/mediatek/mtk_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
index cc780744f060..492b8d965309 100644
--- a/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
@@ -368,6 +368,28 @@ static const struct mtk_ddp_comp_funcs ddp_ovl = {
 	.get_num_formats = mtk_ovl_get_num_formats,
 };
 
+static const struct mtk_ddp_comp_funcs ddp_ovlsys_adaptor = {
+	.clk_enable = mtk_ovlsys_adaptor_clk_enable,
+	.clk_disable = mtk_ovlsys_adaptor_clk_disable,
+	.config = mtk_ovlsys_adaptor_config,
+	.start = mtk_ovlsys_adaptor_start,
+	.stop = mtk_ovlsys_adaptor_stop,
+	.layer_check = mtk_ovlsys_adaptor_layer_check,
+	.layer_nr = mtk_ovlsys_adaptor_layer_nr,
+	.layer_config = mtk_ovlsys_adaptor_layer_config,
+	.register_vblank_cb = mtk_ovlsys_adaptor_register_vblank_cb,
+	.unregister_vblank_cb = mtk_ovlsys_adaptor_unregister_vblank_cb,
+	.enable_vblank = mtk_ovlsys_adaptor_enable_vblank,
+	.disable_vblank = mtk_ovlsys_adaptor_disable_vblank,
+	.dma_dev_get = mtk_ovlsys_adaptor_dma_dev_get,
+	.connect = mtk_ovlsys_adaptor_connect,
+	.disconnect = mtk_ovlsys_adaptor_disconnect,
+	.add = mtk_ovlsys_adaptor_add_comp,
+	.remove = mtk_ovlsys_adaptor_remove_comp,
+	.get_formats = mtk_ovlsys_adaptor_get_formats,
+	.get_num_formats = mtk_ovlsys_adaptor_get_num_formats,
+};
+
 static const struct mtk_ddp_comp_funcs ddp_postmask = {
 	.clk_enable = mtk_ddp_clk_enable,
 	.clk_disable = mtk_ddp_clk_disable,
@@ -437,6 +459,7 @@ static const char * const mtk_ddp_comp_stem[MTK_DDP_COMP_TYPE_MAX] = {
 	[MTK_DISP_OVL] = "ovl",
 	[MTK_DISP_OVL_2L] = "ovl-2l",
 	[MTK_DISP_OVL_ADAPTOR] = "ovl_adaptor",
+	[MTK_DISP_OVLSYS_ADAPTOR] = "ovlsys_adaptor",
 	[MTK_DISP_POSTMASK] = "postmask",
 	[MTK_DISP_PWM] = "pwm",
 	[MTK_DISP_RDMA] = "rdma",
@@ -469,6 +492,8 @@ static const struct mtk_ddp_comp_match mtk_ddp_matches[DDP_COMPONENT_DRM_ID_MAX]
 	[DDP_COMPONENT_DPI0]		= { MTK_DPI,			0, &ddp_dpi },
 	[DDP_COMPONENT_DPI1]		= { MTK_DPI,			1, &ddp_dpi },
 	[DDP_COMPONENT_DRM_OVL_ADAPTOR]	= { MTK_DISP_OVL_ADAPTOR,	0, &ddp_ovl_adaptor },
+	[DDP_COMPONENT_DRM_OVLSYS_ADAPTOR0] = { MTK_DISP_OVLSYS_ADAPTOR, 0, &ddp_ovlsys_adaptor},
+	[DDP_COMPONENT_DRM_OVLSYS_ADAPTOR1] = { MTK_DISP_OVLSYS_ADAPTOR, 1, &ddp_ovlsys_adaptor},
 	[DDP_COMPONENT_DSC0]		= { MTK_DISP_DSC,		0, &ddp_dsc },
 	[DDP_COMPONENT_DSC1]		= { MTK_DISP_DSC,		1, &ddp_dsc },
 	[DDP_COMPONENT_DSI0]		= { MTK_DSI,			0, &ddp_dsi },
diff --git a/drivers/gpu/drm/mediatek/mtk_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_ddp_comp.h
index b33d3289b8b6..ef64ce7a071f 100644
--- a/drivers/gpu/drm/mediatek/mtk_ddp_comp.h
+++ b/drivers/gpu/drm/mediatek/mtk_ddp_comp.h
@@ -33,6 +33,7 @@ enum mtk_ddp_comp_type {
 	MTK_DISP_MUTEX,
 	MTK_DISP_OD,
 	MTK_DISP_OVL,
+	MTK_DISP_OVLSYS_ADAPTOR,
 	MTK_DISP_OVL_2L,
 	MTK_DISP_OVL_ADAPTOR,
 	MTK_DISP_POSTMASK,
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_drv.h b/drivers/gpu/drm/mediatek/mtk_disp_drv.h
index 44d2cbe919dc..67f6da59d0de 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_disp_drv.h
@@ -140,8 +140,8 @@ void mtk_ovl_enable_vblank(struct device *dev);
 void mtk_ovl_disable_vblank(struct device *dev);
 u32 mtk_ovl_get_blend_modes(struct device *dev);
 const u32 *mtk_ovl_get_formats(struct device *dev);
-size_t mtk_ovl_get_num_formats(struct device *dev);
 
+size_t mtk_ovl_get_num_formats(struct device *dev);
 void mtk_ovl_adaptor_add_comp(struct device *dev, struct mtk_mutex *mutex);
 void mtk_ovl_adaptor_remove_comp(struct device *dev, struct mtk_mutex *mutex);
 bool mtk_ovl_adaptor_is_comp_present(struct device_node *node);
@@ -174,6 +174,35 @@ size_t mtk_ovl_adaptor_get_num_formats(struct device *dev);
 enum drm_mode_status mtk_ovl_adaptor_mode_valid(struct device *dev,
 						const struct drm_display_mode *mode);
 
+void mtk_ovlsys_adaptor_add_comp(struct device *dev, struct mtk_mutex *mutex);
+void mtk_ovlsys_adaptor_remove_comp(struct device *dev, struct mtk_mutex *mutex);
+void mtk_ovlsys_adaptor_connect(struct device *dev, struct device *mmsys_dev,
+				unsigned int next);
+void mtk_ovlsys_adaptor_disconnect(struct device *dev, struct device *mmsys_dev,
+				   unsigned int next);
+int mtk_ovlsys_adaptor_clk_enable(struct device *dev);
+void mtk_ovlsys_adaptor_clk_disable(struct device *dev);
+void mtk_ovlsys_adaptor_config(struct device *dev, unsigned int w,
+			       unsigned int h, unsigned int vrefresh,
+			       unsigned int bpc, struct cmdq_pkt *cmdq_pkt);
+void mtk_ovlsys_adaptor_layer_config(struct device *dev, unsigned int idx,
+				     struct mtk_plane_state *state,
+				     struct cmdq_pkt *cmdq_pkt);
+int mtk_ovlsys_adaptor_layer_check(struct device *dev,
+				   unsigned int idx,
+				   struct mtk_plane_state *mtk_state);
+void mtk_ovlsys_adaptor_register_vblank_cb(struct device *dev, void (*vblank_cb)(void *),
+					   void *vblank_cb_data);
+void mtk_ovlsys_adaptor_unregister_vblank_cb(struct device *dev);
+void mtk_ovlsys_adaptor_enable_vblank(struct device *dev);
+void mtk_ovlsys_adaptor_disable_vblank(struct device *dev);
+void mtk_ovlsys_adaptor_start(struct device *dev);
+void mtk_ovlsys_adaptor_stop(struct device *dev);
+unsigned int mtk_ovlsys_adaptor_layer_nr(struct device *dev);
+struct device *mtk_ovlsys_adaptor_dma_dev_get(struct device *dev);
+const u32 *mtk_ovlsys_adaptor_get_formats(struct device *dev);
+size_t mtk_ovlsys_adaptor_get_num_formats(struct device *dev);
+
 void mtk_rdma_bypass_shadow(struct device *dev);
 int mtk_rdma_clk_enable(struct device *dev);
 void mtk_rdma_clk_disable(struct device *dev);
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovlsys_adaptor.c b/drivers/gpu/drm/mediatek/mtk_disp_ovlsys_adaptor.c
new file mode 100644
index 000000000000..7bce2b7143cb
--- /dev/null
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovlsys_adaptor.c
@@ -0,0 +1,758 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2021 MediaTek Inc.
+ */
+
+#include <drm/drm_fourcc.h>
+#include <drm/drm_of.h>
+#include <linux/clk.h>
+#include <linux/component.h>
+#include <linux/of_platform.h>
+#include <linux/of_device.h>
+#include <linux/of_address.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/reset.h>
+#include <linux/soc/mediatek/mtk-cmdq.h>
+#include <linux/soc/mediatek/mtk-mmsys.h>
+#include <linux/soc/mediatek/mtk-mutex.h>
+
+#include "mtk_disp_blender.h"
+#include "mtk_disp_drv.h"
+#include "mtk_crtc.h"
+#include "mtk_ddp_comp.h"
+#include "mtk_drm_drv.h"
+
+enum mtk_ovlsys_adaptor_comp_type {
+	OVLSYS_ADAPTOR_TYPE_EXDMA = 0,
+	OVLSYS_ADAPTOR_TYPE_BLENDER,
+	OVLSYS_ADAPTOR_TYPE_OUTPROC,
+	OVLSYS_ADAPTOR_TYPE_NUM,
+};
+
+enum mtk_ovlsys_adaptor_comp_id {
+	OVLSYS_ADAPTOR_EXDMA0,
+	OVLSYS_ADAPTOR_EXDMA1,
+	OVLSYS_ADAPTOR_EXDMA2,
+	OVLSYS_ADAPTOR_EXDMA3,
+	OVLSYS_ADAPTOR_EXDMA4,
+	OVLSYS_ADAPTOR_EXDMA5,
+	OVLSYS_ADAPTOR_EXDMA6,
+	OVLSYS_ADAPTOR_EXDMA7,
+	OVLSYS_ADAPTOR_EXDMA8,
+	OVLSYS_ADAPTOR_EXDMA9,
+	OVLSYS_ADAPTOR_EXDMA10,
+	OVLSYS_ADAPTOR_EXDMA11,
+	OVLSYS_ADAPTOR_EXDMA12,
+	OVLSYS_ADAPTOR_EXDMA13,
+	OVLSYS_ADAPTOR_EXDMA14,
+	OVLSYS_ADAPTOR_EXDMA15,
+	OVLSYS_ADAPTOR_EXDMA16,
+	OVLSYS_ADAPTOR_EXDMA17,
+	OVLSYS_ADAPTOR_EXDMA18,
+	OVLSYS_ADAPTOR_EXDMA19,
+	OVLSYS_ADAPTOR_BLENDER0,
+	OVLSYS_ADAPTOR_BLENDER1,
+	OVLSYS_ADAPTOR_BLENDER2,
+	OVLSYS_ADAPTOR_BLENDER3,
+	OVLSYS_ADAPTOR_BLENDER4,
+	OVLSYS_ADAPTOR_BLENDER5,
+	OVLSYS_ADAPTOR_BLENDER6,
+	OVLSYS_ADAPTOR_BLENDER7,
+	OVLSYS_ADAPTOR_BLENDER8,
+	OVLSYS_ADAPTOR_BLENDER9,
+	OVLSYS_ADAPTOR_BLENDER10,
+	OVLSYS_ADAPTOR_BLENDER11,
+	OVLSYS_ADAPTOR_BLENDER12,
+	OVLSYS_ADAPTOR_BLENDER13,
+	OVLSYS_ADAPTOR_BLENDER14,
+	OVLSYS_ADAPTOR_BLENDER15,
+	OVLSYS_ADAPTOR_BLENDER16,
+	OVLSYS_ADAPTOR_BLENDER17,
+	OVLSYS_ADAPTOR_BLENDER18,
+	OVLSYS_ADAPTOR_BLENDER19,
+	OVLSYS_ADAPTOR_OUTPROC0,
+	OVLSYS_ADAPTOR_OUTPROC1,
+	OVLSYS_ADAPTOR_OUTPROC2,
+	OVLSYS_ADAPTOR_OUTPROC3,
+	OVLSYS_ADAPTOR_OUTPROC4,
+	OVLSYS_ADAPTOR_OUTPROC5,
+	OVLSYS_ADAPTOR_OUTPROC6,
+	OVLSYS_ADAPTOR_OUTPROC7,
+	OVLSYS_ADAPTOR_OUTPROC8,
+	OVLSYS_ADAPTOR_OUTPROC9,
+	OVLSYS_ADAPTOR_OUTPROC10,
+	OVLSYS_ADAPTOR_OUTPROC11,
+	OVLSYS_ADAPTOR_ID_MAX
+};
+
+struct ovlsys_adaptor_comp_match {
+	enum mtk_ovlsys_adaptor_comp_type type;
+	int alias_id;
+	enum mtk_ddp_comp_id comp_id;
+};
+
+struct mtk_disp_ovlsys_adaptor {
+	struct device *ovl_adaptor_comp[OVLSYS_ADAPTOR_ID_MAX];
+	struct device *mmsys_dev;
+	const unsigned int *path;
+	unsigned int path_size;
+	unsigned int layer_nr;
+	bool children_bound;
+	unsigned int max_size;
+};
+
+static const char * const private_comp_stem[OVLSYS_ADAPTOR_TYPE_NUM] = {
+	[OVLSYS_ADAPTOR_TYPE_EXDMA]	= "exdma",
+	[OVLSYS_ADAPTOR_TYPE_BLENDER]	= "blender",
+	[OVLSYS_ADAPTOR_TYPE_OUTPROC]	= "outproc",
+};
+
+static const struct ovlsys_adaptor_comp_match comp_matches[OVLSYS_ADAPTOR_ID_MAX] = {
+	[OVLSYS_ADAPTOR_EXDMA0]   = { OVLSYS_ADAPTOR_TYPE_EXDMA, 0, DDP_COMPONENT_ID_MAX},
+	[OVLSYS_ADAPTOR_EXDMA1]	  = { OVLSYS_ADAPTOR_TYPE_EXDMA, 1, DDP_COMPONENT_ID_MAX},
+	[OVLSYS_ADAPTOR_EXDMA2]	  = { OVLSYS_ADAPTOR_TYPE_EXDMA, 2, DDP_COMPONENT_OVL0_EXDMA2},
+	[OVLSYS_ADAPTOR_EXDMA3]	  = { OVLSYS_ADAPTOR_TYPE_EXDMA, 3, DDP_COMPONENT_OVL0_EXDMA3},
+	[OVLSYS_ADAPTOR_EXDMA4]	  = { OVLSYS_ADAPTOR_TYPE_EXDMA, 4, DDP_COMPONENT_OVL0_EXDMA4},
+	[OVLSYS_ADAPTOR_EXDMA5]	  = { OVLSYS_ADAPTOR_TYPE_EXDMA, 5, DDP_COMPONENT_OVL0_EXDMA5},
+	[OVLSYS_ADAPTOR_EXDMA6]	  = { OVLSYS_ADAPTOR_TYPE_EXDMA, 6, DDP_COMPONENT_OVL0_EXDMA6},
+	[OVLSYS_ADAPTOR_EXDMA7]	  = { OVLSYS_ADAPTOR_TYPE_EXDMA, 7, DDP_COMPONENT_OVL0_EXDMA7},
+	[OVLSYS_ADAPTOR_EXDMA8]	  = { OVLSYS_ADAPTOR_TYPE_EXDMA, 8, DDP_COMPONENT_OVL0_EXDMA8},
+	[OVLSYS_ADAPTOR_EXDMA9]	  = { OVLSYS_ADAPTOR_TYPE_EXDMA, 9, DDP_COMPONENT_OVL0_EXDMA9},
+	[OVLSYS_ADAPTOR_EXDMA10]   = { OVLSYS_ADAPTOR_TYPE_EXDMA, 10, DDP_COMPONENT_ID_MAX},
+	[OVLSYS_ADAPTOR_EXDMA11]   = { OVLSYS_ADAPTOR_TYPE_EXDMA, 11, DDP_COMPONENT_ID_MAX},
+	[OVLSYS_ADAPTOR_EXDMA12]   = { OVLSYS_ADAPTOR_TYPE_EXDMA, 12, DDP_COMPONENT_OVL1_EXDMA2},
+	[OVLSYS_ADAPTOR_EXDMA13]   = { OVLSYS_ADAPTOR_TYPE_EXDMA, 13, DDP_COMPONENT_OVL1_EXDMA3},
+	[OVLSYS_ADAPTOR_EXDMA14]   = { OVLSYS_ADAPTOR_TYPE_EXDMA, 14, DDP_COMPONENT_OVL1_EXDMA4},
+	[OVLSYS_ADAPTOR_EXDMA15]   = { OVLSYS_ADAPTOR_TYPE_EXDMA, 15, DDP_COMPONENT_OVL1_EXDMA5},
+	[OVLSYS_ADAPTOR_EXDMA16]   = { OVLSYS_ADAPTOR_TYPE_EXDMA, 16, DDP_COMPONENT_OVL1_EXDMA6},
+	[OVLSYS_ADAPTOR_EXDMA17]   = { OVLSYS_ADAPTOR_TYPE_EXDMA, 17, DDP_COMPONENT_OVL1_EXDMA7},
+	[OVLSYS_ADAPTOR_EXDMA18]   = { OVLSYS_ADAPTOR_TYPE_EXDMA, 18, DDP_COMPONENT_OVL1_EXDMA8},
+	[OVLSYS_ADAPTOR_EXDMA19]   = { OVLSYS_ADAPTOR_TYPE_EXDMA, 19, DDP_COMPONENT_OVL1_EXDMA9},
+	[OVLSYS_ADAPTOR_BLENDER0] = { OVLSYS_ADAPTOR_TYPE_BLENDER, 0, DDP_COMPONENT_ID_MAX},
+	[OVLSYS_ADAPTOR_BLENDER1] = { OVLSYS_ADAPTOR_TYPE_BLENDER, 1, DDP_COMPONENT_OVL0_BLENDER1},
+	[OVLSYS_ADAPTOR_BLENDER2] = { OVLSYS_ADAPTOR_TYPE_BLENDER, 2, DDP_COMPONENT_OVL0_BLENDER2},
+	[OVLSYS_ADAPTOR_BLENDER3] = { OVLSYS_ADAPTOR_TYPE_BLENDER, 3, DDP_COMPONENT_OVL0_BLENDER3},
+	[OVLSYS_ADAPTOR_BLENDER4] = { OVLSYS_ADAPTOR_TYPE_BLENDER, 4, DDP_COMPONENT_OVL0_BLENDER4},
+	[OVLSYS_ADAPTOR_BLENDER5] = { OVLSYS_ADAPTOR_TYPE_BLENDER, 5, DDP_COMPONENT_OVL0_BLENDER5},
+	[OVLSYS_ADAPTOR_BLENDER6] = { OVLSYS_ADAPTOR_TYPE_BLENDER, 6, DDP_COMPONENT_OVL0_BLENDER6},
+	[OVLSYS_ADAPTOR_BLENDER7] = { OVLSYS_ADAPTOR_TYPE_BLENDER, 7, DDP_COMPONENT_OVL0_BLENDER7},
+	[OVLSYS_ADAPTOR_BLENDER8] = { OVLSYS_ADAPTOR_TYPE_BLENDER, 8, DDP_COMPONENT_OVL0_BLENDER8},
+	[OVLSYS_ADAPTOR_BLENDER9] = { OVLSYS_ADAPTOR_TYPE_BLENDER, 9, DDP_COMPONENT_OVL0_BLENDER9},
+	[OVLSYS_ADAPTOR_BLENDER10] = { OVLSYS_ADAPTOR_TYPE_BLENDER, 10, DDP_COMPONENT_ID_MAX},
+	[OVLSYS_ADAPTOR_BLENDER11] = {
+		OVLSYS_ADAPTOR_TYPE_BLENDER, 11, DDP_COMPONENT_OVL1_BLENDER1},
+	[OVLSYS_ADAPTOR_BLENDER12] = {
+		OVLSYS_ADAPTOR_TYPE_BLENDER, 12, DDP_COMPONENT_OVL1_BLENDER2},
+	[OVLSYS_ADAPTOR_BLENDER13] = {
+		OVLSYS_ADAPTOR_TYPE_BLENDER, 13, DDP_COMPONENT_OVL1_BLENDER3},
+	[OVLSYS_ADAPTOR_BLENDER14] = {
+		OVLSYS_ADAPTOR_TYPE_BLENDER, 14, DDP_COMPONENT_OVL1_BLENDER4},
+	[OVLSYS_ADAPTOR_BLENDER15] = {
+		OVLSYS_ADAPTOR_TYPE_BLENDER, 15, DDP_COMPONENT_OVL1_BLENDER5},
+	[OVLSYS_ADAPTOR_BLENDER16] = {
+		OVLSYS_ADAPTOR_TYPE_BLENDER, 16, DDP_COMPONENT_OVL1_BLENDER6},
+	[OVLSYS_ADAPTOR_BLENDER17] = {
+		OVLSYS_ADAPTOR_TYPE_BLENDER, 17, DDP_COMPONENT_OVL1_BLENDER7},
+	[OVLSYS_ADAPTOR_BLENDER18] = {
+		OVLSYS_ADAPTOR_TYPE_BLENDER, 18, DDP_COMPONENT_OVL1_BLENDER8},
+	[OVLSYS_ADAPTOR_BLENDER19] = {
+		OVLSYS_ADAPTOR_TYPE_BLENDER, 19, DDP_COMPONENT_OVL1_BLENDER9},
+	[OVLSYS_ADAPTOR_OUTPROC0] = { OVLSYS_ADAPTOR_TYPE_OUTPROC, 0, DDP_COMPONENT_OVL0_OUTPROC0},
+	[OVLSYS_ADAPTOR_OUTPROC1] = { OVLSYS_ADAPTOR_TYPE_OUTPROC, 1, DDP_COMPONENT_OVL0_OUTPROC1},
+	[OVLSYS_ADAPTOR_OUTPROC2] = { OVLSYS_ADAPTOR_TYPE_OUTPROC, 2, DDP_COMPONENT_ID_MAX},
+	[OVLSYS_ADAPTOR_OUTPROC3] = { OVLSYS_ADAPTOR_TYPE_OUTPROC, 3, DDP_COMPONENT_ID_MAX},
+	[OVLSYS_ADAPTOR_OUTPROC4] = { OVLSYS_ADAPTOR_TYPE_OUTPROC, 4, DDP_COMPONENT_ID_MAX},
+	[OVLSYS_ADAPTOR_OUTPROC5] = { OVLSYS_ADAPTOR_TYPE_OUTPROC, 5, DDP_COMPONENT_ID_MAX},
+	[OVLSYS_ADAPTOR_OUTPROC6] = { OVLSYS_ADAPTOR_TYPE_OUTPROC, 6, DDP_COMPONENT_OVL1_OUTPROC0},
+	[OVLSYS_ADAPTOR_OUTPROC7] = { OVLSYS_ADAPTOR_TYPE_OUTPROC, 7, DDP_COMPONENT_ID_MAX},
+	[OVLSYS_ADAPTOR_OUTPROC8] = { OVLSYS_ADAPTOR_TYPE_OUTPROC, 8, DDP_COMPONENT_ID_MAX},
+	[OVLSYS_ADAPTOR_OUTPROC9] = { OVLSYS_ADAPTOR_TYPE_OUTPROC, 9, DDP_COMPONENT_ID_MAX},
+	[OVLSYS_ADAPTOR_OUTPROC10] = { OVLSYS_ADAPTOR_TYPE_OUTPROC, 10, DDP_COMPONENT_ID_MAX},
+	[OVLSYS_ADAPTOR_OUTPROC11] = { OVLSYS_ADAPTOR_TYPE_OUTPROC, 11, DDP_COMPONENT_ID_MAX},
+};
+
+static const unsigned int mt8196_mtk_ovl_main[] = {
+	OVLSYS_ADAPTOR_EXDMA2,
+	OVLSYS_ADAPTOR_BLENDER1,
+	OVLSYS_ADAPTOR_EXDMA3,
+	OVLSYS_ADAPTOR_BLENDER2,
+	OVLSYS_ADAPTOR_EXDMA4,
+	OVLSYS_ADAPTOR_BLENDER3,
+	OVLSYS_ADAPTOR_EXDMA5,
+	OVLSYS_ADAPTOR_BLENDER4,
+	OVLSYS_ADAPTOR_OUTPROC0,
+};
+
+static const unsigned int mt8196_mtk_ovl_ext[] = {
+	OVLSYS_ADAPTOR_EXDMA6,
+	OVLSYS_ADAPTOR_BLENDER5,
+	OVLSYS_ADAPTOR_EXDMA7,
+	OVLSYS_ADAPTOR_BLENDER6,
+	OVLSYS_ADAPTOR_EXDMA8,
+	OVLSYS_ADAPTOR_BLENDER7,
+	OVLSYS_ADAPTOR_EXDMA9,
+	OVLSYS_ADAPTOR_BLENDER8,
+	OVLSYS_ADAPTOR_OUTPROC1,
+};
+
+static const unsigned int mt8196_mtk_ovl_third[] = {
+	OVLSYS_ADAPTOR_EXDMA12,
+	OVLSYS_ADAPTOR_BLENDER11,
+	OVLSYS_ADAPTOR_EXDMA13,
+	OVLSYS_ADAPTOR_BLENDER12,
+	OVLSYS_ADAPTOR_EXDMA14,
+	OVLSYS_ADAPTOR_BLENDER13,
+	OVLSYS_ADAPTOR_EXDMA15,
+	OVLSYS_ADAPTOR_BLENDER14,
+	OVLSYS_ADAPTOR_OUTPROC6,
+};
+
+static enum mtk_ovlsys_adaptor_comp_type get_type(enum mtk_ovlsys_adaptor_comp_id id)
+{
+	return comp_matches[id].type;
+}
+
+static enum mtk_ddp_comp_id get_ddp_comp_id(enum mtk_ovlsys_adaptor_comp_id id)
+{
+	return comp_matches[id].comp_id;
+}
+
+static struct device *get_comp_by_type_idx(struct device *dev,
+					   enum mtk_ovlsys_adaptor_comp_type type,
+					   unsigned int idx)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+	int i;
+	int count = 0;
+
+	for (i = 0; i < priv->path_size; i++) {
+		if (get_type(priv->path[i]) == type) {
+			if (count == idx)
+				return priv->ovl_adaptor_comp[priv->path[i]];
+			count++;
+		}
+	}
+	return NULL;
+}
+
+void mtk_ovlsys_adaptor_layer_config(struct device *dev, unsigned int idx,
+				     struct mtk_plane_state *state,
+				     struct cmdq_pkt *cmdq_pkt)
+{
+	struct mtk_plane_pending_state *pending = &state->pending;
+	struct device *exdma;
+	struct device *blender;
+	unsigned int align_width = 0;
+	const struct drm_format_info *fmt_info = drm_format_info(pending->format);
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+
+	dev_dbg(dev, "%s+ idx:%d, enable:%d, fmt:0x%x\n", __func__, idx,
+		pending->enable, pending->format);
+	dev_dbg(dev, "addr 0x%pad, fb w:%d, {%d,%d,%d,%d}\n",
+		&pending->addr, (pending->pitch / fmt_info->cpp[0]),
+		pending->x, pending->y, pending->width, pending->height);
+
+	exdma = get_comp_by_type_idx(dev, OVLSYS_ADAPTOR_TYPE_EXDMA, idx);
+	blender = get_comp_by_type_idx(dev, OVLSYS_ADAPTOR_TYPE_BLENDER, idx);
+
+	/* OVLSYS is in 1T2P domain, width needs to be 2 pixels align */
+	align_width = ALIGN_DOWN(pending->width, 2);
+
+	if (!pending->enable || pending->height == 0 || align_width == 0 ||
+	    pending->x > priv->max_size || pending->y > priv->max_size) {
+		pending->enable = false;
+		mtk_disp_exdma_stop(exdma, cmdq_pkt);
+		mtk_disp_blender_layer_config(blender, state, cmdq_pkt);
+		return;
+	}
+
+	mtk_disp_exdma_config(exdma, state, cmdq_pkt);
+
+	mtk_disp_blender_layer_config(blender, state, cmdq_pkt);
+
+	mtk_disp_exdma_start(exdma, cmdq_pkt);
+	mtk_disp_blender_start(blender, cmdq_pkt);
+}
+
+void mtk_ovlsys_adaptor_config(struct device *dev, unsigned int w,
+			       unsigned int h, unsigned int vrefresh,
+			       unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+	int i;
+	int blender_idx = 0;
+
+	for (i = 0; i < priv->path_size; i++) {
+		enum mtk_disp_blender_layer blender;
+
+		if (get_type(priv->path[i]) == OVLSYS_ADAPTOR_TYPE_BLENDER) {
+			blender_idx++;
+			if (priv->layer_nr == 1)
+				blender = SINGLE_BLENDER;
+			else if (blender_idx == 1)
+				blender = FIRST_BLENDER;
+			else if (blender_idx == priv->layer_nr)
+				blender = LAST_BLENDER;
+			else
+				blender = OTHERS;
+
+			mtk_disp_blender_config(priv->ovl_adaptor_comp[priv->path[i]], w, h,
+						vrefresh, bpc, blender, cmdq_pkt);
+		} else if (get_type(priv->path[i]) == OVLSYS_ADAPTOR_TYPE_OUTPROC) {
+			mtk_disp_outproc_config(priv->ovl_adaptor_comp[priv->path[i]], w, h,
+						vrefresh, bpc, cmdq_pkt);
+		}
+	}
+}
+
+int mtk_ovlsys_adaptor_layer_check(struct device *dev,
+				   unsigned int idx,
+				   struct mtk_plane_state *mtk_state)
+{
+	struct drm_plane_state *state = &mtk_state->base;
+
+	/* Check if any unsupported rotation is set */
+	if (state->rotation & ~DRM_MODE_ROTATE_0)
+		return -EINVAL;
+
+	return 0;
+}
+
+void mtk_ovlsys_adaptor_start(struct device *dev)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+	int i;
+
+	for (i = 0; i < priv->path_size; i++) {
+		if (get_type(priv->path[i]) == OVLSYS_ADAPTOR_TYPE_EXDMA)
+			mtk_disp_exdma_start(priv->ovl_adaptor_comp[priv->path[i]], NULL);
+		else if (get_type(priv->path[i]) == OVLSYS_ADAPTOR_TYPE_BLENDER)
+			mtk_disp_blender_start(priv->ovl_adaptor_comp[priv->path[i]], NULL);
+		else
+			mtk_disp_outproc_start(priv->ovl_adaptor_comp[priv->path[i]]);
+	}
+}
+
+void mtk_ovlsys_adaptor_stop(struct device *dev)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+	int i;
+
+	for (i = 0; i < priv->path_size; i++) {
+		if (get_type(priv->path[i]) == OVLSYS_ADAPTOR_TYPE_EXDMA)
+			mtk_disp_exdma_stop(priv->ovl_adaptor_comp[priv->path[i]], NULL);
+		else if (get_type(priv->path[i]) == OVLSYS_ADAPTOR_TYPE_BLENDER)
+			mtk_disp_blender_stop(priv->ovl_adaptor_comp[priv->path[i]], NULL);
+		else
+			mtk_disp_outproc_stop(priv->ovl_adaptor_comp[priv->path[i]]);
+	}
+}
+
+int mtk_ovlsys_adaptor_clk_enable(struct device *dev)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+	struct device *comp;
+	int ret;
+	int i;
+
+	for (i = 0; i < OVLSYS_ADAPTOR_ID_MAX; i++) {
+		comp = priv->ovl_adaptor_comp[i];
+
+		if (!comp)
+			continue;
+
+		if (get_type(i) != OVLSYS_ADAPTOR_TYPE_EXDMA)
+			continue;
+
+		ret = pm_runtime_get_sync(comp);
+		if (ret < 0) {
+			dev_err(dev, "Failed to enable power domain %d, err %d\n", i, ret);
+			goto pwr_err;
+		}
+	}
+
+	for (i = 0; i < OVLSYS_ADAPTOR_ID_MAX; i++) {
+		comp = priv->ovl_adaptor_comp[i];
+
+		if (!comp)
+			continue;
+
+		if (get_type(i) == OVLSYS_ADAPTOR_TYPE_EXDMA)
+			ret = mtk_disp_exdma_clk_enable(comp);
+		else if (get_type(i) == OVLSYS_ADAPTOR_TYPE_BLENDER)
+			ret = mtk_disp_blender_clk_enable(comp);
+		else
+			ret = mtk_disp_outproc_clk_enable(comp);
+
+		if (ret) {
+			dev_err(dev, "Failed to enable clock %d, err %d\n", i, ret);
+			goto clk_err;
+		}
+	}
+
+	return ret;
+
+clk_err:
+	while (--i >= 0) {
+		comp = priv->ovl_adaptor_comp[i];
+		if (!comp)
+			continue;
+		if (get_type(i) == OVLSYS_ADAPTOR_TYPE_EXDMA)
+			mtk_disp_exdma_clk_disable(comp);
+		else if (get_type(i) == OVLSYS_ADAPTOR_TYPE_BLENDER)
+			mtk_disp_blender_clk_disable(comp);
+		else
+			mtk_disp_outproc_clk_disable(comp);
+	}
+	i = OVLSYS_ADAPTOR_BLENDER0;
+
+pwr_err:
+	while (--i >= 0) {
+		comp = priv->ovl_adaptor_comp[i];
+		if (!comp)
+			continue;
+		pm_runtime_put(priv->ovl_adaptor_comp[i]);
+	}
+
+	return ret;
+}
+
+void mtk_ovlsys_adaptor_clk_disable(struct device *dev)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+	struct device *comp;
+	int i;
+
+	for (i = 0; i < OVLSYS_ADAPTOR_ID_MAX; i++) {
+		comp = priv->ovl_adaptor_comp[i];
+
+		if (!comp)
+			continue;
+
+		if (get_type(i) == OVLSYS_ADAPTOR_TYPE_EXDMA) {
+			mtk_disp_exdma_clk_disable(comp);
+			pm_runtime_put(comp);
+		} else if (get_type(i) == OVLSYS_ADAPTOR_TYPE_BLENDER) {
+			mtk_disp_blender_clk_disable(comp);
+		} else {
+			mtk_disp_outproc_clk_disable(comp);
+		}
+	}
+}
+
+unsigned int mtk_ovlsys_adaptor_layer_nr(struct device *dev)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+
+	return priv->layer_nr;
+}
+
+struct device *mtk_ovlsys_adaptor_dma_dev_get(struct device *dev)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+
+	return priv->ovl_adaptor_comp[priv->path[0]];
+}
+
+void mtk_ovlsys_adaptor_register_vblank_cb(struct device *dev, void (*vblank_cb)(void *),
+					   void *vblank_cb_data)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+
+	mtk_disp_outproc_register_vblank_cb(priv->ovl_adaptor_comp[priv->path[priv->path_size - 1]],
+					    vblank_cb, vblank_cb_data);
+}
+
+void mtk_ovlsys_adaptor_unregister_vblank_cb(struct device *dev)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+	struct device *comp = priv->ovl_adaptor_comp[priv->path[priv->path_size - 1]];
+
+	if (!priv->children_bound)
+		return;
+
+	mtk_disp_outproc_unregister_vblank_cb(comp);
+}
+
+void mtk_ovlsys_adaptor_enable_vblank(struct device *dev)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+
+	mtk_disp_outproc_enable_vblank(priv->ovl_adaptor_comp[priv->path[priv->path_size - 1]]);
+}
+
+void mtk_ovlsys_adaptor_disable_vblank(struct device *dev)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+
+	mtk_disp_outproc_disable_vblank(priv->ovl_adaptor_comp[priv->path[priv->path_size - 1]]);
+}
+
+const u32 *mtk_ovlsys_adaptor_get_formats(struct device *dev)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+
+	return mtk_disp_exdma_get_formats(priv->ovl_adaptor_comp[priv->path[0]]);
+}
+
+size_t mtk_ovlsys_adaptor_get_num_formats(struct device *dev)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+
+	return mtk_disp_exdma_get_num_formats(priv->ovl_adaptor_comp[priv->path[0]]);
+}
+
+void mtk_ovlsys_adaptor_add_comp(struct device *dev, struct mtk_mutex *mutex)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+	int i;
+
+	for (i = 0; i < priv->path_size; i++)
+		mtk_mutex_add_comp(mutex, get_ddp_comp_id(priv->path[i]));
+}
+
+void mtk_ovlsys_adaptor_remove_comp(struct device *dev, struct mtk_mutex *mutex)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+	int i;
+
+	for (i = 0; i < priv->path_size; i++)
+		mtk_mutex_remove_comp(mutex, get_ddp_comp_id(priv->path[i]));
+}
+
+void mtk_ovlsys_adaptor_connect(struct device *dev, struct device *mmsys_dev, unsigned int next)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+	int i;
+
+	for (i = 0; i < priv->path_size - 1; i++)
+		mtk_mmsys_ddp_connect(mmsys_dev, get_ddp_comp_id(priv->path[i]),
+				      get_ddp_comp_id(priv->path[i + 1]));
+
+	mtk_mmsys_ddp_connect(mmsys_dev, get_ddp_comp_id(priv->path[i]), next);
+}
+
+void mtk_ovlsys_adaptor_disconnect(struct device *dev, struct device *mmsys_dev, unsigned int next)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+	int i;
+
+	for (i = 0; i < priv->path_size - 1; i++)
+		mtk_mmsys_ddp_disconnect(mmsys_dev, get_ddp_comp_id(priv->path[i]),
+					 get_ddp_comp_id(priv->path[i + 1]));
+
+	mtk_mmsys_ddp_disconnect(mmsys_dev, get_ddp_comp_id(priv->path[i]), next);
+}
+
+static int ovlsys_adaptor_comp_get_id(struct device *dev, struct device_node *node,
+				      enum mtk_ovlsys_adaptor_comp_type type,
+				      enum mtk_ddp_comp_id *comp_id)
+{
+	int alias_id = of_alias_get_id(node, private_comp_stem[type]);
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(comp_matches); i++)
+		if (comp_matches[i].type == type &&
+		    comp_matches[i].alias_id == alias_id) {
+			*comp_id = comp_matches[i].comp_id;
+			return i;
+		}
+	dev_warn(dev, "Failed to get id. type: %d, alias: %d\n", type, alias_id);
+	return -EINVAL;
+}
+
+static const struct of_device_id mtk_ovlsys_adaptor_comp_dt_ids[] = {
+	{
+		.compatible = "mediatek,mt8196-exdma",
+		.data = (void *)OVLSYS_ADAPTOR_TYPE_EXDMA,
+	}, {
+		.compatible = "mediatek,mt8196-blender",
+		.data = (void *)OVLSYS_ADAPTOR_TYPE_BLENDER,
+	}, {
+		.compatible = "mediatek,mt8196-outproc",
+		.data = (void *)OVLSYS_ADAPTOR_TYPE_OUTPROC,
+	},
+	{},
+};
+
+static int ovlsys_adaptor_comp_init(struct device *dev, struct component_match **match)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+	struct device_node *node, *parent;
+	struct platform_device *comp_pdev;
+	int i;
+
+	parent = dev->parent->parent->of_node->parent;
+
+	for_each_child_of_node(parent, node) {
+		const struct of_device_id *of_id;
+		enum mtk_ovlsys_adaptor_comp_type type;
+		enum mtk_ddp_comp_id comp_id;
+		int id;
+		bool found = false;
+
+		of_id = of_match_node(mtk_ovlsys_adaptor_comp_dt_ids, node);
+		if (!of_id)
+			continue;
+
+		if (!of_device_is_available(node)) {
+			dev_dbg(dev, "Skipping disabled component %pOF\n",
+				node);
+			continue;
+		}
+
+		type = (enum mtk_ovlsys_adaptor_comp_type)(uintptr_t)of_id->data;
+		id = ovlsys_adaptor_comp_get_id(dev, node, type, &comp_id);
+		if (id < 0) {
+			dev_warn(dev, "Skipping unknown component %pOF\n",
+				 node);
+			continue;
+		}
+
+		for (i = 0; i < priv->path_size; i++)
+			if (priv->path[i] == id)
+				found = true;
+
+		if (!found)
+			continue;
+
+		comp_pdev = of_find_device_by_node(node);
+		if (!comp_pdev)
+			return -EPROBE_DEFER;
+
+		priv->ovl_adaptor_comp[id] = &comp_pdev->dev;
+
+		drm_of_component_match_add(dev, match, component_compare_of, node);
+		dev_dbg(dev, "Adding component match for %pOF\n", node);
+	}
+
+	if (!*match) {
+		dev_err(dev, "No match device for ovlsys_adaptor\n");
+		return -ENODEV;
+	}
+
+	return 0;
+}
+
+static int mtk_disp_ovlsys_adaptor_comp_bind(struct device *dev, struct device *master,
+					     void *data)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+
+	if (!priv->children_bound)
+		return -EPROBE_DEFER;
+
+	return 0;
+}
+
+static void mtk_disp_ovlsys_adaptor_comp_unbind(struct device *dev, struct device *master,
+						void *data)
+{
+}
+
+static const struct component_ops mtk_disp_ovlsys_adaptor_comp_ops = {
+	.bind	= mtk_disp_ovlsys_adaptor_comp_bind,
+	.unbind = mtk_disp_ovlsys_adaptor_comp_unbind,
+};
+
+static int mtk_disp_ovlsys_adaptor_master_bind(struct device *dev)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+	int ret, i;
+	unsigned int layer_nr = 0;
+
+	ret = component_bind_all(dev, priv->mmsys_dev);
+	if (ret)
+		return dev_err_probe(dev, ret, "component_bind_all failed!\n");
+
+	priv->children_bound = true;
+
+	for (i = 0; i < priv->path_size; i++)
+		if (comp_matches[priv->path[i]].type == OVLSYS_ADAPTOR_TYPE_BLENDER)
+			layer_nr++;
+	priv->layer_nr = layer_nr;
+
+	return 0;
+}
+
+static void mtk_disp_ovlsys_adaptor_master_unbind(struct device *dev)
+{
+	struct mtk_disp_ovlsys_adaptor *priv = dev_get_drvdata(dev);
+
+	priv->children_bound = false;
+}
+
+static const struct component_master_ops mtk_disp_ovlsys_adaptor_master_ops = {
+	.bind		= mtk_disp_ovlsys_adaptor_master_bind,
+	.unbind		= mtk_disp_ovlsys_adaptor_master_unbind,
+};
+
+static const struct mtk_disp_ovlsys_adaptor mt8196_ovlsys_adaptor_driver_data = {
+	.max_size = 8191,
+};
+
+static int mtk_disp_ovlsys_adaptor_probe(struct platform_device *pdev)
+{
+	struct mtk_disp_ovlsys_adaptor *priv;
+	struct device *dev = &pdev->dev;
+	struct component_match *match = NULL;
+	struct mtk_drm_ovlsys_private *ovlsys_priv;
+	int ret;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, priv);
+
+	ovlsys_priv = pdev->dev.platform_data;
+	priv->mmsys_dev = ovlsys_priv->mmsys_dev;
+	priv->max_size = mt8196_ovlsys_adaptor_driver_data.max_size;
+
+	if (ovlsys_priv->use_path == 0) {
+		priv->path = mt8196_mtk_ovl_main;
+		priv->path_size = ARRAY_SIZE(mt8196_mtk_ovl_main);
+	} else if (ovlsys_priv->use_path == 1) {
+		priv->path = mt8196_mtk_ovl_ext;
+		priv->path_size = ARRAY_SIZE(mt8196_mtk_ovl_ext);
+	} else {
+		priv->path = mt8196_mtk_ovl_third;
+		priv->path_size = ARRAY_SIZE(mt8196_mtk_ovl_third);
+	}
+
+	ret = ovlsys_adaptor_comp_init(dev, &match);
+	if (ret < 0)
+		return ret;
+
+	component_master_add_with_match(dev, &mtk_disp_ovlsys_adaptor_master_ops, match);
+
+	pm_runtime_enable(dev);
+
+	ret = component_add(dev, &mtk_disp_ovlsys_adaptor_comp_ops);
+	if (ret != 0) {
+		pm_runtime_disable(dev);
+		dev_err(dev, "Failed to add component: %d\n", ret);
+	}
+
+	return ret;
+}
+
+static void mtk_disp_ovlsys_adaptor_remove(struct platform_device *pdev)
+{
+	component_master_del(&pdev->dev, &mtk_disp_ovlsys_adaptor_master_ops);
+	pm_runtime_disable(&pdev->dev);
+}
+
+struct platform_driver mtk_disp_ovlsys_adaptor_driver = {
+	.probe		= mtk_disp_ovlsys_adaptor_probe,
+	.remove		= mtk_disp_ovlsys_adaptor_remove,
+	.driver		= {
+		.name	= "mediatek-disp-ovlsys-adaptor",
+		.owner	= THIS_MODULE,
+	},
+};
+
+MODULE_AUTHOR("Nancy Lin <nancy.lin@mediatek.com>");
+MODULE_DESCRIPTION("MediaTek Ovlsys Adaptor Driver");
+MODULE_LICENSE("GPL");
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 27190057bd8e..7526bc38bcc7 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -448,6 +448,28 @@ static bool mtk_drm_find_mmsys_comp(struct mtk_drm_private *private, int comp_id
 	return false;
 }
 
+static int mtk_drm_mmsys_comp_in_path(struct mtk_drm_private *private, int comp_id)
+{
+	const struct mtk_mmsys_driver_data *drv_data = private->data;
+	int i;
+
+	if (drv_data->main_path)
+		for (i = 0; i < drv_data->main_len; i++)
+			if (drv_data->main_path[i] == comp_id)
+				return 0;
+
+	if (drv_data->ext_path)
+		for (i = 0; i < drv_data->ext_len; i++)
+			if (drv_data->ext_path[i] == comp_id)
+				return 1;
+	if (drv_data->third_path)
+		for (i = 0; i < drv_data->third_len; i++)
+			if (drv_data->third_path[i] == comp_id)
+				return 2;
+
+	return -1;
+}
+
 static int mtk_drm_kms_init(struct drm_device *drm)
 {
 	struct mtk_drm_private *private = drm->dev_private;
@@ -463,8 +485,8 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 	if (ret)
 		goto put_mutex_dev;
 
-	drm->mode_config.min_width = 64;
-	drm->mode_config.min_height = 64;
+	drm->mode_config.min_width = 1;
+	drm->mode_config.min_height = 1;
 
 	/*
 	 * set max width and height as default value(4096x4096).
@@ -1107,6 +1129,40 @@ static int mtk_drm_probe(struct platform_device *pdev)
 		component_match_add(dev, &match, compare_dev, &ovl_adaptor->dev);
 	}
 
+	if (mtk_drm_find_mmsys_comp(private, DDP_COMPONENT_DRM_OVLSYS_ADAPTOR0)) {
+		struct mtk_drm_ovlsys_private ovlsys_priv;
+
+		ovlsys_priv.mmsys_dev = private->mmsys_dev;
+		ovlsys_priv.use_path =
+		mtk_drm_mmsys_comp_in_path(private, DDP_COMPONENT_DRM_OVLSYS_ADAPTOR0);
+		ovl_adaptor =
+			platform_device_register_data(dev, "mediatek-disp-ovlsys-adaptor",
+						      PLATFORM_DEVID_AUTO,
+						      (void *)&ovlsys_priv,
+						      sizeof(struct mtk_drm_ovlsys_private));
+		private->ddp_comp[DDP_COMPONENT_DRM_OVLSYS_ADAPTOR0].dev = &ovl_adaptor->dev;
+		mtk_ddp_comp_init(NULL, &private->ddp_comp[DDP_COMPONENT_DRM_OVLSYS_ADAPTOR0],
+				  DDP_COMPONENT_DRM_OVLSYS_ADAPTOR0);
+		component_match_add(dev, &match, compare_dev, &ovl_adaptor->dev);
+	}
+
+	if (mtk_drm_find_mmsys_comp(private, DDP_COMPONENT_DRM_OVLSYS_ADAPTOR1)) {
+		struct mtk_drm_ovlsys_private ovlsys_priv;
+
+		ovlsys_priv.mmsys_dev = private->mmsys_dev;
+		ovlsys_priv.use_path =
+		mtk_drm_mmsys_comp_in_path(private, DDP_COMPONENT_DRM_OVLSYS_ADAPTOR1);
+		ovl_adaptor =
+			platform_device_register_data(dev, "mediatek-disp-ovlsys-adaptor",
+						      PLATFORM_DEVID_AUTO,
+						      (void *)&ovlsys_priv,
+						      sizeof(struct mtk_drm_ovlsys_private));
+		private->ddp_comp[DDP_COMPONENT_DRM_OVLSYS_ADAPTOR1].dev = &ovl_adaptor->dev;
+		mtk_ddp_comp_init(NULL, &private->ddp_comp[DDP_COMPONENT_DRM_OVLSYS_ADAPTOR1],
+				  DDP_COMPONENT_DRM_OVLSYS_ADAPTOR1);
+		component_match_add(dev, &match, compare_dev, &ovl_adaptor->dev);
+	}
+
 	/* Iterate over sibling DISP function blocks */
 	for_each_child_of_node(phandle->parent, node) {
 		enum mtk_ddp_comp_type comp_type;
@@ -1268,6 +1324,7 @@ static struct platform_driver * const mtk_drm_drivers[] = {
 	&mtk_disp_outproc_driver,
 	&mtk_disp_ovl_adaptor_driver,
 	&mtk_disp_ovl_driver,
+	&mtk_disp_ovlsys_adaptor_driver,
 	&mtk_disp_rdma_driver,
 	&mtk_dpi_driver,
 	&mtk_drm_platform_driver,
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
index c4717c37b0f1..aa17e743a1d0 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
@@ -11,7 +11,9 @@
 
 #define MAX_CONNECTOR	2
 #define DDP_COMPONENT_DRM_OVL_ADAPTOR (DDP_COMPONENT_ID_MAX + 1)
-#define DDP_COMPONENT_DRM_ID_MAX (DDP_COMPONENT_DRM_OVL_ADAPTOR + 1)
+#define DDP_COMPONENT_DRM_OVLSYS_ADAPTOR0 (DDP_COMPONENT_DRM_OVL_ADAPTOR + 1)
+#define DDP_COMPONENT_DRM_OVLSYS_ADAPTOR1 (DDP_COMPONENT_DRM_OVLSYS_ADAPTOR0 + 1)
+#define DDP_COMPONENT_DRM_ID_MAX (DDP_COMPONENT_DRM_OVLSYS_ADAPTOR1 + 1)
 
 enum mtk_crtc_path {
 	CRTC_MAIN,
@@ -69,6 +71,12 @@ struct mtk_drm_private {
 	struct mtk_drm_private **all_drm_private;
 };
 
+struct mtk_drm_ovlsys_private {
+	struct device *mmsys_dev;
+	struct device *mutex_dev;
+	unsigned int use_path;
+};
+
 extern struct platform_driver mtk_disp_aal_driver;
 extern struct platform_driver mtk_disp_blender_driver;
 extern struct platform_driver mtk_disp_ccorr_driver;
@@ -79,6 +87,7 @@ extern struct platform_driver mtk_disp_merge_driver;
 extern struct platform_driver mtk_disp_outproc_driver;
 extern struct platform_driver mtk_disp_ovl_adaptor_driver;
 extern struct platform_driver mtk_disp_ovl_driver;
+extern struct platform_driver mtk_disp_ovlsys_adaptor_driver;
 extern struct platform_driver mtk_disp_rdma_driver;
 extern struct platform_driver mtk_dpi_driver;
 extern struct platform_driver mtk_dsi_driver;
-- 
2.34.1


