Return-Path: <devicetree+bounces-10709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1EC7D28CF
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 05:07:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B790D281491
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 03:07:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 116D71859;
	Mon, 23 Oct 2023 03:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="hhbaAD2X"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC8C15C9
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 03:06:59 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7589ED41;
	Sun, 22 Oct 2023 20:06:52 -0700 (PDT)
X-UUID: 3346eb74715111eea33bb35ae8d461a2-20231023
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=9YVIRwmFT8KYFj002+Q2SJxtVfpVydhliFb7K5MsQ7g=;
	b=hhbaAD2XJKypAxOiqyWZys8xaAfeCfI6aP2PdKr0R49UO3rY6LetZrK0/7r89Z+sQfpNdp5drfpZUvvJKskQIqOqFbmO5MB9kSlNqXlrozpDMvnz6PKkhAh36E6efYpdcwtvBA6Vy3H5ir9FwkLWoBJXEmWaMeJmALXVx4tvlL0=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:fb96c431-51e0-4244-b699-d79254134414,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5f78ec9,CLOUDID:5a95067d-ccd9-4df5-91ce-9df5fea3ae01,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 3346eb74715111eea33bb35ae8d461a2-20231023
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw01.mediatek.com
	(envelope-from <yunfei.dong@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1702391185; Mon, 23 Oct 2023 11:06:46 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 23 Oct 2023 11:06:44 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 23 Oct 2023 11:06:43 +0800
From: Yunfei Dong <yunfei.dong@mediatek.com>
To: Sebastian Fricke <sebastian.fricke@collabora.com>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?=
	<nfraprado@collabora.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Benjamin Gaignard
	<benjamin.gaignard@collabora.com>, Nathan Hebert <nhebert@chromium.org>
CC: Chen-Yu Tsai <wenst@chromium.org>, Hsin-Yi Wang <hsinyi@chromium.org>,
	Fritz Koenig <frkoenig@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Steve
 Cho <stevecho@chromium.org>, Yunfei Dong <yunfei.dong@mediatek.com>,
	<linux-media@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-mediatek@lists.infradead.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Subject: [PATCH v2,2/7] media: mediatek: vcodec: Set the supported h264 level for each platform
Date: Mon, 23 Oct 2023 11:06:35 +0800
Message-ID: <20231023030640.16393-3-yunfei.dong@mediatek.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231023030640.16393-1-yunfei.dong@mediatek.com>
References: <20231023030640.16393-1-yunfei.dong@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-MTK: N

Set the maximum H264 codec level for each platform.
The various mediatek platforms support different levels for decoding, the
level of the codec limits among others the maximum resolution, bit rate
and frame rate for the decoder.

Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>
---
 .../vcodec/decoder/mtk_vcodec_dec_stateless.c | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_stateless.c b/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_stateless.c
index e29c9c58f3da..7aaf0db13a76 100644
--- a/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_stateless.c
+++ b/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_stateless.c
@@ -56,6 +56,15 @@ static const struct mtk_stateless_control mtk_stateless_controls[] = {
 		},
 		.codec_type = V4L2_PIX_FMT_H264_SLICE,
 	},
+	{
+		.cfg = {
+			.id = V4L2_CID_MPEG_VIDEO_H264_LEVEL,
+			.min = V4L2_MPEG_VIDEO_H264_LEVEL_1_0,
+			.def = V4L2_MPEG_VIDEO_H264_LEVEL_4_1,
+			.max = V4L2_MPEG_VIDEO_H264_LEVEL_4_2,
+		},
+		.codec_type = V4L2_PIX_FMT_H264_SLICE,
+	},
 	{
 		.cfg = {
 			.id = V4L2_CID_STATELESS_H264_DECODE_MODE,
@@ -519,6 +528,40 @@ static const struct v4l2_ctrl_ops mtk_vcodec_dec_ctrl_ops = {
 	.s_ctrl = mtk_vdec_s_ctrl,
 };
 
+static void mtk_vcodec_dec_fill_h264_level(struct v4l2_ctrl_config *cfg,
+					   struct mtk_vcodec_dec_ctx *ctx)
+{
+	switch (ctx->dev->chip_name) {
+	case MTK_VDEC_MT8192:
+	case MTK_VDEC_MT8188:
+		cfg->max = V4L2_MPEG_VIDEO_H264_LEVEL_5_2;
+		break;
+	case MTK_VDEC_MT8195:
+		cfg->max = V4L2_MPEG_VIDEO_H264_LEVEL_6_0;
+		break;
+	case MTK_VDEC_MT8183:
+	case MTK_VDEC_MT8186:
+		cfg->max = V4L2_MPEG_VIDEO_H264_LEVEL_4_2;
+		break;
+	default:
+		cfg->max = V4L2_MPEG_VIDEO_H264_LEVEL_4_1;
+		break;
+	};
+}
+
+static void mtk_vcodec_dec_reset_controls(struct v4l2_ctrl_config *cfg,
+					  struct mtk_vcodec_dec_ctx *ctx)
+{
+	switch (cfg->id) {
+	case V4L2_CID_MPEG_VIDEO_H264_LEVEL:
+		mtk_vcodec_dec_fill_h264_level(cfg, ctx);
+		mtk_v4l2_vdec_dbg(3, ctx, "h264 supported level: %lld %lld", cfg->max, cfg->def);
+		break;
+	default:
+		break;
+	};
+}
+
 static int mtk_vcodec_dec_ctrls_setup(struct mtk_vcodec_dec_ctx *ctx)
 {
 	unsigned int i;
@@ -532,6 +575,8 @@ static int mtk_vcodec_dec_ctrls_setup(struct mtk_vcodec_dec_ctx *ctx)
 	for (i = 0; i < NUM_CTRLS; i++) {
 		struct v4l2_ctrl_config cfg = mtk_stateless_controls[i].cfg;
 		cfg.ops = &mtk_vcodec_dec_ctrl_ops;
+
+		mtk_vcodec_dec_reset_controls(&cfg, ctx);
 		v4l2_ctrl_new_custom(&ctx->ctrl_hdl, &cfg, NULL);
 		if (ctx->ctrl_hdl.error) {
 			mtk_v4l2_vdec_err(ctx, "Adding control %d failed %d", i,
-- 
2.18.0


