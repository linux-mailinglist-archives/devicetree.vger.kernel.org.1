Return-Path: <devicetree+bounces-7518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 366CD7C4966
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 07:47:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5725B1C20C78
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 05:47:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D086DDD4;
	Wed, 11 Oct 2023 05:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="bxWUnyk8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A606D30E
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 05:47:46 +0000 (UTC)
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6020C94
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 22:47:45 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-6910ea9cddbso5408427b3a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 22:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1697003265; x=1697608065; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S1z5BV/1nAQApTMZ3kIv0n5k/QlyXTmBO9Apt2IJE9I=;
        b=bxWUnyk8zt8NarNiz+9sPvcMfTOLEnMcMnLRIzvCpE6+J9z8gt46qmbHLFIhfEdjjD
         gROxT3A3cjcAFktGiqJInZAI+xaze4cc4ik7qGhIHzD0Ih95J+6/V+ybHTv4izhs2zbb
         nJ6wWA0ZVzYloiqapGKwu9v4xmkWGr4TEelCeP1AkpG8Owosdr7O4wnKFR4OR5UOxg9k
         ggoiW+9SZFymRwGUbpRG5XLaaX1AguTNCLl52jD1tul8z66BD3CsXfTYSXRbIaXnAJVY
         uNF3lfjoy7lHne+MRGVJhGwO+UoHthbPDz1bd4E5l52nruFg7Y0ciMBAC+BXYa8e3bma
         ey5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697003265; x=1697608065;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S1z5BV/1nAQApTMZ3kIv0n5k/QlyXTmBO9Apt2IJE9I=;
        b=MwkVJDAaEL0IwGstdPL4jNG2J7wdlVa9ib+HjDeti9s0MWMbBpUD3BhdbEnh0yKAEV
         bJXw/b0+Ko4D53AfOdVjaE+x+xXiDbsc1ZBeaQMoMJ+DXOr4fOczz9qUweZB42zIVRLV
         0p9rp78upIIKxjPgoc2vvfULYvj35ExBTiJTbGKA18UgR3ZXXN5mv3DtK1AF3pqbzdjX
         AvBPoSt9+EkVaVw1KPImKpJkxoJlKR5a4ycssLHefX5POCJtopOgH2o46xQCSLID+lHu
         Xv8eMYz5+LubnuqciyqrQcMjVtQu3gA5E+zZpSCXDuRnu7ww7XVWL/3KCBbuT6dXR4GZ
         Nj8w==
X-Gm-Message-State: AOJu0YxLiDGrGGWkKp4TvhEJf6zho/cuIrPYQODEQqoH49eCkWA/COsF
	ostzmd+Fk5V868Ndw88VzxlAwVQfz8RyKOloSQxHrA==
X-Google-Smtp-Source: AGHT+IHtKbcxKIGkPvwbnn563Fvst0cY7hetX0wRRlTzsC9gEczzpM8H2HoRC37CEc9JQvVElxuWIK/0GajJr8wJZYI=
X-Received: by 2002:a05:6a20:6a0c:b0:13a:59b1:c884 with SMTP id
 p12-20020a056a206a0c00b0013a59b1c884mr22303408pzk.40.1697003264899; Tue, 10
 Oct 2023 22:47:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231007060639.725350-1-yangcong5@huaqin.corp-partner.google.com>
 <20231007060639.725350-3-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=W3ef3vWrWRDPKgeUjcapEticj4=EWdC-bOb=ph0DShsA@mail.gmail.com>
 <CAHwB_N+=h8-5H6SM8REAge19SgLvrZD=drAP83QnSuuqB5gN8A@mail.gmail.com> <CAD=FV=XtqPJ77dx8uRb0=tMvC3CvgH5X+7mUJeXgcG228kZfUg@mail.gmail.com>
In-Reply-To: <CAD=FV=XtqPJ77dx8uRb0=tMvC3CvgH5X+7mUJeXgcG228kZfUg@mail.gmail.com>
From: cong yang <yangcong5@huaqin.corp-partner.google.com>
Date: Wed, 11 Oct 2023 13:47:33 +0800
Message-ID: <CAHwB_NLJKiQPy=Y_kRwBNqhvaR1y-O9QYvaC=Y8PbymTygdJsg@mail.gmail.com>
Subject: Re: [v1 2/2] drm/panel: ili9882t: Avoid blurred screen from fast sleep
To: Doug Anderson <dianders@google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, linus.walleij@linaro.org, swboyd@chromium.org, 
	airlied@gmail.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Wed, Oct 11, 2023 at 3:11=E2=80=AFAM Doug Anderson <dianders@google.com>=
 wrote:
>
> Hi,
>
> On Tue, Oct 10, 2023 at 4:36=E2=80=AFAM cong yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
> >
> > Hi,
> >
> > On Tue, Oct 10, 2023 at 4:44=E2=80=AFAM Doug Anderson <dianders@google.=
com> wrote:
> > >
> > > Hi,
> > >
> > > On Fri, Oct 6, 2023 at 11:07=E2=80=AFPM Cong Yang
> > > <yangcong5@huaqin.corp-partner.google.com> wrote:
> > > >
> > > > At present, we have found that there may be a problem of blurred
> > > > screen during fast sleep/resume. The direct cause of the blurred
> > > > screen is that the IC does not receive 0x28/0x10. Because of the
> > > > particularity of the IC, before the panel enters sleep hid must
> > > > stop scanning, i2c_hid_core_suspend before ili9882t_disable.
> > > > This doesn't look very spec-compliant.
> > >
> > > Presumably you could be more spec compliant if we used
> > > "panel_follower" in this case? Would that be a better solution?
> >
> > In the "panel_follower" solution, the phenomenon is the same.
> > The current order is
> > ili9882t_disable=3D>i2c_hid_core_suspend=3D>elan_i2c_hid_power_down=3D>=
ili9882t_unprepare,
> > ili9882t need touchpanel stop scanning,i2c_hid_core_suspend before
> > ili9882t_disable.
>
> Ugh, that's unfortunate. Though is there a reason why you couldn't
> just move the `ili9882t_enter_sleep_mode()` to `ili9882t_unprepare()`?
> That seems like it should be OK and even perhaps makes it more
> symmetric with thue enable?

Thank you for your suggestion. If the timing is met and there is no problem=
,
I will implement it in V3.

>
>
> > > > @@ -507,7 +526,7 @@ static int ili9882t_prepare(struct drm_panel *p=
anel)
> > > >         gpiod_set_value(ili->enable_gpio, 1);
> > > >         usleep_range(1000, 2000);
> > > >         gpiod_set_value(ili->enable_gpio, 0);
> > > > -       usleep_range(1000, 2000);
> > > > +       usleep_range(40000, 50000);
> > >
> > > nit: use 40000, 41000 instead of 40000, 50000. Linux almost always
> > > uses the longer delay, so that'll save ~9 ms. The only reason for the
> > > range is to optimize kernel wakeups which is really not a concern
> > > here.
> >
> > We need 50ms delay to meet the requirement.
>
> I'll respond to your v2, but if you need 50 ms then your current delay is=
 wrong.
>
>
> -Doug

