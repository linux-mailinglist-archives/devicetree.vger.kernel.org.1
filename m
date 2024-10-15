Return-Path: <devicetree+bounces-111280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC6D99E00A
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 09:59:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1E4CCB227E3
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 07:59:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02A611B4F0A;
	Tue, 15 Oct 2024 07:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="j1H5Iosx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153641B85D4
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 07:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728979099; cv=none; b=c0oy5x9au5Kh/kNUTKa3Ap0aFYdk0mGAVOLOD2tVBjNWifxrauhJtV1xdQMFh1n6rOrLFl/6qCpiKxn6bPoVp6NARLEEjEuLGiEHdOYqg6hIcOFePf538mhk3YFEBNhbxtFyV2ayCm0Go3PXW4dyK65uyQzIgLCM0S+mpmpO7xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728979099; c=relaxed/simple;
	bh=xqbnlLiVNwKqNk4B6zxRxQlS9F/oHJRfBlpXtgY8Yeo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Q+QAP0J1UxRIBAeEARnA7Ut6lOKG7xZTMxagCu/WhTMhhRKw7qwhA48SajTyU68Tc13CtPtqdTikhUhkGaKI/lvgFoyY1nVubWYMZz6ctPSencTTn7W7XjpHt9o2eTQVNJ+f+y8yRjMsIHlRLiWyjxHH4GKJSwXAkO4I2PpVTW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=j1H5Iosx; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-539e4b7409fso2829850e87.0
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 00:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728979096; x=1729583896; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eC4BB+tDEl8JjaqDwzWgkstqnxwTVkHhasRVEYNy6PE=;
        b=j1H5IosxH8aclbmF/IGO8/trWO+AKt1YcExrJNOpKE6PMDwQkWYtnYvk+LM2yWq2dm
         ykvMMKuHL1quG6EOHKC/Ibg+ZZbQDaaHxckr38zqCoe7dCswdGVm29g3ck7cewNK4UB9
         xzIY3o25jnPK7br2vkwDUDIZqns3UnVBKfF2A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728979096; x=1729583896;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eC4BB+tDEl8JjaqDwzWgkstqnxwTVkHhasRVEYNy6PE=;
        b=XKHYzQWEz6SNcO2Lue93QdNjCRsSEJEq6Urr/b31OkflmwaCQ6yQU8xL2f1Jv52h4n
         UT9Ui/6c+zC1odSTkagOWAbCmPilI3ib/SIYDAu7zfmB2Xex/0Yabr8R2Sax//76WbjD
         AGUYacF1Yqc7tRrP9dqLzujyawYXZpx/5W1meIS3Ox19aa9CEzLjsgw9hX5asK2Y3wQ5
         MykPsyPIr9qOHSxUMrtbPGlyLW2av8ZjRj+eRFd5E0mWT9QruT6o9v+GxY6Y9r/GQKrb
         Rv9BaRBkMUUONBDKuZCZYdpMd8pKP6XnCY+ncIrY7y/dO1LUfxjhM8Hq0/i6Kt7OiCGv
         O5+w==
X-Forwarded-Encrypted: i=1; AJvYcCV4u8l8cep5W/YToFSAKTEJcaql/WKiXOKbSqDuz8AlAHJsf2OY8GmF8GZXG/5RnPNLgEbKBWF3camv@vger.kernel.org
X-Gm-Message-State: AOJu0YzQgsN0ELrKAhxXKHhaDP+qAynLOFobW6KSnzz58S0Ew4HxHNOR
	wnitdIWPbVJvRnEWzYMpdKILeXDJrDYyhYBIHlOZ3+yI3azgBtbrhobHFFGALuvsP3aIdPhKc8B
	WLtLr2d29a9PmwYE2bQ2uRULy8of/EqBn3Q43
X-Google-Smtp-Source: AGHT+IGjJNGNwEUDC+KZo44b4hUQtyEA+RBC3R7OuIVRUtmEkMET/oSfQ/G/cmV6HDCYX8i5o2poiLBvda9ljao0a+8=
X-Received: by 2002:a05:6512:2254:b0:539:f775:c0bc with SMTP id
 2adb3069b0e04-539f775c343mr1766569e87.29.1728979096001; Tue, 15 Oct 2024
 00:58:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241014073314.18409-1-yunfei.dong@mediatek.com> <20241014073314.18409-3-yunfei.dong@mediatek.com>
In-Reply-To: <20241014073314.18409-3-yunfei.dong@mediatek.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 15 Oct 2024 15:58:05 +0800
Message-ID: <CAGXv+5H4FsadBheokwO7hTxDxAtYakL15Ki+EcnhQ3Unbz3o9w@mail.gmail.com>
Subject: Re: [PATCH 2/6] media: mediatek: vcodec: remove parse nal info in kernel
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

On Mon, Oct 14, 2024 at 3:33=E2=80=AFPM Yunfei Dong <yunfei.dong@mediatek.c=
om> wrote:
>
> Hardware can parse the slice synatx to get nal information in
> scp, needn't to parse it in kernel again.

Does this apply to all existing shipped SCP firmware? If not, please
put this behind a vdec firmware flag.

ChenYu


> Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
> ---
>  .../vcodec/decoder/vdec/vdec_h264_req_multi_if.c    | 13 ++-----------
>  1 file changed, 2 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_h26=
4_req_multi_if.c b/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec=
_h264_req_multi_if.c
> index d3f8d62238c0..76b96924a2a7 100644
> --- a/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_h264_req_m=
ulti_if.c
> +++ b/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_h264_req_m=
ulti_if.c
> @@ -634,11 +634,10 @@ static int vdec_h264_slice_lat_decode(void *h_vdec,=
 struct mtk_vcodec_mem *bs,
>         struct vdec_h264_slice_inst *inst =3D h_vdec;
>         struct vdec_vpu_inst *vpu =3D &inst->vpu;
>         struct mtk_video_dec_buf *src_buf_info;
> -       int nal_start_idx, err, timeout =3D 0;
> +       int err, timeout =3D 0;
>         unsigned int data[2];
>         struct vdec_lat_buf *lat_buf;
>         struct vdec_h264_slice_share_info *share_info;
> -       unsigned char *buf;
>
>         if (vdec_msg_queue_init(&inst->ctx->msg_queue, inst->ctx,
>                                 vdec_h264_slice_core_decode,
> @@ -662,14 +661,6 @@ static int vdec_h264_slice_lat_decode(void *h_vdec, =
struct mtk_vcodec_mem *bs,
>         share_info =3D lat_buf->private_data;
>         src_buf_info =3D container_of(bs, struct mtk_video_dec_buf, bs_bu=
ffer);
>
> -       buf =3D (unsigned char *)bs->va;
> -       nal_start_idx =3D mtk_vdec_h264_find_start_code(buf, bs->size);
> -       if (nal_start_idx < 0) {
> -               err =3D -EINVAL;
> -               goto err_free_fb_out;
> -       }
> -
> -       inst->vsi->dec.nal_info =3D buf[nal_start_idx];
>         lat_buf->vb2_v4l2_src =3D &src_buf_info->m2m_buf.vb;
>         v4l2_m2m_buf_copy_metadata(&src_buf_info->m2m_buf.vb, &lat_buf->t=
s_info, true);
>
> @@ -677,7 +668,7 @@ static int vdec_h264_slice_lat_decode(void *h_vdec, s=
truct mtk_vcodec_mem *bs,
>         if (err)
>                 goto err_free_fb_out;
>
> -       vdec_h264_insert_startcode(inst->ctx->dev, buf, &bs->size,
> +       vdec_h264_insert_startcode(inst->ctx->dev, bs->va, &bs->size,
>                                    &share_info->h264_slice_params.pps);
>
>         *res_chg =3D inst->resolution_changed;
> --
> 2.46.0
>
>

