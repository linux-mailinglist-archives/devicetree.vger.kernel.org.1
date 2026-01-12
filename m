Return-Path: <devicetree+bounces-253931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BE635D12DE0
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:39:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D70A43004CFD
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 13:39:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CD8F356A18;
	Mon, 12 Jan 2026 13:39:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC7B735970E
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 13:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768225170; cv=none; b=RgKuwS1K6/zlYFjLrW3wOC7ZTuZ6jQLX74aCv3eqtuFRUWbLuuBx5OemKz/8lsNFWFaRoH71QdI7vkjFBW7HwlROI37IVVGPCRGEjKHpvyXnNe1lOfrNUh+Hx4oVy1El88aIgSWU7ETa4mn1AvA5eijSeAeWWR1MACX+6Eb8B84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768225170; c=relaxed/simple;
	bh=9yBqdyrTqxi+3IyjZow+5t2Zev5EGWYpylLGOmF6JTY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YWpSDAjp+DJJPVD85w284fsBpdaHAiBU2HNdlNmgKUk0VgmVCMqARfOGeAH7KZCiMFtdEAyXr0M9BwN9Jt+kDMN3+nXpBUGLlNgV5G+28awrIUq4Rd/PACdtOx1Am81ppMMbZYzR+Pre7XvwKWGyICZLljikx/hDudu2dnZsVTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-7ce229972f1so5924228a34.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 05:39:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768225167; x=1768829967;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mw1aKltaSTC5rf8Ujw6cZSHrtgE4MMBQjtQaAe26qy0=;
        b=a5FivP7085LBlow6bkKV8ydssUCAAdYKUVCL7YuuiLqg8xLdA8V21s2+oVm84cZh1Y
         v34hOYFF7LVwgA7OFqbV24ZCCQpL3kXl/mnhIcy6zapF15CdcMnZ7Sz6t4aWHE5WOM54
         E/jApktxqdYtmoeVGhIUrheT3Os3I72PHDKyQfM2DNuCmTzuLzv2HThDILFR90UOduvS
         Ytulbh7CF1r+wVq5rxPbyeh+UvkZPJFXH+YPy1r2Thv53WKbLbCOetJC73ilkDcMEMEB
         OJZHbuVt0Fak7ItqqIhdnxbKWYuCf6tY2M3oHOqaDGy/U1FiQYoo3fsIqE1Unmlpio+A
         OarA==
X-Forwarded-Encrypted: i=1; AJvYcCXMHOQc8bRVPL5I3Xzx7lQOIuMEbYz5rQhxqBDUMcd39hkHGkI5V23TtTLOhsByAbXVszEv9hru8HBs@vger.kernel.org
X-Gm-Message-State: AOJu0YygFP7UUw1DSK5hOiAgVLqczypqk97k0thbVP1IEMFNjO/pKhgd
	qanVwVuttN9Vd/edGvG+OcU3Lsr/SU9/elcBKHRdNAbjTreny+A8wyOXsUNgxhD6
X-Gm-Gg: AY/fxX5i1fzwi2PxEgx+8LofulmIbGnD1ieDjO2qdyePON/cRc3WwO8pOxUFMBcjVPr
	GhuH7KrIjtr6Gr7+gqSZ5pwaMlQqoBsxXcgEg3tV5lFNCy9XzUtNSV4wT3mxHCu+HdwD/CJ7Mfo
	WUSFzlBGzbmpeEphB+EzDKMrOc/n2hKHqk1Lh5+XQn7amL08612ou+9gxlhdDKWW/M+khqJoPtP
	eRTM9MFzJtXg3gA47ccaw0imhnKt2vn3swhfnkbMWJCXY/EC3j6m9K6yh/g+bXKlEDxtXYUcQr4
	SIaInh1AH80rj49zXue66yHZNEQP0I7vdJrI3GLncJ1i3BiN70NNf2UTH2y3UBLdnErkzPdi/j6
	uKhPm4jcih7SoX3UNVLRb/2uQ9wFkOJw/aW6k9UujnP0juJ1LvBUBJISNIikwyqz4FOq/Q0p+r1
	ZrPh9hPU0/IIEwPbJlEAKwjS9M1PaYFeQTbHVrE2CM1IzzOjOkRWuR
X-Google-Smtp-Source: AGHT+IGgQtbr0eXqBSXjCGaptJDdYaK6iRhgjMlwrjMmnl6jlNeqMr32I3+pmihdVm/oYesvPPh0sw==
X-Received: by 2002:a05:6830:268f:b0:7ca:c9db:5436 with SMTP id 46e09a7af769-7ce50affb10mr12839999a34.8.1768225167584;
        Mon, 12 Jan 2026 05:39:27 -0800 (PST)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com. [209.85.167.182])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ce478d9f6dsm13513706a34.24.2026.01.12.05.39.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 05:39:27 -0800 (PST)
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-450b5338459so4041989b6e.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 05:39:27 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXq+cyvVJSO8Lc+MYew6nBp1XB9Tfzf8nlgVFz6Bixv5WkGzPRmJduj+g3tfoOhLflquDb8ovJ/jzlt@vger.kernel.org
X-Received: by 2002:a67:e716:0:b0:5db:f615:1819 with SMTP id
 ada2fe7eead31-5ecb5cbba6cmr5928342137.3.1768224845221; Mon, 12 Jan 2026
 05:34:05 -0800 (PST)
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
 <aWTYS9BjWn2bY5Lz@tom-desktop> <CAMuHMdVdntJrcT8d4sCBXdnYr1m3X7s-_58KBiEDV5+GAW353A@mail.gmail.com>
 <aWTiKQFBZT4hpaG_@tom-desktop>
In-Reply-To: <aWTiKQFBZT4hpaG_@tom-desktop>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 12 Jan 2026 14:33:54 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV4hkcU6v4v9kSddyOftZnExZ6B5Q9DykRig1rosDT8bQ@mail.gmail.com>
X-Gm-Features: AZwV_QipiAWkh5RwyVe2WxFleu8eNUYqxvAWPYb1wspLI2J-Wc5fAFHMdZBQFTI
Message-ID: <CAMuHMdV4hkcU6v4v9kSddyOftZnExZ6B5Q9DykRig1rosDT8bQ@mail.gmail.com>
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

On Mon, 12 Jan 2026 at 13:00, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> On Mon, Jan 12, 2026 at 12:35:15PM +0100, Geert Uytterhoeven wrote:
> > On Mon, 12 Jan 2026 at 12:18, Tommaso Merciai
> > <tommaso.merciai.xr@bp.renesas.com> wrote:
> > > On Fri, Jan 09, 2026 at 06:59:12PM +0100, Geert Uytterhoeven wrote:
> > > > On Fri, 9 Jan 2026 at 18:36, Tommaso Merciai
> > > > <tommaso.merciai.xr@bp.renesas.com> wrote:
> > > > > On Fri, Jan 09, 2026 at 05:22:02PM +0100, Geert Uytterhoeven wrote:
> > > > > > On Fri, 9 Jan 2026 at 17:06, Tommaso Merciai
> > > > > > <tommaso.merciai.xr@bp.renesas.com> wrote:
> > > > > > > On Sun, Nov 30, 2025 at 09:24:57AM +0100, Krzysztof Kozlowski wrote:
> > > > > > > > On 26/11/2025 15:07, Tommaso Merciai wrote:
> > > > > > > > > The MIPI DSI interface on the RZ/G3E SoC is nearly identical to that of
> > > > > > > > > the RZ/V2H(P) SoC, except that this have 2 input port and can use vclk1
> > > > > > > > > or vclk2 as DSI Video clock, depending on the selected port.
> > > > > > > > >
> > > > > > > > > To accommodate these differences, a SoC-specific
> > > > > > > > > `renesas,r9a09g047-mipi-dsi` compatible string has been added for the
> > > > > > > > > RZ/G3E SoC.
> > > > > > > > >
> > > > > > > > > Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> >
> > > > > > > > > --- a/Documentation/devicetree/bindings/display/bridge/renesas,dsi.yaml
> > > > > > > > > +++ b/Documentation/devicetree/bindings/display/bridge/renesas,dsi.yaml
> > > > > > > > > @@ -28,6 +28,7 @@ properties:
> > > > > > > > >            - const: renesas,r9a09g057-mipi-dsi
> > > > > > > > >
> > > > > > > > >        - enum:
> > > > > > > > > +          - renesas,r9a09g047-mipi-dsi # RZ/G3E
> > > > > > > > >            - renesas,r9a09g057-mipi-dsi # RZ/V2H(P)
> > > > > > > > >
> > > > > > > > >    reg:
> > > > > > > > > @@ -84,6 +85,13 @@ properties:
> > > > > > > > >            - const: pclk
> > > > > > > > >            - const: vclk
> > > > > > > > >            - const: lpclk
> > > > > > > > > +      - items:
> > > > > > > > > +          - const: pllrefclk
> > > > > > > > > +          - const: aclk
> > > > > > > > > +          - const: pclk
> > > > > > > > > +          - const: vclk1
> > > > > > > > > +          - const: vclk2
> > > > > > > > > +          - const: lpclk
> > > > > > > >
> > > > > > > > Why are you creating completely new lists every time?
> > > > > > > >
> > > > > > > > No, come with unified approach.
> > > > > > >
> > > > > > > The intent is not to create a completely new clock list per IP, but to keep a
> > > > > > > unified clock definition that can scale with feature differences.
> > > > > > >
> > > > > > > The previous IP supports a single DSI input port, whereas this IP supports two
> > > > > > > DSI input ports.
> > > > > > >
> > > > > > > Because of this added capability, the hardware naturally introduced an
> > > > > > > additional clock.
> > > > > > >
> > > > > > > Can you please suggest how to handle it?
> > > > > >
> > > > > > Keep on calling the first vclk "vclk", and add "vclk2" at the end of the list?
> > > > > > Then RZ/V2H can specify the first 5 clocks, and RZ/G3E can specify all 6.
> > > > >
> > > > > Testing a bit your suggestion
> > > > > we can do:
> > > > >
> > > > >   clock-names:
> > > > >     oneOf:
> > > > >       - items:
> > > > >           - const: pllclk
> > > > >           - const: sysclk
> > > > >           - const: aclk
> > > > >           - const: pclk
> > > > >           - const: vclk
> > > > >           - const: lpclk
> > > > >       - minItems: 5
> > > > >         items:
> > > > >           - const: pllrefclk
> > > > >           - const: aclk
> > > > >           - const: pclk
> > > > >           - const: vclk
> > > > >           - const: lpclk
> > > > >           - const: vclk2
> > > > >
> > > > > Then later into the compatible if switch we can do:
> > > > >
> > > > >
> > > > >   - if:
> > > > >       properties:
> > > > >         compatible:
> > > > >           contains:
> > > > >             const: renesas,r9a09g047-mipi-dsi
> > > > >     then:
> > > > >       properties:
> > > > >         clocks:
> > > > >           items:
> > > > >             - description: DSI PLL reference input clock
> > > > >             - description: DSI AXI bus clock
> > > > >             - description: DSI Register access clock
> > > > >             - description: DSI Video clock
> > > > >             - description: DSI D-PHY Escape mode transmit clock
> > > > >             - description: DSI Video clock (2nd input clock)
> > > >
> > > > All descriptions belong at the top level. Just add the 6th one.
> > >
> > > Please correct me if I'm wrong but if we move up:
> > >
> > >         - description: DSI Video clock (2nd input clock)
> > >
> > > To the top level description we will have 6 clocks for G3E and 6 for
> > > RZ/G2L. With that I think dt_binding_check will fail ("is valid under
> > > each of") because of the oneOf.
> >
> > RZ/G2L and RZ/V2H need "maxItems: 5" in their if-sections.
>
> RZ/V2H -> maxItems: 5 is fine.
> RZ/G2L -> needs 6 clocks no?
>
> Please correct me if I'm wrong.

Sorry, RZ/G2L indeed has 6 clocks, as it has sysclk.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

