Return-Path: <devicetree+bounces-104474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 836FD97E885
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 11:22:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B45001C21282
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 09:22:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3AF1194A60;
	Mon, 23 Sep 2024 09:22:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="yb6Hynkb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D82F194A48
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 09:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727083345; cv=none; b=lbiZoaHUbYeJOmQrhXz5SKHu+dFtaYqkJNDxS1mxJT55+kncmphRtoLEqIbBiEBmD1qfzQ2+R81AR2H3AyKzLkB8YPPOhzy0BPGYdOB/+BqUcnaS/rp9aoQ8pz60Z7wAyzZixLooybIQtR+XxqjCXeHTNxpwnQJRy8WEsLWJIKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727083345; c=relaxed/simple;
	bh=CRRnhXLQ7mhGE4FBImEnr4E7UsasvROFgtoUqjLV1wc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GFu+iC6g4d5DNAKPYhdG2Dt6Ou1ZqT2IxfAuFCNGkq+E2iuolQactCW5zXgSz5ggAevfWlKeswcOpRfkP38mFrXrHeCbvMg38PyfueTOsciZtoDlOMNoDVvEH1uYzpK3m3Mb15ZenOkRnrRVfbjSa/5e8MYFZUKw1GURSJglQ+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=yb6Hynkb; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-374d1dd1e75so315952f8f.1
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 02:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1727083342; x=1727688142; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xwUQnypDxT6RDd7XTRy2WwxGmTerfWbVABZQVlkOeow=;
        b=yb6HynkbL98aJ5gJ3IUJ/SC/BmIEgEOxHZd0ZmIXwqSHAeHa0rDro1YZ3imqfU4pLc
         o/WonwLnNNjGmMVWfSan55JSHNQ6TeSLlAZJhd335xZ+PxijO9Z/1lDQRsIrvyLiCPL9
         TglfzYn+CQf7tR3S+Pj2L+19Ykg1U7XIpMH8AZt9OuQQpMRcBHYiPcle06kp4zd1Gyrr
         RknhRHP2Ieo+AvaStVcokKv1TcZz51UvBkGzDsu0a97kHnp7Ncurhe2fz7bwwTYSQELC
         X7pNIjRDfRtzn2hgaus3SC1uI483SvD+Jx/1vwDaxJsbay3KHVA7B2NZG/5wh7NQV3kL
         UzDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727083342; x=1727688142;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xwUQnypDxT6RDd7XTRy2WwxGmTerfWbVABZQVlkOeow=;
        b=m/LiHB7uiFbZ1Pc63MqUY/SMKJRRpGW9lQNa9Zi3L3P1wMMh5d/oGfliMkpS5ZOJSz
         ej4sEsvVpyBlCTMNsr8tOUc37fp+2NWH4QXqINh5ou90mA5aPqf8KMKO1wUMVLaukaB6
         cboOQp6lK+Jwjg+/wo91Ovq4nhI5kJaMXmjFz+Td7MDHGZ/UOm2J6sVx0qIB4qHz3BDt
         xGR1UCFICxDEQ1Tv8nKaEyvAhNpIYi/JD1pgd3Ek2+iDuGhJX5VA4d+BuhDFmjg+TW5z
         LIlaD2Lcw/9pCgkKvyOXLEdwmqqlJvC+/13i1JqdWqbHWlMrkjmOPbQKUSXuWCCjRmA/
         QXfg==
X-Forwarded-Encrypted: i=1; AJvYcCUa7hKlGrdVjZf+kR0HOGBDSkw08oEEuCfhZYpK7kEMt/ecnohMr7LhhW6z4gmALbPpEWCYJ6adA6vO@vger.kernel.org
X-Gm-Message-State: AOJu0YzEr+dZw/sshnq+3z9FbmfhZqbhV8+ky+CoCKlzT9x/P2093E11
	n/5CT1wrRQF9fGopSyN+ap74vOCNqSjMx0O6DLxl1RO9oJ+zv/fRZ1xVQli56Q0FkrecyYNGHZr
	Hf7uCYN4rUgvDlpf0BQK+aicgVdgUjWlePH1TAg==
X-Google-Smtp-Source: AGHT+IHN+zF5hbvfwjDfpVDFE8mU4UUNZpEPJVu1r+2YULND9yymePJ6p+O10JtC+wjUV3/Ye5fBb6VyMI5kZIMZfJ0=
X-Received: by 2002:a05:6000:1a8b:b0:374:c796:4c3e with SMTP id
 ffacd0b85a97d-37a41fdc35amr2860089f8f.0.1727083342232; Mon, 23 Sep 2024
 02:22:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240915080830.11318-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240915080830.11318-2-lvzhaoxiong@huaqin.corp-partner.google.com> <CAA8EJpp1ZHFFY9M3i47d658Q-m3ggJzhxSRUapX=tckgdAwcNg@mail.gmail.com>
In-Reply-To: <CAA8EJpp1ZHFFY9M3i47d658Q-m3ggJzhxSRUapX=tckgdAwcNg@mail.gmail.com>
From: zhaoxiong lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Date: Mon, 23 Sep 2024 17:22:11 +0800
Message-ID: <CA+6=WdS4i3tWei=zzfS_-OW8hs-tgnifOLbNCirGpTx61xEtCQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] drm/panel: jd9365da: Modify Kingdisplay and Melfas
 panel timing
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, sam@ravnborg.org, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	airlied@gmail.com, simona@ffwll.ch, dianders@chromium.org, hsinyi@google.com, 
	awarnecke002@hotmail.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 16, 2024 at 1:11=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Sun, 15 Sept 2024 at 10:10, Zhaoxiong Lv
> <lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
> >
> > In order to meet the timing, remove the delay between "backlight off"
> > and "display off"
> >
> > Removing variables: display_off_to_enter_sleep_delay_ms
>
> This is not enough. If this is a fix, then describe why the original
> commit is incorrect, provide necessary explanation, details, etc.
> Otherwise it looks as if you are removing the delay that was necessary
> for other panels
>
> Also if this is a fix, it should be properly notated with the Fixes
> tag, maybe cc:stable, etc.
>
> In its current state: NAK.

hi Dmitry

Our machine encountered an issue where, after entering S3 in the black
screen state, there is a probability that the screen remains black
after waking up. It seems that the DRM runtime resume has not yet
completed, but the system has already started the suspend process.
After reducing the delay for disable, this issue no longer occurs,
Therefore, under the premise of meeting the timing requirements, we
removed the delay between "backlight off" and "display off".

Previously,  "backlight_off_to_display_off_delay_ms" was added between
"backlight off" and "display off"  to prevent "display off" from being
executed when the backlight is not fully powered off, which may cause
a white screen. However, we removed this
"backlight_off_to_display_off_delay_ms" and found that this situation
did not occur. Therefore, in order to solve the problem mentioned
above, we removed this delay.

This is the timing specification for the two panels:
1.  Kingdisplay panel timing spec:
https://github.com/KD54183/-JD9365DA_Power-On-Off-Sequence_V0120240923
2.  LMFBX101117480 timing spec: https://github.com/chiohsin-lo/TDY-JD_LIB

thanks

>
> >
> > Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com=
>
> > ---
> >  drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c | 6 ------
> >  1 file changed, 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers=
/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > index 44897e5218a6..2f8af86bc2a0 100644
> > --- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > +++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
> > @@ -31,7 +31,6 @@ struct jadard_panel_desc {
> >         bool reset_before_power_off_vcioo;
> >         unsigned int vcioo_to_lp11_delay_ms;
> >         unsigned int lp11_to_reset_delay_ms;
> > -       unsigned int backlight_off_to_display_off_delay_ms;
> >         unsigned int display_off_to_enter_sleep_delay_ms;
> >         unsigned int enter_sleep_to_reset_down_delay_ms;
> >  };
> > @@ -69,9 +68,6 @@ static int jadard_disable(struct drm_panel *panel)
> >         struct jadard *jadard =3D panel_to_jadard(panel);
> >         struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D jadard->ds=
i };
> >
> > -       if (jadard->desc->backlight_off_to_display_off_delay_ms)
> > -               mipi_dsi_msleep(&dsi_ctx, jadard->desc->backlight_off_t=
o_display_off_delay_ms);
> > -
> >         mipi_dsi_dcs_set_display_off_multi(&dsi_ctx);
> >
> >         if (jadard->desc->display_off_to_enter_sleep_delay_ms)
> > @@ -858,7 +854,6 @@ static const struct jadard_panel_desc kingdisplay_k=
d101ne3_40ti_desc =3D {
> >         .reset_before_power_off_vcioo =3D true,
> >         .vcioo_to_lp11_delay_ms =3D 5,
> >         .lp11_to_reset_delay_ms =3D 10,
> > -       .backlight_off_to_display_off_delay_ms =3D 100,
> >         .display_off_to_enter_sleep_delay_ms =3D 50,
> >         .enter_sleep_to_reset_down_delay_ms =3D 100,
> >  };
> > @@ -1109,7 +1104,6 @@ static const struct jadard_panel_desc melfas_lmfb=
x101117480_desc =3D {
> >         .reset_before_power_off_vcioo =3D true,
> >         .vcioo_to_lp11_delay_ms =3D 5,
> >         .lp11_to_reset_delay_ms =3D 10,
> > -       .backlight_off_to_display_off_delay_ms =3D 100,
> >         .display_off_to_enter_sleep_delay_ms =3D 50,
> >         .enter_sleep_to_reset_down_delay_ms =3D 100,
> >  };
> > --
> > 2.17.1
> >
>
>
> --
> With best wishes
> Dmitry

