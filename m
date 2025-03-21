Return-Path: <devicetree+bounces-159585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D4766A6B7AE
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 10:38:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B13BE7A8673
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 09:37:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B771722A81F;
	Fri, 21 Mar 2025 09:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="JltSFHdw"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E311227E90;
	Fri, 21 Mar 2025 09:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.61.82.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742549748; cv=none; b=NlG154uSKH8HDcSMikODLzPoKAjNmEMyA1jkxJt0x46WD4gvS2oafP2oSWrAznw79MkFjINhg6u1qAOb8G3z94mFvvG3XQfkeKmjx3qxhFXOYrWK1PrD1HMUuJBU7y3PZTk9gAr2zKD1OHMJ5cyF1E/0BZiwkplGe0deq9ddSu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742549748; c=relaxed/simple;
	bh=VTiZ5fGf4ibaqdhlxSadX8erCrE7ucq3NTh7kBxraq8=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=roZq6NMJu4m2KWRXmdGF8wNxMogo5oSk4ul11pIECfYR2dLTvo2+ZZ4C7Q7deSPctLehslgKjgNM1Ga30e/Bqtb82k1Pmuc1hMk9H7WsSYxBlLz0vhja15ahK1SKP0tkbNVN75v/Aer+oKTH2cYvAJ/BNpYWdTCGllOt5EIcsA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=JltSFHdw; arc=none smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: d9270e58063711f08eb9c36241bbb6fb-20250321
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=8fPIEbSr/x96UkwYOjiufP/9onrTKMsAghpNqi9YKjk=;
	b=JltSFHdwSQx9t/oxtwQ9QAniYYSS6mV+4tR/6MQDJ0Rw2ihbxifNO6fbC89qTnevcJfmuFd9+EybHFiyi9Xet9BzMjALBUi+C1Oh0D1ZRccRiO3SvRzvrquYl8N4f+ytw0WIBh+w0YSsy6jVF9y1teBbBCAfcC6O6iM8lyGixE8=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.2.1,REQID:ef9c134d-f504-4d80-af97-125e7f079751,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:0ef645f,CLOUDID:3813aa8c-f5b8-47d5-8cf3-b68fe7530c9a,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102,TC:nil,Content:0|50,EDM:-3
	,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV
	:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: d9270e58063711f08eb9c36241bbb6fb-20250321
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw02.mediatek.com
	(envelope-from <paul-pl.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1768825092; Fri, 21 Mar 2025 17:35:38 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.39; Fri, 21 Mar 2025 17:35:37 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1258.39 via Frontend Transport; Fri, 21 Mar 2025 17:35:37 +0800
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
Subject: [PATCH v2 11/15] drm/mediatek: add BLENDER support for MT8196
Date: Fri, 21 Mar 2025 17:33:40 +0800
Message-ID: <20250321093435.94835-12-paul-pl.chen@mediatek.com>
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

BLENDER executes the alpha blending function for overlapping
layers from different sources, which is the primary function
of the overlapping system.

Signed-off-by: Nancy Lin <nancy.lin@mediatek.com>
Signed-off-by: Paul-pl Chen <paul-pl.chen@mediatek.com>

---
 drivers/gpu/drm/mediatek/Makefile           |   1 +
 drivers/gpu/drm/mediatek/mtk_ddp_comp.c     |   1 +
 drivers/gpu/drm/mediatek/mtk_ddp_comp.h     |   1 +
 drivers/gpu/drm/mediatek/mtk_disp_blender.c | 276 ++++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_disp_blender.h |  18 ++
 drivers/gpu/drm/mediatek/mtk_disp_drv.h     |  12 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c      |   1 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.h      |   1 +
 8 files changed, 311 insertions(+)
 create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_blender.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_blender.h

diff --git a/drivers/gpu/drm/mediatek/Makefile b/drivers/gpu/drm/mediatek/Makefile
index db92f4fb353d..a7b9ebe27f68 100644
--- a/drivers/gpu/drm/mediatek/Makefile
+++ b/drivers/gpu/drm/mediatek/Makefile
@@ -3,6 +3,7 @@
 mediatek-drm-y := mtk_crtc.o \
 		  mtk_ddp_comp.o \
 		  mtk_disp_aal.o \
+		  mtk_disp_blender.o \
 		  mtk_disp_ccorr.o \
 		  mtk_disp_color.o \
 		  mtk_disp_exdma.o \
diff --git a/drivers/gpu/drm/mediatek/mtk_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
index 3e0739d8e6f1..e65c6df987f2 100644
--- a/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
@@ -445,6 +445,7 @@ static const char * const mtk_ddp_comp_stem[MTK_DDP_COMP_TYPE_MAX] = {
 	[MTK_DP_INTF] = "dp-intf",
 	[MTK_DPI] = "dpi",
 	[MTK_DSI] = "dsi",
+	[MTK_OVL_BLENDER] = "blender",
 	[MTK_OVL_EXDMA] = "exdma",
 };
 
diff --git a/drivers/gpu/drm/mediatek/mtk_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_ddp_comp.h
index 86dc0ee3924c..075ba5683f93 100644
--- a/drivers/gpu/drm/mediatek/mtk_ddp_comp.h
+++ b/drivers/gpu/drm/mediatek/mtk_ddp_comp.h
@@ -43,6 +43,7 @@ enum mtk_ddp_comp_type {
 	MTK_DPI,
 	MTK_DP_INTF,
 	MTK_DSI,
+	MTK_OVL_BLENDER,
 	MTK_OVL_EXDMA,
 	MTK_DDP_COMP_TYPE_MAX,
 };
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_blender.c b/drivers/gpu/drm/mediatek/mtk_disp_blender.c
new file mode 100644
index 000000000000..32c9e3d463a4
--- /dev/null
+++ b/drivers/gpu/drm/mediatek/mtk_disp_blender.c
@@ -0,0 +1,276 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2025 MediaTek Inc.
+ */
+
+#include <drm/drm_fourcc.h>
+#include <drm/drm_blend.h>
+#include <drm/drm_framebuffer.h>
+#include <linux/clk.h>
+#include <linux/component.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/of_address.h>
+#include <linux/platform_device.h>
+#include <linux/reset.h>
+#include <linux/soc/mediatek/mtk-cmdq.h>
+#include <linux/soc/mediatek/mtk-mmsys.h>
+
+#include "mtk_crtc.h"
+#include "mtk_ddp_comp.h"
+#include "mtk_disp_drv.h"
+#include "mtk_drm_drv.h"
+#include "mtk_disp_blender.h"
+#include "mtk_disp_ovl.h"
+
+#define OVL_BLD_ALPHA					0xff
+#define DISP_REG_OVL_BLD_DATAPATH_CON			0x010
+#define OVL_BLD_BGCLR_IN_SEL					BIT(0)
+#define OVL_BLD_BGCLR_OUT_TO_PROC				BIT(4)
+#define OVL_BLD_BGCLR_OUT_TO_NEXT_LAYER				BIT(5)
+
+#define DISP_REG_OVL_BLD_EN				0x020
+#define OVL_BLD_EN						BIT(0)
+#define OVL_BLD_FORCE_RELAY_MODE				BIT(4)
+#define OVL_BLD_RELAY_MODE					BIT(5)
+#define DISP_REG_OVL_BLD_RST				0x024
+#define OVL_BLD_RST						BIT(0)
+#define DISP_REG_OVL_BLD_SHADOW_CTRL			0x028
+#define OVL_BLD_BYPASS_SHADOW					BIT(2)
+#define DISP_REG_OVL_BLD_BGCLR_BALCK			0xff000000
+#define DISP_REG_OVL_BLD_ROI_SIZE			0x030
+#define DISP_REG_OVL_BLD_L_EN				0x040
+#define OVL_BLD_L_EN						BIT(0)
+#define DISP_REG_OVL_BLD_OFFSET				0x044
+#define DISP_REG_OVL_BLD_SRC_SIZE			0x048
+#define DISP_REG_OVL_BLD_L0_CLRFMT			0x050
+#define OVL_BLD_CON_FLD_CLRFMT					GENMASK(3, 0)
+#define OVL_BLD_CON_CLRFMT_MAN					BIT(4)
+#define OVL_BLD_CON_FLD_CLRFMT_NB				GENMASK(9, 8)
+#define OVL_BLD_CON_CLRFMT_NB_10_BIT				BIT(8)
+#define OVL_BLD_CON_BYTE_SWAP					BIT(16)
+#define OVL_BLD_CON_RGB_SWAP					BIT(17)
+#define DISP_REG_OVL_BLD_BGCLR_CLR			0x104
+#define DISP_REG_OVL_BLD_L_CON2				0x200
+#define OVL_BLD_L_ALPHA						GENMASK(7, 0)
+#define OVL_BLD_L_ALPHA_EN					BIT(12)
+#define DISP_REG_OVL_BLD_L0_PITCH			0x208
+#define OVL_BLD_L0_CONST					BIT(24)
+#define DISP_REG_OVL_BLD_L0_CLR				0x20c
+#define OVL_BLD_CON_CLRFMT_MAN					BIT(4)
+#define OVL_BLD_L0_SRC_PITCH					GENMASK(15, 0)
+#define DISP_REG_OVL_BLD_PITCH				0x2f4
+
+struct mtk_disp_blender {
+	void __iomem		*regs;
+	struct clk		*clk;
+	struct cmdq_client_reg	cmdq_reg;
+};
+
+void mtk_disp_blender_layer_config(struct device *dev, struct mtk_plane_state *state,
+				   struct cmdq_pkt *cmdq_pkt)
+{
+	struct mtk_disp_blender *priv = dev_get_drvdata(dev);
+	struct mtk_plane_pending_state *pending = &state->pending;
+	unsigned int align_width = ALIGN_DOWN(pending->width, 2);
+	unsigned int alpha;
+	unsigned int clrfmt;
+	unsigned int blend_mode = mtk_ovl_get_blend_mode(state,
+							 BIT(DRM_MODE_BLEND_PREMULTI) |
+							 BIT(DRM_MODE_BLEND_COVERAGE) |
+							 BIT(DRM_MODE_BLEND_PIXEL_NONE));
+	unsigned int ignore_pixel_alpha = 0;
+
+	if (!pending->enable) {
+		mtk_ddp_write(cmdq_pkt, 0, &priv->cmdq_reg, priv->regs, DISP_REG_OVL_BLD_L_EN);
+		return;
+	}
+
+	mtk_ddp_write(cmdq_pkt, pending->y << 16 | pending->x, &priv->cmdq_reg, priv->regs,
+		      DISP_REG_OVL_BLD_OFFSET);
+
+	mtk_ddp_write(cmdq_pkt, pending->height << 16 | align_width, &priv->cmdq_reg,
+		      priv->regs, DISP_REG_OVL_BLD_SRC_SIZE);
+
+	clrfmt = mtk_ovl_fmt_convert(pending->format, blend_mode, true, false, 0,
+				     OVL_BLD_CON_CLRFMT_MAN, OVL_BLD_CON_BYTE_SWAP,
+				     OVL_BLD_CON_RGB_SWAP);
+	clrfmt |= mtk_ovl_is_10bit_rgb(pending->format) ? OVL_BLD_CON_CLRFMT_NB_10_BIT : 0;
+	mtk_ddp_write_mask(cmdq_pkt, clrfmt, &priv->cmdq_reg, priv->regs,
+			   DISP_REG_OVL_BLD_L0_CLRFMT, OVL_BLD_CON_CLRFMT_MAN |
+			   OVL_BLD_CON_RGB_SWAP |  OVL_BLD_CON_BYTE_SWAP |
+			   OVL_BLD_CON_FLD_CLRFMT | OVL_BLD_CON_FLD_CLRFMT_NB);
+
+	alpha = (OVL_BLD_ALPHA & (state->base.alpha >> 8)) |
+		OVL_BLD_L_ALPHA_EN;
+
+	if (mtk_ovl_is_ignore_pixel_alpha(state, blend_mode))
+		ignore_pixel_alpha = OVL_BLD_L0_CONST;
+
+	mtk_ddp_write_mask(cmdq_pkt, pending->pitch | ignore_pixel_alpha,
+			   &priv->cmdq_reg, priv->regs,
+			   DISP_REG_OVL_BLD_PITCH, OVL_BLD_L0_CONST | OVL_BLD_L0_SRC_PITCH);
+
+	mtk_ddp_write_mask(cmdq_pkt, alpha, &priv->cmdq_reg, priv->regs,
+			   DISP_REG_OVL_BLD_L_CON2, OVL_BLD_L_ALPHA_EN | OVL_BLD_L_ALPHA);
+
+	mtk_ddp_write(cmdq_pkt, OVL_BLD_L_EN, &priv->cmdq_reg, priv->regs, DISP_REG_OVL_BLD_L_EN);
+}
+
+void mtk_disp_blender_config(struct device *dev, unsigned int w,
+			     unsigned int h, unsigned int vrefresh,
+			     unsigned int bpc, bool most_top,
+			     bool most_bottom, struct cmdq_pkt *cmdq_pkt)
+{
+	struct mtk_disp_blender *priv = dev_get_drvdata(dev);
+	u32 datapath;
+
+	dev_dbg(dev, "%s-w:%d, h:%d\n", __func__, w, h);
+	mtk_ddp_write(cmdq_pkt, h << 16 | w, &priv->cmdq_reg, priv->regs,
+		      DISP_REG_OVL_BLD_ROI_SIZE);
+	mtk_ddp_write(cmdq_pkt, DISP_REG_OVL_BLD_BGCLR_BALCK, &priv->cmdq_reg, priv->regs,
+		      DISP_REG_OVL_BLD_BGCLR_CLR);
+	mtk_ddp_write(cmdq_pkt, DISP_REG_OVL_BLD_BGCLR_BALCK, &priv->cmdq_reg, priv->regs,
+		      DISP_REG_OVL_BLD_L0_CLR);
+
+	if (most_top)
+		datapath = OVL_BLD_BGCLR_OUT_TO_PROC;
+	else
+		datapath = OVL_BLD_BGCLR_OUT_TO_NEXT_LAYER;
+	/*
+	 * The primary input is from EXDMA and the second input
+	 * is optionally from another blender
+	 */
+	if (!most_bottom)
+		datapath |= OVL_BLD_BGCLR_IN_SEL;
+
+	mtk_ddp_write_mask(cmdq_pkt, datapath,
+			   &priv->cmdq_reg, priv->regs, DISP_REG_OVL_BLD_DATAPATH_CON,
+			   OVL_BLD_BGCLR_OUT_TO_PROC | OVL_BLD_BGCLR_OUT_TO_NEXT_LAYER |
+			   OVL_BLD_BGCLR_IN_SEL);
+}
+
+void mtk_disp_blender_start(struct device *dev, struct cmdq_pkt *cmdq_pkt)
+{
+	struct mtk_disp_blender *priv = dev_get_drvdata(dev);
+	unsigned int tmp;
+
+	tmp = readl(priv->regs + DISP_REG_OVL_BLD_SHADOW_CTRL);
+	tmp = tmp | OVL_BLD_BYPASS_SHADOW;
+	writel(tmp, priv->regs + DISP_REG_OVL_BLD_SHADOW_CTRL);
+	mtk_ddp_write_mask(cmdq_pkt, OVL_BLD_EN, &priv->cmdq_reg, priv->regs,
+			   DISP_REG_OVL_BLD_EN, OVL_BLD_EN);
+}
+
+void mtk_disp_blender_stop(struct device *dev, struct cmdq_pkt *cmdq_pkt)
+{
+	struct mtk_disp_blender *priv = dev_get_drvdata(dev);
+
+	mtk_ddp_write(cmdq_pkt, 0, &priv->cmdq_reg, priv->regs, DISP_REG_OVL_BLD_L_EN);
+	mtk_ddp_write_mask(cmdq_pkt, 0, &priv->cmdq_reg, priv->regs,
+			   DISP_REG_OVL_BLD_EN, OVL_BLD_EN);
+	mtk_ddp_write_mask(cmdq_pkt, OVL_BLD_RST, &priv->cmdq_reg, priv->regs,
+			   DISP_REG_OVL_BLD_RST, OVL_BLD_RST);
+	mtk_ddp_write_mask(cmdq_pkt, 0, &priv->cmdq_reg, priv->regs,
+			   DISP_REG_OVL_BLD_RST, OVL_BLD_RST);
+}
+
+int mtk_disp_blender_clk_enable(struct device *dev)
+{
+	struct mtk_disp_blender *priv = dev_get_drvdata(dev);
+
+	return clk_prepare_enable(priv->clk);
+}
+
+void mtk_disp_blender_clk_disable(struct device *dev)
+{
+	struct mtk_disp_blender *priv = dev_get_drvdata(dev);
+
+	clk_disable_unprepare(priv->clk);
+}
+
+u32 mtk_disp_blender_get_blend_modes(struct device *dev)
+{
+	return BIT(DRM_MODE_BLEND_PREMULTI) |
+	       BIT(DRM_MODE_BLEND_COVERAGE) |
+	       BIT(DRM_MODE_BLEND_PIXEL_NONE);
+}
+
+static int mtk_disp_blender_bind(struct device *dev, struct device *master,
+				 void *data)
+{
+	return 0;
+}
+
+static void mtk_disp_blender_unbind(struct device *dev, struct device *master, void *data)
+{
+}
+
+static const struct component_ops mtk_disp_blender_component_ops = {
+	.bind	= mtk_disp_blender_bind,
+	.unbind = mtk_disp_blender_unbind,
+};
+
+static int mtk_disp_blender_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct resource *res;
+	struct mtk_disp_blender *priv;
+	int ret = 0;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	priv->regs = devm_ioremap_resource(dev, res);
+	if (IS_ERR(priv->regs)) {
+		dev_err(dev, "failed to ioremap blender\n");
+		return PTR_ERR(priv->regs);
+	}
+
+	priv->clk = devm_clk_get(dev, NULL);
+	if (IS_ERR(priv->clk)) {
+		dev_err(dev, "failed to get blender clk\n");
+		return PTR_ERR(priv->clk);
+	}
+
+#if IS_REACHABLE(CONFIG_MTK_CMDQ)
+	ret = cmdq_dev_get_client_reg(dev, &priv->cmdq_reg, 0);
+	if (ret)
+		dev_dbg(dev, "No mediatek,gce-client-reg\n");
+#endif
+	platform_set_drvdata(pdev, priv);
+
+	ret = component_add(dev, &mtk_disp_blender_component_ops);
+	if (ret)
+		dev_notice(dev, "Failed to add component: %d\n", ret);
+
+	return ret;
+}
+
+static void mtk_disp_blender_remove(struct platform_device *pdev)
+{
+	component_del(&pdev->dev, &mtk_disp_blender_component_ops);
+}
+
+static const struct of_device_id mtk_disp_blender_driver_dt_match[] = {
+	{ .compatible = "mediatek,mt8196-blender"},
+	{},
+};
+
+MODULE_DEVICE_TABLE(of, mtk_disp_blender_driver_dt_match);
+
+struct platform_driver mtk_disp_blender_driver = {
+	.probe		= mtk_disp_blender_probe,
+	.remove		= mtk_disp_blender_remove,
+	.driver		= {
+		.name	= "mediatek-disp-blender",
+		.owner	= THIS_MODULE,
+		.of_match_table = mtk_disp_blender_driver_dt_match,
+	},
+};
+
+MODULE_AUTHOR("Nancy Lin <nancy.lin@mediatek.com>");
+MODULE_DESCRIPTION("MediaTek Blender Driver");
+MODULE_LICENSE("GPL");
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_blender.h b/drivers/gpu/drm/mediatek/mtk_disp_blender.h
new file mode 100644
index 000000000000..be60a0f8de40
--- /dev/null
+++ b/drivers/gpu/drm/mediatek/mtk_disp_blender.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2025 MediaTek Inc.
+ */
+
+#ifndef __MTK_DISP_BLENDER_H__
+#define __MTK_DISP_BLENDER_H__
+
+enum mtk_disp_blender_layer {
+	FIRST_BLENDER,
+	LAST_BLENDER,
+	SINGLE_BLENDER,
+	OTHERS,
+	BLENDER_LAYER_MAX,
+};
+
+u32 mtk_disp_blender_get_blend_modes(struct device *dev);
+#endif // __MTK_DISP_BLENDER_H__
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_drv.h b/drivers/gpu/drm/mediatek/mtk_disp_drv.h
index 4e3d2510bef5..39e3af1e2b16 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_disp_drv.h
@@ -9,6 +9,7 @@
 #include <linux/soc/mediatek/mtk-cmdq.h>
 #include <linux/soc/mediatek/mtk-mmsys.h>
 #include <linux/soc/mediatek/mtk-mutex.h>
+#include "mtk_disp_blender.h"
 #include "mtk_mdp_rdma.h"
 #include "mtk_plane.h"
 
@@ -39,6 +40,17 @@ void mtk_color_config(struct device *dev, unsigned int w,
 		      unsigned int bpc, struct cmdq_pkt *cmdq_pkt);
 void mtk_color_start(struct device *dev);
 
+void mtk_disp_blender_start(struct device *dev, struct cmdq_pkt *cmdq_pkt);
+void mtk_disp_blender_stop(struct device *dev, struct cmdq_pkt *cmdq_pkt);
+int mtk_disp_blender_clk_enable(struct device *dev);
+void mtk_disp_blender_clk_disable(struct device *dev);
+void mtk_disp_blender_config(struct device *dev, unsigned int w,
+			     unsigned int h, unsigned int vrefresh,
+			     unsigned int bpc, bool most_top, bool most_bottom,
+			     struct cmdq_pkt *cmdq_pkt);
+void mtk_disp_blender_layer_config(struct device *dev, struct mtk_plane_state *state,
+				   struct cmdq_pkt *cmdq_pkt);
+
 int mtk_disp_exdma_clk_enable(struct device *dev);
 void mtk_disp_exdma_clk_disable(struct device *dev);
 void mtk_disp_exdma_start(struct device *dev, struct cmdq_pkt *cmdq_pkt);
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index bb7306a942ff..7a14f45d5f97 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -1274,6 +1274,7 @@ static struct platform_driver mtk_drm_platform_driver = {
 
 static struct platform_driver * const mtk_drm_drivers[] = {
 	&mtk_disp_aal_driver,
+	&mtk_disp_blender_driver,
 	&mtk_disp_ccorr_driver,
 	&mtk_disp_color_driver,
 	&mtk_disp_exdma_driver,
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
index 898a75898775..89178de1478f 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
@@ -70,6 +70,7 @@ struct mtk_drm_private {
 };
 
 extern struct platform_driver mtk_disp_aal_driver;
+extern struct platform_driver mtk_disp_blender_driver;
 extern struct platform_driver mtk_disp_ccorr_driver;
 extern struct platform_driver mtk_disp_color_driver;
 extern struct platform_driver mtk_disp_exdma_driver;
-- 
2.45.2


