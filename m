Return-Path: <devicetree+bounces-148290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BA6A3B90E
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 10:29:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B0B22189DA00
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 09:24:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 129911E0E14;
	Wed, 19 Feb 2025 09:21:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="jcBSJ+hw"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C801E0DD0;
	Wed, 19 Feb 2025 09:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739956874; cv=none; b=en0UWNEo6pPhOlC7MifnuE4uQvnhTRCgttcm50So00l+vU0vpmaW2yCeUbJNIiyGCeuRmDwMnMnUAedEoccYGvP4FeTlBJr/GxhKpZIXF+iXFHJZiMNEXo2GN3irOpGaMN6coJrP4YZ1rxnHPqSU39UvPU5KHySoc+jqyA8jr8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739956874; c=relaxed/simple;
	bh=/GsWSKqPs8SM8e+fqa42GkBEr40lj/zRVflxxFfwQN4=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=A766nl4ssDGigiGubM7cyfvwZz3GJ4oE1jQYa7oW4G/5/vs1Qsjox5LWXO6OqJv+mERhS4r15HM0wkkxRotQ5bK2ypQxkXSU/RJK4vBXb2og7wI4x/dRMuY6m4LhuUtge7qtEchMF8aXmJhuL9UuYM/BBedyli9goZ0Kce2ZdY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=jcBSJ+hw; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: d862c036eea211efaae1fd9735fae912-20250219
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=RvnJMlnup8mEpwfevKOMTTVHsPosdfiR6HlWkNh6UU8=;
	b=jcBSJ+hwKm+tYgduKJRQkMiOMXiSq4Jy7I2AQZGppBlciOqllMBn3XhfxxYGKscfkRIpRnBmNF+DmF/fEl5eC0G+2DTvfu8lpqyyjhaNCi+SlCX5a2jS8VVhYtzJWZ/V57kTvwSqGooRoQspcRD6TkY1wGblYOM5lPyS7eWF0Hs=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:f7e2c174-f04b-4eef-a0ec-148530822d50,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:60aa074,CLOUDID:f95d51b5-a2a1-4ef3-9ef9-e116773da0a7,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102,TC:nil,Content:0|50,EDM:-3
	,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV
	:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: d862c036eea211efaae1fd9735fae912-20250219
Received: from mtkmbs09n1.mediatek.inc [(172.21.101.35)] by mailgw01.mediatek.com
	(envelope-from <jay.liu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1733944336; Wed, 19 Feb 2025 17:21:05 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.28; Wed, 19 Feb 2025 17:21:03 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1258.28 via Frontend Transport; Wed, 19 Feb 2025 17:21:02 +0800
From: Jay Liu <jay.liu@mediatek.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Yongqiang Niu
	<yongqiang.niu@mediatek.com>, CK Hu <ck.hu@mediatek.com>, Hsin-Yi Wang
	<hsinyi@chromium.org>
CC: <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, Jay Liu
	<jay.liu@mediatek.com>
Subject: [PATCH 3/7] drm/mediatek: Add TDSHP component support for MT8196
Date: Wed, 19 Feb 2025 17:20:36 +0800
Message-ID: <20250219092040.11227-4-jay.liu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20250219092040.11227-1-jay.liu@mediatek.com>
References: <20250219092040.11227-1-jay.liu@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Add TDSHP component support for MT8196.
TDSHP is a hardware module designed to enhance the sharpness and
clarity of displayed images by analyzing and improving edges and
fine details in frames.

Signed-off-by: Jay Liu <jay.liu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_ddp_comp.c | 58 +++++++++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_ddp_comp.h |  1 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c  |  2 +
 3 files changed, 61 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
index d7e230bac53e..b87fde64ee49 100644
--- a/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
@@ -57,6 +57,16 @@
 #define POSTMASK_RELAY_MODE				BIT(0)
 #define DISP_REG_POSTMASK_SIZE			0x0030
 
+#define DISP_REG_TDSHP_EN			0x0000
+#define DISP_TDSHP_TDS_EN			BIT(31)
+#define DISP_REG_TDSHP_CTRL			0x0100
+#define DISP_TDSHP_CTRL_EN			BIT(0)
+#define DISP_TDSHP_PWR_SCL_EN			BIT(2)
+#define DISP_REG_TDSHP_CFG			0x0110
+#define DISP_REG_TDSHP_INPUT_SIZE		0x0120
+#define DISP_REG_TDSHP_OUTPUT_OFFSET		0x0124
+#define DISP_REG_TDSHP_OUTPUT_SIZE		0x0128
+
 #define DISP_REG_UFO_START			0x0000
 #define UFO_BYPASS				BIT(2)
 
@@ -261,6 +271,44 @@ static void mtk_postmask_stop(struct device *dev)
 	writel_relaxed(0x0, priv->regs + DISP_REG_POSTMASK_EN);
 }
 
+static void mtk_disp_tdshp_config(struct device *dev, unsigned int w,
+				  unsigned int h, unsigned int vrefresh,
+				  unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
+{
+	struct mtk_ddp_comp_dev *priv = dev_get_drvdata(dev);
+	u32 tdshp_ctrl = (bpc == 8) ? DISP_TDSHP_PWR_SCL_EN | DISP_TDSHP_CTRL_EN : 0;
+
+	mtk_ddp_write(cmdq_pkt, tdshp_ctrl, &priv->cmdq_reg, priv->regs,
+		      DISP_REG_TDSHP_CTRL);
+
+	mtk_ddp_write(cmdq_pkt, w << 16 | h, &priv->cmdq_reg, priv->regs,
+		      DISP_REG_TDSHP_INPUT_SIZE);
+	mtk_ddp_write(cmdq_pkt, w << 16 | h, &priv->cmdq_reg, priv->regs,
+		      DISP_REG_TDSHP_OUTPUT_SIZE);
+	mtk_ddp_write(cmdq_pkt, 0x0, &priv->cmdq_reg, priv->regs,
+		      DISP_REG_TDSHP_OUTPUT_OFFSET);
+
+	mtk_ddp_write(cmdq_pkt, 0x1, &priv->cmdq_reg,
+		      priv->regs, DISP_REG_TDSHP_CFG);
+
+	mtk_ddp_write_mask(cmdq_pkt, DISP_TDSHP_TDS_EN, &priv->cmdq_reg, priv->regs,
+			   DISP_REG_TDSHP_EN, DISP_TDSHP_TDS_EN);
+}
+
+static void mtk_disp_tdshp_start(struct device *dev)
+{
+	struct mtk_ddp_comp_dev *priv = dev_get_drvdata(dev);
+
+	writel(DISP_TDSHP_CTRL_EN, priv->regs + DISP_REG_TDSHP_CTRL);
+}
+
+static void mtk_disp_tdshp_stop(struct device *dev)
+{
+	struct mtk_ddp_comp_dev *priv = dev_get_drvdata(dev);
+
+	writel(0x0, priv->regs + DISP_REG_TDSHP_CTRL);
+}
+
 static void mtk_ufoe_start(struct device *dev)
 {
 	struct mtk_ddp_comp_dev *priv = dev_get_drvdata(dev);
@@ -268,6 +316,14 @@ static void mtk_ufoe_start(struct device *dev)
 	writel(UFO_BYPASS, priv->regs + DISP_REG_UFO_START);
 }
 
+static const struct mtk_ddp_comp_funcs ddp_tdshp = {
+	.clk_enable = mtk_ddp_clk_enable,
+	.clk_disable = mtk_ddp_clk_disable,
+	.config = mtk_disp_tdshp_config,
+	.start = mtk_disp_tdshp_start,
+	.stop = mtk_disp_tdshp_stop,
+};
+
 static const struct mtk_ddp_comp_funcs ddp_aal = {
 	.clk_enable = mtk_aal_clk_enable,
 	.clk_disable = mtk_aal_clk_disable,
@@ -440,6 +496,7 @@ static const char * const mtk_ddp_comp_stem[MTK_DDP_COMP_TYPE_MAX] = {
 	[MTK_DISP_POSTMASK] = "postmask",
 	[MTK_DISP_PWM] = "pwm",
 	[MTK_DISP_RDMA] = "rdma",
+	[MTK_DISP_TDSHP] = "tdshp",
 	[MTK_DISP_UFOE] = "ufoe",
 	[MTK_DISP_WDMA] = "wdma",
 	[MTK_DP_INTF] = "dp-intf",
@@ -495,6 +552,7 @@ static const struct mtk_ddp_comp_match mtk_ddp_matches[DDP_COMPONENT_DRM_ID_MAX]
 	[DDP_COMPONENT_RDMA1]		= { MTK_DISP_RDMA,		1, &ddp_rdma },
 	[DDP_COMPONENT_RDMA2]		= { MTK_DISP_RDMA,		2, &ddp_rdma },
 	[DDP_COMPONENT_RDMA4]		= { MTK_DISP_RDMA,		4, &ddp_rdma },
+	[DDP_COMPONENT_TDSHP0]		= { MTK_DISP_TDSHP,		0, &ddp_tdshp },
 	[DDP_COMPONENT_UFOE]		= { MTK_DISP_UFOE,		0, &ddp_ufoe },
 	[DDP_COMPONENT_WDMA0]		= { MTK_DISP_WDMA,		0, NULL },
 	[DDP_COMPONENT_WDMA1]		= { MTK_DISP_WDMA,		1, NULL },
diff --git a/drivers/gpu/drm/mediatek/mtk_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_ddp_comp.h
index 39720b27f4e9..fc90d32b8c2e 100644
--- a/drivers/gpu/drm/mediatek/mtk_ddp_comp.h
+++ b/drivers/gpu/drm/mediatek/mtk_ddp_comp.h
@@ -38,6 +38,7 @@ enum mtk_ddp_comp_type {
 	MTK_DISP_POSTMASK,
 	MTK_DISP_PWM,
 	MTK_DISP_RDMA,
+	MTK_DISP_TDSHP,
 	MTK_DISP_UFOE,
 	MTK_DISP_WDMA,
 	MTK_DPI,
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index f22ad2882697..4ec09864bc8c 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -790,6 +790,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
 	  .data = (void *)MTK_DISP_RDMA },
 	{ .compatible = "mediatek,mt8195-disp-rdma",
 	  .data = (void *)MTK_DISP_RDMA },
+	{ .compatible = "mediatek,mt8196-disp-tdshp",
+	  .data = (void *)MTK_DISP_TDSHP },
 	{ .compatible = "mediatek,mt8173-disp-ufoe",
 	  .data = (void *)MTK_DISP_UFOE },
 	{ .compatible = "mediatek,mt8173-disp-wdma",
-- 
2.18.0


