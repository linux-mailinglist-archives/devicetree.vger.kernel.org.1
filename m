Return-Path: <devicetree+bounces-318518-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JniAH8cJRWps5goAu9opvQ
	(envelope-from <devicetree+bounces-318518-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:36:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7396ED69F
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:36:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b="f/FSdYij";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318518-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318518-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9421B3071FD8
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:30:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D4734DB546;
	Wed,  1 Jul 2026 12:21:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5360A4DA52C;
	Wed,  1 Jul 2026 12:21:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908508; cv=none; b=YTLYYE5RvaebkFcfFP5Aq9ndDX18mxYVWtDi8WYpOMzdcgMisiqJxRvMs+Ya8tAU78G9yMOe4xEJzXzga0B2L5A4zJiJ6swrS+bY9HDImYFPbfM0HU7mQglKjC5GtanRDxZtfepmeWeF2qSS9GJsbft6zM1YQ/AAvLOU0vj3nzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908508; c=relaxed/simple;
	bh=BletofGxTLJKLtOCpRi+bIeuCm9Svwd3CTzjPRNS3zs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Sqx6RrMcVQVdh1il5a5sBAn+G0tPlY1al24MEs2aOtR3kje7IfmkPvPJS4uLgiama+HD1W8LQFWQfuESegDhar+Rx3CyVuKqnMcMubvZWZnyCHjzfCo1JmpcNLZZuVfHPvI5GvxIAFzL5LD1P+16PY9UXcpaFMqw+/T7Zm5ZMeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=f/FSdYij; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908504;
	bh=BletofGxTLJKLtOCpRi+bIeuCm9Svwd3CTzjPRNS3zs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=f/FSdYijfGUmt0/hjbGg38KesEluMgbvlg7gpLIRdltr09Kna6h27IwH1IGW0+Smr
	 HSfQ52Znb37OtzM64K+zSGhV5SEPxIBrEL2ouZxrZNjPzxNNM8WE4DtuLpeDL8tv5R
	 J3mMbwPIXmO6CGF4Zjs7z05Lznb4g1hHbAYW06m4GPuJfBch7dbJWL6bsHtIGC4yAb
	 2zMrX2TjcQUW9i/RY0Jk+ElxlU/6E8EsZmvJYZEgQbE9bx5T05zE2ZSOeRg2qteDXE
	 pKE7P1AmPFlUtoSkNAyo8Q8oEx+ZPvt/6+vyuDrUweda9jXqqiknVj3LiOsFLHxUWz
	 M0N+FDDAlHuXQ==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 22C7B17E35D6;
	Wed,  1 Jul 2026 14:21:44 +0200 (CEST)
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
Subject: [PATCH 32/42] drm/mediatek: mtk_crtc: Dynamically find suitable CRTC DMA device
Date: Wed,  1 Jul 2026 14:20:47 +0200
Message-ID: <20260701122057.19648-33-angelogioacchino.delregno@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,collabora.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,mediatek.com];
	TAGGED_FROM(0.00)[bounces-318518-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2E7396ED69F

Now that the vblank and config components are being dynamically
selected, the only hardcoded strategy that is left is selecting
a DMA device for a CRTC that is being created.

In order to support pipelines including an embedded multimedia
controller (like MDP3) chained with the display controller and
pipelines chaining multiple display controllers together, stop
assuming that the first component in the pipeline is suited to
do DMA operations and implement support to dynamically find not
only a suitable DMA device, but also the best one.

This finds the first device that provides DMA and the first one
that is also behind an IOMMU.

The criteria for selecting the best device is to prefer a DMA
device behind an IOMMU; if not found, the first DMA capable
one is selected instead.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_crtc.c | 68 ++++++++++++++++++++++++-----
 1 file changed, 56 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_crtc.c b/drivers/gpu/drm/mediatek/mtk_crtc.c
index ee23a50cf4d1..3f70d11270e9 100644
--- a/drivers/gpu/drm/mediatek/mtk_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_crtc.c
@@ -1131,6 +1131,60 @@ struct device *mtk_crtc_dma_dev_get(struct drm_crtc *crtc)
 	return mtk_crtc->dma_dev;
 }
 
+static int mtk_crtc_find_suitable_dma_dev(struct mtk_drm_private *priv,
+					  struct mtk_crtc *mtk_crtc,
+					  const struct mtk_drm_path_definition *path)
+{
+	struct mtk_ddp_comp *dma_comp = NULL, *dma_comp_mmu = NULL;
+	int i;
+
+	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
+		const struct mtk_drm_comp_definition *cdef = path[i].comp;
+		struct mtk_ddp_comp *comp;
+
+		comp = mtk_ddp_comp_find_by_id(&priv->hlist,
+					       cdef->type, cdef->inst_id);
+		if (!comp)
+			continue;
+
+		/*
+		 * Check if this is a legacy OVL_ADAPTOR component and, if so, this
+		 * has to forcefully be the DMA device for this CRTC: assign it to
+		 * dma_comp_mmu to force that.
+		 */
+		if (comp->type == MTK_DISP_OVL_ADAPTOR) {
+			dma_comp_mmu = comp;
+			break;
+		}
+
+		if (!comp->dev || !comp->dev->of_node)
+			continue;
+
+		/* Find the first device provides DMA... */
+		if (!dma_comp) {
+			if (of_property_present(comp->dev->of_node, "#dma-cells"))
+				dma_comp = comp;
+		}
+
+		/* ...and check if that device is also behind an IOMMU */
+		if (!of_property_present(comp->dev->of_node, "iommus"))
+			continue;
+
+		/* If a device behind IOMMU is found, this is the best outcome */
+		dma_comp_mmu = comp;
+		break;
+	}
+
+	if (dma_comp_mmu)
+		mtk_crtc->dma_dev = mtk_ddp_comp_dma_dev_get(dma_comp_mmu);
+	else if (dma_comp)
+		mtk_crtc->dma_dev = mtk_ddp_comp_dma_dev_get(dma_comp);
+	else
+		return -EINVAL;
+
+	return 0;
+}
+
 int mtk_crtc_create(struct drm_device *drm_dev,
 		    enum mtk_crtc_path path_sel, int priv_data_index,
 		    const struct mtk_drm_route *conn_routes,
@@ -1139,7 +1193,6 @@ int mtk_crtc_create(struct drm_device *drm_dev,
 	struct mtk_drm_private *priv = drm_dev->dev_private;
 	const struct mtk_drm_path_definition *output_path;
 	struct device *dev = drm_dev->dev;
-	struct mtk_ddp_comp *dma_comp;
 	struct mtk_crtc *mtk_crtc;
 	unsigned int num_comp_planes = 0;
 	unsigned int max_comp_stages = 0;
@@ -1309,20 +1362,11 @@ int mtk_crtc_create(struct drm_device *drm_dev,
 	dev_dbg(dev, "Found %u layers composed by maximum of %u stage(s) each.\n",
 		mtk_crtc->hwlayer_nr, max_comp_stages);
 
-	/*
-	 * Default to use the first component as the dma dev.
-	 * In the case of ovl_adaptor sub driver, it needs to use the
-	 * dma_dev_get function to get representative dma dev.
-	 */
-	dma_comp = mtk_ddp_comp_find_by_id(&priv->hlist,
-					   output_path->comp[0].type,
-					   output_path->comp[0].inst_id);
-	if (dma_comp == NULL) {
+	ret = mtk_crtc_find_suitable_dma_dev(priv, mtk_crtc, output_path);
+	if (ret) {
 		dev_err(dev, "Could not find appropriate DMA device!\n");
 		return -EINVAL;
 	}
-
-	mtk_crtc->dma_dev = mtk_ddp_comp_dma_dev_get(dma_comp);
 	dev_dbg(dev, "Using DMA device %pOF\n", mtk_crtc->dma_dev->of_node);
 
 	ret = mtk_crtc_init(drm_dev, mtk_crtc, crtc_i);
-- 
2.54.0


