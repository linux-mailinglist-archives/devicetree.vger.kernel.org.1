Return-Path: <devicetree+bounces-230663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C9BC04E3E
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 09:58:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D0331A619F4
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 07:58:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52CBF2F6178;
	Fri, 24 Oct 2025 07:57:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 915C32F6168
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 07:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761292634; cv=none; b=d47I+g+8f5zFDZE7XNPKrI7oTqxX2RvnZdtd6ODp4Y2j8/X5d6uYC8bsrydstZWtPtFCQtBgFo58vB8CIwMmTO+kYEQtp5pmvXUeYb2OYg6aybZWByWgxMiQsWVHYOfQKOYfHXKbTY0UghI+8kcIOsa3Gm4Zfqn7S1jMf/SR72A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761292634; c=relaxed/simple;
	bh=uni5/q7wgu22e7PzLdPH1ONXX5dFs+/nb2vDY+DwIyE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DXAnF5Qo596rdYZ8HBg12OAyL9IPCnU13uwm6kWAvBhHcGQRI6D6d4+osA5NlfYraIUfaNtSxBEkqcpMUEnjOw09xUkOXlJu32B8zqXu00Rbwe8dKJiRd0uKjBVbKC/9AWuzAIfCOdVxxl7DcWLh2dFV4fJoXslRWbj4A+VIcww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5db4006eb0fso310504137.2
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 00:57:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761292631; x=1761897431;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2H0+Y+0nbHCT1nPmHP2N1suTimvZ79Q7MXGtF4XoMw0=;
        b=vZNWuUnBAEGQFgT2Xs+KNI6m9v1U+vTUjhX0k0rmz3vcPBSGFpOgfzc0KGom8JyV0z
         tgEeyAXI+LCSO4wCExFnFQY6aV9OTsGkK41mOkvDx9fRLlQxDl4DUfcKtZDfqfrT5g90
         GwEBvyVFK02hrWYkeZNnyVHh9cGFTmUE5GMR8x2QblLxX2Fue9dyE1qLPoDyXGwJmTEK
         1oSYW7FN8QcKIvdOGzDoXndvd2xYSICai3bzldDR4/uh2LrehJbtvL5NIUVa6C0Y4R/p
         Ksblp+HWjlbbtHhTmxZFN3YFVOfwdRibrHm4NhY0i0J9K2UEusxZx9/RFTIEXD9e2mbI
         ZYiQ==
X-Forwarded-Encrypted: i=1; AJvYcCVKIJBQ4Mp1FbVQFEwX4oEMoZu+Joq8QQi59ssJ5VrFMts/AWw+dV8fK4zLFLhItOUwQ54rWk043KBM@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6m2R/xq6eQPkAIxDuGgt0cY1ZnUDHN9wVK0au8OXyCSOAfZL+
	i+pDamHJJ6IDHw7cAsiFCRRg6FzgKOWgC8VcIZkOJ/0hBonfatIPENKLE8tTydSt
X-Gm-Gg: ASbGncsNScHW8VAXnDJWdPJQfZuXT3haOKm2PNKcpLSGmI0AcCSfi62OTFm8gnidfVj
	4J6wx5fXb2u9YgvX6PWEfcR5uKsYNFjOzss/0FVtKIzvkCwLBOjFk33SsMAJ7crwvLA3xUs+RHi
	Al9VBu3SufDyVS/mbpdkqGxOeKL4NW7rYZGMd17fWi/+8PiY7+KgVjmZtKq8hK+/Kt7f1eaJw75
	ZaQqEr8WIbWQhieF+fxrIU6pMiJ87C/c57T3aghpYltWUB1JMb4fR+E+Ro2lCV5u/3sc72wvh9R
	ffO1Wnszw6e9PCeX9B1q1I6seUXTN+QKP0dTbmMZcsaOtPixFHekfRieuGTGuaVKal6wXRKFS2Z
	4f8haRR3sCBfPzP+6naatVQpHIJc437xvbvOk9RyenSjzjvfwjQ0JV7tAgFpS41jTbH+Mn/ETUC
	nkAlQEYTN2X+Z3fftatYowfqeQbiAbvD1uo+rlqtWjwcmavnwVKavlnPt2O9k=
X-Google-Smtp-Source: AGHT+IEjgj/YYEBVHZTGTusHwkSIm5x45g1XLkCDZDZrfR1zZv49pbCD+kB3b1X1FK8uy7psXmUsIg==
X-Received: by 2002:a05:6102:50a3:b0:5db:2f62:c15 with SMTP id ada2fe7eead31-5db2f621029mr1782624137.41.1761292631184;
        Fri, 24 Oct 2025 00:57:11 -0700 (PDT)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-934abbd2740sm1785954241.16.2025.10.24.00.57.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 00:57:09 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5db4006eb0fso310471137.2
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 00:57:09 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXIw+2G53K6ss2Lpegjoq7De4y4/nCz9bFfAfBpi60lIZhMtGCe9xTrjpRPSoEH+Ow5B5XCNrSw3wvp@vger.kernel.org
X-Received: by 2002:a05:6102:50a3:b0:5db:2f62:c15 with SMTP id
 ada2fe7eead31-5db2f621029mr1782604137.41.1761292628800; Fri, 24 Oct 2025
 00:57:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251022070543.1169173-1-ryan_chen@aspeedtech.com>
 <20251022070543.1169173-5-ryan_chen@aspeedtech.com> <b5441728-06a7-44ea-8876-3a9fc3cf55be@app.fastmail.com>
 <TY2PPF5CB9A1BE626A2F0F6307461D8F64BF2F0A@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
 <6a97fbb4-19c2-4ffa-9c73-26aea02c27e4@app.fastmail.com>
In-Reply-To: <6a97fbb4-19c2-4ffa-9c73-26aea02c27e4@app.fastmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 24 Oct 2025 09:56:57 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXTZZK-Tk0gerpARfr+jUNGPhEfRqGOtTvTTJp=SZ2ayg@mail.gmail.com>
X-Gm-Features: AWmQ_bnSAouTBsQ6YdE-Y1_3m37NwmxEYp_NrgytrqguGhvssb4gZifd3I_f9eg
Message-ID: <CAMuHMdXTZZK-Tk0gerpARfr+jUNGPhEfRqGOtTvTTJp=SZ2ayg@mail.gmail.com>
Subject: Re: [PATCH v6 4/6] arm64: dts: aspeed: Add initial AST2700 SoC device tree
To: Arnd Bergmann <arnd@arndb.de>
Cc: Ryan Chen <ryan_chen@aspeedtech.com>, BMC-SW <BMC-SW@aspeedtech.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
	Jeremy Kerr <jk@codeconstruct.com.au>, Lee Jones <lee@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>, Nishanth Menon <nm@ti.com>, 
	=?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Taniya Das <quic_tdas@quicinc.com>, 
	"Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Eric Biggers <ebiggers@kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 23 Oct 2025 at 22:11, Arnd Bergmann <arnd@arndb.de> wrote:
> On Thu, Oct 23, 2025, at 09:37, Ryan Chen wrote:
> >> > +  aliases {
> >> > +          serial0 = &uart0;
> >> > +          serial1 = &uart1;
> >> > +          serial2 = &uart2;
> >> > +          serial3 = &uart3;
> >> > +          serial4 = &uart4;
> >> > +          serial5 = &uart5;
> >> > +          serial6 = &uart6;
> >> > +          serial7 = &uart7;
> >> > +          serial8 = &uart8;
> >> > +          serial9 = &uart9;
> >> > +          serial10 = &uart10;
> >> > +          serial11 = &uart11;
> >> > +          serial12 = &uart12;
> >> > +          serial13 = &uart13;
> >> > +          serial14 = &uart14;
> >> > +  };
> >>
> >> This looks like you just list all the uarts that are present on the chip, which is
> >> not how the aliases are meant to be used. Move this block into the board
> >> specific file and only list the ones that are actually enabled on that particular
> >> board.
> >>
> >> In particular, the alias names are meant to be local to the board and don't
> >> usually correspond to the numbering inside of the chip. In the defconfig, we
> >> currently set CONFIG_SERIAL_8250_NR_UARTS=8, which is enough for any
> >> board we support so far, but that means only the first
> >> 8 aliases in the list will actually work.
> >
> > Understood. I'll move the aliases block from the SoC dtsi into the
> > EVB board dts. For the EVB, UART12 is used as the default console,
> > and the board labels match the SoC numbering, so I plan to keep:
> >
> > Does that look acceptable?
> > ast2700-evb.dts
> >       aliases {
> >               serial0 = &uart0;
> >               serial1 = &uart1;
> >               serial2 = &uart2;
> >               serial3 = &uart3;
> >               serial4 = &uart4;
> >               serial5 = &uart5;
> >               serial6 = &uart6;
> >               serial7 = &uart7;
> >               serial8 = &uart8;
> >               serial9 = &uart9;
> >               serial10 = &uart10;
> >               serial11 = &uart11;
> >               serial12 = &uart12;
> >               serial13 = &uart13;
> >               serial14 = &uart14;
> > }
>
> I think this would be broken for the defconfig if the consol is
> on serial12. I would recommend using serial0 as the console, like
>
> aliases {
>        serial0 = &uart12;
> }
>
> in this case. If additional uarts are enabled, add those as
> further aliases.

Indeed. Are all these serial ports exposed on the board?
Aliases is mean to list only the ones that are exposed, and the alias
number should match the label on the board/port ("serialN", "debugN",
...), ideally.

Typically only a few ports are exposed, so you may end up with something like:

arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi:           serial0 = &scif1;
arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi:           serial1 = &scif3;
arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi:           serial3 = &scif0;

I deliberately picked this example, as it shows how the serialN
numbering does not need to match the scifM (or uartM) numbering.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

