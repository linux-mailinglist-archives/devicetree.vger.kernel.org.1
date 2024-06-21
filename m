Return-Path: <devicetree+bounces-78617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 088D1912DE9
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 21:34:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B196A283601
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 19:34:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2D7217BB20;
	Fri, 21 Jun 2024 19:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="tFGoFt+M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F60017BB02
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 19:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718998439; cv=none; b=TaxjbQwJDFYfWTVlhSaZf4zbkz/UByvtzVnO+BzYBIAIVjRyISruPZKoLlXvuMrRvqs3ph1S77L1QMOIQnqW42ZoIOuzK1oC332JPDI/vR4ZkFTZQ6WBABmoHGzW3kg7Xc04v0pxyAaZ8tD/Nz+VR8vVLX1z/CwY3dHUo7CErKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718998439; c=relaxed/simple;
	bh=TVeaGZGL7PhWYDFTzE/VkEzyRHYSQdt5HbkfHA3+FWM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AdzRcO08g+MuFza3V5lhx66audrj6DozfvDTRBpj9B1TqqnLD4TZcmOQlpjXZIQZkD7M4Fo/hsc7Oy7mKBQgchLdaD7xlIDe2M6eY+CnlmLxlLLUCocT6DALlkbvK5VGMSmldo5TDkedplsjvCKxSfvDknXMY8nnjNwE8/JNEJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=tFGoFt+M; arc=none smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-44056f72257so513491cf.0
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 12:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1718998437; x=1719603237; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6nDGM5BfE4nBzMNctKXy8FB1ab1trnMB0GkxkRe1UUc=;
        b=tFGoFt+MNrMRrE1niEkptGD7iOQ25XI6t0mQouqCu2fUfiueosmAhV74St9dvw2TGi
         NKzKuxhq5nwrWRVesY+ksBOI+5A4wyhQwdviIO9Hs/AFkw0Uu5craHX0bXfEpWGXqVbp
         7JJnP2n6DQi2kLRCha3mCmeGkPdjaB+a1QZmnezgele7+3O64AnjMRMjg2pb0Yfy1drh
         jR1oeLVDTT5iSmVAdFJrEhQGtWLhra+jCEA3/dkGSTvuk39XbM6jVpOhz8+Ku8otojl2
         K5SpucVzVF967lWOKD1ta3QxUKGgPezJ3aD4nqExtW8d/GMtCXVheUqwnyuveq2XpPSH
         0kfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718998437; x=1719603237;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6nDGM5BfE4nBzMNctKXy8FB1ab1trnMB0GkxkRe1UUc=;
        b=NqCF9v3HupywgbrbYU63QtDWxKEr60V+e5rdQKubjvVPqBehiT7skXTNGDs+usu0We
         YsH+IUOTYOD7nUd7V6YBP9gWmbmSGGCfyGCJtXB62f3ZbLfTfo5hSTGEPImyW1lxE6sz
         cHbM1gGGI+Q6hysuv++BaqVtjFyw4i/HjLSXHBaH5XDp93emrIYqlnMetySgNsmU1ViI
         fIzoq796Dn76jf/vE1lc7LzdDlc9hogZeB/sOSN+z7huMltzuqSZa7hbA+JORXCuwN4T
         WRi79GRXZr/qjTr+y7wbXnJPcUWlbVD39nfp+rIpDhYWYBFsw5MOvXUU/NOZXHVmAXO2
         PMQg==
X-Forwarded-Encrypted: i=1; AJvYcCXzDFzgfLif+7uykLkaD3jH1z15NS+b/HjKUEQFUrb0ybL2dfahI3D9smtVLDrodnI7BXMHRupEgEOqi82uc/F5dknbUdX6+KnhlQ==
X-Gm-Message-State: AOJu0YwmGeDI4clJ0A9HVFRbEn7nHzL69TB6DN5Q+6UtmwoLmC99ShbN
	yAkuV2i3/hs9GzOr+poE706FN/F7Y56XjXv4yuQKa3QkVrVazi9a77ABKtJxVzsb2XtsFfw6iQ2
	79GIBX4Cn/L0jx3ssTUyUR0/I5m3+Q4ve6gjp
X-Google-Smtp-Source: AGHT+IFKHeWXsrcarZ99HrTif/DeNk5RsxsZB9FIwbEmo1+KbBeOQrbwcbUobI8IcpYZWtf/8bWvMvgMlUUgnZ+ODWo=
X-Received: by 2002:a05:622a:15c6:b0:441:4920:1fc4 with SMTP id
 d75a77b69052e-444ce34a72emr91451cf.28.1718998436717; Fri, 21 Jun 2024
 12:33:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240620080509.18504-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240620080509.18504-4-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240620080509.18504-4-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@google.com>
Date: Fri, 21 Jun 2024 12:33:45 -0700
Message-ID: <CAD=FV=UTtE1UjxtMWOxTWNb9S_FSt=oTOhRJpVFAzD=MjB83QA@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] drm/panel: jd9365da: Support for kd101ne3-40ti
 MIPI-DSI panel.
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	benjamin.tissoires@redhat.co, hsinyi@google.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jun 20, 2024 at 1:05=E2=80=AFAM Zhaoxiong Lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> @@ -31,6 +31,15 @@ struct jadard_panel_desc {
>         enum mipi_dsi_pixel_format format;
>         const struct jadard_init_cmd *init_cmds;
>         u32 num_init_cmds;
> +       bool lp11_before_reset;
> +       bool reset_before_power_off_vcioo;
> +       unsigned int vcioo_to_lp11_delay;
> +       unsigned int lp11_to_reset_delay;
> +       unsigned int exit_sleep_to_display_on_delay;
> +       unsigned int display_on_delay;
> +       unsigned int backlight_off_to_display_off_delay;
> +       unsigned int display_off_to_enter_sleep_delay;
> +       unsigned int enter_sleep_to_reset_down_delay;

If the above delays are in milliseconds please add a "_ms" suffix to
the variables.

It's also surprising to me that you need all these extra delays /
boolean options if this is really the same underlying chipset. Any
idea why they didn't need it?


> @@ -53,6 +62,7 @@ static int jadard_enable(struct drm_panel *panel)
>         struct device *dev =3D panel->dev;
>         struct jadard *jadard =3D panel_to_jadard(panel);
>         struct mipi_dsi_device *dsi =3D jadard->dsi;
> +       struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D jadard->dsi =
};
>         int err;
>
>         msleep(120);
> @@ -61,10 +71,16 @@ static int jadard_enable(struct drm_panel *panel)
>         if (err < 0)
>                 DRM_DEV_ERROR(dev, "failed to exit sleep mode ret =3D %d\=
n", err);
>
> +       if (jadard->desc->exit_sleep_to_display_on_delay)
> +               mipi_dsi_msleep(dsi_ctx, jadard->desc->exit_sleep_to_disp=
lay_on_delay);

mipi_dsi_msleep() is really only useful if you're using it between a
whole bunch of other "_multi" functions. If you just have a simple
"msleep()" then just call "msleep()".

...but really you should be transitioning the function to just use
more "_multi" functions since they exist for the other functions
called here. In other words, this function should look something like:

mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
if (...)
  mipi_dsi_msleep(...)

mipi_dsi_dcs_set_display_on_multi

if (...)
  mipi_dsi_msleep(...)

return dsi_ctx.accum_err;

I would also note that you seem to be missing commit 66055636a146
("drm/mipi-dsi: fix handling of ctx in mipi_dsi_msleep"), which
changes the first argument of mipi_dsi_msleep() to be a pointer.


> @@ -72,16 +88,26 @@ static int jadard_disable(struct drm_panel *panel)
>  {
>         struct device *dev =3D panel->dev;
>         struct jadard *jadard =3D panel_to_jadard(panel);
> +       struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D jadard->dsi =
};
>         int ret;
>
> +       if (jadard->desc->backlight_off_to_display_off_delay)
> +               mipi_dsi_msleep(dsi_ctx, jadard->desc->backlight_off_to_d=
isplay_off_delay);
> +
>         ret =3D mipi_dsi_dcs_set_display_off(jadard->dsi);

Similar comments here to the enable function. Use more _multi which
then makes mipi_dsi_msleep() make sense.


> @@ -100,6 +127,20 @@ static int jadard_prepare(struct drm_panel *panel)
>         if (ret)
>                 return ret;
>
> +       if (jadard->desc->vcioo_to_lp11_delay)
> +               mipi_dsi_msleep(dsi_ctx, jadard->desc->vcioo_to_lp11_dela=
y);
> +
> +       if (jadard->desc->lp11_before_reset) {
> +               ret =3D mipi_dsi_dcs_nop(jadard->dsi);
> +               if (ret)
> +                       return ret;
> +
> +               usleep_range(1000, 2000);

Why do you need this extra sleep. For any panel that needs it can't
the "lp11_to_reset_delay" just be increased by 1ms?


> @@ -582,6 +628,233 @@ static const struct jadard_panel_desc cz101b4001_de=
sc =3D {
>         .num_init_cmds =3D ARRAY_SIZE(cz101b4001_init_cmds),
>  };
>
> +static const struct jadard_init_cmd kingdisplay_kd101ne3_init_cmds[] =3D=
 {
> +       { .data =3D { 0xe0, 0x00 } },
> +       { .data =3D { 0xe1, 0x93 } },
> +       { .data =3D { 0xe2, 0x65 } },
> +       { .data =3D { 0xe3, 0xf8 } },

As mentioned in my reply to patch #1, please don't add new panels that
use the table-based approach. Before adding your new panel to this
driver have a patch that transitions it to a per-panel init() function
that uses mipi_dsi_dcs_write_seq_multi().

