Return-Path: <devicetree+bounces-79430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E2E9153E8
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 18:33:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B01F3286ABA
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 16:33:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB38619DF93;
	Mon, 24 Jun 2024 16:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gBghK/v9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E7119DF84
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 16:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719246802; cv=none; b=hN9QVyaT6AgsaiwKcAeaakxYdj1aXp2y2GBd6F2BdUyBETrvrHwdLdjg+Tny/un2T4p9wQ1rGK/0BclpLLjduk1Vhm4YUeGCstOSGDpFFHWKVOABERU9No1N8MBjI+pTsoeZOGZt6rul5Qty8nfgpa3nOOgflEySCQliAgCgJik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719246802; c=relaxed/simple;
	bh=dw+lzWNyQHqSYe5A61ozjs3tY/hYPkWhexWQJPWeyQA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KiXHLsNckVERS2YVeY03ssfcSowrOPdEmLhMK3/h9umwJfB271tCdujDeuOPxW/UouQkNeIT3Yu6pcGNJHJCOtddB8Yo8w97dtVmHBRQZmiL/OeRJcfq6M8Eg2Bg0Ik+/BIr/K9WIBOYyZQo+L8FiI/TPPpOacRoHhKYiis/D5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gBghK/v9; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dfb05bcc50dso3940040276.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 09:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719246799; x=1719851599; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GUwpeaNUdZ/Eg74Mr1NNiwSTPXp+vSE1N8cO2JJRSw8=;
        b=gBghK/v9qoRR5FxKHv01iskMEQxSLpP3NLrEM8d7svy4EtylbGpbd/UXxKfr4NwQjH
         vL6dE87vbtAAtt3XxKDi+qjrvNba/G8HoVkx6m3qKNl8F1i/ArO8har/C+s7nwvNyryT
         Jso/mKNPHAR4v8Rv3+XIvKcIX3Cme3iSP0B5QgvVPm3qHwXzsKMjIXmN0AG9WYadIPnp
         ER/puSf2SD7+iAZt7g/i8sPCtPsKXEtHIAPXBlrD0FtlDs6Y0K/q2pHDGhjHIVhKDlRO
         dxHka5oPKT2sCsxKplDmAV639nnCGrHPO4rz4daw+/XiyXEWGbfchI+hm3095IjdySz2
         ek6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719246799; x=1719851599;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GUwpeaNUdZ/Eg74Mr1NNiwSTPXp+vSE1N8cO2JJRSw8=;
        b=tHVIsk3DE87MAlQF5BvNQUFQx46eOCE05M9PnlvkaCOHmn+hqOhMP1ZoQm3HfAhosU
         H4+pJbniAk4dmJ78ebb0TjmghZETqIGcsBZyiCq9XuVwn4JdaYudoR8Z20PbnCWEcUQj
         gYi8UzSNtg6TbpcbS+NlI9bwLD4GPw0nHSzft0Z0GzQxvrzxBgNWKtZhyPwpCoTFQSDK
         9LI7Yv15RGMC+eKUK2Z6avqKOCdzRnm1WqovD0U9osVgR3ghIuHyMvOATb4E6gRvxo+t
         9M5pIe4sQWnpwJhRH6/ypv0/e3wbrl+vSJS+lXowP7JXiUWhzX/PbsdzCjmGujOfsiD2
         9arA==
X-Forwarded-Encrypted: i=1; AJvYcCUwbN4Hz9KH1o0MvVnh4j0KNi9lBxwRM7V/I2vaPMyKB7QMuuswmMd7bTEP60ajX7REceeDqplSFIOQVNYo9LjtV7DznA8FeEs04A==
X-Gm-Message-State: AOJu0Yyq6XhDWkMAikX6QN6T/4oQ0juIdDDpa7PHwPFciKUOnHKn0bWw
	EgmwpMlD6tSuk6hh6PnXdS91+OmfxHj3X/1YFh/Ag40Hp6tQ9s9ZtrKzgqxWGOunDlspwMPdVTI
	Vq8ziGkJDhBIgchYH+tJavjp3J97qpNMkfLxBVg==
X-Google-Smtp-Source: AGHT+IGsIHX1h777STxuAZY31c+MOswbbakLfpx8XYYTWe0uWHoumP4q/sTkA3EgMHwZ+5QbasMECc9ZR7Ny0JU6I5Y=
X-Received: by 2002:a25:a041:0:b0:e02:ab25:44aa with SMTP id
 3f1490d57ef6-e0303fc108bmr4211387276.47.1719246799196; Mon, 24 Jun 2024
 09:33:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240624141926.5250-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240624141926.5250-4-lvzhaoxiong@huaqin.corp-partner.google.com>
 <zvkl2wyqp3iem4ln4qkbhgvxafsfn5wkkmqwhufabm2gqs3eqw@vmqs3lx72ekk> <CAD=FV=V9tjY-g=w1Dwj+9oiTWfku8Bt48OUPJqYUqZaJrY8C1Q@mail.gmail.com>
In-Reply-To: <CAD=FV=V9tjY-g=w1Dwj+9oiTWfku8Bt48OUPJqYUqZaJrY8C1Q@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 24 Jun 2024 19:33:06 +0300
Message-ID: <CAA8EJprQD2_yL95wX5S5Gp-Fb-JdwdB3gKNC9VUZtmaaier6VQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/5] drm/panel: panel-jadard-jd9365da-h3: use wrapped
 MIPI DCS functions
To: Doug Anderson <dianders@google.com>
Cc: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>, dmitry.torokhov@gmail.com, 
	robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	jikos@kernel.org, benjamin.tissoires@redhat.co, hsinyi@google.com, 
	jagan@edgeble.ai, neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 24 Jun 2024 at 19:31, Doug Anderson <dianders@google.com> wrote:
>
> Hi,
>
> On Mon, Jun 24, 2024 at 8:27=E2=80=AFAM Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> >
> > On Mon, Jun 24, 2024 at 10:19:24PM GMT, Zhaoxiong Lv wrote:
> > > Remove conditional code and always use mipi_dsi_dcs_*multi() wrappers=
 to
> > > simplify driver's init/enable/exit code.
> > >
> > > Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.c=
om>
> > > ---
> > >  .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 793 +++++++++-------=
--
> > >  1 file changed, 390 insertions(+), 403 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drive=
rs/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > > index a9c483a7b3fa..e836260338bf 100644
> > > --- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > > +++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > > @@ -19,17 +19,13 @@
> > >  #include <linux/of.h>
> > >  #include <linux/regulator/consumer.h>
> > >
> > > -#define JD9365DA_INIT_CMD_LEN                2
> > > -
> > > -struct jadard_init_cmd {
> > > -     u8 data[JD9365DA_INIT_CMD_LEN];
> > > -};
> > > +struct jadard;
> > >
> > >  struct jadard_panel_desc {
> > >       const struct drm_display_mode mode;
> > >       unsigned int lanes;
> > >       enum mipi_dsi_pixel_format format;
> > > -     const struct jadard_init_cmd *init_cmds;
> > > +     int (*init)(struct jadard *jadard);
> > >       u32 num_init_cmds;
> > >  };
> > >
> > > @@ -50,46 +46,33 @@ static inline struct jadard *panel_to_jadard(stru=
ct drm_panel *panel)
> > >
> > >  static int jadard_enable(struct drm_panel *panel)
> > >  {
> > > -     struct device *dev =3D panel->dev;
> > >       struct jadard *jadard =3D panel_to_jadard(panel);
> > > -     struct mipi_dsi_device *dsi =3D jadard->dsi;
> > > -     int err;
> > > +     struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D jadard->ds=
i };
> > >
> > >       msleep(120);
> > >
> > > -     err =3D mipi_dsi_dcs_exit_sleep_mode(dsi);
> > > -     if (err < 0)
> > > -             DRM_DEV_ERROR(dev, "failed to exit sleep mode ret =3D %=
d\n", err);
> > > +     mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
> > >
> > > -     err =3D  mipi_dsi_dcs_set_display_on(dsi);
> > > -     if (err < 0)
> > > -             DRM_DEV_ERROR(dev, "failed to set display on ret =3D %d=
\n", err);
> > > +     mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
> > >
> > > -     return 0;
> > > +     return dsi_ctx.accum_err;
> > >  }
> > >
> > >  static int jadard_disable(struct drm_panel *panel)
> > >  {
> > > -     struct device *dev =3D panel->dev;
> > >       struct jadard *jadard =3D panel_to_jadard(panel);
> > > -     int ret;
> > > +     struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D jadard->ds=
i };
> > >
> > > -     ret =3D mipi_dsi_dcs_set_display_off(jadard->dsi);
> > > -     if (ret < 0)
> > > -             DRM_DEV_ERROR(dev, "failed to set display off: %d\n", r=
et);
> > > +     mipi_dsi_dcs_set_display_off_multi(&dsi_ctx);
> > >
> > > -     ret =3D mipi_dsi_dcs_enter_sleep_mode(jadard->dsi);
> > > -     if (ret < 0)
> > > -             DRM_DEV_ERROR(dev, "failed to enter sleep mode: %d\n", =
ret);
> > > +     mipi_dsi_dcs_enter_sleep_mode_multi(&dsi_ctx);
> > >
> > > -     return 0;
> > > +     return dsi_ctx.accum_err;
> > >  }
> > >
> > >  static int jadard_prepare(struct drm_panel *panel)
> > >  {
> > >       struct jadard *jadard =3D panel_to_jadard(panel);
> > > -     const struct jadard_panel_desc *desc =3D jadard->desc;
> > > -     unsigned int i;
> > >       int ret;
> > >
> > >       ret =3D regulator_enable(jadard->vccio);
> > > @@ -109,13 +92,9 @@ static int jadard_prepare(struct drm_panel *panel=
)
> > >       gpiod_set_value(jadard->reset, 1);
> > >       msleep(130);
> > >
> > > -     for (i =3D 0; i < desc->num_init_cmds; i++) {
> > > -             const struct jadard_init_cmd *cmd =3D &desc->init_cmds[=
i];
> > > -
> > > -             ret =3D mipi_dsi_dcs_write_buffer(dsi, cmd->data, JD936=
5DA_INIT_CMD_LEN);
> >
> > This function usesd mipi_dsi_dcs_write_buffer()...
> >
> > > -             if (ret < 0)
> > > -                     return ret;
> > > -     }
> > > +     ret =3D jadard->desc->init(jadard);
> > > +     if (ret)
> > > +             return ret;
> > >
> > >       return 0;
> >
> > [...]
> >
> > > +static int radxa_display_8hd_ad002_init_cmds(struct jadard *jadard)
> > > +{
> > > +     struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D jadard->ds=
i };
> > > +
> > > +     mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE0, 0x00);
> >
> > ... while your code uses mipi_dsi_dcs_write_seq_multi(), which
> > internally calls mipi_dsi_generic_write_multi(). These two function use
> > different packet types to send the payload. To be conservatite, please
> > use mipi_dsi_dcs_write_buffer_multi().
>
> Are you certain about this? I see that mipi_dsi_dcs_write_seq_multi()
> is just a wrapper on mipi_dsi_dcs_write_buffer_multi(). Specifically,
> I see:

I see, I was looking at mipi_dsi_generic_write_seq_multi() instead.
Please excuse me.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>
> #define mipi_dsi_dcs_write_seq_multi(ctx, cmd, seq...)                  \
>   do {                                                            \
>     static const u8 d[] =3D { cmd, seq };                     \
>     mipi_dsi_dcs_write_buffer_multi(ctx, d, ARRAY_SIZE(d)); \
>   } while (0)
>
> Certainly I could be confused...
>



--=20
With best wishes
Dmitry

