Return-Path: <devicetree+bounces-62512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 662888B1657
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 00:43:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 89B551C222F5
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 22:43:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2724716E86E;
	Wed, 24 Apr 2024 22:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LtNK1GaJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7817116D9AF
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 22:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713998612; cv=none; b=LNU05ECTlVHo1JJtfL74roKwmhk3maiBD6xycfdL5/iDAIuHsf1M8YUywoOd162HRQB9bnv04p59OwelRBj2UmrhI3WkVAXXjHNV123yyEM/053fE5P194MyaFVEobO4pCgvv4wT5D3TA+g9kREqT+7WQC3uW84xL1yhUiBcjSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713998612; c=relaxed/simple;
	bh=MEKcpxKvyFyt6gXvf1rl3IVTfewAZXKh6RKdA7b7/Vw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tkcHaXKjgGO7Dkroc/Tk2FKOmxBL0geWmQdbmdUw4ZofpGcg9uavml5htWK9I2UQCsqh5R1P9SfSs8t9i/RokpqEoGUElOT5thxc/VxnfdRmbsoq5bLTPl3sC76G6i/gCuPoe4H0UO780XXa1zDWaVoE0DuIwa+EdTZBLTjoEYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=LtNK1GaJ; arc=none smtp.client-ip=209.85.219.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-6a073f10e25so2401966d6.3
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 15:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1713998608; x=1714603408; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nMrRFrfAkMBHNdCwNPCMk+6Pc/CQ0PrT4pRXz9no6XU=;
        b=LtNK1GaJMpytif9kIdreY1U0fIgCYUvTUrNGo3ebrCdBVeRcmBRJpXgk6fIF8FB19h
         6cl6ZwzlFSPi89U0ipfssd48M2lKVtlVg94iRUuzcSfQ+UT12lhqaI8m4Lt8qhP7XLLX
         nVj4Kcmpjjn2/CNNI8vZTQ+tW77KDq3bW+uH8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713998608; x=1714603408;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nMrRFrfAkMBHNdCwNPCMk+6Pc/CQ0PrT4pRXz9no6XU=;
        b=Ey9gce0kcmtk6QbCjF9dBzlS3UAOzRNdvVSpy81207z751kTiV+9i/AWzQNKH+cFns
         YY7r6TWcN0qszr22Y3hNou+0O8XWHRCkkzkQKyCZDomWdkrFcuLntFpfC33LUGdtha7s
         L8vrj+g/AXt3Xnq2ZXmXWMPE8O8tjF/V68lOxXX7Caq+VXdUUSt3UH4uqvbHjAbxTxzs
         Ax286bpT4cSe0Qh00DjqmeJBMAosVTj7Y9GGd92hFxV8BWp0nYkxvbT+NGQt2PPOXKcl
         rg/HVQcOJbZo0dYVPlBx3X/rdCQ/HNrAWp11/CShtGytnZ6NPwOTPSLIlPPA4N2MgI6P
         Rflg==
X-Forwarded-Encrypted: i=1; AJvYcCVrcYtYmG7UNVa8FMTvj2WglorSMzunruAQWqzpbDZJfkZNpYyWYQIzE91wlfn7urh6bL0Tq4isb6vvdWvq+2YI/LcaDGJw2ASRIg==
X-Gm-Message-State: AOJu0Yy4Hk5G6+pPIZWR0/2pz3h5sA16MtOjy9qTO0W/8meyd7LC7nUp
	2jwcPOC/ojHPz49t4d6R8jQWZpTAXvPs5uZ0zIzz2FS4tWTlT+ticCB2NaYGPy+IPLBdYFs/2PE
	=
X-Google-Smtp-Source: AGHT+IHG3Tb57VTIa9F6BztZFRltOQFxC046DsUG3zqvRZTfETRpi47bRlyZwZVPWVKepTigU/Lz6g==
X-Received: by 2002:a0c:ed33:0:b0:6a0:8132:cd8a with SMTP id u19-20020a0ced33000000b006a08132cd8amr4369573qvq.7.1713998607455;
        Wed, 24 Apr 2024 15:43:27 -0700 (PDT)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com. [209.85.160.170])
        by smtp.gmail.com with ESMTPSA id x4-20020a0cc504000000b0069b5e92350bsm5364113qvi.96.2024.04.24.15.43.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Apr 2024 15:43:26 -0700 (PDT)
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-436ed871225so60941cf.1
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 15:43:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVqKMUkmg6qXk8SuCmmHHixWowDc/yGA719EVfodWdHXIXsEdi1pvAs9ytnW+ysRc/HVW9U6xc6Z1EBqZ9iWFnUsPDxZpRRDA3VuQ==
X-Received: by 2002:ac8:795a:0:b0:437:b572:6a with SMTP id r26-20020ac8795a000000b00437b572006amr43473qtt.23.1713998605986;
 Wed, 24 Apr 2024 15:43:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240422090310.3311429-1-yangcong5@huaqin.corp-partner.google.com>
 <20240422090310.3311429-3-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=V2O2aFDVn5CjbXfgcOLkmNp-G3ChVqQKouB2mDB+NZug@mail.gmail.com>
 <CAHwB_NJsDsTc=gjP8TJ+6ipo10uMYFLmuf+tKGVgxnznhuAcUQ@mail.gmail.com>
 <CAD=FV=UGDbNvAMjzWSOvxybGikQcvW9JsRtbxHVg8_97YPEQCA@mail.gmail.com> <CAHwB_N+e4E8uZe3YpfNyemPyW-Rj1RLR5kKA3SDiBygOPYrmVQ@mail.gmail.com>
In-Reply-To: <CAHwB_N+e4E8uZe3YpfNyemPyW-Rj1RLR5kKA3SDiBygOPYrmVQ@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 24 Apr 2024 15:43:10 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XHmkVbU7RqvOPLpknWWTPAMWu_-EApWdcuPRRDMOim8g@mail.gmail.com>
Message-ID: <CAD=FV=XHmkVbU7RqvOPLpknWWTPAMWu_-EApWdcuPRRDMOim8g@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] drm/panel: himax-hx83102: Break out as separate driver
To: cong yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	linus.walleij@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, airlied@gmail.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, xuxinxiong@huaqin.corp-partner.google.com, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Apr 23, 2024 at 7:42=E2=80=AFPM cong yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> Hi,
>  Thanks reply.
>
> Doug Anderson <dianders@chromium.org> =E4=BA=8E2024=E5=B9=B44=E6=9C=8824=
=E6=97=A5=E5=91=A8=E4=B8=89 00:26=E5=86=99=E9=81=93=EF=BC=9A
> >
> > Hi,
> >
> > On Tue, Apr 23, 2024 at 2:37=E2=80=AFAM cong yang
> > <yangcong5@huaqin.corp-partner.google.com> wrote:
> > >
> > > > > +static int starry_init_cmd(struct hx83102 *ctx)
> > > > > +{
> > > > > +       struct mipi_dsi_device *dsi =3D ctx->dsi;
> > > > > +
> > > > > +       mipi_dsi_dcs_write_seq(dsi, HX83102_SETEXTC, 0x83, 0x10, =
0x21, 0x55, 0x00);
> > > > > +
> > > > > +       mipi_dsi_dcs_write_seq(dsi, HX83102_SETPOWER, 0x2C, 0xB5,=
 0xB5, 0x31, 0xF1, 0x31, 0xD7, 0x2F,
> > > > > +                                                 0x36, 0x36, 0x3=
6, 0x36, 0x1A, 0x8B, 0x11, 0x65, 0x00, 0x88, 0xFA, 0xFF,
> > > > > +                                                 0xFF, 0x8F, 0xF=
F, 0x08, 0x74, 0x33);
> > > >
> > > > I know this is a sticking point between Linus W. and me, but I'm
> > > > really not a fan of all the hardcoded function calls since it bloat=
s
> > > > the code so much. I think we need to stick with something more tabl=
e
> > > > based at least for the majority of the commands. If I understand
> > > > correctly, Linus was OK w/ something table based as long as it was =
in
> > > > common code [1]. I think he also wanted the "delay" out of the tabl=
e,
> > > > but since those always seem to be at the beginning or the end it se=
ems
> > > > like we could still have the majority of the code as table based. D=
o
> > > > you want to make an attempt at that? If not I can try to find some
> > > > time to write up a patch in the next week or so.
> > >
> > > Do you mean not add "delay" in the table?  However, the delay
> > > required by each panel may be different. How should this be handled?
> >
> > In the case of the "himax-hx83102" driver, it looks as if all the
> > delays are at the beginning or end of the init sequence. That means
> > you could just make those extra parameters that are set per-panel and
> > you're back to having a simple sequence without delays.
>
> Do you mean add msleep  in hx83102_enable()?
>
> @@ -612,12 +604,15 @@ static int hx83102_enable(struct drm_panel *panel)
>         struct device *dev =3D &dsi->dev;
>         int ret;
>
> +       msleep(60);
>         ret =3D ctx->desc->init_cmds(ctx);
>         if (ret) {
>                 dev_err(dev, "Panel init cmds failed: %d\n", ret);
>                 return ret;
>         }
>
> +       msleep(60);
> +
>         ret =3D mipi_dsi_dcs_exit_sleep_mode(dsi);
>
> >
> > If you had panels that needed delays in a more complicated way, you
> > could keep the per-panel functions but just make the bulk of the
> > function calls apply a sequence. For instance:
> >
> > static int my_panel_init_cmd(...)
> > {
> >   ret =3D mipi_dsi_dcs_write_cmd_seq(dsi, my_panel_init_cmd_seq);
> >   if (ret)
> >     return ret;
> >   mdelay(100);
> >   ret =3D mipi_dsi_dcs_write(dsi, ...);
> >   if (ret)
> >     return ret;
> >   mdelay(50);
> >   ret =3D mipi_dsi_dcs_write_cmd_seq(dsi, ...);
> >   if (ret)
> >     return ret;
> > }
> >
> > The vast majority of the work is still table driven so it doesn't
> > bloat the code, but you don't have the "delay" in the command sequence
> > since Linus didn't like it. I think something like the above would
> > make Linus happy and I'd be OK w/ it as well. Ideally you should still
> > make your command sequence as easy to understand as possible, kind of
> > like how we did with _INIT_SWITCH_PAGE_CMD() in
> > "panel-ilitek-ili9882t.c"
> >
> > As part of this, you'd have to add a patch to create
> > mipi_dsi_dcs_write_cmd_seq(), but hopefully that shouldn't be too
> > complicated?
> >
> >
> > > It would be great if you could help provide a patch. Thank you so muc=
h.
> >
> > Sure, I can, though maybe you want to give it a shot with the above des=
cription?
>
> Sorry, I still don't seem to understand. How to encapsulate the parameter=
s of
> "HX83102_SETDISP, HX83102_SETCYC,....."? Different parameters for each pa=
nel.
> I have sent my V3 but it does not contain the patch you want.

It sounds as if Dmitry has come up with a solution that allows us to
keep using the functions like you've been using but avoid the code
bloat problems. ...so let's go with that. It sounds as if he's going
to send a patch before too long and then it should be pretty easy to
convert your patches over to use his new function.

[1] https://lore.kernel.org/r/CAA8EJprv3qBd1hfdWHrfhY=3DS0w2O70dZnYb6TVsS6A=
GRPxsYdw@mail.gmail.com

