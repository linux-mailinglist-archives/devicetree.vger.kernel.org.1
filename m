Return-Path: <devicetree+bounces-256854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B0252D3A817
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 13:10:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CE13830178D2
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 12:06:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD89635A941;
	Mon, 19 Jan 2026 12:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="CGRBTB4G"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EFE9359FA7;
	Mon, 19 Jan 2026 12:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768824375; cv=none; b=Ju67Ye11QZciNaVcaHNEotu85qAuEnwb4qQg78+qP4BTmgwTVAjI3rJ/D1+0Y2uPUpEyZY0o9EPN/siWaKCvVMWE7L3EahXrDNRC39t9kDR0yHwAVVcNCi+NV4q9s235q/GmWSQ31hztMUs6VXLvV5nP9kEd6VorBhI8HoiBqKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768824375; c=relaxed/simple;
	bh=GI/tPvzbpnuhtBI9UeyFpKt5YenYJY9Q7hTNjTzdSKc=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Q9ROdTDTfy2/fZpALitotXH1PpOn78ZdR5pxKBnAUToCrqnThP5Q1AvBwvx/E50fuqhTsWs3ZreyaRWAy6x80R61giqqvVlx8fYfPepkAQMHl0kKqZIuLeVIn869bvtzQMhJY80ARqJ98w/R88yxQFlaEVT8UXjO6vxrNWyj2r0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=CGRBTB4G; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 38961d52f52f11f085319dbc3099e8fb-20260119
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=PT2kb8626h9iBTlh/SYsEq06up8HphX/L2figK9gfWY=;
	b=CGRBTB4GU3BUAc9Bzk9hyIdAoQNj2jwv3M5RzvKYrWTodzic9ClAF4BFpoLIXZ00XtKCV8023W/NEP90lwBCXyd1PmkNXDFJyvQ+Zt4+fXYZNB5lY5yvpC1spIBRLLvHcABrYOWl7L41NERhAjms3IowsQieXTSlxGezGRSrPCw=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.9,REQID:dc94a717-eb16-4437-b7e6-78175fd99163,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:5047765,CLOUDID:cc0e4c5a-a957-4259-bcca-d3af718d7034,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|836|888|898,TC:-5,Content:
	0|15|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:nil,COL:0,OS
	I:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 38961d52f52f11f085319dbc3099e8fb-20260119
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw01.mediatek.com
	(envelope-from <friday.yang@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 882383550; Mon, 19 Jan 2026 20:06:01 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 19 Jan 2026 20:05:59 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.2562.29 via Frontend Transport; Mon, 19 Jan 2026 20:05:58 +0800
From: Friday Yang <friday.yang@mediatek.com>
To: Yong Wu <yong.wu@mediatek.com>, Krzysztof Kozlowski <krzk@kernel.org>, Rob
 Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Philipp Zabel
	<p.zabel@pengutronix.de>
CC: Friday Yang <friday.yang@mediatek.com>,
	<linux-mediatek@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Subject: [PATCH v12 2/2] memory: mtk-smi: mt8188: Add SMI reset and clamp
Date: Mon, 19 Jan 2026 20:05:25 +0800
Message-ID: <20260119120552.9325-3-friday.yang@mediatek.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20260119120552.9325-1-friday.yang@mediatek.com>
References: <20260119120552.9325-1-friday.yang@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

To prevent handling glitch signals during MTCMOS on/off transitions,
SMI requires clamp and reset operations. Parse the reset settings for
SMI LARBs and the clamp settings for the SMI Sub-Common. Register
genpd callback for the SMI LARBs located in image, camera and IPE
subsystems, and apply reset and clamp operations within the callback.
The 'mtk_smi_device_link_common' already parses the 'mediatek,smi'
property. A similar step is required to obtain the SMI Common regmap
from the 'mediatek,smi' property for the clamp function. To centralize
this process and avoid redundant parsing, we achieve it together.

Signed-off-by: Friday Yang <friday.yang@mediatek.com>
---
 drivers/memory/mtk-smi.c | 177 ++++++++++++++++++++++++++++++++++++---
 1 file changed, 167 insertions(+), 10 deletions(-)

diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
index aaeba8ab211e..042b4c040def 100644
--- a/drivers/memory/mtk-smi.c
+++ b/drivers/memory/mtk-smi.c
@@ -10,11 +10,15 @@
 #include <linux/err.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
+#include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
+#include <linux/pm_domain.h>
 #include <linux/pm_runtime.h>
+#include <linux/regmap.h>
+#include <linux/reset.h>
 #include <linux/soc/mediatek/mtk_sip_svc.h>
 #include <soc/mediatek/smi.h>
 #include <dt-bindings/memory/mt2701-larb-port.h>
@@ -34,6 +38,8 @@
 #define SMI_FIFO_TH1			0x238
 #define SMI_FIFO_TH2			0x23c
 #define SMI_DCM				0x300
+#define SMI_COMMON_CLAMP_EN_SET		0x3c4
+#define SMI_COMMON_CLAMP_EN_CLR		0x3c8
 #define SMI_DUMMY			0x444

 /* SMI LARB */
@@ -134,6 +140,7 @@ struct mtk_smi_larb_gen {
 	unsigned int			larb_direct_to_common_mask;
 	unsigned int			flags_general;
 	const u8			(*ostd)[SMI_LARB_PORT_NR_MAX];
+	const u8			*clamp_port;
 };

 struct mtk_smi {
@@ -150,6 +157,7 @@ struct mtk_smi {
 };

 struct mtk_smi_larb { /* larb: local arbiter */
+	struct device			*dev;
 	struct mtk_smi			smi;
 	void __iomem			*base;
 	struct device			*smi_common_dev; /* common or sub-common dev */
@@ -157,6 +165,10 @@ struct mtk_smi_larb { /* larb: local arbiter */
 	int				larbid;
 	u32				*mmu;
 	unsigned char			*bank;
+	struct regmap			*smi_comm_syscon; /* smi-comm or sub-comm */
+	u8				smi_comm_in_port_id; /* smi-comm or sub-comm */
+	struct notifier_block		nb;
+	struct reset_control		*rst_con;
 };

 static int
@@ -478,6 +490,19 @@ static const u8 mtk_smi_larb_mt8195_ostd[][SMI_LARB_PORT_NR_MAX] = {
 	[28] = {0x1a, 0x0e, 0x0a, 0x0a, 0x0c, 0x0e, 0x10,},
 };

+static const u8 mtk_smi_larb_clamp_port_mt8188[MTK_LARB_NR_MAX] = {
+	[9]	= BIT(1), /* larb10 */
+	[10]	= BIT(2), /* larb11a */
+	[11]	= BIT(2), /* larb11b */
+	[12]	= BIT(3), /* larb11c */
+	[13]	= BIT(0), /* larb12 */
+	[16]	= BIT(1), /* larb15 */
+	[17]	= BIT(2), /* larb16a */
+	[18]	= BIT(2), /* larb16b */
+	[19]	= BIT(3), /* larb17a */
+	[20]	= BIT(3), /* larb17b */
+};
+
 static const struct mtk_smi_larb_gen mtk_smi_larb_mt2701 = {
 	.port_in_larb = {
 		LARB0_PORT_OFFSET, LARB1_PORT_OFFSET,
@@ -531,6 +556,7 @@ static const struct mtk_smi_larb_gen mtk_smi_larb_mt8188 = {
 	.flags_general	            = MTK_SMI_FLAG_THRT_UPDATE | MTK_SMI_FLAG_SW_FLAG |
 				      MTK_SMI_FLAG_SLEEP_CTL | MTK_SMI_FLAG_CFG_PORT_SEC_CTL,
 	.ostd		            = mtk_smi_larb_mt8188_ostd,
+	.clamp_port                 = mtk_smi_larb_clamp_port_mt8188,
 };

 static const struct mtk_smi_larb_gen mtk_smi_larb_mt8192 = {
@@ -582,28 +608,79 @@ static void mtk_smi_larb_sleep_ctrl_disable(struct mtk_smi_larb *larb)
 	writel_relaxed(0, larb->base + SMI_LARB_SLP_CON);
 }

-static int mtk_smi_device_link_common(struct device *dev, struct device **com_dev)
+static int mtk_smi_larb_clamp_protect_enable(struct device *dev, bool enable)
+{
+	struct mtk_smi_larb *larb = dev_get_drvdata(dev);
+	u32 reg;
+	int ret;
+
+	reg = enable ? SMI_COMMON_CLAMP_EN_SET : SMI_COMMON_CLAMP_EN_CLR;
+	ret = regmap_write(larb->smi_comm_syscon, reg, larb->smi_comm_in_port_id);
+	if (ret)
+		dev_err(dev, "Unable to %s clamp for input port %d: %d\n",
+			enable ? "enable" : "disable",
+			larb->smi_comm_in_port_id, ret);
+
+	return ret;
+}
+
+static int mtk_smi_genpd_callback(struct notifier_block *nb,
+				  unsigned long event, void *data)
+{
+	struct mtk_smi_larb *larb = container_of(nb, struct mtk_smi_larb, nb);
+	struct device *dev = larb->dev;
+	int ret = 0;
+
+	switch (event) {
+	case GENPD_NOTIFY_PRE_ON:
+	case GENPD_NOTIFY_PRE_OFF:
+		/* Clamp this larb to avoid the redundant commands */
+		ret = mtk_smi_larb_clamp_protect_enable(dev, true);
+		break;
+	case GENPD_NOTIFY_ON:
+		ret = reset_control_reset(larb->rst_con);
+		if (ret) {
+			dev_err(dev, "Failed to reset smi larb %d\n", ret);
+			break;
+		}
+
+		ret = mtk_smi_larb_clamp_protect_enable(dev, false);
+		break;
+	default:
+		break;
+	}
+	if (ret)
+		return NOTIFY_BAD;
+
+	return NOTIFY_OK;
+}
+
+static int mtk_smi_device_link_common(struct device *dev, struct device **com_dev,
+				      bool require_clamp)
 {
 	struct platform_device *smi_com_pdev;
 	struct device_node *smi_com_node;
 	struct device *smi_com_dev;
 	struct device_link *link;
+	const struct mtk_smi_larb_gen *larb_gen;
+	struct mtk_smi_larb *larb;
+	int larbid, ret;

 	smi_com_node = of_parse_phandle(dev->of_node, "mediatek,smi", 0);
 	if (!smi_com_node)
 		return -EINVAL;

 	smi_com_pdev = of_find_device_by_node(smi_com_node);
-	of_node_put(smi_com_node);
 	if (!smi_com_pdev) {
 		dev_err(dev, "Failed to get the smi_common device\n");
-		return -EINVAL;
+		ret = -EINVAL;
+		goto err_put_node;
 	}

 	/* smi common is the supplier, Make sure it is ready before */
 	if (!platform_get_drvdata(smi_com_pdev)) {
-		put_device(&smi_com_pdev->dev);
-		return -EPROBE_DEFER;
+		ret = -EPROBE_DEFER;
+		goto err_put_device;
 	}

 	smi_com_dev = &smi_com_pdev->dev;
@@ -611,13 +688,36 @@ static int mtk_smi_device_link_common(struct device *dev, struct device **com_de
 			       DL_FLAG_PM_RUNTIME | DL_FLAG_STATELESS);
 	if (!link) {
 		dev_err(dev, "Unable to link smi-common dev\n");
-		put_device(&smi_com_pdev->dev);
-		return -ENODEV;
+		ret = -ENODEV;
+		goto err_put_device;
 	}

 	*com_dev = smi_com_dev;

+	if (require_clamp) {
+		larb = dev_get_drvdata(dev);
+		larb_gen = larb->larb_gen;
+		larbid = larb->larbid;
+		larb->smi_comm_in_port_id = larb_gen->clamp_port[larbid];
+		larb->smi_comm_syscon = syscon_node_to_regmap(smi_com_node);
+		if (IS_ERR(larb->smi_comm_syscon)) {
+			dev_err(dev, "Failed to get smi syscon for larb %d\n", larbid);
+			ret = PTR_ERR(larb->smi_comm_syscon);
+			larb->smi_comm_syscon = NULL;
+			goto err_remove_link;
+		}
+	}
+	of_node_put(smi_com_node);
+
 	return 0;
+
+err_remove_link:
+	device_link_remove(dev, smi_com_dev);
+err_put_device:
+	put_device(&smi_com_pdev->dev);
+err_put_node:
+	of_node_put(smi_com_node);
+	return ret;
 }

 static int mtk_smi_dts_clk_init(struct device *dev, struct mtk_smi *smi,
@@ -641,16 +741,39 @@ static int mtk_smi_dts_clk_init(struct device *dev, struct mtk_smi *smi,
 	return ret;
 }

+static int mtk_smi_larb_parse_reset(struct mtk_smi_larb *larb)
+{
+	struct device *dev = larb->dev;
+	int ret;
+
+	larb->rst_con = devm_reset_control_get_exclusive(dev, "larb");
+	if (IS_ERR(larb->rst_con))
+		return dev_err_probe(dev, PTR_ERR(larb->rst_con),
+				     "Failed to get reset controller\n");
+
+	larb->nb.notifier_call = mtk_smi_genpd_callback;
+	ret = dev_pm_genpd_add_notifier(dev, &larb->nb);
+	if (ret) {
+		larb->nb.notifier_call = NULL;
+		return dev_err_probe(dev, ret,
+				     "Failed to add genpd callback\n");
+	}
+
+	return 0;
+}
+
 static int mtk_smi_larb_probe(struct platform_device *pdev)
 {
 	struct mtk_smi_larb *larb;
 	struct device *dev = &pdev->dev;
+	bool require_clamp = false;
 	int ret;

 	larb = devm_kzalloc(dev, sizeof(*larb), GFP_KERNEL);
 	if (!larb)
 		return -ENOMEM;

+	larb->dev = dev;
 	larb->larb_gen = of_device_get_match_data(dev);
 	larb->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(larb->base))
@@ -663,19 +786,44 @@ static int mtk_smi_larb_probe(struct platform_device *pdev)

 	larb->smi.dev = dev;

-	ret = mtk_smi_device_link_common(dev, &larb->smi_common_dev);
+	platform_set_drvdata(pdev, larb);
+	/* The larbid are sequential for IOMMU if this property is not present */
+	ret = of_property_read_s32(dev->of_node, "mediatek,larb-id", &larb->larbid);
+	if (ret == -EINVAL)
+		goto add_dev_link;
+	else if (ret || larb->larbid >= MTK_LARB_NR_MAX)
+		return dev_err_probe(dev, -EINVAL, "Invalid larbid:%d\n", larb->larbid);
+
+	if (larb->larb_gen->clamp_port && larb->larb_gen->clamp_port[larb->larbid])
+		require_clamp = true;
+
+add_dev_link:
+	ret = mtk_smi_device_link_common(dev, &larb->smi_common_dev, require_clamp);
 	if (ret < 0)
 		return ret;

+	/*
+	 * Only SMI LARBs in camera, image and IPE subsys need to
+	 * apply clamp and reset operations, others can be skipped.
+	 */
+	if (require_clamp) {
+		ret = mtk_smi_larb_parse_reset(larb);
+		if (ret)
+			goto err_link_remove;
+	}
+
 	pm_runtime_enable(dev);
-	platform_set_drvdata(pdev, larb);
 	ret = component_add(dev, &mtk_smi_larb_component_ops);
 	if (ret)
 		goto err_pm_disable;
 	return 0;

 err_pm_disable:
+	if (larb->nb.notifier_call)
+		dev_pm_genpd_remove_notifier(&pdev->dev);
+
 	pm_runtime_disable(dev);
+err_link_remove:
 	device_link_remove(dev, larb->smi_common_dev);
 	put_device(larb->smi_common_dev);
 	return ret;
@@ -685,6 +833,9 @@ static void mtk_smi_larb_remove(struct platform_device *pdev)
 {
 	struct mtk_smi_larb *larb = platform_get_drvdata(pdev);

+	if (larb->nb.notifier_call)
+		dev_pm_genpd_remove_notifier(&pdev->dev);
+
 	device_link_remove(&pdev->dev, larb->smi_common_dev);
 	pm_runtime_disable(&pdev->dev);
 	component_del(&pdev->dev, &mtk_smi_larb_component_ops);
@@ -808,6 +959,11 @@ static const struct mtk_smi_common_plat mtk_smi_common_mt8188_vpp = {
 	.init     = mtk_smi_common_mt8195_init,
 };

+static const struct mtk_smi_common_plat mtk_smi_sub_common_mt8188 = {
+	.type     = MTK_SMI_GEN2_SUB_COMM,
+	.has_gals = true,
+};
+
 static const struct mtk_smi_common_plat mtk_smi_common_mt8192 = {
 	.type     = MTK_SMI_GEN2,
 	.has_gals = true,
@@ -852,6 +1008,7 @@ static const struct of_device_id mtk_smi_common_of_ids[] = {
 	{.compatible = "mediatek,mt8186-smi-common", .data = &mtk_smi_common_mt8186},
 	{.compatible = "mediatek,mt8188-smi-common-vdo", .data = &mtk_smi_common_mt8188_vdo},
 	{.compatible = "mediatek,mt8188-smi-common-vpp", .data = &mtk_smi_common_mt8188_vpp},
+	{.compatible = "mediatek,mt8188-smi-sub-common", .data = &mtk_smi_sub_common_mt8188},
 	{.compatible = "mediatek,mt8192-smi-common", .data = &mtk_smi_common_mt8192},
 	{.compatible = "mediatek,mt8195-smi-common-vdo", .data = &mtk_smi_common_mt8195_vdo},
 	{.compatible = "mediatek,mt8195-smi-common-vpp", .data = &mtk_smi_common_mt8195_vpp},
@@ -905,7 +1062,7 @@ static int mtk_smi_common_probe(struct platform_device *pdev)

 	/* link its smi-common if this is smi-sub-common */
 	if (common->plat->type == MTK_SMI_GEN2_SUB_COMM) {
-		ret = mtk_smi_device_link_common(dev, &common->smi_common_dev);
+		ret = mtk_smi_device_link_common(dev, &common->smi_common_dev, false);
 		if (ret < 0)
 			return ret;
 	}
--
2.46.0


