Return-Path: <devicetree+bounces-224953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D12BC92B4
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 15:03:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 886BB4E27B7
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 13:03:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 718C42E1F10;
	Thu,  9 Oct 2025 13:03:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SXQYosKY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F1211339A4
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 13:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760015018; cv=none; b=kkKPHV7xui3LZLwMFfs+XUJ5b1BQAyqK+ZttoTQfPYjIbqBo4G2N9coszP45ggYo/KezQaI621UoN7L2KDw0Oy5NH1ysdyB/jMiqGBeN/9pJOBAB5zrwuL63QyCsd1iD5xv1eHe8A3vsQCKq0m/WYymolPacb6HZurl41e1qb+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760015018; c=relaxed/simple;
	bh=4bGkbKr/BNDRtyM3ktButr5lP4Fuyu+QNRcAebYeltA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=no89JHzVQ8RVaY65IdmVirv9+lZckp6zT/NP/HeJjYOSqGZLMtCoUh3fSntlo+OBYvfl89KYcB8o/ZQtQLgJXNCvWNy6oA6achzU808X8Lwbx0r8H1h9/RNXdOSGWB44EMks5FNL3ZUB7mabmNw6NQ6EmNG5LKSG+6+1PiYeGe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SXQYosKY; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42557c5cedcso603818f8f.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760015015; x=1760619815; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zla+EsFG4nzRnArXGImEQSCTyHGK3J4mv7lfg4FYjWQ=;
        b=SXQYosKYU7Rih933lGVfSxkmWUdJhkFRZUGjdT9lLxhgsR7f96KI6JMXx0/vOaYWEi
         xU7lS+DINxfSgmKirH7hrymeofS1pBKWvGaTCLlfzc41SJ3JZjJKT2E1bZ6iTGgZBfTi
         4S/cDY8QN/dzJvCKbcz7Gy0a1Kp3+Cz7K+QVE33lqBIqfYYp6zd3459vcKQzovfKdu4w
         mugYaXZdcCRIW+hncb5NOvIGRQKc3H4FNb1ApTTrnRyh0hLLgQML6y1Id7+jknWKgAPy
         77O1hX99LUU6xi6cygYZH/GNeXYigF7lug/T1KgvWGx9XUVbRiZGheBRwN/h4o2ViEij
         ZxBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760015015; x=1760619815;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zla+EsFG4nzRnArXGImEQSCTyHGK3J4mv7lfg4FYjWQ=;
        b=EglzGGcwdUrRmyDEdMNTIO86YhiEtZ3sPoYRdmiRiGNwBnOtERipiNg2Rtj5yr6mou
         PtAhGo9EitdoDCsaVslGmsFCcWID6iIY4xz/pRN+41+UzFtp4agkemYM3kYFRt/R7j98
         5xbx/8gef68QkcLctB0gvqMGDrAr4+8zQtMXH+H+k2hs1E0FpigoNfBa1KfrbHhU1k+I
         Z4rhRI19+a4NKmryTr+TLj7cydJvsL4KSDypksaC5vJQ9sFUIHIUjBfyHtZphJv4KX97
         R/btxKiV1vJGfOCvPpjsilYi3xicylggDdaISx54EKzLHR30rWyQhh1ZX1FxV42eijB3
         VvUA==
X-Forwarded-Encrypted: i=1; AJvYcCXrNw2IHQKDZYpiJRFecco2Z6IILh5qx1mArc9UQvIvUx+FfQR7/x3yuQ59wKJSJm2d48XpwQlJE2uD@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4/av+VXM4pver3r823T7I78w/daSPOwDS6AHPO67ISX7v2PCh
	M2eKB6qxptdPchEHSgGEhaIjGcCN27uiiI80C6PdiXzrxilS7ldNZAynJY2YKtXMR+/EenaQeY/
	gvYdQL/O1aGduFxBFf2mN3mO5cIlmnaw=
X-Gm-Gg: ASbGncvQSZXoNz9NhV7JNsrfBNfUObcVjlQEP1Vi4ymqLvULgAUNB0BoIXihvmGPADN
	cu0U4/9wZ/9ftzJXtL9ndGMrBcBC7dhXuUrxMrW6BcvAXLSgJcakkk6QTqVxPBIE6VaNSP8zJb5
	5utc988Lb9V34Sbg4bjjWzJho3du3miKFyigmYgGEmx2HV/sEGghB0gyP1pyp1To+AFvEvbBqRk
	Uxmjrtd+rE94FWzkoDVOW735CfVlkZrsZJkxPbQdTdCFUd3cWokX15gfFv/O0t9ciHIXjd+tgk=
X-Google-Smtp-Source: AGHT+IG/ELPHmCCIZvciJbhA0k36idMhkGgCEPRr06+VPS042eX0V2JX9JR4zJTZ7TPW7Buub8nsqgeW9JGjesjwXe0=
X-Received: by 2002:a05:6000:2681:b0:413:473f:5515 with SMTP id
 ffacd0b85a97d-4266e8dd718mr4549664f8f.48.1760015014251; Thu, 09 Oct 2025
 06:03:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251002161728.186024-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251002161728.186024-7-prabhakar.mahadev-lad.rj@bp.renesas.com> <CAMuHMdUugFOOvHqjRyoPErh6rqpVuAS_Yr6mGqerKT0VQ-Y6KQ@mail.gmail.com>
In-Reply-To: <CAMuHMdUugFOOvHqjRyoPErh6rqpVuAS_Yr6mGqerKT0VQ-Y6KQ@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 9 Oct 2025 14:03:06 +0100
X-Gm-Features: AS18NWB5J7UqnUnaUM9kOBg5egFn9pDXfiyyxgzQNRfPJ7AfsT8nEGf8oxH6wq0
Message-ID: <CA+V-a8t7AQH5LpJaMgq9FUnA6qiUH=d5ngp0qr523BUWu88d+A@mail.gmail.com>
Subject: Re: [PATCH v9 6/6] drm: renesas: rz-du: mipi_dsi: Add support for
 RZ/V2H(P) SoC
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, Magnus Damm <magnus.damm@gmail.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Geert,

Thank you for the review.

On Mon, Oct 6, 2025 at 1:49=E2=80=AFPM Geert Uytterhoeven <geert@linux-m68k=
.org> wrote:
>
> Hi Prabhakar,
>
> On Thu, 2 Oct 2025 at 18:17, Prabhakar <prabhakar.csengg@gmail.com> wrote=
:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Add MIPI DSI support for the Renesas RZ/V2H(P) SoC. Compared to the
> > RZ/G2L family, the RZ/V2H(P) requires dedicated D-PHY PLL programming,
> > different clock configuration, and additional timing parameter handling=
.
> > The driver introduces lookup tables and helpers for D-PHY timings
> > (TCLK*, THS*, TLPX, and ULPS exit) as specified in the RZ/V2H(P) hardwa=
re
> > manual. ULPS exit timing depends on the LPCLK rate and is now handled
> > explicitly.
> >
> > The implementation also adds support for 16 bpp RGB format, updates the
> > clock setup path to use the RZ/V2H PLL divider limits, and provides new
> > .dphy_init, .dphy_conf_clks, and .dphy_startup_late_init callbacks to
> > match the RZ/V2H sequence.
> >
> > With these changes, the RZ/V2H(P) can operate the MIPI DSI interface in
> > compliance with its hardware specification while retaining support for
> > existing RZ/G2L platforms.
> >
> > Co-developed-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
> > Signed-off-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > Reviewed-by: Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>
> > ---
> > v8->v9:
> > - Updated Kconfig to select CLK_RZV2H
> > - Updated to use renesas.h
> > - Added reviewed-by tag from Tomi
>
> Thanks for the update!
>
> > --- a/drivers/gpu/drm/renesas/rz-du/Kconfig
> > +++ b/drivers/gpu/drm/renesas/rz-du/Kconfig
> > @@ -19,6 +19,7 @@ config DRM_RZG2L_USE_MIPI_DSI
> >         depends on DRM_BRIDGE && OF
> >         depends on DRM_RZG2L_DU || COMPILE_TEST
> >         default DRM_RZG2L_DU
> > +       select CLK_RZV2H
>
> As the kernel test robot has already told you, this is not a good idea.
> RZ/V2H support is optional, just rely on (dummy) rzv2h_get_pll_*()
> helpers returning false if CLK_RZV2H is not enabled.
>
Agreed, I will add static inline helpers in renesas.h if !CLK_RZV2H.

Cheers,
Prabhakar

> >         help
> >           Enable support for the RZ/G2L Display Unit embedded MIPI DSI =
encoders.
> >
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m6=
8k.org
>
> In personal conversations with technical people, I call myself a hacker. =
But
> when I'm talking to journalists I just say "programmer" or something like=
 that.
>                                 -- Linus Torvalds
>

