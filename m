Return-Path: <devicetree+bounces-119778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 096AD9C0188
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 10:53:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 873C61F22633
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 09:53:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 031ED1F4298;
	Thu,  7 Nov 2024 09:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="clJYYhss"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2898D1E9068
	for <devicetree@vger.kernel.org>; Thu,  7 Nov 2024 09:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730973117; cv=none; b=kMsBLPZewTTuUI0jBmQLYhcO1DZrQ+StSLGCEPE9ob0BdVkUg3+BRWcfCGjWnCOmn6NNSPNYwJ43RWTWI9se2VkyvSP7MbjW8MBBybdwcDrOLL/BytZ+KkiEf6yqr4bW4/XsJBUUwMoel/cclkE/9G4Fk8GwTm8lgGeaCEUgc0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730973117; c=relaxed/simple;
	bh=jPV78dINbSzeUtKgCIE0S+PYALb5LTriV8X07iC3y8E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I0Gb9vM9BdHcD24PHNRFodhsojgdIAbOmGRdWJWBJjRxSpnvCP42k51e4Ov76TAe4rLiNQSGOeQMQ4e9itILR8WDP4j9ygyt+wuiWCv44YlvgrXlcid47BYHe1mzGa1so68E8Uhc07lQ3RwFELHBKbT39xRojHY1rldtiULeTGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=clJYYhss; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-539f72c8fc1so1119832e87.1
        for <devicetree@vger.kernel.org>; Thu, 07 Nov 2024 01:51:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730973113; x=1731577913; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MNGDZFn6BFfHOXHdbqmi5GIr1NOgRIL8yzEY3j9R85k=;
        b=clJYYhssctvQPCrGxUa8H+CpQ7MywEceNAZBmStt0H+5K6+4IkEi3mQ64ujtkwPtNE
         Vl65kt2KicZdto8ii6C5xBOHHeKD2IxkqT4gg0UsQiHjoqt5ZvScgdR0VYU6ztjQXAyi
         SI9xdEg4USciXc3/L/hPOTxU2xtnmD3AFxYX8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730973113; x=1731577913;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MNGDZFn6BFfHOXHdbqmi5GIr1NOgRIL8yzEY3j9R85k=;
        b=bOj9yaZi/n583FqCagdK9A9qdau9CzxuGkv7B9lARAxXmJSlPzXwk2STvIDpV2e8GQ
         gm+AUuScVs6DYFR9ekRJ9aosOZuV/KPtYzy5vvqPQV6CAaabVO0MYG7qiScNejlQpqF1
         c5lFZru2SUsHzu5K1Z8DZbCcVmdmqvacvJjQc2bN2mzBLK7B0aPaaFh8kFtD+vOuYrS8
         V5tPxxUt8U5P2QAYF0k5P+g92pOj5wnO8WkhHsIIJlGHd5ZadK+/Pv7hyxkSb0186zzQ
         t9YOO7lQ1epjuC+spW+L0wLp1Odk2kbWMzJ0YLquj6EV1V02q47ncbSFVq71NbaYjkJe
         Bdrg==
X-Forwarded-Encrypted: i=1; AJvYcCWbdhClGLTU3wXDzn/cYNv1qbntzYtDXxXNDmkTEkABmi3q8D9m2+k6HsILzbGEJhPTZ9ZV7Pm98ByH@vger.kernel.org
X-Gm-Message-State: AOJu0YyIKqp4zWLbTJ4RDyQndUQ2Pp69Tm9ekVysuWxp95bsD5VNTH96
	O3VbJntrXniQZDG4qpqPxK0Z+L8axCZX1ucKSv9NIAoBAOqF9ttnzd0pyxYV3CIE1fPXqHHNcvl
	s5JRd4S4fhqJa8Ssr/iSAWXIWqG+MzILZpdsC
X-Google-Smtp-Source: AGHT+IEnXPQWMP+Dvcvi+dUp8x3Ks93IzGCACftaRF0ayAabRXNIc0K3QoU6l6e3upA/E3kiCMYfJSgDzYjB+oi7sEs=
X-Received: by 2002:a05:6512:3ca9:b0:535:6aa9:9868 with SMTP id
 2adb3069b0e04-53d8408370amr240812e87.19.1730973113190; Thu, 07 Nov 2024
 01:51:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241012064333.27269-1-yunfei.dong@mediatek.com> <20241012064333.27269-4-yunfei.dong@mediatek.com>
In-Reply-To: <20241012064333.27269-4-yunfei.dong@mediatek.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 7 Nov 2024 17:51:42 +0800
Message-ID: <CAGXv+5Fc98b_VTYopo38t1O3M1G+pyAzAQzUeu917UFKSRLZaQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/5] media: mediatek: vcodec: Get SRC buffer from
 bitstream instead of M2M
To: Yunfei Dong <yunfei.dong@mediatek.com>
Cc: =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Sebastian Fricke <sebastian.fricke@collabora.com>, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Nathan Hebert <nhebert@chromium.org>, 
	Daniel Almeida <daniel.almeida@collabora.com>, Hsin-Yi Wang <hsinyi@chromium.org>, 
	Fritz Koenig <frkoenig@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, 
	Steve Cho <stevecho@chromium.org>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 12, 2024 at 2:44=E2=80=AFPM Yunfei Dong <yunfei.dong@mediatek.c=
om> wrote:
>
> Getting the SRC buffer from M2M will pick a different than the one
> used for current decode operation when the SRC buffer is removed
> from ready list.
>
> Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
> ---
>  .../vcodec/decoder/vdec/vdec_av1_req_lat_if.c     | 13 +++++++------
>  .../vcodec/decoder/vdec/vdec_vp9_req_lat_if.c     | 15 +++++++--------
>  2 files changed, 14 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_av1=
_req_lat_if.c b/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_av=
1_req_lat_if.c
> index 90217cc8e242..a744740ba5f1 100644
> --- a/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_av1_req_la=
t_if.c
> +++ b/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_av1_req_la=
t_if.c
> @@ -1062,19 +1062,20 @@ static inline void vdec_av1_slice_vsi_to_remote(s=
truct vdec_av1_slice_vsi *vsi,
>
>  static int vdec_av1_slice_setup_lat_from_src_buf(struct vdec_av1_slice_i=
nstance *instance,
>                                                  struct vdec_av1_slice_vs=
i *vsi,
> +                                                struct mtk_vcodec_mem *b=
s,
>                                                  struct vdec_lat_buf *lat=
_buf)
>  {
> -       struct vb2_v4l2_buffer *src;
> +       struct mtk_video_dec_buf *src_buf_info;
>         struct vb2_v4l2_buffer *dst;
>
> -       src =3D v4l2_m2m_next_src_buf(instance->ctx->m2m_ctx);
> -       if (!src)
> +       src_buf_info =3D container_of(bs, struct mtk_video_dec_buf, bs_bu=
ffer);
> +       if (!src_buf_info)
>                 return -EINVAL;

This doesn't make sense.

First of all, you are getting the container of bs, and
mtk_video_dec_buf.bs_buffer is at a non-zero offset, so even if bs is NULL,
container_of(bs, struct mtk_video_dec_buf, bs_buffer) is not going to be
NULL.

Second, vdec_av1_slice_setup_lat_from_src_buf() is called from
vdec_av1_slice_setup_lat(), which itself is called from
vdec_av1_slice_lat_decode(). Earlier in that function, bs is already
checked. If bs is NULL, it's considered a request to flush the decoder.

The other changes look OK. It's just the check that seems meaningless.

>
> -       lat_buf->vb2_v4l2_src =3D src;
> +       lat_buf->vb2_v4l2_src =3D &src_buf_info->m2m_buf.vb;
>
>         dst =3D &lat_buf->ts_info;
> -       v4l2_m2m_buf_copy_metadata(src, dst, true);
> +       v4l2_m2m_buf_copy_metadata(lat_buf->vb2_v4l2_src, dst, true);
>         vsi->frame.cur_ts =3D dst->vb2_buf.timestamp;
>
>         return 0;
> @@ -1724,7 +1725,7 @@ static int vdec_av1_slice_setup_lat(struct vdec_av1=
_slice_instance *instance,
>         struct vdec_av1_slice_vsi *vsi =3D &pfc->vsi;
>         int ret;
>
> -       ret =3D vdec_av1_slice_setup_lat_from_src_buf(instance, vsi, lat_=
buf);
> +       ret =3D vdec_av1_slice_setup_lat_from_src_buf(instance, vsi, bs, =
lat_buf);
>         if (ret)
>                 return ret;
>
> diff --git a/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_vp9=
_req_lat_if.c b/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_vp=
9_req_lat_if.c
> index 3dceb668ba1c..c50a454ab4f7 100644
> --- a/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_vp9_req_la=
t_if.c
> +++ b/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_vp9_req_la=
t_if.c
> @@ -712,19 +712,18 @@ int vdec_vp9_slice_setup_single_from_src_to_dst(str=
uct vdec_vp9_slice_instance *
>  }
>
>  static int vdec_vp9_slice_setup_lat_from_src_buf(struct vdec_vp9_slice_i=
nstance *instance,
> +                                                struct mtk_vcodec_mem *b=
s,
>                                                  struct vdec_lat_buf *lat=
_buf)
>  {
> -       struct vb2_v4l2_buffer *src;
> -       struct vb2_v4l2_buffer *dst;
> +       struct mtk_video_dec_buf *src_buf_info;
>
> -       src =3D v4l2_m2m_next_src_buf(instance->ctx->m2m_ctx);
> -       if (!src)
> +       src_buf_info =3D container_of(bs, struct mtk_video_dec_buf, bs_bu=
ffer);
> +       if (!src_buf_info)
>                 return -EINVAL;

Same thing here.

> -       lat_buf->vb2_v4l2_src =3D src;
> +       lat_buf->vb2_v4l2_src =3D &src_buf_info->m2m_buf.vb;
>
> -       dst =3D &lat_buf->ts_info;
> -       v4l2_m2m_buf_copy_metadata(src, dst, true);
> +       v4l2_m2m_buf_copy_metadata(lat_buf->vb2_v4l2_src, &lat_buf->ts_in=
fo, true);
>         return 0;
>  }
>
> @@ -1154,7 +1153,7 @@ static int vdec_vp9_slice_setup_lat(struct vdec_vp9=
_slice_instance *instance,
>         struct vdec_vp9_slice_vsi *vsi =3D &pfc->vsi;
>         int ret;
>
> -       ret =3D vdec_vp9_slice_setup_lat_from_src_buf(instance, lat_buf);
> +       ret =3D vdec_vp9_slice_setup_lat_from_src_buf(instance, bs, lat_b=
uf);
>         if (ret)
>                 goto err;
>
> --
> 2.46.0
>
>

