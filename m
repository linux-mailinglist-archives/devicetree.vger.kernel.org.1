Return-Path: <devicetree+bounces-138077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DB9A0BA8C
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:54:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5513C3A4E63
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 14:53:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E13522980F;
	Mon, 13 Jan 2025 14:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="l5k94tl7"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3EF72297E4;
	Mon, 13 Jan 2025 14:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736779969; cv=none; b=l4FWAq5rvPlbooKt5mEDlZzlAMcjdfghB3w16hGM58/dbj+mfU7ZF/zwPkcO6Qk137UEl5z5yowrmQ7AQB++gGptVkwJOb3lJqqP295gl73afHyZjihxDjyn6PyOHYFN/uR+1Wtmb82FU3kwOD/ZVuL6jxDsPBjb/d/qk9c+ZgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736779969; c=relaxed/simple;
	bh=MKDQkD9/NzyyRgDTpMQsfFcaYnPOnxq/87mjIAhTFOM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JAPcQFoK9kDWD+7bxeX9+6XFVBdURMMq5BYgf4wWFwj2p8hdLHUXLtmhRbdaZOylpzgCEuGLuFOlnGpU6RR/qZIPU65jD2jD2ixE4YCdPKIgBCJqbylKqGQ2wdFFKGYpMmXE1ai7GSpmX2Q3q12NB+3ANJKTXuZbCQfqlkVT96A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=l5k94tl7; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736779966;
	bh=MKDQkD9/NzyyRgDTpMQsfFcaYnPOnxq/87mjIAhTFOM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=l5k94tl7eBY2J9LaHyHWm+9pT2gD07TX44bk3c5Zoc3TaPfgyvc+jDNtHPhMQKr35
	 NZccHv/XktPVCv1nWUuYYZ3WJH80HQ50/htjH1bzRHOVPsH3SElnp7Nq++fXP01M4f
	 nxDouB4inV3ztc2zQefcK3yPYowd4Ln4Hxf7ihW6WujLjoLZFbm0JRpNlmAifNrPTA
	 TB/Le2YUDNE0ML7sTLT+fTvutIJ9LPxi1UnH4EtJV+UKznTWLSNfLe4MjNvcx0QR7I
	 p7D0yRMp6Pkd4esryh63R604PPYhEyyNiU+o7EYdWWoyhjbeJuMy2S6P/yhmHDQVlA
	 JzxPQpU7h7prg==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2FDDF17E0F97;
	Mon, 13 Jan 2025 15:52:45 +0100 (CET)
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
	ck.hu@mediatek.com,
	jitao.shi@mediatek.com,
	jie.qiu@mediatek.com,
	junzhi.zhao@mediatek.com,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	dmitry.baryshkov@linaro.org,
	lewis.liao@mediatek.com,
	ives.chenjh@mediatek.com,
	tommyyl.chen@mediatek.com,
	jason-jh.lin@mediatek.com
Subject: [PATCH v5 06/34] drm/mediatek: Add support for MT8195 Digital Parallel Interface
Date: Mon, 13 Jan 2025 15:52:04 +0100
Message-ID: <20250113145232.227674-7-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250113145232.227674-1-angelogioacchino.delregno@collabora.com>
References: <20250113145232.227674-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the DPI block found in the MT8195 and MT8188 SoCs.
Inside of the SoC, this block is directly connected to the HDMI IP.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c      | 55 ++++++++++++++++++++++---
 drivers/gpu/drm/mediatek/mtk_dpi_regs.h |  6 +++
 drivers/gpu/drm/mediatek/mtk_drm_drv.c  |  2 +
 3 files changed, 58 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index bb1a17f1384b..dca801f589c8 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -145,6 +145,7 @@ struct mtk_dpi_factor {
  * @csc_enable_bit: Enable bit of CSC.
  * @pixels_per_iter: Quantity of transferred pixels per iteration.
  * @edge_cfg_in_mmsys: If the edge configuration for DPI's output needs to be set in MMSYS.
+ * @is_internal_hdmi: Specifies whether the DPI is internally connected to the HDMI block
  */
 struct mtk_dpi_conf {
 	const struct mtk_dpi_factor *dpi_factor;
@@ -165,6 +166,7 @@ struct mtk_dpi_conf {
 	u32 csc_enable_bit;
 	u32 pixels_per_iter;
 	bool edge_cfg_in_mmsys;
+	bool is_internal_hdmi;
 };
 
 static void mtk_dpi_mask(struct mtk_dpi *dpi, u32 offset, u32 val, u32 mask)
@@ -493,6 +495,7 @@ static void mtk_dpi_power_off(struct mtk_dpi *dpi)
 
 	mtk_dpi_disable(dpi);
 	clk_disable_unprepare(dpi->pixel_clk);
+	clk_disable_unprepare(dpi->tvd_clk);
 	clk_disable_unprepare(dpi->engine_clk);
 }
 
@@ -509,6 +512,12 @@ static int mtk_dpi_power_on(struct mtk_dpi *dpi)
 		goto err_refcount;
 	}
 
+	ret = clk_prepare_enable(dpi->tvd_clk);
+	if (ret) {
+		dev_err(dpi->dev, "Failed to enable tvd pll: %d\n", ret);
+		goto err_engine;
+	}
+
 	ret = clk_prepare_enable(dpi->pixel_clk);
 	if (ret) {
 		dev_err(dpi->dev, "Failed to enable pixel clock: %d\n", ret);
@@ -518,6 +527,8 @@ static int mtk_dpi_power_on(struct mtk_dpi *dpi)
 	return 0;
 
 err_pixel:
+	clk_disable_unprepare(dpi->tvd_clk);
+err_engine:
 	clk_disable_unprepare(dpi->engine_clk);
 err_refcount:
 	dpi->refcount--;
@@ -585,7 +596,9 @@ static int mtk_dpi_set_display_mode(struct mtk_dpi *dpi,
 	struct videomode vm = { 0 };
 
 	drm_display_mode_to_videomode(mode, &vm);
-	mtk_dpi_set_pixel_clk(dpi, &vm, mode->clock);
+
+	if (!dpi->conf->is_internal_hdmi)
+		mtk_dpi_set_pixel_clk(dpi, &vm, mode->clock);
 
 	dpi_pol.ck_pol = MTK_DPI_POLARITY_FALLING;
 	dpi_pol.de_pol = MTK_DPI_POLARITY_RISING;
@@ -648,10 +661,18 @@ static int mtk_dpi_set_display_mode(struct mtk_dpi *dpi,
 	if (dpi->conf->support_direct_pin) {
 		mtk_dpi_config_yc_map(dpi, dpi->yc_map);
 		mtk_dpi_config_2n_h_fre(dpi);
-		mtk_dpi_dual_edge(dpi);
+		/* DPI can connect to either an external bridge or the internal HDMI encoder */
+		if (dpi->conf->is_internal_hdmi) {
+			mtk_dpi_mask(dpi, DPI_CON, DPI_OUTPUT_1T1P_EN, DPI_OUTPUT_1T1P_EN);
+			mtk_dpi_mask(dpi, DPI_CON,
+				     dpi->conf->input_2pixel ? DPI_INPUT_2P_EN : 0,
+				     DPI_INPUT_2P_EN);
+		} else {
+			mtk_dpi_dual_edge(dpi);
+		}
 		mtk_dpi_config_disable_edge(dpi);
 	}
-	if (dpi->conf->input_2pixel) {
+	if (dpi->conf->input_2pixel && !dpi->conf->is_internal_hdmi) {
 		mtk_dpi_mask(dpi, DPI_CON, DPINTF_INPUT_2P_EN,
 			     DPINTF_INPUT_2P_EN);
 	}
@@ -920,14 +941,16 @@ void mtk_dpi_start(struct device *dev)
 {
 	struct mtk_dpi *dpi = dev_get_drvdata(dev);
 
-	mtk_dpi_power_on(dpi);
+	if (!dpi->conf->is_internal_hdmi)
+		mtk_dpi_power_on(dpi);
 }
 
 void mtk_dpi_stop(struct device *dev)
 {
 	struct mtk_dpi *dpi = dev_get_drvdata(dev);
 
-	mtk_dpi_power_off(dpi);
+	if (!dpi->conf->is_internal_hdmi)
+		mtk_dpi_power_off(dpi);
 }
 
 unsigned int mtk_dpi_encoder_index(struct device *dev)
@@ -1022,6 +1045,8 @@ static const struct mtk_dpi_factor dpi_factor_mt8195_dp_intf[] = {
 	{ 70000 - 1, 4 }, { 200000 - 1, 2 }, { U32_MAX, 1 }
 };
 
+static const struct mtk_dpi_factor dpi_factor_mt8195_dpi = { U32_MAX, 1 };
+
 static const struct mtk_dpi_conf mt8173_conf = {
 	.dpi_factor = dpi_factor_mt8173,
 	.num_dpi_factor = ARRAY_SIZE(dpi_factor_mt8173),
@@ -1114,6 +1139,25 @@ static const struct mtk_dpi_conf mt8192_conf = {
 	.csc_enable_bit = CSC_ENABLE,
 };
 
+static const struct mtk_dpi_conf mt8195_conf = {
+	.dpi_factor = &dpi_factor_mt8195_dpi,
+	.num_dpi_factor = 1,
+	.max_clock_khz = 594000,
+	.output_fmts = mt8183_output_fmts,
+	.num_output_fmts = ARRAY_SIZE(mt8183_output_fmts),
+	.pixels_per_iter = 1,
+	.is_ck_de_pol = true,
+	.swap_input_support = true,
+	.support_direct_pin = true,
+	.dimension_mask = HPW_MASK,
+	.hvsize_mask = HSIZE_MASK,
+	.channel_swap_shift = CH_SWAP,
+	.yuv422_en_bit = YUV422_EN,
+	.csc_enable_bit = CSC_ENABLE,
+	.is_internal_hdmi = true,
+	.input_2pixel = true,
+};
+
 static const struct mtk_dpi_conf mt8195_dpintf_conf = {
 	.dpi_factor = dpi_factor_mt8195_dp_intf,
 	.num_dpi_factor = ARRAY_SIZE(dpi_factor_mt8195_dp_intf),
@@ -1217,6 +1261,7 @@ static const struct of_device_id mtk_dpi_of_ids[] = {
 	{ .compatible = "mediatek,mt8188-dp-intf", .data = &mt8195_dpintf_conf },
 	{ .compatible = "mediatek,mt8192-dpi", .data = &mt8192_conf },
 	{ .compatible = "mediatek,mt8195-dp-intf", .data = &mt8195_dpintf_conf },
+	{ .compatible = "mediatek,mt8195-dpi", .data = &mt8195_conf },
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, mtk_dpi_of_ids);
diff --git a/drivers/gpu/drm/mediatek/mtk_dpi_regs.h b/drivers/gpu/drm/mediatek/mtk_dpi_regs.h
index a0b1d18bbbf7..3c24d9e9f241 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi_regs.h
+++ b/drivers/gpu/drm/mediatek/mtk_dpi_regs.h
@@ -40,6 +40,12 @@
 #define FAKE_DE_LEVEN			BIT(21)
 #define FAKE_DE_RODD			BIT(22)
 #define FAKE_DE_REVEN			BIT(23)
+
+/* DPI_CON: DPI instances */
+#define DPI_OUTPUT_1T1P_EN		BIT(24)
+#define DPI_INPUT_2P_EN			BIT(25)
+
+/* DPI_CON: DPINTF instances */
 #define DPINTF_YUV422_EN		BIT(24)
 #define DPINTF_CSC_ENABLE		BIT(26)
 #define DPINTF_INPUT_2P_EN		BIT(29)
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index f22ad2882697..772c3d0f5d14 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -810,6 +810,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
 	  .data = (void *)MTK_DPI },
 	{ .compatible = "mediatek,mt8195-dp-intf",
 	  .data = (void *)MTK_DP_INTF },
+	{ .compatible = "mediatek,mt8195-dpi",
+	  .data = (void *)MTK_DPI },
 	{ .compatible = "mediatek,mt2701-dsi",
 	  .data = (void *)MTK_DSI },
 	{ .compatible = "mediatek,mt8173-dsi",
-- 
2.47.0


