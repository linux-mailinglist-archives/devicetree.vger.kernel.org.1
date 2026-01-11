Return-Path: <devicetree+bounces-253619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7A9D0F45A
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 16:20:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 555AF304929B
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 15:20:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2D34345CD8;
	Sun, 11 Jan 2026 15:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="MB7OnrxX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452F550094C
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 15:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768144817; cv=none; b=IIuE/5JJh9GhTbiUvQ1VEFcsoPWaqkXP85Cxaoiv3DYreJZnQe4RU9cQPmRqCiTDd60eiNiiAxJLlDm2deE7ciY2m2xokcuIwXoe6w1ZWYacCMTZ0lN3PNR17dJ3SLsh7dfiNDu9QW+zXeJLYTVHLVSKpHmPKl4GgSwmqG3klDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768144817; c=relaxed/simple;
	bh=lbLAKnymVLTBI9FnzqSp+RvThNLGD0vXPfiy/p5cGhU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t3CYlXQ7M06+56HhODL6JKMUtrb+WKrpQmCzIOw0rSe5B/BgrmXu+SxAKDyu1bJpNRfkyN2VBst2HkR7+WI+XMp6WNUCzcRl6Nk4PccW3KF0UaUEa9eaP5J2k/pa8Fc2Sy1IhGMDYoKFL7Y5nvUWpcGpIextlV8R339oigL7UzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=MB7OnrxX; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-7927416137dso9505627b3.0
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 07:20:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1768144815; x=1768749615; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s2F+wtW2B2tq7BsEJcg+uHjqj3junFFF4szv2VXtjwo=;
        b=MB7OnrxXREgYwRiaPmZ1P7ZXNXvVmQZgz2l9R9STOhlwQ5mekUvfcNipJRlmExkns3
         0aJ1qWF04T6NdznVm5PpDR6fFTQ9X74lkDruv1zjqdnChqobwL4wu5jy6zoFovhbbnVO
         ixnPmsIWm7ri8byefN3oQ+KMl6YrDaHaTx8BQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768144815; x=1768749615;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=s2F+wtW2B2tq7BsEJcg+uHjqj3junFFF4szv2VXtjwo=;
        b=jDQ8zbRFjQb3pl540EuxddcXUtS5WpW8Poo+iphJzWMxETkAfqlb4Vj1PrOg4AKxxl
         KBuScmvAgY/LNNnma3LcHamyWNtUavNnuxgMNG2ZeY1DmqagksDUt5neU4n3AIGEMfRW
         43Pq88JIy8wLEVapnLeCY//dBxaZlH+yva49QuhsYy3Q807YaS7xYwsh9jHrp0ORlGez
         WUwWoZvRHvfJiaZBC4vD+vlEznsRNar4w0YLJ62oWoyH6zqVOm5BvbDSQ7Q03xm0/Uzi
         repEU6n2mQG09BspmfX9KOSmXu5fqjeGOx0UN51VB5DYwdnC1MAq1qrdSF5S6ai7pJJY
         4UQw==
X-Forwarded-Encrypted: i=1; AJvYcCXOluv6tZI9zUojb6sfwiVj7N+Ttlo5m8cxvTyYBmhVGH3LeKBnhmnxKZX6JXOiz4UkdUfzpZOgmsrA@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn02z7Yb5QOcgC2qbgrni7GWo+ZVY8Rc1dkJVzOadqE4m1YyC4
	0ziHAFbl6KGDpcV4TQ3Wyb90bOPlnzujDYnOpfA3xkjLUWNCI3bmTo4Mht+Kuk2MAxNKFviFYuF
	XkRtGP1dUJoYnMDDboht45wmluS1FlrCFvQC9xagesQ==
X-Gm-Gg: AY/fxX4ayxVhr4BrlL7JvVrAjWdvWG/0Cx8OTpopv4Imyrt1Vv/aSnvExZOYmijGD1L
	4R8tvDfjKtilFxupnLrfaP0sYB0TyZUeJSSXO8CDwsaDZdz/9tnR3ae5WFPirIu6i/h03gFSDrw
	U4pS/HUFvS1fvUoKOVk182vtZihWFhxfI4l5lBPq+mtu2wdJVkA6HkkcY0P6i91EOxAxdmgUf15
	bGZkQud49zCTtWd0ZcKZMjIB8AFMG8orqiykTW8zPHVW82PtfEkYj3IQ4e1FMyMXh/WN1xnz+tA
	DvSjk36Dc3Ybj0u3M1kQL1CtAA==
X-Google-Smtp-Source: AGHT+IEJEJ7k3ehyLTPliKyhrb/A8vsiv4gmMtQ/Bm40VuLX6dMeiGkvDwyYywXWPJ3D1t/yNNUsPFQGqqJW0lMTk4M=
X-Received: by 2002:a05:690e:1501:b0:646:e354:7325 with SMTP id
 956f58d0204a3-64716b6ff9emr13204975d50.22.1768144815134; Sun, 11 Jan 2026
 07:20:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260107194541.1843999-1-dario.binacchi@amarulasolutions.com>
 <20260107194541.1843999-2-dario.binacchi@amarulasolutions.com> <58006bf6-425a-4016-996b-4a01fdb22cea@foss.st.com>
In-Reply-To: <58006bf6-425a-4016-996b-4a01fdb22cea@foss.st.com>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Sun, 11 Jan 2026 16:20:04 +0100
X-Gm-Features: AZwV_QjEh5isWh6rzhvUm7qUpn5m3290bgM2aqJv_0TrtCZXLOfst-o_irVmNjk
Message-ID: <CABGWkvrgH6tNsaq3P4xctQxV2w2pkAkko-qGy4Oay=yAwitufA@mail.gmail.com>
Subject: Re: [Linux-stm32] [PATCH 2/2] arm64: dts: st: add TAMP-NVRAM support
 for STM32MP25
To: Patrice CHOTARD <patrice.chotard@foss.st.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	linux-amarula@amarulasolutions.com, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Patrice,

On Fri, Jan 9, 2026 at 11:40=E2=80=AFAM Patrice CHOTARD
<patrice.chotard@foss.st.com> wrote:
>
>
>
> On 1/7/26 20:45, Dario Binacchi wrote:
> > Add the TAMP node along with its NVRAM child node and define the
> > fixed-layout for fwu_info and boot_mode registers.
> >
> > The TAMP (Tamper and backup registers) block is a system controller tha=
t
> > provides access to backup registers as NVMEM storage that persists acro=
ss
> > reboots.
> >
> > Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> >
> > ---
> >
> >  arch/arm64/boot/dts/st/stm32mp251.dtsi | 26 ++++++++++++++++++++++++++
> >  1 file changed, 26 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/d=
ts/st/stm32mp251.dtsi
> > index a8e6e0f77b83..c7839e732f31 100644
> > --- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
> > +++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
> > @@ -2084,6 +2084,32 @@ rtc: rtc@46000000 {
> >                       status =3D "disabled";
> >               };
> >
> > +             tamp: tamp@46010000 {
> > +                     compatible =3D "st,stm32-tamp", "syscon", "simple=
-mfd";
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <1>;
> > +                     reg =3D <0x46010000 0x400>;
> > +                     ranges;
> > +
> > +                     nvram: nvram@46010100 {
> > +                             compatible =3D "st,stm32mp25-tamp-nvram";
> > +                             reg =3D <0x46010100 0x200>;
> > +                             nvmem-layout {
> > +                                     compatible =3D "fixed-layout";
> > +                                     #address-cells =3D <1>;
> > +                                     #size-cells =3D <1>;
> > +
> > +                                     fwu_info: tamp-bkp@c0 {
> > +                                             reg =3D <0xc0 0x4>;
> > +                                     };
> > +
> > +                                     boot_mode: tamp-bkp@180 {
> > +                                             reg =3D <0x180 0x4>;
> > +                                     };
> > +                             };
> > +                     };
> > +             };
> > +
> >               pinctrl_z: pinctrl@46200000 {
> >                       #address-cells =3D <1>;
> >                       #size-cells =3D <1>;
> Hi Dario
>
> At STMicroelectronics we intend to upstream tamp-vram driver for STM32MP =
series.
> If you don't see any objection, we prefer to manage it in our side.

Ok, no problems.

Thanks and regards,
Dario
>
> Thanks
> Patrice



--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com

