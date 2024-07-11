Return-Path: <devicetree+bounces-84824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1798892DDAB
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 03:09:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A50271F218BB
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 01:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1BF77462;
	Thu, 11 Jul 2024 01:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="AwBH1hun"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5176FCB
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 01:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720660150; cv=none; b=D8RCbH+Bq0SJ6NaBG6fPCgTf5p2T6GpwQnRdQ/KXL9cXhsIJ/sabn+UpQDPQBovgxnmIan+WShiOjAAGoxfm4VbcJbS0rP4euOdv//PJksbJ19KJx4bvzKdqI6m6VwGH0Q051Rg5cfkl9K3PkOZZ4XIf6s6Y9T0jKx2YlfQWFcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720660150; c=relaxed/simple;
	bh=Cz6OZqlhx70bk8PvuENaCR3AhYPx/ageX/Es7/Sj0aQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bfwGw4ljF4UcyJYRKbTkmrLv9hBDgUqg0vyIE0aq3CoOl4S4kNj1BCz91L5H2yZSJMBTC9Roq/S9FBSN7Sx996KpYj9H/ZIExNB443wCQeoaP3CPEqZG49p/2hrkiLwEApBmBpKfWow53dCc2/4Uk1uI4RppgS0p7wq5EltW/RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=AwBH1hun; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2c9baecc80fso308793a91.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 18:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1720660147; x=1721264947; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mqCvHAYPbXi+bXWOTcgpjsS2oEkHfV0BUOm/T2chX4o=;
        b=AwBH1huna4w0W4cEE/Snl4c1E88HHYh1zYbZR50Ys0SvgGlKdhvNK0Wz/MbXq5Tzq4
         oKJGdOI9+QXpLoQRMGJhAOoneocnfP3d9vaYI6PoQAtlFoQw004A6lXNYOmfpOh57Nwt
         SLRktkGdYfRcVOj5PvxC+nZMpmZIYGimAP6MMwvTtm8rRYF6hfkJnfNrAk2YjNlhAyiz
         Wbs7LgwJEkH/DP0GFIuxhKf/zEGoad4WTC2aEDKr/jgTHd80J5atnRQYcVdSDxzqlMqQ
         YnHBf/SN4Nt9nJsp5dec1i+AXqRJRTCBWslvS5up8YxT8rOP1+ziZ9Z3qOe/27ovbzuc
         Sh7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720660147; x=1721264947;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mqCvHAYPbXi+bXWOTcgpjsS2oEkHfV0BUOm/T2chX4o=;
        b=DYhz9mc06LHMWtXiyoai1AWyUxa0pZB78PNvbvdB4WhlvtM0MNQxbdeLKfSLq7hN2r
         hhqtKNRuP+w1KSNOqeEAnYz8RUfZjuN+peWRL3wuJvvO8AU+DAd/MBLxftONDtlbn73F
         BRWQbwMdQ6N+DlhscSapxJiH1G24lWkzpNuFbvciHXP1xlY2nfMiX0+65cEyRV2Sjoev
         meHLF1MyUifOAJZE+JmpMK10bUFb+qFAZfzwJObG0geHQJ/tunp9yS0QO+Ji1MdVz1Dx
         A2fX3bCKjwvZS04hKxtvxj1mqwAhBTC1TmaXR4y0QcC1g4rMQ4HGSzEVGBV/2Ls6yIn4
         U4bg==
X-Forwarded-Encrypted: i=1; AJvYcCVBP3aO0O3VwRZkqtuRloxqUf0AvCgs4I5y0afryvmdD6iKUmQc+ZeNT/UVlJO42gP9WE/W94Th5ypMTCORw1HpkhXYR7D97lRNNA==
X-Gm-Message-State: AOJu0Yzt2A3u7ZwR9tYLH65rYNUa/mIXBx6uTwf528wcdtv8kyD5NVnj
	2fiRwG95OUyKRMcc3egTQCX06bSCWHmfhAzaID6iZ2/LmoW8RDlnEiKJbOwJhcehWM4WYyamxye
	ugCWvhya0j64A02I3TQLbfLrGyxD9OKIjul9tEA==
X-Google-Smtp-Source: AGHT+IFyrtGUaUGdRNgeSP7+9iE929t4jQSmmz5maOkAya9CBSMFs5XxwCa8KTcvEuvQSO8TuEpKJpL1DfHMvT+wAeE=
X-Received: by 2002:a17:90a:69a5:b0:2c9:6f06:8009 with SMTP id
 98e67ed59e1d1-2ca35bf40acmr5527910a91.1.1720660147368; Wed, 10 Jul 2024
 18:09:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240710084715.1119935-1-yangcong5@huaqin.corp-partner.google.com>
 <20240710084715.1119935-5-yangcong5@huaqin.corp-partner.google.com>
 <D2LQJROQYIY3.2Q88EXS8HUDLQ@kernel.org> <CAD=FV=WAosZPSKdpwR6pjOmiy4hih=jXaMg2guuVgmc+qj-Csw@mail.gmail.com>
 <D2M42ODWQPAU.I0BMEOLKUP29@kernel.org>
In-Reply-To: <D2M42ODWQPAU.I0BMEOLKUP29@kernel.org>
From: cong yang <yangcong5@huaqin.corp-partner.google.com>
Date: Thu, 11 Jul 2024 09:08:56 +0800
Message-ID: <CAHwB_NJ+YEMoL18Sr9HFmTVH_ErDztyF7vxxPFAE0Y2ta3dO0A@mail.gmail.com>
Subject: Re: [PATCH v1 4/4] drm/panel: ili9806e: Break some CMDS into helper functions
To: Michael Walle <mwalle@kernel.org>
Cc: Doug Anderson <dianders@chromium.org>, quic_jesszhan@quicinc.com, 
	neil.armstrong@linaro.org, linus.walleij@linaro.org, airlied@gmail.com, 
	dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Michael Walle <mwalle@kernel.org> =E4=BA=8E2024=E5=B9=B47=E6=9C=8811=E6=97=
=A5=E5=91=A8=E5=9B=9B 03:38=E5=86=99=E9=81=93=EF=BC=9A
>
> On Wed Jul 10, 2024 at 9:12 PM CEST, Doug Anderson wrote:
> > Hi,
> >
> > On Wed, Jul 10, 2024 at 2:02=E2=80=AFAM Michael Walle <mwalle@kernel.or=
g> wrote:
> > >
> > > On Wed Jul 10, 2024 at 10:47 AM CEST, Cong Yang wrote:
> > > > Break select page cmds into helper function.
> > >
> > > Why though? I don't find that anything easier to read. In fact, I
> > > deliberately chose not to factor that out into a function. It's just
> > > a sequence of magic commands, taken straight from the datasheet. So,
> > > I'd like to keep it that way.
> >
> > The consensus of previous discussion on the lists was that folks
> > agreed that we should, where possible, make it more obvious what these
> > magic sequences of commands were doing. IMO separating out the page
> > switch command helps. Certainly I'm always happy to hear other
> > opinions, though.
>
> Fair enough, but in that case, one should take the datasheet (which
> you can find online) and replace all the magic numbers with the
> correct command names from it. E.g. 0xff is the ENEXTC register. To
> be clear, I'm not just talking about the "switch page command".
>
> As patch stands, I don't see much value, TBH. On the contrary, you
> make it harder to compare it with the Ortustech panel datasheet.
>
> just my 2c,
> -michael

If all drivers replace all the magic numbers with the correct command names=
,
it will be a huge amount of work (assuming that the datasheet can be found)=
.
 I am afraid I don't have enough time to complete it.  Thanks.

>
> > > -michael
> > >
> > > > Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> > > > ---
> > > >  drivers/gpu/drm/panel/panel-ilitek-ili9806e.c | 14 ++++++++++----
> > > >  1 file changed, 10 insertions(+), 4 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9806e.c b/driver=
s/gpu/drm/panel/panel-ilitek-ili9806e.c
> > > > index e4a44cd26c4d..68fb9a1a4d80 100644
> > > > --- a/drivers/gpu/drm/panel/panel-ilitek-ili9806e.c
> > > > +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9806e.c
> > > > @@ -35,6 +35,12 @@ struct ili9806e_panel {
> > > >       enum drm_panel_orientation orientation;
> > > >  };
> > > >
> > > > +#define ILI9806E_DCS_SWITCH_PAGE     0xff
> > > > +
> > > > +#define ili9806e_switch_page(ctx, page) \
> > > > +     mipi_dsi_dcs_write_seq_multi(ctx, ILI9806E_DCS_SWITCH_PAGE, \
> > > > +                                  0xff, 0x98, 0x06, 0x04, (page))
> > > > +
> > > >  static const char * const regulator_names[] =3D {
> > > >       "vdd",
> > > >       "vccio",
> > > > @@ -227,7 +233,7 @@ static void ili9806e_dsi_remove(struct mipi_dsi=
_device *dsi)
> > > >  static void com35h3p70ulc_init(struct mipi_dsi_multi_context *ctx)
> > > >  {
> > > >       /* Switch to page 1 */
> > > > -     mipi_dsi_dcs_write_seq_multi(ctx, 0xff, 0xff, 0x98, 0x06, 0x0=
4, 0x01);
> > > > +     ili9806e_switch_page(ctx, 0x01);
> >
> > I think with your change you should remove the "Switch to page X"
> > comments since they're now obvious. Other than that, I'm happy with:
> >
> > Reviewed-by: Douglas Anderson <dianders@chromium.org>
>

