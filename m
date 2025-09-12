Return-Path: <devicetree+bounces-216283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FC0B54410
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 09:38:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B0F617B58C6
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 07:36:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A7062D1931;
	Fri, 12 Sep 2025 07:37:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671EB2D0C7B
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 07:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757662664; cv=none; b=h7aQ5HXoJpVlzC2Y5oFB7yO1BzkdFFEmVtd7U1dStZ3ohXJVWWUgjQRezzFWJ+Oc+3yQ2h3mwVry0PMHx/vflUGyGpIiQiZJf7yEGEf2aP+s8pyegRV/mv2Iyqcehx6r/MimXG2uUoEoFILuc0rMrXoq8Y5ItyWjYjKA5/wupog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757662664; c=relaxed/simple;
	bh=PiktLEImYkgXUvH87G3NyjdiYfU4aHi90F2MtNsUp3k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V67MDifGntMmhqTKaWiAZrYc+Mm3I9L0s6VpVzHlB7kIz75RaWLZ6z3168mlOrAQUBjhlLCKZsYAt9eplfQunbvymmgc16KHKESW9K53+SRllxbC8yatLay9G9wxvje4a1oo+x63oOhN49oJwF6xn61Dzr74BapmXxVAiT7zcEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-544a2339775so530074e0c.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 00:37:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757662662; x=1758267462;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xRW2V83MklnBniZBmB0Qehe2sLfJWCfmncqnDf+8mVQ=;
        b=VS8U6EVzPJyDVq7/AC7857XxDSNxyqvlbP6c5JdtlBXs8vTFub9KemoxrUPmris7Qc
         C6obJU+bLSkPNbojAZomNM/Ob+SFYk1nniHsJSweEgyApYzkewusLGdn28s0qgeuEwI0
         OvWvH8mciwRyQVxfAD0RIVUoSexKnnUBAC1wHTmJyR7ibO8woijYhXuyPNsn9gNeVUOQ
         vLX/mY5iXdpJY0k3TNTX377M+PEPcO3UxY5uASzqAviY6QrCyokC3kE7XEqacSF6nByr
         ec77+7g9gupWeGdpcVBI+nRJmp1hghkRQ8RsHQMAAto/HuTmhL4whY/Qmk627VvF03dV
         bX1A==
X-Forwarded-Encrypted: i=1; AJvYcCVP8F6fMstC0+x/MRcFPuNkSWHfA7mOwM/pr97L03Jwecn70F5y2fte4asro6I5zNQtpH9ZeSP+V3ZC@vger.kernel.org
X-Gm-Message-State: AOJu0YwP+2+waiK/TcjuNFsATVdmkxtlf6/zSv1vgCIoa05ZcJf3yEOD
	jluNrExVfmndQRu98Nbr7dRx0wOH93l+61aGuAm/5FGURdR2io9xvfE87djsfJ+P
X-Gm-Gg: ASbGncuXf8ZL7Cp9Vexzx87W+yKIHWJVGl7vPlEm0f+cfzu+prs7UorjY2zJyZ6kgNx
	iIdNWBJFv17xMMx/9JvZJVPQlBvoN1fdHMnOplcjb7Rz7URhJcng1dDfd4rXZoAxKHYzkEmGNsu
	0tgQciTi/h4sRkNeaPXMayiF9abeRnnLgsoFWDzZDrxkrmpGaPkUMaOk+HT4R/CtwxZPg7h5rrm
	JKQ/KQold0lZCBvLtw21o+KhLrZI5niIysal+Hyxybq3jM0+CeopxhAYnOauy9RQd0DXJPK3W3E
	5ICN/WDRJ6pTKDzxh26vIYCEDjz47mRVBfdP+pnXXZ64PURP5syFyEbIZGh5GfQQexlCeE9CkRQ
	jLM0Zcixj6nXseumgBS7/hBx4V5eE2gqWZcAMrUvHNTenULK8xx0qi+ndFHXS2GvO1ngNU3BkBw
	0=
X-Google-Smtp-Source: AGHT+IELf8oeIl7x36puSNMzRN8LQleWxL5xOm9Ckw72soAYctruU4y7LyLtHlPFQWaH4btJtpzFZQ==
X-Received: by 2002:a05:6122:2193:b0:545:df94:e5cf with SMTP id 71dfb90a1353d-54a16b310b2mr595677e0c.3.1757662661872;
        Fri, 12 Sep 2025 00:37:41 -0700 (PDT)
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com. [209.85.221.172])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54a0d3f050esm749385e0c.14.2025.09.12.00.37.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 00:37:41 -0700 (PDT)
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-54488e51c37so564275e0c.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 00:37:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVHmKNpwjyBHHnvl4jSq4FzlhJlF1PYMxcC5san2qeygB6DgVPqoGT7bXwQE3ZPIUgf+l6hl1nRCPR5@vger.kernel.org
X-Received: by 2002:a05:6102:4411:b0:523:863d:ecd1 with SMTP id
 ada2fe7eead31-5560a301b3amr693876137.9.1757662661033; Fri, 12 Sep 2025
 00:37:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87o6rjvzf4.wl-kuninori.morimoto.gx@renesas.com>
 <87jz27vzec.wl-kuninori.morimoto.gx@renesas.com> <CAMuHMdVVV5tY_iwb=Xn6XVY-Ai6spBY70yXhc5VRxwDva8BGng@mail.gmail.com>
 <87jz24fqrg.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87jz24fqrg.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 12 Sep 2025 09:37:29 +0200
X-Gmail-Original-Message-ID: <CAMuHMdX3cviP6xHnGP01kRDwuHRrHg0ZpNLV8Mf29MFS1B7S8g@mail.gmail.com>
X-Gm-Features: AS18NWD8o29J0vt7DW3b5lRRM8FrDoQH_WWuzAAAh--HlMV8yj9Iqvo9Z9bUafc
Message-ID: <CAMuHMdX3cviP6xHnGP01kRDwuHRrHg0ZpNLV8Mf29MFS1B7S8g@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: renesas: Add R8A78000 X5H DTs
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Morimoto-san,

CC maz

On Fri, 12 Sept 2025 at 02:39, Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> > > +               /* The Arm GIC-700AE - View 1 */
> >
> > s/700/720/
>
> Oops, thanks. Will fix
>
> > > +               gic: interrupt-controller@39000000 {
> > > +                       compatible = "arm,gic-v3";
> >
> > The documentation states it is compliant with GICv4.1?
>
> I'm not familiar with GIC. And I think there is no v4 support on Linux yet ?
> If my understanding was correct, GICv4 have GICv3 compatible.
> We can use v3 driver so far, and can be replaced to v4 driver if it was
> supported in Linux?

'git grep -i "\<gic.*v4.1"' does show support.

Marc?

> > > +                       #interrupt-cells = <3>;
> > > +                       #address-cells = <0>;
> > > +                       interrupt-controller;
> > > +                       redistributor-stride = <0x0 0x40000>;
> > > +                       #redistributor-regions = <32>;
> > > +                       reg = <0 0x39000000 0 0x20000>, // GICD
> >
> > The base address is 0x38000000, according to the docs?
>
> It is indicated in very deep place in datasheet. I will indicate
> detail in v2.
>
> > > +                             <0 0x397C0000 0 0x40000>, // GICR Core29
> > > +                             <0 0x39800000 0 0x40000>, // GICR Core30
> > > +                             <0 0x39840000 0 0x40000>; // GICR Core31
> >
> > No GICC, GICH, and GICV?
>
> will be added later ?

OK.

> > > +               scif0: serial@c0700000 {
> > > +                       compatible = "renesas,rcar-gen5-scif", "renesas,scif";
> >
> > Missing "renesas,scif-r8a78000" (everywhere)
> > ("make dtbs_check" would have told you).
>
> Grr, thank you for pointing it. will fix
>
> > > +                       reg = <0 0xc0700000 0 0x40>;
> > > +                       interrupts = <GIC_SPI 4074 IRQ_TYPE_LEVEL_HIGH>;
> > > +                       clocks = <&dummy_clk_sgasyncd4>, <&dummy_clk_sgasyncd4>, <&scif_clk>;
> > > +                       clock-names = "fck", "brg_int", "scif_clk";
> >
> > "fck" on SCIF should be (derived from) SGASYNCD16 (66.666 MHz).
> (snip)
> > "fck" on HSCIF should be (derived from) SGASYNCD8 (133.33 MHz).
>
> In the early phase, there is no clock control support, so assume that
> the clocks are enabled by default. Therefore, dummy clocks are used.
> But indeed the naming seems strange. Will use just "dummy-clk".

I know.  But currently the clock rate for the dummy "fck" clocks does
not match reality.  As the SCIF driver tries hard to find the best
clock and divider for the requested transfer rate, it might pick "fck",
breaking serial communication.
So please add dummy clocks for SGASYNCD16 and SGASYNCD8, and use them as
"fck" clocks for SCIF resp. HSCIF.

> > According to the DT bindings, "power-domains" and "resets" are missing.
>
> Unfortunately, can't use for now. It needs SCP support but is under
> development. How should I do in this case ? Maybe use dummy device,
> but can we use it ??

Just leave them out for now, but be prepared to receive complaints
from the dtbs_check bots ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

