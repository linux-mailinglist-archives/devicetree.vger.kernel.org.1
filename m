Return-Path: <devicetree+bounces-253885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B4956D12555
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:35:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 58F893011EC1
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:35:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 035A232572F;
	Mon, 12 Jan 2026 11:35:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51240356A08
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 11:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768217729; cv=none; b=jGHiYTAFPUTmqvrVvBRz8mzEbmrHTXuTh9tAtX6GUcsv6+C5Dh+EP3ZCXxLyZciCEzchAyPkFMZKvvxl37Q4+b5F8bRwB0RNBmvzA/jS5vM27Kp/O6/fgOBk2hyw38FWwqbfqu4Cc0RzFG9THQH6HXULr8kAr1H75XH4nQK4KV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768217729; c=relaxed/simple;
	bh=e8sL06nXoNEupuikp31TvXrN3i392xMPCHbyF8xMO04=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P3i/QtDkaTmB3kqYcL5xf/LVn5/LVil1GnZmOul3Iuu6GEfjTyKK/7avDN8Vh0l+zwGuLyA3BTR/YDdHfLd937fy/PI9olfUGlBIfIZtWcGnKlIvbKJpdivRIsCdanWDKUOI2XPCn7ya0TcPss0ec7mMd5lo0XhD6Q2+a56L5Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-94240659ceaso2050608241.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 03:35:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768217727; x=1768822527;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kCwZy8nplNPe4SBnl4QbdPCHxaIVjw84NdLZ03XKiqs=;
        b=K6qnQtmY5P54AlfTfC6xgDp+4Fj2/80euSAHW2sz4byiKeYBqgMsLXrGYklg3HV4Yu
         mC+ovgVzCvdAhOo3rMqTL+XaiWuUy38FA+vvldrMYr3nT/K/HW33xzOL4zP9AS56EkDm
         GgB6IDYhw4TGLKtqSbKtFJ2c2rYeQ1L0ekf7F+7HtybIR+PjlpHiyG5DedhmIpwuEsb0
         6vPVhrcwSEqYOF9FBEwT7EHO1rey6EGpj0TUEX0v3i2mHZ1UdDszaOYXQJSvFyFIvXn9
         vKqZtPa8/yVLpFV/BF+aia2LoaqWjgtdM/ZbI/obUQP521n79QbRMtdUSgNDSiMWveW1
         ytyA==
X-Forwarded-Encrypted: i=1; AJvYcCXTp8iOTocn0Q2dwwMyDPQW+paoUo7r+CNV5o7AzgY4tZXoYJbFbLWKMrvR4/noAjhiNqzVIiSBuhkx@vger.kernel.org
X-Gm-Message-State: AOJu0Ywy0AR5zfNbrT3MWHSVWr1oVD21uBEaeM8iYSYF1kcPRsl5rXlO
	Oj4WPVBurXpvBPF7FgYWLMAR8jlBeln1+rCcTtR6VUC2OA44OC4mZ5kmx72j6ley
X-Gm-Gg: AY/fxX4jY7z97Vo+VYqOGR0YIzAxCddkTBlLC38JfJz3VW5tX/BEuQ5ooVH2mH5eFIy
	+Pdi4I8TE5wJyq5WcMTKDJ0etBIl3EP5+Wxn+oQX4/YST2iBK4JCAwsYvVqqlWjTJYYRFChn/RB
	ss6YO3wdfmYlLZCSymTlD3GWAvTD+o7O8Zc+Ma2Idfue9AgGmQwDIHl1NEmIm6RlLudkuz1rNXL
	TfsZz5JcchIg91pC3Ir4hJl0kQEnrG5XikS1+tJtX8/oNOK0vDAY3LIc9ylVO2OBXTc70PAvTL3
	loE+2t+V0Pasfz2K0FKNnqi3QGbiCzaCgMHac4jeqit91F3od3VoaS0x6zF65fVw4kEmldvBUVH
	ByYJ9rNdsnAoev1WLQl1PBSQLpMP9oZTAqFnRUWIp8GBl5cCTjbd+Zj8bdFuUgGXeot1cDxi3r0
	YRn4CBKPINFFXhNttsTDLSYRHBkRNddkYV6TdsF9tZtgbIDkAj
X-Google-Smtp-Source: AGHT+IFfleCV1PnQr+p1QKPOPTtoacZxRzCT5kFDEIOXvT/yrHS3wrvazWpzJg2gDIJRoiDSZdI0tA==
X-Received: by 2002:a67:e103:0:b0:5ed:df4:8b with SMTP id ada2fe7eead31-5ed0df40451mr4544294137.45.1768217727074;
        Mon, 12 Jan 2026 03:35:27 -0800 (PST)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com. [209.85.222.53])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ec772af325sm17165993137.10.2026.01.12.03.35.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 03:35:26 -0800 (PST)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-93f63d46f34so1902367241.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 03:35:26 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWZBpKJo92cFp4qD+hoqou6H0lL0QOxtjQ2l95QJ+SBOxtOrZDmXNfUuf6jMlreo+Ns+gJel1lMA08H@vger.kernel.org
X-Received: by 2002:a05:6102:6058:b0:5ec:c528:4dd3 with SMTP id
 ada2fe7eead31-5ecc5284f7amr6284383137.42.1768217726081; Mon, 12 Jan 2026
 03:35:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
 <1c7657d6c06d99bc2f90251995ad272b5704717d.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
 <42bbdec7-ce6d-417c-a13d-ce0a6782bc9a@kernel.org> <aWEnfJonv4egKhXo@tom-desktop>
 <CAMuHMdUm-yHkRw0k42pfq9BD8urLO7rqF2yD7s2JbkMFpRTQwQ@mail.gmail.com>
 <aWE8ikhsthB_0VQV@tom-desktop> <CAMuHMdWGf7MgFzxjuea8agZgSyAMzXwFYO22NmRZ7i1-VPzqFw@mail.gmail.com>
 <aWTYS9BjWn2bY5Lz@tom-desktop>
In-Reply-To: <aWTYS9BjWn2bY5Lz@tom-desktop>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 12 Jan 2026 12:35:15 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVdntJrcT8d4sCBXdnYr1m3X7s-_58KBiEDV5+GAW353A@mail.gmail.com>
X-Gm-Features: AZwV_QgqmWBfwmu_212Rxj3vjBBvkBDNMwpqCH0FZHQJKUGeDVAXwigjiGPPHlA
Message-ID: <CAMuHMdVdntJrcT8d4sCBXdnYr1m3X7s-_58KBiEDV5+GAW353A@mail.gmail.com>
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

On Mon, 12 Jan 2026 at 12:18, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> On Fri, Jan 09, 2026 at 06:59:12PM +0100, Geert Uytterhoeven wrote:
> > On Fri, 9 Jan 2026 at 18:36, Tommaso Merciai
> > <tommaso.merciai.xr@bp.renesas.com> wrote:
> > > On Fri, Jan 09, 2026 at 05:22:02PM +0100, Geert Uytterhoeven wrote:
> > > > On Fri, 9 Jan 2026 at 17:06, Tommaso Merciai
> > > > <tommaso.merciai.xr@bp.renesas.com> wrote:
> > > > > On Sun, Nov 30, 2025 at 09:24:57AM +0100, Krzysztof Kozlowski wrote:
> > > > > > On 26/11/2025 15:07, Tommaso Merciai wrote:
> > > > > > > The MIPI DSI interface on the RZ/G3E SoC is nearly identical to that of
> > > > > > > the RZ/V2H(P) SoC, except that this have 2 input port and can use vclk1
> > > > > > > or vclk2 as DSI Video clock, depending on the selected port.
> > > > > > >
> > > > > > > To accommodate these differences, a SoC-specific
> > > > > > > `renesas,r9a09g047-mipi-dsi` compatible string has been added for the
> > > > > > > RZ/G3E SoC.
> > > > > > >
> > > > > > > Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

> > > > > > > --- a/Documentation/devicetree/bindings/display/bridge/renesas,dsi.yaml
> > > > > > > +++ b/Documentation/devicetree/bindings/display/bridge/renesas,dsi.yaml
> > > > > > > @@ -28,6 +28,7 @@ properties:
> > > > > > >            - const: renesas,r9a09g057-mipi-dsi
> > > > > > >
> > > > > > >        - enum:
> > > > > > > +          - renesas,r9a09g047-mipi-dsi # RZ/G3E
> > > > > > >            - renesas,r9a09g057-mipi-dsi # RZ/V2H(P)
> > > > > > >
> > > > > > >    reg:
> > > > > > > @@ -84,6 +85,13 @@ properties:
> > > > > > >            - const: pclk
> > > > > > >            - const: vclk
> > > > > > >            - const: lpclk
> > > > > > > +      - items:
> > > > > > > +          - const: pllrefclk
> > > > > > > +          - const: aclk
> > > > > > > +          - const: pclk
> > > > > > > +          - const: vclk1
> > > > > > > +          - const: vclk2
> > > > > > > +          - const: lpclk
> > > > > >
> > > > > > Why are you creating completely new lists every time?
> > > > > >
> > > > > > No, come with unified approach.
> > > > >
> > > > > The intent is not to create a completely new clock list per IP, but to keep a
> > > > > unified clock definition that can scale with feature differences.
> > > > >
> > > > > The previous IP supports a single DSI input port, whereas this IP supports two
> > > > > DSI input ports.
> > > > >
> > > > > Because of this added capability, the hardware naturally introduced an
> > > > > additional clock.
> > > > >
> > > > > Can you please suggest how to handle it?
> > > >
> > > > Keep on calling the first vclk "vclk", and add "vclk2" at the end of the list?
> > > > Then RZ/V2H can specify the first 5 clocks, and RZ/G3E can specify all 6.
> > >
> > > Testing a bit your suggestion
> > > we can do:
> > >
> > >   clock-names:
> > >     oneOf:
> > >       - items:
> > >           - const: pllclk
> > >           - const: sysclk
> > >           - const: aclk
> > >           - const: pclk
> > >           - const: vclk
> > >           - const: lpclk
> > >       - minItems: 5
> > >         items:
> > >           - const: pllrefclk
> > >           - const: aclk
> > >           - const: pclk
> > >           - const: vclk
> > >           - const: lpclk
> > >           - const: vclk2
> > >
> > > Then later into the compatible if switch we can do:
> > >
> > >
> > >   - if:
> > >       properties:
> > >         compatible:
> > >           contains:
> > >             const: renesas,r9a09g047-mipi-dsi
> > >     then:
> > >       properties:
> > >         clocks:
> > >           items:
> > >             - description: DSI PLL reference input clock
> > >             - description: DSI AXI bus clock
> > >             - description: DSI Register access clock
> > >             - description: DSI Video clock
> > >             - description: DSI D-PHY Escape mode transmit clock
> > >             - description: DSI Video clock (2nd input clock)
> >
> > All descriptions belong at the top level. Just add the 6th one.
>
> Please correct me if I'm wrong but if we move up:
>
>         - description: DSI Video clock (2nd input clock)
>
> To the top level description we will have 6 clocks for G3E and 6 for
> RZ/G2L. With that I think dt_binding_check will fail ("is valid under
> each of") because of the oneOf.

RZ/G2L and RZ/V2H need "maxItems: 5" in their if-sections.

> > >         clock-names:
> > >           minItems: 6
> >
> > Exactly.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

