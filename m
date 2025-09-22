Return-Path: <devicetree+bounces-219882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C304DB8EFC4
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 07:13:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FAA4189AFDE
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 05:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D36221D596;
	Mon, 22 Sep 2025 05:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kI2cP/cp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635F1AD5A
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 05:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758518030; cv=none; b=ZXzXSNkD+d5IOqW1IvIYGNMkyw6hCUIGN21H0T61i1kmrKs4zu1V/0vrmK/z9BBNiLXm7XtOrOYhxE1sAMmeMKJAN7ddc5zGN1UHjrR0y3Of0XPcN3LAo5YoYTEFODG0x7hTr/uPvKvcvw7+sBSO/bZXFDOO/+rorEEQDT33sfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758518030; c=relaxed/simple;
	bh=XbdZ3X2+5yMq6r4xdUD49QnmshR3ghGKqHnmVMrTVPE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=B89xq3UstdjB4JQpkGOk/Y4YkBKRWkA7dcGWkXuX5xLaMRsFO1gr/Sr9pviHHmmFdFNfyS7sRNra/sRqlUSRbSQEW9mr/HH5GkghWBTftwP9fvcoAhA74A8d524eB/UfS7O0MFciGTqaeP2YXnA0aWk6e3HGSYFuk+3loWt+qe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kI2cP/cp; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-468973c184bso12724055e9.3
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 22:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758518027; x=1759122827; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8cVcrbVrlFJ/u7LnceUgCyaQR49hpzvnBzHLefl1ASM=;
        b=kI2cP/cpQOieIu2Iu6FC4nyZj+bFU9eqG93p+kTZ0l/jULKwyv7OQXB50HS4lPDRf8
         rdLf8IJRwz4PegXXHsmqf8UBe7TkH/CAdS4X1bTdD+/RNKpzf8CVo+ek/B9DPSnlhqRc
         rVOJk9C5xptNhiA1hzVJFjUeBl84+Lby8XadaC2w0tCFqfrhKLnMEauap0S3e+vuyWYp
         lQjasAjlLluNvP4uwpI33ZOuQTC/qMzQ9D2auReiXnwMNH1WHImoCbXnvpn1+G2QqcFL
         Mtui30Y/4YLv9/BOzfmKE2sd1cD35mLS7ECTxEp5DfO80ekbDOazTsZvZ2GpYb5U1YmH
         yhaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758518027; x=1759122827;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8cVcrbVrlFJ/u7LnceUgCyaQR49hpzvnBzHLefl1ASM=;
        b=CAYMtbU2fA0SM6Jjiiib9xBKzTrHw4QHSUBiyAT1Z4YE1hQAC34vzl4Gn9/u522QcB
         9epyGcyNfO8mGQFc7bpEgMmxJkXAObVOPaJwopkcWISGT+mfJT2oMx3scunz82qn7tjp
         04gSiqe3OP/YMhMZ502O5zNZ++pQcSVPgf+74aAkO8PbNz0OVJ4WJhGE6Ss1fSDYOe2z
         2eAxyrI9WaTxQL6kIEnSLTbR2e7mSiG0uoYCam9Gv0+8Q382LTOdjEfbMGc3FpG3Rs9J
         0sRfITUskWx39XJXZ06Qv35L7oPVW3qFxdj6rcxqTfW4wUILghV0ygJpOD53COB7Vugn
         0JGA==
X-Forwarded-Encrypted: i=1; AJvYcCXCRJWe6zkeg48BelgeIcVjWKVP4zigUWVUEPs8X3O+0e/3/26Bx1pRr7+Np60NG4kx/FXjXT3M+GPp@vger.kernel.org
X-Gm-Message-State: AOJu0YzQI1OcyyCv4U3MmT7wT+C1asrLKPq5KieST03y6u6l+8bLB/bT
	lopld1ls/6PAprUbRLG6ZWzfpfC048Bbd+nL8fmL33Y0gMX+F5ErSY6GoWa/pMrUXyr2eZ3YdSz
	qbIK5V8qyTjz/spdi+fTSw5PEH4G++rk=
X-Gm-Gg: ASbGnct90R/2pugxYhhOUpKMay9TuUiCfz3gp5W4TViZye90XiXxe/bS6k37aTWVPIB
	00Jo2AvvIEsoyVGcY9VqLDBVd+ScqqTc1sdqYuiP9D74p7r3K9suqRim1Snsia5h7yO7NHIRAbC
	G/TCZmUQG+F7Gtovc8aEIyMcuF/1k/uok91pE/RnWs0fwAK1sccIlfw3deah+vvyw1b32vkLWEW
	QiaM+UR0TKffA9wcwQ=
X-Google-Smtp-Source: AGHT+IE/Fsl/+qBhIIlSkzEByoPTTdUl1tcUn1Bq01NGCTY0K8X3R3age1GatKFOPLLpHcaYAbt21UikMo4QxIsUEbs=
X-Received: by 2002:a05:600c:1391:b0:45f:bef7:670b with SMTP id
 5b1f17b1804b1-467e63be470mr102282115e9.3.1758518026668; Sun, 21 Sep 2025
 22:13:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250906135345.241229-1-clamor95@gmail.com> <20250906135345.241229-17-clamor95@gmail.com>
 <25240767.ouqheUzb2q@senjougahara>
In-Reply-To: <25240767.ouqheUzb2q@senjougahara>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Mon, 22 Sep 2025 08:13:35 +0300
X-Gm-Features: AS18NWCNN61ET19mfhbYdyg4DyevVg-p7VGKHH4-aLmM_YtmDE97vrkspo3o0lY
Message-ID: <CAPVz0n1Tur0YY7yOYAyUFvyTxie4OteyzGhzv487L+aA-YY+wQ@mail.gmail.com>
Subject: Re: [PATCH v2 16/23] staging: media: tegra-video: tegra20: simplify
 format align calculations
To: Mikko Perttunen <mperttunen@nvidia.com>
Cc: Thierry Reding <thierry.reding@gmail.com>, Thierry Reding <treding@nvidia.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Sowjanya Komatineni <skomatineni@nvidia.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Prashant Gaikwad <pgaikwad@nvidia.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Dmitry Osipenko <digetx@gmail.com>, 
	=?UTF-8?Q?Jonas_Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>, 
	Charan Pedumuru <charan.pedumuru@gmail.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-staging@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D0=BF=D0=BD, 22 =D0=B2=D0=B5=D1=80. 2025=E2=80=AF=D1=80. =D0=BE 07:44 Mikk=
o Perttunen <mperttunen@nvidia.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Saturday, September 6, 2025 10:53=E2=80=AFPM Svyatoslav Ryhel wrote:
> > Simplify format align calculations by slightly modifying supported form=
ats
> > structure.
> >
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > ---
> >  drivers/staging/media/tegra-video/tegra20.c | 41 ++++++++-------------
> >  1 file changed, 16 insertions(+), 25 deletions(-)
> >
> > diff --git a/drivers/staging/media/tegra-video/tegra20.c b/drivers/stag=
ing/media/tegra-video/tegra20.c
> > index 6e0b3b728623..781c4e8ec856 100644
> > --- a/drivers/staging/media/tegra-video/tegra20.c
> > +++ b/drivers/staging/media/tegra-video/tegra20.c
> > @@ -280,20 +280,8 @@ static void tegra20_fmt_align(struct v4l2_pix_form=
at *pix, unsigned int bpp)
> >       pix->width  =3D clamp(pix->width,  TEGRA20_MIN_WIDTH,  TEGRA20_MA=
X_WIDTH);
> >       pix->height =3D clamp(pix->height, TEGRA20_MIN_HEIGHT, TEGRA20_MA=
X_HEIGHT);
> >
> > -     switch (pix->pixelformat) {
> > -     case V4L2_PIX_FMT_UYVY:
> > -     case V4L2_PIX_FMT_VYUY:
> > -     case V4L2_PIX_FMT_YUYV:
> > -     case V4L2_PIX_FMT_YVYU:
> > -             pix->bytesperline =3D roundup(pix->width, 2) * 2;
> > -             pix->sizeimage =3D roundup(pix->width, 2) * 2 * pix->heig=
ht;
> > -             break;
> > -     case V4L2_PIX_FMT_YUV420:
> > -     case V4L2_PIX_FMT_YVU420:
> > -             pix->bytesperline =3D roundup(pix->width, 8);
> > -             pix->sizeimage =3D roundup(pix->width, 8) * pix->height *=
 3 / 2;
> > -             break;
> > -     }
> > +     pix->bytesperline =3D DIV_ROUND_UP(pix->width * bpp, 8);
>
> Assuming the bpp is coming from the format table below, this changes the =
value of bytesperline for planar formats. With this it'll be (width * 12) /=
 8 i.e. width * 3/2, which doesn't sound right.
>

Downstream uses soc_mbus_bytes_per_line for this calculation which was
deprecated some time ago, here is a fragment

s32 soc_mbus_bytes_per_line(u32 width, const struct soc_mbus_pixelfmt *mf)
{
 if (mf->fourcc =3D=3D V4L2_PIX_FMT_JPEG)
 return 0;

 if (mf->layout !=3D SOC_MBUS_LAYOUT_PACKED)
 return width * mf->bits_per_sample / 8;

 switch (mf->packing) {
 case SOC_MBUS_PACKING_NONE:
  return width * mf->bits_per_sample / 8;
 case SOC_MBUS_PACKING_2X8_PADHI:
 case SOC_MBUS_PACKING_2X8_PADLO:
 case SOC_MBUS_PACKING_EXTEND16:
  return width * 2;
 case SOC_MBUS_PACKING_1_5X8:
  return width * 3 / 2;
 case SOC_MBUS_PACKING_VARIABLE:
  return 0;
 }
   return -EINVAL;
}

V4L2_PIX_FMT_YUV420 and V4L2_PIX_FMT_YVU420 are classified as
SOC_MBUS_PACKING_1_5X8 hence we get width * 3/2

> > +     pix->sizeimage =3D pix->bytesperline * pix->height;
> >  }
> >
> >  /*
> > @@ -576,20 +564,23 @@ static const struct tegra_vi_ops tegra20_vi_ops =
=3D {
> >       .vi_stop_streaming =3D tegra20_vi_stop_streaming,
> >  };
> >
> > -#define TEGRA20_VIDEO_FMT(MBUS_CODE, BPP, FOURCC)    \
> > -{                                                    \
> > -     .code    =3D MEDIA_BUS_FMT_##MBUS_CODE,           \
> > -     .bpp     =3D BPP,                                 \
> > -     .fourcc  =3D V4L2_PIX_FMT_##FOURCC,               \
> > +#define TEGRA20_VIDEO_FMT(DATA_TYPE, BIT_WIDTH, MBUS_CODE, BPP, FOURCC=
)      \
> > +{                                                                    \
> > +     .img_dt         =3D TEGRA_IMAGE_DT_##DATA_TYPE,                  =
 \
> > +     .bit_width      =3D BIT_WIDTH,                                   =
 \
> > +     .code           =3D MEDIA_BUS_FMT_##MBUS_CODE,                   =
 \
> > +     .bpp            =3D BPP,                                         =
 \
> > +     .fourcc         =3D V4L2_PIX_FMT_##FOURCC,                       =
 \
> >  }
> >
> >  static const struct tegra_video_format tegra20_video_formats[] =3D {
> > -     TEGRA20_VIDEO_FMT(UYVY8_2X8, 2, UYVY),
> > -     TEGRA20_VIDEO_FMT(VYUY8_2X8, 2, VYUY),
> > -     TEGRA20_VIDEO_FMT(YUYV8_2X8, 2, YUYV),
> > -     TEGRA20_VIDEO_FMT(YVYU8_2X8, 2, YVYU),
> > -     TEGRA20_VIDEO_FMT(UYVY8_2X8, 1, YUV420),
> > -     TEGRA20_VIDEO_FMT(UYVY8_2X8, 1, YVU420),
> > +     /* YUV422 */
> > +     TEGRA20_VIDEO_FMT(YUV422_8, 16, UYVY8_2X8, 16, UYVY),
> > +     TEGRA20_VIDEO_FMT(YUV422_8, 16, VYUY8_2X8, 16, VYUY),
> > +     TEGRA20_VIDEO_FMT(YUV422_8, 16, YUYV8_2X8, 16, YUYV),
> > +     TEGRA20_VIDEO_FMT(YUV422_8, 16, YVYU8_2X8, 16, YVYU),
> > +     TEGRA20_VIDEO_FMT(YUV422_8, 16, UYVY8_2X8, 12, YUV420),
> > +     TEGRA20_VIDEO_FMT(YUV422_8, 16, UYVY8_2X8, 12, YVU420),
> >  };
> >
> >  const struct tegra_vi_soc tegra20_vi_soc =3D {
> >
>
>
>
>

