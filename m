Return-Path: <devicetree+bounces-256602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EF7D39B96
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 01:10:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 323F830021EB
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 00:10:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B42BE3B28D;
	Mon, 19 Jan 2026 00:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkIb7C8b"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91B9522F01
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 00:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768781407; cv=none; b=O6kuhSY/B9i/3FHxy83dNIt0iGBmVE140SJsrh2faiO8ZsHSjcg88eX48PMoCMecj2kKg2Z9EraCrWLzmtSzC0d+dRNrjmJ5EbmgsHX5fPQzG+7+x7GCovvRXsMA6a3F8aMge9DrGGGyKN1QcwNdnnj/lVODhMyztsbaVCikJ+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768781407; c=relaxed/simple;
	bh=qTKLxffbvsRQtEokM8325JVSKPK/nqolGbWrdv4nhRk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Z/xS+yi7Tv5hjYaFD9TIDwcT/awiwqfeXQX6gnpncxKmDIFKSDCf9KeJfloI7JTxxp6pneIw1HHSqTk1bhimEWCNFZni2tjsOZITPMTM02dT8TZG2bvQWhSPXkxV4FkFkAVBhReZ3g06B8DK11+pqKOSDv3jFZoxjpbRjVjKc7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkIb7C8b; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 610E1C19425
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 00:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768781407;
	bh=qTKLxffbvsRQtEokM8325JVSKPK/nqolGbWrdv4nhRk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=LkIb7C8b5wZ9h1rcUxUHdpkuiQdpYFFnrpkcA6MN//XPRg3rS6OKbzBQ/uE/gTBIK
	 Hj5f1gOTaRj1vTWjH2mVRZQv5uwLTR4gX1w0gQzVcc5zLabfmUzLGjo/C1Da6LDQPN
	 y58fuVGOlRpwJWHGJCBe+1EeBAQ6JvTbGpMqpe7IzhkhSmYggZQQFNF8DL4qVQPcf4
	 VD6KHQf2woPZ9Besb+VYfTCkXSqrfZ8bR/UifdBobegYPxFgOvVDio3uRbHMV2tbFN
	 msaVhVUFabXTLH/N2PJno6H4VcS0dVB0EEIQnSQBlt4y2X/Xja5SBsd6aN/zXEcO+c
	 iiYlAwGs/PP2w==
Received: by mail-yx1-f46.google.com with SMTP id 956f58d0204a3-64472ea7d18so2888942d50.2
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 16:10:06 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVCVdhn1+rDGyzC+rYdto5cEUFsUnRD2KLpMiDb5PG9J4j4whHCESZ4sp8E8PYexfY3AV6dGRYKoLg3@vger.kernel.org
X-Gm-Message-State: AOJu0YyEk8292Q8eaosUAb5w5Q3XwiJW7iz4qYiD4+e2VsmbfpeQzSvb
	bU8RmBdLomFZkLSmMNL1LcnGeCvTI2joWmS1ThYL1o92qK/M4qusAkpW5uRwU/3ywlTmjIrTxBh
	3cURJIlzuLdGOkkAa0syNdw7Rwl6ISSU=
X-Received: by 2002:a53:ac93:0:b0:646:c0b7:a893 with SMTP id
 956f58d0204a3-6491648c02bmr6820774d50.8.1768781405707; Sun, 18 Jan 2026
 16:10:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014191121.368475-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251014191121.368475-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251016-dimmed-affidavit-90bae7e162aa@spud> <CA+V-a8un1cF=acNjG=79_v7oaR8gzBQ+3z1As8AqrJnOnk-OUw@mail.gmail.com>
 <CA+V-a8vq2EvTb_hXxRzW_Rbp+BPLSaLsEVkvaTjc1zRin-RV=Q@mail.gmail.com>
 <20251208-headgear-header-e17e162f0f52@spud> <CA+V-a8s0gPbe2ffmN1G_7ibVL4+=FKUEQZu3_CwQL=U0T3--DQ@mail.gmail.com>
In-Reply-To: <CA+V-a8s0gPbe2ffmN1G_7ibVL4+=FKUEQZu3_CwQL=U0T3--DQ@mail.gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 19 Jan 2026 01:09:54 +0100
X-Gmail-Original-Message-ID: <CAD++jL=J2UpxQSNrZhCMw2fJ0umM8NRtNys2zMBouAFBoK0m2A@mail.gmail.com>
X-Gm-Features: AZwV_QiqsC1aFqkodB0QjH_7sM4XqD_P7m1ZaeWi3fJkgnm2Ynk4oH-rYO0N0Mw
Message-ID: <CAD++jL=J2UpxQSNrZhCMw2fJ0umM8NRtNys2zMBouAFBoK0m2A@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: renesas,r9a09g077: Document pin
 configuration properties
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Cc: Conor Dooley <conor@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lad,

I think this back-and-forth must be a bit stressful. Sorry about that.

On Wed, Jan 14, 2026 at 9:53=E2=80=AFPM Lad, Prabhakar
<prabhakar.csengg@gmail.com> wrote:

> > > > > > +      renesas,drive-strength:
> > > > > > +        description:
> > > > > > +          Drive strength configuration value. Valid values are=
 0 to 3, representing
> > > > > > +          increasing drive strength from low, medium, high and=
 ultra high.
> > > > >

> I got the feedback from the HW team "The RZ/T2H drive strength
> (driving ability) is expressed using abstract levels such as Low,
> Middle, and High. These values do not correspond directly to specific
> mA units.

But they do correspond to *something* electrical inside the
silicon do they not? Then what is that?

I think it is just 1, 2, 3 or 4 driver stages.

> To determine how much current the pin can actually drive,
> the engineer must refer to the electrical characteristics table.
> Therefore, the drive strength in RZ/T2H is a parameter that switches
> the internal output transistor mode rather than directly representing
> a physical drive current.
>
> Consequently, expressing RZ/T2H drive strength in milli- or
> micro-amps, as suggested by the reviewer, is inappropriate. To
> accurately reflect the SoC's hardware specification, introducing a
> custom property is essential."

This is past my point. What is the maximum current dissapation?

I am asking for the current flowing through the pin if it connected
to ground and 1 second after the driver is turned on, or however
long time it takes for any dynamic transients to die out.

> To elaborate more on this [0] has the tables which are extracted from
> the HW manual [1] (which needs login). For example, considering SDHI
> referring to table 58.39 in [0] the drive strength can be calculated
> for SD using  I =3D C =C3=97 (delta V / deltaT).

This is so clearly about dynamic currents, I am asking for
*static* *maximum* for each setting. In SI unit, milliamperes.

The document says:

  drive-strength-microamp:
    description: sink or source at most X uA

So *at most*.
And low, middle, high isn't any SI unit.

If you *really* want to make this complicated and related to
an equation using capacitance, voltage and time, then you are
perhaps looking for the slew-rate property:

  slew-rate:
    $ref: /schemas/types.yaml#/definitions/uint32
    description: set the slew rate

This we haven't defined, because it has exactly the dynamic
properties you are talking about. It can be low/medium/high
and depend on the load. It reflects something like
V/s (voltage change per time unit) in the end.

Yours,
Linus Walleij

