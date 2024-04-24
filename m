Return-Path: <devicetree+bounces-62495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3BF8B1502
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 23:05:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A7632847AF
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 21:05:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19344156979;
	Wed, 24 Apr 2024 21:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="LeFWZ9bB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C23156679
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 21:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713992702; cv=none; b=dWiVnLpluMsUHX6TIzdT/p1vh9Q52kjNMVh+JMJWe6fgI7YR1qO7Qjgu05m+oiSLukPEZhhbsCwkdMFVWgzfW10faA6rop8LGG4g4nFLbhJ5RbgX48VHQfJ5pvGynfEFYU6R0zxWSj+0wWxR8PNpZ6viyIkM6c/E+VbeQR/lZhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713992702; c=relaxed/simple;
	bh=9gUCM7+Y59pV0dpL1ZgcH0tnISl+VsZqhpT/ZOkRg2E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n6GcoBVOb3047pk3jQsIn1wzRPcgMJ2kFq+L6c0P2yN59/pzlDXmJzQgJAGcGe2mQa0XStES/vr8XNrdZcMto2J8XaIesgziHYjap+WU0khqqskVehmkRO1r31DnrFM5D2jnN4Ysq+V2GsOVdql+UYWkXy0m0/SjZOB7ik+f/70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=LeFWZ9bB; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-439b1c72676so47751cf.1
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 14:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1713992699; x=1714597499; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rj4rO4PLh4sMNnDeMs5uvJoPjl+yBAVoxkkhmmaqDak=;
        b=LeFWZ9bBea+DZsqg0SF406mNSqtKsfEfsG62ARt+d10IzMkYcXgF4ZdN9FyWdTPi3Q
         DQ1dDw+b5b9KDj12eHzm1yJ6ZGVmxd2nmyQpkdJg56kBaCNGSxIiNwYShhAW2MWtrvxD
         0dBIvUfTn6rotgv5MpfsSiT9G2fU3yOMfG9t7gvoPjBL8bCwr0vCaobV/91DvgnFbHpf
         MwFBjaDEfG0YCqmctglN0CHxKqyPnFowBeaOGkhxzdnuqNouY7e+LFoNt3wHil955FwP
         F0SnYdaYa98/EKg8i7vgnZII6i9YpZCXMXhrDvOAyO6I/90C1vdulpyf81pRhlArCWGl
         dNXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713992699; x=1714597499;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rj4rO4PLh4sMNnDeMs5uvJoPjl+yBAVoxkkhmmaqDak=;
        b=DEuM9WOEM10eIoXb1O0x2/TlCs9d/8shOQcPtnkA1TN3nIVItBA+dvwRneFUr3xbTQ
         00/UKCSL7XCPvpiJm/VOSAEjONANLP2r/SrQGRol42gdklN02Kr+3cYVmUlEEhOeYzuI
         lWjPJGtuXcJCOwLeBXv/onf+5/qty4ULl99LGSnlJi2wdKCDCl41B5i4nIW0nGJQC2Gm
         hFQD263yjHwqtzU8LWE7HsnlI+BxmLf1uxay/JVodGQBHK7Ga7CEL5Y6IuiVz3U8/UGQ
         nMICRdSlQmwU3XY7wqG9kYpw5M0AHcq8MS23j/frrBg9/9mYCBOO9FpmTuwbMwJMoFRd
         KmVA==
X-Forwarded-Encrypted: i=1; AJvYcCVeQTndYCdB64aLLD3sylkDO5I00ZPgbK8b2Xh7+oyqKn3snqx/Bwmbjbaa467geMt2lfR+fL1mK6bwNjp0A6iVYt0IovylPAze2g==
X-Gm-Message-State: AOJu0YxGN0gw3zaHzAlN+B/tz4k8RXGDVLemDqzhYtJmja9ELRoOZCQF
	sy4qC280xbTa8iquJMJZPVH+Bs7N3HcpdHnPT7guY4clH7v8FJNYPFgxQv17PNSpQYfY/KvTsnj
	m7wIney5kqwJZLw4+HxCvi31lLaaYCmj92e6W
X-Google-Smtp-Source: AGHT+IEtI3etrgBybXbwYg7jilj5JjvVJImpTblqzNlSwo3wBJoObCifOxf1jLNtJT+zh1edHSqTk9tcT444rLpYkGI=
X-Received: by 2002:ac8:4788:0:b0:439:ad3:a62c with SMTP id
 k8-20020ac84788000000b004390ad3a62cmr16873qtq.3.1713992698963; Wed, 24 Apr
 2024 14:04:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240418081548.12160-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240418081548.12160-3-lvzhaoxiong@huaqin.corp-partner.google.com>
 <zanx5y3obqmewnbooovf52hx6vh7tpi4zsbse2dyzcqzddmzhw@kewxoa6n3mja>
 <CACb=7PURWtS8bwT5EcAFHhu7deHd2Y8cNOattfdwyEYpOUcbnQ@mail.gmail.com>
 <vbt2nxddw2dc7hkreq4iybv5zv5xyp32oajybeqsphgfrhzmn7@tskvckljmxpe>
 <CACb=7PVTvV9nsFu1ZAXu7YTjSOAGZka+c__EJq3J3qgSJGEShw@mail.gmail.com>
 <CAD=FV=VYAzqsGEBJai9b9n+HxHiG59L1vF73AEWcTwLS_ryjWw@mail.gmail.com> <an2k3vgynq4as2sd5dy6ccmdiqedmo7qjsab5qyfhesd333i2a@235sqph3bze5>
In-Reply-To: <an2k3vgynq4as2sd5dy6ccmdiqedmo7qjsab5qyfhesd333i2a@235sqph3bze5>
From: Doug Anderson <dianders@google.com>
Date: Wed, 24 Apr 2024 14:04:43 -0700
Message-ID: <CAD=FV=VQ8rbwKk4WpHRER9p4cZp7UrrHRpgnErqbQxyxp4sg5w@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] drm/panel: kd101ne3: add new panel driver
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Hsin-Yi Wang <hsinyi@google.com>, 
	lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>, mripard@kernel.org, 
	airlied@gmail.com, daniel@ffwll.ch, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	cong yang <yangcong5@huaqin.corp-partner.google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Apr 23, 2024 at 2:20=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Tue, Apr 23, 2024 at 01:41:59PM -0700, Doug Anderson wrote:
> > Hi,
> >
> > On Tue, Apr 23, 2024 at 11:10=E2=80=AFAM Hsin-Yi Wang <hsinyi@google.co=
m> wrote:
> > >
> > > > > > > +#define _INIT_DCS_CMD(...) { \
> > > > > > > +     .type =3D INIT_DCS_CMD, \
> > > > > > > +     .len =3D sizeof((char[]){__VA_ARGS__}), \
> > > > > > > +     .data =3D (char[]){__VA_ARGS__} }
> > > > > > > +
> > > > > > > +#define _INIT_DELAY_CMD(...) { \
> > > > > > > +     .type =3D DELAY_CMD,\
> > > > > > > +     .len =3D sizeof((char[]){__VA_ARGS__}), \
> > > > > > > +     .data =3D (char[]){__VA_ARGS__} }
> > > > > >
> > > > > > This is the third panel driver using the same appoach. Can you =
use
> > > > > > mipi_dsi_generic_write_seq() instead of the huge table? Or if y=
ou prefer
> > > > > > the table, we should extract this framework to a common helper.
> > > > > > (my preference is shifted towards mipi_dsi_generic_write_seq())=
.
> > > > > >
> > > > > The drawback of mipi_dsi_generic_write_seq() is that it can cause=
 the
> > > > > kernel size grows a lot since every sequence will be expanded.
> > > > >
> > > > > Similar discussion in here:
> > > > > https://lore.kernel.org/dri-devel/CAD=3DFV=3DWju3WS45=3DEpXMUg7Fj=
YDh3-=3Dmvm_jS7TF1tsaAzbb4Uw@mail.gmail.com/
> > > > >
> > > > > This patch would increase the module size from 157K to 572K.
> > > > > scripts/bloat-o-meter shows chg +235.95%.
> > > > >
> > > > > So maybe the common helper is better regarding the kernel module =
size?
> > > >
> > > > Yes, let's get a framework done in a useful way.
> > > > I'd say, drop the _INIT_DELAY_CMD. msleep() and usleep_range() shou=
ld be
> > > > used instead (and it's up to the developer to select correct delay
> > > > function).
> > > >
> > > > >
> > > > > > > +
> > > > > > > +static const struct panel_init_cmd kingdisplay_kd101ne3_init=
_cmd[] =3D {
> > > > > > > +     _INIT_DELAY_CMD(50),
> > > > > > > +     _INIT_DCS_CMD(0xE0, 0x00),
> > > >
> > > > [skipped the body of the table]
> > > >
> > > > > > > +     _INIT_DCS_CMD(0x0E, 0x48),
> > > > > > > +
> > > > > > > +     _INIT_DCS_CMD(0xE0, 0x00),
> > > >
> > > > > > > +     _INIT_DCS_CMD(0X11),
> > > >
> > > > Also, at least this is mipi_dsi_dcs_exit_sleep_mode().
> > > >
> > > > > > > +     /* T6: 120ms */
> > > > > > > +     _INIT_DELAY_CMD(120),
> > > > > > > +     _INIT_DCS_CMD(0X29),
> > > >
> > > > And this is mipi_dsi_dcs_set_display_on().
> > > >
> > > > Having a single table enourages people to put known commands into t=
he
> > > > table, the practice that must be frowned upon and forbidden.
> > > >
> > > > We have functions for some of the standard DCS commands. So, maybe
> > > > instead of adding a single-table based approach we can improve
> > > > mipi_dsi_generic_write_seq() to reduce the bloat. E.g. by moving th=
e
> > > > error handling to a common part of enable() / prepare() function.
> > > >
> > >
> > > For this panel, I think it can also refer to how
> > > panel-kingdisplay-kd097d04.c does. Create the table for init cmd data=
,
> > > not what operation to use, and use mipi_dsi_generic_write_seq() when
> > > looping through the table.
> >
> > Even more similar discussion:
> >
> > https://lore.kernel.org/r/CAD=3DFV=3DUGDbNvAMjzWSOvxybGikQcvW9JsRtbxHVg=
8_97YPEQCA@mail.gmail.com
>
> It seems I skipped that thread.
>
> I'd still suggest a code-based solution compared to table-based one, for
> the reasons I've outlined before. Having a tables puts a pressure on the
> developer to put commands there for which we already have a
> command-specific function.

The problem is that with these panels that need big init sequences the
code based solution is _a lot_ bigger. If it were a few bytes or a
1-2KB then fine, but when Hsin-Yi measured Linus W's attempt to move
from a table to code it was 100K difference in code [1]. I would also
say that having these long init sequences done as separate commands
encourages people to skip checking the return values of each of the
transfer functions and I don't love that idea.

It would be ideal if these panels didn't need these long init
sequences, but I don't have any inside knowledge here saying that they
could be removed. So assume we can't get rid of the init sequences it
feels like we have to find some way to make the tables work for at
least the large chunks of init code and encourage people to make the
tables readable...


[1] https://lore.kernel.org/r/CAD=3DFV=3DUFa_AoJQvUT3BTiRs19WCA2xLVeQOU=3D+=
nYu_HaE0_c6Q@mail.gmail.com

