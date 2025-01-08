Return-Path: <devicetree+bounces-136566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8856A059AA
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:28:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6E6243A6878
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:28:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD8951F9403;
	Wed,  8 Jan 2025 11:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="MVgqdUC3"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889BD1F8AF0;
	Wed,  8 Jan 2025 11:28:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736335686; cv=none; b=g4nKC5/5rT0XsygHJYJoDuSeziLzde/XjToAIuTKSAcOZambDvrR5mTqkZPNIgLuYFNeQpP9BqUW328PGWtVX960NCHJ1RIQkMPwF2GFfIoaWTKEhxus9o4N6H6oy3LPr8ec2NgBb/roiy6Tz6MB8TxM66cZ+5mhV66sUu9BLXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736335686; c=relaxed/simple;
	bh=5ZWR3VrEFEA+tplx7vKCParyR0aAndx665CJ8bDx9Gk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=p3Hxh8AU7DvkFGYPKWFQmrT9sMYcCV5EzzPFSzM/3YWyGmU92OqABUO5wLS4N3AC3oJQ42T5yScPjFW5Ye1rrsoZ8YuVgfF9FwZOq+w4MVd8tmv6sskogFZEYehv5Xz6+zdLVb/zNN4niJMsR1g3Sxm6XbvmbQMQSLXG10+Y0k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=MVgqdUC3; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736335682;
	bh=5ZWR3VrEFEA+tplx7vKCParyR0aAndx665CJ8bDx9Gk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MVgqdUC33O0zL7ar3FxJoajUY7VXQRR5arL8tEn0VKgEzuxIUtYhekeDsU6jujoJN
	 L2c1DhMpluluSGILRKNTjturN+SbctL+oNB1YjNCUA0SFhd8Enr2+dHYH1Oe0JBpRN
	 AHPPWwIhC5uXV/bdUzP3ytTaGeg/QLvcxSBvG7R1nRSpU+urlweYTBrn1kDVUyNJEX
	 p0Zx9h+HdMtzz9Qj3jrAuErvJ3tXKrzK8/tGdHYmwHdwXmt1kThpmaLnCxdLM4wJ3P
	 Z8zjINKzceM21+JSTZ3iKK8tPcFXjQWaeANFLL2VRcyKcO3x+nVy8EELahfLMTbHzb
	 laCE9D/2UVeNw==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 867BD17E156E;
	Wed,  8 Jan 2025 12:28:01 +0100 (CET)
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
Subject: [PATCH v4 03/34] drm/mediatek: mtk_dpi: Use an array for pixclk factor calculation
Date: Wed,  8 Jan 2025 12:27:13 +0100
Message-ID: <20250108112744.64686-4-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250108112744.64686-1-angelogioacchino.delregno@collabora.com>
References: <20250108112744.64686-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Setting the TVD PLL clock requires to multiply the target pixel
clock by a specific constant factor to achieve the target PLL
frequency, and this is done to reduce jitter to acceptable levels.

On all MediaTek SoCs, the factor is not retrieved by any real kind
of calculation but rather by checking if the target pixel clock
is less than a specified frequency, hence assigning a function
pointer for just a bunch of if branches does enlarge the code
size for little reason.

Remove all SoC-specific functions, add a structure `mtk_dpi_factor`
that holds a clock frequency and corresponding PLL factor, and
declare the constraints for each SoC in form of an array of said
structure.
Instead of function pointers, this structure (and its size) is then
assigned to each SoC's platform data.

The "calculation" is then performed with a new static function
mtk_dpi_calculate_factor(dpi, mode_clk) that iterates through all
of the entries of the aforementioned array and returns the right
factor.

If no factor is found, the lowest possible factor is returned,
mimicking the same flow as all of the old per-SoC calculation
functions.

This commit brings no functional change.

Reviewed-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c | 103 +++++++++++++++--------------
 1 file changed, 52 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index 4194ac328b0b..3bdce932f910 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -117,9 +117,15 @@ struct mtk_dpi_yc_limit {
 	u16 c_bottom;
 };
 
+struct mtk_dpi_factor {
+	u32 clock;
+	u8 factor;
+};
+
 /**
  * struct mtk_dpi_conf - Configuration of mediatek dpi.
- * @cal_factor: Callback function to calculate factor value.
+ * @dpi_factor: SoC-specific pixel clock PLL factor values.
+ * @num_dpi_factor: Number of pixel clock PLL factor values.
  * @reg_h_fre_con: Register address of frequency control.
  * @max_clock_khz: Max clock frequency supported for this SoCs in khz units.
  * @edge_sel_en: Enable of edge selection.
@@ -140,7 +146,8 @@ struct mtk_dpi_yc_limit {
  * @edge_cfg_in_mmsys: If the edge configuration for DPI's output needs to be set in MMSYS.
  */
 struct mtk_dpi_conf {
-	unsigned int (*cal_factor)(int clock);
+	const struct mtk_dpi_factor *dpi_factor;
+	const u8 num_dpi_factor;
 	u32 reg_h_fre_con;
 	u32 max_clock_khz;
 	bool edge_sel_en;
@@ -515,6 +522,20 @@ static int mtk_dpi_power_on(struct mtk_dpi *dpi)
 	return ret;
 }
 
+static unsigned int mtk_dpi_calculate_factor(struct mtk_dpi *dpi, int mode_clk)
+{
+	const struct mtk_dpi_factor *dpi_factor = dpi->conf->dpi_factor;
+	int i;
+
+	for (i = 0; i < dpi->conf->num_dpi_factor; i++) {
+		if (mode_clk <= dpi_factor[i].clock)
+			return dpi_factor[i].factor;
+	}
+
+	/* If no match try the lowest possible factor */
+	return dpi_factor[dpi->conf->num_dpi_factor - 1].factor;
+}
+
 static int mtk_dpi_set_display_mode(struct mtk_dpi *dpi,
 				    struct drm_display_mode *mode)
 {
@@ -529,7 +550,7 @@ static int mtk_dpi_set_display_mode(struct mtk_dpi *dpi,
 	unsigned int factor;
 
 	/* let pll_rate can fix the valid range of tvdpll (1G~2GHz) */
-	factor = dpi->conf->cal_factor(mode->clock);
+	factor = mtk_dpi_calculate_factor(dpi, mode_clk);
 	drm_display_mode_to_videomode(mode, &vm);
 	pll_rate = vm.pixelclock * factor;
 
@@ -964,48 +985,6 @@ static const struct component_ops mtk_dpi_component_ops = {
 	.unbind = mtk_dpi_unbind,
 };
 
-static unsigned int mt8173_calculate_factor(int clock)
-{
-	if (clock <= 27000)
-		return 3 << 4;
-	else if (clock <= 84000)
-		return 3 << 3;
-	else if (clock <= 167000)
-		return 3 << 2;
-	else
-		return 3 << 1;
-}
-
-static unsigned int mt2701_calculate_factor(int clock)
-{
-	if (clock <= 64000)
-		return 4;
-	else if (clock <= 128000)
-		return 2;
-	else
-		return 1;
-}
-
-static unsigned int mt8183_calculate_factor(int clock)
-{
-	if (clock <= 27000)
-		return 8;
-	else if (clock <= 167000)
-		return 4;
-	else
-		return 2;
-}
-
-static unsigned int mt8195_dpintf_calculate_factor(int clock)
-{
-	if (clock < 70000)
-		return 4;
-	else if (clock < 200000)
-		return 2;
-	else
-		return 1;
-}
-
 static const u32 mt8173_output_fmts[] = {
 	MEDIA_BUS_FMT_RGB888_1X24,
 };
@@ -1020,8 +999,25 @@ static const u32 mt8195_output_fmts[] = {
 	MEDIA_BUS_FMT_YUYV8_1X16,
 };
 
+static const struct mtk_dpi_factor dpi_factor_mt2701[] = {
+	{ 64000, 4 }, { 128000, 2 }, { U32_MAX, 1 }
+};
+
+static const struct mtk_dpi_factor dpi_factor_mt8173[] = {
+	{ 27000, 48 }, { 84000, 24 }, { 167000, 12 }, { U32_MAX, 6 }
+};
+
+static const struct mtk_dpi_factor dpi_factor_mt8183[] = {
+	{ 27000, 8 }, { 167000, 4 }, { U32_MAX, 2 }
+};
+
+static const struct mtk_dpi_factor dpi_factor_mt8195_dp_intf[] = {
+	{ 70000 - 1, 4 }, { 200000 - 1, 2 }, { U32_MAX, 1 }
+};
+
 static const struct mtk_dpi_conf mt8173_conf = {
-	.cal_factor = mt8173_calculate_factor,
+	.dpi_factor = dpi_factor_mt8173,
+	.num_dpi_factor = ARRAY_SIZE(dpi_factor_mt8173),
 	.reg_h_fre_con = 0xe0,
 	.max_clock_khz = 300000,
 	.output_fmts = mt8173_output_fmts,
@@ -1038,7 +1034,8 @@ static const struct mtk_dpi_conf mt8173_conf = {
 };
 
 static const struct mtk_dpi_conf mt2701_conf = {
-	.cal_factor = mt2701_calculate_factor,
+	.dpi_factor = dpi_factor_mt2701,
+	.num_dpi_factor = ARRAY_SIZE(dpi_factor_mt2701),
 	.reg_h_fre_con = 0xb0,
 	.edge_sel_en = true,
 	.max_clock_khz = 150000,
@@ -1056,7 +1053,8 @@ static const struct mtk_dpi_conf mt2701_conf = {
 };
 
 static const struct mtk_dpi_conf mt8183_conf = {
-	.cal_factor = mt8183_calculate_factor,
+	.dpi_factor = dpi_factor_mt8183,
+	.num_dpi_factor = ARRAY_SIZE(dpi_factor_mt8183),
 	.reg_h_fre_con = 0xe0,
 	.max_clock_khz = 100000,
 	.output_fmts = mt8183_output_fmts,
@@ -1073,7 +1071,8 @@ static const struct mtk_dpi_conf mt8183_conf = {
 };
 
 static const struct mtk_dpi_conf mt8186_conf = {
-	.cal_factor = mt8183_calculate_factor,
+	.dpi_factor = dpi_factor_mt8183,
+	.num_dpi_factor = ARRAY_SIZE(dpi_factor_mt8183),
 	.reg_h_fre_con = 0xe0,
 	.max_clock_khz = 150000,
 	.output_fmts = mt8183_output_fmts,
@@ -1091,7 +1090,8 @@ static const struct mtk_dpi_conf mt8186_conf = {
 };
 
 static const struct mtk_dpi_conf mt8192_conf = {
-	.cal_factor = mt8183_calculate_factor,
+	.dpi_factor = dpi_factor_mt8183,
+	.num_dpi_factor = ARRAY_SIZE(dpi_factor_mt8183),
 	.reg_h_fre_con = 0xe0,
 	.max_clock_khz = 150000,
 	.output_fmts = mt8183_output_fmts,
@@ -1108,7 +1108,8 @@ static const struct mtk_dpi_conf mt8192_conf = {
 };
 
 static const struct mtk_dpi_conf mt8195_dpintf_conf = {
-	.cal_factor = mt8195_dpintf_calculate_factor,
+	.dpi_factor = dpi_factor_mt8195_dp_intf,
+	.num_dpi_factor = ARRAY_SIZE(dpi_factor_mt8195_dp_intf),
 	.max_clock_khz = 600000,
 	.output_fmts = mt8195_output_fmts,
 	.num_output_fmts = ARRAY_SIZE(mt8195_output_fmts),
-- 
2.47.0


