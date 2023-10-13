Return-Path: <devicetree+bounces-8343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CF57C7C5E
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 05:56:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 95D6E1C20909
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 03:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F326417C1;
	Fri, 13 Oct 2023 03:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="mPnGvxQi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF201C2E
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 03:56:05 +0000 (UTC)
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2459AB7
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 20:56:04 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-27cefb5ae1fso1108115a91.3
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 20:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1697169363; x=1697774163; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wIHLpJzADGVfsixYsPearKAep1jENI5gM5uG8d38gEE=;
        b=mPnGvxQiKEbJlBPn5tzT2Ty5EKJFdbOMI3R8lBzoxgXAZruXWXgd61WajBOHWN6ng+
         kPPENB5W87Am3cg0UgPw8m69dDY283P8cVEhTsHQKEZivNDYKCfjHbYfR0/q9NkrW95m
         Ct1oxwlYj1dLfNpuyh8GdBe63ATLLWbJyksfozYxpDFyIdzORH35MDMkIvbXKPgF68y7
         bkGX+ejpaAixWvxBGBjrvmB9kXMK2lyJAyUESv0UkierS6B0oDxPfj1m/PhrT44f4qXR
         bTDkao8RaZzH9LRI3rl6e/uFdaSTGqwO8WTGmH1i25jWvtaMnk1SKzgHOAolR6AQBvI1
         uh/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697169363; x=1697774163;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wIHLpJzADGVfsixYsPearKAep1jENI5gM5uG8d38gEE=;
        b=pxN2i6XtuS76YDlyb4LcQ15ZeFaZCd1GpdNZHspuFCz1vh0UCyri2LuyXM0zpfD7+C
         /XupSSvuk/Y7stp5SoeUE1oTC33Unv31EeutcXzh735Iq4nlLwBUIVpE0YZgXWQQZ428
         VBPPzOUMLylldEQvnJjyQGCAFP020UEULyBL+U1kjqrhbvtSPLT+YZhegsv5gn1rNx0i
         b37iTRMd3G0p4pkifpdTmB40oPYfrgXu/Pf0fhal1fpAAP1Ot5fX/DEoBDBlkKu/APdL
         p/88LJGCT0h9FcQQftVU/Nd5FE3ZzDPM5JzOzR+l0ced2KOBK7Kh9s8YEYuewEuzfMFa
         sXUw==
X-Gm-Message-State: AOJu0Yy9hCXiMJ5i80I8UM4RlZt4maOMtV5sHAlq05XPAcBRcZgH68uk
	nq6Cfmceri2KmT5xEMkWH+GuVNaFboSCW+q8mtySpw==
X-Google-Smtp-Source: AGHT+IElj/scEolxQo0Jr+6lqUbHjeByQUChKuIhq69cnRLDSf1j85AU3lUtlFYNeZZTHhzt6IJ/oVftys4qYi+ykX4=
X-Received: by 2002:a17:90b:1050:b0:27c:f4c7:57f with SMTP id
 gq16-20020a17090b105000b0027cf4c7057fmr8017881pjb.35.1697169363541; Thu, 12
 Oct 2023 20:56:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231012121004.2127918-1-yangcong5@huaqin.corp-partner.google.com>
 <20231012121004.2127918-3-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=VwUHctAQXGr_6FZfTS3r0-MZaSiB8+YkfJJzrJsnZDLw@mail.gmail.com>
 <CAHwB_NKSL8vHdN8TnQY2Z04E4rDRLK5BHoryZCi2kNAwQEjisQ@mail.gmail.com> <CAD=FV=VmiS6G25JyAj4UGjU5Q9f80GcjLq1xwU4gdVyzDdk8LQ@mail.gmail.com>
In-Reply-To: <CAD=FV=VmiS6G25JyAj4UGjU5Q9f80GcjLq1xwU4gdVyzDdk8LQ@mail.gmail.com>
From: cong yang <yangcong5@huaqin.corp-partner.google.com>
Date: Fri, 13 Oct 2023 11:55:52 +0800
Message-ID: <CAHwB_NL_RfLBmAOWqj-9iaUZEg-C2JUUveP1cn4dnR98az0BXQ@mail.gmail.com>
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
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Fri, Oct 13, 2023 at 10:28=E2=80=AFAM Doug Anderson <dianders@google.com=
> wrote:
>
> Hi,
>
> On Thu, Oct 12, 2023 at 6:12=E2=80=AFPM cong yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
> >
> > Hi,
> >
> > On Thu, Oct 12, 2023 at 11:15=E2=80=AFPM Doug Anderson <dianders@google=
.com> wrote:
> > >
> > > Hi,
> > >
> > > On Thu, Oct 12, 2023 at 5:10=E2=80=AFAM Cong Yang
> > > <yangcong5@huaqin.corp-partner.google.com> wrote:
> > > >
> > > > At present, we have found that there may be a problem of blurred
> > > > screen during fast sleep/resume. The direct cause of the blurred
> > > > screen is that the IC does not receive 0x28/0x10. Because of the
> > > > particularity of the IC, before the panel enters sleep hid must
> > > > stop scanning, as i2c_hid_core_suspend before ili9882t_disable.
> > > > If move the ili9882t_enter_sleep_mode function to ili9882t_unprepar=
e,
> > > > touch reset will pull low before panel entersleep, which does not m=
eet
> > > > the timing requirements..
> > >
> > > The above makes me believe that the reset GPIO should be moved out of
> > > the input driver and into the panel driver. I could just imagine that
> > > the kernel might have some reason it wants to suspend the i2c hid
> > > device. If that causes the panel to suddenly start failing then that
> > > would be bad... I think we should fix this.
> >
> > Thanks, I will confirm with ilitek in further analysis and use "move
> > the ili9882t_enter_sleep_mode
> > function to ili9882t_unprepare".  Is the test failure really because
> > the touch reset timing
> > does not match? There is also a separate reset GPIO on the panel.
> > Shouldn't touch reset not
> > affect the panel?
> >
> > If we find a better solution I will continue upstream,=E3=80=82 So is i=
t
> > possible to apply this plan now?
>
> I wouldn't be too upset at applying the current code as long as you're
> going to continue to investigate. We can always continue to iterate on
> it and having something working reasonably well is better than nothing
> at all. However, I probably would wait at least 1 week before applying
> any patch from you just simply out of courtesy to give others on the
> mailing list time to express their comments. ...presumably we could
> get to the bottom of the problem in that 1 week time anyway...
>
> I'm not trying to be an obstinate pain here--I'm merely trying to make
> sure that whatever we land will continue to work across kernel uprevs,
> even if driver probe order / timing changes in the kernel. If the
> panel is really so tied to the touchscreen device's reset GPIO timing
> then it worries me. What happens, for instance, if you disable the
> touchscreen CONFIG in the kernel? Does the panel still work, or is
> that extra reset GPIO totally critical to the functioning of the
> panel. If it's totally critical then it probably makes sense to move
> to the panel driver given that the touchscreen is a panel follower
> anyway...

Thanks. It looks like the panel works fine after I disable the touch screen
device. So the panel may not depend on touch screen reset.
Need to continue investigating the root cause for current status.

>
>
> > > > So in order to solve this problem, the IC
> > > > can handle it through the exception mechanism when it cannot receiv=
e
> > > > 0x28/0x10 command. Handling exceptions requires a reset 50ms delay.
> > > > Refer to vendor detailed analysis [1].
> > > >
> > > > Ilitek vendor also suggested switching the page before entering sle=
ep to
> > > > avoid panel IC not receiving 0x28/0x10 command.
> > > >
> > > > Note: 0x28 is display off, 0x10 is sleep in.
> > > >
> > > > [1]: https://github.com/ILITEK-LoganLin/Document/tree/main/ILITEK_P=
ower_Sequence
> > > >
> > > > Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> > > > ---
> > > >  drivers/gpu/drm/panel/panel-ilitek-ili9882t.c | 22 +++++++++++++++=
+++-
> > > >  1 file changed, 21 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c b/driver=
s/gpu/drm/panel/panel-ilitek-ili9882t.c
> > > > index 93a40c2f1483..54ff1efb94aa 100644
> > > > --- a/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c
> > > > +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c
> > > > @@ -463,6 +463,24 @@ static int ili9882t_init_dcs_cmd(struct ili988=
2t *ili)
> > > >         return 0;
> > > >  }
> > > >
> > > > +static int ili9882t_switch_page(struct mipi_dsi_device *dsi, u8 pa=
ge)
> > > > +{
> > > > +       int ret;
> > > > +       const struct panel_init_cmd cmd =3D _INIT_SWITCH_PAGE_CMD(p=
age);
> > > > +
> > > > +       ret =3D mipi_dsi_dcs_write(dsi, cmd.data[0],
> > > > +                                cmd.len <=3D 1 ? NULL :
> > > > +                                &cmd.data[1],
> > > > +                                cmd.len - 1);
> > > > +       if (ret) {
> > > > +               dev_err(&dsi->dev,
> > > > +                       "error switching panel controller page (%d)=
\n", ret);
> > > > +               return ret;
> > > > +       }
> > > > +
> > > > +       return 0;
> > > > +}
> > > > +
> > > >  static int ili9882t_enter_sleep_mode(struct ili9882t *ili)
> > > >  {
> > > >         struct mipi_dsi_device *dsi =3D ili->dsi;
> > > > @@ -484,8 +502,10 @@ static int ili9882t_enter_sleep_mode(struct il=
i9882t *ili)
> > > >  static int ili9882t_disable(struct drm_panel *panel)
> > > >  {
> > > >         struct ili9882t *ili =3D to_ili9882t(panel);
> > > > +       struct mipi_dsi_device *dsi =3D ili->dsi;
> > > >         int ret;
> > > >
> > > > +       ili9882t_switch_page(dsi, 0x00);
> > > >         ret =3D ili9882t_enter_sleep_mode(ili);
> > > >         if (ret < 0) {
> > > >                 dev_err(panel->dev, "failed to set panel off: %d\n"=
, ret);
> > > > @@ -546,7 +566,7 @@ static int ili9882t_prepare(struct drm_panel *p=
anel)
> > > >         gpiod_set_value(ili->enable_gpio, 1);
> > > >         usleep_range(1000, 2000);
> > > >         gpiod_set_value(ili->enable_gpio, 0);
> > > > -       usleep_range(1000, 2000);
> > > > +       usleep_range(50000, 51000);
> > >
> > > From my previous response, I think the above is better as msleep(50).
> >
> > Sorry. Will be corrected in V4.
>
> Thanks! It's not a huge deal, but it's nice to fix.
>
> -Doug

