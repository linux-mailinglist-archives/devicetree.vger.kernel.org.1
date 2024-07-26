Return-Path: <devicetree+bounces-88236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A839E93CC51
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 03:18:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D34821C20E6B
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 01:18:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93B04A2A;
	Fri, 26 Jul 2024 01:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="b4Hlp2d2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1DD637E
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 01:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721956686; cv=none; b=AS+E4UvhjrV7PgUPlOxDv4yYGqgzstn/tyyzxsXFXBJarE1VDNbMSoWn8SLDfxZU4Ymc3acbfm4MJ6p4GGT/4nK62wZeNRiyd1TuJtemjwD6IqhWLkJYycj3LC5JaQNhQ6bA/uQZynuRmklSC/l5ciju/WDBimDCaUjdWevOm20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721956686; c=relaxed/simple;
	bh=mYsHdTOeYt1swSYCY8rpXqlt3bJ0YOLrFzaxg0SkMNc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Hy0DlG3LjP1ya27xJaj7cmkBXhhJGrttGfSKA0U6Dhl6JfHOK8uiizG9EvYOpk3yOda1fRwDXrsHpEL0A1IfVRksI6UXkSuElHzht0kbPZslzBkTyK8FzCpQElbU9yUIhVRrCW9TES8UfijrxzTS15C06FEITUCk3V4VDjZGl+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=b4Hlp2d2; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5a1337cfbb5so2074381a12.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 18:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721956683; x=1722561483; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l1Tm0qZROMdMNWyVkds+ya5ewxNbo9zl5sVp0ymnAU0=;
        b=b4Hlp2d2RVOFiWKF2pwHp6ABIx8Ce8A32PtQ1sXGPCQw739yPb6dUl7HN8DLnfgXO7
         2By4ZUnzBXAyW3CYTr3xigZOCLrfR8fSSG1G3gfWvEofliAPTjqmugs/S+b0TEExkIuq
         kefrBPMyOSymlEWJwFLi9vGZX1/PxLhb5iuPb5Hh76FitvR2yp8S6Lr8WRTsV/yhKLsc
         7rjNynu1zfeXONXcmJW46FDpuMkPLV0CjXOLTppJxX2WEJac1fzS+QY8D2uvVQOatXll
         x/6ZhT3EYmIlxFV7EGVU+bBfg8dL/Q5JDF+l2Uua7J4LQW6jQmfj7JD2uIKMExG6wa1L
         zsUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721956683; x=1722561483;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l1Tm0qZROMdMNWyVkds+ya5ewxNbo9zl5sVp0ymnAU0=;
        b=I6Q2mDCvzDfWtmRAozBAMx6fRb+tD5dpolvYxBGYTxSCN9XO/7YDvcKxGYjXlHlnMl
         rODro0WejEtW2eEpemffHBOJg/cxDbrbglZSAeMZIgEWi+9chymoNTe4MBhiQS1ZlxnG
         hN5nl0S7RJGuhXnlTV0IKW4oDQM0aE2LLtXqFvviyTXcevurMNGMkTrYtwtU6VUbHCW0
         zzREI6DcELHhiWZlzioQyoJu4wryVnrJgY63ALvekOz6ptN+f194o4xX11HWVhl2Yr5o
         G+S09KjV/Esi1hgdS/yYIIow+oDYbzlhFM++yh+aC6NNgwKKVUx5AGZJ6VrgTUQZ9H2D
         5ZDw==
X-Forwarded-Encrypted: i=1; AJvYcCUiIgA1iM8PI1nRt/N4XTeyjAsAL9Ya42KxW3RfuOrpED3zVy0URraud/BdDGy+XRCkmdX4crQp1RVZi5HpdKjUKOIqrS+jgSvh6g==
X-Gm-Message-State: AOJu0YzfOo+9ASXgJ/U73caId/jVrcLwT65Qa669zd+SyzAXpLzFLyWD
	T0BzptNJ9LHsLY+oovZsuDzwIkno5fD6M6S4F1MYODVblqsIuFvI71hH+pd8yZN4VP3gHKa7k1/
	JHmTj7I1mX6VzGbwYGjzVl7vhmvf0nX8PgE1LLA==
X-Google-Smtp-Source: AGHT+IEAhtBKbkjoEDahdTXkBpr/w1906ckM/RBw1+l4MKKccSVUTrt/TnoqtC45S9qzABZcVv7K3HyOpvUi4prADh8=
X-Received: by 2002:a05:6402:3514:b0:5a2:b867:3bcc with SMTP id
 4fb4d7f45d1cf-5ac2c5a68a4mr3034549a12.38.1721956682633; Thu, 25 Jul 2024
 18:18:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240725083245.12253-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240725083245.12253-2-lvzhaoxiong@huaqin.corp-partner.google.com> <87o76lzwvr.fsf@intel.com>
In-Reply-To: <87o76lzwvr.fsf@intel.com>
From: zhaoxiong lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Date: Fri, 26 Jul 2024 09:17:51 +0800
Message-ID: <CA+6=WdS5QKMVX2euxdeDqCoHrCpWuqB_cu5vzHGUNdUq4NnPZw@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] drm/panel: jd9365da: Move the sending location of
 the 11/29 command
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	dianders@chromium.org, hsinyi@google.com, airlied@gmail.com, daniel@ffwll.ch, 
	jagan@edgeble.ai, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 25, 2024 at 4:41=E2=80=AFPM Jani Nikula <jani.nikula@linux.inte=
l.com> wrote:
>
> On Thu, 25 Jul 2024, Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google=
.com> wrote:
> > Move the 11/29 command from enable() to init() function
>
> OOC, what is the "11/29" command?
>
> BR,
> Jani.

hi Jani
Sorry, maybe I didn't describe it clearly. The 11/29 commands are sent
by these two functions.

mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);

MIPI_DCS_EXIT_SLEEP_MODE =3D 0x11,
MIPI_DCS_SET_DISPLAY_ON=3D 0x29,

BR,
>
> >
> > As mentioned in the patch:
> > https://lore.kernel.org/all/20240624141926.5250-2-lvzhaoxiong@huaqin.co=
rp-partner.google.com/
> >
> > Our DSI host has different modes in prepare() and enable()
> > functions. prepare() is in LP mode and enable() is in HS mode.
> > Since the 11/29 command must also be sent in LP mode,
> > so we also move 11/29 command to the init() function.
> >
> > After moving the 11/29 command to the init() function,
> > we no longer need additional delay judgment, so we delete
> > variables "exit_sleep_to_display_on_delay_ms" and
> > "display_on_delay_ms".
> >
> > Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com=
>
> > ---
> >  .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  | 59 ++++++++++---------
> >  1 file changed, 32 insertions(+), 27 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers=
/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > index 04d315d96bff..ce73e8cb1db5 100644
> > --- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > +++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > @@ -31,8 +31,6 @@ struct jadard_panel_desc {
> >       bool reset_before_power_off_vcioo;
> >       unsigned int vcioo_to_lp11_delay_ms;
> >       unsigned int lp11_to_reset_delay_ms;
> > -     unsigned int exit_sleep_to_display_on_delay_ms;
> > -     unsigned int display_on_delay_ms;
> >       unsigned int backlight_off_to_display_off_delay_ms;
> >       unsigned int display_off_to_enter_sleep_delay_ms;
> >       unsigned int enter_sleep_to_reset_down_delay_ms;
> > @@ -66,26 +64,6 @@ static inline struct jadard *panel_to_jadard(struct =
drm_panel *panel)
> >       return container_of(panel, struct jadard, panel);
> >  }
> >
> > -static int jadard_enable(struct drm_panel *panel)
> > -{
> > -     struct jadard *jadard =3D panel_to_jadard(panel);
> > -     struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D jadard->dsi =
};
> > -
> > -     msleep(120);
> > -
> > -     mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
> > -
> > -     if (jadard->desc->exit_sleep_to_display_on_delay_ms)
> > -             mipi_dsi_msleep(&dsi_ctx, jadard->desc->exit_sleep_to_dis=
play_on_delay_ms);
> > -
> > -     mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
> > -
> > -     if (jadard->desc->display_on_delay_ms)
> > -             mipi_dsi_msleep(&dsi_ctx, jadard->desc->display_on_delay_=
ms);
> > -
> > -     return dsi_ctx.accum_err;
> > -}
> > -
> >  static int jadard_disable(struct drm_panel *panel)
> >  {
> >       struct jadard *jadard =3D panel_to_jadard(panel);
> > @@ -202,7 +180,6 @@ static const struct drm_panel_funcs jadard_funcs =
=3D {
> >       .disable =3D jadard_disable,
> >       .unprepare =3D jadard_unprepare,
> >       .prepare =3D jadard_prepare,
> > -     .enable =3D jadard_enable,
> >       .get_modes =3D jadard_get_modes,
> >       .get_orientation =3D jadard_panel_get_orientation,
> >  };
> > @@ -382,6 +359,12 @@ static int radxa_display_8hd_ad002_init_cmds(struc=
t jadard *jadard)
> >
> >       jd9365da_switch_page(&dsi_ctx, 0x00);
> >
> > +     mipi_dsi_msleep(&dsi_ctx, 120);
> > +
> > +     mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
> > +
> > +     mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
> > +
> >       return dsi_ctx.accum_err;
> >  };
> >
> > @@ -608,6 +591,12 @@ static int cz101b4001_init_cmds(struct jadard *jad=
ard)
> >       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE6, 0x02);
> >       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xE7, 0x0C);
> >
> > +     mipi_dsi_msleep(&dsi_ctx, 120);
> > +
> > +     mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
> > +
> > +     mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
> > +
> >       return dsi_ctx.accum_err;
> >  };
> >
> > @@ -831,6 +820,16 @@ static int kingdisplay_kd101ne3_init_cmds(struct j=
adard *jadard)
> >
> >       jd9365da_switch_page(&dsi_ctx, 0x00);
> >
> > +     mipi_dsi_msleep(&dsi_ctx, 120);
> > +
> > +     mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
> > +
> > +     mipi_dsi_msleep(&dsi_ctx, 120);
> > +
> > +     mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
> > +
> > +     mipi_dsi_msleep(&dsi_ctx, 20);
> > +
> >       return dsi_ctx.accum_err;
> >  };
> >
> > @@ -859,8 +858,6 @@ static const struct jadard_panel_desc kingdisplay_k=
d101ne3_40ti_desc =3D {
> >       .reset_before_power_off_vcioo =3D true,
> >       .vcioo_to_lp11_delay_ms =3D 5,
> >       .lp11_to_reset_delay_ms =3D 10,
> > -     .exit_sleep_to_display_on_delay_ms =3D 120,
> > -     .display_on_delay_ms =3D 20,
> >       .backlight_off_to_display_off_delay_ms =3D 100,
> >       .display_off_to_enter_sleep_delay_ms =3D 50,
> >       .enter_sleep_to_reset_down_delay_ms =3D 100,
> > @@ -1074,6 +1071,16 @@ static int melfas_lmfbx101117480_init_cmds(struc=
t jadard *jadard)
> >       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe6, 0x02);
> >       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe7, 0x06);
> >
> > +     mipi_dsi_msleep(&dsi_ctx, 120);
> > +
> > +     mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
> > +
> > +     mipi_dsi_msleep(&dsi_ctx, 120);
> > +
> > +     mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
> > +
> > +     mipi_dsi_msleep(&dsi_ctx, 20);
> > +
> >       return dsi_ctx.accum_err;
> >  };
> >
> > @@ -1102,8 +1109,6 @@ static const struct jadard_panel_desc melfas_lmfb=
x101117480_desc =3D {
> >       .reset_before_power_off_vcioo =3D true,
> >       .vcioo_to_lp11_delay_ms =3D 5,
> >       .lp11_to_reset_delay_ms =3D 10,
> > -     .exit_sleep_to_display_on_delay_ms =3D 120,
> > -     .display_on_delay_ms =3D 20,
> >       .backlight_off_to_display_off_delay_ms =3D 100,
> >       .display_off_to_enter_sleep_delay_ms =3D 50,
> >       .enter_sleep_to_reset_down_delay_ms =3D 100,
>
> --
> Jani Nikula, Intel

