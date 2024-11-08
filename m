Return-Path: <devicetree+bounces-120093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 272499C179D
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 09:16:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7BAF6B21F6D
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 08:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C60A21D5CE0;
	Fri,  8 Nov 2024 08:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="eS5M69/O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEAFC1F5FA
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 08:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731053802; cv=none; b=k/TKDrefb4w0iZt3zfSc0F8aCUNRmA1rIv5jESzisx0ErSVUgtXe/dUkVrPeE2mkEWoVkAaELxwtc4XrTBVqYy/iQZCRWx4qvVos66na+mrqGNzEvE0W3MVhbH0hnKzH0b+OMFOsakmMgpmD5I2sgEN45H2OdwmQerESyKJhFJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731053802; c=relaxed/simple;
	bh=PFAKwqwLIczROeiwPF7cW+HeLUHWk6reaV/d4oydAxk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o5nd4Y9tR8uvlkqd/LPf+zBnpOa6mPitTUirCVey2QAXxSRO0TicMKcHIu967tVIfAoC8Pb9yDP16TsscqghFmocEOr3+ivpNcCLL6QfpacLoyB7dtnnX1IdUq4slC6G7OD8zo32v9qcE2xmw/YeJ9nLVaOCj1Ou2GMgC77Det0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=eS5M69/O; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-539eb97f26aso1621504e87.2
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 00:16:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1731053799; x=1731658599; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wm2Y4gXXAMdR5I9os8tjH0wvEMOcdz9ivS4XBoJPLS8=;
        b=eS5M69/OafGZvCKww2Zg71+QvIHrUsJ8u3Bbmcnq+0AlDN80lZAhEfeVIXU8H6ewcb
         pzcPUXt7IfiP8cNfcoxZa+g8NIAuG7h533ikCXQtWY2VQKbR8ir244ewurmuah4B/wU6
         M6See6dHSktPwurMjs8pljxOjoWq3i/JbnprE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731053799; x=1731658599;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wm2Y4gXXAMdR5I9os8tjH0wvEMOcdz9ivS4XBoJPLS8=;
        b=ZReuGoXF4EMm4YPAg9BNIzOoBDjyY5ABmRQjNbuDkiMex1qgal5OneBkq2ORKGlx1g
         L/nF5VjRxPbPSofCAOFFcg0SDXqWEJ79JZ2u+1yIAHtFNS4hH9wDXdnGVSsCmHHUOUZO
         J0PbBrncuvVDBirBwknt+7DZXOmzuJ1ZAHyqji0onWSc4eOqZ/qByfo4DSQSgAUG481w
         SKTCOYsq4WEr83Eh0PxUpGY8cBgm+Hz3SNODxUEbqr9qBXI3Be7wJoJQW7aaJAUxAbHh
         xogEXrQ9naGKrQZpjasJ4on/zJFSwINPeoiMUUXYLQfaInhex9l+xp24SC3jLH1/fBjq
         G1Dw==
X-Forwarded-Encrypted: i=1; AJvYcCUC/w9whMo5Q/0NxaysZYhHw/fMQSbJ1BNYcGy6Fx7EPQp73gUrwftsCW8FPUgLOETOp/jSA9n7w9Ma@vger.kernel.org
X-Gm-Message-State: AOJu0YyoNasdD2gKOYCT5RWaMWiobi/CGfMNCLRDUZaqTsi9gg0G/jB0
	xplPSAjzBnjG609F7yddIuJ9YeXWWnNtKBple3Du/2/MWUXcNbMISCHXwaex7x4cutq1GgGUWui
	LcPMWQWmm4LllEeiOXhSHfv0/SbM26n1mIW2LWfgHQlA4Tv9fYQ==
X-Google-Smtp-Source: AGHT+IGrL9T+phlyofKTQtc+wVgicHGgJaCgMma9xu0xBRBGkrlCxE85vZhIThB8wyxuucQ+eBNzdzsPuB0UjfvBHz8=
X-Received: by 2002:a05:6512:ac8:b0:539:eb82:d453 with SMTP id
 2adb3069b0e04-53d8626c3a8mr904495e87.39.1731053798804; Fri, 08 Nov 2024
 00:16:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241108033219.19804-1-yunfei.dong@mediatek.com> <20241108033219.19804-5-yunfei.dong@mediatek.com>
In-Reply-To: <20241108033219.19804-5-yunfei.dong@mediatek.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 8 Nov 2024 16:16:27 +0800
Message-ID: <CAGXv+5H_=A_of7LZSeiB8xWMLwOz59L7rOw4Hibh6Vp5MZswGw@mail.gmail.com>
Subject: Re: [PATCH v6 4/5] media: mediatek: vcodec: store current vb2 buffer
 to decode again
To: Yunfei Dong <yunfei.dong@mediatek.com>
Cc: =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Sebastian Fricke <sebastian.fricke@collabora.com>, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Nathan Hebert <nhebert@chromium.org>, 
	Hsin-Yi Wang <hsinyi@chromium.org>, Fritz Koenig <frkoenig@chromium.org>, 
	Daniel Vetter <daniel@ffwll.ch>, Steve Cho <stevecho@chromium.org>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 8, 2024 at 11:32=E2=80=AFAM Yunfei Dong <yunfei.dong@mediatek.c=
om> wrote:
>
> All the src vb2 buffer are removed from ready list when STREAMOFF
> capture queue, may remove a non exist vb2 buffer if lat is working

Can you explain how that happens? STREAMOFF supposedly waits for the
current job to finish [1] before touching the queue.

[1] https://elixir.bootlin.com/linux/v6.11.6/source/drivers/media/v4l2-core=
/v4l2-mem2mem.c#L881

> currently. The driver also need to use current vb2 buffer to decode
> again to wait for enough resource when lat decode error.

This also won't work, since if you remove the only source buffer on
the queue, the core will think that there are no more jobs to do [2],
and won't reschedule anything.

You can work around this by setting the `buffered` flag on the source
queue when you do the retry, and clear it when it succeeds. Set the
flag with v4l2_m2m_set_src_buffered().

[2] https://elixir.bootlin.com/linux/v6.11.6/source/drivers/media/v4l2-core=
/v4l2-mem2mem.c#L328

> Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
> ---
>  .../vcodec/decoder/mtk_vcodec_dec_drv.h       |  2 ++
>  .../vcodec/decoder/mtk_vcodec_dec_stateless.c | 30 +++++++++++++++----
>  2 files changed, 26 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_de=
c_drv.h b/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_drv=
.h
> index 1fabe8c5b7a4..886fa385e2e6 100644
> --- a/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_drv.h
> +++ b/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_drv.h
> @@ -155,6 +155,7 @@ struct mtk_vcodec_dec_pdata {
>   * @last_decoded_picinfo: pic information get from latest decode
>   * @empty_flush_buf: a fake size-0 capture buffer that indicates flush. =
Used
>   *                  for stateful decoder.
> + * @cur_src_buffer: current vb2 buffer for the latest decode.
>   * @is_flushing: set to true if flushing is in progress.
>   *
>   * @current_codec: current set input codec, in V4L2 pixel format
> @@ -201,6 +202,7 @@ struct mtk_vcodec_dec_ctx {
>         struct work_struct decode_work;
>         struct vdec_pic_info last_decoded_picinfo;
>         struct v4l2_m2m_buffer empty_flush_buf;
> +       struct vb2_v4l2_buffer *cur_src_buffer;
>         bool is_flushing;
>
>         u32 current_codec;
> diff --git a/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_de=
c_stateless.c b/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_d=
ec_stateless.c
> index 750f98c1226d..3f94654ebc73 100644
> --- a/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_state=
less.c
> +++ b/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_state=
less.c
> @@ -324,7 +324,8 @@ static void mtk_vdec_worker(struct work_struct *work)
>         struct mtk_vcodec_dec_ctx *ctx =3D
>                 container_of(work, struct mtk_vcodec_dec_ctx, decode_work=
);
>         struct mtk_vcodec_dec_dev *dev =3D ctx->dev;
> -       struct vb2_v4l2_buffer *vb2_v4l2_src;
> +       struct vb2_v4l2_buffer *vb2_v4l2_src =3D ctx->cur_src_buffer;
> +       struct vb2_v4l2_buffer *vb2_v4l2_dst;
>         struct vb2_buffer *vb2_src;
>         struct mtk_vcodec_mem *bs_src;
>         struct mtk_video_dec_buf *dec_buf_src;
> @@ -333,7 +334,7 @@ static void mtk_vdec_worker(struct work_struct *work)
>         bool res_chg =3D false;
>         int ret;
>
> -       vb2_v4l2_src =3D v4l2_m2m_next_src_buf(ctx->m2m_ctx);
> +       vb2_v4l2_src =3D vb2_v4l2_src ? vb2_v4l2_src : v4l2_m2m_src_buf_r=
emove(ctx->m2m_ctx);
>         if (!vb2_v4l2_src) {
>                 v4l2_m2m_job_finish(dev->m2m_dev_dec, ctx->m2m_ctx);
>                 mtk_v4l2_vdec_dbg(1, ctx, "[%d] no available source buffe=
r", ctx->id);
> @@ -385,12 +386,29 @@ static void mtk_vdec_worker(struct work_struct *wor=
k)
>             ctx->current_codec =3D=3D V4L2_PIX_FMT_VP8_FRAME) {
>                 if (src_buf_req)
>                         v4l2_ctrl_request_complete(src_buf_req, &ctx->ctr=
l_hdl);
> -               v4l2_m2m_buf_done_and_job_finish(dev->m2m_dev_dec, ctx->m=
2m_ctx, state);
> -       } else {
> -               if (ret !=3D -EAGAIN)
> -                       v4l2_m2m_src_buf_remove(ctx->m2m_ctx);
> +               vb2_v4l2_dst =3D v4l2_m2m_dst_buf_remove(ctx->m2m_ctx);
> +               v4l2_m2m_buf_done(vb2_v4l2_dst, state);
> +               v4l2_m2m_buf_done(vb2_v4l2_src, state);
> +
>                 v4l2_m2m_job_finish(dev->m2m_dev_dec, ctx->m2m_ctx);
> +               return;
>         }
> +
> +       /*
> +        * If each codec return -EAGAIN to decode again, need to backup c=
urrent source
> +        * buffer, then the driver will get this buffer next time.
> +        *
> +        * If each codec decode error, must to set buffer done with error=
 status for
> +        * this buffer have been removed from ready list.
> +        */
> +       ctx->cur_src_buffer =3D (ret !=3D -EAGAIN) ? NULL : vb2_v4l2_src;
> +       if (ret && ret !=3D -EAGAIN) {
> +               if (src_buf_req)
> +                       v4l2_ctrl_request_complete(src_buf_req, &ctx->ctr=
l_hdl);
> +               v4l2_m2m_buf_done(vb2_v4l2_src, state);
> +       }
> +
> +       v4l2_m2m_job_finish(dev->m2m_dev_dec, ctx->m2m_ctx);
>  }
>
>  static void vb2ops_vdec_stateless_buf_queue(struct vb2_buffer *vb)
> --
> 2.46.0
>

