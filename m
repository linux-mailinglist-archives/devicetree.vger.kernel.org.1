Return-Path: <devicetree+bounces-326172-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FrVPKp0lVmoY0AAAu9opvQ
	(envelope-from <devicetree+bounces-326172-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 14:03:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5387543BD
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 14:03:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=QMCkAMUm;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326172-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326172-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 28AE93096136
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:51:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0E2D3D5241;
	Tue, 14 Jul 2026 11:45:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233B73D0929;
	Tue, 14 Jul 2026 11:45:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784029534; cv=none; b=fC7XY6eSdkpeSgVpe1lwIkr1meqnzy0x7cuFLO/FcnjbWJqL3ZuqL1KMaDYhhrLLvM54ydeFqudaUO/jrZ/WMZhFnREy3BqRcrdBSzbCh4YpbkrUU5zRKLr/klmZ4LdLnGuZGWvu19JdZfKyZgboQ46I5guzXnWeysPChxgT5JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784029534; c=relaxed/simple;
	bh=+RNvN8o+DorYUwnGLpKjtWAbtLk/FnYny1vFGbiWUe8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qY8H7+hOR4VGQ94SLYLDiKdnOuz6BKB2OO5WBKBHGIcz3pn91YOpELdzXgjAhXBugl5tgjTm1FiZ2BZiNOHEh88lQJ6xBgbGLfl4BmcyRbqCiFqusQxB4OHAcYEPRZGSkeUKU4CExphm34nk1AGQ/ANhxYbeupOHsLcs/HEY3ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=QMCkAMUm; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784029529;
	bh=+RNvN8o+DorYUwnGLpKjtWAbtLk/FnYny1vFGbiWUe8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QMCkAMUmX6K4VU+LyCRTBlCh2EQQjTWvIf+IprGu27OgAuMTVaFzIvw1TZdGawaCt
	 7nc24zK83WQccFmBlHNCGaqpcn8J3jwbou0R5KnBjucEzam7x6e4hKdObdbHlo+OYK
	 QW9FTryoQEIfkWortzudSfm+U6SGJPwieZilETquv1EFOAijHn0ZtWXHf993KiPR5W
	 dzlVk2QhcVJqOUohKlOnRJXXRIskIj+9Ei1XLrG3kVjlqDzLacizCWVJUY1ISCqNVv
	 4zXkq9Wft1NrXVrlvJWVhWUdrTHYEi56xRVZQLFdVIwy4Cq53GpR4YCSVFtGxV3MpZ
	 GLJl9Xj5Iva2Q==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9D33617E0FD2;
	Tue, 14 Jul 2026 13:45:28 +0200 (CEST)
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
Subject: [PATCH v2 45/46] drm/mediatek: Add support for Display Image Resizer (Scaler)
Date: Tue, 14 Jul 2026 13:44:13 +0200
Message-ID: <20260714114414.184512-46-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260714114414.184512-1-angelogioacchino.delregno@collabora.com>
References: <20260714114414.184512-1-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,collabora.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,mediatek.com];
	TAGGED_FROM(0.00)[bounces-326172-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:from_mime,collabora.com:mid,collabora.com:email,collabora.com:dkim,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2A5387543BD

Add basic support for the Image Resizer hardware found in some
MediaTek Display Controller IPs, like the one found in MT8196.

This is currently set in bypass mode and used to pass the frame
buffer from a RSZ input component to supported RSZ outputs.
Full implementation of hardware-accelerated DRM scaling will be
done later.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_ddp_comp.c | 23 +++++++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_drv.c  |  2 ++
 2 files changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
index e1873a20e64b..453a4a9ad565 100644
--- a/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_ddp_comp.c
@@ -56,6 +56,10 @@
 #define POSTMASK_RELAY_MODE				BIT(0)
 #define DISP_REG_POSTMASK_SIZE			0x0030
 
+#define DISP_REG_RSZ_EN				0x0000
+#define DISP_REG_RSZ_INPUT_SIZE			0x0010
+#define DISP_REG_RSZ_OUTPUT_SIZE		0x0014
+
 #define DISP_REG_UFO_START			0x0000
 #define UFO_BYPASS				BIT(2)
 
@@ -230,6 +234,16 @@ static void mtk_postmask_stop(struct device *dev)
 	writel_relaxed(0x0, priv->regs + DISP_REG_POSTMASK_EN);
 }
 
+static void mtk_rsz_config(struct mtk_ddp_comp *comp, unsigned int w,
+			   unsigned int h, unsigned int vrefresh,
+			   unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
+{
+	struct mtk_ddp_comp_dev *priv = dev_get_drvdata(comp->dev);
+
+	mtk_ddp_write(cmdq_pkt, 0, &priv->cmdq_reg, priv->regs, DISP_REG_RSZ_INPUT_SIZE);
+	mtk_ddp_write(cmdq_pkt, 0, &priv->cmdq_reg, priv->regs, DISP_REG_RSZ_OUTPUT_SIZE);
+}
+
 static void mtk_ufoe_start(struct device *dev)
 {
 	struct mtk_ddp_comp_dev *priv = dev_get_drvdata(dev);
@@ -414,6 +428,12 @@ static const struct mtk_ddp_comp_funcs ddp_rdma = {
 	.get_num_formats = mtk_rdma_get_num_formats,
 };
 
+static const struct mtk_ddp_comp_funcs ddp_rsz = {
+	.clk_enable = mtk_ddp_clk_enable,
+	.clk_disable = mtk_ddp_clk_disable,
+	.config = mtk_rsz_config,
+};
+
 static const struct mtk_ddp_comp_funcs ddp_tdshp = {
 	.clk_enable = mtk_tdshp_clk_enable,
 	.clk_disable = mtk_tdshp_clk_disable,
@@ -489,6 +509,7 @@ static const char * const mtk_ddp_comp_stem[MTK_DDP_COMP_TYPE_MAX] = {
 	[MTK_DISP_POSTMASK] = "postmask",
 	[MTK_DISP_PWM] = "pwm",
 	[MTK_DISP_RDMA] = "rdma",
+	[MTK_DISP_RSZ] = "resizer",
 	[MTK_DISP_TDSHP] = "tdshp",
 	[MTK_DISP_UFOE] = "ufoe",
 	[MTK_DISP_WDMA] = "wdma",
@@ -517,6 +538,7 @@ static const struct mtk_ddp_comp_funcs *mtk_ddp_funcs[MTK_DDP_COMP_TYPE_MAX] = {
 	[MTK_DISP_POSTMASK]		= &ddp_postmask,
 	[MTK_DISP_PWM]			= NULL,
 	[MTK_DISP_RDMA]			= &ddp_rdma,
+	[MTK_DISP_RSZ]			= &ddp_rsz,
 	[MTK_DISP_TDSHP]		= &ddp_tdshp,
 	[MTK_DISP_UFOE]			= &ddp_ufoe,
 	[MTK_DISP_WDMA]			= &ddp_wdma,
@@ -677,6 +699,7 @@ bool mtk_ddp_comp_is_internal_comp(enum mtk_ddp_comp_type type)
 	case MTK_DISP_DITHER:
 	case MTK_DISP_OD:
 	case MTK_DISP_POSTMASK:
+	case MTK_DISP_RSZ:
 	case MTK_DISP_UFOE:
 		return true;
 	default:
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 6cf285f1879d..82d844b6abf7 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -714,6 +714,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
 	  .data = (void *)MTK_DISP_RDMA },
 	{ .compatible = "mediatek,mt8195-disp-rdma",
 	  .data = (void *)MTK_DISP_RDMA },
+	{ .compatible = "mediatek,mt8196-disp-rsz",
+	  .data = (void *)MTK_DISP_RSZ },
 	{ .compatible = "mediatek,mt8196-disp-tdshp",
 	  .data = (void *)MTK_DISP_TDSHP },
 	{ .compatible = "mediatek,mt8173-disp-ufoe",
-- 
2.54.0


