Return-Path: <devicetree+bounces-9910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FE47CEF97
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 07:57:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 78617B213D9
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 05:56:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFC209476;
	Thu, 19 Oct 2023 05:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="sKu6BjXH"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592B263C4
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 05:56:37 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CDF912E;
	Wed, 18 Oct 2023 22:56:33 -0700 (PDT)
X-UUID: 3d0d7b2e6e4411eea33bb35ae8d461a2-20231019
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=WTOeBIDjwXjGhqKsLqsXHoxBxxG+10elJsW9pXcqeO0=;
	b=sKu6BjXHIKuNtJS3LT9ulSoIThiBVYyHxD6/JNr9XqCiZeuQbe9jw7UUDCIhGR6Q1PVX21A4aC6TArR3Uu6xvRZjCPEjmurR+cFU57PlaKqo+99zYQ9WDjNso3l2fbDmIAAc5BcAvqnQtHgLp4I9Lds9ieqBYRMDazo/0n01iDA=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:25484aef-dc3e-4039-9307-3cf5d2056114,IP:0,U
	RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-META: VersionHash:5f78ec9,CLOUDID:fd671cc0-14cc-44ca-b657-2d2783296e72,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: 3d0d7b2e6e4411eea33bb35ae8d461a2-20231019
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw01.mediatek.com
	(envelope-from <shawn.sung@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 686864877; Thu, 19 Oct 2023 13:56:25 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 19 Oct 2023 13:56:24 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 19 Oct 2023 13:56:24 +0800
From: Hsiao Chien Sung <shawn.sung@mediatek.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, "CK
 Hu" <ck.hu@mediatek.com>, Krzysztof Kozlowski
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
Subject: [PATCH v10 22/24] drm/mediatek: Remove the redundant driver data for DPI
Date: Thu, 19 Oct 2023 13:56:17 +0800
Message-ID: <20231019055619.19358-23-shawn.sung@mediatek.com>
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
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--9.529400-8.000000
X-TMASE-MatchedRID: WsqM2HNgAwhF/TNFimjSuBIRh9wkXSlFuLwbhNl9B5Waecho1pk4sZsn
	GP/L/vukLYexjI/F2s67aBKK8e6y8yUtdpGicV4RA9lly13c/gH0O7M3lSnTW5mbV2ZhKJALz1r
	LcNpRkyigv6kwylEI2R1+KsAVmYZiUW22dI8YBToVglQa/gMvfH0tCKdnhB589yM15V5aWpj6C0
	ePs7A07U9hWalM11QahvxZWMzeOeIzB7F7QR2RnKWuw6yD/fUEepmB0g5ZYm5WXGvUUmKP2w==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--9.529400-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	951C4F1E705FBE8ABA241F3318433CD41ACF162FCE17A6B8F28E5B2BCD47F9872000:8
X-MTK: N

DPI input is in 1T2P mode on both MT8195 and MT8188.
Remove the redundant driver data to align the settings, or
the screen will glitch.

Fixes: 2847cd7e6403 ("drm/mediatek: Add mt8188 dpi compatibles and platform data")

Reviewed-by: CK Hu <ck.hu@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index 1bf6041dd88b..d633f1ca3e71 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -967,20 +967,6 @@ static const struct mtk_dpi_conf mt8186_conf = {
 	.csc_enable_bit = CSC_ENABLE,
 };
 
-static const struct mtk_dpi_conf mt8188_dpintf_conf = {
-	.cal_factor = mt8195_dpintf_calculate_factor,
-	.max_clock_khz = 600000,
-	.output_fmts = mt8195_output_fmts,
-	.num_output_fmts = ARRAY_SIZE(mt8195_output_fmts),
-	.pixels_per_iter = 4,
-	.input_2pixel = false,
-	.dimension_mask = DPINTF_HPW_MASK,
-	.hvsize_mask = DPINTF_HSIZE_MASK,
-	.channel_swap_shift = DPINTF_CH_SWAP,
-	.yuv422_en_bit = DPINTF_YUV422_EN,
-	.csc_enable_bit = DPINTF_CSC_ENABLE,
-};
-
 static const struct mtk_dpi_conf mt8192_conf = {
 	.cal_factor = mt8183_calculate_factor,
 	.reg_h_fre_con = 0xe0,
@@ -1104,7 +1090,7 @@ static const struct of_device_id mtk_dpi_of_ids[] = {
 	{ .compatible = "mediatek,mt8173-dpi", .data = &mt8173_conf },
 	{ .compatible = "mediatek,mt8183-dpi", .data = &mt8183_conf },
 	{ .compatible = "mediatek,mt8186-dpi", .data = &mt8186_conf },
-	{ .compatible = "mediatek,mt8188-dp-intf", .data = &mt8188_dpintf_conf },
+	{ .compatible = "mediatek,mt8188-dp-intf", .data = &mt8195_dpintf_conf },
 	{ .compatible = "mediatek,mt8192-dpi", .data = &mt8192_conf },
 	{ .compatible = "mediatek,mt8195-dp-intf", .data = &mt8195_dpintf_conf },
 	{ /* sentinel */ },
-- 
2.18.0


