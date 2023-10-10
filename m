Return-Path: <devicetree+bounces-7191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7207C7BF9DC
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:36:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BB35281AD9
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 11:36:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3429318C28;
	Tue, 10 Oct 2023 11:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="nSvJlbGl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A34D6171DE
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 11:36:19 +0000 (UTC)
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 085B9A4
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 04:36:17 -0700 (PDT)
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-57e3c2adbf0so3029377eaf.2
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 04:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1696937776; x=1697542576; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vqt1li5npzbMPmUrjQpxaenaIH2mnyz+ZsNA//4Hc1E=;
        b=nSvJlbGlkcsOpMWFjm2g2iTg09nw3rOJgC8Qyl/oLDjWn/AY+KCa5VJ3PYh/i/cVcc
         etWq186Cc84RwqQlh/KpHFwICRftEPKz0fUmnwyL/D/Lw2tn+ZYl1HEImRsZtuZd2jXv
         zpHnYT80UksH8FxU9wES0GhUzDmPfFsRnsnjJof043c2+n/RvR4GE0bC3IygI1x3wpP+
         lxuVa4qkeylqCwLx5twsoEMMMQDkFOxKLx5PWdi5vsddrqAqH3NCVLOzyjgr0JSFoQnN
         nbyAUyYLR/ZOgZxrIHvlmyQM6j5iA1wCmfbWpcxPt1d1oIXxgtjVd49S6Odn2utRndyL
         lKAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696937776; x=1697542576;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vqt1li5npzbMPmUrjQpxaenaIH2mnyz+ZsNA//4Hc1E=;
        b=bl3cJi92ARx6AA2L+/8Hz1sg5AzTo52gWi+tKmnVL4Odi5RXNAY2ZMzFq2NPccSpaE
         80O+PEROjRFyI5iErTMMF6a2lTfh7obVBzUjTEQytIxb+DmO0moimlTzw3Yis56aIuUD
         hxw7PCWM70GskHNX3X097+dMJmTwK/sghOKwOCvSJnSaiu+hsSZfNmyFn46iSExagb98
         QK0zPJmo4plVFB+IH5p5eB3/ZbHoFjh/M6dLumwGyZzTOhyYVpRJnLGKOpw/A5jHe1jW
         fpfzp2A3cIwaeIajMZUT9+ktBZ+jHAOqp6o3kFAlr/WWhKeOOZ2yRKNO4PtxdmaQ6/5Y
         qZyA==
X-Gm-Message-State: AOJu0Yw5/NXPx2ZPrBgHb6ozcNVIFNkVNa8sK7NZaQVsc0Aak5EIkesI
	sjRMxIDBP4Sl377L7TuCQ6QN9YI0ERpIOrOMEkqJzMhRQewX1bwAmyU=
X-Google-Smtp-Source: AGHT+IF6PQHUp+2decfVNVGCfI2Ki3R4/iuCCfsMaLJgDhaNhJCQObl0/R9wqaoh8xJssd8PKVUcrtCY59CI6aFxsAg=
X-Received: by 2002:a05:6358:88f:b0:143:61d:ffd3 with SMTP id
 m15-20020a056358088f00b00143061dffd3mr20923846rwj.4.1696937776108; Tue, 10
 Oct 2023 04:36:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231007060639.725350-1-yangcong5@huaqin.corp-partner.google.com>
 <20231007060639.725350-3-yangcong5@huaqin.corp-partner.google.com> <CAD=FV=W3ef3vWrWRDPKgeUjcapEticj4=EWdC-bOb=ph0DShsA@mail.gmail.com>
In-Reply-To: <CAD=FV=W3ef3vWrWRDPKgeUjcapEticj4=EWdC-bOb=ph0DShsA@mail.gmail.com>
From: cong yang <yangcong5@huaqin.corp-partner.google.com>
Date: Tue, 10 Oct 2023 19:36:04 +0800
Message-ID: <CAHwB_N+=h8-5H6SM8REAge19SgLvrZD=drAP83QnSuuqB5gN8A@mail.gmail.com>
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
	SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Tue, Oct 10, 2023 at 4:44=E2=80=AFAM Doug Anderson <dianders@google.com>=
 wrote:
>
> Hi,
>
> On Fri, Oct 6, 2023 at 11:07=E2=80=AFPM Cong Yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
> >
> > At present, we have found that there may be a problem of blurred
> > screen during fast sleep/resume. The direct cause of the blurred
> > screen is that the IC does not receive 0x28/0x10. Because of the
> > particularity of the IC, before the panel enters sleep hid must
> > stop scanning, i2c_hid_core_suspend before ili9882t_disable.
> > This doesn't look very spec-compliant.
>
> Presumably you could be more spec compliant if we used
> "panel_follower" in this case? Would that be a better solution?

In the "panel_follower" solution, the phenomenon is the same.
The current order is
ili9882t_disable=3D>i2c_hid_core_suspend=3D>elan_i2c_hid_power_down=3D>ili9=
882t_unprepare,
ili9882t need touchpanel stop scanning,i2c_hid_core_suspend before
ili9882t_disable.
>
>
> > So in order to solve this
> > problem, the IC can handle it through the exception mechanism when
> > it cannot receive 0X28/0X10 command. Handling exceptions requires a res=
et
> > 50ms delay. Refer to vendor detailed analysis [1].
> >
> > Ilitek vendor also suggested switching the page before entering sleep t=
o
> > avoid panel IC not receiving 0x28/0x10 command.
> >
> > Note: 0x28 is display off, 0x10 is sleep in.
> >
> > [1]: https://github.com/ILITEK-LoganLin/Document/tree/main/ILITEK_Power=
_Sequence
> >
> > Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> > ---
> >  drivers/gpu/drm/panel/panel-ilitek-ili9882t.c | 21 ++++++++++++++++++-
> >  1 file changed, 20 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c b/drivers/gp=
u/drm/panel/panel-ilitek-ili9882t.c
> > index bbfcffe65623..0a1dd987b204 100644
> > --- a/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c
> > +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c
> > @@ -423,6 +423,23 @@ static inline struct ili9882t *to_ili9882t(struct =
drm_panel *panel)
> >         return container_of(panel, struct ili9882t, base);
> >  }
> >
> > +static int ili9882t_switch_page(struct mipi_dsi_device *dsi, u8 page)
> > +{
> > +       u8 switch_cmd[] =3D {0x98, 0x82, 0x00};
>
> Can't you just replace the last 0x00 above with "page" and get rid of
> the manual assignment below?
>
>
> > +       int ret;
> > +
> > +       switch_cmd[2] =3D page;
> > +
> > +       ret =3D mipi_dsi_dcs_write(dsi, ILI9882T_DCS_SWITCH_PAGE, switc=
h_cmd, 3);
>
> Instead of hardcoding 3, should use ARRAY_SIZE().
>
>
> > +       if (ret) {
> > +               dev_err(&dsi->dev,
> > +                       "error switching panel controller page (%d)\n",=
 ret);
> > +               return ret;
> > +       }
> > +
> > +       return 0;
> > +}
>
> optional: It feels like it would be nice to somehow use the
> "_INIT_SWITCH_PAGE_CMD" macro I suggested in patch #1 instead of
> having to hardcode 0x98, 0x82 again. In patch #1 I already suggested
> breaking out the function to send a sequence of commands. If you had
> that function take a pointer instead of hardcoding it to look at
> ->init_cmds then you could probably use the same function that you do
> at init time?
>
>
> >  static int ili9882t_enter_sleep_mode(struct ili9882t *ili)
> >  {
> >         struct mipi_dsi_device *dsi =3D ili->dsi;
> > @@ -444,8 +461,10 @@ static int ili9882t_enter_sleep_mode(struct ili988=
2t *ili)
> >  static int ili9882t_disable(struct drm_panel *panel)
> >  {
> >         struct ili9882t *ili =3D to_ili9882t(panel);
> > +       struct mipi_dsi_device *dsi =3D ili->dsi;
> >         int ret;
> >
> > +       ili9882t_switch_page(dsi, 0x00);
> >         ret =3D ili9882t_enter_sleep_mode(ili);
> >         if (ret < 0) {
> >                 dev_err(panel->dev, "failed to set panel off: %d\n", re=
t);
> > @@ -507,7 +526,7 @@ static int ili9882t_prepare(struct drm_panel *panel=
)
> >         gpiod_set_value(ili->enable_gpio, 1);
> >         usleep_range(1000, 2000);
> >         gpiod_set_value(ili->enable_gpio, 0);
> > -       usleep_range(1000, 2000);
> > +       usleep_range(40000, 50000);
>
> nit: use 40000, 41000 instead of 40000, 50000. Linux almost always
> uses the longer delay, so that'll save ~9 ms. The only reason for the
> range is to optimize kernel wakeups which is really not a concern
> here.

We need 50ms delay to meet the requirement.

