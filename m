Return-Path: <devicetree+bounces-221816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F61ABA31FA
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 11:24:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9932B7A5FAB
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:23:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51903299957;
	Fri, 26 Sep 2025 09:24:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6844B2797BD
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 09:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758878670; cv=none; b=eTB7gOjmqfu9zcd0HGgneI+WTWOk+Nz93rR9iGa/bd0NQFWjcQ7YTr/Ztv7pkCVNGAeAwYcfk4Vu3uzlmd+pmTbg1KPuGPcbM/TbCKcGYTmgte+YKqoRL9q3tSgHUA4HrFsWeO0xQo1EqLBJ0palciloZxsE0SPuhDpNw6tMrrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758878670; c=relaxed/simple;
	bh=wUbRJMho5V5NS/aRRFUvPe88ctT0n1w78dZf3S8MekM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=B14zqg1yMbjMf0lEWUvzquZE5s0PNprIW6O2WgXwbq3rwvdKw6qhdM0Nzt/rLaxN2D7aDzDE8boceRhdRqA9Euu7tDgrwgoR5SiMDKauCsdR/ArAuQhS3o4kNmRulhwv9FOjW4caOG7GfhHaGPjPMCnSwpfXplHrXNsCWKiSy9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-54bc04b9d07so821063e0c.1
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 02:24:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758878667; x=1759483467;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V8vXN/4Yr3tP+tgTiuwjLQtfBNx9PrZcekFNLffDoHo=;
        b=uWrO9szO3FHhfbICeeHfffESVdu2PH2J7j7VPMg2MykViH+FZr1yZFVKt7m/u7lshn
         ugAYuxIhaQvlt3G10TCViowRRjVkWApaItqQ8le1H53qZ/XXB2Hdl0z9+DiHpPlkxYqq
         ybhadQQOnVZFcorJhVxrKuF5fKof7ITa/1Q3F3Hoi4EujxuU57c8OOIS8NlHxOHKU8NI
         T82Lon0lZz/fDI+MkoXOOHZVqfR6eaF+3Aj+kSDVQNLrJLiyTucCXcTgG8YjyjHCVWJ5
         /n/V+/d69RAgYktrGj356P7AybG38FsLsBEtV3p0zjuNyXuGIohOrTae1Ai3+dgdFvvY
         SXIg==
X-Forwarded-Encrypted: i=1; AJvYcCU6GzrpWrp8vJBvfSc6pw6E412cwv3s/SEbhRb8cmi5muDxPd1tbvGOOtnq/2m28eykRzlYovqgCPaK@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5eNEgvbNcgJt3xepEvlGkFBh9yl70tIL1S4ifG8p4r5y7Qtl0
	xNr/LaY+fFqDCbO1xyaId9xhE0lbEpv+zI5qtludCjyy+KRlsfnH5bryql68SmR5
X-Gm-Gg: ASbGncviWH2kcMTe1fIXyBKCR3UrwOeai0LdwUCSXXu8lI8ikIKAd+J6Pcj0czgj/Xe
	omrZBjYcSOe+Wd47N2qXw5uKorab7/ixWtwW8ExTQ9HXLfea2PS6vmibLXBYLB0qkKWm1dcyO5Y
	94Xdjf5KuVMwY5kk9X7dOTGz4XR670MOcUHGc8h312Aji9dWT3OHzSR/PDyt9YdXpE/xt4IEXBV
	1y2vHrXsfnW2/HRJahIiSKR4jyBBZ440oJFExHwSnx9JIbZ8ugn2rlPi92QYtkSn0ADVITseqKl
	mgrjl0sK7De83hTHRPLEvI91Rd6G/iIe1UIfIEf58162f0Jkmea22LlVSrDXrhpNfIS8fQKHaLq
	wh5jvHigbY/qKV8+CwSTyC8/h9k6wmV/y/rgKn/pVc6VSKkwo0YlvfVvTHTqX
X-Google-Smtp-Source: AGHT+IELNcyYlQr+2Ql+8ZO+Ro5ywmmNH7DSaG29eKMqnpDCN+/H9KKapgoWiG+byjAjaxLa0QMOSQ==
X-Received: by 2002:a05:6122:8c15:b0:54b:d89d:6971 with SMTP id 71dfb90a1353d-54bea1e1d62mr2891662e0c.13.1758878666877;
        Fri, 26 Sep 2025 02:24:26 -0700 (PDT)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54bede0587asm803794e0c.30.2025.09.26.02.24.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 02:24:26 -0700 (PDT)
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-59eb88955d8so736533137.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 02:24:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVqqcv7uo74HiSSprGXsJXwARZqq6x55hXPKdrLqk02AbJ7WKFN2AKweo51B7c71RfTXTF2/7mvSzJd@vger.kernel.org
X-Received: by 2002:a05:6102:621c:20b0:5b1:15:1986 with SMTP id
 ada2fe7eead31-5b100151fe9mr1352205137.15.1758878666185; Fri, 26 Sep 2025
 02:24:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250919100740.28429-1-wsa+renesas@sang-engineering.com> <20250922192640.GA841738-robh@kernel.org>
In-Reply-To: <20250922192640.GA841738-robh@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 26 Sep 2025 11:24:15 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVdMCm2eYmkzo9tOXn5MHyqmvKN-Cu=2RO7q7n3EZF3=A@mail.gmail.com>
X-Gm-Features: AS18NWA7DJU_DehkMVc8u2tM81YJnXpnMbPvztHNUybS4R8bb44hSxW0C3oaO7U
Message-ID: <CAMuHMdVdMCm2eYmkzo9tOXn5MHyqmvKN-Cu=2RO7q7n3EZF3=A@mail.gmail.com>
Subject: Re: [RFC PATCH] ARM: dts: renesas: r9a06g032-rzn1d400-eb: describe LEDs
To: Rob Herring <robh@kernel.org>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-renesas-soc@vger.kernel.org, 
	Magnus Damm <magnus.damm@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

On Mon, 22 Sept 2025 at 21:26, Rob Herring <robh@kernel.org> wrote:
> On Fri, Sep 19, 2025 at 12:07:20PM +0200, Wolfram Sang wrote:
> > To be able to use the LEDs, a configuration switch has to be set to a
> > non-default value. So, infrastructure to support these switches (which
> > modify signal routing via the CPLD on the demo board (DB)) is added as
> > well.
> >
> > Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

> > This patch depends on "[PATCH v3 5/8] ARM: dts: r9a06g032: Add GPIO
> > controllers" which is still in-flight. I send this out as RFC already,
> > so we can discuss the introduction of the switch dependant settings. I
> > copied this approach form RZ/G3S.

> > --- /dev/null
> > +++ b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db-switches.h
> > @@ -0,0 +1,22 @@
> > +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> > +/*
> > + * On-board switches for the Renesas RZ/N1D demo board (DB) and extension
> > + * board (EB)
> > + *
> > + * Copyright (C) 2025 Renesas Electronics Corp.
> > + */
> > +
> > +#ifndef __N1D_DB_EB_SWITCHES_H__
> > +#define __N1D_DB_EB_SWITCHES_H__
> > +
> > +#define SW_OFF         0
> > +#define SW_ON          1
> > +
> > +/*
> > + * SW_2-2:
> > + *     SW_OFF - enable PMOD1-3+LEDs on the extension board
> > + *     SW_ON  - enable CAT/S3 (default)
> > + */
> > +#define SW_2_2 SW_ON
> > +
> > +#endif
> > diff --git a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
> > index 3258b2e27434..849b5ad9c79d 100644
> > --- a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
> > +++ b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
> > @@ -15,6 +15,7 @@
> >  #include <dt-bindings/pinctrl/rzn1-pinctrl.h>
> >
> >  #include "r9a06g032.dtsi"
> > +#include "r9a06g032-rzn1d400-db-switches.h"
> >
> >  / {
> >       model = "RZN1D-DB Board";
> > @@ -185,6 +186,14 @@ fixed-link {
> >       };
> >  };
> >
> > +#if SW2_2 == SW_OFF
>
> The "rule" for DT headers is #defines for numbers only.
>
> If the switches are s/w readable, then I'd say firmware should read them
> and enable/disable the LEDs as appropriate. If not, then maybe the DT
> should have a property reflecting the switch state and firmware uses
> that to enable/disable.

Both options require updating the (10y-old?) firmware, which is unlikely
to happen.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

