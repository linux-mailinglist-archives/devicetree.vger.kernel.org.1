Return-Path: <devicetree+bounces-10524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F40237D1C36
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 11:45:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 27DA41C20E3B
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 09:45:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E13BDD511;
	Sat, 21 Oct 2023 09:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ZK1TGZJi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DFD94681
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 09:44:52 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF208D52;
	Sat, 21 Oct 2023 02:44:47 -0700 (PDT)
Received: from localhost (89-26-75-29.dyn.cablelink.at [89.26.75.29])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A04C26607337;
	Sat, 21 Oct 2023 10:44:46 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697881486;
	bh=ti3+0qlDl3N/PPkGisFxcRpahI6GOcbLzoK1uCIWoV4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZK1TGZJisg5QZItFBbAWoksBY5RewuX/mMgau6VTTafRJrrMXlaTyzEsSThJ2fROK
	 lV13bsN08tvJZqUHfdC1ubITVFAGtczBVueiRhmuazOJSLfEaLWy1e6/3TM8PRg5pe
	 eckvX97m7qosxt7VVxGWVYrhAco/MkvPzwGXC4d7bGz6bZjq0W3GUyFyOeTsN0s7IE
	 0Ms+ZmcaTIE+HdkgMcsUkTqm4wIjkD+a0JfA5QgQFOqov2rSRrWmcMfLm2X9WeIx40
	 atyOpmBmuL5V2SUd3nyscRneuYB6wTpxnLQG2aq35nAWumS5eyMT4YCgwPr/KF14zA
	 wwVQkf3WdmyMw==
Date: Sat, 21 Oct 2023 11:44:44 +0200
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
Subject: Re: [PATCH 7/7] media: mediatek: vcodec: Setting the supported vp9
 profile for each platform
Message-ID: <20231021094444.l4it4bh4y56a2qtt@basti-XPS-13-9310>
References: <20231016064346.31451-1-yunfei.dong@mediatek.com>
 <20231016064346.31451-7-yunfei.dong@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20231016064346.31451-7-yunfei.dong@mediatek.com>

Hey Yunfei,

Please replace Setting with Set in the title.

On 16.10.2023 14:43, Yunfei Dong wrote:
>The supported format type of different platforms are not the
>same. Need to set the supported profile according to the chip name.

I would suggest the following rewording:

Set the maximum VP9 codec profile for each platform.
The various mediatek platforms support different profiles for decoding,
the profile of the codec limits the capabilities for decoding.

With that you can add:
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>

Regards,
Sebastian

>
>Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
>---
> .../vcodec/decoder/mtk_vcodec_dec_stateless.c | 22 ++++++++++++++++++-
> 1 file changed, 21 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_stateless.c b/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_stateless.c
>index 02985184fa0f..ae181498c3c3 100644
>--- a/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_stateless.c
>+++ b/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_stateless.c
>@@ -109,7 +109,8 @@ static const struct mtk_stateless_control mtk_stateless_controls[] = {
> 			.id = V4L2_CID_MPEG_VIDEO_VP9_PROFILE,
> 			.min = V4L2_MPEG_VIDEO_VP9_PROFILE_0,
> 			.def = V4L2_MPEG_VIDEO_VP9_PROFILE_0,
>-			.max = V4L2_MPEG_VIDEO_VP9_PROFILE_3,
>+			.max = V4L2_MPEG_VIDEO_VP9_PROFILE_2,
>+			.menu_skip_mask = BIT(V4L2_MPEG_VIDEO_VP9_PROFILE_1),
> 		},
> 		.codec_type = V4L2_PIX_FMT_VP9_FRAME,
> 	},
>@@ -630,6 +631,20 @@ static void mtk_vcodec_dec_fill_vp9_level(struct v4l2_ctrl_config *cfg,
> 	};
> }
>
>+static void mtk_vcodec_dec_fill_vp9_profile(struct v4l2_ctrl_config *cfg,
>+					    struct mtk_vcodec_dec_ctx *ctx)
>+{
>+	switch (ctx->dev->chip_name) {
>+	case MTK_VDEC_MT8188:
>+	case MTK_VDEC_MT8195:
>+		cfg->max = V4L2_MPEG_VIDEO_VP9_PROFILE_2;
>+		break;
>+	default:
>+		cfg->max = V4L2_MPEG_VIDEO_VP9_PROFILE_1;
>+		break;
>+	};
>+}
>+
> static void mtk_vcodec_dec_reset_controls(struct v4l2_ctrl_config *cfg,
> 					  struct mtk_vcodec_dec_ctx *ctx)
> {
>@@ -656,6 +671,11 @@ static void mtk_vcodec_dec_reset_controls(struct v4l2_ctrl_config *cfg,
> 		mtk_v4l2_vdec_dbg(3, ctx, "h265 supported profile: %lld %lld", cfg->max,
> 				  cfg->menu_skip_mask);
> 		break;
>+	case V4L2_CID_MPEG_VIDEO_VP9_PROFILE:
>+		mtk_vcodec_dec_fill_vp9_profile(cfg, ctx);
>+		mtk_v4l2_vdec_dbg(3, ctx, "vp9 supported profile: %lld %lld", cfg->max,
>+				  cfg->menu_skip_mask);
>+		break;
> 	default:
> 		break;
> 	};
>-- 
>2.18.0
>

