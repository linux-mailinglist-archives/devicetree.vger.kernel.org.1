Return-Path: <devicetree+bounces-56241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F05E8982F1
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 10:17:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD3161C25D07
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 08:17:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AC0F6CDDC;
	Thu,  4 Apr 2024 08:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="xfarpw8k"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78D467A01;
	Thu,  4 Apr 2024 08:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712218610; cv=none; b=sc9sWFx2AQTls8MaXFHGFnjjcQGRAKYDUlRiL5dKDSMdCABdfp9jGdysn1RJtrmx37d9Cz2h6T6wDg1ZGuyaOIrDul4fX/PQusoGyjT0cDX7hX9N7840blZtej1VPURDlX7gjFkqsvNhGtfdtOBi/kccOX7GozmAmpIiWTY0K+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712218610; c=relaxed/simple;
	bh=ExY6I4J84z8gpp7wlw34NeywQ9uxLEtxSSeCgxF7oc8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UjwtG4VwOVDtu4mbkFmMx0RwWDpItDnzReNCHSIqZSDm6ayWE4BkGKqG3++CCweq1IAEhDABWC54HrGOTH4KkfFmpq82hJy/k5Ms8WaHD+d3k1wOZW5BtmCSFC+y1UlceJaYxteeFBivopTSdKROoXUeovKwh9BN14eenDpBYg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=xfarpw8k; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1712218606;
	bh=ExY6I4J84z8gpp7wlw34NeywQ9uxLEtxSSeCgxF7oc8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=xfarpw8kvG2vo8g2ugxn0Zz7tL8hcCQA5nM6CqvlY0KXItSYTu/g8MgkSX9tgtFRG
	 VNIsDfpuiD+zChskb/V8cWPFwdy9MIwJMKCn7+gl8WfqHtcopAoJmQT02JxGw7YPkM
	 ApqM2k4FMR35/FbDfQAhn70Fuyv9HyNhVtkqKzsjcy6y0/Sj6i9jEFSQyz5rlAfLTT
	 zFaXPH4tIOPz0z2YSt1XTYj1IiolcVssfoOXylJWSoLzKNA5Vu1vcY/2XdJgxO0FWN
	 UTDVMvNEr8pvYr+ALXudK4FZjYLLecQGf69N3b4uEzWdT2aADAzD0PQ0VAl+9ZoXPH
	 DVGWuqQC2hvlA==
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 0758C378212D;
	Thu,  4 Apr 2024 08:16:44 +0000 (UTC)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunkuang.hu@kernel.org
Cc: robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	shawn.sung@mediatek.com,
	yu-chang.lee@mediatek.com,
	ck.hu@mediatek.com,
	jitao.shi@mediatek.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	wenst@chromium.org,
	kernel@collabora.com
Subject: [PATCH v1 3/3] drm/mediatek: Implement OF graphs support for display paths
Date: Thu,  4 Apr 2024 10:16:35 +0200
Message-ID: <20240404081635.91412-4-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240404081635.91412-1-angelogioacchino.delregno@collabora.com>
References: <20240404081635.91412-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It is impossible to add each and every possible DDP path combination
for each and every possible combination of SoC and board: right now,
this driver hardcodes configuration for 10 SoCs and this is going to
grow larger and larger, and with new hacks like the introduction of
mtk_drm_route which is anyway not enough for all final routes as the
DSI cannot be connected to MERGE if it's not a dual-DSI, or enabling
DSC preventively doesn't work if the display doesn't support it, or
others.

Since practically all display IPs in MediaTek SoCs support being
interconnected with different instances of other, or the same, IPs
or with different IPs and in different combinations, the final DDP
pipeline is effectively a board specific configuration.

Implement OF graphs support to the mediatek-drm drivers, allowing to
stop hardcoding the paths, and preventing this driver to get a huge
amount of arrays for each board and SoC combination, also paving the
way to share the same mtk_mmsys_driver_data between multiple SoCs,
making it more straightforward to add support for new chips.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c     |  16 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 255 ++++++++++++++++++++++---
 drivers/gpu/drm/mediatek/mtk_drm_drv.h |   2 +-
 drivers/gpu/drm/mediatek/mtk_dsi.c     |  10 +-
 4 files changed, 250 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index beb7d9d08e97..c47648d244fe 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -705,6 +705,15 @@ static int mtk_dpi_bridge_attach(struct drm_bridge *bridge,
 {
 	struct mtk_dpi *dpi = bridge_to_dpi(bridge);
 
+	dpi->next_bridge = devm_drm_of_get_bridge(dpi->dev, dpi->dev->of_node, 1, -1);
+	if (IS_ERR(dpi->next_bridge)) {
+		/* Old devicetree has only one endpoint */
+		dpi->next_bridge = devm_drm_of_get_bridge(dpi->dev, dpi->dev->of_node, 0, 0);
+		if (IS_ERR(dpi->next_bridge))
+			return dev_err_probe(dpi->dev, PTR_ERR(dpi->next_bridge),
+					     "Failed to get bridge\n");
+	}
+
 	return drm_bridge_attach(bridge->encoder, dpi->next_bridge,
 				 &dpi->bridge, flags);
 }
@@ -1055,13 +1064,6 @@ static int mtk_dpi_probe(struct platform_device *pdev)
 	if (dpi->irq < 0)
 		return dpi->irq;
 
-	dpi->next_bridge = devm_drm_of_get_bridge(dev, dev->of_node, 0, 0);
-	if (IS_ERR(dpi->next_bridge))
-		return dev_err_probe(dev, PTR_ERR(dpi->next_bridge),
-				     "Failed to get bridge\n");
-
-	dev_info(dev, "Found bridge node: %pOF\n", dpi->next_bridge->of_node);
-
 	platform_set_drvdata(pdev, dpi);
 
 	dpi->bridge.funcs = &mtk_dpi_bridge_funcs;
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 2804bf0bc28d..7691aa7779c1 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -810,12 +810,200 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
 	{ }
 };
 
+static int mtk_drm_of_get_ddp_comp_type(struct device_node *node, enum mtk_ddp_comp_type *ctype)
+{
+	const struct of_device_id *of_id = of_match_node(mtk_ddp_comp_dt_ids, node);
+
+	if (!of_id)
+		return -EINVAL;
+
+	*ctype = (enum mtk_ddp_comp_type)((uintptr_t)of_id->data);
+
+	return 0;
+}
+
+static int mtk_drm_of_get_ddp_ep_cid(struct device_node *node,
+				     int output_port, enum mtk_drm_crtc_path crtc_path,
+				     struct device_node **next, unsigned int *cid)
+{
+	struct device_node *ep_dev_node, *ep_out;
+	enum mtk_ddp_comp_type comp_type;
+	int ret;
+
+	ep_out = of_graph_get_endpoint_by_regs(node, output_port, crtc_path);
+	if (!ep_out)
+		return -ENOENT;
+
+	ep_dev_node = of_graph_get_remote_port_parent(ep_out);
+	if (!ep_dev_node)
+		return -EINVAL;
+
+	/*
+	 * Pass the next node pointer regardless of failures in the later code
+	 * so that if this function is called in a loop it will walk through all
+	 * of the subsequent endpoints anyway.
+	 */
+	*next = ep_dev_node;
+
+	if (!of_device_is_available(ep_dev_node))
+		return -ENODEV;
+
+	ret = mtk_drm_of_get_ddp_comp_type(ep_dev_node, &comp_type);
+	if (ret)
+		return ret;
+
+	ret = mtk_ddp_comp_get_id(ep_dev_node, comp_type);
+	if (ret < 0)
+		return ret;
+
+	/* All ok! Pass the Component ID to the caller. */
+	*cid = (unsigned int)ret;
+
+	return 0;
+}
+
+/**
+ * mtk_drm_of_ddp_path_build_one - Build a Display HW Pipeline for a CRTC Path
+ * @dev:          The mediatek-drm device
+ * @cpath:        CRTC Path relative to a VDO or MMSYS
+ * @out_path:     Pointer to an array that will contain the new pipeline
+ * @out_path_len: Number of entries in the pipeline array
+ *
+ * MediaTek SoCs can use different DDP hardware pipelines (or paths) depending
+ * on the board-specific desired display configuration; this function walks
+ * through all of the output endpoints starting from a VDO or MMSYS hardware
+ * instance and builds the right pipeline as specified in device trees.
+ *
+ * Return:
+ * * %0       - Display HW Pipeline successfully built and validated
+ * * %-ENOENT - Display pipeline was not specified in device tree
+ * * %-EINVAL - Display pipeline built but validation failed
+ * * %-ENOMEM - Failure to allocate pipeline array to pass to the caller
+ */
+static int mtk_drm_of_ddp_path_build_one(struct device *dev, enum mtk_drm_crtc_path cpath,
+					 const unsigned int **out_path,
+					 unsigned int *out_path_len)
+{
+	struct device_node *next, *prev, *vdo = dev->parent->of_node;
+	unsigned int temp_path[DDP_COMPONENT_DRM_ID_MAX] = { 0 };
+	unsigned int *final_ddp_path;
+	unsigned short int idx = 0;
+	int ret;
+
+	/* Get the first entry for the temp_path array */
+	ret = mtk_drm_of_get_ddp_ep_cid(vdo, 0, cpath, &next, &temp_path[idx++]);
+	if (ret) {
+		if (next)
+			dev_err(dev, "Invalid component %pOF\n", next);
+		else
+			dev_err(dev, "Cannot find first endpoint for path %d\n", cpath);
+
+		return ret;
+	}
+
+	/*
+	 * Walk through port outputs until we reach the last valid mediatek-drm component.
+	 * To be valid, this must end with an "invalid" component that is a display node.
+	 */
+	do {
+		prev = next;
+		ret = mtk_drm_of_get_ddp_ep_cid(next, 1, cpath, &next, &temp_path[idx]);
+		of_node_put(prev);
+		if (ret) {
+			of_node_put(next);
+			break;
+		}
+	} while (++idx < DDP_COMPONENT_DRM_ID_MAX);
+
+	/* If the last entry is not a final display output, the configuration is wrong */
+	switch (temp_path[idx - 1]) {
+	case DDP_COMPONENT_DP_INTF0:
+	case DDP_COMPONENT_DP_INTF1:
+	case DDP_COMPONENT_DPI0:
+	case DDP_COMPONENT_DPI1:
+	case DDP_COMPONENT_DSI0:
+	case DDP_COMPONENT_DSI1:
+	case DDP_COMPONENT_DSI2:
+	case DDP_COMPONENT_DSI3:
+		break;
+	default:
+		dev_err(dev, "Invalid display hw pipeline. Last component: %d (ret=%d)\n",
+			temp_path[idx - 1], ret);
+		return -EINVAL;
+	}
+
+	final_ddp_path = devm_kmemdup(dev, temp_path, idx * sizeof(temp_path[0]), GFP_KERNEL);
+	if (!final_ddp_path)
+		return -ENOMEM;
+
+	dev_dbg(dev, "Display HW Pipeline built with %d components.\n", idx);
+
+	/* Pipeline built! */
+	*out_path = final_ddp_path;
+	*out_path_len = idx;
+
+	return 0;
+}
+
+static int mtk_drm_of_ddp_path_build(struct device *dev, struct device_node *node,
+				     struct mtk_mmsys_driver_data *data)
+{
+	struct device_node *ep_node;
+	struct of_endpoint of_ep;
+	bool output_present[MAX_CRTC] = { false };
+	int ret;
+
+	for_each_endpoint_of_node(node, ep_node) {
+		ret = of_graph_parse_endpoint(ep_node, &of_ep);
+		of_node_put(ep_node);
+		if (ret) {
+			dev_err_probe(dev, ret, "Cannot parse endpoint\n");
+			break;
+		}
+
+		if (of_ep.port >= MAX_CRTC) {
+			ret = dev_err_probe(dev, -EINVAL,
+					    "Invalid endpoint%u number\n", of_ep.port);
+			break;
+		}
+
+		output_present[of_ep.port] = true;
+	}
+
+	if (ret)
+		return ret;
+
+	if (output_present[CRTC_MAIN]) {
+		ret = mtk_drm_of_ddp_path_build_one(dev, CRTC_MAIN,
+						    &data->main_path, &data->main_len);
+		if (ret)
+			return ret;
+	}
+
+	if (output_present[CRTC_EXT]) {
+		ret = mtk_drm_of_ddp_path_build_one(dev, CRTC_EXT,
+						    &data->ext_path, &data->ext_len);
+		if (ret)
+			return ret;
+	}
+
+	if (output_present[CRTC_THIRD]) {
+		ret = mtk_drm_of_ddp_path_build_one(dev, CRTC_THIRD,
+						    &data->third_path, &data->third_len);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 static int mtk_drm_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *phandle = dev->parent->of_node;
 	const struct of_device_id *of_id;
 	struct mtk_drm_private *private;
+	struct mtk_mmsys_driver_data *mtk_drm_data;
 	struct device_node *node;
 	struct component_match *match = NULL;
 	struct platform_device *ovl_adaptor;
@@ -836,7 +1024,31 @@ static int mtk_drm_probe(struct platform_device *pdev)
 	if (!of_id)
 		return -ENODEV;
 
-	private->data = of_id->data;
+	mtk_drm_data = (struct mtk_mmsys_driver_data *)of_id->data;
+	if (!mtk_drm_data)
+		return -EINVAL;
+
+	private->data = kmemdup(mtk_drm_data, sizeof(*mtk_drm_data), GFP_KERNEL);
+	if (!private->data)
+		return -ENOMEM;
+
+	/* Try to build the display pipeline from devicetree graphs */
+	if (of_graph_is_present(phandle)) {
+		dev_dbg(dev, "Building display pipeline for MMSYS %u\n",
+			mtk_drm_data->mmsys_id);
+		private->data = devm_kmemdup(dev, mtk_drm_data,
+					     sizeof(*mtk_drm_data), GFP_KERNEL);
+		if (!private->data)
+			return -ENOMEM;
+
+		ret = mtk_drm_of_ddp_path_build(dev, phandle, private->data);
+		if (ret)
+			return ret;
+	} else {
+		/* No devicetree graphs support: go with hardcoded paths if present */
+		dev_dbg(dev, "Using hardcoded paths for MMSYS %u\n", mtk_drm_data->mmsys_id);
+		private->data = mtk_drm_data;
+	};
 
 	private->all_drm_private = devm_kmalloc_array(dev, private->data->mmsys_dev_num,
 						      sizeof(*private->all_drm_private),
@@ -858,12 +1070,11 @@ static int mtk_drm_probe(struct platform_device *pdev)
 
 	/* Iterate over sibling DISP function blocks */
 	for_each_child_of_node(phandle->parent, node) {
-		const struct of_device_id *of_id;
 		enum mtk_ddp_comp_type comp_type;
 		int comp_id;
 
-		of_id = of_match_node(mtk_ddp_comp_dt_ids, node);
-		if (!of_id)
+		ret = mtk_drm_of_get_ddp_comp_type(node, &comp_type);
+		if (ret)
 			continue;
 
 		if (!of_device_is_available(node)) {
@@ -872,8 +1083,6 @@ static int mtk_drm_probe(struct platform_device *pdev)
 			continue;
 		}
 
-		comp_type = (enum mtk_ddp_comp_type)(uintptr_t)of_id->data;
-
 		if (comp_type == MTK_DISP_MUTEX) {
 			int id;
 
@@ -902,22 +1111,24 @@ static int mtk_drm_probe(struct platform_device *pdev)
 		 * blocks have separate component platform drivers and initialize their own
 		 * DDP component structure. The others are initialized here.
 		 */
-		if (comp_type == MTK_DISP_AAL ||
-		    comp_type == MTK_DISP_CCORR ||
-		    comp_type == MTK_DISP_COLOR ||
-		    comp_type == MTK_DISP_GAMMA ||
-		    comp_type == MTK_DISP_MERGE ||
-		    comp_type == MTK_DISP_OVL ||
-		    comp_type == MTK_DISP_OVL_2L ||
-		    comp_type == MTK_DISP_OVL_ADAPTOR ||
-		    comp_type == MTK_DISP_RDMA ||
-		    comp_type == MTK_DP_INTF ||
-		    comp_type == MTK_DPI ||
-		    comp_type == MTK_DSI) {
-			dev_info(dev, "Adding component match for %pOF\n",
-				 node);
-			drm_of_component_match_add(dev, &match, component_compare_of,
-						   node);
+		switch (comp_type) {
+		default:
+			break;
+		case MTK_DISP_AAL:
+		case MTK_DISP_CCORR:
+		case MTK_DISP_COLOR:
+		case MTK_DISP_GAMMA:
+		case MTK_DISP_MERGE:
+		case MTK_DISP_OVL:
+		case MTK_DISP_OVL_2L:
+		case MTK_DISP_OVL_ADAPTOR:
+		case MTK_DISP_RDMA:
+		case MTK_DP_INTF:
+		case MTK_DPI:
+		case MTK_DSI:
+			dev_info(dev, "Adding component match for %pOF\n", node);
+			drm_of_component_match_add(dev, &match, component_compare_of, node);
+			break;
 		}
 
 		ret = mtk_ddp_comp_init(node, &private->ddp_comp[comp_id], comp_id);
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
index 06bb12243e52..de36328503b9 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
@@ -75,7 +75,7 @@ struct mtk_drm_private {
 	struct device *mmsys_dev;
 	struct device_node *comp_node[DDP_COMPONENT_DRM_ID_MAX];
 	struct mtk_ddp_comp ddp_comp[DDP_COMPONENT_DRM_ID_MAX];
-	const struct mtk_mmsys_driver_data *data;
+	struct mtk_mmsys_driver_data *data;
 	struct drm_atomic_state *suspend_state;
 	unsigned int mbox_index;
 	struct mtk_drm_private **all_drm_private;
diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 9501f4019199..1bdbe43e3888 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -903,9 +903,13 @@ static int mtk_dsi_host_attach(struct mipi_dsi_host *host,
 	dsi->lanes = device->lanes;
 	dsi->format = device->format;
 	dsi->mode_flags = device->mode_flags;
-	dsi->next_bridge = devm_drm_of_get_bridge(dev, dev->of_node, 0, 0);
-	if (IS_ERR(dsi->next_bridge))
-		return PTR_ERR(dsi->next_bridge);
+	dsi->next_bridge = devm_drm_of_get_bridge(dev, dev->of_node, 1, 0);
+	if (IS_ERR(dsi->next_bridge)) {
+		/* Old devicetree has only one endpoint */
+		dsi->next_bridge = devm_drm_of_get_bridge(dev, dev->of_node, 0, 0);
+		if (IS_ERR(dsi->next_bridge))
+			return PTR_ERR(dsi->next_bridge);
+	}
 
 	drm_bridge_add(&dsi->bridge);
 
-- 
2.44.0


