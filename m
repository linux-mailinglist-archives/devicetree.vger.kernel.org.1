Return-Path: <devicetree+bounces-24316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 122AE80EB6F
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 13:20:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 362481C209F3
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 12:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0483F5EE7E;
	Tue, 12 Dec 2023 12:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="W0hhkrU0"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F87D109;
	Tue, 12 Dec 2023 04:20:14 -0800 (PST)
X-UUID: c6c2e13298e811eeba30773df0976c77-20231212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=wACZeC0fJfmXvigLU68UKadLKrfAY6i7TfCwkPACsEQ=;
	b=W0hhkrU0N8e8L5hXB8ujEpY4WO+YeScEy79OprHKq8Z5n5tP/cs+rCt1P8Rimv0zuizk/b+oRPZCwpRR1pevasb/kent50fB8CPYnNPsAELKtTergmJcifFy3mmonMByzBdTPtB32Ydt4kOmk0QqW4Do830pKAgrLjy/xqcAckU=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.35,REQID:92925212-fdd2-4992-8e2d-062e6d48af72,IP:0,U
	RL:0,TC:0,Content:-25,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:-25
X-CID-META: VersionHash:5d391d7,CLOUDID:a7a8b373-1bd3-4f48-b671-ada88705968c,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_ULN,TF_CID_SPAM_SNR
X-UUID: c6c2e13298e811eeba30773df0976c77-20231212
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw02.mediatek.com
	(envelope-from <shawn.sung@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 858016398; Tue, 12 Dec 2023 20:20:02 +0800
Received: from mtkmbs13n2.mediatek.inc (172.21.101.108) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 12 Dec 2023 20:20:02 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 12 Dec 2023 20:20:02 +0800
From: Hsiao Chien Sung <shawn.sung@mediatek.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, CK Hu <ck.hu@mediatek.com>
CC: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, Chen-Yu Tsai <wenst@chromium.org>, Sean Paul
	<sean@poorly.run>, Fei Shao <fshao@chromium.org>, Bibby Hsieh
	<bibby.hsieh@mediatek.com>, <dri-devel@lists.freedesktop.org>,
	<linux-mediatek@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>, Hsiao
 Chien Sung <shawn.sung@mediatek.com>
Subject: [PATCH v4 13/17] drm/mediatek: Support CRC in OVL
Date: Tue, 12 Dec 2023 20:19:53 +0800
Message-ID: <20231212121957.19231-14-shawn.sung@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20231212121957.19231-1-shawn.sung@mediatek.com>
References: <20231212121957.19231-1-shawn.sung@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-MTK: N

We choose OVL as the CRC generator from other hardware
components that are also capable of calculating CRCs,
since its frame done event triggers vblanks, it can be
used as a signal to know when is safe to retrieve CRC of
the frame.

Please note that position of the hardware component
that is chosen as CRC generator in the display path is
significant. For example, while OVL is the first module
in VDOSYS0, its CRC won't be affected by the modules
after it, which means effects applied by PQ, Gamma,
Dither or any other components after OVL won't be
calculated in CRC generation.

Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_disp_drv.h     |  3 +
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c     | 85 +++++++++++++++++++--
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c |  3 +
 3 files changed, 85 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_drv.h b/drivers/gpu/drm/mediatek/mtk_disp_drv.h
index c44f5b31bab5..08cc2d2fef9f 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_drv.h
+++ b/drivers/gpu/drm/mediatek/mtk_disp_drv.h
@@ -102,6 +102,9 @@ void mtk_ovl_enable_vblank(struct device *dev);
 void mtk_ovl_disable_vblank(struct device *dev);
 const u32 *mtk_ovl_get_formats(struct device *dev);
 size_t mtk_ovl_get_num_formats(struct device *dev);
+size_t mtk_ovl_crc_cnt(struct device *dev);
+u32 *mtk_ovl_crc_entry(struct device *dev);
+void mtk_ovl_crc_read(struct device *dev);
 
 void mtk_ovl_adaptor_add_comp(struct device *dev, struct mtk_mutex *mutex);
 void mtk_ovl_adaptor_remove_comp(struct device *dev, struct mtk_mutex *mutex);
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index a3f1630af5df..78749dabeb43 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -25,6 +25,13 @@
 #define OVL_FME_CPL_INT					BIT(1)
 #define DISP_REG_OVL_INTSTA			0x0008
 #define DISP_REG_OVL_EN				0x000c
+#define OVL_EN						BIT(0)
+#define OVL_OP_8BIT_MODE				BIT(4)
+#define OVL_HG_FOVL_CK_ON				BIT(8)
+#define OVL_HF_FOVL_CK_ON				BIT(10)
+#define DISP_REG_OVL_TRIG			0x0010
+#define OVL_CRC_EN					BIT(8)
+#define OVL_CRC_CLR					BIT(9)
 #define DISP_REG_OVL_RST			0x0014
 #define DISP_REG_OVL_ROI_SIZE			0x0020
 #define DISP_REG_OVL_DATAPATH_CON		0x0024
@@ -44,6 +51,8 @@
 #define DISP_REG_OVL_RDMA_CTRL(n)		(0x00c0 + 0x20 * (n))
 #define DISP_REG_OVL_RDMA_GMC(n)		(0x00c8 + 0x20 * (n))
 #define DISP_REG_OVL_ADDR_MT2701		0x0040
+#define DISP_REG_OVL_CRC			0x0270
+#define OVL_CRC_OUT_MASK				GENMASK(30, 0)
 #define DISP_REG_OVL_CLRFMT_EXT			0x02D0
 #define DISP_REG_OVL_CLRFMT_EXT1		0x02D8
 #define OVL_CLRFMT_EXT1_CSC_EN(n)			(1 << (((n) * 4) + 1))
@@ -151,6 +160,10 @@ static const u32 mt8195_formats[] = {
 	DRM_FORMAT_YUYV,
 };
 
+static const u32 mt8195_ovl_crc_ofs[] = {
+	DISP_REG_OVL_CRC,
+};
+
 struct mtk_disp_ovl_data {
 	unsigned int addr;
 	unsigned int gmc_bits;
@@ -161,12 +174,15 @@ struct mtk_disp_ovl_data {
 	const u32 *formats;
 	size_t num_formats;
 	bool supports_clrfmt_ext;
+	const u32 *crc_ofs;
+	size_t crc_cnt;
 };
 
 /*
  * struct mtk_disp_ovl - DISP_OVL driver structure
  * @crtc: associated crtc to report vblank events to
  * @data: platform data
+ * @crc: crc related information
  */
 struct mtk_disp_ovl {
 	struct drm_crtc			*crtc;
@@ -176,8 +192,30 @@ struct mtk_disp_ovl {
 	const struct mtk_disp_ovl_data	*data;
 	void				(*vblank_cb)(void *data);
 	void				*vblank_cb_data;
+	struct mtk_drm_crc		crc;
 };
 
+size_t mtk_ovl_crc_cnt(struct device *dev)
+{
+	struct mtk_disp_ovl *ovl = dev_get_drvdata(dev);
+
+	return ovl->crc.cnt;
+}
+
+u32 *mtk_ovl_crc_entry(struct device *dev)
+{
+	struct mtk_disp_ovl *ovl = dev_get_drvdata(dev);
+
+	return ovl->crc.va;
+}
+
+void mtk_ovl_crc_read(struct device *dev)
+{
+	struct mtk_disp_ovl *ovl = dev_get_drvdata(dev);
+
+	mtk_drm_crc_read(&ovl->crc, ovl->regs);
+}
+
 static irqreturn_t mtk_disp_ovl_irq_handler(int irq, void *dev_id)
 {
 	struct mtk_disp_ovl *priv = dev_id;
@@ -269,15 +307,28 @@ void mtk_ovl_start(struct device *dev)
 	 * (should always be enabled)
 	 */
 	reg |= OVL_OUTPUT_CLAMP;
-
 	writel_relaxed(reg, ovl->regs + DISP_REG_OVL_DATAPATH_CON);
-	writel_relaxed(0x1, ovl->regs + DISP_REG_OVL_EN);
+
+	reg = OVL_EN;
+	if (ovl->data->crc_cnt) {
+		/* enable crc  and its related clocks */
+		writel_relaxed(OVL_CRC_EN, ovl->regs + DISP_REG_OVL_TRIG);
+		reg |= OVL_OP_8BIT_MODE | OVL_HG_FOVL_CK_ON | OVL_HF_FOVL_CK_ON;
+	}
+	writel_relaxed(reg, ovl->regs + DISP_REG_OVL_EN);
+
+#if IS_REACHABLE(CONFIG_MTK_CMDQ)
+	mtk_drm_crc_cmdq_start(&ovl->crc);
+#endif
 }
 
 void mtk_ovl_stop(struct device *dev)
 {
 	struct mtk_disp_ovl *ovl = dev_get_drvdata(dev);
 
+#if IS_REACHABLE(CONFIG_MTK_CMDQ)
+	mtk_drm_crc_cmdq_stop(&ovl->crc);
+#endif
 	writel_relaxed(0x0, ovl->regs + DISP_REG_OVL_EN);
 	if (ovl->data->smi_id_en) {
 		unsigned int reg;
@@ -695,15 +746,31 @@ static int mtk_disp_ovl_probe(struct platform_device *pdev)
 		dev_err(dev, "failed to ioremap ovl\n");
 		return PTR_ERR(priv->regs);
 	}
+
+	priv->data = of_device_get_match_data(dev);
+	platform_set_drvdata(pdev, priv);
+
+	if (priv->data->crc_cnt) {
+		mtk_drm_crc_init(&priv->crc,
+				 priv->data->crc_ofs, priv->data->crc_cnt,
+				 DISP_REG_OVL_TRIG, OVL_CRC_CLR);
+	}
+
 #if IS_REACHABLE(CONFIG_MTK_CMDQ)
 	ret = cmdq_dev_get_client_reg(dev, &priv->cmdq_reg, 0);
 	if (ret)
 		dev_dbg(dev, "get mediatek,gce-client-reg fail!\n");
-#endif
-
-	priv->data = of_device_get_match_data(dev);
-	platform_set_drvdata(pdev, priv);
 
+	if (priv->data->crc_cnt) {
+		if (of_property_read_u32_index(dev->of_node,
+					       "mediatek,gce-events", 0,
+					       &priv->crc.cmdq_event)) {
+			dev_warn(dev, "failed to get gce-events for crc\n");
+		}
+		priv->crc.cmdq_reg = &priv->cmdq_reg;
+		mtk_drm_crc_cmdq_create(dev, &priv->crc);
+	}
+#endif
 	ret = devm_request_irq(dev, irq, mtk_disp_ovl_irq_handler,
 			       IRQF_TRIGGER_NONE, dev_name(dev), priv);
 	if (ret < 0) {
@@ -724,6 +791,10 @@ static int mtk_disp_ovl_probe(struct platform_device *pdev)
 
 static void mtk_disp_ovl_remove(struct platform_device *pdev)
 {
+	struct device *dev = &pdev->dev;
+	struct mtk_disp_ovl *ovl = dev_get_drvdata(dev);
+
+	mtk_drm_crc_destroy(&ovl->crc);
 	component_del(&pdev->dev, &mtk_disp_ovl_component_ops);
 	pm_runtime_disable(&pdev->dev);
 }
@@ -794,6 +865,8 @@ static const struct mtk_disp_ovl_data mt8195_ovl_driver_data = {
 	.formats = mt8195_formats,
 	.num_formats = ARRAY_SIZE(mt8195_formats),
 	.supports_clrfmt_ext = true,
+	.crc_ofs = mt8195_ovl_crc_ofs,
+	.crc_cnt = ARRAY_SIZE(mt8195_ovl_crc_ofs),
 };
 
 static const struct of_device_id mtk_disp_ovl_driver_dt_match[] = {
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
index 9940909c7435..1118efcde98a 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
@@ -349,6 +349,9 @@ static const struct mtk_ddp_comp_funcs ddp_ovl = {
 	.clk_enable = mtk_ovl_clk_enable,
 	.clk_disable = mtk_ovl_clk_disable,
 	.config = mtk_ovl_config,
+	.crc_cnt = mtk_ovl_crc_cnt,
+	.crc_entry = mtk_ovl_crc_entry,
+	.crc_read = mtk_ovl_crc_read,
 	.start = mtk_ovl_start,
 	.stop = mtk_ovl_stop,
 	.register_vblank_cb = mtk_ovl_register_vblank_cb,
-- 
2.18.0


