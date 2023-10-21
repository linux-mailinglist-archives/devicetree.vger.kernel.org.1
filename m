Return-Path: <devicetree+bounces-10518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D227D1C21
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 11:30:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 614EE2825C6
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 09:30:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11513D313;
	Sat, 21 Oct 2023 09:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Erh31D8S"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C331C3A
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 09:30:02 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F9E01FD7;
	Sat, 21 Oct 2023 02:29:10 -0700 (PDT)
Received: from localhost (89-26-75-29.dyn.cablelink.at [89.26.75.29])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id ABD166607314;
	Sat, 21 Oct 2023 10:29:08 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697880548;
	bh=aQtNimE6rMiK4hkbZev8rihShUq7g5Dtf27fF9JILH8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Erh31D8SWBe5fAxVy+TVG8eZhahyevoC9CyPijcL+n8XVxF7E3y2/6PHu4cabcEet
	 GCMwNwNP3GsxxUewiOaP9qjGSxAcWMbq+pBLpqq6XlNsGHwzVJGqrtdxu8nBiJ2boh
	 YtpZ7J+cyc0Rq3sYORA+UrIm8OYPn9GNYdLQrr2n2xO+THygeeBIWf/MtWbvfn46oA
	 Y3Imy0GelxjATRBWZ0yKPqXbQORHpvtILiDhNDNWiPJrP3XmGplWuKfQvuGQx4wzqe
	 cwTK8j5g2bN+RUwlhv2kK98+VzkAg15dDMXLlQc0Mb0dNRob+6laxO28AN62PfM/zY
	 D+/AWprsG83Dg==
Date: Sat, 21 Oct 2023 11:29:05 +0200
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
Subject: Re: [PATCH 4/7] media: mediatek: vcodec: Setting the supported h264
 profile for each platform
Message-ID: <20231021092905.3uxfwckgn5ndon6x@basti-XPS-13-9310>
References: <20231016064346.31451-1-yunfei.dong@mediatek.com>
 <20231016064346.31451-4-yunfei.dong@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20231016064346.31451-4-yunfei.dong@mediatek.com>

Hey Yunfei,

On 16.10.2023 14:43, Yunfei Dong wrote:
>The supported format type of different platforms are not the
>same. Need to set the supported profile according to the chip name.

I would suggest the following rewording:

Set the maximum H264 codec profile for each platform.
The various mediatek platforms support different profiles for decoding,
the profile of the codec limits the capabilities for decoding.

With that you can add:
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>

Regards,
Sebastian

>
>Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
>---
> .../vcodec/decoder/mtk_vcodec_dec_stateless.c | 19 +++++++++++++++++++
> 1 file changed, 19 insertions(+)
>
>diff --git a/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_stateless.c b/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_stateless.c
>index 1fdb21dbacb8..84c0bed577ed 100644
>--- a/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_stateless.c
>+++ b/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_stateless.c
>@@ -559,6 +559,20 @@ static void mtk_vcodec_dec_fill_h264_level(struct v4l2_ctrl_config *cfg,
> 	};
> }
>
>+static void mtk_vcodec_dec_fill_h264_profile(struct v4l2_ctrl_config *cfg,
>+					     struct mtk_vcodec_dec_ctx *ctx)
>+{
>+	switch (ctx->dev->chip_name) {
>+	case MTK_VDEC_MT8188:
>+	case MTK_VDEC_MT8195:
>+		cfg->max = V4L2_MPEG_VIDEO_H264_PROFILE_HIGH_10;
>+		break;
>+	default:
>+		cfg->max = V4L2_MPEG_VIDEO_H264_PROFILE_HIGH;
>+		break;
>+	};
>+}
>+
> static void mtk_vcodec_dec_fill_h265_level(struct v4l2_ctrl_config *cfg,
> 					   struct mtk_vcodec_dec_ctx *ctx)
> {
>@@ -585,6 +599,11 @@ static void mtk_vcodec_dec_reset_controls(struct v4l2_ctrl_config *cfg,
> 		mtk_vcodec_dec_fill_h265_level(cfg, ctx);
> 		mtk_v4l2_vdec_dbg(3, ctx, "h265 supported level: %lld %lld", cfg->max, cfg->def);
> 		break;
>+	case V4L2_CID_MPEG_VIDEO_H264_PROFILE:
>+		mtk_vcodec_dec_fill_h264_profile(cfg, ctx);
>+		mtk_v4l2_vdec_dbg(3, ctx, "h264 supported profile: %lld %lld", cfg->max,
>+				  cfg->menu_skip_mask);
>+		break;
> 	default:
> 		break;
> 	};
>-- 
>2.18.0
>

