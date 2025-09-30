Return-Path: <devicetree+bounces-222628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E11B6BAB752
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 07:13:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3D47E1925407
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 05:14:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36B69263C9E;
	Tue, 30 Sep 2025 05:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ib614JWY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5124325A2DA
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759209218; cv=none; b=eHOhFC3ecugfnOGUQL5CceYrIQqThh0UlQDBn7M6LmrCXW0PTylkU47q+emrUzyDCmA5m6uH8XCNgrLYD9fHLVl7CCBl6Raqj6ea5KX4OqFwHuMGCJLk5HQtPSFrUXPHybZf/BQXSKiBqqtLzhMmxE8aL1YQqGuhyomSqubXmEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759209218; c=relaxed/simple;
	bh=zR+St/HxLYMFS1C5us1j6M4yr2Wg2EyVyj1kyzZh8o8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EYp9IZuDF2lp1Uw1lz2iLN3WJw19w2AxSr/UpKp5sxLgjaFtyGVmKrryOIS2W7H4keJ2IsxPe6vmvv5B6eKEG3JUFmxUcGqeMpFbw705d2N3bKUJzhu4CKZfV27xiceKox44hdBXm7gs6Www6hjRTWX9VhpSPLFlYsfopscfWdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ib614JWY; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-46e326e4e99so27760985e9.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 22:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759209214; x=1759814014; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=28sCSdkIVoMtYwQnNKzmgCLDZmhKADtDsinxYnd+TVA=;
        b=Ib614JWYHrvdd6S2KXZ7+jFClqEb11P9CiaN8GCpGfIAiXpNoSDJz9JEEhtCGeVwf6
         S8HpnxiAyLGJYWdE5bUUNSS2C9HS+5s/9aBefMCZm0kVy/ppITF68Fo8qWx4zh81OGWN
         N9+dmGHJ20sOGqcYWMiICTH+kJME7qdM7r8tjX3AqoqBugQoFiaSodz87cf9y3r1IDFh
         M788N/riVsxOS+DoXX2HKPCz/GzJwSnO9VMF3gyqw2fDi6NTl9LVJ4j6Cd/BV38bwN4L
         9Dtu73Bb7h80hmCkO03QUU34G0YL78cTfxVfRQth6lIoqyVpEcC8SuNaDkZRUT3A4f1Z
         EUOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759209214; x=1759814014;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=28sCSdkIVoMtYwQnNKzmgCLDZmhKADtDsinxYnd+TVA=;
        b=NQF841keBwKF05pCTLhDsM6JVX0RoyijO2ChSQfsiozLcAPbBxgZ1Jkqp5tPthS5cf
         h9EyfbcskOsooseFO0Gpy1JXuGFf4/BOMABfC3MWID83ABguKP/utpXXnba3dyBZmnPJ
         9fGrR8AgE6Z6YLRfVWIZ6+k3YpDhZXeIXzIomP3j/5+6TP4kE9ex9d3Ah329rbscn/Bv
         7JjmFmPPjyFCL2KfZQhWMA0mCa18o0Gn46D2UjTK8PJ+45d2bv25735KMbLFbKkUhHTg
         RS2SNI6FbOkz9MzeXYhEdHvI0dH7zkj6fMWHDvVhGRJv6YyktvMALDpRQmT/b68756+E
         cJIw==
X-Forwarded-Encrypted: i=1; AJvYcCUgzAdgMAilDrvmj1hQYhieBcm8Yi10Pvu00W1k7O+ann71JB3WufQn8hdcEhL6/VSWevJNv+hQBaru@vger.kernel.org
X-Gm-Message-State: AOJu0YxjQtasjZj96IxmNz8M4ncPaPNFD7KD2WkPXnx0vJWbeyg74YhN
	/0XiO+xEnGdTMcgyMTSqk9UxMqVUp5tPa5+tBmcRfFNnrz6+IOdCP4GIthg/59XO4tGDoqoXeXI
	35hKTnX5ZlIa8tIsvzh0Z6iNQwx3oxcU=
X-Gm-Gg: ASbGnctHILTCe9dWaLAdy8FQ+73udi5HGqIZCmZBcVTyyybNTpUpe2CPCq4fisFN7Io
	A9HzdJabeuSYPGAAf0UM5kCgwZxpKNZvZgL2jTr5B71q9ER2OwTI+s3hleA7evtLxU8i2mTkIpz
	XzNVf7TlRbbOUWt2wpoKBF9sTnc6dl5WCYQy8F7RXSd1i+qn5Mv4I89IMUAk0sDc8wZPIrl4DrE
	jjdKFApbIJuB9VqmqneOw6cF+AX5ETc
X-Google-Smtp-Source: AGHT+IGNsNom4Su7QU2fEFnEBxj4//549PM/wOR2kmlflhsMvTkZdTQKcaYW+oCjOcHIQs7uwi6qpfRZ1OSv0kwES0U=
X-Received: by 2002:a5d:64c6:0:b0:3f0:8d2f:5ed9 with SMTP id
 ffacd0b85a97d-424107810d7mr2398569f8f.1.1759209214395; Mon, 29 Sep 2025
 22:13:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250929142455.24883-1-clamor95@gmail.com> <20250929142455.24883-3-clamor95@gmail.com>
 <CAD=FV=WH5rsQR0vnsdZqfA-K-4AWSyOOfbe3g1H7pYCG0AigZw@mail.gmail.com>
In-Reply-To: <CAD=FV=WH5rsQR0vnsdZqfA-K-4AWSyOOfbe3g1H7pYCG0AigZw@mail.gmail.com>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 30 Sep 2025 08:13:23 +0300
X-Gm-Features: AS18NWAktzvo6CdHqu1-L08mlA4famWpZ3H0hjW0E_8qfU4dix6TX2hosFTbY0I
Message-ID: <CAPVz0n2Prw0ZoQhrodobmSpAu7XV6aX=NV=2ee0RwL3H5hWARg@mail.gmail.com>
Subject: Re: [PATCH v1 2/8] gpu/drm: panel: add support for LG LD070WX3-SL01
 MIPI DSI panel
To: Doug Anderson <dianders@chromium.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D0=B2=D1=82, 30 =D0=B2=D0=B5=D1=80. 2025=E2=80=AF=D1=80. =D0=BE 06:20 Doug=
 Anderson <dianders@chromium.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> Hi,
>
> On Mon, Sep 29, 2025 at 7:25=E2=80=AFAM Svyatoslav Ryhel <clamor95@gmail.=
com> wrote:
> >
> > +static int lg_ld070wx3_prepare(struct drm_panel *panel)
> > +{
> > +       struct lg_ld070wx3 *priv =3D to_lg_ld070wx3(panel);
> > +       struct mipi_dsi_multi_context ctx =3D { .dsi =3D priv->dsi };
> > +       struct device *dev =3D panel->dev;
> > +       int ret;
> > +
> > +       ret =3D regulator_bulk_enable(ARRAY_SIZE(priv->supplies), priv-=
>supplies);
> > +       if (ret < 0) {
> > +               dev_err(dev, "failed to enable power supplies: %d\n", r=
et);
> > +               return ret;
> > +       }
> > +
> > +       /*
> > +        * According to spec delay between enabling supply is 0,
> > +        * for regulators to reach required voltage ~5ms needed.
> > +        * MIPI interface signal for setup requires additional
> > +        * 110ms which in total results in 115ms.
> > +        */
> > +       mdelay(115);
> > +
> > +       mipi_dsi_dcs_soft_reset_multi(&ctx);
> > +       mipi_dsi_msleep(&ctx, 20);
> > +
> > +       /* Differential input impedance selection */
> > +       mipi_dsi_dcs_write_seq_multi(&ctx, 0xae, 0x0b);
> > +
> > +       /* Enter test mode 1 and 2*/
> > +       mipi_dsi_dcs_write_seq_multi(&ctx, 0xee, 0xea);
> > +       mipi_dsi_dcs_write_seq_multi(&ctx, 0xef, 0x5f);
> > +
> > +       /* Increased MIPI CLK driving ability */
> > +       mipi_dsi_dcs_write_seq_multi(&ctx, 0xf2, 0x68);
> > +
> > +       /* Exit test mode 1 and 2 */
> > +       mipi_dsi_dcs_write_seq_multi(&ctx, 0xee, 0x00);
> > +       mipi_dsi_dcs_write_seq_multi(&ctx, 0xef, 0x00);
> > +
> > +       return 0;
>
> Shouldn't this return the accumulated error?
>

Downstream does not, and I am not, though I agree that this may be a
decent idea. Thank you.

>
> > +static int lg_ld070wx3_unprepare(struct drm_panel *panel)
> > +{
> > +       struct lg_ld070wx3 *priv =3D to_lg_ld070wx3(panel);
> > +       struct mipi_dsi_multi_context ctx =3D { .dsi =3D priv->dsi };
> > +
> > +       mipi_dsi_dcs_enter_sleep_mode_multi(&ctx);
> > +
>
> Maybe add some comment about ignoring the accumulated error in the
> context and still doing the sleeps?
>

Isn't that obvious? Regardless of what command returns power supply
should be turned off, preferably with a set amount of delays (delays
are taken from datasheet) to avoid leaving panel in uncertain state
with power on.

>
> > +       msleep(50);
> > +
> > +       regulator_bulk_disable(ARRAY_SIZE(priv->supplies), priv->suppli=
es);
> > +
> > +       /* power supply must be off for at least 1s after panel disable=
 */
> > +       msleep(1000);
>
> Presumably it would be better to keep track of the time you turned it
> off and then make sure you don't turn it on again before that time?
> Otherwise you've got a pretty wasteful delay here.
>

And how do you propose to implement that? Should I use mutex?
Datasheet is clear regarding this, after supply is turned off there
MUST be AT LEAST 1 second of delay before supplies can be turned back
on.

>
> > +static int lg_ld070wx3_probe(struct mipi_dsi_device *dsi)
> > +{
> > +       struct device *dev =3D &dsi->dev;
> > +       struct lg_ld070wx3 *priv;
> > +       int ret;
> > +
> > +       priv =3D devm_drm_panel_alloc(dev, struct lg_ld070wx3, panel,
> > +                                   &lg_ld070wx3_panel_funcs,
> > +                                   DRM_MODE_CONNECTOR_DSI);
> > +       if (IS_ERR(priv))
> > +               return PTR_ERR(priv);
> > +
> > +       priv->supplies[0].supply =3D "vcc";
> > +       priv->supplies[1].supply =3D "vdd";
> > +
> > +       ret =3D devm_regulator_bulk_get(dev, ARRAY_SIZE(priv->supplies)=
, priv->supplies);
> > +       if (ret < 0)
> > +               return dev_err_probe(dev, ret, "failed to get regulator=
s\n");
>
> Better to use devm_regulator_bulk_get_const() so you don't need to
> manually init the supplies?

So you propose to init supplies in the probe? Are you aware that
between probe and panel prepare may be 8-10 seconds, sometimes even
more. Having power supplies enabled without panel configuration may
result in permanent panel damage during that time especially since
panel has no hardware reset mechanism.

