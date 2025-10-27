Return-Path: <devicetree+bounces-231436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8AFC0D236
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:23:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C9FDC4E52B8
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 11:23:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D7922F1FC2;
	Mon, 27 Oct 2025 11:23:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0071273809
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 11:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761564197; cv=none; b=Ptmvt3GPrRGGeXCeWTWuzy2Uq4J07N5AyK9EiM3AGG2Ief9CB/kn9sVDQAx8Ycis9JivZcvB4taHdyRs9MU9/vjLbou9NdvnwEfGg2nhgTPfwvS+sSUSJ7o3HylbcFMXPiTC05Q+16gGEsNUTZJhiwgWAXSogQDPYcNIehlzANk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761564197; c=relaxed/simple;
	bh=LCFinbYaaa5T1vbOy/YjHc9/jV/eLUmsdTmf3uq5Qlk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jO4ukzNkFujAMjywNpFGqb4uxx0dJdSuGXYRg6QOkkIM4NnH7ZxSxEiczLPB16jJTQ+H7Uiu0ELTYuzgr8UgutSfJsyM/zxGsW3uL3hUqeqoI0Qc2mnkBuxvcApCFNatM1Cj9gE2Wf+XD+xJmul13VB62BbrfCdodU1PGOIHO3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-5563c36f5dfso435922e0c.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 04:23:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761564194; x=1762168994;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HgNtIcnn6eENaUFz3K0ARDS/soEXQSArUyONWZnfjlQ=;
        b=GztycjL0digwZY3EjtAUEBzSKII9KVZEK2LTvmBl1+ODDjBEYzrDJqigRHi+eMU1f8
         jNsboo+kDrnv/iGkHxBfbyZ1a3WtiWd8mVoJC21R2SoO1l3Se2QSGu29vnppkTrS41zK
         7kqku4GoBiouSWuI4cBZvs+y/h9aBXSZrsaYhR4sBCTmkW1BDTPcah2lP5+g9MUVty9F
         NpP5jy/6c8SDwyFt5vy2qXtT/7eq18JPySz/cXAknIdjqSbdL0XL04WJh4zzKmof4mNd
         Vfvwdwa8p9tipKS1L1nDgG4EWr038mSQmQ9arR10fo8uDSX0hNj+ca9AYw3+souMPsmz
         gPfQ==
X-Forwarded-Encrypted: i=1; AJvYcCVXfezk5SeYTjt7eIY77aiFASzdlfQQSTrLVXXDR3L/Gqv5VFQAzaWhePNu8qqw766Pu0Bw45c3h9NX@vger.kernel.org
X-Gm-Message-State: AOJu0YzSJ7s9YhOMD9MqyCTsb/YS0Faa02nCGYiOMHFP/mgrLzjUyERd
	GLh/Kc048Oj1upBGzUiF28yo1dGITZ7g10cGR2XkWHjbfdFTheOunmMqxyw5Ra77
X-Gm-Gg: ASbGncv6UR0WULArSp+vNm/xI2dF+NPU4B9KGn5xH4Knu5Ld+NeIPNnrBATqwnlIa2Q
	yNBhqL226JzJqTTPVgjtIaPVw53Z/IFIHTNc2VNTVWH0QsDau/BTitiHTJJxonA9mBHAeW+X74C
	ikxwgoKysR/tS9VM2dgj8jZ9Fi26s95jgBYO6bH88J7iaKqIL8y3CKFc+9CnXtAM57uRujxwvUl
	7rdOmMYFDTIM19MwzRthTMf4A2652xnd81aa8OQ9aKU7vVESBn4ffRQThbznGmWl7ffwcte5Vya
	VQ2L8stRP2RP51wV46lvOTnA9Bs3LKYQ1zLyHYAMFLiSMJ3K4UuabB9Mny5ITQ75SCFZUCFE/yn
	KKRLcsVGtEzy+5U1Fgr8QMM/a3sLY4/u64iEoVK14DqEr1c2WqX+13bva+zQeTYvRVrLyajEelZ
	1TYeZkdDoTncEe+2+vYTNySmp5kNy/41LzSP9UE8p/r0m7hl7b
X-Google-Smtp-Source: AGHT+IHrw0+CORO1J4oOcddu2yK1hGLioXY0Cmoc2eU898B8J2FLSBLHhIagGXJJrdPlkr0IIU+lyA==
X-Received: by 2002:a05:6122:3bd6:b0:556:a54e:f95a with SMTP id 71dfb90a1353d-557bf265815mr4349735e0c.16.1761564194457;
        Mon, 27 Oct 2025 04:23:14 -0700 (PDT)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com. [209.85.217.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-557ddb08fcfsm2743012e0c.9.2025.10.27.04.23.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 04:23:13 -0700 (PDT)
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-5db39d2ce9fso1930989137.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 04:23:13 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUopUp+hlpL0XxifrQSnphV6Z/xU8pJ4ndnUqGhUh7edjL5ERWIunzCyutGLiknINDF3WSNTqvVHDJg@vger.kernel.org
X-Received: by 2002:a05:6102:2921:b0:59d:458d:b629 with SMTP id
 ada2fe7eead31-5db2e58fe50mr3946640137.30.1761564193435; Mon, 27 Oct 2025
 04:23:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251015192611.241920-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdW1B7Yk1hUU9MSJsiL8wSmjAUGN7Qd_wgBHv8Ct=-wi4Q@mail.gmail.com>
 <CA+V-a8uY11uWoQ_en5QC=W4HPHRwT6rKQQJ-knT8Gi-+czm05w@mail.gmail.com> <20251021184502.GD19043@pendragon.ideasonboard.com>
In-Reply-To: <20251021184502.GD19043@pendragon.ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Oct 2025 12:23:01 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVrfVP1XZbQVNwEEP8L69mVzNN2yLSjNyHO7o2zqBuY0w@mail.gmail.com>
X-Gm-Features: AWmQ_blPQXHDdcv3HEZmR70Xe3WDxqjStucPirJolGtaGc9WMslN79O8Z1NYVMM
Message-ID: <CAMuHMdVrfVP1XZbQVNwEEP8L69mVzNN2yLSjNyHO7o2zqBuY0w@mail.gmail.com>
Subject: Re: [PATCH v11 0/7] Add support for DU/DSI clocks and DSI driver
 support for the Renesas RZ/V2H(P) SoC
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>, 
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 21 Oct 2025 at 20:45, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> On Tue, Oct 21, 2025 at 07:26:49PM +0100, Lad, Prabhakar wrote:
> > On Tue, Oct 21, 2025 at 11:26=E2=80=AFAM Geert Uytterhoeven wrote:
> > > On Wed, 15 Oct 2025 at 21:26, Prabhakar <prabhakar.csengg@gmail.com> =
wrote:
> > > > This patch series adds DU/DSI clocks and provides support for the
> > > > MIPI DSI interface on the RZ/V2H(P) SoC.
> > > >
> > > > v10->v11:
> > > > - Split CPG_PLL_CLK1_K/M/PDIV macro change into separate patch
> > > > - Updated rzv2h_cpg_plldsi_div_determine_rate()
> > > >   while iterating over the divider table
> > > > - Added Acked-by tag from Tomi for patch 2/7 and 3/7
> > > > - Added Reviewed-by tag from Geert for patch 2/7 and 3/7
> > >
> > > I think this series is ready for merging.
> >
> > \o/
> >
> > > > Lad Prabhakar (7):
> > > >   clk: renesas: rzv2h-cpg: Add instance field to struct pll
> > > >   clk: renesas: rzv2h-cpg: Use GENMASK for PLL fields
> > > >   clk: renesas: rzv2h-cpg: Add support for DSI clocks
> > > >   clk: renesas: r9a09g057: Add clock and reset entries for DSI and =
LCDC
> > > >   dt-bindings: display: bridge: renesas,dsi: Document RZ/V2H(P) and
> > > >     RZ/V2N
> > > >   drm: renesas: rz-du: mipi_dsi: Add LPCLK clock support
> > > >   drm: renesas: rz-du: mipi_dsi: Add support for RZ/V2H(P) SoC
> > >
> > > As this touches both clk and drm, let's discuss the merge strategy.
> > > My proposal:
> > >   1. I queue patches 1-3 in an immutable branch with a signed tag,
> > >      to be used as a base for the remaining patches,

Done:

The following changes since commit 3a8660878839faadb4f1a6dd72c3179c1df56787=
:

  Linux 6.18-rc1 (2025-10-12 13:42:36 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-drivers.git
tags/clk-renesas-rzv2h-plldsi-tag

for you to fetch changes up to f864e4b721e386be132cc973eadefe5d52cdfd94:

  clk: renesas: rzv2h: Add support for DSI clocks (2025-10-27 11:58:03 +010=
0)

----------------------------------------------------------------
clk: renesas: rzv2h: Add support for DSI clocks

RZ/V2H Clock Pulse Generator PLLDSI API, shared by clock and MIPI DSI
driver source files.

----------------------------------------------------------------
Lad Prabhakar (3):
      clk: renesas: rzv2h: Add instance field to struct pll
      clk: renesas: rzv2h: Use GENMASK for PLL fields
      clk: renesas: rzv2h: Add support for DSI clocks

 drivers/clk/renesas/rzv2h-cpg.c | 512 ++++++++++++++++++++++++++++++++++++=
+++-
 drivers/clk/renesas/rzv2h-cpg.h |  26 +-
 include/linux/clk/renesas.h     | 145 ++++++++++++
 3 files changed, 672 insertions(+), 11 deletions(-)

> > >   2. I queue patch 4 on top of 1 in renesas-clk for v6.19,

Done.

> > >   3. The DRM people queue patches 5-7 on top of 1.
> > >
> > > Does that sound fine for you?
> > Sounds good to me.
> >
> > Biju/Tomi, are you OK with the above?
>
> The plan seems good to me. Note that you won't be able to push this
> yourself to drm-misc as committers are limited to pushing linear
> branches. We need an ack from the drm-misc maintainers, and one of them
> will need to merge the branch (either branch 1. as prepared by Geert, on
> top of which you can them push patches 5-7 yourself, or a branch you'll
> prepare on top of 1. with patches 5-7).

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

