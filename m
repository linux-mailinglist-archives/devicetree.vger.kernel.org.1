Return-Path: <devicetree+bounces-17529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C6B7F2C48
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 12:56:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7FF88281E62
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 11:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB123495C2;
	Tue, 21 Nov 2023 11:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="BOJXhvq4"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A3F7131;
	Tue, 21 Nov 2023 03:56:39 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 347AE660732E;
	Tue, 21 Nov 2023 11:56:37 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700567798;
	bh=rbMxFG/9Z/MvXIMSXdH+Z5ELUWvpXJ2G/c2LivRCtOk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BOJXhvq4C9UV/vImSye1MfJJrb0nTSDZS32sdnmUOS93jx/wHGT85watYQwvucA8K
	 e7pEls/wtVZp5e6i0GG+ffeJ4wTz62QLYPS+VIdRm3oujpBz0n7XdE/AEWo2ahi8d9
	 JM4dWTqvf11DWirTYh1dFvwYHpi8cKoOiRDISlnEQ+KqdSWwT5oS4eXgHA+psjm1KT
	 kXjhniyB+uMidk2Dz/fIlcBB7x0FqpXAGD0r1HtAETKf0xlIvHbeNCa29nviOAZWiU
	 RP5rfwyc2B1YtyoSb/etDScxpw+M/UjreXP83L12Rjvxl+kVySOv9sPx/Bff82dA0U
	 a0YZSVjc/2suw==
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
Subject: [PATCH v2 06/20] soc: mediatek: mtk-svs: Change the thermal sensor device name
Date: Tue, 21 Nov 2023 12:56:10 +0100
Message-ID: <20231121115624.56855-7-angelogioacchino.delregno@collabora.com>
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

This driver tries to create a device link to the thermal sensor device:
change all instances of "lvts" and "thermal" to "thermal-sensor", as
that's what the devicetree node name must be.

Note for MT8183: As specified in a previous commit, this SoC never got
SVS probing, so this is not a breaking change and it does not require
fallback for older device trees.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/soc/mediatek/mtk-svs.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-svs.c b/drivers/soc/mediatek/mtk-svs.c
index 6c27fb523bfa..b5beb33c95ba 100644
--- a/drivers/soc/mediatek/mtk-svs.c
+++ b/drivers/soc/mediatek/mtk-svs.c
@@ -2329,7 +2329,7 @@ static int svs_mt8192_platform_probe(struct svs_platform *svsp)
 		return dev_err_probe(svsp->dev, PTR_ERR(svsp->rst),
 				     "cannot get svs reset control\n");
 
-	dev = svs_add_device_link(svsp, "lvts");
+	dev = svs_add_device_link(svsp, "thermal-sensor");
 	if (IS_ERR(dev))
 		return dev_err_probe(svsp->dev, PTR_ERR(dev),
 				     "failed to get lvts device\n");
@@ -2362,7 +2362,7 @@ static int svs_mt8186_platform_probe(struct svs_platform *svsp)
 		return dev_err_probe(svsp->dev, PTR_ERR(svsp->rst),
 				     "cannot get svs reset control\n");
 
-	dev = svs_add_device_link(svsp, "lvts");
+	dev = svs_add_device_link(svsp, "thermal-sensor");
 	if (IS_ERR(dev))
 		return dev_err_probe(svsp->dev, PTR_ERR(dev),
 				     "failed to get lvts device\n");
@@ -2401,7 +2401,7 @@ static int svs_mt8183_platform_probe(struct svs_platform *svsp)
 	struct svs_bank *svsb;
 	u32 idx;
 
-	dev = svs_add_device_link(svsp, "thermal");
+	dev = svs_add_device_link(svsp, "thermal-sensor");
 	if (IS_ERR(dev))
 		return dev_err_probe(svsp->dev, PTR_ERR(dev),
 				     "failed to get thermal device\n");
-- 
2.42.0


