Return-Path: <devicetree+bounces-62031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D148AF81C
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 22:42:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D496E1F22748
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 20:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FC5E142E79;
	Tue, 23 Apr 2024 20:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="kYMQRTu1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8438D142E65
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 20:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713904937; cv=none; b=hHc9qFlJYP0+VLvgbTaiGbX/vFG0iKj0Jugg3DhafwKC81zJaOsnVEy3/PuwEBqwiSB7+AZTc+OPUGeV41xCeEc5jizNMV8TKZlkftq9LbPE/VxOUCrG7ErLowECv2027LweW12uVD3LIQnQ5o/sdIUP8vOs2bQErx/8NIrJI+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713904937; c=relaxed/simple;
	bh=D5BJ7O2Kt6zlpwHLoy0opognLmOElaFOtR6DOOQwoGk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eDJlHs27XaIQICZuGXohXcsGBI7gSd477YawtCmdtj4016zKqVK8Fw8ImZYOpdJuHEsWp8KtcHJu5REMfr+BByIDvqESwtx+8LmcMz0sRznQrfVG0d04SikdyFYcUIy0klTDDc2SoqcL/Je1XPbJ3UgIjbQ0NyORc/jq6fuE2DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=kYMQRTu1; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-439b1c72676so33591cf.1
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 13:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1713904934; x=1714509734; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gBaEPajCkSnKrTb2DDUtDRO7q5j6yIsYeUTfCcOrMGA=;
        b=kYMQRTu15aTxa4Cdv/DvuzwZuIH35TsiPZV0MAtEnaYekPznFy3+ZaJ/s+2goONuaR
         I/uHdO28dtkUovWhO7zYy6sIBQPd2J5MOSiqyFy5Qkx1nsJK+CoiAnGsKzymZuitT7vG
         ANWVv0RyTBPGEb2BKz02dcEW0g7QcdfT6NZyAbtqn8SRhiz1D4/zOCZlDXbLgRbBVwxZ
         vv+sKP4m0VlKdTq1eGipVaGRoWcMQFOdi1BLwxN3teMnfVczr989KHSts2ERnjR3+3wQ
         /RurnZud9CCj6/f3DNAV2JPG/v+6ebr0ntZ9TE0hOeNFY/hp700Vs+grWFqx0LWtmLNH
         ujbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713904934; x=1714509734;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gBaEPajCkSnKrTb2DDUtDRO7q5j6yIsYeUTfCcOrMGA=;
        b=f+T6S7T4yyrPh5iV0Ov9GfoR+bCCpRLf18wH0GnlQqw2klwm+b9euwcNEIz8quywU1
         viw2H7phW2woh7+yLxGRlTy7YUHwuyn/Lm+mCktUIQePbqn/6P4T0jDAHaz+zgzdg6lq
         +U032YM3XxbJcY3WGb3s7XELTTgx6rOcgOcxiw6YUg1EUxOh0loSX3ndVD48PYNr19b+
         pXWibvcvgm9Jz2kJ569LEKfTVepDrKFgOT36I2fdyuJAn2WQOhSGHgmADld+X3fDxNaF
         WjtOdVZvQ0nwrOwrUjhAL1GrJmdj5pAJv+cEh35pPeVmiJHpPyjhlhlhSRJhZPUokKCV
         +Kig==
X-Forwarded-Encrypted: i=1; AJvYcCXm11cfdmTqGH6xpYEA4ELpsoSClfp16+VrMeh6CltPFhkpUNrlMEhh8KV8bMWhuQf+tHBJ9McMRNXMbwI0idUBQDWSV2N7e1+alw==
X-Gm-Message-State: AOJu0YwrVWY1cP5pqrzDksX47hDxqWFVkYFWeKbBncxwCH6KpxliiXfN
	/EcUirh7aCABQz5rmVg3O6YNLb+zN2H2FoDbbXytxxNCnVrGiAyfQU7iGpznPG/EMKlElIolDjr
	UkbNKDpQpBC3vEiWqH25dMwXGocuhGJPxO/Lo
X-Google-Smtp-Source: AGHT+IHM5cqjg54cb9ro/IxJNIkES3D9cFrBeXaYCys/rrJyRDxCkf4sLwPEhC9IJaInYueqnzKY2005j/7L4KiVNz0=
X-Received: by 2002:a05:622a:4402:b0:434:d055:5b00 with SMTP id
 ka2-20020a05622a440200b00434d0555b00mr63892qtb.20.1713904934205; Tue, 23 Apr
 2024 13:42:14 -0700 (PDT)
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
 <vbt2nxddw2dc7hkreq4iybv5zv5xyp32oajybeqsphgfrhzmn7@tskvckljmxpe> <CACb=7PVTvV9nsFu1ZAXu7YTjSOAGZka+c__EJq3J3qgSJGEShw@mail.gmail.com>
In-Reply-To: <CACb=7PVTvV9nsFu1ZAXu7YTjSOAGZka+c__EJq3J3qgSJGEShw@mail.gmail.com>
From: Doug Anderson <dianders@google.com>
Date: Tue, 23 Apr 2024 13:41:59 -0700
Message-ID: <CAD=FV=VYAzqsGEBJai9b9n+HxHiG59L1vF73AEWcTwLS_ryjWw@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] drm/panel: kd101ne3: add new panel driver
To: Hsin-Yi Wang <hsinyi@google.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>, mripard@kernel.org, 
	airlied@gmail.com, daniel@ffwll.ch, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	cong yang <yangcong5@huaqin.corp-partner.google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Apr 23, 2024 at 11:10=E2=80=AFAM Hsin-Yi Wang <hsinyi@google.com> w=
rote:
>
> > > > > +#define _INIT_DCS_CMD(...) { \
> > > > > +     .type =3D INIT_DCS_CMD, \
> > > > > +     .len =3D sizeof((char[]){__VA_ARGS__}), \
> > > > > +     .data =3D (char[]){__VA_ARGS__} }
> > > > > +
> > > > > +#define _INIT_DELAY_CMD(...) { \
> > > > > +     .type =3D DELAY_CMD,\
> > > > > +     .len =3D sizeof((char[]){__VA_ARGS__}), \
> > > > > +     .data =3D (char[]){__VA_ARGS__} }
> > > >
> > > > This is the third panel driver using the same appoach. Can you use
> > > > mipi_dsi_generic_write_seq() instead of the huge table? Or if you p=
refer
> > > > the table, we should extract this framework to a common helper.
> > > > (my preference is shifted towards mipi_dsi_generic_write_seq()).
> > > >
> > > The drawback of mipi_dsi_generic_write_seq() is that it can cause the
> > > kernel size grows a lot since every sequence will be expanded.
> > >
> > > Similar discussion in here:
> > > https://lore.kernel.org/dri-devel/CAD=3DFV=3DWju3WS45=3DEpXMUg7FjYDh3=
-=3Dmvm_jS7TF1tsaAzbb4Uw@mail.gmail.com/
> > >
> > > This patch would increase the module size from 157K to 572K.
> > > scripts/bloat-o-meter shows chg +235.95%.
> > >
> > > So maybe the common helper is better regarding the kernel module size=
?
> >
> > Yes, let's get a framework done in a useful way.
> > I'd say, drop the _INIT_DELAY_CMD. msleep() and usleep_range() should b=
e
> > used instead (and it's up to the developer to select correct delay
> > function).
> >
> > >
> > > > > +
> > > > > +static const struct panel_init_cmd kingdisplay_kd101ne3_init_cmd=
[] =3D {
> > > > > +     _INIT_DELAY_CMD(50),
> > > > > +     _INIT_DCS_CMD(0xE0, 0x00),
> >
> > [skipped the body of the table]
> >
> > > > > +     _INIT_DCS_CMD(0x0E, 0x48),
> > > > > +
> > > > > +     _INIT_DCS_CMD(0xE0, 0x00),
> >
> > > > > +     _INIT_DCS_CMD(0X11),
> >
> > Also, at least this is mipi_dsi_dcs_exit_sleep_mode().
> >
> > > > > +     /* T6: 120ms */
> > > > > +     _INIT_DELAY_CMD(120),
> > > > > +     _INIT_DCS_CMD(0X29),
> >
> > And this is mipi_dsi_dcs_set_display_on().
> >
> > Having a single table enourages people to put known commands into the
> > table, the practice that must be frowned upon and forbidden.
> >
> > We have functions for some of the standard DCS commands. So, maybe
> > instead of adding a single-table based approach we can improve
> > mipi_dsi_generic_write_seq() to reduce the bloat. E.g. by moving the
> > error handling to a common part of enable() / prepare() function.
> >
>
> For this panel, I think it can also refer to how
> panel-kingdisplay-kd097d04.c does. Create the table for init cmd data,
> not what operation to use, and use mipi_dsi_generic_write_seq() when
> looping through the table.

Even more similar discussion:

https://lore.kernel.org/r/CAD=3DFV=3DUGDbNvAMjzWSOvxybGikQcvW9JsRtbxHVg8_97=
YPEQCA@mail.gmail.com

