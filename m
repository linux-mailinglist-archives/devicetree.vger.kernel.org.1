Return-Path: <devicetree+bounces-8327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E277C7B13
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 03:12:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A3B3282C6E
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 01:12:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE76C807;
	Fri, 13 Oct 2023 01:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="EPm6VSTt"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33EA371
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 01:12:01 +0000 (UTC)
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C52ECF
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 18:12:00 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-27cfb84432aso1168161a91.2
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 18:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1697159519; x=1697764319; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HRkrBo0/H4M28ioavqjEK2u4W4xG7+8r5X5sl8HE0gQ=;
        b=EPm6VSTtt+E77Krvo6uu2bBbulsSA82I1VCjlPK/bGAG1ofaKZ80FeCJfLyZpjyu5k
         MWVASNTo2zMZ4/pzV2lYky0QtsLUoSavplF+1jBB6lohaCpVbdCBlHydIBbykQerrgOM
         R1LveHLvaW7N1lSmdFOC9McG2cPfKRomMqb00YfR/vu9yxOIY5QFy4VWhX59cA8h1OLb
         rdJW4HQexdtq7AEBTyUW1FIfqsDO3tg470XTyKsrFz/Z2btB0EIAQuX1QQM84jEESNGf
         A555C9tYE4578nJhzjMT2YTT+PrxoDLJQekUhlE2OChVVQmRvWB4Ka3BROPkETsEF6fy
         RTzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697159519; x=1697764319;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HRkrBo0/H4M28ioavqjEK2u4W4xG7+8r5X5sl8HE0gQ=;
        b=rmZPjGpo6zpq+18ps76MTYPfVtQW6TQwJl4rJpIxuUYotx6xn1FfSUyOI3ZE5xUjwi
         JAegeKcfDDo5iZCn38Dfoq9LYqspkXFNW4J26sXZwEI2fyKx3xGRYorO6WsdjkpCRICW
         Tp8fXoYrHiQ2iqGiNeQGtk4qUWA/7SGFP/QluD6qvfx08I0bcNTbd5HNoWYuEgXB/vpu
         sInVePhXZbz2ubq8iSIjbBop5ftC2qE2Xqzx9e2nyCHCpFgqehwXf1vj8SWMzWZFxSxB
         4LWGJVs+07o+Gsm48U9cHLgH2jMWbnmzLOWDm4Zm4afgMbJODtYQBHdBBKYnSi4HGbgJ
         lM7A==
X-Gm-Message-State: AOJu0Yw9uWCxaU+YDzj2f3PKK69PyRqZdouZ8qcB3pdJ5UZ4TqS5MNpA
	n9yICqGykJyM0UtsSrlsY8KB/EddTCnKOxc/LALWAA==
X-Google-Smtp-Source: AGHT+IGhgp3EzVpUA8B6w/gxz5O9e1za9Jflwg5ZlDlkn+ruHgj0d5IhyGum8GDTbU5w5S7kQboXjOfyqigfiyl+Dh0=
X-Received: by 2002:a17:90a:709:b0:27d:32d8:4683 with SMTP id
 l9-20020a17090a070900b0027d32d84683mr950494pjl.5.1697159519588; Thu, 12 Oct
 2023 18:11:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231012121004.2127918-1-yangcong5@huaqin.corp-partner.google.com>
 <20231012121004.2127918-3-yangcong5@huaqin.corp-partner.google.com> <CAD=FV=VwUHctAQXGr_6FZfTS3r0-MZaSiB8+YkfJJzrJsnZDLw@mail.gmail.com>
In-Reply-To: <CAD=FV=VwUHctAQXGr_6FZfTS3r0-MZaSiB8+YkfJJzrJsnZDLw@mail.gmail.com>
From: cong yang <yangcong5@huaqin.corp-partner.google.com>
Date: Fri, 13 Oct 2023 09:11:48 +0800
Message-ID: <CAHwB_NKSL8vHdN8TnQY2Z04E4rDRLK5BHoryZCi2kNAwQEjisQ@mail.gmail.com>
Subject: Re: [v3 2/3] drm/panel: ili9882t: Avoid blurred screen from fast sleep
To: Doug Anderson <dianders@google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, linus.walleij@linaro.org, swboyd@chromium.org, 
	airlied@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Thu, Oct 12, 2023 at 11:15=E2=80=AFPM Doug Anderson <dianders@google.com=
> wrote:
>
> Hi,
>
> On Thu, Oct 12, 2023 at 5:10=E2=80=AFAM Cong Yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
> >
> > At present, we have found that there may be a problem of blurred
> > screen during fast sleep/resume. The direct cause of the blurred
> > screen is that the IC does not receive 0x28/0x10. Because of the
> > particularity of the IC, before the panel enters sleep hid must
> > stop scanning, as i2c_hid_core_suspend before ili9882t_disable.
> > If move the ili9882t_enter_sleep_mode function to ili9882t_unprepare,
> > touch reset will pull low before panel entersleep, which does not meet
> > the timing requirements..
>
> The above makes me believe that the reset GPIO should be moved out of
> the input driver and into the panel driver. I could just imagine that
> the kernel might have some reason it wants to suspend the i2c hid
> device. If that causes the panel to suddenly start failing then that
> would be bad... I think we should fix this.

Thanks, I will confirm with ilitek in further analysis and use "move
the ili9882t_enter_sleep_mode
function to ili9882t_unprepare".  Is the test failure really because
the touch reset timing
does not match? There is also a separate reset GPIO on the panel.
Shouldn't touch reset not
affect the panel?

If we find a better solution I will continue upstream,=E3=80=82 So is it
possible to apply this plan now?

>
>
> > So in order to solve this problem, the IC
> > can handle it through the exception mechanism when it cannot receive
> > 0x28/0x10 command. Handling exceptions requires a reset 50ms delay.
> > Refer to vendor detailed analysis [1].
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
> >  drivers/gpu/drm/panel/panel-ilitek-ili9882t.c | 22 ++++++++++++++++++-
> >  1 file changed, 21 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c b/drivers/gp=
u/drm/panel/panel-ilitek-ili9882t.c
> > index 93a40c2f1483..54ff1efb94aa 100644
> > --- a/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c
> > +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c
> > @@ -463,6 +463,24 @@ static int ili9882t_init_dcs_cmd(struct ili9882t *=
ili)
> >         return 0;
> >  }
> >
> > +static int ili9882t_switch_page(struct mipi_dsi_device *dsi, u8 page)
> > +{
> > +       int ret;
> > +       const struct panel_init_cmd cmd =3D _INIT_SWITCH_PAGE_CMD(page)=
;
> > +
> > +       ret =3D mipi_dsi_dcs_write(dsi, cmd.data[0],
> > +                                cmd.len <=3D 1 ? NULL :
> > +                                &cmd.data[1],
> > +                                cmd.len - 1);
> > +       if (ret) {
> > +               dev_err(&dsi->dev,
> > +                       "error switching panel controller page (%d)\n",=
 ret);
> > +               return ret;
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> >  static int ili9882t_enter_sleep_mode(struct ili9882t *ili)
> >  {
> >         struct mipi_dsi_device *dsi =3D ili->dsi;
> > @@ -484,8 +502,10 @@ static int ili9882t_enter_sleep_mode(struct ili988=
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
> > @@ -546,7 +566,7 @@ static int ili9882t_prepare(struct drm_panel *panel=
)
> >         gpiod_set_value(ili->enable_gpio, 1);
> >         usleep_range(1000, 2000);
> >         gpiod_set_value(ili->enable_gpio, 0);
> > -       usleep_range(1000, 2000);
> > +       usleep_range(50000, 51000);
>
> From my previous response, I think the above is better as msleep(50).

Sorry. Will be corrected in V4.

