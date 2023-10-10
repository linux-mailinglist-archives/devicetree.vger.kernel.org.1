Return-Path: <devicetree+bounces-7188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 554097BF992
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:22:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0ADC0281E53
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 11:22:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60E9718C07;
	Tue, 10 Oct 2023 11:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="PPIema1g"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C40D29B
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 11:22:05 +0000 (UTC)
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 815BB9E
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 04:22:03 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3ae2ec1a222so3901051b6e.2
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 04:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1696936923; x=1697541723; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iIDqPxwTUbRqPTvD/oGymQRcW9d2LB01AyGLCtA47MU=;
        b=PPIema1gXS6/Xm+uH9XFcfutEisNxevhua36nNhU8lQWFJRPorSt5JaR8hTG4I5zhG
         LwuPLGTvnjSfa5/D9anLPJT4DcXj7FWl3+D+7nueLV049HxpkKgFulABeArnnk0SfYFq
         16K+UqSH+X2maNC2Q4RxckrNTYb6781Xre2cwES7/P0ZFedENvCB+31fx32Y9NOeLaXb
         sJ8W42KhurNYjrZWnrvPG4rvoIvDErWroNwtw5Hclqk+q25Zmk3Hx6LhT3UNkTSPNyDm
         h+S36G7wAuyK/zNmyx4xfrc6mYRtGWatqkvk+EPcx1PGVrIwwPLwSX0tXgy9M/bUtZqR
         L0zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696936923; x=1697541723;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iIDqPxwTUbRqPTvD/oGymQRcW9d2LB01AyGLCtA47MU=;
        b=n3rbH4/kXsAR508M0pQ0Ok7wxq9gPpUns4gk9NKM77jMcxe223jD6qDVmXjawruJa2
         6K5amgjH3ZMJvbdBm+Emt0xfGIfU8b/EI6/3nkM0hu1YHJ/0O3W48KAT18+Z3C7HJeUO
         Nf8hR37EblG+Q6TJqEhkS3WuFWOI5qB5TeqGP9BQTdlF9qD4zLKMKm8+RAh+QbjhWBx3
         bdXtGgAqKLn4cKCwtvSS+QNEDaa9CqSjTf38kGzAoHqE9RsozB4j90/oBD8HQPnDjt5g
         fEZyBSjodU0v81zA+g5mGB9oU0pYW1SmzEZJyhUQOhx5ipS9v8YtLW3nOGiDRcjAEvPM
         B/uQ==
X-Gm-Message-State: AOJu0Yz/G2rCwP/o1muUQreeckeS/PTd6Vu0/R9ZuZSB/O0jAw86GOpy
	HY/PE6cjTK+5mphYWcgxJDpLWLKLXDpej9OlvkuOUg==
X-Google-Smtp-Source: AGHT+IEPsHAdybNHlhqULqHwmnZcm8PamxWfzC8OgThdXUdvxqpngIMjRF8ls07V5GFoCscEx4M+8PgbpcFucQXDt7E=
X-Received: by 2002:a05:6358:5e0f:b0:134:e549:50d6 with SMTP id
 q15-20020a0563585e0f00b00134e54950d6mr22484878rwn.10.1696936922655; Tue, 10
 Oct 2023 04:22:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231007060639.725350-1-yangcong5@huaqin.corp-partner.google.com>
 <20231007060639.725350-2-yangcong5@huaqin.corp-partner.google.com> <CAD=FV=Ucpkvt_pjpRtG-6Yrwps7n=BncjWa0uSMsfraHYuK-ug@mail.gmail.com>
In-Reply-To: <CAD=FV=Ucpkvt_pjpRtG-6Yrwps7n=BncjWa0uSMsfraHYuK-ug@mail.gmail.com>
From: cong yang <yangcong5@huaqin.corp-partner.google.com>
Date: Tue, 10 Oct 2023 19:21:51 +0800
Message-ID: <CAHwB_NJvMEeQYK7ncFjayixA3OjrjJCbUb_Y3s0HYWJ+EVxm_Q@mail.gmail.com>
Subject: Re: [v1 1/2] drm/panel: ili9882t: Break out as separate driver
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

Thanks for the review,I will modify these in V2.

On Tue, Oct 10, 2023 at 4:44=E2=80=AFAM Doug Anderson <dianders@google.com>=
 wrote:
>
> Hi,
>
> On Fri, Oct 6, 2023 at 11:07=E2=80=AFPM Cong Yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
> >
> > From: Linus Walleij <linus.walleij@linaro.org>
> >
> > The Starry ILI9882t-based panel should never have been part of the boe
> > tv101wum driver, it is clearly based on the Ilitek ILI9882t display
> > controller and if you look at the custom command sequences for the
> > panel these clearly contain the signature Ilitek page switch (0xff)
> > commands. The hardware has nothing in common with the other panels
> > supported by this driver.
> >
> > Break this out into a separate driver and config symbol instead.
> >
> > If the placement here is out of convenience for using similar code,
> > we should consider creating a helper library instead.
> >
> > Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> > Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> > ---
> >  drivers/gpu/drm/panel/Kconfig                 |   9 +
> >  drivers/gpu/drm/panel/Makefile                |   1 +
> >  .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 371 ---------
> >  drivers/gpu/drm/panel/panel-ilitek-ili9882t.c | 752 ++++++++++++++++++
> >  4 files changed, 762 insertions(+), 371 deletions(-)
> >  create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9882t.c
> >
> > diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kcon=
fig
> > index ecb22ea326cb..99e14dc212ec 100644
> > --- a/drivers/gpu/drm/panel/Kconfig
> > +++ b/drivers/gpu/drm/panel/Kconfig
> > @@ -203,6 +203,15 @@ config DRM_PANEL_ILITEK_ILI9881C
> >           Say Y if you want to enable support for panels based on the
> >           Ilitek ILI9881c controller.
> >
> > +config DRM_PANEL_ILITEK_ILI9882T
> > +       tristate "Ilitek ILI9882t-based panels"
> > +       depends on OF
> > +       depends on DRM_MIPI_DSI
> > +       depends on BACKLIGHT_CLASS_DEVICE
> > +       help
> > +         Say Y if you want to enable support for panels based on the
> > +         Ilitek ILI9882t controller.
>
> We'll of course run into the same problem we always run into when
> Kconfig symbols get renamed or broken apart: people will have to know
> to update their configs to include this. Not much we can do about it,
> though. :-/ optional: I guess you could theoretically also include an
> extra patch in your series to 'arch/arm64/configs/defconfig' enabling
> this new config, since the old panel was enabled there...
>
>
> > diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c b/drivers/gp=
u/drm/panel/panel-ilitek-ili9882t.c
> > new file mode 100644
> > index 000000000000..bbfcffe65623
> > --- /dev/null
> > +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c
> > @@ -0,0 +1,752 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Panels based on the Ilitek ILI9882T display controller.
> > + */
> > +#include <linux/delay.h>
> > +#include <linux/gpio/consumer.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/of_device.h>
> > +#include <linux/regulator/consumer.h>
> > +
> > +#include <drm/drm_connector.h>
> > +#include <drm/drm_crtc.h>
> > +#include <drm/drm_mipi_dsi.h>
> > +#include <drm/drm_panel.h>
> > +
> > +#include <video/mipi_display.h>
> > +
> > +/*
> > + * Use this descriptor struct to describe different panels using the
> > + * Ilitek ILI9882T display controller.
> > + */
> > +struct panel_desc {
> > +       const struct drm_display_mode *modes;
> > +       unsigned int bpc;
> > +
> > +       /**
> > +        * @width_mm: width of the panel's active display area
> > +        * @height_mm: height of the panel's active display area
> > +        */
> > +       struct {
> > +               unsigned int width_mm;
> > +               unsigned int height_mm;
> > +       } size;
> > +
> > +       unsigned long mode_flags;
> > +       enum mipi_dsi_pixel_format format;
> > +       const struct panel_init_cmd *init_cmds;
> > +       unsigned int init_cmd_length;
>
> Why do you need 'init_cmd_length'? It seems like an arbitrary
> difference between the two drivers. Your 'panel_init_cmd' in the new
> driver still ends with a 0-length command so just use that so you
> don't need to store the length.
>
>
> > +/* ILI9882-specific commands, add new commands as you decode them */
> > +#define ILI9882T_DCS_SWITCH_PAGE       0xFF
> > +
> > +static const struct panel_init_cmd starry_ili9882t_init_cmd[] =3D {
> > +       _INIT_DELAY_CMD(5),
> > +       _INIT_DCS_CMD(ILI9882T_DCS_SWITCH_PAGE, 0x98, 0x82, 0x01),
>
> Slightly cleaner, can you do:
>
> #define _INIT_SWITCH_PAGE_CMD(page) \
>   _INIT_DCS_CMD(ILI9882T_DCS_SWITCH_PAGE, 0x98, 0x82, (page))
>
> Then in your array you can use stuff like
>
> _INIT_SWITCH_PAGE_CMD(0x01);
>
>
> > +static int ili9882t_prepare(struct drm_panel *panel)
> > +{
> > +       struct ili9882t *ili =3D to_ili9882t(panel);
> > +       struct mipi_dsi_device *dsi =3D ili->dsi;
> > +       int i, ret;
> > +
> > +       gpiod_set_value(ili->enable_gpio, 0);
> > +       usleep_range(1000, 1500);
> > +
> > +       ret =3D regulator_enable(ili->pp3300);
> > +       if (ret < 0)
> > +               return ret;
> > +
> > +       ret =3D regulator_enable(ili->pp1800);
> > +       if (ret < 0)
> > +               return ret;
> > +
> > +       usleep_range(3000, 5000);
> > +
> > +       ret =3D regulator_enable(ili->avdd);
> > +       if (ret < 0)
> > +               goto poweroff1v8;
> > +       ret =3D regulator_enable(ili->avee);
> > +       if (ret < 0)
> > +               goto poweroffavdd;
> > +
> > +       usleep_range(10000, 11000);
> > +
> > +       // MIPI needs to keep the LP11 state before the lcm_reset pin i=
s pulled high
> > +       mipi_dsi_dcs_nop(ili->dsi);
> > +       usleep_range(1000, 2000);
> > +
> > +       gpiod_set_value(ili->enable_gpio, 1);
> > +       usleep_range(1000, 2000);
> > +       gpiod_set_value(ili->enable_gpio, 0);
> > +       usleep_range(1000, 2000);
> > +       gpiod_set_value(ili->enable_gpio, 1);
> > +       usleep_range(6000, 10000);
> > +
> > +       for(i =3D 0; i < ili->desc->init_cmd_length; i++) {
> > +               const struct panel_init_cmd *cmd =3D &ili->desc->init_c=
mds[i];
> > +               switch (cmd->type) {
> > +               case DELAY_CMD:
> > +                       msleep(cmd->data[0]);
> > +                       ret =3D 0;
> > +                       break;
> > +
> > +               case INIT_DCS_CMD:
> > +                       ret =3D mipi_dsi_dcs_write(dsi, cmd->data[0],
> > +                                                       cmd->len <=3D 1=
 ? NULL :
> > +                                                       &cmd->data[1],
> > +                                                       cmd->len - 1);
> > +                       break;
> > +
> > +               default:
> > +                       ret =3D -EINVAL;
> > +               }
> > +
> > +               if (ret < 0) {
> > +                       dev_err(panel->dev,
> > +                               "failed to write command %u\n", i);
> > +                  goto poweroff;
> > +               }
> > +       }
>
> In the boe driver the above is in a sub-function
> boe_panel_init_dcs_cmd(). Can you create a similar sub-function for
> the ili9882t driver? It seems like a nice logical thing to break out
> and nice not to have arbitrary differences between the two drivers
> since they're so similar...
>
>
> > +static const struct panel_desc starry_ili9882t_desc =3D {
> > +       .modes =3D &starry_ili9882t_default_mode,
> > +       .bpc =3D 8,
> > +       .size =3D {
> > +               .width_mm =3D 141,
> > +               .height_mm =3D 226,
> > +       },
> > +       .lanes =3D 4,
> > +       .format =3D MIPI_DSI_FMT_RGB888,
> > +       .mode_flags =3D MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_=
PULSE |
> > +                         MIPI_DSI_MODE_LPM,
>
> nit: please fix indentation of the line above.
>
>
> > +       .init_cmds =3D starry_ili9882t_init_cmd,
> > +       .init_cmd_length =3D ARRAY_SIZE(starry_ili9882t_init_cmd),
> > +};
> > +
> > +static int ili9882t_get_modes(struct drm_panel *panel,
> > +                                  struct drm_connector *connector)
>
> nit: please fix indentation of the line above.
>
>
> > +static int ili9882t_add(struct ili9882t *ili)
> > +{
> > +       struct device *dev =3D &ili->dsi->dev;
> > +       int err;
> > +
> > +       ili->avdd =3D devm_regulator_get(dev, "avdd");
> > +       if (IS_ERR(ili->avdd))
> > +               return PTR_ERR(ili->avdd);
> > +
> > +       ili->avee =3D devm_regulator_get(dev, "avee");
> > +       if (IS_ERR(ili->avee))
> > +               return PTR_ERR(ili->avee);
> > +
> > +       ili->pp3300 =3D devm_regulator_get(dev, "pp3300");
> > +       if (IS_ERR(ili->pp3300))
> > +               return PTR_ERR(ili->pp3300);
> > +
> > +       ili->pp1800 =3D devm_regulator_get(dev, "pp1800");
> > +       if (IS_ERR(ili->pp1800))
> > +               return PTR_ERR(ili->pp1800);
> > +
> > +       ili->enable_gpio =3D devm_gpiod_get(dev, "enable", GPIOD_OUT_LO=
W);
> > +       if (IS_ERR(ili->enable_gpio)) {
> > +               dev_err(dev, "cannot get reset-gpios %ld\n",
> > +                       PTR_ERR(ili->enable_gpio));
> > +               return PTR_ERR(ili->enable_gpio);
> > +       }
> > +
> > +       gpiod_set_value(ili->enable_gpio, 0);
> > +
> > +       drm_panel_init(&ili->base, dev, &ili9882t_funcs,
> > +                          DRM_MODE_CONNECTOR_DSI);
>
> nit: the indentation of the above line isn't quite right. Just put the
> whole drm_panel_init() on one line even if it's slightly over 80
> characters long.
>
>
> > +static void ili9882t_shutdown(struct mipi_dsi_device *dsi)
> > +{
> > +       struct ili9882t *ili =3D mipi_dsi_get_drvdata(dsi);
> > +
> > +       drm_panel_disable(&ili->base);
> > +       drm_panel_unprepare(&ili->base);
> > +}
>
> Please remove the "shutdown()" function. The above two calls to
> drm_panel_disable() and drm_panel_unprepare() require that the panel
> driver is tracking the "prepared" / "enabled" state and will trigger
> warnings if you try shutting down while the panel was off.
>
> We shouldn't need the shutdown functionality because all of the DRM
> drivers that this panel is used together with should properly call
> drm_atomic_helper_shutdown(). For details, see the long discussion in
> reply to my patch at:
>
> https://lore.kernel.org/r/20230804140605.RFC.4.I930069a32baab6faf46d6b234=
f89613b5cec0f14@changeid
>
>
> > +static void ili9882t_remove(struct mipi_dsi_device *dsi)
> > +{
> > +       struct ili9882t *ili =3D mipi_dsi_get_drvdata(dsi);
> > +       int ret;
> > +
> > +       ili9882t_shutdown(dsi);
> > +
> > +       ret =3D mipi_dsi_detach(dsi);
> > +       if (ret < 0)
> > +               dev_err(&dsi->dev, "failed to detach from DSI host: %d\=
n", ret);
> > +
> > +       if (ili->base.dev)
> > +               drm_panel_remove(&ili->base);
> > +}
> > +
> > +static const struct of_device_id ili9882t_of_match[] =3D {
> > +       { .compatible =3D "starry,ili9882t",
> > +         .data =3D &starry_ili9882t_desc
> > +       },
> > +       { /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(of, ili9882t_of_match);
> > +
> > +static struct mipi_dsi_driver ili9882t_driver =3D {
> > +       .driver =3D {
> > +               .name =3D "panel-ili9882t",
> > +               .of_match_table =3D ili9882t_of_match,
> > +       },
> > +       .probe =3D ili9882t_probe,
> > +       .remove =3D ili9882t_remove,
> > +       .shutdown =3D ili9882t_shutdown,
> > +};
> > +module_mipi_dsi_driver(ili9882t_driver);
> > +
> > +MODULE_AUTHOR("Linus Walleij <linus.walleij@linaro.org>");
> > +MODULE_DESCRIPTION("Ilitek ILI9882T-based panels driver");
> > +MODULE_LICENSE("GPL");
> > \ No newline at end of file
>
> Please make sure there's a newline at the end of the file so you don't
> have the "No newline at end of file".

