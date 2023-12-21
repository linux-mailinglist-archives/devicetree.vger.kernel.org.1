Return-Path: <devicetree+bounces-27742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABF881B8DF
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 14:55:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C67A028AA31
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 13:55:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D20D2360AF;
	Thu, 21 Dec 2023 13:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rOE35V6E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE2C539E5
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 13:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-db4364ecd6aso557623276.2
        for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 05:45:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703166301; x=1703771101; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CeP4kNdvACJ5LqYxE4fXGpJZwNtLXE/FAa7f+Vu66/c=;
        b=rOE35V6EaOz5mzWgBHGl5KLBBHZrW6/r0NDLDqZOqP7oaUvsNNo/CSKTDZv+lgZRPo
         3MVDaguJgpASY+5aGJtBnwV66jT+Db6VgYZGwypmP6e2CceZTufOzisgd2KbQubImAx8
         bn/rzU1z6Udm4LfnxXR3Wh666xhYBAT/GCd8J6tw887FpoZwsSC8SQvl9Lp2bB7YDS7O
         bdSMZbUv3SoIuB0GybrtX5fikBpom46pBf2KHg++yKHDoelUrJYq0L4rtj5F8r3hKuXV
         rEAJFKoWzW+/QtM32t71K8o3WJfOr9+VN9+siD+ofV8Cd3fK9zMWWgxtvJIS0VZO5mG9
         XRJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703166301; x=1703771101;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CeP4kNdvACJ5LqYxE4fXGpJZwNtLXE/FAa7f+Vu66/c=;
        b=A3iCvsXf02DkMscS1yJU3sSu4I4yYoysR3PtXU7o0TMGJBgBr9HSkeporsArItZ7c5
         UCDgnA0XupRzxzo0Do86KTzo5sMiMkVjudzFXG8RsiamaJX4/12iDx2wKfD7pafoif1e
         fSPjzJaSS2EFNh4Hm8yfEwbotGZ62k1ARvsjNHSzPXGyOY9a/NXsIxuOcHl1KWRjel2W
         40VWDuou+nd14CHAO9nuhdY6hrXiDc6Yzliql5kAw3qAVIv35HEyKHf7O0QyUCRLpN0s
         VrWKk5YikM7+DwEpBjcF24AvhXOMSEoQlQMdQ9GqUAy0GUoGIA1ulN6B8J5lH9hxxU7n
         NMRg==
X-Gm-Message-State: AOJu0YyAAr0r7HoUIXtAjZq5fPU8/LLWR10mS/d0rfXY4rLZBKLCVCOA
	2o5yNwl2YCLKHRwckf+QxTddRlB9XiQKjA7L1Kc09w==
X-Google-Smtp-Source: AGHT+IFxNXE+jS35HnUO8ZrCIK4+Br5wJL3Ray/yXu7HV4UVOSnWmkmQQIZtfNhSkhxjGhC4KfG1Asd4QPb2AdIfEKs=
X-Received: by 2002:a25:b08f:0:b0:dbd:5253:c3af with SMTP id
 f15-20020a25b08f000000b00dbd5253c3afmr812295ybj.1.1703166296433; Thu, 21 Dec
 2023 05:44:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231215143906.3651122-1-emil.renner.berthing@canonical.com>
 <20231215143906.3651122-2-emil.renner.berthing@canonical.com>
 <20231215202137.GA317624-robh@kernel.org> <CAJM55Z9pBpYfwpxPH7bUumuosVDn9DHLSBngW6CtG7aK_z+_bQ@mail.gmail.com>
 <CACRpkdYT+jf4=dk3Y9cwa_=aYCihVq93N-iT0RUbtT2-+PX69w@mail.gmail.com> <CAJM55Z8osSFxKi_7=aRkEr+U3vAq0TS93OggnRzyPpssNuuJ3Q@mail.gmail.com>
In-Reply-To: <CAJM55Z8osSFxKi_7=aRkEr+U3vAq0TS93OggnRzyPpssNuuJ3Q@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 21 Dec 2023 14:44:44 +0100
Message-ID: <CACRpkdbx7BOoHzbGd6n5p=Ho3GhMcujwUzQam0jLe6Ysg+xsNg@mail.gmail.com>
Subject: Re: [PATCH v1 1/8] dt-bindings: pinctrl: Add thead,th1520-pinctrl bindings
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: Rob Herring <robh@kernel.org>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	Hoan Tran <hoan@os.amperecomputing.com>, Serge Semin <fancer.lancer@gmail.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 21, 2023 at 1:28=E2=80=AFPM Emil Renner Berthing
<emil.renner.berthing@canonical.com> wrote:
> Linus Walleij wrote:
> > On Sat, Dec 16, 2023 at 2:57=E2=80=AFPM Emil Renner Berthing
> > <emil.renner.berthing@canonical.com> wrote:
> >
> > > > > +          thead,strong-pull-up:
> > > > > +            oneOf:
> > > > > +              - type: boolean
> > > > > +              - $ref: /schemas/types.yaml#/definitions/uint32
> > > > > +                enum: [ 0, 2100 ]
> > > > > +            description: Enable or disable strong 2.1kOhm pull-u=
p.
> > > >
> > > > bias-pull-up can already specify the strength in Ohms.
> > >
> > > The strong pull up is a separate bit that can be enabled independentl=
y from the
> > > regular pull-up/down, so in theory you could enable both the regular =
pull-up
> > > and the strong pull-up at the same time, or even the regular poll-dow=
n and the
> > > strong pull-up which is probably not advised.
> >
> > bias-pull-up; <- Just regular pulling up the ordinary
> > bias-pull-up =3D <100>; <- Same thing if the ordinary is 100 Ohm (figur=
e out what
> >   resistance it actually is....)
> > bias-pull-up =3D <21000000>; <- strong pull up
> > bias-pull-up =3D <21000100>; <- both at the same time
>
> Hmm.. the two pull-ups combined would be a stronger pull-up, eg. lower
> resistance, right? So you'd need to calculate it using
> https://en.wikipedia.org/wiki/Series_and_parallel_circuits#Resistance_uni=
ts_2

Yeah hehe elementary electronics beats me, of course it is in parallel.

> The problem is that the documentation doesn't actually mention what will =
happen
> if you combine the strong pull-up with the regular bias.

So why even allow it then?

Do the people designing boards using this have better documentation than wh=
at
you have? Then either get that documentation or just don't give them
too much rope.

Yours,
Linus Walleij

