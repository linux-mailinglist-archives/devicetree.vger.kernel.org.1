Return-Path: <devicetree+bounces-86442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A953793419E
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 19:45:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 312E91F211C3
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 17:45:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 450231822D8;
	Wed, 17 Jul 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="TiY5hmtV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E5D1181333
	for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 17:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721238353; cv=none; b=sKOVkLU2kHbDUvnP114MCcEmAvaAbqrUUnIQ/oaYlEG1bnz92+xGux+hh6BxMsXbxi6zbmYTbBYT2K3r7fz24lpKWfBhjw9ugiFWJM4hTZ3PzLQTi0N2ggE6eXGnI9qUBOMaf+gjIyvdz0W93xjetL+vbsSx4H9y2xFES3MR3fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721238353; c=relaxed/simple;
	bh=qVOtgN3biWOtfNurNf+QmVnobFNWyWPBXC99ZSmAVGQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=MdyU4KOiiMcwgEBmNVugYP5hrQmmBfDudxkIuuS+scxPAGZzj/yAprne1VwJHyVRboXI0S1VP4K+Gw8pVdW73oT4AQ78tvs/OFcQ7qYsY8y9xy7z/nyNznCirrLByVSpLlyR/tp9dLRT96N/KbXMtusMoW3d8FPCq/84h213doA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca; spf=none smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=TiY5hmtV; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ndufresne.ca
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-7a05c755477so441059485a.2
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 10:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1721238350; x=1721843150; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=seXxsCSqZ1IIQjdd9IfjwJmRtG3N1+ye5XN0dpMVip0=;
        b=TiY5hmtVfuH1Qwt0Zl0dLXLkr1SdXi0wfyQ2jwaOO+N6OMaSIKxlx3RmjTkDO2BvyW
         X1V69DNv0ePWPlw/Fgk0gRy4iBH3CKGaYrwDQ5HbuJOKDaeLd5Ia0hP2e4NHUTnDavLU
         kBQylyeRdmXvnTV3vqcrxpLYXI+RG1gSpDlWD1u5XSz34Fp3CUACxwgYvG5nka764QiB
         k5FJ6toctkG0+CMZtTVeJB0zn6x726AbDMMGJc+/G8+kogVVP1Ljpbo6p2ZzHcywdOBX
         0T4KgWgFc413gvLmNhedK7hYjTOD4+u/sYSksUcajudzYh96j/kq0EWXGgpv9mp0zFyo
         wG8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721238350; x=1721843150;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=seXxsCSqZ1IIQjdd9IfjwJmRtG3N1+ye5XN0dpMVip0=;
        b=lp6ok60XF1nO8KMfFg5KB4m7TMWGeJivmPUnoeKKDAe3Tfoxcx3HhI1KkPCtj+IVBD
         0lslsDAEacViKJcAFycLTK41ojlr6imDh+zo4u0yYMFzcT/Mh4PQvhOHc0J4GXyTIl26
         HodDUitkXYWJHKMJ528IR/nYoiq8FrNYVu/uKF3IwltmjoL9GPvBgII4+0IQZQGHv4z1
         Nl2yIPFzVEESqfz9dYaO4wdTqV8aonzx5v4e/IVKO0a+1J6uNxX7ICTLNxFAnCuhspHv
         JhlcEZ6nWt5O/5AwY8Hk/KRAIvNN5Kmm5kpBoSnozS+6PLgF/9kIeS6S4HTUuvmmwsze
         Whtw==
X-Forwarded-Encrypted: i=1; AJvYcCXAwk6058WbeFqcCIRyV2FlMsW6SiwmduCZnXQgEwajtVSIKEx+UNSXY2tOlFvLCcs1GAPSqrwWosFV0hlV8C40ZpmUUvKSe0EuFA==
X-Gm-Message-State: AOJu0YyIx3mrBVPufLytHeaXvrHJ6NcdbGYE9ZlinIZnbPnNrBMxvVp7
	DKZZiUGL0mRgT4KYLV8rZVNuxVh5Wt+XHAPmiZGaXWrnqwHQi7BNC/9S07G+9sc=
X-Google-Smtp-Source: AGHT+IGRzjrrrap39c6rFcYyw1Z304UzYxNJx0o3uFhb26Tik13H2C9C0YQVoq66D9+tFMO9UviHig==
X-Received: by 2002:a05:620a:3906:b0:79e:fed9:7937 with SMTP id af79cd13be357-7a18749a578mr308361785a.43.1721238350461;
        Wed, 17 Jul 2024 10:45:50 -0700 (PDT)
Received: from nicolas-tpx395.lan ([2606:6d00:15:6720::7a9])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a160c63880sm429667485a.72.2024.07.17.10.45.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jul 2024 10:45:50 -0700 (PDT)
Message-ID: <5b612cf7ae348d0cb52e837abe81702b58eef969.camel@ndufresne.ca>
Subject: Re: [PATCH 2/3] uapi: linux: add MT8188 AIE
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: 20220614094956 created <yelian.wang@mediatek.com>, Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
	 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	 <angelogioacchino.delregno@collabora.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Project_Global_Chrome_Upstream_Group@mediatek.com, yaya.chang@mediatek.com,
  teddy.chen@mediatek.com, hidenorik@chromium.org
Date: Wed, 17 Jul 2024 13:45:49 -0400
In-Reply-To: <20240717125426.32660-3-yelian.wang@mediatek.com>
References: <20240717125426.32660-1-yelian.wang@mediatek.com>
	 <20240717125426.32660-3-yelian.wang@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi,

Le mercredi 17 juillet 2024 =C3=A0 20:41 +0800, 20220614094956 created a =
=C3=A9crit=C2=A0:
> From: Yelian Wang <yelian.wang@mediatek.com>
>=20
> Add AIE control related definitions

I'm not yet providing a review at this stage since this patch will need mor=
e
work. When adding new CIDs, you should make sure these are truly specific t=
o
your hardware before opting for vendor controls IDs. You commit message sho=
uld
detail your reasoning toward is non-generic choice. V4L2 CID are by nature
generic for userspace and we strongly prefer if re-usable CID gets defined.=
 This
allow making less userspace code that runs on more hardware.

Face detection isn't a new thing, it has never been exposed in Linux Media,=
 but
you'll find that it existed and is document on Samsung Exynos 4 platforms
notably.

The second aspect is documentation. When writing documentation for your dri=
ver
controls, consider that the user have no background about your platform. Pr=
ovide
all the necessary information to use you userspace API (uAPI), and expand a=
t
least once any acronym that you are using. When introduce binary metadata
format, ensure that you document how to parse this format in userspace.

Finally, if the CID are not selft explanatory, an dedicated documentation i=
s
needed. You'll find this for CODECs (way more complex) but also for archite=
cture
specific features like older IMX Media Controller.

A final note, it could be nice to fix you email client, its printing
"20220614094956 created" instead of "Yelian Wang".

regards,
Nicolas

>=20
> Signed-off-by: Yelian Wang <yelian.wang@mediatek.com>
> ---
>  include/uapi/linux/mtk_aie_v4l2_controls.h | 130 +++++++++++++++++++++
>  include/uapi/linux/videodev2.h             |   6 +
>  2 files changed, 136 insertions(+)
>  create mode 100644 include/uapi/linux/mtk_aie_v4l2_controls.h
>=20
> diff --git a/include/uapi/linux/mtk_aie_v4l2_controls.h b/include/uapi/li=
nux/mtk_aie_v4l2_controls.h
> new file mode 100644
> index 000000000000..f4be180c8ddf
> --- /dev/null
> +++ b/include/uapi/linux/mtk_aie_v4l2_controls.h
> @@ -0,0 +1,130 @@
> +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> +/*
> + * AIE Controls Header
> + *
> + * Copyright (c) 2020 MediaTek Inc.
> + * Author: Fish Wu <fish.wu@mediatek.com>
> + */
> +
> +#ifndef __MTK_AIE_V4L2_CONTROLS_H__
> +#define __MTK_AIE_V4L2_CONTROLS_H__
> +
> +#include <linux/types.h>
> +
> +/*
> + * The base for the mediatek FD driver controls.
> + * We reserve 16 controls for this driver.
> + */
> +#define V4L2_CID_USER_MTK_FD_BASE (V4L2_CID_USER_BASE + 0x1fd0)
> +
> +#define V4L2_CID_MTK_AIE_INIT (V4L2_CID_USER_MTK_FD_BASE + 1)
> +#define V4L2_CID_MTK_AIE_PARAM (V4L2_CID_USER_MTK_FD_BASE + 2)
> +
> +#define V4L2_FLD_MAX_FRAME 15
> +
> +/**
> + * struct v4l2_ctrl_aie_init - aie init parameters.
> + *
> + * @max_img_width: maximum width of the source image.
> + * @max_img_height: maximum height of the source image.
> + * @pyramid_width: maximum width of the base pyramid.
> + * @pyramid_height: maximum height of the base pyramid.
> + * @feature_threshold: feature threshold for hareware.
> + */
> +struct v4l2_ctrl_aie_init {
> +	__u32 max_img_width;
> +	__u32 max_img_height;
> +	__u32 pyramid_width;
> +	__u32 pyramid_height;
> +	__s32 feature_threshold;
> +};
> +
> +/**
> + * struct v4l2_aie_roi - aie roi parameters.
> + *
> + * @x1: x1 of the roi coordinate.
> + * @y1: y1 of the roi coordinate.
> + * @x2: x2 of the roi coordinate.
> + * @y2: y2 of the roi coordinate.
> + */
> +struct v4l2_aie_roi {
> +	__u32 x1;
> +	__u32 y1;
> +	__u32 x2;
> +	__u32 y2;
> +};
> +
> +/**
> + * struct v4l2_aie_padding - aie padding parameters.
> + *
> + * @left: the size of padding left.
> + * @right: the size of padding right.
> + * @down: the size of padding below.
> + * @up: the size of padding above.
> + */
> +struct v4l2_aie_padding {
> +	__u32 left;
> +	__u32 right;
> +	__u32 down;
> +	__u32 up;
> +};
> +
> +/**
> + * struct v4l2_fld_crop_rip_rop - aie fld parameters.
> + *
> + * @fld_in_crop_x1: x1 of the crop coordinate.
> + * @fld_in_crop_y1: y1 of the crop coordinate.
> + * @fld_in_crop_x2: x2 of the crop coordinate.
> + * @fld_in_crop_y2: y2 of the crop coordinate.
> + * @fld_in_rip: fld in rip.
> + * @fld_in_rop: fld in rop.
> + */
> +struct v4l2_fld_crop_rip_rop {
> +	__u32 fld_in_crop_x1;
> +	__u32 fld_in_crop_y1;
> +	__u32 fld_in_crop_x2;
> +	__u32 fld_in_crop_y2;
> +	__u32 fld_in_rip;
> +	__u32 fld_in_rop;
> +};
> +
> +/**
> + * struct v4l2_fld_crop_rip_rop - aie fld parameters.
> + *
> + * @fd_mode: select a mode for current fd.
> + * @src_img_fmt: source image format.
> + * @src_img_width: the width of the source image.
> + * @src_img_height: the height of the source image.
> + * @src_img_stride: the stride of the source image.
> + * @pyramid_base_width: the width of the base pyramid.
> + * @pyramid_base_height: the width of the base pyramid.
> + * @number_of_pyramid: number of pyramid.
> + * @rotate_degree: the rotate degree of the image.
> + * @en_roi: enable roi.
> + * @src_roi: roi params.
> + * @en_padding: enable padding.
> + * @src_padding: padding params.
> + * @freq_level: frequency level.
> + * @fld_face_num: the number of faces in fld.
> + * @fld_input: fld input params.
> + */
> +struct v4l2_ctrl_aie_param {
> +	__u32 fd_mode;
> +	__u32 src_img_fmt;
> +	__u32 src_img_width;
> +	__u32 src_img_height;
> +	__u32 src_img_stride;
> +	__u32 pyramid_base_width;
> +	__u32 pyramid_base_height;
> +	__u32 number_of_pyramid;
> +	__u32 rotate_degree;
> +	__s32 en_roi;
> +	struct v4l2_aie_roi src_roi;
> +	__s32 en_padding;
> +	struct v4l2_aie_padding src_padding;
> +	__u32 freq_level;
> +	__u32 fld_face_num;
> +	struct v4l2_fld_crop_rip_rop fld_input[V4L2_FLD_MAX_FRAME];
> +};
> +
> +#endif /* __MTK_AIE_V4L2_CONTROLS_H__ */
> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev=
2.h
> index 4e91362da6da..a5d54b683b7d 100644
> --- a/include/uapi/linux/videodev2.h
> +++ b/include/uapi/linux/videodev2.h
> @@ -858,6 +858,9 @@ struct v4l2_pix_format {
>  /* Vendor specific - used for RaspberryPi PiSP */
>  #define V4L2_META_FMT_RPI_BE_CFG	v4l2_fourcc('R', 'P', 'B', 'C') /* PiSP=
 BE configuration */
> =20
> +/* Vendor-specific definition: used for the MediaTek camera subsystem's =
face detection results */
> +#define V4L2_META_FMT_MTFD_RESULT v4l2_fourcc('M', 'T', 'f', 'd')
> +
>  #ifdef __KERNEL__
>  /*
>   * Line-based metadata formats. Remember to update v4l_fill_fmtdesc() wh=
en
> @@ -1953,6 +1956,9 @@ enum v4l2_ctrl_type {
>  	V4L2_CTRL_TYPE_AV1_TILE_GROUP_ENTRY =3D 0x281,
>  	V4L2_CTRL_TYPE_AV1_FRAME	    =3D 0x282,
>  	V4L2_CTRL_TYPE_AV1_FILM_GRAIN	    =3D 0x283,
> +
> +	V4L2_CTRL_TYPE_AIE_INIT		=3D 0x0290,
> +	V4L2_CTRL_TYPE_AIE_PARAM	=3D 0x0291,
>  };
> =20
>  /*  Used in the VIDIOC_QUERYCTRL ioctl for querying controls */


