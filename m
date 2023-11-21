Return-Path: <devicetree+bounces-17533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4F37F2C4F
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 12:56:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4C0DBB21D46
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 11:56:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3645495E2;
	Tue, 21 Nov 2023 11:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="eAZdz6wB"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 441A2D47;
	Tue, 21 Nov 2023 03:56:42 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4752B6607325;
	Tue, 21 Nov 2023 11:56:40 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700567801;
	bh=YAm2XwYefU2Wi2EmslwaPruVfwk8nKNQAa35BFgYSvI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eAZdz6wBDUxe/xFVk/DNfuWHvnngIcYV/5EIalT9o0s5s5zdYyOSPAy54MAAsldVc
	 xvth4ox12dkpyxAdVHUuSyG8DLQ/qk0wASACPNF7io8uGC3tQA+mI/UbThqb6fYsbm
	 il8HicYUL1jNMa8+VnCuorIk1WWzwJKU9fPokLWAya29dJpJuVBODgAIn306rCMbOm
	 cbt3EPut0XwcGuJ0Prx+1dGvauuq1R/GO34UYyoR85zN7RFf5781E0u44XmNvaW7Nn
	 jrqUviNyLVrQpOqJhJu0b1XBFlm1960ZsjKTrn4IkhCuGtZlgqHA2WiQah7qsjmMmR
	 bCohB00TFTK9A==
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
Subject: [PATCH v2 09/20] soc: mediatek: mtk-svs: Move t-calibration-data retrieval to svs_probe()
Date: Tue, 21 Nov 2023 12:56:13 +0100
Message-ID: <20231121115624.56855-10-angelogioacchino.delregno@collabora.com>
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

The t-calibration-data (SVS-Thermal calibration data) shall exist for
all SoCs or SVS won't work anyway: move it to the common svs_probe()
function and remove it from all of the per-SoC efuse_parsing() probe
callbacks.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/soc/mediatek/mtk-svs.c | 32 ++++++--------------------------
 1 file changed, 6 insertions(+), 26 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-svs.c b/drivers/soc/mediatek/mtk-svs.c
index ab564d48092b..1042af2aee3f 100644
--- a/drivers/soc/mediatek/mtk-svs.c
+++ b/drivers/soc/mediatek/mtk-svs.c
@@ -1884,11 +1884,6 @@ static bool svs_mt8195_efuse_parsing(struct svs_platform *svsp)
 		svsb->vmax += svsb->dvt_fixed;
 	}
 
-	ret = svs_get_efuse_data(svsp, "t-calibration-data",
-				 &svsp->tefuse, &svsp->tefuse_max);
-	if (ret)
-		return false;
-
 	for (i = 0; i < svsp->tefuse_max; i++)
 		if (svsp->tefuse[i] != 0)
 			break;
@@ -1949,11 +1944,6 @@ static bool svs_mt8192_efuse_parsing(struct svs_platform *svsp)
 		svsb->vmax += svsb->dvt_fixed;
 	}
 
-	ret = svs_get_efuse_data(svsp, "t-calibration-data",
-				 &svsp->tefuse, &svsp->tefuse_max);
-	if (ret)
-		return false;
-
 	for (i = 0; i < svsp->tefuse_max; i++)
 		if (svsp->tefuse[i] != 0)
 			break;
@@ -2009,11 +1999,6 @@ static bool svs_mt8188_efuse_parsing(struct svs_platform *svsp)
 		svsb->vmax += svsb->dvt_fixed;
 	}
 
-	ret = svs_get_efuse_data(svsp, "t-calibration-data",
-				 &svsp->tefuse, &svsp->tefuse_max);
-	if (ret)
-		return false;
-
 	for (i = 0; i < svsp->tefuse_max; i++)
 		if (svsp->tefuse[i] != 0)
 			break;
@@ -2097,11 +2082,6 @@ static bool svs_mt8186_efuse_parsing(struct svs_platform *svsp)
 		svsb->vmax += svsb->dvt_fixed;
 	}
 
-	ret = svs_get_efuse_data(svsp, "t-calibration-data",
-				 &svsp->tefuse, &svsp->tefuse_max);
-	if (ret)
-		return false;
-
 	golden_temp = (svsp->tefuse[0] >> 24) & GENMASK(7, 0);
 	if (!golden_temp)
 		golden_temp = 50;
@@ -2198,11 +2178,6 @@ static bool svs_mt8183_efuse_parsing(struct svs_platform *svsp)
 		}
 	}
 
-	ret = svs_get_efuse_data(svsp, "t-calibration-data",
-				 &svsp->tefuse, &svsp->tefuse_max);
-	if (ret)
-		return false;
-
 	/* Thermal efuse parsing */
 	adc_ge_t = (svsp->tefuse[1] >> 22) & GENMASK(9, 0);
 	adc_oe_t = (svsp->tefuse[1] >> 12) & GENMASK(9, 0);
@@ -3040,8 +3015,13 @@ static int svs_probe(struct platform_device *pdev)
 
 	ret = svs_get_efuse_data(svsp, "svs-calibration-data",
 				 &svsp->efuse, &svsp->efuse_max);
+	if (ret)
+		return dev_err_probe(&pdev->dev, ret, "Cannot read SVS calibration\n");
+
+	ret = svs_get_efuse_data(svsp, "t-calibration-data",
+				 &svsp->tefuse, &svsp->tefuse_max);
 	if (ret) {
-		ret = -EPERM;
+		dev_err_probe(&pdev->dev, ret, "Cannot read SVS-Thermal calibration\n");
 		goto svs_probe_free_efuse;
 	}
 
-- 
2.42.0


