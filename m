Return-Path: <devicetree+bounces-17539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB68D7F2C55
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 12:56:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 27CF51C218A3
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 11:56:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58BFA495D0;
	Tue, 21 Nov 2023 11:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="OpDnSoPG"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5999D63;
	Tue, 21 Nov 2023 03:56:47 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 73D99660731B;
	Tue, 21 Nov 2023 11:56:45 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700567806;
	bh=EEiAga7/PEKFwq5/KS3naIy5UuB1z5wjPE5byYQKsG4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OpDnSoPGdSH1UzaeAKrP95OFmvISNmdjMD2sQMrcis1DwAE0iY57IcLuXpXMKNvG1
	 wgsn5gdgujm2irWdQuxHZk48L9cYQ5xahqFRwXRiRAiNQaobt+ahTQL8Y+XzUD2Dzo
	 KtfZX8b2pVFWiO25m7E0s8NonOIxatF6SyRaSEXb3l/3L+nYrQogcikjHDda1rOek0
	 x00Jc8svE91glrxLm8VmYo2le9ZC1wXKMtXbYNLWZFlOtn7FfFIhazsOBxRYPXkikS
	 ggSj/54pHRz8N7cMVU4Xg94djhV1anjwj9wf9p6UalW+scbGHy1zsQms5hAJixltE8
	 Vn1Smp6ABGFmw==
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
Subject: [PATCH v2 14/20] soc: mediatek: mtk-svs: Compress of_device_id entries
Date: Tue, 21 Nov 2023 12:56:18 +0100
Message-ID: <20231121115624.56855-15-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231121115624.56855-1-angelogioacchino.delregno@collabora.com>
References: <20231121115624.56855-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Compress each entry to one line, as they fit in 84 columns, which
is acceptable.
While at it, also change the capital 'S' to 's' in 'sentinel'.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/soc/mediatek/mtk-svs.c | 24 ++++++------------------
 1 file changed, 6 insertions(+), 18 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-svs.c b/drivers/soc/mediatek/mtk-svs.c
index 5fd9884dd20f..ac36c2efcafa 100644
--- a/drivers/soc/mediatek/mtk-svs.c
+++ b/drivers/soc/mediatek/mtk-svs.c
@@ -2731,24 +2731,12 @@ static const struct svs_platform_data svs_mt8183_platform_data = {
 };
 
 static const struct of_device_id svs_of_match[] = {
-	{
-		.compatible = "mediatek,mt8195-svs",
-		.data = &svs_mt8195_platform_data,
-	}, {
-		.compatible = "mediatek,mt8192-svs",
-		.data = &svs_mt8192_platform_data,
-	}, {
-		.compatible = "mediatek,mt8188-svs",
-		.data = &svs_mt8188_platform_data,
-	}, {
-		.compatible = "mediatek,mt8186-svs",
-		.data = &svs_mt8186_platform_data,
-	}, {
-		.compatible = "mediatek,mt8183-svs",
-		.data = &svs_mt8183_platform_data,
-	}, {
-		/* Sentinel */
-	},
+	{ .compatible = "mediatek,mt8195-svs", .data = &svs_mt8195_platform_data },
+	{ .compatible = "mediatek,mt8192-svs", .data = &svs_mt8192_platform_data },
+	{ .compatible = "mediatek,mt8188-svs", .data = &svs_mt8188_platform_data },
+	{ .compatible = "mediatek,mt8186-svs", .data = &svs_mt8186_platform_data },
+	{ .compatible = "mediatek,mt8183-svs", .data = &svs_mt8183_platform_data },
+	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, svs_of_match);
 
-- 
2.42.0


