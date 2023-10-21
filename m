Return-Path: <devicetree+bounces-10526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 743377D1C3C
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 11:47:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A4E7D1C2096F
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 09:47:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0EB8D50F;
	Sat, 21 Oct 2023 09:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="PAhJwMvC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA88C1C3A
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 09:47:12 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75C4C19E;
	Sat, 21 Oct 2023 02:47:07 -0700 (PDT)
Received: from localhost (89-26-75-29.dyn.cablelink.at [89.26.75.29])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1A1116607314;
	Sat, 21 Oct 2023 10:47:06 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697881626;
	bh=LyoLLL+0iahSppNDISM/wLW84taWhA7/2bDg/F2nugo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PAhJwMvCVbrkmjr9krtydeV9DW1KH2ILFowN0whOdr85b4XLh7mx7JD9a8I4i1y3h
	 EvcONPCQPCSki02bKyvS8lozJ3ipOk7L4/hXUy422Vn8r23RFI61Sn83clYm7dxZAD
	 gmakw809pKliCTZYNNFw77Ydxsa7b//TiBROoHVyt+xDs6N0sYjXfCKVVY4vq/Jjwh
	 OSW40rIzyKvD1keBSG3/wKnIHeyCa1KOUoNNmfYzvktbPLp7vJK7mOmZTuyr38KXgO
	 rnhrdSKdp4iyy2JRpbjR9Pbh6zXbzwicFI1xN+oDSKaQp9cCxexNfiSZPW6fMoRz6S
	 SuTJhiPD1SxfQ==
Date: Sat, 21 Oct 2023 11:47:03 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Yunfei Dong <yunfei.dong@mediatek.com>
Cc: =?utf-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4=?= Prado <nfraprado@collabora.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Nathan Hebert <nhebert@chromium.org>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Hsin-Yi Wang <hsinyi@chromium.org>,
	Fritz Koenig <frkoenig@chromium.org>,
	Daniel Vetter <daniel@ffwll.ch>, Steve Cho <stevecho@chromium.org>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH 2/7] media: mediatek: vcodec: Setting the supported h264
 level for each platform
Message-ID: <20231021094703.ght7jrrrv6n2u5ef@basti-XPS-13-9310>
References: <20231016064346.31451-1-yunfei.dong@mediatek.com>
 <20231016064346.31451-2-yunfei.dong@mediatek.com>
 <20231021092345.2636a7utfdb3nbv5@basti-XPS-13-9310>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20231021092345.2636a7utfdb3nbv5@basti-XPS-13-9310>

Hey Yunfei,

please replace Setting with Set in the title.

On 21.10.2023 11:23, Sebastian Fricke wrote:
>Hey Yunfei,
>
>On 16.10.2023 14:43, Yunfei Dong wrote:
>>The supported resolution and fps of different platforms are not the
>>same. Need to set the supported level according to the chip name.
>
>I would suggest the following rewording:
>
>Set the maximum H264 codec level for each platform.
>The various mediatek platforms support different levels for decoding,
>the level of the codec limits among others the maximum resolution, bit
>rate and frame rate for the decoder.
>
>With that you can add:
>Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>
>
>Regards,
>Sebastian
>
>>
>>Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
>>---
>>.../vcodec/decoder/mtk_vcodec_dec_stateless.c | 45 +++++++++++++++++++
>>1 file changed, 45 insertions(+)
>>
>>diff --git a/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_stateless.c b/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_stateless.c
>>index e29c9c58f3da..f4af81bddc58 100644
>>--- a/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_stateless.c
>>+++ b/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_stateless.c
>>@@ -56,6 +56,15 @@ static const struct mtk_stateless_control mtk_stateless_controls[] = {
>>		},
>>		.codec_type = V4L2_PIX_FMT_H264_SLICE,
>>	},
>>+	{
>>+		.cfg = {
>>+			.id = V4L2_CID_MPEG_VIDEO_H264_LEVEL,
>>+			.min = V4L2_MPEG_VIDEO_H264_LEVEL_1_0,
>>+			.def = V4L2_MPEG_VIDEO_H264_LEVEL_4_1,
>>+			.max = V4L2_MPEG_VIDEO_H264_LEVEL_4_2,
>>+		},
>>+		.codec_type = V4L2_PIX_FMT_H264_SLICE,
>>+	},
>>	{
>>		.cfg = {
>>			.id = V4L2_CID_STATELESS_H264_DECODE_MODE,
>>@@ -519,6 +528,40 @@ static const struct v4l2_ctrl_ops mtk_vcodec_dec_ctrl_ops = {
>>	.s_ctrl = mtk_vdec_s_ctrl,
>>};
>>
>>+static void mtk_vcodec_dec_fill_h264_level(struct v4l2_ctrl_config *cfg,
>>+					   struct mtk_vcodec_dec_ctx *ctx)
>>+{
>>+	switch (ctx->dev->chip_name) {
>>+	case MTK_VDEC_MT8192:
>>+		cfg->max = V4L2_MPEG_VIDEO_H264_LEVEL_5_1;
>>+		break;
>>+	case MTK_VDEC_MT8188:
>>+	case MTK_VDEC_MT8195:
>>+		cfg->max = V4L2_MPEG_VIDEO_H264_LEVEL_5_2;
>>+		break;
>>+	case MTK_VDEC_MT8183:
>>+	case MTK_VDEC_MT8186:
>>+		cfg->max = V4L2_MPEG_VIDEO_H264_LEVEL_4_2;
>>+		break;
>>+	default:
>>+		cfg->max = V4L2_MPEG_VIDEO_H264_LEVEL_4_1;
>>+		break;
>>+	};
>>+}
>>+
>>+static void mtk_vcodec_dec_reset_controls(struct v4l2_ctrl_config *cfg,
>>+					  struct mtk_vcodec_dec_ctx *ctx)
>>+{
>>+	switch (cfg->id) {
>>+	case V4L2_CID_MPEG_VIDEO_H264_LEVEL:
>>+		mtk_vcodec_dec_fill_h264_level(cfg, ctx);
>>+		mtk_v4l2_vdec_dbg(3, ctx, "h264 supported level: %lld %lld", cfg->max, cfg->def);
>>+		break;
>>+	default:
>>+		break;
>>+	};
>>+}
>>+
>>static int mtk_vcodec_dec_ctrls_setup(struct mtk_vcodec_dec_ctx *ctx)
>>{
>>	unsigned int i;
>>@@ -532,6 +575,8 @@ static int mtk_vcodec_dec_ctrls_setup(struct mtk_vcodec_dec_ctx *ctx)
>>	for (i = 0; i < NUM_CTRLS; i++) {
>>		struct v4l2_ctrl_config cfg = mtk_stateless_controls[i].cfg;
>>		cfg.ops = &mtk_vcodec_dec_ctrl_ops;
>>+
>>+		mtk_vcodec_dec_reset_controls(&cfg, ctx);
>>		v4l2_ctrl_new_custom(&ctx->ctrl_hdl, &cfg, NULL);
>>		if (ctx->ctrl_hdl.error) {
>>			mtk_v4l2_vdec_err(ctx, "Adding control %d failed %d", i,
>>-- 
>>2.18.0
>>

