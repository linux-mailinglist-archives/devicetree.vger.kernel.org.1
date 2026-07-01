Return-Path: <devicetree+bounces-318525-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iC8uLmgLRWr65goAu9opvQ
	(envelope-from <devicetree+bounces-318525-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:43:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 452F26ED7CE
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:43:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=IrjuEJRv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318525-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318525-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0489C3205649
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:31:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98C744DD6D3;
	Wed,  1 Jul 2026 12:21:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8684DC530;
	Wed,  1 Jul 2026 12:21:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908518; cv=none; b=hxrz0Qh6zfMN2C1QfrIihn/wC85QFPUkVoVenhl/IUsetEjgLX5rFHFR5PY0bJy042t2Hqoq75TwyofodCy6bcbh6ENuKt7pCZBnduxOUFMu153OQHGhrg8woMrfd7EnOOg8OHE8DXbiYp+3EpDXj/rf/SZxQd1ke3B8pBiyMms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908518; c=relaxed/simple;
	bh=e3Z9m+QO6oALXjCTZ9btiFkkCilthehE/G8hd2YzjvU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=d8ec2PxPeXYBQtyLFG6jny1wZpvXuDIUlbTzvxBt+tbCwmSNB+3w8Y5UG0ydsxv6MbrEOlwIJPzF5nTuxPWPslJ4sVI7/c2cQkmc8otG9/uaxQxVn2fI2irjqBb230+VG86iawTPgqh2M/1P/qNMDK0QekiDh49ygwCAuvnn4A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=IrjuEJRv; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908515;
	bh=e3Z9m+QO6oALXjCTZ9btiFkkCilthehE/G8hd2YzjvU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IrjuEJRvALH32UfKmOETlaj/x4sCm+OyoVfp+AFvbhog5ITsuW6EpRivkrEKIUeMf
	 SZXTJ79S/P+5ATnx13UqwAAxwrBkv3uIihloaLiSiaAA5KhM+MCOMTnuqpL/bOEuhT
	 6NAQDrbI0ca6bE/X1+J1u+cFWs9M9BwwyhZyNgKj7vbKQc+NB2fPvnDk0kzV61Pgd4
	 JH8f+o6L7YjZpcixAK+oSuxOvOPSzjaN702/UINN3Dp3gtgMnFDa3z+L/VMUfnnasZ
	 XGFPVtYF994q8x7nICUxLlS2ZOo2iaq7YQB74LtoeaHQUsciYDN4qAhwoEywN2HBPH
	 aYxAXm9HFTBJg==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id F2E4817E35E4;
	Wed,  1 Jul 2026 14:21:53 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunkuang.hu@kernel.org
Cc: p.zabel@pengutronix.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	justin.yeh@mediatek.com,
	jason-jh.lin@mediatek.com,
	kernel@collabora.com
Subject: [PATCH 39/42] drm/mediatek: Add Two-Dimension Sharpness Processor (TDSHP) driver
Date: Wed,  1 Jul 2026 14:20:54 +0200
Message-ID: <20260701122057.19648-40-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701122057.19648-1-angelogioacchino.delregno@collabora.com>
References: <20260701122057.19648-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,collabora.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,mediatek.com];
	TAGGED_FROM(0.00)[bounces-318525-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:dri-devel@lists.freedesktop.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:justin.yeh@mediatek.com,m:jason-jh.lin@mediatek.com,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 452F26ED7CE

The MediaTek 2D Sharpness Processor (TDSHP) is responsible for
performing image sharpness adjustments/enhancements in a display
pipeline.

Even though this hardware block supports adjusting the luma and
contour 2D histograms, frequency weighting, luma-chroma gain and
others, this only introduces a basic configuration which allows
to bypass TDSHP processing in an effort to forward the data from
this block to others.

That is necessary because some components cannot be connected
directly in specific pipelines; for example, in MT8196/MT6991
pipelines, when Display Resizer (RSZ) and Color Correction (CCORR)
components are required, it is necessary to pass through TDSHP as
direct connection between RSZ and CCORR is not possible due to HW
limitations.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/Makefile         |   1 +
 drivers/gpu/drm/mediatek/mtk_ddp_comp.c   |  10 ++
 drivers/gpu/drm/mediatek/mtk_disp_drv.h   |   8 ++
 drivers/gpu/drm/mediatek/mtk_disp_tdshp.c | 167 ++++++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_drv.c    |   3 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.h    |   1 +
 include/linux/soc/mediatek/mtk-mmsys.h    |   2 +
 7 files changed, 192 insertions(+)
 create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_tdshp.c

diff --git a/drivers/gpu/drm/mediatek/Makefile b/drivers/gpu/drm/mediatek/Makefile
index e9478fa1a2ba..47ba6bc17d9e 100644
--- a/drivers/gpu/drm/mediatek/Makefile
+++ b/drivers/gpu/drm/mediatek/Makefile
@@ -15,6 +15,7 @@ mediatek-drm-y := mtk_crtc.o \
 		  mtk_disp_ovl.o \
 		  mtk_disp_ovl_adaptor.o \
 		  mtk_disp_rdma.o \
+		  mtk_disp_tdshp.o \
 		  mtk_disp_wdma.o \
 		  mtk_drm_drv.o \
 		  mtk_drm_legacy.o \
diff --git a/drivers/gpu/drm/mediatek/mtk_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
index 7e12ddffbe77..ea09af8d4705 100644
--- a/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
@@ -414,6 +414,14 @@ static const struct mtk_ddp_comp_funcs ddp_rdma = {
 	.get_num_formats = mtk_rdma_get_num_formats,
 };
 
+static const struct mtk_ddp_comp_funcs ddp_tdshp = {
+	.clk_enable = mtk_tdshp_clk_enable,
+	.clk_disable = mtk_tdshp_clk_disable,
+	.config = mtk_tdshp_config,
+	.start = mtk_tdshp_start,
+	.stop = mtk_tdshp_stop,
+};
+
 static const struct mtk_ddp_comp_funcs ddp_wdma = {
 	.clk_enable = mtk_wdma_clk_enable,
 	.clk_disable = mtk_wdma_clk_disable,
@@ -481,6 +489,7 @@ static const char * const mtk_ddp_comp_stem[MTK_DDP_COMP_TYPE_MAX] = {
 	[MTK_DISP_POSTMASK] = "postmask",
 	[MTK_DISP_PWM] = "pwm",
 	[MTK_DISP_RDMA] = "rdma",
+	[MTK_DISP_TDSHP] = "tdshp",
 	[MTK_DISP_UFOE] = "ufoe",
 	[MTK_DISP_WDMA] = "wdma",
 	[MTK_DISP_DP_INTF] = "dp-intf",
@@ -508,6 +517,7 @@ static const struct mtk_ddp_comp_funcs *mtk_ddp_funcs[MTK_DDP_COMP_TYPE_MAX] = {
 	[MTK_DISP_POSTMASK]		= &ddp_postmask,
 	[MTK_DISP_PWM]			= NULL,
 	[MTK_DISP_RDMA]			= &ddp_rdma,
+	[MTK_DISP_TDSHP]		= &ddp_tdshp,
 	[MTK_DISP_UFOE]			= &ddp_ufoe,
 	[MTK_DISP_WDMA]			= &ddp_wdma,
 	[MTK_DISP_DPI]			= &ddp_dpi,
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_drv.h b/drivers/gpu/drm/mediatek/mtk_disp_drv.h
index f78f12da08a8..0308094b29cd 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_disp_drv.h
@@ -243,6 +243,14 @@ void mtk_mdp_rdma_config(struct device *dev, struct mtk_mdp_rdma_cfg *cfg,
 const u32 *mtk_mdp_rdma_get_formats(struct device *dev);
 size_t mtk_mdp_rdma_get_num_formats(struct device *dev);
 
+int mtk_tdshp_clk_enable(struct mtk_ddp_comp *comp);
+void mtk_tdshp_clk_disable(struct mtk_ddp_comp *comp);
+void mtk_tdshp_config(struct mtk_ddp_comp *comp, unsigned int w,
+			   unsigned int h, unsigned int vrefresh,
+			   unsigned int bpc, struct cmdq_pkt *cmdq_pkt);
+void mtk_tdshp_start(struct device *dev);
+void mtk_tdshp_stop(struct device *dev);
+
 int mtk_wdma_clk_enable(struct mtk_ddp_comp *comp);
 void mtk_wdma_clk_disable(struct mtk_ddp_comp *comp);
 void mtk_wdma_config(struct mtk_ddp_comp *comp, unsigned int width,
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_tdshp.c b/drivers/gpu/drm/mediatek/mtk_disp_tdshp.c
new file mode 100644
index 000000000000..31f57c567137
--- /dev/null
+++ b/drivers/gpu/drm/mediatek/mtk_disp_tdshp.c
@@ -0,0 +1,167 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * MediaTek Two-Dimension Sharpness Processor (TDSHP)
+ *
+ * Copyright (c) 2025 MediaTek Inc.
+ * Copyright (c) 2026 Collabora Ltd.
+ *                    AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/component.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/soc/mediatek/mtk-cmdq.h>
+
+#include "mtk_disp_drv.h"
+#include "mtk_disp_ovl.h"
+#include "mtk_drm_drv.h"
+
+#define DISP_REG_TDSHP_EN			0x0000
+#  define DISP_TDSHP_TDS_EN			BIT(31)
+#define DISP_REG_TDSHP_CTRL			0x0100
+#  define DISP_TDSHP_CTRL_EN			BIT(0)
+#  define DISP_TDSHP_PWR_SCL_EN			BIT(2)
+#define DISP_REG_TDSHP_CFG			0x0110
+#  define DISP_TDSHP_RELAY_MODE			BIT(0)
+#define DISP_REG_TDSHP_INPUT_SIZE		0x0120
+#define DISP_REG_TDSHP_OUTPUT_OFFSET		0x0124
+#define DISP_REG_TDSHP_OUTPUT_SIZE		0x0128
+
+struct mtk_disp_tdshp {
+	void __iomem *regs;
+	struct clk *clk;
+	struct cmdq_client_reg cmdq_reg;
+};
+
+void mtk_tdshp_config(struct mtk_ddp_comp *comp, unsigned int w,
+		      unsigned int h, unsigned int vrefresh,
+		      unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
+{
+	struct mtk_disp_tdshp *tdshp = dev_get_drvdata(comp->dev);
+	u32 val = bpc == 8 ? DISP_TDSHP_PWR_SCL_EN : 0;
+
+	/* Set basic parameters to at least pass the data on */
+	mtk_ddp_write(cmdq_pkt, val | DISP_TDSHP_CTRL_EN, &tdshp->cmdq_reg,
+		      tdshp->regs, DISP_REG_TDSHP_CTRL);
+
+	mtk_ddp_write(cmdq_pkt, w << 16 | h, &tdshp->cmdq_reg,
+		      tdshp->regs, DISP_REG_TDSHP_INPUT_SIZE);
+	mtk_ddp_write(cmdq_pkt, w << 16 | h, &tdshp->cmdq_reg,
+		      tdshp->regs, DISP_REG_TDSHP_OUTPUT_SIZE);
+	mtk_ddp_write(cmdq_pkt, 0x0, &tdshp->cmdq_reg,
+		      tdshp->regs, DISP_REG_TDSHP_OUTPUT_OFFSET);
+
+	/* Set RELAY mode to bypass 2D Sharpness processing */
+	mtk_ddp_write(cmdq_pkt, DISP_TDSHP_RELAY_MODE, &tdshp->cmdq_reg,
+		      tdshp->regs, DISP_REG_TDSHP_CFG);
+
+	mtk_ddp_write_mask(cmdq_pkt, DISP_TDSHP_TDS_EN, &tdshp->cmdq_reg,
+			   tdshp->regs, DISP_REG_TDSHP_EN, DISP_TDSHP_TDS_EN);
+}
+
+void mtk_tdshp_start(struct device *dev)
+{
+	struct mtk_disp_tdshp *tdshp = dev_get_drvdata(dev);
+
+	writel(DISP_TDSHP_CTRL_EN, tdshp->regs + DISP_REG_TDSHP_CTRL);
+}
+
+void mtk_tdshp_stop(struct device *dev)
+{
+	struct mtk_disp_tdshp *tdshp = dev_get_drvdata(dev);
+
+	writel(0, tdshp->regs + DISP_REG_TDSHP_CTRL);
+}
+
+int mtk_tdshp_clk_enable(struct mtk_ddp_comp *comp)
+{
+	struct mtk_disp_tdshp *tdshp = dev_get_drvdata(comp->dev);
+
+	return clk_prepare_enable(tdshp->clk);
+}
+
+void mtk_tdshp_clk_disable(struct mtk_ddp_comp *comp)
+{
+	struct mtk_disp_tdshp *tdshp = dev_get_drvdata(comp->dev);
+
+	clk_disable_unprepare(tdshp->clk);
+}
+
+static int mtk_tdshp_bind(struct device *dev, struct device *master, void *data)
+{
+	return 0;
+}
+
+static void mtk_tdshp_unbind(struct device *dev, struct device *master, void *data)
+{
+}
+
+static const struct component_ops mtk_disp_tdshp_component_ops = {
+	.bind	= mtk_tdshp_bind,
+	.unbind = mtk_tdshp_unbind,
+};
+
+static int mtk_disp_tdshp_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct mtk_disp_tdshp *tdshp;
+	int ret = 0;
+
+	tdshp = devm_kzalloc(dev, sizeof(*tdshp), GFP_KERNEL);
+	if (!tdshp)
+		return -ENOMEM;
+
+	tdshp->regs = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(tdshp->regs))
+		return dev_err_probe(dev, PTR_ERR(tdshp->regs), "Cannot get reg resource\n");
+
+	tdshp->clk = devm_clk_get(dev, NULL);
+	if (IS_ERR(tdshp->clk))
+		return dev_err_probe(dev, PTR_ERR(tdshp->clk), "Cannot get clocks\n");
+
+#if IS_REACHABLE(CONFIG_MTK_CMDQ)
+	ret = cmdq_dev_get_client_reg(dev, &tdshp->cmdq_reg, 0);
+	if (ret)
+		dev_dbg(dev, "No mediatek,gce-client-reg\n");
+#endif
+	platform_set_drvdata(pdev, tdshp);
+
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return ret;
+
+	ret = component_add(dev, &mtk_disp_tdshp_component_ops);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to add component\n");
+
+	return 0;
+}
+
+static void mtk_disp_tdshp_remove(struct platform_device *pdev)
+{
+	component_del(&pdev->dev, &mtk_disp_tdshp_component_ops);
+}
+
+static const struct of_device_id mtk_disp_tdshp_driver_dt_match[] = {
+	{ .compatible = "mediatek,mt8196-disp-tdshp", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, mtk_disp_tdshp_driver_dt_match);
+
+struct platform_driver mtk_disp_tdshp_driver = {
+	.probe = mtk_disp_tdshp_probe,
+	.remove = mtk_disp_tdshp_remove,
+	.driver = {
+		.name = "mediatek-disp-tdshp",
+		.owner = THIS_MODULE,
+		.of_match_table = mtk_disp_tdshp_driver_dt_match,
+	},
+};
+
+MODULE_AUTHOR("AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>");
+MODULE_DESCRIPTION("MediaTek Display Controller 2D Sharpness Processor Driver");
+MODULE_LICENSE("GPL");
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 50b4f79295b3..b96cf2f435e5 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -699,6 +699,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
 	  .data = (void *)MTK_DISP_RDMA },
 	{ .compatible = "mediatek,mt8195-disp-rdma",
 	  .data = (void *)MTK_DISP_RDMA },
+	{ .compatible = "mediatek,mt8196-disp-tdshp",
+	  .data = (void *)MTK_DISP_TDSHP },
 	{ .compatible = "mediatek,mt8173-disp-ufoe",
 	  .data = (void *)MTK_DISP_UFOE },
 	{ .compatible = "mediatek,mt6893-disp-wdma",
@@ -1521,6 +1523,7 @@ static struct platform_driver * const mtk_drm_drivers[] = {
 	&mtk_disp_ovl_adaptor_driver,
 	&mtk_disp_ovl_driver,
 	&mtk_disp_rdma_driver,
+	&mtk_disp_tdshp_driver,
 	&mtk_disp_wdma_driver,
 	&mtk_dpi_driver,
 	&mtk_dvo_driver,
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
index 76325d1be5f4..8bdd7f1017b9 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
@@ -87,6 +87,7 @@ extern struct platform_driver mtk_disp_outproc_driver;
 extern struct platform_driver mtk_disp_ovl_adaptor_driver;
 extern struct platform_driver mtk_disp_ovl_driver;
 extern struct platform_driver mtk_disp_rdma_driver;
+extern struct platform_driver mtk_disp_tdshp_driver;
 extern struct platform_driver mtk_disp_wdma_driver;
 extern struct platform_driver mtk_dpi_driver;
 extern struct platform_driver mtk_dsi_driver;
diff --git a/include/linux/soc/mediatek/mtk-mmsys.h b/include/linux/soc/mediatek/mtk-mmsys.h
index d6742ca39d86..e33cb5b2638c 100644
--- a/include/linux/soc/mediatek/mtk-mmsys.h
+++ b/include/linux/soc/mediatek/mtk-mmsys.h
@@ -109,6 +109,8 @@ enum mtk_ddp_comp_type {
 	MTK_DISP_POSTMASK,
 	MTK_DISP_PWM,
 	MTK_DISP_RDMA,
+	MTK_DISP_RSZ,
+	MTK_DISP_TDSHP,
 	MTK_DISP_UFOE,
 	MTK_DISP_WDMA,
 
-- 
2.54.0


