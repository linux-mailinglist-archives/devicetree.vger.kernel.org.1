Return-Path: <devicetree+bounces-120075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5C09C1647
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 07:02:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1EE8C28400A
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 06:02:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A85A7194A75;
	Fri,  8 Nov 2024 06:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="drZOZ94C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C439C84E0A
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 06:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731045741; cv=none; b=fRzz0AclxEWDIiwc64D7faqudoxZokwHsjL84StIyjmO1gQHm2Cbo798q5AnY4wZyJ9zDREQyflaVjU/lOH4JlEnzOXUx2VYR7s3L2mOsSCvdQojELBnIbCiydpkaltIFLtC/akZYQehvl9fnXth99Onj8Dsgpkw3oBjkCcxcG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731045741; c=relaxed/simple;
	bh=lTBf0TWRouF8XeWxn5vsDzkhjI0EGmccbF27ADrrizA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DYIPhJi+dRDIzo02gSGN+tjX+iIeM/xCt9lwxjC0++vOlX5DAVasRlJ3YVqzqU/kmFlJmoiCw7JfDy6CoXfZH/DFmY4qc/oVINzVRdKW+GTR0UFF/cisjoi0ZUk54vYKoxFYZTTOVXm9ZaPd6AXwxYQygz8UsiFRh3FXomAi5Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=drZOZ94C; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-539f8490856so2033216e87.2
        for <devicetree@vger.kernel.org>; Thu, 07 Nov 2024 22:02:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1731045738; x=1731650538; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xkvxW0TELGak9TGChpUjLN8WW2TtIQcHiwQEYFYHFLY=;
        b=drZOZ94C1Ur5PVKIXw66Cunqk8gjuvrVGl5RK3avwQvJgmh6C1qjdT+5Q/OWBI+Nh2
         cjZZDZtFT0VPY4hIMxkH/+/+zggQ4NTg5D1f6oSq6BWbw9HvU+FZdliMNDWyukiUuVHm
         T6ATD/tq0fp5U3i8WAYaGmZEGJkJUzMnOf17U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731045738; x=1731650538;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xkvxW0TELGak9TGChpUjLN8WW2TtIQcHiwQEYFYHFLY=;
        b=QGAL7/6W2i61CcL++Qxnx0N4hrIl1Tm5Rq57PlUWUC3MhN7mKFVRVzSfRpIC4gPBV0
         7CZ7fq6bALOi1sIOAXC4ZIsN/zMCAaxY3ytHX2ZM2zuuInqe2WUagYQwZktEuR3ZYd/R
         4+wMLBfIkKEle0eC+NZm5AcH0Z6LHd1UX1Y2KnxwgJMfn1sb6n9bawD2i254k6kgUnND
         Omw1VMSFQg3ESmtl+0zkglpvNmH+UuxntMH4om4w6F1K8Tqhg3fb024ypbdY7QQGuOS0
         1grBBJXNPA0uNTO9CPtDEM1iz2A53m29nLBGtXhp7SCrQhxESGU8cn3/MwHaZJKL0r6A
         YSsw==
X-Forwarded-Encrypted: i=1; AJvYcCVnebUdZtDJe8AnHbxifb+VRmQQYfMCUj6EVBq8GxkRJZKZnQbPQVojv6OgGEHtH9FHiYefq9ozAAEl@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/ORnNKHj8GIetuqntBBp0H+AxQNK6wbJjY4Toi82QKMttfmyl
	IzPWIwdMowffCv3jp0ksCpXlwrAnKsHMTMB2cQnkbF5d6Aa9m1ibLswYcwy2BTIsSoE7XvgC/8i
	GwdRkEsq2ZiZDmo4zGkig+mai3m9C4Brg6AQE
X-Google-Smtp-Source: AGHT+IHrAma7a//3ZnIS1iS1Lm0CwM4nLy0ndtu8X8cJY5OZ/WS7iyuPy8axxsNkbLgivCMUhnj0GhMp35Zvr3+0+ik=
X-Received: by 2002:a05:6512:3b8d:b0:539:e8b5:f296 with SMTP id
 2adb3069b0e04-53d8629d2d5mr722983e87.33.1731045737701; Thu, 07 Nov 2024
 22:02:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241108033219.19804-1-yunfei.dong@mediatek.com> <20241108033219.19804-6-yunfei.dong@mediatek.com>
In-Reply-To: <20241108033219.19804-6-yunfei.dong@mediatek.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 8 Nov 2024 14:02:06 +0800
Message-ID: <CAGXv+5EfZUXEh6r0GaMKwTgWo8gQHsXFSF2bQzFuw=J4Gj0OGw@mail.gmail.com>
Subject: Re: [PATCH v6 5/5] media: mediatek: vcodec: remove media request checking
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
> Setting the buffer status to error if the media request of
> each source buffer is NULL, then schedule the work to process
> again in case of access NULL pointer.
>
> Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
> ---
>  .../vcodec/decoder/mtk_vcodec_dec_stateless.c      | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_de=
c_stateless.c b/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_d=
ec_stateless.c
> index 3f94654ebc73..251111678fd8 100644
> --- a/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_state=
less.c
> +++ b/drivers/media/platform/mediatek/vcodec/decoder/mtk_vcodec_dec_state=
less.c
> @@ -363,10 +363,14 @@ static void mtk_vdec_worker(struct work_struct *wor=
k)
>                           ctx->id, bs_src->va, &bs_src->dma_addr, bs_src-=
>size, vb2_src);
>         /* Apply request controls. */
>         src_buf_req =3D vb2_src->req_obj.req;
> -       if (src_buf_req)
> +       if (src_buf_req) {
>                 v4l2_ctrl_request_setup(src_buf_req, &ctx->ctrl_hdl);
> -       else
> +       } else {
>                 mtk_v4l2_vdec_err(ctx, "vb2 buffer media request is NULL"=
);
> +               v4l2_m2m_buf_done(vb2_v4l2_src, VB2_BUF_STATE_ERROR);
> +               v4l2_m2m_job_finish(dev->m2m_dev_dec, ctx->m2m_ctx);
> +               return;

Is this something that actually happens? I would assume that having
the `requires_requests` flag set on the queue would block any QBUF
call that doesn't have a request attached.

> +       }
>
>         ret =3D vdec_if_decode(ctx, bs_src, NULL, &res_chg);
>         if (ret && ret !=3D -EAGAIN) {
> @@ -384,8 +388,7 @@ static void mtk_vdec_worker(struct work_struct *work)
>         state =3D ret ? VB2_BUF_STATE_ERROR : VB2_BUF_STATE_DONE;
>         if (!IS_VDEC_LAT_ARCH(dev->vdec_pdata->hw_arch) ||
>             ctx->current_codec =3D=3D V4L2_PIX_FMT_VP8_FRAME) {
> -               if (src_buf_req)
> -                       v4l2_ctrl_request_complete(src_buf_req, &ctx->ctr=
l_hdl);
> +               v4l2_ctrl_request_complete(src_buf_req, &ctx->ctrl_hdl);

Unrelated change. Please do the cleanup in a separate patch.

v4l2_ctrl_request_setup() and v4l2_ctrl_request_complete() are both
no-ops if either argument is NULL, so you can do one patch going over
the whole driver to clean it up.

>                 vb2_v4l2_dst =3D v4l2_m2m_dst_buf_remove(ctx->m2m_ctx);
>                 v4l2_m2m_buf_done(vb2_v4l2_dst, state);
>                 v4l2_m2m_buf_done(vb2_v4l2_src, state);
> @@ -403,8 +406,7 @@ static void mtk_vdec_worker(struct work_struct *work)
>          */
>         ctx->cur_src_buffer =3D (ret !=3D -EAGAIN) ? NULL : vb2_v4l2_src;
>         if (ret && ret !=3D -EAGAIN) {
> -               if (src_buf_req)
> -                       v4l2_ctrl_request_complete(src_buf_req, &ctx->ctr=
l_hdl);
> +               v4l2_ctrl_request_complete(src_buf_req, &ctx->ctrl_hdl);

Unrelated change. Same as above.


ChenYu

>                 v4l2_m2m_buf_done(vb2_v4l2_src, state);
>         }
>
> --
> 2.46.0
>

