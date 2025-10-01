Return-Path: <devicetree+bounces-222892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D80B8BAF1F4
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 07:07:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8EF583BE218
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 05:07:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C89202D8375;
	Wed,  1 Oct 2025 05:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V737GbRk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DA362D7DEF
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 05:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759295240; cv=none; b=T0QpQmmTwyXX2kZZxeSFamGW0kKVmstn4sP6W0KjvyaQoqijAi++o35nOX1sFBgOJXsLjnmlkjUs0XgFXLgaumhllD+/qUSIi1YIEKl2isNJrx4FXjkavWAchW7fzRsCGIM8CJbQpTxG0c57ZoOpmkjwNz7SiMwm9jk4pFI8SKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759295240; c=relaxed/simple;
	bh=UKLEdzyzFlawIylxXrS0tj7W7tof3exuoWcgVxQUufQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nac9oepJYSPFjSQij6oJu9ir4oi7BmD1jw8FRtkl+6Uh7ChEW2J+HYzi1c5mQGcHei0wmDWDC/zf+m33ONOYAGe6RnlQv2Mevedd9rpw26F+1qpj8rW1lkFspM9CAfWDhYEROdtsQiIKqzPH9PjyzfDJL8VTINDCX2lPYUuL/dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V737GbRk; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-4060b4b1200so5890520f8f.3
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 22:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759295237; x=1759900037; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r8vgGDTjLjTEmVqzleKL4l09ipBTPvzJcrzqUAiCnow=;
        b=V737GbRk0ZCbN02+Nyp5o9sYANbqUiYzzHhMttTplYhSnTKiB3MzGabHO40QNIianQ
         ZQubpzZ0zfG9gDlawiDQusiyODS2R8ZQ3vvyQ9IB8EMya0YuM2LGUTuUXAYqoksya4PP
         Adeqe4pPyNzMq0nA7fRM//FV+Y3Nc1JDYfdpcafvAwMAprGTiUdrIEaRnlMCyb+WqDLM
         M4jyr+GbxX+zS1RMhcircYL2BoqPJR7q9046c5wIRNP8cBiP2CYepxAqe9fOaCDjT6vq
         PCC7AVUiIOzHYGSYMzs90lNIuzCcyBiodTtMRuZc84o8BZPZruBURzo8Po83nZxjfdlG
         mmMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759295237; x=1759900037;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r8vgGDTjLjTEmVqzleKL4l09ipBTPvzJcrzqUAiCnow=;
        b=wOfVFqdrlbUVJKHzfmBeo8kySQWF1e/j9THsx39jpGYLgTYrkKteDcIvHchg8c7v3l
         JRbzlR1QPbwWxfuhCmnpqulo9rvDzs4PlsTbbw+um07vo8es2iSMnO5PNFnVIDhLPhh9
         52ott7Mjr/hAz0qacFj/0H5j3aE5i1+hoy33V6FmN2Knbjsblu8zZ9XPBwQJisHDhCaK
         5vEkKRvbs6MnEu9Zpq8jnztT5g4JUJrMiEx4koxIbyP38zdt1xmHGRagDcRvLBs0CgKW
         ztAcnJAY1web21e6RCwzVosyuZoTNb2ATdD4hx9cpnGwW4nE3OsqkJyr9v9RMhtiiXYf
         9iSg==
X-Forwarded-Encrypted: i=1; AJvYcCViaj5XeJu7fXS7sg1oY+zzv66Pxw161nYxqXWfjx4UcRMR9pH7a07NsZn6CCMVMB37s/y+MX2IThaA@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/xBYr96EgpBaQ4b6llxx+byTAYhvkNTkea/IZLsUCIsuVfHtm
	1T1oVHFETDDezs/OIsx67H5x7kxwVFbr/+/SDJeTxIMR8MVVRQ/Q9j4VM7U0OK+c1nFCkrWMBob
	3vbLB4AVvkKQVM422qtHBjxBOr4Gkwxk=
X-Gm-Gg: ASbGncsYTCAqFHSQrdRBlE6ZJQB6v6T8pV02fODw19j+rU8sIM0pDt0G703DIX6rKVO
	S4kFXhb3+lcsGjTrm89BxVUerTce5gOVEzYP8qqxfgoQniH5QxVwvOMhVYNjeRNWlcHr+8D5mlL
	5l+lfD3uTr16nP4RlsfV4QO2k++u2n2KiIMhB5mqAzq7jBANHjrDlntORTVpLSa2s9R14tuOSUa
	VBXEfpvLSXq+r0O8Z5qWq+0wnXnOTt4
X-Google-Smtp-Source: AGHT+IFHxBP03z9ZXbXrKYWqGNzPPfQDYurBNIYBdZeZ1xQtoSKeOld5v2suhIZ1R4Hokx1AvTWEQpE8jK1BZsz3aV8=
X-Received: by 2002:a05:6000:240a:b0:3ea:6680:8fcd with SMTP id
 ffacd0b85a97d-425577edd9bmr1705706f8f.13.1759295236387; Tue, 30 Sep 2025
 22:07:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925151648.79510-1-clamor95@gmail.com> <20250925151648.79510-16-clamor95@gmail.com>
 <3419823.yaVYbkx8dN@senjougahara>
In-Reply-To: <3419823.yaVYbkx8dN@senjougahara>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Wed, 1 Oct 2025 08:07:05 +0300
X-Gm-Features: AS18NWDirx6sT0hDXpNJ8eJzqR8FL9ZQmmgwfKfoVpD8bLX_BgsvnI1FqR8dIZE
Message-ID: <CAPVz0n2CRV8d1w1hp-60SQ_caBTFyJE8tJaWerwyEuZHD1p_Nw@mail.gmail.com>
Subject: Re: [PATCH v3 15/22] staging: media: tegra-video: tegra20: simplify
 format align calculations
To: Mikko Perttunen <mperttunen@nvidia.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Sowjanya Komatineni <skomatineni@nvidia.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Prashant Gaikwad <pgaikwad@nvidia.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	=?UTF-8?Q?Jonas_Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>, 
	Dmitry Osipenko <digetx@gmail.com>, Charan Pedumuru <charan.pedumuru@gmail.com>, 
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>, Aaron Kling <webgeek1234@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-staging@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D1=81=D1=80, 1 =D0=B6=D0=BE=D0=B2=D1=82. 2025=E2=80=AF=D1=80. =D0=BE 07:38=
 Mikko Perttunen <mperttunen@nvidia.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Friday, September 26, 2025 12:16=E2=80=AFAM Svyatoslav Ryhel wrote:
> > Simplify format align calculations by slightly modifying supported form=
ats
> > structure. Adjusted U and V offset calculations for planar formats sinc=
e
> > YUV420P bits per pixel is 12 (1 full plane for Y + 2 * 1/4 planes for U
> > and V) so stride is width * 3/2, but offset must be calculated with pla=
in
> > width since each plain has stride width * 1. This aligns with downstrea=
m
>
> plane
>
> > behavior which uses same approach for offset calculations.
> >
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > ---
> >  drivers/staging/media/tegra-video/tegra20.c | 58 +++++++++------------
> >  drivers/staging/media/tegra-video/vi.h      |  3 +-
> >  2 files changed, 27 insertions(+), 34 deletions(-)
> >
> > diff --git a/drivers/staging/media/tegra-video/tegra20.c b/drivers/stag=
ing/media/tegra-video/tegra20.c
> > index 7c3ff843235d..b7a39723dfc2 100644
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
> > +     pix->sizeimage =3D pix->bytesperline * pix->height;
> >  }
> >
> >  /*
> > @@ -305,6 +293,7 @@ static void tegra20_channel_queue_setup(struct tegr=
a_vi_channel *chan)
> >  {
> >       unsigned int stride =3D chan->format.bytesperline;
> >       unsigned int height =3D chan->format.height;
> > +     unsigned int width =3D chan->format.width;
> >
> >       chan->start_offset =3D 0;
> >
> > @@ -321,8 +310,8 @@ static void tegra20_channel_queue_setup(struct tegr=
a_vi_channel *chan)
> >
> >       case V4L2_PIX_FMT_YUV420:
> >       case V4L2_PIX_FMT_YVU420:
> > -             chan->addr_offset_u =3D stride * height;
> > -             chan->addr_offset_v =3D chan->addr_offset_u + stride * he=
ight / 4;
> > +             chan->addr_offset_u =3D width * height;
> > +             chan->addr_offset_v =3D chan->addr_offset_u + width * hei=
ght / 4;
> >
> >               /* For YVU420, we swap the locations of the U and V plane=
s. */
> >               if (chan->format.pixelformat =3D=3D V4L2_PIX_FMT_YVU420)
> > @@ -332,14 +321,14 @@ static void tegra20_channel_queue_setup(struct te=
gra_vi_channel *chan)
> >               chan->start_offset_v =3D chan->addr_offset_v;
> >
> >               if (chan->vflip) {
> > -                     chan->start_offset   +=3D stride * (height - 1);
> > -                     chan->start_offset_u +=3D (stride / 2) * ((height=
 / 2) - 1);
> > -                     chan->start_offset_v +=3D (stride / 2) * ((height=
 / 2) - 1);
> > +                     chan->start_offset   +=3D width * (height - 1);
> > +                     chan->start_offset_u +=3D (width / 2) * ((height =
/ 2) - 1);
> > +                     chan->start_offset_v +=3D (width / 2) * ((height =
/ 2) - 1);
> >               }
> >               if (chan->hflip) {
> > -                     chan->start_offset   +=3D stride - 1;
> > -                     chan->start_offset_u +=3D (stride / 2) - 1;
> > -                     chan->start_offset_v +=3D (stride / 2) - 1;
> > +                     chan->start_offset   +=3D width - 1;
> > +                     chan->start_offset_u +=3D (width / 2) - 1;
> > +                     chan->start_offset_v +=3D (width / 2) - 1;
> >               }
> >               break;
> >       }
> > @@ -576,20 +565,23 @@ static const struct tegra_vi_ops tegra20_vi_ops =
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
>
> Looking at the code, BPP seems to only be used for the line stride (i.e. =
bytes per line) calculation. I think we should just make it 8 for the plana=
r formats (possibly with an explaining comment). With the current code, we =
end up with 'bytesperline' variables in places not being the actual bytes p=
er line, which is confusing.
>
> Actually, we can then just make the 'bpp' field be bytes per pixel as it =
was before to avoid the discrepancy with Tegra210.
>

No, this code is actually cleaner and in sync with what downstream
does, Tegra210 bytes per pixel is confusing since it totally neglects
formats with fractional bytes per pixel, it is impossible to set there
3/2 for example, which is used by YUV420.

According to downstream code bytes_per_line =3D
soc_mbus_bytes_per_line..., downstream directly name is bytes_per_line
and soc_mbus_bytes_per_line returns width * 3 / 2 which is correct
calculation (12 bits). Meanwhile for planar formats Tegra has 3
different buffers so with offset calculation plain width must be used
(which matches downstream).

> >
> >  const struct tegra_vi_soc tegra20_vi_soc =3D {
> > diff --git a/drivers/staging/media/tegra-video/vi.h b/drivers/staging/m=
edia/tegra-video/vi.h
> > index bfadde8858d4..5cbc0606ed6c 100644
> > --- a/drivers/staging/media/tegra-video/vi.h
> > +++ b/drivers/staging/media/tegra-video/vi.h
> > @@ -281,7 +281,8 @@ enum tegra_image_dt {
> >   * @img_dt: MIPI CSI-2 data type (for CSI-2 only)
> >   * @bit_width: format width in bits per component (for CSI/Tegra210 on=
ly)
> >   * @code: media bus format code
> > - * @bpp: bytes per pixel (when stored in memory)
> > + * @bpp: bytes per pixel (when stored in memory) for Tegra210,
> > + *    bits per pixel for Tegra20/Tegra30
> >   * @img_fmt: image format (for CSI/Tegra210 only)
> >   * @fourcc: V4L2 pixel format FCC identifier
> >   */
> >

