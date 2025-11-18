Return-Path: <devicetree+bounces-239771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D1750C69395
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 12:57:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4DBBD3834C5
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 11:50:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33D12347BD3;
	Tue, 18 Nov 2025 11:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z2ePFjcG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EFF34EF08
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 11:50:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763466650; cv=none; b=CqI8c/hvP21crqU5p+28mL7gsed2mRAhMV0DWLH9AimvU5j9A2pSlUi4VQ5GyrZBNa2uUNbhL40R0GIJZxV8m28WXHdMD7fO823A8+7i5dgzJRCztgfwgjsZFjNJI2glzT73bk6AlrJhkllzqyMwhmrHUHXbs4EoUQDy5VyLX+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763466650; c=relaxed/simple;
	bh=YRvnJRQgguturEitgT2Mfhc/Mr4HW2ItzObR9HfQKyQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oWIpIGEK32kv79c4Fq7d21nQ7fkDPAul5a97vtzey8A0Z1A9JVNGahCrDAMA9GJ8F1K5CZgb0M5V0lX42SNIHrI1yu5wegn6NBC+iU/eEWv3S0HBxVJNZH0ptrAZ+p0c6mM705Jc+2bS8fFp9IiyLeMbOMq0JVQ8mdBuHDJFUys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z2ePFjcG; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-429ce7e79f8so3919929f8f.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 03:50:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763466646; x=1764071446; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3dvlVzeTZOL3SeM1Ld6pZdy3YbDlbCykL8GrXDIYLsA=;
        b=Z2ePFjcGTnm45oXvU/lJLpFp/CBY9QOQzA65F/XLBl2iziZweCkPes8sbHQwL3OPAn
         9dl5994AH8mV7Bv8y+JXrM7q6nUkiayX8kPEcIXCKV5yclALYtqKf9rnHOq846HBmQil
         tpkb3PQ1zbir5z6W4U/1C/q1WE9SD0HUInHeMbbM0ewp+ZqPKhRsSBpzaMnVZxEazVUQ
         WrtyUPquhC3WuSOHf/v8SU2HxX24IqGY+raw3oP8Irq6i6MemDcRdpln+opBtHXyXVI0
         hooZm3MkVvsm17/ukdimVS6kB6OhzaHoonhvjjuOB6MFDCx9N9Ztzlfuh36jxm/XpqM6
         4mnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763466646; x=1764071446;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3dvlVzeTZOL3SeM1Ld6pZdy3YbDlbCykL8GrXDIYLsA=;
        b=PmyfsPSIBKz45+zDoZkBKvMhqBVOiABhdj0cqPDE0nPJFoUlZMRIVo1BTpHE6ELvqZ
         eGML1Og446/8z5+JDAqKTUwlMQRktfNqAWIBaGre7Xhct+K7joXe6DoMvtTesVTCw5yS
         o827kFfjq2nYfMtPj2inPhNtEhXxl79NXK1TEJGAiJb5BTr0ePHLzpLQCXtHml569XaC
         l6JINvr8LCU4jgZQ2J1VerL0UK6imGFWwCxafazrdug967FMVl87TdGZSaE/QL5R5eq7
         M1bXFYq/WY02iCp3+pMR2/M4cQkWKyu8KUXEeRpIMOVp9FRks89St+PegKImAHgFRduI
         CI/g==
X-Forwarded-Encrypted: i=1; AJvYcCXqmOu9ccJS5WQlczIEAaGDIzB2DpynlCbwBSZ2z/iKb1bLPFIAX455oWqFZgfkI3qc0ixFeFQaxCZo@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe/cdnicSmspIDWET5rhFP2GXesClvQGXHZ1v+786wjIxebxZH
	VCnz+h6mbmDv7rKRYotanLNCxlDVAUaYRhU4YJvT2/iFiGQIx6eUe2tOY74XalsyLGVjXVZKzP+
	w9Ru7JtNqPE0yVC5guDIVoE43YSkwunE=
X-Gm-Gg: ASbGncsqSZ/YOCu2l1IWYXsNvy7hR+NT7X4g3kP0Lt9m31spunZATVS1ZaqR5Bdzoif
	1QMnkeT4njm6+S2vj8WHA0e9hxpcif3c4hUowKNcKl/HwaOpaPcbtLvcQO2DtVFzHQGlnAI6tVH
	ZC35jSC3+rfVGRRBUWbVrbNBCjMaVToV7ph5esrK8S1i48K6VGpcDqrIfzOSnaDDF4/Ix3IDh6W
	uYlsumUxBp+cbNEe7VboIgd6AnJPAOOTtX/gR1VroNTLQDyedBf/cTTvNJFJNN/r4m4Xqr+irWl
	R9W8ksL0/xQysbqKMie0pQcdFnRg
X-Google-Smtp-Source: AGHT+IEBEKeO2bU9AocfEk+Htq/TSXCk60FbpZ0ZYLaYz3dvQxmRCANeaq3rrPQuzWW4G28xtGF7ejVCsUjv5/CqkFA=
X-Received: by 2002:a05:6000:2405:b0:428:4004:8241 with SMTP id
 ffacd0b85a97d-42b59382195mr15731333f8f.40.1763466646273; Tue, 18 Nov 2025
 03:50:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251015192611.241920-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdW1B7Yk1hUU9MSJsiL8wSmjAUGN7Qd_wgBHv8Ct=-wi4Q@mail.gmail.com>
 <CA+V-a8uY11uWoQ_en5QC=W4HPHRwT6rKQQJ-knT8Gi-+czm05w@mail.gmail.com>
 <20251021184502.GD19043@pendragon.ideasonboard.com> <CAMuHMdVrfVP1XZbQVNwEEP8L69mVzNN2yLSjNyHO7o2zqBuY0w@mail.gmail.com>
 <CA+V-a8vLXg-whqwpE3pLF5JP3kK9on9Hu3iyLXEvrWbR9XmF5w@mail.gmail.com> <20251118113434.GA22495@pendragon.ideasonboard.com>
In-Reply-To: <20251118113434.GA22495@pendragon.ideasonboard.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 18 Nov 2025 11:50:20 +0000
X-Gm-Features: AWmQ_bmJ-5wRZxj7MbmQMhRNDbiK7VXawO483M5C_HjqRzY3YZWOZRnXXVy1Z6s
Message-ID: <CA+V-a8uz2Y2qNtHvGSzkoj2bJPQkuUKSxffqx9=Rwr88LZXM6g@mail.gmail.com>
Subject: Re: [PATCH v11 0/7] Add support for DU/DSI clocks and DSI driver
 support for the Renesas RZ/V2H(P) SoC
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Biju Das <biju.das.jz@bp.renesas.com>, 
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

On Tue, Nov 18, 2025 at 11:34=E2=80=AFAM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Prabhakar,
>
> On Tue, Nov 18, 2025 at 11:21:12AM +0000, Lad, Prabhakar wrote:
> > On Mon, Oct 27, 2025 at 11:23=E2=80=AFAM Geert Uytterhoeven wrote:
> > > On Tue, 21 Oct 2025 at 20:45, Laurent Pinchart wrote:
> > > > On Tue, Oct 21, 2025 at 07:26:49PM +0100, Lad, Prabhakar wrote:
> > > > > On Tue, Oct 21, 2025 at 11:26=E2=80=AFAM Geert Uytterhoeven wrote=
:
> > > > > > On Wed, 15 Oct 2025 at 21:26, Prabhakar <prabhakar.csengg@gmail=
.com> wrote:
> > > > > > > This patch series adds DU/DSI clocks and provides support for=
 the
> > > > > > > MIPI DSI interface on the RZ/V2H(P) SoC.
> > > > > > >
> > > > > > > v10->v11:
> > > > > > > - Split CPG_PLL_CLK1_K/M/PDIV macro change into separate patc=
h
> > > > > > > - Updated rzv2h_cpg_plldsi_div_determine_rate()
> > > > > > >   while iterating over the divider table
> > > > > > > - Added Acked-by tag from Tomi for patch 2/7 and 3/7
> > > > > > > - Added Reviewed-by tag from Geert for patch 2/7 and 3/7
> > > > > >
> > > > > > I think this series is ready for merging.
> > > > >
> > > > > \o/
> > > > >
> > > > > > > Lad Prabhakar (7):
> > > > > > >   clk: renesas: rzv2h-cpg: Add instance field to struct pll
> > > > > > >   clk: renesas: rzv2h-cpg: Use GENMASK for PLL fields
> > > > > > >   clk: renesas: rzv2h-cpg: Add support for DSI clocks
> > > > > > >   clk: renesas: r9a09g057: Add clock and reset entries for DS=
I and LCDC
> > > > > > >   dt-bindings: display: bridge: renesas,dsi: Document RZ/V2H(=
P) and
> > > > > > >     RZ/V2N
> > > > > > >   drm: renesas: rz-du: mipi_dsi: Add LPCLK clock support
> > > > > > >   drm: renesas: rz-du: mipi_dsi: Add support for RZ/V2H(P) So=
C
> > > > > >
> > > > > > As this touches both clk and drm, let's discuss the merge strat=
egy.
> > > > > > My proposal:
> > > > > >   1. I queue patches 1-3 in an immutable branch with a signed t=
ag,
> > > > > >      to be used as a base for the remaining patches,
> > >
> > > Done:
> > >
> > > The following changes since commit 3a8660878839faadb4f1a6dd72c3179c1d=
f56787:
> > >
> > >   Linux 6.18-rc1 (2025-10-12 13:42:36 -0700)
> > >
> > > are available in the Git repository at:
> > >
> > >   git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-drivers=
.git
> > > tags/clk-renesas-rzv2h-plldsi-tag
> > >
> > > for you to fetch changes up to f864e4b721e386be132cc973eadefe5d52cdfd=
94:
> > >
> > >   clk: renesas: rzv2h: Add support for DSI clocks (2025-10-27 11:58:0=
3 +0100)
> > >
> > > ----------------------------------------------------------------
> > > clk: renesas: rzv2h: Add support for DSI clocks
> > >
> > > RZ/V2H Clock Pulse Generator PLLDSI API, shared by clock and MIPI DSI
> > > driver source files.
> > >
> > > ----------------------------------------------------------------
> > > Lad Prabhakar (3):
> > >       clk: renesas: rzv2h: Add instance field to struct pll
> > >       clk: renesas: rzv2h: Use GENMASK for PLL fields
> > >       clk: renesas: rzv2h: Add support for DSI clocks
> > >
> > >  drivers/clk/renesas/rzv2h-cpg.c | 512 ++++++++++++++++++++++++++++++=
+++++++++-
> > >  drivers/clk/renesas/rzv2h-cpg.h |  26 +-
> > >  include/linux/clk/renesas.h     | 145 ++++++++++++
> > >  3 files changed, 672 insertions(+), 11 deletions(-)
> > >
> > > > > >   2. I queue patch 4 on top of 1 in renesas-clk for v6.19,
> > >
> > > Done.
> >
> > Can you please pick up the DSI patches.
>
> We can't, this has to be done by a drm-misc maintainer as it involves
> merging a non-fast forward branch instead of pushing commit directly on
> top of drm-misc-next.
>
I see, thank you. Talking to Geert we are closed for v6.19 as the
SoC+board changes have not made into v6.19. Probably we can wait for
the next cycle and Biju should be able to pick them up.

Cheers,
Prabhakar

