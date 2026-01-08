Return-Path: <devicetree+bounces-253002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 774ACD05B9D
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 20:05:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E2BB93018EAE
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 19:04:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA91E328613;
	Thu,  8 Jan 2026 19:03:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8E9320CD9
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 19:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767899039; cv=none; b=OKdzAJQICiO7fIAxkvpjIY3v3gZMEgG4vx+O1xy7T6VBJoHxLf3nwWji4vsJYQVnDw54rAjx9sSRh5tN3QlXl9t7vcDWLYSKcK+oemJNjioh3a5rssM6STvdSubfqVBAmO+7TKXpAFFa01tyr+AtGaCZVQqKBfCVcoeHC6qWNU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767899039; c=relaxed/simple;
	bh=xkdhuC4s+3mOYP0yOIF0uzVtjPP7M61rCMLgQ0C6+CE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ps4GnTMYLuq9Hd3OwgzwxLbj1w1UXceBN9lPaXP1s7gbEMyqBJMtkZb0CsfdTSseMt4hShPsZ2ZBIeAzEwNH4RcpleZ4H9jAAd/KBO+nogJpZVPAu+HF0Mcxf7rUXM0kKIVuzPX6NwojDAI5pfKPczCY6fVrEeoPZRsS/tbaZww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5eea31b5cb7so248787137.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 11:03:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767899037; x=1768503837;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l4POSF/G2AiiMzhu15VytRAuNKvteZUdBLrFSKMZB68=;
        b=hJQZb9tnMCWrd+prJWgEUMp4v5VjwXluoUo0MChnarbSj5abzLTSytF+MFaVXVbBUj
         2Cnkg2qJuX8TewnVtIedJghgNkeBIp8VHge7Cw4JhhzFtFDZzC8Sy0XxPizmx7PURgxX
         ujurivhiBUuRCfxz/FFHX7se1Wm4RSQvjdFnI4Goq1HwfUhdLFOHKypWSvY6dn1GASPx
         c38s+rYsb+E2SUA9VchBOwi54zXMrnNTvR719nNRGtWMnVoslMdzMo/nSFGZCoo6KaMJ
         Zz3HtXz7nckaQooZfX2m/LQdP7W4xVhKLHt3OCEJUBE/pWJo9NAieLbykVMx9RAumsAc
         toSw==
X-Forwarded-Encrypted: i=1; AJvYcCX0awmmfxpJcv3hqy3niN050W/BnS0Eewr+Qlgen4yhmjKHPc6Aif/suAY6jjvBHAmEEpzFxyeI1hFM@vger.kernel.org
X-Gm-Message-State: AOJu0YzITvwlY+J15GAwGDH/+9TyNSsgvkxfFg6FCkGCI0T/c7HlUqBy
	4R8F2ObABJ42qfeLNlvbcTJ/sguNGRKvLgZNe0OGnIzTYEpTNsB9oOAWyGCTcERH
X-Gm-Gg: AY/fxX7BNQb5Y9QUU5g5jxgPYQuXMMWLegjij0kfwPMN7P11G5vr6l6vXGeDqfd/zOb
	ldUG2k1tpTUl6lOwSAJ2Wq7QMIv2g6O4zQ9L6Gx8doXqgDLHKPOVSc48DrZWBb1/GprXeLozO0Z
	pB0HRJYuYgX90JbS9T9zJ2bgp61o2mnK7SpxOg8Xi/VsvOg8AO4rhO1FQv1ymVMK2Z6b33dpI4o
	1VQv6nNg3hh5/1HwBRKDQr+tkuR0H8gMOmnm44dLszV3L4w6P/ngWuptc3OLA9GMInrSEgBANcS
	L8kBSDK6xJbQu8tm3y6LkVmo9FF9ho6GNV5fc0+hg+BWHqESVjno7crOfLuq22ES+9xW3njV/pF
	AbIUiWmsRxuqgXiL+myUkPN2TA7qvZ8yKdsP5bivVZTf7yG759z/Fofy8kJHjiN9ZcE3OYdPWtd
	5Nt1ZUL8R//aoGrcfHOQ1T+BeKvDqeCrhgiwbLuJHYo9QV3lB8
X-Google-Smtp-Source: AGHT+IE1SV0nqTj3izrUFFffYPsGiqIRNedLM2dqHxURFtyN/ytW1Xj6DrThTRR1UpmKDl8iBR/Gfg==
X-Received: by 2002:a05:6102:b09:b0:5db:cc92:26e7 with SMTP id ada2fe7eead31-5ecb8bea935mr2670618137.38.1767899037218;
        Thu, 08 Jan 2026 11:03:57 -0800 (PST)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com. [209.85.222.44])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944123fca44sm6688664241.7.2026.01.08.11.03.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 11:03:56 -0800 (PST)
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-93f5b804d4aso1207225241.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 11:03:56 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWBXWre0D+hOY5yOhcUh/5zIzma5BwthOe/RmkWNOa24SRE6sjFMqO3h0/Vb5GcORJbnyljHJJzal/g@vger.kernel.org
X-Received: by 2002:a67:e115:0:b0:5ee:9df0:a5f4 with SMTP id
 ada2fe7eead31-5ee9df0a818mr1083422137.31.1767899035850; Thu, 08 Jan 2026
 11:03:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251205150234.2958140-1-cosmin-gabriel.tanislav.xa@renesas.com>
 <20251205150234.2958140-8-cosmin-gabriel.tanislav.xa@renesas.com>
 <CAMuHMdWSB=9d7jwFcLjJY3zJjs7neFJ+tr+GtTDAU85=o8xK1A@mail.gmail.com> <TYRPR01MB156196B6A2C6808841B5BAF818585A@TYRPR01MB15619.jpnprd01.prod.outlook.com>
In-Reply-To: <TYRPR01MB156196B6A2C6808841B5BAF818585A@TYRPR01MB15619.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 20:03:43 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXJ-zC0kWViGTbdyRifNKB5R1DRpLcgyk0_zr=XTjx9tA@mail.gmail.com>
X-Gm-Features: AZwV_QiG1FTx5__3lAFmUWj9TP06IZp1Z3Zx_MjG3bA3hF9KZ0sDQDS0nL8rtcc
Message-ID: <CAMuHMdXJ-zC0kWViGTbdyRifNKB5R1DRpLcgyk0_zr=XTjx9tA@mail.gmail.com>
Subject: Re: [PATCH v2 7/8] arm64: dts: renesas: r9a09g077m44-rzt2h-evk: add
 GPIO keys
To: Cosmin-Gabriel Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"magnus.damm" <magnus.damm@gmail.com>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Thu, 8 Jan 2026 at 19:28, Cosmin-Gabriel Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> > From: Geert Uytterhoeven <geert@linux-m68k.org>
> > On Fri, 5 Dec 2025 at 16:04, Cosmin Tanislav
> > <cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> > > The Renesas RZ/T2H Evaluation Kit has three user buttons connected to
> > > GPIOs that can be used as input keys.
> > >
> > > Add support for them.
> > >
> > > Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

> > > --- a/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts
> > > +++ b/arch/arm64/boot/dts/renesas/r9a09g077m44-rzt2h-evk.dts
> > > @@ -7,6 +7,8 @@
> > >
> > >  /dts-v1/;
> > >
> > > +#include <dt-bindings/input/input.h>
> > > +
> > >  #include "r9a09g077m44.dtsi"
> > >
> > >  /*
> > > @@ -60,6 +62,37 @@ / {
> > >         model = "Renesas RZ/T2H EVK Board based on r9a09g077m44";
> > >         compatible = "renesas,rzt2h-evk", "renesas,r9a09g077m44", "renesas,r9a09g077";
> > >
> > > +       keys {
> > > +               compatible = "gpio-keys";
> > > +
> > > +#if (!SD1_MICRO_SD)
> > > +               /* SW2-3: ON */
> >
> > Shouldn't that be OFF?
>
> Good catch! Yes, it should be OFF, as it's ON for SD Card.

Thanks for the confirmation, I will fix it why applyig.
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

> I will fix it for the next version.

Hence no need to resend.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

