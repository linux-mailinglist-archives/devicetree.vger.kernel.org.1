Return-Path: <devicetree+bounces-27703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCB981B5D6
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 13:30:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9EDD41C25909
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 12:30:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 939486EB5D;
	Thu, 21 Dec 2023 12:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="E3Ji0/i/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386866E5B6
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 12:28:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5DC733F15B
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 12:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1703161728;
	bh=utwwjd3w/GTj0TOYQ7r9hzEA4xysvpOk2/pKVIn6Dd8=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=E3Ji0/i/TEWCDbQQlH63k0HzGF58gvjZy5+I0G/5MVx1YPCJyhk0T2RORnmf0qCHz
	 jK3hRMNYbgx4KRT7b8vS1o3sMtvfom9zDv9QZVGqtpyuUigpbIafn17VBtWaywWdKM
	 wP8/LK03uecBlI1EKTlQhg6upsN7LDBgGJlvhfMjg0ttT3C6x4pgaobBVhYFjDSFgE
	 B+Pdlj6cF+99gPUfpWk8PoZkdasIgKW5YHtn5TBGHb3xxYKzo67/zjPK6RpxX4dGiQ
	 bufpKivEyT6gNED6Rnst0FZAbUwxjb/obcR4+BnKH/EXiAvFPo0f/yD3mgNt67M6Mf
	 CQJAINaHsXbGQ==
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-781029a475bso122172985a.0
        for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 04:28:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703161727; x=1703766527;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:references:in-reply-to:from:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=utwwjd3w/GTj0TOYQ7r9hzEA4xysvpOk2/pKVIn6Dd8=;
        b=dKkbdh5JNHMB2Mlpj173b+oGZMWawLIZ8VDTeSYVuziKAIizbFriupqni8Pbv94Ran
         kKMePkXZYSt62g1L3bQPqly85zwyjILGL56deoIF8V8ZSzU7XDmkOcuSeoBGdqTj/ds+
         idDhxR7kLiLi3ofQWuicLcm0yRj8CFHnYxm4MfoRG6aXJB8iQr5XoZR7EhI5dYD/dMrV
         aIgdSGjAuM6h/8zRZ0Aa0HOlgINuU9Q54xBVhvy7gEBxMMhGXrJdTsJ1kwfIYhGtGhD2
         67efuGlXsnbNyecR6m+WhRB8od6wX6RrwANgcjWrptR97CxDPXsSmhNrmR1EyB2XTK4o
         4scw==
X-Gm-Message-State: AOJu0Yw0H5fhghixhCDN3Yp2+0niXYLz8aUp7C9AdvMNKrZa1lCpWaRs
	hd4GFCaEiJP6zosVCxDvLSUL4dUKk+Zo7e9ALGjqRQSflNOE37DyhCLKasGeU6k6Xn1nzZcAaEv
	+q82uaBenuJZd1/1RZB6St+j+nGS3U4d2ILM6Nv6HmqgkCIVk7VdQtuWTMtWu+g==
X-Received: by 2002:a05:620a:3dc:b0:77e:ffcd:2728 with SMTP id r28-20020a05620a03dc00b0077effcd2728mr897512qkm.53.1703161727418;
        Thu, 21 Dec 2023 04:28:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHB2Dun85XQ6cgWOoZpoJaB/RapIEzw1KjVwm/JtqPitqqKxcRJWcJjtxi1b+wBY8zYrCiPA/YZeVrH74MD5jI=
X-Received: by 2002:a05:620a:3dc:b0:77e:ffcd:2728 with SMTP id
 r28-20020a05620a03dc00b0077effcd2728mr897496qkm.53.1703161727167; Thu, 21 Dec
 2023 04:28:47 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 21 Dec 2023 04:28:46 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <CACRpkdYT+jf4=dk3Y9cwa_=aYCihVq93N-iT0RUbtT2-+PX69w@mail.gmail.com>
References: <20231215143906.3651122-1-emil.renner.berthing@canonical.com>
 <20231215143906.3651122-2-emil.renner.berthing@canonical.com>
 <20231215202137.GA317624-robh@kernel.org> <CAJM55Z9pBpYfwpxPH7bUumuosVDn9DHLSBngW6CtG7aK_z+_bQ@mail.gmail.com>
 <CACRpkdYT+jf4=dk3Y9cwa_=aYCihVq93N-iT0RUbtT2-+PX69w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Thu, 21 Dec 2023 04:28:46 -0800
Message-ID: <CAJM55Z8osSFxKi_7=aRkEr+U3vAq0TS93OggnRzyPpssNuuJ3Q@mail.gmail.com>
Subject: Re: [PATCH v1 1/8] dt-bindings: pinctrl: Add thead,th1520-pinctrl bindings
To: Linus Walleij <linus.walleij@linaro.org>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: Rob Herring <robh@kernel.org>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	Hoan Tran <hoan@os.amperecomputing.com>, Serge Semin <fancer.lancer@gmail.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Linus Walleij wrote:
> On Sat, Dec 16, 2023 at 2:57=E2=80=AFPM Emil Renner Berthing
> <emil.renner.berthing@canonical.com> wrote:
>
> > > > +          thead,strong-pull-up:
> > > > +            oneOf:
> > > > +              - type: boolean
> > > > +              - $ref: /schemas/types.yaml#/definitions/uint32
> > > > +                enum: [ 0, 2100 ]
> > > > +            description: Enable or disable strong 2.1kOhm pull-up.
> > >
> > > bias-pull-up can already specify the strength in Ohms.
> >
> > The strong pull up is a separate bit that can be enabled independently =
from the
> > regular pull-up/down, so in theory you could enable both the regular pu=
ll-up
> > and the strong pull-up at the same time, or even the regular poll-down =
and the
> > strong pull-up which is probably not advised.
>
> bias-pull-up; <- Just regular pulling up the ordinary
> bias-pull-up =3D <100>; <- Same thing if the ordinary is 100 Ohm (figure =
out what
>   resistance it actually is....)
> bias-pull-up =3D <21000000>; <- strong pull up
> bias-pull-up =3D <21000100>; <- both at the same time

Hmm.. the two pull-ups combined would be a stronger pull-up, eg. lower
resistance, right? So you'd need to calculate it using
https://en.wikipedia.org/wiki/Series_and_parallel_circuits#Resistance_units=
_2

The problem is that the documentation doesn't actually mention what will ha=
ppen
if you combine the strong pull-up with the regular bias. My best guess for =
what
happens if you enable the strong pull-up and the regular pull-down is that =
you
create a sort of voltage divider. But how do you represent that as an Ohm v=
alue?

We would kind of have to, otherwise the pinconf_get callbacks have states t=
hat
it can't represent.

> > So the idea here was just to make sure that you can do eg.
> >
> >         thead,strong-pull-up =3D <0>;
> >
> > to make sure the bit is cleared.
>
> No use bias-disable; for this.
>
> Yours,
> Linus Walleij
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

