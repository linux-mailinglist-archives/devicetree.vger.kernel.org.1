Return-Path: <devicetree+bounces-253386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BEEFAD0BC5D
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 19:00:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F3A830076BF
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 17:59:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23B0B26ED3D;
	Fri,  9 Jan 2026 17:59:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 886B3500971
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 17:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767981569; cv=none; b=ueBDiEpeZ41dC+4IrZ9xLGn6uMP6fuKzWoyMmgVhjNK0mf5tJwTPoemqa3eHSMz+VK5GOa5JZzLYoDD5yXd0v3RA+BSUKyr+LIpj1JmX243qu5RTth8nKyBRVAt7zf6DDoKYlPDxwQ2vDYYlMWI62j6Ma6EGAk7eUgOHpRLJzOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767981569; c=relaxed/simple;
	bh=aoZqnjQwng885dzaO4ZMxyctN6RO9r34MuHFdtOF6zQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fAnSNiJh2VjLjfMxCVQkjkfpsRRu4Dm5PnROOusT6nJ/hDvmCC5AIEKLLvUI+vnKwHwtZ5CeeDCiON2APK0sQPsRH/9oeofkTo17Orl/KQe596iYVJp9j7rVeK/baYWiScBAkljvi5Xp96vbVRRD/TJ3RKY14hyXY0CbAQTNTs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-5634feea416so2151625e0c.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 09:59:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767981566; x=1768586366;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0SQS2qWJh+KMy2hwJnXtSg0hFzLccGsX0DfWg2V7M8U=;
        b=uqKOyUnkmekyOlmbw0h4xFLlN/RpOysRTCu5+xQRaPpe3Sqy9v1iIPyCru3DNdKX8R
         BqYS/o3uVAIRyeO6cdqnuHozfvdU0721vNkn5aEUTkJMiQyBVijDVonmhekmOo4WZDqB
         AKolkzqnekEtmzUrjPSJxOD8HQjyngr9BWeFkHKmkb2bZnJyVufhraewxgWE7FacIMcF
         3s9zO2Ni3C1SqNotycCSF+BwF2f5WdTIUExzhmRROsfVaIlp1UM5OZMVpDVi4XBS2+f7
         n1gY6ru6u/G4Lt75dqZyLGe3fqeLvpeb42V7SZqf1MoUu0GgWlert8/6H6N6UmJWcGxi
         5yAA==
X-Forwarded-Encrypted: i=1; AJvYcCUzueHcifSen36CIhNcM6x5uP5EAjge5F/fWBqGbvOvWFGg9ZrPGHhqHsfATMESQgxT1pcLCUOdP1EN@vger.kernel.org
X-Gm-Message-State: AOJu0YyDhL758p0uwIXvbo9EFTt2nFtO6cMkOK0pCbtaec2wrECf1Boa
	0nEsz/lkpeNJh2FFQpJtOWJqTPflsxeAIzpGlvldOphA1fZUgzJOfkSOTma1SEJz
X-Gm-Gg: AY/fxX5FTGt+Z3BtPVdgxL/+1gUOkwqIKZSTSR6aaHfvHQrefwIaC9DtfbAEhvzjI6q
	aRNAZKxcwDoM7KGUrHGld1cVn8MxK/3kCP6O2Ew+ef+aBq27yAUALSfare2HZ6Gv/CE/e8bvM1x
	kX8xuDZ6Mpj32LBg6vHm0YHQkBEoleXw1LfbA0Vegju4nqhTA2ef2Sv3c6Sc++cip7V5SbaMLrr
	Fswo/+2cIWseiMxM1fSMi+Bfew1OQHhxXqtpk+ZKJboVmBjRGQIU9upkK6efJOjlVGTCgBbRzYN
	wUkw9NFRQia4amf/yPbqwK5EKedh7vJnv2oBLfHJz6HkgBONL/dr9zmK56uvsTQdona0HI7fDZv
	f8f9Iu/5hJ/+GSoMLJ3kcM4eZ2NgzxzNqpWi8oZM0bZyIIrKt3xmrr34Co0LPPbeYjUiiVx+1O0
	bPZzA80+zOQt8AKfsrdhIx87EdInsPM51r5Tis0NdHlii/ooeB
X-Google-Smtp-Source: AGHT+IGsVohFDuswH7THjFu7IaAKomnfvkkvg3GyhVDadvXrQCGlVjxITwcTa3/oDAwGnBeRXk6FMQ==
X-Received: by 2002:a05:6122:312a:b0:55b:305b:4e34 with SMTP id 71dfb90a1353d-56348013a6dmr3634206e0c.20.1767981566205;
        Fri, 09 Jan 2026 09:59:26 -0800 (PST)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com. [209.85.222.46])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5636106e953sm4169541e0c.8.2026.01.09.09.59.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 09:59:26 -0800 (PST)
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-94120e0acbeso2702357241.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 09:59:24 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWABqwbnI2U33/WTvo3y1fyZg7p77Nyxnvs3FB6XXrIGEgzzMIXrZBytCTJGFNpotJOhVFztFj16IqA@vger.kernel.org
X-Received: by 2002:a05:6102:c11:b0:5db:1fbc:4462 with SMTP id
 ada2fe7eead31-5ecb6904fc1mr4710351137.31.1767981564119; Fri, 09 Jan 2026
 09:59:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
 <1c7657d6c06d99bc2f90251995ad272b5704717d.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
 <42bbdec7-ce6d-417c-a13d-ce0a6782bc9a@kernel.org> <aWEnfJonv4egKhXo@tom-desktop>
 <CAMuHMdUm-yHkRw0k42pfq9BD8urLO7rqF2yD7s2JbkMFpRTQwQ@mail.gmail.com> <aWE8ikhsthB_0VQV@tom-desktop>
In-Reply-To: <aWE8ikhsthB_0VQV@tom-desktop>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 9 Jan 2026 18:59:12 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWGf7MgFzxjuea8agZgSyAMzXwFYO22NmRZ7i1-VPzqFw@mail.gmail.com>
X-Gm-Features: AZwV_QifanvuoW-_irwZsNnFdMvbLRSaB3vvL73nICwAcFv_-LTwhwad0tEOl0o
Message-ID: <CAMuHMdWGf7MgFzxjuea8agZgSyAMzXwFYO22NmRZ7i1-VPzqFw@mail.gmail.com>
Subject: Re: [PATCH 09/22] dt-bindings: display: bridge: renesas,dsi: Add
 support for RZ/G3E SoC
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, tomm.merciai@gmail.com, 
	linux-renesas-soc@vger.kernel.org, biju.das.jz@bp.renesas.com, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Tommaso,

On Fri, 9 Jan 2026 at 18:36, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> On Fri, Jan 09, 2026 at 05:22:02PM +0100, Geert Uytterhoeven wrote:
> > On Fri, 9 Jan 2026 at 17:06, Tommaso Merciai
> > <tommaso.merciai.xr@bp.renesas.com> wrote:
> > > On Sun, Nov 30, 2025 at 09:24:57AM +0100, Krzysztof Kozlowski wrote:
> > > > On 26/11/2025 15:07, Tommaso Merciai wrote:
> > > > > The MIPI DSI interface on the RZ/G3E SoC is nearly identical to that of
> > > > > the RZ/V2H(P) SoC, except that this have 2 input port and can use vclk1
> > > > > or vclk2 as DSI Video clock, depending on the selected port.
> > > > >
> > > > > To accommodate these differences, a SoC-specific
> > > > > `renesas,r9a09g047-mipi-dsi` compatible string has been added for the
> > > > > RZ/G3E SoC.
> > > > >
> > > > > Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> > > > > ---
> > > > >  .../bindings/display/bridge/renesas,dsi.yaml  | 120 +++++++++++++++---
> > > > >  1 file changed, 101 insertions(+), 19 deletions(-)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/display/bridge/renesas,dsi.yaml b/Documentation/devicetree/bindings/display/bridge/renesas,dsi.yaml
> > > > > index c20625b8425e..9917b494a9c9 100644
> > > > > --- a/Documentation/devicetree/bindings/display/bridge/renesas,dsi.yaml
> > > > > +++ b/Documentation/devicetree/bindings/display/bridge/renesas,dsi.yaml
> > > > > @@ -28,6 +28,7 @@ properties:
> > > > >            - const: renesas,r9a09g057-mipi-dsi
> > > > >
> > > > >        - enum:
> > > > > +          - renesas,r9a09g047-mipi-dsi # RZ/G3E
> > > > >            - renesas,r9a09g057-mipi-dsi # RZ/V2H(P)
> > > > >
> > > > >    reg:
> > > > > @@ -84,6 +85,13 @@ properties:
> > > > >            - const: pclk
> > > > >            - const: vclk
> > > > >            - const: lpclk
> > > > > +      - items:
> > > > > +          - const: pllrefclk
> > > > > +          - const: aclk
> > > > > +          - const: pclk
> > > > > +          - const: vclk1
> > > > > +          - const: vclk2
> > > > > +          - const: lpclk
> > > >
> > > > Why are you creating completely new lists every time?
> > > >
> > > > No, come with unified approach.
> > >
> > > The intent is not to create a completely new clock list per IP, but to keep a
> > > unified clock definition that can scale with feature differences.
> > >
> > > The previous IP supports a single DSI input port, whereas this IP supports two
> > > DSI input ports.
> > >
> > > Because of this added capability, the hardware naturally introduced an
> > > additional clock.
> > >
> > > Can you please suggest how to handle it?
> >
> > Keep on calling the first vclk "vclk", and add "vclk2" at the end of the list?
> > Then RZ/V2H can specify the first 5 clocks, and RZ/G3E can specify all 6.
>
> Testing a bit your suggestion
> we can do:
>
>   clock-names:
>     oneOf:
>       - items:
>           - const: pllclk
>           - const: sysclk
>           - const: aclk
>           - const: pclk
>           - const: vclk
>           - const: lpclk
>       - minItems: 5
>         items:
>           - const: pllrefclk
>           - const: aclk
>           - const: pclk
>           - const: vclk
>           - const: lpclk
>           - const: vclk2
>
> Then later into the compatible if switch we can do:
>
>
>   - if:
>       properties:
>         compatible:
>           contains:
>             const: renesas,r9a09g047-mipi-dsi
>     then:
>       properties:
>         clocks:
>           items:
>             - description: DSI PLL reference input clock
>             - description: DSI AXI bus clock
>             - description: DSI Register access clock
>             - description: DSI Video clock
>             - description: DSI D-PHY Escape mode transmit clock
>             - description: DSI Video clock (2nd input clock)

All descriptions belong at the top level. Just add the 6th one.

>         clock-names:
>           minItems: 6

Exactly.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

