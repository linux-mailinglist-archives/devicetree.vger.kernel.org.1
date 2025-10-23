Return-Path: <devicetree+bounces-230129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 05323BFFEBC
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 10:28:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0FFDF19A512C
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 08:28:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 448B12FD683;
	Thu, 23 Oct 2025 08:28:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A60C32E36F3
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761208090; cv=none; b=Zveu9vMrEBWkSTcC57gxUofw0lgxK4ziTmUnh4036dmMmJuhoqwzDppW2UBbv/EzeuQk8w6GIX4+iyLM9juwOVpH2apmAZCPE9EDxfqjQzkKx7DDtYswGXD4MHSSr9ZqdUfz0ojayZHbEujA0wST852ikK7DCmO6MT5WQw1B7+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761208090; c=relaxed/simple;
	bh=riOWBoniluYmZkJSNiPD51TALJtz2J5b6wiQtNSND7U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tWyvZ+EHoi8CCsE6rRxq8QeUehZBXxU+5hGNiYiSYENchbz4G5xAY82++55Cy2uDnKe/KivE+Nb507E8DgiTGSFSRxKCEF3jm764TlmsJx1NK1Mvsl4ttrpxcNL2951eQ0WlV+UiAIpzM2HsObkqPbKn4/MeVLteo1R1M2v/2xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-269af38418aso6681385ad.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 01:28:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761208088; x=1761812888;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ECYIxuT82Q/NafhPkuUWEytQEjZXJcXQfJX7HoJHHBY=;
        b=Btg5yHWeuGRCQuE8p41xQaOwdGNEM/DnONKREJ1VoheqpLc9O+Tbejm1gYw84RCU6f
         gGXdNjk4wf8423zRRMcqxnxJLJLxoQQhOf1+nlX8xydM7vuHInY2PKScaXV3OkTX6AHt
         tcTGn+MfFd+geoy+Nu+v3IQFauqaDkt54/eYxa3eugLZQyQzmsjbasca5ntBzkGaayeT
         ajBf9d/fY/7Ff0hCQ30M5quoi4+jnZAtM2sXXewlkbQwemXqMsPD/x0Yqowx32hWBoCH
         eRggmTKwWDrQpisOCF35jCDqbL9wsHomwx9d2RIdTEXnOP9w7uLyM9usb0go17TJULar
         U6Kg==
X-Forwarded-Encrypted: i=1; AJvYcCVZnZDL37tHb3P1HBH2hXFGNhyxFoC2qbiu/OUkisZPlVfx0/+0XuWRJZvvN9XlillH6ipYMxcn7rcY@vger.kernel.org
X-Gm-Message-State: AOJu0YwaM2ND2lebzcDSNBWnPNFp/GBUwTBCAmG4DBRzkYlBHsMOFvw7
	n99uNP0MvZmO5pTmNmSrNnb5vInfRjRfNTeeYBVLVXNJrXSeaccToX8cBQClahn/
X-Gm-Gg: ASbGncv9cwfctqrMjeS05lUFZyj2NmylyvpjxOYJMipMhYZ7JmXYp5cMNfMnw/lPeRf
	yG2UmaBaPVlr8C8pYT4C07Kqj7I/5XfUp/1L/KJYIPMG+HZ+UI3R/b2+WrjolPD/3AiA8jvddI4
	i6M4CJHcQmOflpukt0dmSGnya4E2UMyNQjMXTAB2mww9Ov3OvOHdx3qFkH3gplw0JZFUnC+EtQi
	Qso9Tn1lstsZMwZUO2ByJ7lxHKgbsipeheDpclmASWDtsutS5GhWERpaNNbTOgG+VUSRW/2NVT2
	uN4zudQyWm5taKgpqrRaO/2X22kmCVbKGZ+bZzAsOKQPuM38pJqgKi9UKB7fhYivCN+BEFbgpHr
	pYAoS6BfolYZNu/JvO6xpGs5Worxu9r7+FfWG83hlj1mMT2uBclwVtXYn3jSZCV2VqNOCQ0SXmq
	uN1klWW37PzonrO9nuqqAnFyi7NSq3R82VjLVwrw==
X-Google-Smtp-Source: AGHT+IFRwI07UPjFBdVkD7kUIndbCOpYmBEVSsWhLZHTprM4CduS1zImOsui1i2HR+GtvOSfPdgivw==
X-Received: by 2002:a17:902:e5c8:b0:290:c5c8:941d with SMTP id d9443c01a7336-290caf851a8mr369304125ad.39.1761208087492;
        Thu, 23 Oct 2025 01:28:07 -0700 (PDT)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com. [209.85.216.45])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946e108e0asm15237185ad.91.2025.10.23.01.28.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 01:28:07 -0700 (PDT)
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-339e71ccf48so691037a91.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 01:28:06 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUGh/J+ogyRlf8/c9QE+cUcGQZktceBGqpqyCKyMh/cVVgambwZYg41PkUmRXEWzJ5wzwutuu6oqmY8@vger.kernel.org
X-Received: by 2002:a05:6102:5110:b0:5db:27e9:933e with SMTP id
 ada2fe7eead31-5db27e9988cmr1196188137.38.1761207652096; Thu, 23 Oct 2025
 01:20:52 -0700 (PDT)
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
Date: Thu, 23 Oct 2025 10:20:41 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUU-2ugmA-VcRuYOsriUKtAEQXmWEwJSwuCsSTa3ySTZg@mail.gmail.com>
X-Gm-Features: AS18NWACo5Ab6gaObSrlb5u0ift86EnuHySc5nm6Ey8p5bDoFaPy9DC0cq8vSBg
Message-ID: <CAMuHMdUU-2ugmA-VcRuYOsriUKtAEQXmWEwJSwuCsSTa3ySTZg@mail.gmail.com>
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

Hi Laurent,

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
> > >   2. I queue patch 4 on top of 1 in renesas-clk for v6.19,
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

Do you mean new commits must be in a single branch, or drm-misc
itself must be linear? In case of the former, 5-7 can be applied on top of
my immutable branch, without involving a merge?

> will need to merge the branch (either branch 1. as prepared by Geert, on
> top of which you can them push patches 5-7 yourself, or a branch you'll
> prepare on top of 1. with patches 5-7).

Note that another change to include/linux/clk/renesas.h,
and thus a dependency of drm on clk, is coming in
"[PATCH v3 0/2] Remove hard coded values for MIPI-DSI"
https://lore.kernel.org/20251022235903.1091453-1-chris.brandt@renesas.com

Would it be worthwhile to wait on/speed up review of the latter?
Thanks!

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

