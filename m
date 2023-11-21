Return-Path: <devicetree+bounces-17565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 144F07F2D9D
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 13:51:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 458191C21569
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 12:51:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 690493D383;
	Tue, 21 Nov 2023 12:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Dy8nGXWd"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27B53D69;
	Tue, 21 Nov 2023 04:51:00 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BA65B6607319;
	Tue, 21 Nov 2023 12:50:58 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700571059;
	bh=n+I9YOPDM99MnwpUCp/Jyp5QiCWQ9S9IzP9LXdnM4XE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Dy8nGXWdvPSsM5zqAHNWXFtkPY/CD+8TDJ2WuIQR9lA0ZWOv00MoLYVOgZz0vsC9u
	 VE10qlW9gQereyffjew/gDsiCsH8lmSZSA7aAdVWf0PbEPr+C8Bwjeo0cRNIhWAJr7
	 r0JsNv9fC1IBlvvR+Fm9jW8/p2yRO9GnNMuAP4xI+ROp68uKwjvzR+XL358m7Sbfxz
	 bJg9u7ozDj7Nyeli27vVe74BouUZmuKGK672lWp8sUSCNkGehPMDoFtPRETcm3jHL0
	 pcuEuerVqQCbLbwVP3EDPn5Cb5nDTOjRgF5z7GmGQwNWa2yqvqtM1tXav4pcbZd4/h
	 qiY11JeHYz2HQ==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: matthias.bgg@gmail.com
Cc: krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	robh+dt@kernel.org,
	angelogioacchino.delregno@collabora.com,
	p.zabel@pengutronix.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel@collabora.com,
	wenst@chromium.org
Subject: [PATCH v3 08/20] soc: mediatek: mtk-svs: Add SVS-Thermal coefficient to SoC platform data
Date: Tue, 21 Nov 2023 13:50:32 +0100
Message-ID: <20231121125044.78642-9-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231121125044.78642-1-angelogioacchino.delregno@collabora.com>
References: <20231121125044.78642-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In preparation for commonizing the efuse parsing function, add the
SVS-Thermal coefficients for all SoCs for which said function can be
commonized (MT8186, MT8188, MT8192, MT8195) and assign those to their
platform data structure.
That will be used to calculate the MTS parameter with the equation
                     MTS = (ts_coeff * 2) / 1000

This commit brings no functional changes.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/soc/mediatek/mtk-svs.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-svs.c b/drivers/soc/mediatek/mtk-svs.c
index 6c6f133c327f..ab564d48092b 100644
--- a/drivers/soc/mediatek/mtk-svs.c
+++ b/drivers/soc/mediatek/mtk-svs.c
@@ -118,6 +118,10 @@
 #define SVSB_VOPS_FLD_VOP2_6		GENMASK(23, 16)
 #define SVSB_VOPS_FLD_VOP3_7		GENMASK(31, 24)
 
+/* SVS Thermal Coefficients */
+#define SVSB_TS_COEFF_MT8195		250460
+#define SVSB_TS_COEFF_MT8186		204650
+
 /* svs bank related setting */
 #define BITS8				8
 #define MAX_OPP_ENTRIES			16
@@ -374,6 +378,7 @@ struct svs_fusemap {
  * @bank_max: total number of svs banks
  * @efuse: svs efuse data received from NVMEM framework
  * @tefuse: thermal efuse data received from NVMEM framework
+ * @ts_coeff: thermal sensors coefficient
  */
 struct svs_platform {
 	void __iomem *base;
@@ -388,6 +393,7 @@ struct svs_platform {
 	u32 bank_max;
 	u32 *efuse;
 	u32 *tefuse;
+	u32 ts_coeff;
 };
 
 struct svs_platform_data {
@@ -398,6 +404,7 @@ struct svs_platform_data {
 	const struct svs_fusemap *glb_fuse_map;
 	const u32 *regs;
 	u32 bank_max;
+	u32 ts_coeff;
 };
 
 /**
@@ -2926,6 +2933,7 @@ static const struct svs_platform_data svs_mt8195_platform_data = {
 	.probe = svs_mt8192_platform_probe,
 	.regs = svs_regs_v2,
 	.bank_max = ARRAY_SIZE(svs_mt8195_banks),
+	.ts_coeff = SVSB_TS_COEFF_MT8195,
 	.glb_fuse_map = (const struct svs_fusemap[GLB_MAX]) {
 		{ 0, 0 }, { 19, 4 }
 	}
@@ -2938,6 +2946,7 @@ static const struct svs_platform_data svs_mt8192_platform_data = {
 	.probe = svs_mt8192_platform_probe,
 	.regs = svs_regs_v2,
 	.bank_max = ARRAY_SIZE(svs_mt8192_banks),
+	.ts_coeff = SVSB_TS_COEFF_MT8195,
 	.glb_fuse_map = (const struct svs_fusemap[GLB_MAX]) {
 		/* FT_PGM not present */
 		{ -1, 0 }, { 19, 4 }
@@ -2951,6 +2960,7 @@ static const struct svs_platform_data svs_mt8188_platform_data = {
 	.probe = svs_mt8192_platform_probe,
 	.regs = svs_regs_v2,
 	.bank_max = ARRAY_SIZE(svs_mt8188_banks),
+	.ts_coeff = SVSB_TS_COEFF_MT8195,
 	.glb_fuse_map = (const struct svs_fusemap[GLB_MAX]) {
 		/* FT_PGM and VMIN not present */
 		{ -1, 0 }, { -1, 0 }
@@ -2964,6 +2974,7 @@ static const struct svs_platform_data svs_mt8186_platform_data = {
 	.probe = svs_mt8186_platform_probe,
 	.regs = svs_regs_v2,
 	.bank_max = ARRAY_SIZE(svs_mt8186_banks),
+	.ts_coeff = SVSB_TS_COEFF_MT8186,
 	.glb_fuse_map = (const struct svs_fusemap[GLB_MAX]) {
 		/* FT_PGM and VMIN not present */
 		{ -1, 0 }, { -1, 0 }
@@ -3021,6 +3032,7 @@ static int svs_probe(struct platform_device *pdev)
 	svsp->banks = svsp_data->banks;
 	svsp->regs = svsp_data->regs;
 	svsp->bank_max = svsp_data->bank_max;
+	svsp->ts_coeff = svsp_data->ts_coeff;
 
 	ret = svsp_data->probe(svsp);
 	if (ret)
-- 
2.42.0


