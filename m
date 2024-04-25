Return-Path: <devicetree+bounces-62536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE87B8B17F3
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 02:22:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB394B23E98
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 00:22:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B518E80C;
	Thu, 25 Apr 2024 00:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="WUiGkYGn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2C0A35
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 00:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714004529; cv=none; b=qzDFTdh9OOxaMQwL8VQWGfsFdE3FysbOqMzwx9FStZ2BKMcxKcv9b5+yhuPXZy17RWZ8UfOYlTPdPyuS5xTo5rIUC8UIWEMhZUVpZpHfIunpEqNVkeDGQqBhzwYYH+U03LTXRB00Xb1rBAC6ZLlf/rX+PEidUzprOMnYIVTI2eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714004529; c=relaxed/simple;
	bh=8eJmrY/4exFZ0Pdl/HtN/auITI5ah8JknAcuLdalb2o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TkrB6THDN+w0VU430N49ajKLAD+VKOSat0/oSv36OUGfakGOlwMWtBMqq9tZC3QEgXZNO5eCW1I0/JDZPVb7ceR8vu6eSaDWy97jFCqqOUKxkuOwNXYK7nVlkkHE2NDzdclFZn6uv2VB4wYwsgNMImfq973d9j0JKxJo+AmDSA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=WUiGkYGn; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-439b1c72676so126541cf.1
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 17:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1714004527; x=1714609327; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qX36zL+8SnXnPofbhPQH1rVaLb6ttYTTZybT/hWsEJs=;
        b=WUiGkYGn1Ttkf24eHCuTqM+iY9TO76pIzHL9E0j42HVy5+DB35sFJKfRLfBOPzfFdn
         U+JwOO3PHlqflibJxKj5NcvGH91A/6OqqWPeFfo54rSSbfhWfTyUN9Uq+3U3gpyqS8rG
         2Mm9pLOtZWDg5TIbNd3NXEjFLQLZzNPy9aWO82miQakYrCcLp9XvLHvQE+kjD2sIUXHe
         tM4YxAJlM6Ta1E597FWsjX7uUYOZTEnMjKkn18CMufQODPgoxEkc6ZqFaOPJmPI8M+ev
         uKbLeXWPM+jeoE9HeGhkMbxS6/zCSi/HEmgS9EzwZZ7P2MdahOsosN738VztsgFgsN0O
         tPZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714004527; x=1714609327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qX36zL+8SnXnPofbhPQH1rVaLb6ttYTTZybT/hWsEJs=;
        b=jAePhtQkF4nymskRtFvDNk7A+imWkUy48qiN+C9Jr8OBIquRQ1QSLf19yh9ENmq990
         rSys7rQDNpdRaXgx1ydR6rCqyzyfOSHgtT0Vi96lVkPSnq5LNUIXHo9t4c/+caJncwIc
         hN/7xcklliDj8FTrqWXlyiYUg0rEnbBribX+3aYILDdKeQPRsETsvxb1KgdTkmV/eJol
         Xn6le9r8TVhVV6fFtNIT/oNpvB7SFyPfCMoOFi5oWXboASWlqTO/R80a8raAtujiYRlQ
         2THv/SffsM9t7bgOrV5y5PWFggbDBqPbWDU8GOka82H5wVGwrBHP9xr2z/49wYxlJuFR
         5q4Q==
X-Forwarded-Encrypted: i=1; AJvYcCWbtrCfmUqV7sfepoJVssdkbpFRQJYPiXp44bGlWKN8OCCUzBOFcJdlqsGySIUpX//PNenc3dFySH/y+0hMRyohkAVbY++rdXt18Q==
X-Gm-Message-State: AOJu0YxQ4MJeV8j6pF6IaGfNx2rZzzO9zOv3LBLJ2VZWaf6QtSvNn5X4
	tLCWr1LUMdoF/IGCVVA/dmP8RssB/vkdVEjGy6Brhw2jasXUqV+X1b7c46v2aZyvoilKhhHPfQR
	W1tkoIisWgePaWlT2H/kGmsPkSW4As3M1CNbr
X-Google-Smtp-Source: AGHT+IHgB4NlLUHPs3FdgauOg8a5+o89vMOPoBWLv+vZwU9HJB9ei+66DabBHm0TnslA9GBNspCREnBo0enCduLAjMM=
X-Received: by 2002:ac8:53c1:0:b0:439:d5e3:1f31 with SMTP id
 c1-20020ac853c1000000b00439d5e31f31mr132912qtq.4.1714004526570; Wed, 24 Apr
 2024 17:22:06 -0700 (PDT)
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
 <CAD=FV=VYAzqsGEBJai9b9n+HxHiG59L1vF73AEWcTwLS_ryjWw@mail.gmail.com>
 <an2k3vgynq4as2sd5dy6ccmdiqedmo7qjsab5qyfhesd333i2a@235sqph3bze5>
 <CAD=FV=VQ8rbwKk4WpHRER9p4cZp7UrrHRpgnErqbQxyxp4sg5w@mail.gmail.com>
 <CAA8EJprv3qBd1hfdWHrfhY=S0w2O70dZnYb6TVsS6AGRPxsYdw@mail.gmail.com>
 <CACb=7PVEpCFWf_aysRkeR0yWAXR5sTaXhNbi3TV3ffKj866+EQ@mail.gmail.com>
 <CAA8EJprLvEt_pt4XzACQG7pU8KYagKbQ71xwtRF9KrLygTT3ow@mail.gmail.com>
 <CAD=FV=V+jBvkKj1vvAsXuC5dSn0u_SQBQZHTrDZKoSG2V4fp3g@mail.gmail.com> <CAA8EJprU1KZHKAVUJiYaDRY6Wxihzw=ZDgdqQ9y7W3zdnRMfFg@mail.gmail.com>
In-Reply-To: <CAA8EJprU1KZHKAVUJiYaDRY6Wxihzw=ZDgdqQ9y7W3zdnRMfFg@mail.gmail.com>
From: Doug Anderson <dianders@google.com>
Date: Wed, 24 Apr 2024 17:21:50 -0700
Message-ID: <CAD=FV=WDTM6m6fHbs=+1Thnnsi2jCXBcAi89=8HeRYp73EUMQA@mail.gmail.com>
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

On Wed, Apr 24, 2024 at 4:37=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Thu, 25 Apr 2024 at 02:25, Doug Anderson <dianders@google.com> wrote:
> >
> > Hi,
> >
> > On Wed, Apr 24, 2024 at 3:51=E2=80=AFPM Dmitry Baryshkov
> > <dmitry.baryshkov@linaro.org> wrote:
> > >
> > > On Thu, 25 Apr 2024 at 01:15, Hsin-Yi Wang <hsinyi@google.com> wrote:
> > > >
> > > > On Wed, Apr 24, 2024 at 2:49=E2=80=AFPM Dmitry Baryshkov
> > > > <dmitry.baryshkov@linaro.org> wrote:
> > > > >
> > > > > On Thu, 25 Apr 2024 at 00:04, Doug Anderson <dianders@google.com>=
 wrote:
> > > > > >
> > > > > > Hi,
> > > > > >
> > > > > > On Tue, Apr 23, 2024 at 2:20=E2=80=AFPM Dmitry Baryshkov
> > > > > > <dmitry.baryshkov@linaro.org> wrote:
> > > > > > >
> > > > > > > On Tue, Apr 23, 2024 at 01:41:59PM -0700, Doug Anderson wrote=
:
> > > > > > > > Hi,
> > > > > > > >
> > > > > > > > On Tue, Apr 23, 2024 at 11:10=E2=80=AFAM Hsin-Yi Wang <hsin=
yi@google.com> wrote:
> > > > > > > > >
> > > > > > > > > > > > > +#define _INIT_DCS_CMD(...) { \
> > > > > > > > > > > > > +     .type =3D INIT_DCS_CMD, \
> > > > > > > > > > > > > +     .len =3D sizeof((char[]){__VA_ARGS__}), \
> > > > > > > > > > > > > +     .data =3D (char[]){__VA_ARGS__} }
> > > > > > > > > > > > > +
> > > > > > > > > > > > > +#define _INIT_DELAY_CMD(...) { \
> > > > > > > > > > > > > +     .type =3D DELAY_CMD,\
> > > > > > > > > > > > > +     .len =3D sizeof((char[]){__VA_ARGS__}), \
> > > > > > > > > > > > > +     .data =3D (char[]){__VA_ARGS__} }
> > > > > > > > > > > >
> > > > > > > > > > > > This is the third panel driver using the same appoa=
ch. Can you use
> > > > > > > > > > > > mipi_dsi_generic_write_seq() instead of the huge ta=
ble? Or if you prefer
> > > > > > > > > > > > the table, we should extract this framework to a co=
mmon helper.
> > > > > > > > > > > > (my preference is shifted towards mipi_dsi_generic_=
write_seq()).
> > > > > > > > > > > >
> > > > > > > > > > > The drawback of mipi_dsi_generic_write_seq() is that =
it can cause the
> > > > > > > > > > > kernel size grows a lot since every sequence will be =
expanded.
> > > > > > > > > > >
> > > > > > > > > > > Similar discussion in here:
> > > > > > > > > > > https://lore.kernel.org/dri-devel/CAD=3DFV=3DWju3WS45=
=3DEpXMUg7FjYDh3-=3Dmvm_jS7TF1tsaAzbb4Uw@mail.gmail.com/
> > > > > > > > > > >
> > > > > > > > > > > This patch would increase the module size from 157K t=
o 572K.
> > > > > > > > > > > scripts/bloat-o-meter shows chg +235.95%.
> > > > > > > > > > >
> > > > > > > > > > > So maybe the common helper is better regarding the ke=
rnel module size?
> > > > > > > > > >
> > > > > > > > > > Yes, let's get a framework done in a useful way.
> > > > > > > > > > I'd say, drop the _INIT_DELAY_CMD. msleep() and usleep_=
range() should be
> > > > > > > > > > used instead (and it's up to the developer to select co=
rrect delay
> > > > > > > > > > function).
> > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > > > > +
> > > > > > > > > > > > > +static const struct panel_init_cmd kingdisplay_k=
d101ne3_init_cmd[] =3D {
> > > > > > > > > > > > > +     _INIT_DELAY_CMD(50),
> > > > > > > > > > > > > +     _INIT_DCS_CMD(0xE0, 0x00),
> > > > > > > > > >
> > > > > > > > > > [skipped the body of the table]
> > > > > > > > > >
> > > > > > > > > > > > > +     _INIT_DCS_CMD(0x0E, 0x48),
> > > > > > > > > > > > > +
> > > > > > > > > > > > > +     _INIT_DCS_CMD(0xE0, 0x00),
> > > > > > > > > >
> > > > > > > > > > > > > +     _INIT_DCS_CMD(0X11),
> > > > > > > > > >
> > > > > > > > > > Also, at least this is mipi_dsi_dcs_exit_sleep_mode().
> > > > > > > > > >
> > > > > > > > > > > > > +     /* T6: 120ms */
> > > > > > > > > > > > > +     _INIT_DELAY_CMD(120),
> > > > > > > > > > > > > +     _INIT_DCS_CMD(0X29),
> > > > > > > > > >
> > > > > > > > > > And this is mipi_dsi_dcs_set_display_on().
> > > > > > > > > >
> > > > > > > > > > Having a single table enourages people to put known com=
mands into the
> > > > > > > > > > table, the practice that must be frowned upon and forbi=
dden.
> > > > > > > > > >
> > > > > > > > > > We have functions for some of the standard DCS commands=
. So, maybe
> > > > > > > > > > instead of adding a single-table based approach we can =
improve
> > > > > > > > > > mipi_dsi_generic_write_seq() to reduce the bloat. E.g. =
by moving the
> > > > > > > > > > error handling to a common part of enable() / prepare()=
 function.
> > > > > > > > > >
> > > > > > > > >
> > > > > > > > > For this panel, I think it can also refer to how
> > > > > > > > > panel-kingdisplay-kd097d04.c does. Create the table for i=
nit cmd data,
> > > > > > > > > not what operation to use, and use mipi_dsi_generic_write=
_seq() when
> > > > > > > > > looping through the table.
> > > > > > > >
> > > > > > > > Even more similar discussion:
> > > > > > > >
> > > > > > > > https://lore.kernel.org/r/CAD=3DFV=3DUGDbNvAMjzWSOvxybGikQc=
vW9JsRtbxHVg8_97YPEQCA@mail.gmail.com
> > > > > > >
> > > > > > > It seems I skipped that thread.
> > > > > > >
> > > > > > > I'd still suggest a code-based solution compared to table-bas=
ed one, for
> > > > > > > the reasons I've outlined before. Having a tables puts a pres=
sure on the
> > > > > > > developer to put commands there for which we already have a
> > > > > > > command-specific function.
> > > > > >
> > > > > > The problem is that with these panels that need big init sequen=
ces the
> > > > > > code based solution is _a lot_ bigger. If it were a few bytes o=
r a
> > > > > > 1-2KB then fine, but when Hsin-Yi measured Linus W's attempt to=
 move
> > > > > > from a table to code it was 100K difference in code [1]. I woul=
d also
> > > > > > say that having these long init sequences done as separate comm=
ands
> > > > > > encourages people to skip checking the return values of each of=
 the
> > > > > > transfer functions and I don't love that idea.
> > > > > >
> > > > > > It would be ideal if these panels didn't need these long init
> > > > > > sequences, but I don't have any inside knowledge here saying th=
at they
> > > > > > could be removed. So assume we can't get rid of the init sequen=
ces it
> > > > > > feels like we have to find some way to make the tables work for=
 at
> > > > > > least the large chunks of init code and encourage people to mak=
e the
> > > > > > tables readable...
> > > > >
> > > > >
> > > > > I did a quick check on the boe-tv101wum-nl6 driver by converting =
the
> > > > > writes to use the following macro:
> > > > >
> > > > > #define mipi_dsi_dcs_write_cmd_seq(dsi, cmd, seq...)
> > > > >              \
> > > > >         do {                                                     =
              \
> > > > >                 static const u8 d[] =3D { cmd, seq };            =
            \
> > > > >                 ret =3D mipi_dsi_dcs_write_buffer(dsi, d, ARRAY_S=
IZE(d));    \
> > > > >                 if (ret < 0)                                     =
              \
> > > > >                         goto err;                                =
              \
> > > > >         } while (0)
> > > > >
> > > > > And then at the end of the init funciton having
> > > > >
> > > > > err:
> > > > >         dev_err(panel->dev,
> > > > >                 "failed to write command %d\n", ret);
> > > > >         return ret;
> > > > > }
> > > > >
> > > >
> > > > I'm not sure about the coding style rule here, would it be consider=
ed
> > > > unclear that caller of mipi_dsi_dcs_write_cmd_seq() needs to have e=
rr
> > > > block, but the block may not be directly used in that caller and is
> > > > only jumped from the macro?
> > >
> > > I'm also not sure here. It was a quick and dirty test.
> > > We might as well do something like
> > >
> > > ret =3D mipi_dsi_dcs_write_cmd_seq(dsi, ...);
> > > if (ret)
> > >     goto err;
> > >
> > > all over the place.
> >
> > Oh. This is actually very simple to fix and requires no code changes
> > to clients. :-P We just need to hoist the printing out of the macro
> > and into "drm_mipi_dsi.c". Let me double-confirm and then I'll post a
> > patch.
>
> Sounds good. I have converted boe-tv101wum-nl6, ilitek-ili9882t and
> innolux-p079zca drivers. Once you post your patch I can post those
> too.

I sent out a patch for it, though I didn't have time to do testing on
real hardware:

https://lore.kernel.org/r/20240424172017.1.Id15fae80582bc74a0d4f1338987fa37=
5738f45b9@changeid

I can poke more at it tomorrow...

-Doug

