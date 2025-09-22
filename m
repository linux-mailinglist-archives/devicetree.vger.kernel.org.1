Return-Path: <devicetree+bounces-219899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C6784B8F267
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 08:31:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C5EF1899FF8
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 06:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE4AF285C92;
	Mon, 22 Sep 2025 06:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mGqwvr/T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9966BC2E0
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 06:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758522663; cv=none; b=rPdq1Cj4281g9ddMsEtBoZ+eWe9z9r5duAY7z+PM2HZYaQ19jd2F9n5z/fpc8YKYDI94ChhTZsJ7/KGzxy0KQdwdohvSILUY+OC1ZAoh5Kbp6vwYLis1rOGfnpOepreVVDazGyPAgsvVhuookoCEesqC6w3dLJhsvekGIRG+jHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758522663; c=relaxed/simple;
	bh=5OhwGux6ou9g6/LIEcHhMB74OG5Iog4JQZsaPDeECSU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AIv1MCLKE6PtYkiVl1MNTAnNULWa1w4kJ7h1DRIdNxpf0BMhhXzRuciKcWnak6X7R05B0Qy9+e2nNc4aQ0szZQa0onHa9xF59G+9sfMz8fMc6divTwGlJP+h08r+6g7PVUNXllVWE/WLhf+MnqlwrDGy2R3omS9f7WCoDwwIFtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mGqwvr/T; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-45ddc7d5731so26103085e9.1
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 23:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758522659; x=1759127459; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JBI7ozwg7DTSQ24O2TuFL4d84hmFpnF5vS3hSbCRd3Q=;
        b=mGqwvr/TMPhsqPk61nyIphPWj/fzaAi7hR7G74g8uMJ1qyMKLr2PYeh2k8GqZisZYh
         JGaxgZwmhJYWfhQEz3uJfNrYmov5GuHwucpFCnicrOfx/KyZ2oD0LuImEj78CrwNZCjo
         ywjl6XuAsPeV9LGa4dHASaJSpdgTgShcpF+pyJwerl3f+SnPNlLGPh5zyLUg6DJMSYnw
         UNl6vDlzNy1acK0KdV/fbe75yNjVeSNZ4oWOcX0lf6Fut9876OMGap2A/2lIB8/EwRQS
         gjSHfkztsi6/OhPyaFLFL8FPeSuIyLRHdrCt8VFUYy2TjBjlfMt/j/vnelgc7dbfZam7
         ZFMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758522659; x=1759127459;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JBI7ozwg7DTSQ24O2TuFL4d84hmFpnF5vS3hSbCRd3Q=;
        b=SVWF79S9obsjn1jPeTT23kAm3MCis6sj1Wd2ex5Q7HL3LqHocWgiyDWjah6bmeGYjB
         HyL/9IY1dXHItupngNYvu9Lnth2+CbkQPRnRIRYhEYpm4bUsMqtQg0nJOLPHJzsOrhs/
         ugcYo8cD93soRfFPcRIpeQ1QfjXehB67AHrN6k7OiuBfOo5qlV/XCwFg/aFZ23U1j4a7
         KUwAYripOE9MTyYbpKr5kQsELXPoaBaTTN377KHtwhU/SSmigMhkGB/XxPnjJvOFkTam
         lEuD5YqUP0o8XVeMi1XIy/Y9ftm4qWNQ2exkwDl7s7URTOXpuN38UpTvelatkzCqtjtq
         5iFg==
X-Forwarded-Encrypted: i=1; AJvYcCVA/QIj4r4x+3CebnnNg+GmnOIICuJKoNZXd7CQRZWjFclutR+zYB86sAyiB18bMYN4AS7aGgqdoHGs@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8kcWT7+fR7wG+GISyDl36Z7v2R+dumrYH9PhEnJQiMP0zLtzO
	aUTuCCgyIhKmtXbAyNjaX2jyeppDUffS2/wxXkKy0u3DLLHStBm6+Lc0nzWs+519pzyNCUxvHO3
	6d3yGEErYVDIXsQk7dC/AXItKHhsXxX4=
X-Gm-Gg: ASbGncsMHEFHR0WPX9X9/mwl1jqKs4+5G3uqqBLefi5R3pKqb2XDzq16ZhL60V+E/vl
	Hna4x+f5+S8OzbYWt+JqwoT+kBInSHhQ0UtmJ2aVARSgXdVlAyBzcMZRjJKRQAwANqLsG08ok5P
	ItiTN2/eCcLbvzqP9KzevZqdXuc0jgERX7E5ouql7Ey45RoP9kc00jEVIQeOaLNvZfBnRx8mR2V
	U0ZQHJk
X-Google-Smtp-Source: AGHT+IEgRyr03+K3nP1v4RFDAaB2T/dukNJX/7fSxSDXqoenOtbaJwHE6abGnYzKvIAOsR+BBjFG+VRT8nGt6XTXdf4=
X-Received: by 2002:a05:600c:1554:b0:45d:f7ca:4f07 with SMTP id
 5b1f17b1804b1-467efb04520mr94891755e9.18.1758522658794; Sun, 21 Sep 2025
 23:30:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250906135345.241229-1-clamor95@gmail.com> <25240767.ouqheUzb2q@senjougahara>
 <CAPVz0n1Tur0YY7yOYAyUFvyTxie4OteyzGhzv487L+aA-YY+wQ@mail.gmail.com> <4198615.hdfAi7Kttb@senjougahara>
In-Reply-To: <4198615.hdfAi7Kttb@senjougahara>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Mon, 22 Sep 2025 09:30:47 +0300
X-Gm-Features: AS18NWDVc75UgxzKXU9wjmggqvC2LNOMRXXeLZ6ybXXuZrOg-NHyYp0QsvZuWLs
Message-ID: <CAPVz0n0TPKa2cVXZdUEAWWHquGeqzj=p-9cXx79jc6RwXLkkGg@mail.gmail.com>
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

=D0=BF=D0=BD, 22 =D0=B2=D0=B5=D1=80. 2025=E2=80=AF=D1=80. =D0=BE 09:23 Mikk=
o Perttunen <mperttunen@nvidia.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Monday, September 22, 2025 2:13=E2=80=AFPM Svyatoslav Ryhel wrote:
> > =D0=BF=D0=BD, 22 =D0=B2=D0=B5=D1=80. 2025=E2=80=AF=D1=80. =D0=BE 07:44 =
Mikko Perttunen <mperttunen@nvidia.com> =D0=BF=D0=B8=D1=88=D0=B5:
> > >
> > > On Saturday, September 6, 2025 10:53=E2=80=AFPM Svyatoslav Ryhel wrot=
e:
> > > > Simplify format align calculations by slightly modifying supported =
formats
> > > > structure.
> > > >
> > > > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > > > ---
> > > >  drivers/staging/media/tegra-video/tegra20.c | 41 ++++++++---------=
----
> > > >  1 file changed, 16 insertions(+), 25 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/media/tegra-video/tegra20.c b/drivers/=
staging/media/tegra-video/tegra20.c
> > > > index 6e0b3b728623..781c4e8ec856 100644
> > > > --- a/drivers/staging/media/tegra-video/tegra20.c
> > > > +++ b/drivers/staging/media/tegra-video/tegra20.c
> > > > @@ -280,20 +280,8 @@ static void tegra20_fmt_align(struct v4l2_pix_=
format *pix, unsigned int bpp)
> > > >       pix->width  =3D clamp(pix->width,  TEGRA20_MIN_WIDTH,  TEGRA2=
0_MAX_WIDTH);
> > > >       pix->height =3D clamp(pix->height, TEGRA20_MIN_HEIGHT, TEGRA2=
0_MAX_HEIGHT);
> > > >
> > > > -     switch (pix->pixelformat) {
> > > > -     case V4L2_PIX_FMT_UYVY:
> > > > -     case V4L2_PIX_FMT_VYUY:
> > > > -     case V4L2_PIX_FMT_YUYV:
> > > > -     case V4L2_PIX_FMT_YVYU:
> > > > -             pix->bytesperline =3D roundup(pix->width, 2) * 2;
> > > > -             pix->sizeimage =3D roundup(pix->width, 2) * 2 * pix->=
height;
> > > > -             break;
> > > > -     case V4L2_PIX_FMT_YUV420:
> > > > -     case V4L2_PIX_FMT_YVU420:
> > > > -             pix->bytesperline =3D roundup(pix->width, 8);
> > > > -             pix->sizeimage =3D roundup(pix->width, 8) * pix->heig=
ht * 3 / 2;
> > > > -             break;
> > > > -     }
> > > > +     pix->bytesperline =3D DIV_ROUND_UP(pix->width * bpp, 8);
> > >
> > > Assuming the bpp is coming from the format table below, this changes =
the value of bytesperline for planar formats. With this it'll be (width * 1=
2) / 8 i.e. width * 3/2, which doesn't sound right.
> > >
> >
> > Downstream uses soc_mbus_bytes_per_line for this calculation which was
> > deprecated some time ago, here is a fragment
> >
> > s32 soc_mbus_bytes_per_line(u32 width, const struct soc_mbus_pixelfmt *=
mf)
> > {
> >  if (mf->fourcc =3D=3D V4L2_PIX_FMT_JPEG)
> >  return 0;
> >
> >  if (mf->layout !=3D SOC_MBUS_LAYOUT_PACKED)
> >  return width * mf->bits_per_sample / 8;
> >
> >  switch (mf->packing) {
> >  case SOC_MBUS_PACKING_NONE:
> >   return width * mf->bits_per_sample / 8;
> >  case SOC_MBUS_PACKING_2X8_PADHI:
> >  case SOC_MBUS_PACKING_2X8_PADLO:
> >  case SOC_MBUS_PACKING_EXTEND16:
> >   return width * 2;
> >  case SOC_MBUS_PACKING_1_5X8:
> >   return width * 3 / 2;
> >  case SOC_MBUS_PACKING_VARIABLE:
> >   return 0;
> >  }
> >    return -EINVAL;
> > }
> >
> > V4L2_PIX_FMT_YUV420 and V4L2_PIX_FMT_YVU420 are classified as
> > SOC_MBUS_PACKING_1_5X8 hence we get width * 3/2
>
> Googling this brings up the entry
>
> {
>         .code =3D V4L2_MBUS_FMT_YUYV8_1_5X8,
>         .fmt =3D {
>                 .fourcc                 =3D V4L2_PIX_FMT_YUV420,
>                 .name                   =3D "YUYV 4:2:0",
>                 .bits_per_sample                =3D 8,
>                 .packing                        =3D SOC_MBUS_PACKING_1_5X=
8,
>                 .order                  =3D SOC_MBUS_ORDER_LE,
>                 .layout                 =3D SOC_MBUS_LAYOUT_PACKED,
>         },
> }
>
> which matches that you're describing. It doesn't make sense to me, since =
it at the same time specifies PIX_FMT_YUV420 (which is planar with 3 planes=
, as documented by include/uapi/linux/videodev2.h), and LAYOUT_PACKED
>
> /**
>  * enum soc_mbus_layout - planes layout in memory
>  * @SOC_MBUS_LAYOUT_PACKED:             color components packed
>  * @SOC_MBUS_LAYOUT_PLANAR_2Y_U_V:      YUV components stored in 3 planes=
 (4:2:2)
>  * @SOC_MBUS_LAYOUT_PLANAR_2Y_C:        YUV components stored in a luma a=
nd a
>  *                                      chroma plane (C plane is half the=
 size
>  *                                      of Y plane)
>  * @SOC_MBUS_LAYOUT_PLANAR_Y_C:         YUV components stored in a luma a=
nd a
>  *                                      chroma plane (C plane is the same=
 size
>  *                                      as Y plane)
>  */
> enum soc_mbus_layout {
>         SOC_MBUS_LAYOUT_PACKED =3D 0,
>         SOC_MBUS_LAYOUT_PLANAR_2Y_U_V,
>         SOC_MBUS_LAYOUT_PLANAR_2Y_C,
>         SOC_MBUS_LAYOUT_PLANAR_Y_C,
> };
>
> i.e. non-planar. The code in the driver is handling it as three planes as=
 well, with addresses VB0_BASE_ADDRESS/VB0_BASE_ADDRESS_U/VB0_BASE_ADDRESS_=
V. Since the planes are separate, there should be no need to have more than=
 'width' samples per line.
>

I did not invent this, I have just simplified this calculation from
downstream, output values remain same. I have no cameras which can
output V4L2_PIX_FMT_YUV420 or V4L2_PIX_FMT_YVU420 so I cannot test if
this works either. Other YUV and RAW formats were tested on real HW
and work perfectly fine.

> >
> > > > +     pix->sizeimage =3D pix->bytesperline * pix->height;
> > > >  }
> > > >
> > > >  /*
> > > > @@ -576,20 +564,23 @@ static const struct tegra_vi_ops tegra20_vi_o=
ps =3D {
> > > >       .vi_stop_streaming =3D tegra20_vi_stop_streaming,
> > > >  };
> > > >
> > > > -#define TEGRA20_VIDEO_FMT(MBUS_CODE, BPP, FOURCC)    \
> > > > -{                                                    \
> > > > -     .code    =3D MEDIA_BUS_FMT_##MBUS_CODE,           \
> > > > -     .bpp     =3D BPP,                                 \
> > > > -     .fourcc  =3D V4L2_PIX_FMT_##FOURCC,               \
> > > > +#define TEGRA20_VIDEO_FMT(DATA_TYPE, BIT_WIDTH, MBUS_CODE, BPP, FO=
URCC)      \
> > > > +{                                                                 =
   \
> > > > +     .img_dt         =3D TEGRA_IMAGE_DT_##DATA_TYPE,              =
     \
> > > > +     .bit_width      =3D BIT_WIDTH,                               =
     \
> > > > +     .code           =3D MEDIA_BUS_FMT_##MBUS_CODE,               =
     \
> > > > +     .bpp            =3D BPP,                                     =
     \
> > > > +     .fourcc         =3D V4L2_PIX_FMT_##FOURCC,                   =
     \
> > > >  }
> > > >
> > > >  static const struct tegra_video_format tegra20_video_formats[] =3D=
 {
> > > > -     TEGRA20_VIDEO_FMT(UYVY8_2X8, 2, UYVY),
> > > > -     TEGRA20_VIDEO_FMT(VYUY8_2X8, 2, VYUY),
> > > > -     TEGRA20_VIDEO_FMT(YUYV8_2X8, 2, YUYV),
> > > > -     TEGRA20_VIDEO_FMT(YVYU8_2X8, 2, YVYU),
> > > > -     TEGRA20_VIDEO_FMT(UYVY8_2X8, 1, YUV420),
> > > > -     TEGRA20_VIDEO_FMT(UYVY8_2X8, 1, YVU420),
> > > > +     /* YUV422 */
> > > > +     TEGRA20_VIDEO_FMT(YUV422_8, 16, UYVY8_2X8, 16, UYVY),
> > > > +     TEGRA20_VIDEO_FMT(YUV422_8, 16, VYUY8_2X8, 16, VYUY),
> > > > +     TEGRA20_VIDEO_FMT(YUV422_8, 16, YUYV8_2X8, 16, YUYV),
> > > > +     TEGRA20_VIDEO_FMT(YUV422_8, 16, YVYU8_2X8, 16, YVYU),
> > > > +     TEGRA20_VIDEO_FMT(YUV422_8, 16, UYVY8_2X8, 12, YUV420),
> > > > +     TEGRA20_VIDEO_FMT(YUV422_8, 16, UYVY8_2X8, 12, YVU420),
> > > >  };
> > > >
> > > >  const struct tegra_vi_soc tegra20_vi_soc =3D {
> > > >
> > >
> > >
> > >
> > >
>
>
>
>

