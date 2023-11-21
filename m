Return-Path: <devicetree+bounces-17563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EA07F2D9B
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 13:51:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 003B81C21886
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 12:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A629D3C07E;
	Tue, 21 Nov 2023 12:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="DBpzUERp"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAF9BD52;
	Tue, 21 Nov 2023 04:50:58 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AB37F660731B;
	Tue, 21 Nov 2023 12:50:56 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700571057;
	bh=rbMxFG/9Z/MvXIMSXdH+Z5ELUWvpXJ2G/c2LivRCtOk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DBpzUERpnXVxQTq62hizv4R8fVPbIUHQHcCLwXPwO6zzL2zGsXcb12DLbdmJUVFq1
	 ICTMNG8y4zzELKcVCaY3i0hTea/M301YmHNuOUmnpQ2pz4pWxQcUguqsJNusCGUBd7
	 oaV26QCH0nOlmXt5watgiE+y+quzHg6fcxah8oQ0qXb/q+/z14H18mRpCbob4ZDg+I
	 yW2hH7epRTbxUOALclfGyTF/iYDR3Qp+vKjonIYo7SbHxlrtpd1omapjnm4EHLXRvS
	 nhrxLhBGCOgs+wOEn1BJra0d2PvEUPnBbkO7WDN4WGhwxHUG+GVb6jrGY3IQGWnpmy
	 k7/7fvcF4cPYA==
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
Subject: [PATCH v3 06/20] soc: mediatek: mtk-svs: Change the thermal sensor device name
Date: Tue, 21 Nov 2023 13:50:30 +0100
Message-ID: <20231121125044.78642-7-angelogioacchino.delregno@collabora.com>
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


