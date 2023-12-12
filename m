Return-Path: <devicetree+bounces-24315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5B380EB70
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 13:20:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5C499B20DBF
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 12:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF92D5EE77;
	Tue, 12 Dec 2023 12:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="OIEbJsAG"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5AEEC3;
	Tue, 12 Dec 2023 04:20:09 -0800 (PST)
X-UUID: c6ccf47498e811eea5db2bebc7c28f94-20231212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=6ySY1u/YNaA7jfhX55xp0CtWVrzD0erxT1NWG3Ec/Vo=;
	b=OIEbJsAG8If+T82xYPUBlgMMcstui73Dbqn9SEvN+8rRZU2HYibvLcB9rpFBInAlveVG1WxEJpeIZnfkUukI8pPT193NurNO4/lgd9Z2HKZuF7gO1V3cOkBmQlu49oQ/0H6jKcWBiqCJEatLbKxWiqaEg9qJOlyay3u7YAsu9bQ=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.35,REQID:b8749653-df68-4fb8-9bbc-43700a6fcc63,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5d391d7,CLOUDID:373b1c61-c89d-4129-91cb-8ebfae4653fc,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: c6ccf47498e811eea5db2bebc7c28f94-20231212
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw01.mediatek.com
	(envelope-from <shawn.sung@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 594440457; Tue, 12 Dec 2023 20:20:03 +0800
Received: from mtkmbs13n2.mediatek.inc (172.21.101.108) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 12 Dec 2023 20:20:01 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 12 Dec 2023 20:20:01 +0800
From: Hsiao Chien Sung <shawn.sung@mediatek.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, CK Hu <ck.hu@mediatek.com>
CC: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, Chen-Yu Tsai <wenst@chromium.org>, Sean Paul
	<sean@poorly.run>, Fei Shao <fshao@chromium.org>, Bibby Hsieh
	<bibby.hsieh@mediatek.com>, <dri-devel@lists.freedesktop.org>,
	<linux-mediatek@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	"Hsiao Chien Sung" <shawn.sung@mediatek.com>
Subject: [PATCH v4 08/17] drm/mediatek: Support alpha blending in display driver
Date: Tue, 12 Dec 2023 20:19:48 +0800
Message-ID: <20231212121957.19231-9-shawn.sung@mediatek.com>
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
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--6.676900-8.000000
X-TMASE-MatchedRID: uP1aVdOuidn2fv0LTPfvM6MVgdN9w+TCG9Itfzsy8/Xvnm3ZesFzgvKC
	81FnsF5IrUhQzMxACbp+6n5OByhL/9S/P7msP4phXP5rFAucBUF9LQinZ4QefPcjNeVeWlqY+gt
	Hj7OwNO31Kzk40dEY9ZuHU9bZjqh9ETalZivxO7S1Qc3P+ghxGHPWA7TjQr4H
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--6.676900-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	430A300697861B49F3FF941E41A8CF8D528CC0377473359CF40861FC00E808A82000:8
X-MTK: N

Support alpha blending by adding correct blend mode and
alpha property in plane initialization.

Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_plane.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
index 9208f03b3f8c..dfd81172a940 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -349,6 +349,17 @@ int mtk_plane_init(struct drm_device *dev, struct drm_plane *plane,
 			DRM_INFO("Create rotation property failed\n");
 	}
 
+	err = drm_plane_create_alpha_property(plane);
+	if (err)
+		DRM_ERROR("failed to create property: alpha\n");
+
+	err = drm_plane_create_blend_mode_property(plane,
+						   BIT(DRM_MODE_BLEND_PREMULTI) |
+						   BIT(DRM_MODE_BLEND_COVERAGE) |
+						   BIT(DRM_MODE_BLEND_PIXEL_NONE));
+	if (err)
+		DRM_ERROR("failed to create property: blend_mode\n");
+
 	drm_plane_helper_add(plane, &mtk_plane_helper_funcs);
 
 	return 0;
-- 
2.18.0


