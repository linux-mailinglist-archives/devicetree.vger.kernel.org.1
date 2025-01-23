Return-Path: <devicetree+bounces-140440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC66A19BB5
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 01:21:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B7C47188D419
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 00:21:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 090608BF8;
	Thu, 23 Jan 2025 00:20:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="PIL97pPD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BF74A3E
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 00:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737591656; cv=none; b=BXjTwrer0W4LMJjGEUJfAic8LQbSO6iurOGfsUiuPkHIrr+iu6c24DaM3Ww12RntrCTGL/J4oj62UrtMQdi1MefCAUJ3UNLktfMaiLTqfNNGNMlyNJmNvnykKrSMJWUeHeV0etQWIsuEgHJTnPfMirAY1RTwzqoxMX2bhQiM+4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737591656; c=relaxed/simple;
	bh=ZDi6YtWZXziTg6D4UNvvo7RGgVsQR8rLAbbT+wFZr5s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LVFTJsnecZRp1sgNTvOZD6cEu9GosTq/Mgvm/MvLjFgeC77t/xtIRl5ws1wYcqWI0zs4XFWWDg3OmRyM4sJ+diIzyDWNquxdJ6SR1OZ2izf4HqiD7wAd+cLo+xNfCzbYkr0h7RTO0Zr0KzuqMtVQQW4P+dMAoywuy9XAlHIo8oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=PIL97pPD; arc=none smtp.client-ip=209.85.217.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-4aff31b77e8so121664137.1
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 16:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1737591654; x=1738196454; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LQYmS/K43Vh7Ly2e6rLyN5ogWE84SBYmvh5FEE5WcR0=;
        b=PIL97pPDHnBm8yM89r77BwigmVVZHKHnJYp0/VKDQxAD6LYWTDk6z9SeL52uPq2qVt
         YAvnEdKmg6l6VBaxlQb5nDoSPWF38YtA3jdYq3rVgVDzK5MzTYX8j3Nyr/dgjMfvnkN3
         /Rby2eLK5ZMyQwkMWL6GJtTAMySMKjOGQkBECxv/aE3yyX+E/cC6DiBmgwLA+bf0e2hi
         eqXu3IEajlH3NWtp4eq4Bqc+UlbEegQpafgfAoYo7yrgiYXxHnoSuu9yc5TUsmgcZLvw
         r3wta5Kk77Hm+nRhWOhPAQ4XA5kDHYLEQ6hM/xZbvtWJ0jm5nFK7xzMjDfNOBGKJxqku
         e8jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737591654; x=1738196454;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LQYmS/K43Vh7Ly2e6rLyN5ogWE84SBYmvh5FEE5WcR0=;
        b=vpG8aPmzSCdjZ735iaqpGD+2XH9qLQFD6GXYXc7XEsEo7LKZyfpC43eMLmLNabBGYe
         f6eGhNR/HO7bSplGVcP2zDOwUmpGt8+62AoEUhC0tt/tifkTb7AKvWBy/S/CrFrUZh1j
         jH5R3A/PsB9YxTch7MSySTwEXI9Giu2jxHYmQfHkA/VanvGhwUI11SNm7vWb9KTjHUw9
         mEzJjk1WQIOhYS2BLg5uzicGX1yS0xoVfOj3GtjWKEAs2AQiDnj6Vv4Px/sGbJmBbqyT
         Fv0neOFs9SKXIlIlIKzdO/CBpiDMlgtgj7G/SDB7DGmE+9You4+oF+n75eSrS7anlrrD
         M74g==
X-Forwarded-Encrypted: i=1; AJvYcCV8kkwzry2NExc4XvfctYnQzPXl0qyfqpdbhCXcPFUJ/O2/eIJKQpt3tljeeQIgqJzw2b4mPzt80xUZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwCUkKLWx0pzujwGHidm8ug5fWfkY2TQj9/OVQEt85QhMdbnl7E
	FH2o+40g36GfdFP/8qS9prWMNeHblmn3KDuaY4OksoKWuPUEhvvWTId0JcrMd548nIdCS4WESJK
	RS5hIG9i1qJ2aLUk9jt+qogZsZ8trTIo7utAtzQ==
X-Gm-Gg: ASbGncuC7kgJ9TSq5582MkzHsZhMkJY+p1li2Zh6SZ43fOgGI40zYNshztJeIi6r3zf
	TulEEFCjvTJFmTur2nkSwfdHjIqIJ2Z4ho1aCQfPNg4kg1Hl10/wd/w==
X-Google-Smtp-Source: AGHT+IGS36QaibGoBFEQ5pqS4obwFpQV2loOF1aOhCd0cA3B4BAUIWrn7Re5huNLf61E9aRtdauPhVyk0qicAYrC+KA=
X-Received: by 2002:a67:e715:0:b0:4b2:5ca2:48fe with SMTP id
 ada2fe7eead31-4b690c1bb38mr19355223137.15.1737591654141; Wed, 22 Jan 2025
 16:20:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241224093902.1632627-1-nylon.chen@sifive.com>
 <zqkx7cx5nalslfmxeoxdnsjbvrvzajrjybsmsyeyc65a64sntr@gpc5qp6aoyp7>
 <CAHh=Yk-_0rKB=FG6Voif2MDjtRxzUA5vXDP2J-o5=8ru1ewt0w@mail.gmail.com>
 <CAHh=Yk-TosOmwEughfK9mMx-=DgzWK5H_bf6H641SGh1ue8BrA@mail.gmail.com>
 <zneb3qwgf52zitcbq4wz76shnmhwfkabbsts3sussjpc5s5tsz@uneaxdfp4m2f>
 <CAHh=Yk_oTdURhkna_saF6mrA9gDY=+v_j5NoY_7jTDLuZ=EXtg@mail.gmail.com>
 <7bcnckef23w6g47ll5l3bktygedrcfvr7fk3qjuq2swtoffhec@zs4w4tuh6qvm> <5robb7ipl346daf3lqaqnsi3fcgj3wzmch5dqit2dczdyeknmv@dqft77bhwryg>
In-Reply-To: <5robb7ipl346daf3lqaqnsi3fcgj3wzmch5dqit2dczdyeknmv@dqft77bhwryg>
From: Nylon Chen <nylon.chen@sifive.com>
Date: Thu, 23 Jan 2025 08:20:43 +0800
X-Gm-Features: AWEUYZkxxC5R36IuSGHK0JpbYf5wkyKfRkWS3a02LUJNlLu-d6BFx1xVhDXXJ0c
Message-ID: <CAHh=Yk-p69ppWWspEzzznhDnuk3i6dRGKzUaqZCwg_uAxB3FVA@mail.gmail.com>
Subject: Re: [PATCH v10 0/3] Change PWM-controlled LED pin active mode and algorithm
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Samuel Holland <samuel.holland@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Uwe Kleine-K=C3=B6nig <u.kleine-koenig@baylibre.com> =E6=96=BC 2025=E5=B9=
=B41=E6=9C=8822=E6=97=A5 =E9=80=B1=E4=B8=89 =E4=B8=8B=E5=8D=887:44=E5=AF=AB=
=E9=81=93=EF=BC=9A
>
> Hello Nylon,
>
> I took another look in the driver and found another problem:
Hi Uwe, Thank you for the information.

I'll need some time to verify and understand these details, as well as
conduct the relevant tests
>
> On Tue, Jan 21, 2025 at 07:12:10PM +0100, Uwe Kleine-K=C3=B6nig wrote:
> > On Tue, Jan 21, 2025 at 04:47:46PM +0800, Nylon Chen wrote:
> > > Uwe Kleine-K=C3=B6nig <u.kleine-koenig@baylibre.com> =E6=96=BC 2025=
=E5=B9=B41=E6=9C=8821=E6=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=883:47=E5=
=AF=AB=E9=81=93=EF=BC=9A
> > > >
> > > > Hello,
> > > >
> > > > On Sun, Jan 19, 2025 at 03:03:16PM +0800, Nylon Chen wrote:
> > > > > I ran some basic tests by changing the period and duty cycle in b=
oth
> > > > > decreasing and increasing sequences (see the script below).
> > > >
> > > > What is clk_get_rate(ddata->clk) for you?
> > > 130 MHz
> >
> > OK, so the possible period lengths are
> >
> >       (1 << (16 + scale)) / (130 MHz)
> >
> > for scale in [0, .. 15], right? That's
> >
> >       2^scale * 504123.07692307694 ns
> >
> > So testing period in the range between 5000 ns and 15000 ns isn't
> > sensible? Did I get something wrong? If the above is right, switching
> > between period=3D1008246 ns and 1008247 ns is likely to trigger a
> > warning.
>
> The possible periods are of the form
>
>         2^scale * A
>
> where A is constant and only depends on the input clock rate. scale
> ranges over [0, ... 15]. (If I got it right in my last mail, we have A =
=3D
> 504123.07692307694 ns.)
>
> If you request say:
>
>         .period =3D 3.9 * A
>         .duty_cycle =3D 1.9 * A
>
> the period actually emitted by the PWM will be 2 * A. But to calculate
> frac the originally requested period (i.e. 3.9 * A) is used. So frac
> becomes 31927 resulting in .duty_cycle being ~0.974 A. A better value
> would be frac =3D 62259 which results in .duty_cycle =E2=89=85 1.9 * A.
> (Depending on A the values for frac might be off by one due to rounding
> differences.)
>
> So I would expect that PWM_DEBUG is angry with you if you go from
>
>         .period =3D 2 * A
>         .duty_cycle =3D 1.9 * A
>
> to
>
>         .period =3D 3.9 * A
>         .duty_cycle =3D 1.9 * A
>
> .
>
> Best regards
> Uwe

