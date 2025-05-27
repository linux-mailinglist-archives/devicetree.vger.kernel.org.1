Return-Path: <devicetree+bounces-180659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E905AC4692
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 04:48:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF95D3B52DA
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 02:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5F331A5BA6;
	Tue, 27 May 2025 02:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="cBaG4EKJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCFBB450FE
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 02:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748314114; cv=none; b=OMjBd3q7IO/nWiQACzzn3Y73G5SO/wECq8qt83ruwZtceS09+pRKotKtu/kmDM7zWKA++Bi4N+ROaeti2VELJkm/exhqfbLND14hzREc4/ug+tJ8H0EH49Ou46EtlEIXRwxG64OtVz8IOJKGoMy+R/E/seSIEZZ3ujK5km165ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748314114; c=relaxed/simple;
	bh=1sIkGvLRc4q9F0wAGlww0AgdOxuNbiq/W5VJZQg3ebE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ANzjniqIsUe7a1pnNz+RyxiUbirMaN8yTICaSok23gkoZa6VhwIy9CeKSoKGCsBW8AnX4RyqSxSSKmUexycRAfld8lKwE42MbKDmJ5Juyfpk0ssyrxbNY4quozUEffF9l//Dnyyp50JbfDoebjPEeBmJlgHdo4LA/aVt/m4ANhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=cBaG4EKJ; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-604f26055c6so202088a12.1
        for <devicetree@vger.kernel.org>; Mon, 26 May 2025 19:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1748314110; x=1748918910; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vxISWGK2XQPkm4Hhr1US0gvD1FZ3zYyiGOuHAQJE5eo=;
        b=cBaG4EKJNl3cuWB6pIdbTLbU184LMPx1S8Le/UTPlp9DXIT30STkIaS18O1u3dGVlH
         OzQYiG6Lxb7QkaC4Ss6xiXLamwysKiCmv5hTntRJY4/oFKT3VoRV2TMRukOA8BZYe1gk
         tXRxLO3X/i+dvdzQ0DsjlzPcoODAdIbATiDjchNRO5f1BA0tyF1h3V9HNyvwZ2d23av8
         PgUWib1fFQ8MxDAXmJjWUyoAx3XMeT7Kqw1kPDoe+wenMN3M0K0ZfdZvY2rZKJ6QDoAv
         DeN6fKLGUu1bw35d5DoaqDhx4DAGNsUwAbqYs8v9K1f7MEINOliAyJ/l5H1LxJOG/9vq
         LNcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748314110; x=1748918910;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vxISWGK2XQPkm4Hhr1US0gvD1FZ3zYyiGOuHAQJE5eo=;
        b=htexWfmkCqt9JxVa8AJW7wgAqtlFs0DGPhBb7k+rBiEv8jP4f50kcvB7h4KYZgnARP
         Msv0nlOSNED0MCwhnVnw8Zf4PnWE8eGNmf/uK+aFk6KQZPJgscq9j6OriGQ8qe67QYtB
         UpiWeZ3kkCXOfM4JN33dKCOeUDpTpdVsvOdDwDc/+u/tnzLLBvE8m4T0d384ODiOq85M
         qP3AcroB1owwudmzJwfAi9xx+LMA1S10DQPXXyqdFHCXrVgg/nXfMzcAwFj5Z+NeSaDm
         WHOOgJAIcY8nROGlkLTOOsaqWehJnDi7AO/cBfar3K47P4DBDBtcfrjzy0KpbTBCG5oZ
         xUCA==
X-Forwarded-Encrypted: i=1; AJvYcCUI/C5mOn3NIGwRwpLV0lq1jwlfX9ajpQdzh8JbDcpfvvs21vi0P/2+M5EVgXNbobGee9j4y1iLEqEl@vger.kernel.org
X-Gm-Message-State: AOJu0YweZpYdv9GFMyHbGP9xEgKLHTo6ByYyddUcoqQvb7yf9oYBL1B/
	HnZ8LuorI7MxB9gJsgdsNZz+xxtIR90Mr5tZyKQ8FH/tu7AsfpVqjYA8K3iJZ3CrbjYhLkoEUy9
	VPBhyAkldDuhXjIcAI8Cnim3bXRd9Ax5p6RVXy2OLJw==
X-Gm-Gg: ASbGnctVc1ipVvnTT1x8KLRaLN1lPDEbtEUPo4NbE4bL7gAfG7hhajuO29UnHj1AH0w
	63SnzK+Aig+6aHyII1pbUbphmzzR2Nrui7LFw9Jp+Oqm0Yol+4R7OBjw1QWbXJ7+wu0wu9MH1zA
	fAyof0Xt0kDYeja+081GR3wrIbc3UDSh3vGw==
X-Google-Smtp-Source: AGHT+IGlQnBA51IfLDQtlV4Tsj0DcivukafO3WpRjoRYo7aZ2XNkgT/ISpHO9OKoKdboUS/Oi+TdrQgc1gVBGNRrhUg=
X-Received: by 2002:a17:907:9303:b0:ad1:d0e7:a698 with SMTP id
 a640c23a62f3a-ad8596d8c4emr1099084466b.2.1748314109982; Mon, 26 May 2025
 19:48:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250429085048.1310409-1-guodong@riscstar.com>
 <20250429085048.1310409-5-guodong@riscstar.com> <paasmwjel652r25nxobidydtpxfjy7emerilmwqhvhtgrrtg6v@gowpzqdzvlfz>
 <20250526215243-GYA53128@gentoo>
In-Reply-To: <20250526215243-GYA53128@gentoo>
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 27 May 2025 10:48:18 +0800
X-Gm-Features: AX0GCFvI_6k3vBVjk-TWBpWmMUcHskFmulTKZz7Kxcz7kFRTgK5PHEc_K-e3F1M
Message-ID: <CAH1PCMZhS4_u3nTdAQDfTTRVJ_61n-OYjmMuv2m4DHYDzGE0XA@mail.gmail.com>
Subject: Re: [PATCH v3 4/6] riscv: dts: spacemit: add pwm14_1 pinctrl setting
To: Yixun Lan <dlan@gentoo.org>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	alex@ghiti.fr, p.zabel@pengutronix.de, drew@pdp7.com, inochiama@gmail.com, 
	geert+renesas@glider.be, heylenay@4d2.org, tglx@linutronix.de, 
	hal.feng@starfivetech.com, unicorn_wang@outlook.com, duje.mihanovic@skole.hr, 
	heikki.krogerus@linux.intel.com, elder@riscstar.com, 
	linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 27, 2025 at 5:52=E2=80=AFAM Yixun Lan <dlan@gentoo.org> wrote:
>
> Hi Guodong, Uwe,
>
> On 18:54 Mon 26 May     , Uwe Kleine-K=C3=B6nig wrote:
> > On Tue, Apr 29, 2025 at 04:50:46PM +0800, Guodong Xu wrote:
> > > diff --git a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi b/arch/risc=
v/boot/dts/spacemit/k1-pinctrl.dtsi
> > > index 283663647a86..195eb8874f3c 100644
> > > --- a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
> > > +++ b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
> > > @@ -20,4 +20,11 @@ uart0-2-pins {
> > >                     drive-strength =3D <32>;
> > >             };
> > >     };
> > > +   pwm14_1_cfg: pwm14-1-cfg {
> > > +           pwm14-1-pins {
> > > +                   pinmux =3D <K1_PADCONF(44, 4)>;
> > > +                   bias-pull-up =3D <0>;
> > > +                   drive-strength =3D <32>;
> > > +           };
> > > +   };
> >
> > There is a newline expected before the pwm14-1-cfg node, isn't there?
> >
> Right, I could amend this and fix it while applying this patch
> (so if there is no other serious issue, no need to resend)
>

Thanks, Yixun.

By the way, do you plan to take patches 3 and 4 of this series into
your tree? They only apply if the SpacemiT reset patchset is applied
first.

BR,
Guodong

> --
> Yixun Lan (dlan)

