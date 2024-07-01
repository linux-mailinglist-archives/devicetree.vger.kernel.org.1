Return-Path: <devicetree+bounces-81805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D10891D814
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 08:27:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9D6E61C21F09
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 06:27:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 785854BAA6;
	Mon,  1 Jul 2024 06:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="PXkxalD/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5688443AD2
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 06:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719815219; cv=none; b=LFYfRfUL8Voy0PkIvh8JYMy8CN6J8L5I3eP+q8g716hAAyuZeCDG9dz68f3Eop/CllXEprNF9Cma5xhAsSvnhKQT28GKNrymA5S4vjKZ7qtt9mMNZrlO/9UUMgl4fOgbRRI84faxOFaVRtLpklyOYsb+W351jSd2XMQG+vN7uV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719815219; c=relaxed/simple;
	bh=EmQpMS03t8z0DdFB4OzO1Z+vWbhz4iNaJ8guk4UUS0g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t5S/JNk7SMahx4OCIMmsEoAhvSlCyN2nq/eJgIO+Ntzw07qjwIVvMy6At56JOA0o9A63ajeHXH/umn+lhSQ8xgZ9n1+ZY8PViik6iEji8UJ8YG4hnsOH/uLKADKC+5rtN22WIVkJb8dxpQIphYB1dvFmq1aXFbwI7H4ttV9mTxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=PXkxalD/; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a6cb130027aso131821066b.2
        for <devicetree@vger.kernel.org>; Sun, 30 Jun 2024 23:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719815216; x=1720420016; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PZpJOFhKwwdEY7p6m9mL5oRIpXPcsPD12aOxco6KirM=;
        b=PXkxalD/GFXm2xeEuaXwWtI40dLLGREEOB2WzPxZmGqLZUwXEF98hegBMSDofFJsNI
         Q5ZIjSfJRVym2q6fltxyFWKU8wSZES93hSmFgYq13citNkUtZlWVJYJEDgC+fAwmi7fx
         03a/MDdGt+UdCvl38xSWzK4S1lE6FF8te59fz3011wwWkGUkMWL21fhPwDs91MbA7egx
         baeNx0UAvKS9fmNMJrSZ9OQ0FROZ2rYbBiRjPSl7xKfQgVnvxEBnZJhmHp25pgLSJOTc
         afhZzCBhXjLuN55EAVCiLUYNb49pey83ovJDsPsp/XwC4pCmruHhcPoAwWYoD2rCBTjj
         Lv+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719815216; x=1720420016;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PZpJOFhKwwdEY7p6m9mL5oRIpXPcsPD12aOxco6KirM=;
        b=pdGTwGsCF4nrfPdjAwV4FCspHiBEr/WhHZy2/WqRxyTKM7QvInNn/mccpbK83/fRtM
         kReKZ7/Cgpmm1UvlSkm1yoyux3tOBbe4jUCJiTWXjd4cso10O6dz3BzKvCO8tFfUCMmC
         UeCBHs4BQiwtaYsQVIb+yVzsud56Tyio6omUYHRPLL+H+tBjZ/ei/j6P5C9St3ir5uqo
         x/jKVlpb1HyRWtsuKC6+114JaAVEUj27IEcV+6oZZJ/z3lyeBAQGLnUK82onNlG6jnlZ
         KVk/ISKOAzP4Dh1TO8bFVkOjI6mn79RSvGSRC2bG/kz2O6ChFA+tsWL5KKsYYK4nILEe
         miIA==
X-Forwarded-Encrypted: i=1; AJvYcCXPjeESNfbf1gsFpVmkWBmhpyLJzZ7BLubF076WCAOin7nLibHelRwvix31flp2y1o4091Mjbsa26/5oskXzFo7Ov8tu0bevjZiEA==
X-Gm-Message-State: AOJu0YxPe0H4P5X8T/l1RB74xgbk/3F2z/aOPAaRm7auRjA8h3KECUBX
	3vVnH2MXdX+2SLlEUTZpYeRrEI7QfhJSFGBZfU2m9TOzsQKsdVZ/TtkGLG2b0FZGHVvQfQc+hqM
	LIp1h2nsXsYYqhsbWh6eA9vcUprF5+iF3C8O7EA==
X-Google-Smtp-Source: AGHT+IEqh3XRKhAq+SkxhTppBfx3lu9MJDisLB+fVaFrySX4rsD+ryoGy0oP8BVI414d29I7P55lskk7ZeTrI9hUiFE=
X-Received: by 2002:a05:6402:11d1:b0:57c:71ca:f651 with SMTP id
 4fb4d7f45d1cf-5879f69b492mr3790970a12.20.1719815215538; Sun, 30 Jun 2024
 23:26:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240620115245.31540-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240620115245.31540-3-lvzhaoxiong@huaqin.corp-partner.google.com>
 <bmmng663zqsc4xolkh6jdbu6yj637f3k6qbclxgi6fcmm4hv7z@i7ycd36flcha> <CA+6=WdT80hcAW4f=UDcO2d3e+ODcRjAQBOUug7M6vgmtAEY1SA@mail.gmail.com>
In-Reply-To: <CA+6=WdT80hcAW4f=UDcO2d3e+ODcRjAQBOUug7M6vgmtAEY1SA@mail.gmail.com>
From: zhaoxiong lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Date: Mon, 1 Jul 2024 14:26:44 +0800
Message-ID: <CA+6=WdRSkQnx5qDn5rCzebEyjx-6Pz5ze0kE0oqvQ3uf5digMQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] drm/panel: starry-er88577: add new panel driver
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	benjamin.tissoires@redhat.co, dianders@google.com, hsinyi@google.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 21, 2024 at 9:43=E2=80=AFAM zhaoxiong lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> On Fri, Jun 21, 2024 at 3:56=E2=80=AFAM Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> >
> > On Thu, Jun 20, 2024 at 07:52:45PM GMT, Zhaoxiong Lv wrote:
> > > The bias IC of this starry-er88577 panel is placed
> > > on the panel side, so when the panel is powered on,
> > > there is no need to control AVDD and AVEE in the driver,
> > > only 3.3v and reset are needed.
> > >
> > > Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.c=
om>
> > > ---
> > > Chage since V3:
> > > -  1. Adjust the ".clock" assignment format.
> > >
> > > v3: https://lore.kernel.org/all/20240614145609.25432-3-lvzhaoxiong@hu=
aqin.corp-partner.google.com/
> > >
> > > Chage since V3:
> > > -  Separate Starry-er88577 from the panel-kingdisplay-kd101ne3 driver=
.
> > > -  Use mipi_dsi_dcs_set_display_on_multi().
> > > -  Use mipi_dsi_dcs_exit_sleep_mode_multi() and mipi_dsi_msleep().
> > >
> > > v2: https://lore.kernel.org/all/20240601084528.22502-5-lvzhaoxiong@hu=
aqin.corp-partner.google.com/
> > >
> > > Chage since V2:
> > > -  Add compatible for Starry er88577 in panel-kingdisplay-kd101ne3 dr=
ivers.
> > >
> > > ---
> > >  drivers/gpu/drm/panel/Kconfig                |   9 +
> > >  drivers/gpu/drm/panel/Makefile               |   1 +
> > >  drivers/gpu/drm/panel/panel-starry-er88577.c | 343 +++++++++++++++++=
++
> > >  3 files changed, 353 insertions(+)
> > >  create mode 100644 drivers/gpu/drm/panel/panel-starry-er88577.c
> > >
> > > diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kc=
onfig
> > > index e54f6f5604ed..a52aa2552ab8 100644
> > > --- a/drivers/gpu/drm/panel/Kconfig
> > > +++ b/drivers/gpu/drm/panel/Kconfig
> > > @@ -781,6 +781,15 @@ config DRM_PANEL_SITRONIX_ST7789V
> > >         Say Y here if you want to enable support for the Sitronix
> > >         ST7789V controller for 240x320 LCD panels
> > >
> > > +config DRM_PANEL_STARRY_ER88577
> > > +     tristate "Starry er88577 panel"
> > > +     depends on OF
> > > +     depends on DRM_MIPI_DSI
> > > +     depends on BACKLIGHT_CLASS_DEVICE
> > > +     help
> > > +       Say Y if you want to enable support for panels based on the
> > > +       Starry er88577 controller.
> > > +
> > >  config DRM_PANEL_SONY_ACX565AKM
> > >       tristate "Sony ACX565AKM panel"
> > >       depends on GPIOLIB && OF && SPI
> > > diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/M=
akefile
> > > index f0203f6e02f4..ecd843a6dc6e 100644
> > > --- a/drivers/gpu/drm/panel/Makefile
> > > +++ b/drivers/gpu/drm/panel/Makefile
> > > @@ -81,6 +81,7 @@ obj-$(CONFIG_DRM_PANEL_SHARP_LS060T1SX01) +=3D pane=
l-sharp-ls060t1sx01.o
> > >  obj-$(CONFIG_DRM_PANEL_SITRONIX_ST7701) +=3D panel-sitronix-st7701.o
> > >  obj-$(CONFIG_DRM_PANEL_SITRONIX_ST7703) +=3D panel-sitronix-st7703.o
> > >  obj-$(CONFIG_DRM_PANEL_SITRONIX_ST7789V) +=3D panel-sitronix-st7789v=
.o
> > > +obj-$(CONFIG_DRM_PANEL_STARRY_ER88577) +=3D panel-starry-er88577.o
> > >  obj-$(CONFIG_DRM_PANEL_SYNAPTICS_R63353) +=3D panel-synaptics-r63353=
.o
> > >  obj-$(CONFIG_DRM_PANEL_SONY_ACX565AKM) +=3D panel-sony-acx565akm.o
> > >  obj-$(CONFIG_DRM_PANEL_SONY_TD4353_JDI) +=3D panel-sony-td4353-jdi.o
> > > diff --git a/drivers/gpu/drm/panel/panel-starry-er88577.c b/drivers/g=
pu/drm/panel/panel-starry-er88577.c
> > > new file mode 100644
> > > index 000000000000..e6088262ee69
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/panel/panel-starry-er88577.c
> > > @@ -0,0 +1,343 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +/* Panels based on the ER88577 display controller.
> > > + * Author: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> > > + */
> > > +
> > > +#include <linux/delay.h>
> > > +#include <linux/gpio/consumer.h>
> > > +#include <linux/module.h>
> > > +#include <linux/of.h>
> > > +#include <linux/regulator/consumer.h>
> > > +
> > > +#include <drm/drm_connector.h>
> > > +#include <drm/drm_crtc.h>
> > > +#include <drm/drm_mipi_dsi.h>
> > > +#include <drm/drm_panel.h>
> > > +
> > > +#include <video/mipi_display.h>
> > > +#include <drm/drm_probe_helper.h>
> > > +
> > > +struct starry_panel;
> > > +
> > > +struct panel_desc {
> > > +     const struct drm_display_mode *modes;
> > > +     unsigned int bpc;
> > > +     unsigned long mode_flags;
> > > +     enum mipi_dsi_pixel_format format;
> > > +     const struct panel_init_cmd *init_cmds;
> > > +     int (*init)(struct starry_panel *starry);
> > > +     unsigned int lanes;
> > > +     bool discharge_on_disable;
> > > +     bool lp11_before_reset;
> > > +     unsigned int power_off_delay_ms;
> > > +};
> > > +
> > > +struct starry_panel {
> > > +     struct drm_panel base;
> > > +     struct mipi_dsi_device *dsi;
> > > +
> > > +     const struct panel_desc *desc;
> > > +
> > > +     enum drm_panel_orientation orientation;
> > > +     struct regulator *vccio;
> > > +     struct gpio_desc *reset;
> > > +};
> > > +
> > > +static int starry_er88577_init(struct starry_panel *starry)
> > > +{
> > > +     struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D starry->ds=
i };
> > > +
> > > +     /* T5:HWreset to init_code >=3D 120ms */
> > > +     mipi_dsi_msleep(dsi_ctx, 120);
> > > +
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe0, 0xab, 0xba);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe1, 0xba, 0xab);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb1, 0x10, 0x01, 0x47, =
0xff);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb2, 0x0c, 0x14, 0x04, =
0x50, 0x50, 0x14);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb3, 0x56, 0x53, 0x00);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb4, 0x33, 0x30, 0x04);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb6, 0xb0, 0x00, 0x00, =
0x10, 0x00, 0x10, 0x00);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb8, 0x05, 0x12, 0x29, =
0x49, 0x40);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb9, 0x7c, 0x61, 0x4f, =
0x42, 0x3e, 0x2d, 0x31,
> > > +                                  0x1a, 0x33, 0x33, 0x33, 0x52, 0x40=
, 0x47, 0x38, 0x34, 0x26,
> > > +                                  0x0e, 0x06, 0x7c, 0x61, 0x4f, 0x42=
, 0x3e, 0x2d, 0x31, 0x1a,
> > > +                                  0x33, 0x33, 0x33, 0x52, 0x40, 0x47=
, 0x38, 0x34, 0x26, 0x0e,
> > > +                                  0x06);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc0, 0xcc, 0x76, 0x12, =
0x34, 0x44, 0x44, 0x44,
> > > +                                  0x44, 0x98, 0x04, 0x98, 0x04, 0x0f=
, 0x00, 0x00, 0xc1);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc1, 0x54, 0x94, 0x02, =
0x85, 0x9f, 0x00, 0x6f,
> > > +                                  0x00, 0x54, 0x00);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc2, 0x17, 0x09, 0x08, =
0x89, 0x08, 0x11, 0x22,
> > > +                                  0x20, 0x44, 0xff, 0x18, 0x00);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc3, 0x87, 0x47, 0x05, =
0x05, 0x1c, 0x1c, 0x1d,
> > > +                                  0x1d, 0x02, 0x1e, 0x1e, 0x1f, 0x1f=
, 0x0f, 0x0f, 0x0d, 0x0d,
> > > +                                  0x13, 0x13, 0x11, 0x11, 0x24);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc4, 0x06, 0x06, 0x04, =
0x04, 0x1c, 0x1c, 0x1d,
> > > +                                  0x1d, 0x02, 0x1e, 0x1e, 0x1f, 0x1f=
, 0x0e, 0x0e, 0x0c, 0x0c,
> > > +                                  0x12, 0x12, 0x10, 0x10, 0x24);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc8, 0x21, 0x00, 0x31, =
0x42, 0x34, 0x16);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xca, 0xcb, 0x43);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xcd, 0x0e, 0x4b, 0x4b, =
0x20, 0x19, 0x6b, 0x06,
> > > +                                  0xb3);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xd2, 0xe3, 0x2b, 0x38, =
0x08);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xd4, 0x00, 0x01, 0x00, =
0x0e, 0x04, 0x44, 0x08,
> > > +                                  0x10, 0x00, 0x00, 0x00);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe6, 0x80, 0x09, 0xff, =
0xff, 0xff, 0xff, 0xff,
> > > +                                  0xff);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x12, 0x03, 0x20, =
0x00, 0xff);
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf3, 0x00);
> >
> > NAK.
> >
> > This sequence looks _exactly_ like the sequence in
> > panel-boe-th101mb31ig002-28a.c.
> >
> Hi Dmity
>
> We checked the panel-boe-th101mb31ig002-28a.c driver. The init_code is
> indeed very similar, but the ICs seem to be different from the names,
> and our panels and timings are also different. Do you want us to add
> compatibility with Starry in this driver
> panel-boe-th101mb31ig002-28a.c?
>
> thanks
>
hi dmitry.baryshkov

We tried to make modifications based on the
panel-boe-th101mb31ig002-28a.c driver, but we encountered some
problems.
For example, the panel-boe-th101mb31ig002-28a.c driver will get
"enable/reset" gpio in the probe() function, but our hardware design
only has "enable". This will cause an error to be returned in the
devm_gpiod_get function when we use this driver and the probe()
function will be interrupted.
How should we modify this? Can we re-judge the return value of the
devm_gpiod_get function?

thanks

> > > +
> > > +     mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
> > > +
> > > +     mipi_dsi_msleep(dsi_ctx, 120);
> > > +
> > > +     mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
> > > +     mipi_dsi_msleep(dsi_ctx, 20);
> > > +
> > > +     return dsi_ctx.accum_err;
> >
> > --
> > With best wishes
> > Dmitry

