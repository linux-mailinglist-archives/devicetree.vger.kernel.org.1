Return-Path: <devicetree+bounces-135764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4012AA0217B
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 10:09:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C84493A3273
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 09:09:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FD021D6DDD;
	Mon,  6 Jan 2025 09:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="cGO49mid"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65FC21D79A9
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 09:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736154559; cv=none; b=SXMLJ58EFkABUlgtLjUGLx1E11H59zNwxNcoBAdAB6Dbl0IBpScXJ0U0K+K5577ccK9FzmiO3s0DasOcanoUvHvuMNh8xuyzQBnferlpRMDODY3ABhtCCnn2K2XFYlfIBDj7x46jDd0rQUeGqy7L1nHoQC3Lm3d065bfMfReAHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736154559; c=relaxed/simple;
	bh=9zle5LgRMggSof2J6kpvNtie/hfml5DDqijUc5tcllg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cSRwez6xDyajUkOjnjNVRRExduafX/qtOV28OKJVwGC7Y9JRpD7eXBqSypzvPZkbxvM23zA76hJKRRyYoPUP5MMD+COyakMRi3F+6IgIo8jhMRWcfkMEWGw9IfcfpLpV8Gd0ZUL2AKmfyO1RyxeStxnXgOvxBBejbW5ig0PVVzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=cGO49mid; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-4aff78a39e1so4059868137.1
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2025 01:09:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1736154556; x=1736759356; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QKuvKlk8OSfYx6PIrDfpXD1FNugUFoICZw9fVqCNqnA=;
        b=cGO49midQe+frxpyft64fTcSyGWyhgC6Ce4EABhwokHEHur6LSvCETL+qiyH+OdbpZ
         hd/Jh9giS/OSzFpq89pvwY810Co2ygqfywbyjGKey79sM3jh5TytIzddGOApn0KYoWKz
         Wj2Y1MFQpv7ErcpTuSlAr5uYhmgh4QVgmjQ82tUjCk9zFOUSDIB0kB7hPU0IN2CedAbz
         PfpFZ+x9DWdbQydF2lpAkxkZQo/3cVG2BRhRY+eeLVVmiAVY7WmRavjzI6/OdleQ7olV
         uOUmGKl1TlreB51uIzg+o6VYXXOtD9OTmnMLkAFgaV4gXR1GoScli/OLEL2AVFD5iy6N
         w8mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736154556; x=1736759356;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QKuvKlk8OSfYx6PIrDfpXD1FNugUFoICZw9fVqCNqnA=;
        b=fAC8GuCOaiUk+9FKFA1xxWsjnw1ErMb/UOsKqijdcrkD9XxUG5HZ9xd3GPJ/LkmTtL
         PT59dK79WW0kYxB8EqTx9XIo1BfX6FYUJfY0MJqu/KkQmB/bW4X+NnILzwyHPOLYeWHf
         nBDrU+Sr+0sLs2vketQPzyJ9L0fJG/xn3j1o50/ourmy6xmeHDPK9ByHAzDfs2VYg8EO
         Aio/L2cUtuau8SNQBvAoprgv5WdEHU35nmZ5CE1GoLnVqODlCjuPH4qe3PB+5Y+i8j07
         iyoba0cu0arGvCRf9uQx1iQ16683Mvf85JMpcBerSNLzexqbHZqoBaIWdAgvc5/91nlk
         BK1w==
X-Forwarded-Encrypted: i=1; AJvYcCURUScBSb1NJiQakC5XzorUgS+nwmJXjFHHfewj6Z2oEJjrzqiTQ2ylRKixUAD7MrL+09aNe4OKe3nl@vger.kernel.org
X-Gm-Message-State: AOJu0YyFZbxXyWtZaIMxz7lXNe3i/L7dO8ytlfmeyNTrgLR4Hl5i6J1L
	LIA5Q/dJnVd+IFHssOHm7ziPXHIzcMP7BZb4oTXOEn4AsiFiO0ByVVHC1jW8akipXYgmyVt3Ur7
	VPhN85g+OrlylJo3aYRv2xe4RkOOuIOx9Zh6hkA==
X-Gm-Gg: ASbGncupM+doD8CtB2rYaUrxYW14z9ue9qj5boy2kYc+9uO+MZq+Z/SRaeG4GrNdg0a
	omnYWjgW5ODwbzpBWDKUZUiSOqqZeMF6IyAHtDdPy
X-Google-Smtp-Source: AGHT+IFjbXqhxALayXJfbH7eJGXsx4rjHHBouqVImmLYzT00NqHZwy4UszqEFmcWPxvwftlDyKoiqkwKnSXVY5m94Dw=
X-Received: by 2002:a05:6102:32cc:b0:4af:4974:a489 with SMTP id
 ada2fe7eead31-4b2cc46245cmr44531344137.20.1736154556388; Mon, 06 Jan 2025
 01:09:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241224093902.1632627-1-nylon.chen@sifive.com> <zqkx7cx5nalslfmxeoxdnsjbvrvzajrjybsmsyeyc65a64sntr@gpc5qp6aoyp7>
In-Reply-To: <zqkx7cx5nalslfmxeoxdnsjbvrvzajrjybsmsyeyc65a64sntr@gpc5qp6aoyp7>
From: Nylon Chen <nylon.chen@sifive.com>
Date: Mon, 6 Jan 2025 17:09:05 +0800
Message-ID: <CAHh=Yk-_0rKB=FG6Voif2MDjtRxzUA5vXDP2J-o5=8ru1ewt0w@mail.gmail.com>
Subject: Re: [PATCH v10 0/3] Change PWM-controlled LED pin active mode and algorithm
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Samuel Holland <samuel.holland@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Uwe Kleine-K=C3=B6nig <u.kleine-koenig@baylibre.com> =E6=96=BC 2024=E5=B9=
=B412=E6=9C=8827=E6=97=A5 =E9=80=B1=E4=BA=94 =E4=B8=8B=E5=8D=884:20=E5=AF=
=AB=E9=81=93=EF=BC=9A
>
> Hello Nylon,
>
> On Tue, Dec 24, 2024 at 05:38:58PM +0800, Nylon Chen wrote:
> > According to the circuit diagram of User LEDs - RGB described in the
> > manual hifive-unleashed-a00.pdf[0] and hifive-unmatched-schematics-v3.p=
df[1].
> >
> > The behavior of PWM is acitve-high.
> >
> > According to the descriptionof PWM for pwmcmp in SiFive FU740-C000 Manu=
al[2].
> >
> > The pwm algorithm is (PW) pulse active time  =3D (D) duty * (T) period.
> > The `frac` variable is pulse "inactive" time so we need to invert it.
>
> I'm trying to understand that. You're saying that the PWMCMP register
> holds the inactive time. Looking at the logic diagram (Figure 29) of
> "SiFive FU740-C000 Manual v1p6" that is because pwms is feed into the
> comparator after going through that XNOR where the lower input is always
> 0 (as pwmcmpXcenter is always 0) and so effectively counts backwards,
> right?
> In that case the sentence "The output of each comparator is high
> whenever the value of pwms is greater than or equal to the corresponding
> pwmcmpX." from the description of the Compare Registers is wrong.
>
Hi Uwe,

Please give us some time to clarify these questions, thank you.
> With that assumption there are a few issues with the second patch:
>
>  - The Limitations paragraph still says "The hardware cannot generate a
>    100% duty cycle."
>  - If pwm_sifive_apply() is called with state->duty_cycle =3D 0 the PWMCM=
P
>    register becomes (1U << PWM_SIFIVE_CMPWIDTH) - 1 which results in a
>    wave form that is active for 1 clock tick each period. That's bogus.
>    If duty_cycle =3D 0 is requested, either make sure the output is
>    inactive the whole time, or return an error.
>  - With the above error in the official documentation, I'd like to have
>    a code comment that explains the mismatch such that a future reader
>    of the code has a chance to understand the situation without in
>    detail review of the manual and the driver.
>
> Orthogonal to your patches, I wonder about
>
>         frac =3D DIV64_U64_ROUND_CLOSEST(num, state->period);
>
> . Round-closest is usually wrong in an .apply() callback. I didn't do
> the detailed math, but I think you need to round up here.
I will conduct relevant experiments to clarify this issue.

Thanks again.
>
> Best regards
> Uwe

