Return-Path: <devicetree+bounces-9899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BD67CEF7D
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 07:56:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 644FB1C20B15
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 05:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B7F58F63;
	Thu, 19 Oct 2023 05:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="Jq4FGrLQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44EF63A4
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 05:56:36 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE422124;
	Wed, 18 Oct 2023 22:56:33 -0700 (PDT)
X-UUID: 3d52d5026e4411eea33bb35ae8d461a2-20231019
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=7C1sDzO4W4A9cu2M5CMOj2+5Gzk6upR7EYFW5XCk6Jg=;
	b=Jq4FGrLQsji03aPnQKu4z8rJoASW99qB/BH1inkAYbci8hTqkjdIot8Spl5r8KgtcvkeWuWfR7Z4baqa8XPc2BpIh1zgbhNJPYLHc55EZmRCXRfglXrCHilGXg/3jEh7Xm0uwTVWTxBl+KK4INWbi3FZABVX/ToJuUYgyC8Lj18=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:13615eee-b6f5-4f96-a45a-cdffcd1fa3a0,IP:0,U
	RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-META: VersionHash:5f78ec9,CLOUDID:dda44dc4-1e57-4345-9d31-31ad9818b39f,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: 3d52d5026e4411eea33bb35ae8d461a2-20231019
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw01.mediatek.com
	(envelope-from <shawn.sung@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1517098692; Thu, 19 Oct 2023 13:56:26 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 19 Oct 2023 13:56:24 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 19 Oct 2023 13:56:24 +0800
From: Hsiao Chien Sung <shawn.sung@mediatek.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, CK
 Hu <ck.hu@mediatek.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>
CC: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, Daniel Vetter
	<daniel@ffwll.ch>, Fei Shao <fshao@chromium.org>, Sean Paul
	<sean@poorly.run>, Johnson Wang
	<johnson.wang@mediatek.corp-partner.google.com>, "Nancy . Lin"
	<nancy.lin@mediatek.com>, Moudy Ho <moudy.ho@mediatek.com>, Hsiao Chien Sung
	<shawn.sung@mediatek.com>, "Jason-JH . Lin" <jason-jh.lin@mediatek.com>,
	Nathan Lu <nathan.lu@mediatek.com>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
	<linux-mediatek@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v10 24/24] drm/mediatek: Support MT8188 VDOSYS1 in display driver
Date: Thu, 19 Oct 2023 13:56:19 +0800
Message-ID: <20231019055619.19358-25-shawn.sung@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20231019055619.19358-1-shawn.sung@mediatek.com>
References: <20231019055619.19358-1-shawn.sung@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-MTK: N

- The mmsys_dev_num in MT8188 VDOSYS0 was set to 1 since
  VDOSYS1 was not available before. Increase it to support
  VDOSYS1 in display driver.
- Add compatible name for MT8188 VDOSYS1
  (shares the same driver data with MT8195 VDOSYS1)

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 62e6e9785443..eecfeb8fbde1 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -303,7 +303,7 @@ static const struct mtk_mmsys_driver_data mt8188_vdosys0_driver_data = {
 	.main_len = ARRAY_SIZE(mt8188_mtk_ddp_main),
 	.conn_routes = mt8188_mtk_ddp_main_routes,
 	.conn_routes_num = ARRAY_SIZE(mt8188_mtk_ddp_main_routes),
-	.mmsys_dev_num = 1,
+	.mmsys_dev_num = 2,
 };
 
 static const struct mtk_mmsys_driver_data mt8192_mmsys_driver_data = {
@@ -344,6 +344,8 @@ static const struct of_device_id mtk_drm_of_ids[] = {
 	  .data = &mt8186_mmsys_driver_data},
 	{ .compatible = "mediatek,mt8188-vdosys0",
 	  .data = &mt8188_vdosys0_driver_data},
+	{ .compatible = "mediatek,mt8188-vdosys1",
+	  .data = &mt8195_vdosys1_driver_data},
 	{ .compatible = "mediatek,mt8192-mmsys",
 	  .data = &mt8192_mmsys_driver_data},
 	{ .compatible = "mediatek,mt8195-mmsys",
-- 
2.18.0


