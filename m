Return-Path: <devicetree+bounces-228211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E51CBEA32F
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 17:50:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 19159584CDA
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 15:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63396335066;
	Fri, 17 Oct 2025 15:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d4h0h4Uk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6821C33291A
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 15:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760715267; cv=none; b=ok86LL5YrQNittQmf++IpnvNZeLTJOsaNqpqckuReR9MBZPPiI9kF4dLELeIboM7GFe8dkz2YmcmH24eg427BIWoCdq+bgrlxhgzTRHGHLpYtladfcoS3FgoidsYY3TCExhZLkVVD4i48YmJ1SqHLBaVnUp19qtb1JjcjxLP85I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760715267; c=relaxed/simple;
	bh=UTHjW/toYsIDFb60IqVuORUHKF64xvgXUjf946jP9sk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BZuy10+X9iTP9CzvujvxI5IdDfJDK87Vl074KLfTYUqevH5XuBiQt3xaldL2exdgrLU38lpM+ePIbg08/NqdxdY1mH+OTwqUPLV/YpCgBcbBQ/pR0cqDCypGir4f+ObhnYCY55XTtJLs5M9ZzdNORN12jjRGd9UF1653meM/aog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d4h0h4Uk; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3f0ae439bc3so1043097f8f.1
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 08:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760715264; x=1761320064; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=favt1IDI3QNdxE7vKo/4IJP+8NRTOtxfK/UHHLad8Y4=;
        b=d4h0h4UkQUBi9RG84ziDxhlIlsh3UxB7sn9MR7Yj6W3bbda/QIgbac9Nxjc/PKohD6
         OUfpeEO2D9/VbtZquhIw0u3j/oyBvlYMN5TvwKJBBw064OEmk6YJiddpsAk2KZV/Dcty
         Sr04ODUnmqod/jqWfeYdeefjGE6NhMxOyfKuZnzhXhnm6wHt9VBMuPuh6YUGcSffY7vn
         o4MmEpGYsKQJAoAowELN6harvqe3BvL5v37+1nQ7QgJZESDGGd8Z+4n0M4CpB6njudCz
         iUeig9cBju+kKMttbtS1dpexh15pnseMLKqEeA4ZERcEplzCLQNQwMmJfzjOc5pYTz5M
         juYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760715264; x=1761320064;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=favt1IDI3QNdxE7vKo/4IJP+8NRTOtxfK/UHHLad8Y4=;
        b=inknQffoD+4mRzj7VsDsbzMCxQH17/ty3rKL2dsVBjXtdodO3sF+sFCcvuuK9eGWb9
         +Q9+qOqsG0Z6SOAy63JlRU3TBCx5owO4twx/5IzrlyH73M6fWoliPEVkktaGa/Ryjthl
         CFq4JFVojbkq5Jt3b/G988T7lhPu7W7IEptlRWQvoDo6Jf/IDWx8LnuhsZJKfAWZHE4H
         3eg1awMaZOHWH5betpkvSPQwGFGEUU+dFKoSOT3c27q0hfLrEnCne2AhKjBUE70zaBv3
         D1cDoxyAKgu54FnAobSeiPpW+MY4Yp3RGv9Jb//QLI6nLRmdoT731ggr/yP/q2t5pVhd
         ScNg==
X-Forwarded-Encrypted: i=1; AJvYcCWQROJrDgUnGHKXfLmHHquef8qXOCbedGMEc/WpFh1dE/0Y1AR7jqj7WT5/2SUuGf9nXp+2/R9ntduu@vger.kernel.org
X-Gm-Message-State: AOJu0YxlK6qfSlAJYaTt6jw2w0iwyOtEq/sREctVN+EyP/imExh3OhN/
	MtWyEQZkRzpGap7WFxclr+OK/QHM2bwu55zqYRoBWQv3DyQgH53G0EzSJK6WFrrCdHs1fG4L3hC
	WyAFay2Mpws9acRglbL4/7II3DWJy1Dw=
X-Gm-Gg: ASbGncv+s5tGk3RZOJcMiTnxloXlF6Nu2h7oE/Y/WXbz6OGq+O8J1hexklEvhveNVn2
	bIq3x0D/hasVlf0A6X3SR7TNQyhYtj7RHoiz/WODw3pt1gREtViwAZLWU7xAiK1gqGUTKVPsuKZ
	1E5Y6fUPQxCdtmFK8YWSHD8SxVOkKgT2uJB9gU0498NYXvn0jVeMy6MWZgGnxWrQm+ABoAiVqg1
	wcW4yrQCM7oJyX9EQjvDi1JhTIbKdAaKn98Z9eL/99YP3frK8KGKAcxHWmPMA==
X-Google-Smtp-Source: AGHT+IHfpHgBVmETg3KYRZoAGy7Gg8QhvZwh2b+3jlFtVYjceIivbm2b7FrweI3TQHdE8Iw08/NlAQfWRcgPGmGMoFI=
X-Received: by 2002:a05:6000:4313:b0:3d7:2284:b20 with SMTP id
 ffacd0b85a97d-42704d9cf76mr3237097f8f.3.1760715263625; Fri, 17 Oct 2025
 08:34:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014191121.368475-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251014191121.368475-2-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251016-dimmed-affidavit-90bae7e162aa@spud>
In-Reply-To: <20251016-dimmed-affidavit-90bae7e162aa@spud>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Fri, 17 Oct 2025 16:33:56 +0100
X-Gm-Features: AS18NWBguR9F654YWkASexXoMxk8B54Vyccl4usuxCXhdtptJoKlKHlfL85bFOo
Message-ID: <CA+V-a8un1cF=acNjG=79_v7oaR8gzBQ+3z1As8AqrJnOnk-OUw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: renesas,r9a09g077: Document pin
 configuration properties
To: Conor Dooley <conor@kernel.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Conor,

Thank you for the review.

On Thu, Oct 16, 2025 at 5:41=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Tue, Oct 14, 2025 at 08:11:20PM +0100, Prabhakar wrote:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Document the pin configuration properties supported by the RZ/T2H pinct=
rl
> > driver. The RZ/T2H SoC supports configuring various electrical properti=
es
> > through the DRCTLm (I/O Buffer Function Switching) registers.
> >
> > Add documentation for the following standard properties:
> > - bias-disable, bias-pull-up, bias-pull-down: Control internal
> >   pull-up/pull-down resistors (3 options: no pull, pull-up, pull-down)
> > - input-schmitt-enable, input-schmitt-disable: Control Schmitt trigger
> >   input
> > - slew-rate: Control output slew rate (2 options: slow/fast)
> >
> > Add documentation for the custom property:
> > - renesas,drive-strength: Control output drive strength using discrete
> >   levels (0-3) representing low, medium, high, and ultra high strength.
> >   This custom property is needed because the hardware uses fixed discre=
te
> >   levels rather than configurable milliamp values.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> >  .../bindings/pinctrl/renesas,r9a09g077-pinctrl.yaml | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/pinctrl/renesas,r9a09g07=
7-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/renesas,r9a09g07=
7-pinctrl.yaml
> > index 36d665971484..9085d5cfb1c8 100644
> > --- a/Documentation/devicetree/bindings/pinctrl/renesas,r9a09g077-pinct=
rl.yaml
> > +++ b/Documentation/devicetree/bindings/pinctrl/renesas,r9a09g077-pinct=
rl.yaml
> > @@ -72,6 +72,19 @@ definitions:
> >        input: true
> >        input-enable: true
> >        output-enable: true
> > +      bias-disable: true
> > +      bias-pull-down: true
> > +      bias-pull-up: true
> > +      input-schmitt-enable: true
> > +      input-schmitt-disable: true
> > +      slew-rate:
> > +        enum: [0, 1]
>
> What are the meanings of "0" and "1" for slew rate? Why isn't this given
I'll add a description for it (0 =3D slow, 1 =3D fast) and the same values
are programmed in the register to configure the slew rate.

> as the actual rates? The docs surely give more detail than just "slow"
> and "fast".
You mean to represent slew-rate in some sort of a unit?

>
> > +      renesas,drive-strength:
> > +        description:
> > +          Drive strength configuration value. Valid values are 0 to 3,=
 representing
> > +          increasing drive strength from low, medium, high and ultra h=
igh.
>
> I see what you wrote in the commit message, but I don't really get why
> you need a custom property. I would imagine most devices only have some
> some small set of "fixed discrete levels", yet manage with milli- or
> micro-amps fine. Converting from mA to register values in a driver is
> not difficult, and I figure the documentation for the device probably
> doesn't just give vague strengths like "medium" or "ultra high", but
> probably provides currents?
>
> I dunno, I am just confused by the need to shove register values into
> these properties, rather than using the actual units.
>
I'm checking this with the HW team. I'll get back on this once I have
some feedback.

Cheers,
Prabhakar

