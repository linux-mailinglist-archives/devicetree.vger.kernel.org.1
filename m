Return-Path: <devicetree+bounces-8331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FF77C7B9B
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 04:28:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE8411C20B97
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 02:28:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7D51A44;
	Fri, 13 Oct 2023 02:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="OmWoC3nd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0E0A40
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 02:28:30 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4E9795
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 19:28:28 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4053f24c900so21935e9.1
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 19:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1697164107; x=1697768907; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R9/YuC6y9eUihKpZ8jmF6NlsO7n14+K0koQ+noy1ggQ=;
        b=OmWoC3nd59yaNI16Fbi2/oU1YekFIfue7+44AXYOFFyYyQIQJAKgmDAP/CcYnpixXu
         nIIRlrh59ifFabgPugRGFzKAVLEVZg6MVez/4U4AB+1Bw3qUBeVqdUeLK0rnjud1B7rs
         4Z5EGXReX7CGbEa8dNfxTUy18ypEwuWixrMujAIZzoKM/t6zAEPgIe52yWLqaCZaHFgR
         Dwc3VhtdIH7vptrxSWvmlzXPkpI9KNk5CH4DnHuTVOlRSWX3cVzbj+kLrOxYsNHxHD7M
         Afj8YEOVRFEx/DWp4ExFO/6wumotSu6+7eiB38TLll2+i+iwhH6NmL/vbKjeBAgqXEjY
         VxrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697164107; x=1697768907;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R9/YuC6y9eUihKpZ8jmF6NlsO7n14+K0koQ+noy1ggQ=;
        b=hUfLMKKGSGp9uTyETE9sZw/ZOFaP2MfcSSZbIoDQo/C6bfbMf3O2INnkzP3+SXaRit
         Z/UeKAqkUmjPJZf4wzC1AyrTQJcBMI7zi7NYunp5vjai6mPQkWnmNiz1zu8PLoy4yw2z
         l5ygNwjex7Vdl3y8cYqg8oRkShHgS3FQaGS10ot30LM/LmL84fjhtKOk5e37C+Nb8giW
         EDa5eWaAsbPKXnxuFOzsO1Hz5tW5+VwzotFzQoVUApsvYZXrjt/gEtbPgtn0njrsRilx
         XcQCFa5lbQAIKK3mg6QEPtJuK/1cXpPKmQwQ9uvxg3Wnkbmc58D2XLzWiGDWG5dDda0l
         XENQ==
X-Gm-Message-State: AOJu0YwMjBpOk020GYfy9Eh3zKfnzU09zFM09viNcg5U8JzuLR7n4CuR
	gNef+p1Rrrlxt+ErLmXjYnZ5feYkd9YRfuT7/aC4Iw==
X-Google-Smtp-Source: AGHT+IEu3bheZn/kvrw6MTnB9tzASaTpUw4xRezBw/4fkpa7r55AH2ohLLQYSj1JU+sur8lRAt/zUYM8E4TeV6/Dtk0=
X-Received: by 2002:a05:600c:2102:b0:405:38d1:e146 with SMTP id
 u2-20020a05600c210200b0040538d1e146mr63274wml.4.1697164107120; Thu, 12 Oct
 2023 19:28:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231012121004.2127918-1-yangcong5@huaqin.corp-partner.google.com>
 <20231012121004.2127918-3-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=VwUHctAQXGr_6FZfTS3r0-MZaSiB8+YkfJJzrJsnZDLw@mail.gmail.com> <CAHwB_NKSL8vHdN8TnQY2Z04E4rDRLK5BHoryZCi2kNAwQEjisQ@mail.gmail.com>
In-Reply-To: <CAHwB_NKSL8vHdN8TnQY2Z04E4rDRLK5BHoryZCi2kNAwQEjisQ@mail.gmail.com>
From: Doug Anderson <dianders@google.com>
Date: Thu, 12 Oct 2023 19:28:11 -0700
Message-ID: <CAD=FV=VmiS6G25JyAj4UGjU5Q9f80GcjLq1xwU4gdVyzDdk8LQ@mail.gmail.com>
Subject: Re: [v3 2/3] drm/panel: ili9882t: Avoid blurred screen from fast sleep
To: cong yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, linus.walleij@linaro.org, swboyd@chromium.org, 
	airlied@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
	USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Thu, Oct 12, 2023 at 6:12=E2=80=AFPM cong yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> Hi,
>
> On Thu, Oct 12, 2023 at 11:15=E2=80=AFPM Doug Anderson <dianders@google.c=
om> wrote:
> >
> > Hi,
> >
> > On Thu, Oct 12, 2023 at 5:10=E2=80=AFAM Cong Yang
> > <yangcong5@huaqin.corp-partner.google.com> wrote:
> > >
> > > At present, we have found that there may be a problem of blurred
> > > screen during fast sleep/resume. The direct cause of the blurred
> > > screen is that the IC does not receive 0x28/0x10. Because of the
> > > particularity of the IC, before the panel enters sleep hid must
> > > stop scanning, as i2c_hid_core_suspend before ili9882t_disable.
> > > If move the ili9882t_enter_sleep_mode function to ili9882t_unprepare,
> > > touch reset will pull low before panel entersleep, which does not mee=
t
> > > the timing requirements..
> >
> > The above makes me believe that the reset GPIO should be moved out of
> > the input driver and into the panel driver. I could just imagine that
> > the kernel might have some reason it wants to suspend the i2c hid
> > device. If that causes the panel to suddenly start failing then that
> > would be bad... I think we should fix this.
>
> Thanks, I will confirm with ilitek in further analysis and use "move
> the ili9882t_enter_sleep_mode
> function to ili9882t_unprepare".  Is the test failure really because
> the touch reset timing
> does not match? There is also a separate reset GPIO on the panel.
> Shouldn't touch reset not
> affect the panel?
>
> If we find a better solution I will continue upstream,=E3=80=82 So is it
> possible to apply this plan now?

I wouldn't be too upset at applying the current code as long as you're
going to continue to investigate. We can always continue to iterate on
it and having something working reasonably well is better than nothing
at all. However, I probably would wait at least 1 week before applying
any patch from you just simply out of courtesy to give others on the
mailing list time to express their comments. ...presumably we could
get to the bottom of the problem in that 1 week time anyway...

I'm not trying to be an obstinate pain here--I'm merely trying to make
sure that whatever we land will continue to work across kernel uprevs,
even if driver probe order / timing changes in the kernel. If the
panel is really so tied to the touchscreen device's reset GPIO timing
then it worries me. What happens, for instance, if you disable the
touchscreen CONFIG in the kernel? Does the panel still work, or is
that extra reset GPIO totally critical to the functioning of the
panel. If it's totally critical then it probably makes sense to move
to the panel driver given that the touchscreen is a panel follower
anyway...


> > > So in order to solve this problem, the IC
> > > can handle it through the exception mechanism when it cannot receive
> > > 0x28/0x10 command. Handling exceptions requires a reset 50ms delay.
> > > Refer to vendor detailed analysis [1].
> > >
> > > Ilitek vendor also suggested switching the page before entering sleep=
 to
> > > avoid panel IC not receiving 0x28/0x10 command.
> > >
> > > Note: 0x28 is display off, 0x10 is sleep in.
> > >
> > > [1]: https://github.com/ILITEK-LoganLin/Document/tree/main/ILITEK_Pow=
er_Sequence
> > >
> > > Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> > > ---
> > >  drivers/gpu/drm/panel/panel-ilitek-ili9882t.c | 22 +++++++++++++++++=
+-
> > >  1 file changed, 21 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c b/drivers/=
gpu/drm/panel/panel-ilitek-ili9882t.c
> > > index 93a40c2f1483..54ff1efb94aa 100644
> > > --- a/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c
> > > +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c
> > > @@ -463,6 +463,24 @@ static int ili9882t_init_dcs_cmd(struct ili9882t=
 *ili)
> > >         return 0;
> > >  }
> > >
> > > +static int ili9882t_switch_page(struct mipi_dsi_device *dsi, u8 page=
)
> > > +{
> > > +       int ret;
> > > +       const struct panel_init_cmd cmd =3D _INIT_SWITCH_PAGE_CMD(pag=
e);
> > > +
> > > +       ret =3D mipi_dsi_dcs_write(dsi, cmd.data[0],
> > > +                                cmd.len <=3D 1 ? NULL :
> > > +                                &cmd.data[1],
> > > +                                cmd.len - 1);
> > > +       if (ret) {
> > > +               dev_err(&dsi->dev,
> > > +                       "error switching panel controller page (%d)\n=
", ret);
> > > +               return ret;
> > > +       }
> > > +
> > > +       return 0;
> > > +}
> > > +
> > >  static int ili9882t_enter_sleep_mode(struct ili9882t *ili)
> > >  {
> > >         struct mipi_dsi_device *dsi =3D ili->dsi;
> > > @@ -484,8 +502,10 @@ static int ili9882t_enter_sleep_mode(struct ili9=
882t *ili)
> > >  static int ili9882t_disable(struct drm_panel *panel)
> > >  {
> > >         struct ili9882t *ili =3D to_ili9882t(panel);
> > > +       struct mipi_dsi_device *dsi =3D ili->dsi;
> > >         int ret;
> > >
> > > +       ili9882t_switch_page(dsi, 0x00);
> > >         ret =3D ili9882t_enter_sleep_mode(ili);
> > >         if (ret < 0) {
> > >                 dev_err(panel->dev, "failed to set panel off: %d\n", =
ret);
> > > @@ -546,7 +566,7 @@ static int ili9882t_prepare(struct drm_panel *pan=
el)
> > >         gpiod_set_value(ili->enable_gpio, 1);
> > >         usleep_range(1000, 2000);
> > >         gpiod_set_value(ili->enable_gpio, 0);
> > > -       usleep_range(1000, 2000);
> > > +       usleep_range(50000, 51000);
> >
> > From my previous response, I think the above is better as msleep(50).
>
> Sorry. Will be corrected in V4.

Thanks! It's not a huge deal, but it's nice to fix.

-Doug

