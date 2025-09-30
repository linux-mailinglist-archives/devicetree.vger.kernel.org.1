Return-Path: <devicetree+bounces-222808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DE4BAD2D2
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 16:29:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F6C91926171
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 14:29:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6C742FFDFC;
	Tue, 30 Sep 2025 14:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UppWFxpx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D0F1A3165
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 14:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759242566; cv=none; b=Up5vmL9LD7VwCL+Gf81Q1JLtQ6a6EeKLUGFKapjG3mPcty3dCwd4Vze8ScVhKj2YMzaUJAqNri0iu57qTaiYgFTsGf00skYRkgYiTDjcwC/aaXckEAR5GAspkd2qGNkvhh+8TTnn7ofczyoqcsbET5gvvpnz9fm3YLPvlwtAKT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759242566; c=relaxed/simple;
	bh=rmwyO9zRp4kD2rqR5LNaTJTRO8hwzlF7oOof50A1D1s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=puGPMllnor/Q3uY5Gh6zRsZ8p2HRJR3FsGxhr1s6eqBRE9odwgWfRDN1eDnAd0vJnRU3abpk0xyewEJV/98OP9iHw13fcZRdjmTLxfI7/A8ikzX6AONf130fVPwUpDTskS2yRErv9mIynuvxm2j21D0FG5DaFiByMQetI2VIFzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=UppWFxpx; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-28a5b8b12a1so23007445ad.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1759242563; x=1759847363; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XL/Mc8iUtyo5W2s1qkd1yXvd0NCSK6cLxiT3Omi/7eQ=;
        b=UppWFxpxKs4LfCeszXbB5M7clvG4X1xf3IPUeI5NaIvmYEqQucfUvurDbzX/pWMOLw
         RPK0iWJwSuNJpGzRTIIm2CZ2xJkrnjcjFRLYWx/i6SFjhrI09BPmYtA0AEXKPQVv3I4k
         iEsc3sCVBGN37QCAJBAHEnQrSyISGJtUW3bus=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759242563; x=1759847363;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XL/Mc8iUtyo5W2s1qkd1yXvd0NCSK6cLxiT3Omi/7eQ=;
        b=T8kXdITxv/xYEQgxhCeXv20w3P4JZPsCfqyLD4Yiy2pnpOT+nlC7QcEzcw7qwyPp8B
         pk3sClHsKmxWNLZuKpihQzHj9psAVRDpDDUqA80qcObfx/LWlWl0QkAlksjvJzXBFpzL
         MtYwdKZD91kR5SmEJTt0JmSZEcUF/py2Js5d8j0DVGEYmS7gfyrWwG9Gj/9HlBUYKQ/b
         JCbbIhbrsCl5h73CK4bF0UlduD3+xpNflKVxJxeOgYwuVwTWNdjHjStJwf3uNTGa6ZOk
         RXdkn/3FqTuXtSgbI8HHAfmjlBoV6n1Lyl4xC9ox0cpyIABKoLhFxep61QjP4Lxx6JfE
         Y7dQ==
X-Forwarded-Encrypted: i=1; AJvYcCUcb+6SGjOKKI0IDDZmEWjQmgK41wCbs072WPOA4XCMBrmMzsvNa/mtVBUc6zdPwx1lqGi6Dw/sqTAW@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9h8ZBdSrEsEFOrA7PmU3LXjfHQivgQIA0gCi6aNfHYiQBFRLX
	7MEamTmtv7Nw3iIKLX1i4ZZVTf070QbzfYKrDn7ffyB/ps7PDMF01P4EkyyLeM//OpoGMFe51Dx
	dB9o=
X-Gm-Gg: ASbGnct3UFfW7gdjhCL8pjZGb/FCgY3KHLGhs9VK/19KtmHUplSLI8qjslMMjvi+9cT
	p4O8iNAfNCJwLOWOwk+T2khcjpVaD1xkRPp7aVBvVmOe+LgWbhU4cIERKcREW6wi92pslJPlcsZ
	HJEUQmyaaZaIpL0bXFEY1B2HEt32SjFK9DEtJ+Alc8G+r146Y5qYs87sepOQ9+h/NGGGigHIEcZ
	yAGMgMiAVh5XvAMJE3aM2WVjlh0CyjN0yzCCVKA/RZr/usCszNAj+/kl6KiDtg+AsyqkI6/7L7b
	8Ec+EbeexsG4iwqedvUjg5mlfEhbwuqIssDYOrfU15pWASJkxN554b7C+hHPsQMF0zsJp3fBUpX
	jLhtdypWep0ktDehcOxSjzrgb/5KplKOTWzKzuTIR2yHZ+Ns7QbKRv6god6T8LR4iWTIL4/f/wI
	w9FoOcP2z/bGfrzb19OlbR01Ic
X-Google-Smtp-Source: AGHT+IGXCqJGfQPopUYYT+630xCg7mGQQsS1XtnHqvyMesqXiQh/4Zo78BPbKeCCRSVZTMDbs5Wn4A==
X-Received: by 2002:a17:903:a8b:b0:27d:339c:4b0 with SMTP id d9443c01a7336-27ed4aa57f1mr177716275ad.35.1759242562770;
        Tue, 30 Sep 2025 07:29:22 -0700 (PDT)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com. [209.85.210.170])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed68821ebsm161477055ad.84.2025.09.30.07.29.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Sep 2025 07:29:21 -0700 (PDT)
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-782e93932ffso2766966b3a.3
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:29:21 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVN6NSgNTckR4kiUyadFRqeliw+Ed8mDU4M9GHyTfqG5nKRkm2VJTE8xGbhwfJo6LpbTPX/fTtlBDxJ@vger.kernel.org
X-Received: by 2002:a17:902:7088:b0:24c:965a:f97e with SMTP id
 d9443c01a7336-27ed4a29dacmr180245305ad.2.1759242560525; Tue, 30 Sep 2025
 07:29:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250929142455.24883-1-clamor95@gmail.com> <20250929142455.24883-3-clamor95@gmail.com>
 <CAD=FV=WH5rsQR0vnsdZqfA-K-4AWSyOOfbe3g1H7pYCG0AigZw@mail.gmail.com> <CAPVz0n2Prw0ZoQhrodobmSpAu7XV6aX=NV=2ee0RwL3H5hWARg@mail.gmail.com>
In-Reply-To: <CAPVz0n2Prw0ZoQhrodobmSpAu7XV6aX=NV=2ee0RwL3H5hWARg@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 30 Sep 2025 07:29:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XD=L=otnj+YsQ1qEtrO_+wBD-ZYpDNmickcD1tb+6OoA@mail.gmail.com>
X-Gm-Features: AS18NWBKEeqzCuUPltq0hFLhhfC7TR2NA7onkkxdD9X53tjrGMLTsb8gFsFvIps
Message-ID: <CAD=FV=XD=L=otnj+YsQ1qEtrO_+wBD-ZYpDNmickcD1tb+6OoA@mail.gmail.com>
Subject: Re: [PATCH v1 2/8] gpu/drm: panel: add support for LG LD070WX3-SL01
 MIPI DSI panel
To: Svyatoslav Ryhel <clamor95@gmail.com>
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

Hi,

On Mon, Sep 29, 2025 at 10:13=E2=80=AFPM Svyatoslav Ryhel <clamor95@gmail.c=
om> wrote:
>
> > > +static int lg_ld070wx3_unprepare(struct drm_panel *panel)
> > > +{
> > > +       struct lg_ld070wx3 *priv =3D to_lg_ld070wx3(panel);
> > > +       struct mipi_dsi_multi_context ctx =3D { .dsi =3D priv->dsi };
> > > +
> > > +       mipi_dsi_dcs_enter_sleep_mode_multi(&ctx);
> > > +
> >
> > Maybe add some comment about ignoring the accumulated error in the
> > context and still doing the sleeps?
> >
>
> Isn't that obvious? Regardless of what command returns power supply
> should be turned off, preferably with a set amount of delays (delays
> are taken from datasheet) to avoid leaving panel in uncertain state
> with power on.

I won't insist, though IMO any time an error return is purposely
ignored a comment about why can be justified.


> > > +       msleep(50);
> > > +
> > > +       regulator_bulk_disable(ARRAY_SIZE(priv->supplies), priv->supp=
lies);
> > > +
> > > +       /* power supply must be off for at least 1s after panel disab=
le */
> > > +       msleep(1000);
> >
> > Presumably it would be better to keep track of the time you turned it
> > off and then make sure you don't turn it on again before that time?
> > Otherwise you've got a pretty wasteful delay here.
> >
>
> And how do you propose to implement that? Should I use mutex?
> Datasheet is clear regarding this, after supply is turned off there
> MUST be AT LEAST 1 second of delay before supplies can be turned back
> on.

You don't really need a mutex since the DRM core will make sure that
prepare and unprepare can't be called at the same time. panel-edp
implements this. See `unprepared_time` I believe.

NOTE: if you want to get really deep into this, it's actually a bit of
a complicated topic and I would also encourage you to add an
"off-on-delay-us" to the regulator in your device tree (which only
works on some regulators but really should be universal). This is
important because:

1. The regulator could be shared by other consumers and they could
cause violations of this.

2. The regulator could potentially be in either state when Linux starts.

3. The regulator framework could adjust the state of the regulator at
regulator probe time.

The "off-on-delay-us" handles at least some more of those cases,
though I seem to remember that at least a few of them still have rough
edges...


> > > +static int lg_ld070wx3_probe(struct mipi_dsi_device *dsi)
> > > +{
> > > +       struct device *dev =3D &dsi->dev;
> > > +       struct lg_ld070wx3 *priv;
> > > +       int ret;
> > > +
> > > +       priv =3D devm_drm_panel_alloc(dev, struct lg_ld070wx3, panel,
> > > +                                   &lg_ld070wx3_panel_funcs,
> > > +                                   DRM_MODE_CONNECTOR_DSI);
> > > +       if (IS_ERR(priv))
> > > +               return PTR_ERR(priv);
> > > +
> > > +       priv->supplies[0].supply =3D "vcc";
> > > +       priv->supplies[1].supply =3D "vdd";
> > > +
> > > +       ret =3D devm_regulator_bulk_get(dev, ARRAY_SIZE(priv->supplie=
s), priv->supplies);
> > > +       if (ret < 0)
> > > +               return dev_err_probe(dev, ret, "failed to get regulat=
ors\n");
> >
> > Better to use devm_regulator_bulk_get_const() so you don't need to
> > manually init the supplies?
>
> So you propose to init supplies in the probe? Are you aware that
> between probe and panel prepare may be 8-10 seconds, sometimes even
> more. Having power supplies enabled without panel configuration may
> result in permanent panel damage during that time especially since
> panel has no hardware reset mechanism.

Maybe look more closely at devm_regulator_bulk_get_const(). Really it
should just save you the lines of code:

  priv->supplies[0].supply =3D "vcc";
  priv->supplies[1].supply =3D "vdd";

...and it lets you put those names in a "static const" table in your
driver. All the timings of when regulators are initted should be the
same.

-Doug

