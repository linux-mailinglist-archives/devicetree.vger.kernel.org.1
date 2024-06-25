Return-Path: <devicetree+bounces-79663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 220CB91650F
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 12:17:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB92728244D
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 10:17:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E038149009;
	Tue, 25 Jun 2024 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="V6zxDNXL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE5461465AC
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 10:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719310653; cv=none; b=GpiyJUbQzTgLrkS7TTfIOmvfkJnWR3BApOlKyd9rsebIkeTEbWRcT9j86izkhEqH5mxqqCpitgi8smkKBeVkMZu/h9fnn3NlYbET3aKEd9X4POWTkHt1hOQ0NL8Ofb5mpnJUiSwM7YF73L9cdLOjh0LHO+/WDXdLaoM919PTIEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719310653; c=relaxed/simple;
	bh=HzFn6hlZX+xNjsfsGjJz3g1L8FVuTDoVuj7D16m47/Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=am5n8HNfeo/o3xg9I5IW5kP6WN5aulqHwfrMKAw/s9DrhrNJF5rGLdqk4hjGLFB1a3iAF3F7fyf4OB3D8tOmCUrA4lTGod6RwsqNo5fsKqUlvbf3VyqiJ3LosKEQOoM5Yoky9j03BSpTo7/q0YCaWncSHVvH6Su5AyJCJoBbks4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=V6zxDNXL; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-57cd26347d3so5772376a12.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 03:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1719310649; x=1719915449; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GDqEDuqIncS3i916UUmtAInZv3cnZ3dEG8y4UiZ8Edc=;
        b=V6zxDNXLdKFZ3iu9XYxoLq24Yu8+xKrkE4iG0Umg5tEy5kj0P+H144FJZDNWy0M/4S
         3EHmNUifzaJjGlqOtUjln5YvY7/VaZTEoFULAAeb0AC2SA6MI0NDagWI37lviRtU+10q
         Lz8jxmH0eH+X52ZkM7EPFhCb7h5FWcIsIHri80DmfrlknjqZHThKuqrCxIB5llR0zvhB
         NvsZAgWsBqCdWuXNCeeCq8C17CJBPQVN1SRwCtImfojgbJVbE0037NbDx8CsHcpaBCog
         Qk9o7jbUz9n3/AAByoMETVXvD03M9EX1ivdoXrPlbO0sq3nAKTcfvOM2y2nYPRAaahpe
         LlXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719310649; x=1719915449;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GDqEDuqIncS3i916UUmtAInZv3cnZ3dEG8y4UiZ8Edc=;
        b=tjYWABwM/AtpOJnM2jX5BwTTljveA8nQKx43mIEVWnzX3WbqxR5WWuLhcsiYLK30mq
         TSmvjXbaiSlMisNBzP4VZ2IiORvt1sPuH/kZ0kxxeMVI2KKw7g45RyrBG6mR3+e1plQo
         sQ+4u2/GY5bWO0pwhqH1C5n8GnFyhiqFp5L/E99JWNea+I0ItMtyxHWfLivbBnW7cU4j
         4oIDmATDqsnj0jrlAGNtyp0qUnjNiyrzVygIn6hghebNPBP7cbrIGLtuBhH4wyFh7sxm
         HXRQDcetDtl8qjDgcMDousLZ3zw6iZMazgTt+/uy4wE/wRaoSq2MI9KDkAYHrhSO5dJe
         R6NA==
X-Forwarded-Encrypted: i=1; AJvYcCWzZOdvmafsmLDZezHZY4gaSOiA1RK7n0YA16dOsMrDJH1CZJLjx/+ByvTjZxbO3ufkM69UJhJL6xXInMkAmeHpOGgpmmpQI1KajA==
X-Gm-Message-State: AOJu0YxXSDcpZCitS35GFdERIZ2LdJMwHgC4p2Pya/QIrSBvr9qA1nbK
	TIsndQr9Nd7N+wY/BfJ25TXf4NKft98Dj6Iyj0gJEEn+nZ+Hqec2D4AWvMvxvFXwycrTpXfEARN
	+9Vf5ee3t1gu99BP/EXOlMnyryc6uxnX81KcIoA==
X-Google-Smtp-Source: AGHT+IHnz+jiST2ObwGwpRhNGzS4fV2cd2JpTXgrhQgW5flC1P8gqI9c+i+tCJ6lqjrnPn65ZSzmomPtcHF6WLtuRP0=
X-Received: by 2002:a50:c054:0:b0:57d:669:cafb with SMTP id
 4fb4d7f45d1cf-57d70075c73mr1867346a12.40.1719310648918; Tue, 25 Jun 2024
 03:17:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240605-atrium-neuron-c2512b34d3da@spud> <CAK9=C2XH7-RdVpojX8GNW-WFTyChW=sTOWs8_kHgsjiFYwzg+g@mail.gmail.com>
 <40a7d568-3855-48fb-a73c-339e1790f12f@ghiti.fr> <20240621-viewless-mural-f5992a247992@wendy>
 <edcd3957-0720-4ab4-bdda-58752304a53a@ghiti.fr> <20240621-9bf9365533a2f8f97cbf1f5e@orel>
 <20240621-glutton-platonic-2ec41021b81b@spud> <20240621-a56e848050ebbf1f7394e51f@orel>
 <20240621-surging-flounder-58a653747e1d@spud> <20240621-8422c24612ae40600f349f7c@orel>
 <20240622-stride-unworn-6e3270a326e5@spud>
In-Reply-To: <20240622-stride-unworn-6e3270a326e5@spud>
From: Yong-Xuan Wang <yongxuan.wang@sifive.com>
Date: Tue, 25 Jun 2024 18:17:16 +0800
Message-ID: <CAMWQL2hDUp4+5W4nOM0R5J-uZtkm9hUTwD0BxPBFuzR7eMpHjQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/4] dt-bindings: riscv: Add Svade and Svadu Entries
To: Conor Dooley <conor@kernel.org>
Cc: Andrew Jones <ajones@ventanamicro.com>, Alexandre Ghiti <alex@ghiti.fr>, 
	Conor Dooley <conor.dooley@microchip.com>, Anup Patel <apatel@ventanamicro.com>, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	kvm-riscv@lists.infradead.org, kvm@vger.kernel.org, greentime.hu@sifive.com, 
	vincent.chen@sifive.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Conor,

On Sat, Jun 22, 2024 at 8:01=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Fri, Jun 21, 2024 at 05:08:01PM +0200, Andrew Jones wrote:
> > On Fri, Jun 21, 2024 at 03:58:18PM GMT, Conor Dooley wrote:
> > > On Fri, Jun 21, 2024 at 04:52:09PM +0200, Andrew Jones wrote:
> > > > On Fri, Jun 21, 2024 at 03:04:47PM GMT, Conor Dooley wrote:
> > > > > On Fri, Jun 21, 2024 at 03:15:10PM +0200, Andrew Jones wrote:
> > > > > > On Fri, Jun 21, 2024 at 02:42:15PM GMT, Alexandre Ghiti wrote:
> > >
> > > > > > I understand the concern; old SBI implementations will leave sv=
adu in the
> > > > > > DT but not actually enable it. Then, since svade may not be in =
the DT if
> > > > > > the platform doesn't support it or it was left out on purpose, =
Linux will
> > > > > > only see svadu and get unexpected exceptions. This is something=
 we could
> > > > > > force easily with QEMU and an SBI implementation which doesn't =
do anything
> > > > > > for svadu. I hope vendors of real platforms, which typically pr=
ovide their
> > > > > > own firmware and DTs, would get this right, though, especially =
since Linux
> > > > > > should fail fast in their testing when they get it wrong.
> > > > >
> > > > > I'll admit, I wasn't really thinking here about something like QE=
MU that
> > > > > puts extensions into the dtb before their exact meanings are deci=
ded
> > > > > upon. I almost only ever think about "real" systems, and in those=
 cases
> > > > > I would expect that if you can update the representation of the h=
ardware
> > > > > provided to (or by the firmware to Linux) with new properties, th=
en updating
> > > > > the firmware itself should be possible.
> > > > >
> > > > > Does QEMU have the this exact problem at the moment? I know it pu=
ts
> > > > > Svadu in the max cpu, but does it enable the behaviour by default=
, even
> > > > > without the SBI implementation asking for it?
> > > >
> > > > Yes, because QEMU has done hardware A/D updating since it first sta=
rted
> > > > supporting riscv, which means it did svadu when neither svadu nor s=
vade
> > > > were in the DT. The "fix" for that was to ensure we have svadu and =
!svade
> > > > by default, which means we've perfectly realized Alexandre's concer=
n...
> > > > We should be able to change the named cpu types that don't support =
svadu
> > > > to only have svade in their DTs, since that would actually be fixin=
g those
> > > > cpu types, but we'll need to discuss how to proceed with the generi=
c cpu
> > > > types like 'max'.
> > >
> > > Correct me please, since I think I am misunderstanding: At the moment
> > > QEMU does A/D updating whether or not the SBI implantation asks for i=
t,
> > > with the max CPU. The SBI implementation doesn't understand Svadu and
> > > won't strip it. The kernel will get a DT with Svadu in it, but Svadu =
will
> > > be enabled, so it is not a problem.
> >
> > Oh, of course you're right! I managed to reverse things some odd number=
 of
> > times (more than once!) in my head and ended up backwards...
>
> I mean, I've been really confused about this whole thing the entire
> time, so ye..
>
> Speaking of QEMU, what happens if I try to turn on svade and svadu in
> QEMU? It looks like there's some handling of it that does things
> conditionally based !svade && svade, but I couldn't tell if it would do
> what we are describing in this thread.

When both Svadu and Svade are specified in QEMU, the reset value of
menvcfg.ADUE is 0:

env->menvcfg =3D (cpu->cfg.ext_svpbmt ? MENVCFG_PBMTE : 0) |
                (!cpu->cfg.ext_svade && cpu->cfg.ext_svadu ?
                MENVCFG_ADUE : 0);

The runtime behavior depends on menvcfg.ADUE:

    bool svade =3D riscv_cpu_cfg(env)->ext_svade;
    bool svadu =3D riscv_cpu_cfg(env)->ext_svadu;
    bool adue =3D svadu ? env->menvcfg & MENVCFG_ADUE : !svade;

Regardless of whether OpenSBI supports the Svadu enablement,
Supervisor can assume that QEMU uses Svade when it doesn't
explicitly turn on Svadu.

Regards,
Yong-Xuan

