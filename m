Return-Path: <devicetree+bounces-242358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D19EC89841
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 12:28:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DBE7D342786
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 11:28:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED240320A38;
	Wed, 26 Nov 2025 11:28:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HFpOe9vw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECE131ED81
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 11:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764156506; cv=none; b=ibe0eiYH8nCbdYb0wJOkGUV3DmFY8d7UwrFCacOHQMj2Kfo1DXhWogysyNKjZILYsrSdKtXx5sVpmlio/6385YnrqHOYiXLcNsWYbxDtQnMTqgsWUV3sbPG3wYhCmZAqVNlzmJIUE/rKrkMFKelJNDTgP6opymr3vQ1RzWilG0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764156506; c=relaxed/simple;
	bh=oOe//IQucPCQt2/bOS8ODblOWIAKg3QxQhc/xwnFTmE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=r8xDpmnMuXHF7J7asy3+Wuo/isq4qvta5n6xls34KnjapoltmIZe/VLyEJYFqUI+ETNiPh5WUBHxaEI86m+2zRHrTk/tyMg2QQ+xUwnlA8Fr3CdKih0jDdZjxuX+zJSjOtm9H/kkwqt00riyGLsPpNVruNtirmZg2LE9j8SZdFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HFpOe9vw; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-477632d9326so39496255e9.1
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 03:28:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764156503; x=1764761303; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0gjsPWAG5XU4d0gqUFjGMxsHwALFfrAEbUfu0r8tuP0=;
        b=HFpOe9vwfZxp494ZoRR7QYTNRMaSKDmrzFmhrLgfYZqF3oRdO/uZsvdVOVRaqChCmo
         WnK5srletzBK4pRZ4eVw3QuPLC3dyuSQWiAQWrKPvvhFZJ7ZTmBtK4O3XOi7hpJJph5E
         58RlbLX/aNs2Ne0LCrYWqliHiIyg3Ta77HzaTdFJ5bQ3wt/n21uRnESxh2ccWGqKtG2v
         bRFbPWhS7fk+aDeqh+h6XqSjgQAX0FKgR7lY8zH5gfYavab35O9/eVXnlDAlHAZuXPJm
         Y3FtsPD32+BX5Bo+RyjTyxpamtz3/6SYNxj+K0dRTb46AJZrDv90gD/b7vZUTZPGjJcZ
         YxhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764156503; x=1764761303;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0gjsPWAG5XU4d0gqUFjGMxsHwALFfrAEbUfu0r8tuP0=;
        b=QgSiNUWcfKjgF0WBtIda6ZLldR90lDUVfEQv7OLPhazbTVIU96UYq4+BzjASwtfNoF
         cJpA+cWcJId0n/liECFsvokDNpaTPo2TKvJaLUacysabKqBE4FM7/rc0Stj6cz/mfrSt
         dZe4aYzBMg1GR36rF4hxsxAkKYEcnvtOLmz46SinG4E//Npep/k9enHFO3fL819O8x/K
         VDSUEuim3syONV1bNZYm4vHUcg6IJ3vgtWROyQCeOhRN7ZyOvz85MiI9l1EXsMwRp52o
         uxuaGdLvE9hcvliuFJ3jO3ad/9OD1KvdCAC6njN6RVFCTwwfGefuz2vLsbt14+MUa8ZA
         DiSA==
X-Forwarded-Encrypted: i=1; AJvYcCWeLbxxEOhV7Yfvh6dEr02cdNjlwvp/NB25F41Sinh211d1ut+WTLHfm104sTxAdHgWy4lziYD4+TYP@vger.kernel.org
X-Gm-Message-State: AOJu0Yzfo9MYn6mXlqq85YH4ayrrSzIk5/PNelCUYpa2s5416t/7s4Rl
	L/lcHX5KKBPZAeBEi9DQpXPO9162AU7KIKFdtwg/QFZue5oWMfEZ8uC82UwE2ktYW/r2cQOIawl
	OYFtJljw6RGgo0uMDItSEQLHf8N1EyGI=
X-Gm-Gg: ASbGncs0ON5+bD85KvqAh3dr/4gqL8smkw9O82rtV2xLYgVBG9B18Y0J7VvWe9Y4+O2
	BOypCO0fvSZoe+uSljh/oM5G6NOQghrXiN+0HIRY5izEksp0FeoOZ+hGaB81CvHlQ5EsVhYiGs2
	waWYvZOKU0AW3aWLjOt/llYInOBWDnJqlyRIc9OsD3UOTLRlum2ipnLvK+qN+ud2yMXnFpszxRb
	5AgUmmNzt7B3ID4hVzHq2RwrHusq/O+ghrHAWa1P0gVIpMWamwyy+vHwQv7geoi5fvXnz2g72S6
	hQVx+nS1HHMd1qCTyuMLU0oH2U+A
X-Google-Smtp-Source: AGHT+IGsGcs9+b0V3iUNaDuT6vqIfILjTB5HiIs14Gmbnk+BUj4GXUftbhZPK55s4SyHtNzqE7Y/0TU4HaYBxD5Ddgg=
X-Received: by 2002:a05:600c:4f4d:b0:477:9ce2:a0d8 with SMTP id
 5b1f17b1804b1-477c00ef4f9mr222627375e9.0.1764156503239; Wed, 26 Nov 2025
 03:28:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251125213202.270673-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <CAMuHMdXKQc3kyT5e_juyMfWz64-oPHig840zAt5qrA+X8chYig@mail.gmail.com>
In-Reply-To: <CAMuHMdXKQc3kyT5e_juyMfWz64-oPHig840zAt5qrA+X8chYig@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 26 Nov 2025 11:27:55 +0000
X-Gm-Features: AWmQ_bl4aspipnH-3EWQKAVi2qBEC4jRR6AuNeqGN4j0z5FbdvMiGA2DRzh7CJs
Message-ID: <CA+V-a8t=T3s3bM6Tkt_E+oWr3O620bmouYNcF_kq=GGX=FT8PA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: interrupt-controller: renesas,rzv2h-icu:
 Document RZ/V2N SoC support
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Geert,

Thank you for the review.

On Wed, Nov 26, 2025 at 11:22=E2=80=AFAM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
>
> Hi Prabhakar,
>
> On Tue, 25 Nov 2025 at 22:32, Prabhakar <prabhakar.csengg@gmail.com> wrot=
e:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Document the Interrupt Control Unit (ICU) on the Renesas RZ/V2N SoC,
> > which is architecturally identical to the ICU used on the RZ/V2H(P)
> > SoC.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Thanks for your patch!
>
> > --- a/Documentation/devicetree/bindings/interrupt-controller/renesas,rz=
v2h-icu.yaml
> > +++ b/Documentation/devicetree/bindings/interrupt-controller/renesas,rz=
v2h-icu.yaml
> > @@ -20,9 +20,14 @@ description:
> >
> >  properties:
> >    compatible:
> > -    enum:
> > -      - renesas,r9a09g047-icu # RZ/G3E
> > -      - renesas,r9a09g057-icu # RZ/V2H(P)
> > +    oneOf:
> > +      - items:
> > +          - enum:
> > +              - renesas,r9a09g047-icu # RZ/G3E
> > +              - renesas,r9a09g057-icu # RZ/V2H(P)
> > +      - items:
> > +          - const: renesas,r9a09g056-icu # RZ/V2N
> > +          - const: renesas,r9a09g057-icu
>
> Given ICU on RZ/V2H has lots of extra registers compared to RZ/V2N,
> I think it would be better to drop the fallback.
>
Agreed, I had missed that. Currently the driver does not handle these
regs but in future we could so it's better to split out.

Cheers,
Prabhakar

> >
> >    '#interrupt-cells':
> >      description: The first cell is the SPI number of the NMI or the
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m6=
8k.org
>
> In personal conversations with technical people, I call myself a hacker. =
But
> when I'm talking to journalists I just say "programmer" or something like=
 that.
>                                 -- Linus Torvalds

