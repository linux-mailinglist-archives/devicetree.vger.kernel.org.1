Return-Path: <devicetree+bounces-255535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAF0D23EF7
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:27:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7C5723019554
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:27:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C27BD36215F;
	Thu, 15 Jan 2026 10:27:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355A93624A0
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768472875; cv=none; b=P5+dMRHgO3KOHZfVfZcnZXH7oj7+VDg5HvW3Deri8OeKu5e2TAFvXdUgYG92Co+8OjOVlx6k0Ad4JYFhTdPFCR6kqiMpdgmHDdDo7yWCVP17vBEsPOs9oeGZ3U/QSuGzQlMggLeep9z4EEcAZrF5KfSxNSguq/kCA9YFFe03FCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768472875; c=relaxed/simple;
	bh=Nhf2/CHwDEdteT938p0gnbEPbJWBPW0Anlq7VNLM3C8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XbO0JSoZLrT0BcKbRqBkg1fX2JKXVIzHC9plcAdQKewlYED9GWsOk7jTTVmPeUBkrhL/MMr+knc+8IfvyKOobHq/CN1SJgJMpQRDU8KKuZ+IRNDdOgG1YPKD9QS2qch6D0cM35kENPNFrosyQUeH/YRU0qYRy9GCncnJeooOHW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b874c00a39fso123209866b.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:27:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768472873; x=1769077673;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gqR8XdDFFIIFkcmLBykQTFX9t5bxqI0RceWqMGx+9nY=;
        b=MvOG7tq0dF/zNArRGHfx5Sk/KP2EhFlafwn0RDQL8DDCvuDzXnBOZoLhi03jdzcUA3
         RrT+7MFTPRiln5yUm+WxOsTKmP4oZnNQ+ZNaDieGH0m26BMuno3jXhbOVrKRtdEBNAUR
         UBLqE0Uq7i05EzYKIP0fCB5pLVrPammKQ2/ESfwvPQNJZC9z7hfDbMIj56ZAcW7hTB6c
         0CaCN1gC0EW7WxwP3JkVmTtaJgWSbSr6bx7MFZCAZOt2IPoHd+nsYKvKgbqsyVqP3iKQ
         BIVB29eb8feHVOgd9lYCwYd2uhGdtDH6SqU7PCZYCu7UhWDaJzdLfQp/omTQgbUOnlwc
         TpYw==
X-Forwarded-Encrypted: i=1; AJvYcCWcXg/yYrK7ZD8iF874iAaHNaqBBFNEDZjWw1gkzPXXVOEKsZfDOjz/VLvNDkUD7S+gPlpdr3Fpe6GC@vger.kernel.org
X-Gm-Message-State: AOJu0Yws7Iggkpc8VWqXQKN54xomboNYOxj2vgTmo8NMaOdPFqRcJW88
	Wj6tuhQYr5GlIMsyUmUvgJ3aY5fHFeGPaeA83hwVD7NKJFarTJozDKCORh+hgN0X4GI=
X-Gm-Gg: AY/fxX6hpBPrj9kWfI/Izg+CRBNTOfMovbVK+UkFgS4o1oQYomPSA6PFAZbxpG5PVTr
	xz1ADghZFtrogR9UukBQICHAfOrfxk5P6BEak79ZcEmVquVBLGOep1jSAzb0xTjyNrPLEZ/dbL1
	r+P1Td2MFxPWexx2CRQf5rdr9AQtOD29PDICDLF3Oo+4OyQqpjKuwc6h0jM4tOKEgXYdr1ntJ0u
	pTqrukC6CyUCkjMFD/JfPF1Ra61Wi7dco0xRgXR/xopBbwd5qgfaII1ug+7wGc3Ft5UH1tEb8VS
	kMP32oX49YpSv8752RlpxklKfD8nGvfoFTFHx+4xCsy5CL/7PR/U9Bgeor5bjetmoMh8yCEVOow
	WDU55TxzCa5CP+S88wgUCftCO8X6SMFC0F1JuUww5RxHQEd27tchM9kBTHZAy9w3K3xPAka6vI5
	yz/K6RAzYyyzzeWSrLKbZRYhOz+/Txm7wCt8aCJLSwv/5xZsQE
X-Received: by 2002:a17:907:96a2:b0:b87:191f:4fab with SMTP id a640c23a62f3a-b8777c33555mr217940266b.26.1768472872440;
        Thu, 15 Jan 2026 02:27:52 -0800 (PST)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com. [209.85.208.54])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b876dd0e9ffsm347110666b.37.2026.01.15.02.27.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 02:27:52 -0800 (PST)
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-64c893f3a94so3265263a12.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:27:52 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVf+yqwDP8JXTlnr5rPTr2xJui0M+VfRNQHkkjk0QX0gZXcA2I+sw4mlDKXsOpYkvsOw6tRotnQD+TR@vger.kernel.org
X-Received: by 2002:aa7:c2c9:0:b0:64a:86db:526a with SMTP id
 4fb4d7f45d1cf-65412e18d72mr1612333a12.4.1768472535836; Thu, 15 Jan 2026
 02:22:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
 <fcfc4fc5123c2351d96ac102aa5081bd99c8a40e.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
 <20251203-shrew-of-original-tempering-8a8cfc@quoll> <aTA-Hj6DvjN4zeK6@tom-desktop>
 <CAMuHMdW=UkZxhf-pbtp6OBFd_3jPcjUaKFmH4piuc+P=kgxzGA@mail.gmail.com>
 <TY3PR01MB11346DF85F8F7EA9ADDED16EB868CA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <CAMuHMdUhke83ZVXxDQE_Dt1HRwyGeoMq1pYmEP47WOgR_vYNtA@mail.gmail.com> <TY3PR01MB113463EE3F22A0E0E6C97DC40868CA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB113463EE3F22A0E0E6C97DC40868CA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 15 Jan 2026 11:22:02 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVP4M6mS6itgN13QG_w7rxUo6wUbA2cbWU38=vPA0XLhw@mail.gmail.com>
X-Gm-Features: AZwV_QhQwMICcWnKjFrMx3lNkRtKNznFCujSIJRMO0ecc8R3fUkTKRJSiViAt_Y
Message-ID: <CAMuHMdVP4M6mS6itgN13QG_w7rxUo6wUbA2cbWU38=vPA0XLhw@mail.gmail.com>
Subject: Re: [PATCH 10/22] dt-bindings: display: renesas,rzg2l-du: Add support
 for RZ/G3E SoC
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: "laurent.pinchart" <laurent.pinchart@ideasonboard.com>, 
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Tommaso Merciai <tomm.merciai@gmail.com>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	"magnus.damm" <magnus.damm@gmail.com>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Biju,

On Thu, 15 Jan 2026 at 11:10, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > From: Geert Uytterhoeven <geert@linux-m68k.org>
> > On Thu, 15 Jan 2026 at 08:48, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > > > From: Geert Uytterhoeven <geert@linux-m68k.org> On Wed, 3 Dec 2025
> > > > at 14:42, Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com> wrote:
> > > > > On Wed, Dec 03, 2025 at 09:23:53AM +0100, Krzysztof Kozlowski wrote:
> > > > > > On Wed, Nov 26, 2025 at 03:07:22PM +0100, Tommaso Merciai wrote:
> > > > > > > The RZ/G3E Soc has 2 LCD controller (LCDC), contain a Frame
> > > > > > > Compression Processor (FCPVD), a Video Signal Processor
> > > > > > > (VSPD), Video Signal Processor (VSPD), and Display Unit (DU).
> > > > > > >
> > > > > > >  - LCDC0 supports DSI and LVDS (single or dual-channel) outputs.
> > > > > > >  - LCDC1 supports DSI, LVDS (single-channel), and RGB outputs.
> > > > > > >
> > > > > > > Add then two new SoC-specific compatible strings 'renesas,r9a09g047-du0'
> > > > > > > and 'renesas,r9a09g047-du1'.
> > > > > >
> > > > > > LCDC0/1 but compatibles du0/du1...
> > > > > >
> > > > > > What are the differences between DU0 and DU1? Just different
> > > > > > outputs? Is the programming model the same?
> > > > >
> > > > > The hardware configurations are different: these are two distinct hardware blocks.
> > > > >
> > > > > Based on the block diagrams shown in Figures 9.4-2 (LCDC1) and
> > > > > 9.4-1 (LCDC0), the only difference concerns the output, but this
> > > > > variation is internal to the hardware blocks themselves.
> > > > > Therefore, LCDC0 and LCDC1 are not identical blocks, and their
> > > > > programming models differ as a result.
> > > > >
> > > > > In summary, although most of the internal functions are the same,
> > > > > the two blocks have output signals connected to different components within the SoC.
> > > > > This requires different hardware configurations and inevitably
> > > > > leads to different programming models for LCDC0 and LCDC1.
> > > >
> > > > Isn't that merely an SoC integration issue?
> > > > Are there any differences in programming LCDC0 or LCDC1 for the
> > > > common output types supported by both (single channel LVDS and 4-lane MIPI-DSI)?
> > >
> > > Dual LVDS case, dot clock from LCDC0 is used in both LCDC's.
> >
> > For the single dual-channel LVDS output on LCDC0, or for using two independent LVDS outputs on both
> > instances? How is this handled?
>
> Dual-channel LVDS output on LCDC0, we use the data from LCDC0.

That's the "dual-link" case below? But that case doesn't use LCDC1 at all,
so how can "dot clock from LCDC0 is used in both LCDC's" be true?
What am I missing?

>
> We have the following use cases:
>
> Single-link(ch0 only):
>   This mode outputs the image data of LCDC0 to LVDS (ch0). In this mode,
>   LVDS (ch1) is not used.
>
> Single-link(ch1 only):
>   This mode outputs the image data of LCDC1 to LVDS (ch1).
>   In this mode, LVDS (ch0) is not used.
>
> Single-link(2ch):
>   In this mode, the image data of LCDC0 is output to LVDS (ch0) and the
>   image data of LCDC1 is output to LVDS (ch1).
>   Since LVDS (ch0) and LVDS (ch1) are not synchronously related, they
>   can be output in different image formats and can be operated asynchronously.
>
> Single-link(Multi)
>   In this mode, the image data of LCDC0 is output to both LVDS (ch0) and
>   LVDS (ch1). LVDS (ch0) and LVDS (ch1) operate synchronously.
>
> Dual-link:
>   In this mode, the input image data from LCDC0 is separated into Even pixels and
>   Odd pixels, and the output is distributed to LVDS ch0 and ch1.
>
>
> > Don't you need a companion property to link them together?
>
> Yes, We use companion property for Dual channel LVDS(Dual-Link) use case.
> >
> > Is this similar to dual-channel LVDS on R-Car E3 and RZ/G2E?
>
> Yes.

OK, "companion" is in the renesas,lvds bindings, which are not yet updated
for RZ/G3E? Do you need it in "renesas,rzg2l-du", too?

> > On these SoCs we have a single combined device node for all DU instances (which comes with its own set
> > of issues, e.g. Runtime PM and Clock Domain handling).
>
> But in our case, it has 2 separate independent LCDC IP's to allow all the possible outputs as mentioned above.
>
> > > Standalone LVDS and DSI the programming flow is same.
> >
> > OK.
> >
> > > > Of there are no such differences, both instances should use the same compatible value.
> > >
> > > Then we need to use a property called display-id, to describe the
> > > supported output types in bindings, right??
> > >
> > > Display-id=0 {LVDS, DSI)
> >
> > LVDS twice?
>
> LCDC0 supports DSI and LVDS (single or dual-channel) outputs.

That's two ports for LVDS (i.e. "twice"), right?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

