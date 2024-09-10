Return-Path: <devicetree+bounces-101648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E602972CC4
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 11:02:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A03B7B219DB
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 09:02:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF90818953A;
	Tue, 10 Sep 2024 09:01:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="BvDPm/nk";
	dkim=pass (1024-bit key) header.d=amazonses.com header.i=@amazonses.com header.b="d5AJf7Vi"
X-Original-To: devicetree@vger.kernel.org
Received: from a7-40.smtp-out.eu-west-1.amazonses.com (a7-40.smtp-out.eu-west-1.amazonses.com [54.240.7.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A4B188A3A;
	Tue, 10 Sep 2024 09:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.240.7.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725958908; cv=none; b=q+xWW5RIoL8Ac185wnIKXKrptSyslE37t4YYKs0s2p5a2xSJejUlzhUfElg5WNjiBU5RG1UE59wSNHj1JQmQXArM3+HCAdcQQOpAHiilde3xdquPCB0usIt0ZY7yillKDELCNWWtkXNI7Ti0CyVJjzonYKKv7/BtACOCY97HhQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725958908; c=relaxed/simple;
	bh=JlTyMwnNJF9UR9+enf/QFeetTdghml5+qAzSfXtjZuU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=paycfONRbU82qKYOO3WO9h0NndWW60vNKYcA1+1VIIVGgCs3ewnOHPwGVkgoVoZew4H7F4bhfAOzeJgVhby/Xyx7iMmCd2EK5TrYE/fFMhhyIostgtMklyGKW0J4DPc9+7elihquYpFS5wXMz4LpB2b2N1fm8rs7emsVbYLEWZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=amazonses.collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=BvDPm/nk; dkim=pass (1024-bit key) header.d=amazonses.com header.i=@amazonses.com header.b=d5AJf7Vi; arc=none smtp.client-ip=54.240.7.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amazonses.collabora.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1725958904;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding;
	bh=JlTyMwnNJF9UR9+enf/QFeetTdghml5+qAzSfXtjZuU=;
	b=BvDPm/nkNIZufZprMYEbLFvw4HDmIbGblOs4u1zOK5NUHojHIr6j3gxu1cvHMNvi
	DCHgzuIjrPDC9BZh2NmmGFgc+zpT88NBD5pTjIM6mNZJc7CUkKthlfjd5mriSYdcwD8
	3E/RhYQpQ+IwCu8zjkh9QQJkz5kp0Czaefa+3wEG0wA5g6f31Ss18haT97L3rEtxMjc
	hB1V2vbak0nPQy4L7Xhh7ZoC7Xb23+mjIV9NPM7EmKONjw3ghOIuljt3q1ND4u4VEmm
	RFwmphfs6QOo/CrqtawLWOKwCddgZMrIlT0GLJaCZCcss6iThkh7ZP5mdT66ylZK7le
	p/Y6/ilCAA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1725958904;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=JlTyMwnNJF9UR9+enf/QFeetTdghml5+qAzSfXtjZuU=;
	b=d5AJf7ViW1jfbrMbsf3MqLm4mLbWQWgK4VEfP/+7c9RgSUkeVod3nBI4RG6ZM3+3
	XLRz7LVKPNK4xYkEqQov8/rl5eYHqnmxN3GE+LG7gDE932jQMP1d9lD7CUppM8RdbTr
	KiulsqN5K8ne0jf4rLksYf3z6UNx3n4mS+OLDkzE=
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunkuang.hu@kernel.org
Cc: robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, shawn.sung@mediatek.com, 
	yu-chang.lee@mediatek.com, ck.hu@mediatek.com, 
	jitao.shi@mediatek.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, wenst@chromium.org, 
	kernel@collabora.com, sui.jingfeng@linux.dev, michael@walle.cc, 
	sjoerd@collabora.com, Alexandre Mergnat <amergnat@baylibre.com>, 
	Michael Walle <mwalle@kernel.org>
Subject: [PATCH v9 3/3] drm/mediatek: Implement OF graphs support for display paths
Date: Tue, 10 Sep 2024 09:01:44 +0000
Message-ID: <01020191db2adb7b-522d2ce1-e041-4a09-995d-de799c48406d-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240910090127.78905-1-angelogioacchino.delregno@collabora.com>
References: <20240910090127.78905-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.09.10-54.240.7.40

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

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
Tested-by: Alexandre Mergnat <amergnat@baylibre.com>
Acked-by: Sui Jingfeng <sui.jingfeng@linux.dev>
Tested-by: Michael Walle <mwalle@kernel.org> # on kontron-sbc-i1200
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_disp_drv.h       |   1 +
 .../gpu/drm/mediatek/mtk_disp_ovl_adaptor.c   |  40 ++-
 drivers/gpu/drm/mediatek/mtk_dpi.c            |  21 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        | 253 +++++++++++++++++-
 drivers/gpu/drm/mediatek/mtk_drm_drv.h        |   2 +-
 drivers/gpu/drm/mediatek/mtk_dsi.c            |  14 +-
 6 files changed, 309 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_drv.h b/drivers/gpu/drm/mediatek/mtk_disp_drv.h
index 082ac18fe04a..94843974851f 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_disp_drv.h
@@ -108,6 +108,7 @@ size_t mtk_ovl_get_num_formats(struct device *dev);
 
 void mtk_ovl_adaptor_add_comp(struct device *dev, struct mtk_mutex *mutex);
 void mtk_ovl_adaptor_remove_comp(struct device *dev, struct mtk_mutex *mutex);
+bool mtk_ovl_adaptor_is_comp_present(struct device_node *node);
 void mtk_ovl_adaptor_connect(struct device *dev, struct device *mmsys_dev,
 			     unsigned int next);
 void mtk_ovl_adaptor_disconnect(struct device *dev, struct device *mmsys_dev,
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c
index c6768210b08b..e9dc89764495 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl_adaptor.c
@@ -490,6 +490,38 @@ static int compare_of(struct device *dev, void *data)
 	return dev->of_node == data;
 }
 
+static int ovl_adaptor_of_get_ddp_comp_type(struct device_node *node,
+					    enum mtk_ovl_adaptor_comp_type *ctype)
+{
+	const struct of_device_id *of_id = of_match_node(mtk_ovl_adaptor_comp_dt_ids, node);
+
+	if (!of_id)
+		return -EINVAL;
+
+	*ctype = (enum mtk_ovl_adaptor_comp_type)((uintptr_t)of_id->data);
+
+	return 0;
+}
+
+bool mtk_ovl_adaptor_is_comp_present(struct device_node *node)
+{
+	enum mtk_ovl_adaptor_comp_type type;
+	int ret;
+
+	ret = ovl_adaptor_of_get_ddp_comp_type(node, &type);
+	if (ret)
+		return false;
+
+	if (type >= OVL_ADAPTOR_TYPE_NUM)
+		return false;
+
+	/*
+	 * ETHDR and Padding are used exclusively in OVL Adaptor: if this
+	 * component is not one of those, it's likely not an OVL Adaptor path.
+	 */
+	return type == OVL_ADAPTOR_TYPE_ETHDR || type == OVL_ADAPTOR_TYPE_PADDING;
+}
+
 static int ovl_adaptor_comp_init(struct device *dev, struct component_match **match)
 {
 	struct mtk_disp_ovl_adaptor *priv = dev_get_drvdata(dev);
@@ -499,12 +531,11 @@ static int ovl_adaptor_comp_init(struct device *dev, struct component_match **ma
 	parent = dev->parent->parent->of_node->parent;
 
 	for_each_child_of_node_scoped(parent, node) {
-		const struct of_device_id *of_id;
 		enum mtk_ovl_adaptor_comp_type type;
-		int id;
+		int id, ret;
 
-		of_id = of_match_node(mtk_ovl_adaptor_comp_dt_ids, node);
-		if (!of_id)
+		ret = ovl_adaptor_of_get_ddp_comp_type(node, &type);
+		if (ret)
 			continue;
 
 		if (!of_device_is_available(node)) {
@@ -513,7 +544,6 @@ static int ovl_adaptor_comp_init(struct device *dev, struct component_match **ma
 			continue;
 		}
 
-		type = (enum mtk_ovl_adaptor_comp_type)(uintptr_t)of_id->data;
 		id = ovl_adaptor_comp_get_id(dev, node, type);
 		if (id < 0) {
 			dev_warn(dev, "Skipping unknown component %pOF\n",
diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index a08d20654954..20a9d589fd75 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -704,6 +704,20 @@ static int mtk_dpi_bridge_attach(struct drm_bridge *bridge,
 				 enum drm_bridge_attach_flags flags)
 {
 	struct mtk_dpi *dpi = bridge_to_dpi(bridge);
+	int ret;
+
+	dpi->next_bridge = devm_drm_of_get_bridge(dpi->dev, dpi->dev->of_node, 1, -1);
+	if (IS_ERR(dpi->next_bridge)) {
+		ret = PTR_ERR(dpi->next_bridge);
+		if (ret == -EPROBE_DEFER)
+			return ret;
+
+		/* Old devicetree has only one endpoint */
+		dpi->next_bridge = devm_drm_of_get_bridge(dpi->dev, dpi->dev->of_node, 0, 0);
+		if (IS_ERR(dpi->next_bridge))
+			return dev_err_probe(dpi->dev, PTR_ERR(dpi->next_bridge),
+					     "Failed to get bridge\n");
+	}
 
 	return drm_bridge_attach(bridge->encoder, dpi->next_bridge,
 				 &dpi->bridge, flags);
@@ -1058,13 +1072,6 @@ static int mtk_dpi_probe(struct platform_device *pdev)
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
index 3e807195a0d0..6cff020a1bf8 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -26,6 +26,7 @@
 
 #include "mtk_crtc.h"
 #include "mtk_ddp_comp.h"
+#include "mtk_disp_drv.h"
 #include "mtk_drm_drv.h"
 #include "mtk_gem.h"
 
@@ -818,12 +819,235 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
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
+				     int output_port, enum mtk_crtc_path crtc_path,
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
+	of_node_put(ep_out);
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
+	if (ret) {
+		if (mtk_ovl_adaptor_is_comp_present(ep_dev_node)) {
+			*cid = (unsigned int)DDP_COMPONENT_DRM_OVL_ADAPTOR;
+			return 0;
+		}
+		return ret;
+	}
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
+static int mtk_drm_of_ddp_path_build_one(struct device *dev, enum mtk_crtc_path cpath,
+					 const unsigned int **out_path,
+					 unsigned int *out_path_len)
+{
+	struct device_node *next, *prev, *vdo = dev->parent->of_node;
+	unsigned int temp_path[DDP_COMPONENT_DRM_ID_MAX] = { 0 };
+	unsigned int *final_ddp_path;
+	unsigned short int idx = 0;
+	bool ovl_adaptor_comp_added = false;
+	int ret;
+
+	/* Get the first entry for the temp_path array */
+	ret = mtk_drm_of_get_ddp_ep_cid(vdo, 0, cpath, &next, &temp_path[idx]);
+	if (ret) {
+		if (next && temp_path[idx] == DDP_COMPONENT_DRM_OVL_ADAPTOR) {
+			dev_dbg(dev, "Adding OVL Adaptor for %pOF\n", next);
+			ovl_adaptor_comp_added = true;
+		} else {
+			if (next)
+				dev_err(dev, "Invalid component %pOF\n", next);
+			else
+				dev_err(dev, "Cannot find first endpoint for path %d\n", cpath);
+
+			return ret;
+		}
+	}
+	idx++;
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
+
+		/*
+		 * If this is an OVL adaptor exclusive component and one of those
+		 * was already added, don't add another instance of the generic
+		 * DDP_COMPONENT_OVL_ADAPTOR, as this is used only to decide whether
+		 * to probe that component master driver of which only one instance
+		 * is needed and possible.
+		 */
+		if (temp_path[idx] == DDP_COMPONENT_DRM_OVL_ADAPTOR) {
+			if (!ovl_adaptor_comp_added)
+				ovl_adaptor_comp_added = true;
+			else
+				idx--;
+		}
+	} while (++idx < DDP_COMPONENT_DRM_ID_MAX);
+
+	/*
+	 * The device component might not be enabled: in that case, don't
+	 * check the last entry and just report that the device is missing.
+	 */
+	if (ret == -ENODEV)
+		return ret;
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
+		if (ret) {
+			dev_err_probe(dev, ret, "Cannot parse endpoint\n");
+			break;
+		}
+
+		if (of_ep.id >= MAX_CRTC) {
+			ret = dev_err_probe(dev, -EINVAL,
+					    "Invalid endpoint%u number\n", of_ep.port);
+			break;
+		}
+
+		output_present[of_ep.id] = true;
+	}
+
+	if (ret) {
+		of_node_put(ep_node);
+		return ret;
+	}
+
+	if (output_present[CRTC_MAIN]) {
+		ret = mtk_drm_of_ddp_path_build_one(dev, CRTC_MAIN,
+						    &data->main_path, &data->main_len);
+		if (ret && ret != -ENODEV)
+			return ret;
+	}
+
+	if (output_present[CRTC_EXT]) {
+		ret = mtk_drm_of_ddp_path_build_one(dev, CRTC_EXT,
+						    &data->ext_path, &data->ext_len);
+		if (ret && ret != -ENODEV)
+			return ret;
+	}
+
+	if (output_present[CRTC_THIRD]) {
+		ret = mtk_drm_of_ddp_path_build_one(dev, CRTC_THIRD,
+						    &data->third_path, &data->third_len);
+		if (ret && ret != -ENODEV)
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
@@ -844,7 +1068,27 @@ static int mtk_drm_probe(struct platform_device *pdev)
 	if (!of_id)
 		return -ENODEV;
 
-	private->data = of_id->data;
+	mtk_drm_data = (struct mtk_mmsys_driver_data *)of_id->data;
+	if (!mtk_drm_data)
+		return -EINVAL;
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
@@ -866,12 +1110,11 @@ static int mtk_drm_probe(struct platform_device *pdev)
 
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
@@ -880,8 +1123,6 @@ static int mtk_drm_probe(struct platform_device *pdev)
 			continue;
 		}
 
-		comp_type = (enum mtk_ddp_comp_type)(uintptr_t)of_id->data;
-
 		if (comp_type == MTK_DISP_MUTEX) {
 			int id;
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
index ce897984de51..675cdc90a440 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
@@ -63,7 +63,7 @@ struct mtk_drm_private {
 	struct device *mmsys_dev;
 	struct device_node *comp_node[DDP_COMPONENT_DRM_ID_MAX];
 	struct mtk_ddp_comp ddp_comp[DDP_COMPONENT_DRM_ID_MAX];
-	const struct mtk_mmsys_driver_data *data;
+	struct mtk_mmsys_driver_data *data;
 	struct drm_atomic_state *suspend_state;
 	unsigned int mbox_index;
 	struct mtk_drm_private **all_drm_private;
diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index eeec641cab60..33ceeb8d6925 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -988,9 +988,17 @@ static int mtk_dsi_host_attach(struct mipi_dsi_host *host,
 	dsi->lanes = device->lanes;
 	dsi->format = device->format;
 	dsi->mode_flags = device->mode_flags;
-	dsi->next_bridge = devm_drm_of_get_bridge(dev, dev->of_node, 0, 0);
-	if (IS_ERR(dsi->next_bridge))
-		return PTR_ERR(dsi->next_bridge);
+	dsi->next_bridge = devm_drm_of_get_bridge(dev, dev->of_node, 1, 0);
+	if (IS_ERR(dsi->next_bridge)) {
+		ret = PTR_ERR(dsi->next_bridge);
+		if (ret == -EPROBE_DEFER)
+			return ret;
+
+		/* Old devicetree has only one endpoint */
+		dsi->next_bridge = devm_drm_of_get_bridge(dev, dev->of_node, 0, 0);
+		if (IS_ERR(dsi->next_bridge))
+			return PTR_ERR(dsi->next_bridge);
+	}
 
 	drm_bridge_add(&dsi->bridge);
 
-- 
2.46.0


