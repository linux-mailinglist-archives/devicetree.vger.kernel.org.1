Return-Path: <devicetree+bounces-58475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E62668A23AB
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 04:07:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4AF25B2280D
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 02:07:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1835E560;
	Fri, 12 Apr 2024 02:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="ZxAKYJCq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFCDC6AB8
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 02:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712887647; cv=none; b=TXWA0ZW6cIfF2R8GvFTBQszG4ourOpjO9HrUrn98pY3/x9Gs/gJ/ozsLYU+kH7TCKSY8HRJi6uT5mFyiUbyYBBqJ3Jkq4RN2+MHuIDlmzbIllwixGKcKpzEr4ldyiazvN21eDCdve0ubLMPrzDSt27pFFM8rHlPVltB7kjR4O70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712887647; c=relaxed/simple;
	bh=MelCsYWkdQ5EAsUBNYbNsTcwbc2X5i5zv+BYxjy46ik=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZvsMdozPzOYUZIB0MhpB52c97WAIvU17c7N1QzNwkNOLJ4gokKJ8biOyGWa8Cxy5HpU3kLUuDC82HLwbInxoBY6ny6CUevj28uOVO3cpzqKv6yR3UtNVDZkUkUVDR+Fk11pWZUolYRDE7M+R5P7qnLon1kro2UloBNFr3hWY4FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=ZxAKYJCq; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-6181237230dso4773107b3.2
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 19:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1712887644; x=1713492444; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YQm9N6HlYQFv2uqQbKzOf53M4hr41FQjJSq0UsW2Bjw=;
        b=ZxAKYJCq50xUcKjq3UcT1V9eKrZbvF+i9yvDZRP0ddj9hOzcaHXxv67Ogr9pBUMXAx
         x8Cct3+o0gFhd02jhcGX/Er7wRZ2CJIQsCmzBxOjonI+YiHnoxQKRql35Jt9VLk8p2S5
         +4c6Etn7/u9QqZuIXpP4ldHKx7yCDYE5gLtBsltLiz55YAROuHmpU8PyGS4jvgv1GT/m
         BPuvKg26fWpt1EpnUNToMK5dKmq2m9wguHZ5E2kWbW2PhA/DdcSoXA+7S9klXr94XBFH
         Plj1HcK3ZuByQgo6i1J5jfnuMKqklvHiAWckJR+OlUDGdsyjovPcc3ID1X5T5nT030Iw
         /D6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712887644; x=1713492444;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YQm9N6HlYQFv2uqQbKzOf53M4hr41FQjJSq0UsW2Bjw=;
        b=M4FP/hpfn9isGYg2ybCAHrs7t11pvl+CDaiSXHk9w47HyTdhQVviUo4IVdOz/t9nFG
         2Dx0rKYHa7cTRFdOzFGyIyxPIw6egmBnn4DulWcKufqzr0N1VEHMt4M50bzqxegjXHEL
         SMhw0ca6zPuEe/sG1nQJ59goznXzr7xRGmeMRDYQmlMXPhv7m9qoDMf4SMwOFrKsTxl3
         QQ+dlDwcfIzUqJ3yyULZpIrqlJRZXEiK05wVJgMtbKvBwdZCM9DwMcsIqlxpsKv/vgi7
         RsfNFwoqB2kRFZFitiN3G6aP0z+llcf3EFSiEY3FhR0XPLEoCTBWmUXkuHezzk6QpQ0e
         XtAg==
X-Forwarded-Encrypted: i=1; AJvYcCUXW8mS2RsqugSo99WUy06mbpNlC0xHKw+ix9ubSs7cDJJciszO6bFjrkputKOBn0NP8IH1+PdpOj8Y96jYFhooKhyXpTQUnQJ3Rw==
X-Gm-Message-State: AOJu0YzwMl7WZBVVa4lM21YPE2NWmsus83hytJVicjxo0IQRAyM4wxpy
	n3p6e59Y4wfPwyluEwrrK3fZXySBdxJs0bJ3K7lb/Bb8qNVmenB3v1T2Tx6RZ2u8cIm5J30rSpb
	s1twkWxLnJhIfJaA+H8WL5dJKCfRYVpqTv5IqOg==
X-Google-Smtp-Source: AGHT+IEyah2wqUDUWwo2dw/PFJAZ80ndyEe9wSUytDMdW7m4oK2cK2GqDd50cMMO1kXUDCo8ycdzX/F5kxc1yT2BDdc=
X-Received: by 2002:a0d:d614:0:b0:615:16a1:4a04 with SMTP id
 y20-20020a0dd614000000b0061516a14a04mr1202091ywd.31.1712887643882; Thu, 11
 Apr 2024 19:07:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240222081231.213406-1-nylon.chen@sifive.com>
 <20240222081231.213406-3-nylon.chen@sifive.com> <f5ukvah2ujko2iht3pd5jxq5kaukbs5z3pn5s7qwcnx4aqr3yv@mwtbwkcfa44a>
 <CAHh=Yk8MXy73d8M1J5bVu4spDMbjQDneVTqA=Ts=SGPDO7PXMQ@mail.gmail.com>
In-Reply-To: <CAHh=Yk8MXy73d8M1J5bVu4spDMbjQDneVTqA=Ts=SGPDO7PXMQ@mail.gmail.com>
From: Nylon Chen <nylon.chen@sifive.com>
Date: Fri, 12 Apr 2024 10:07:12 +0800
Message-ID: <CAHh=Yk-WmzJe0vb+noX8Gb13BL2SOB=MwSB=F9nH_G-j9zi1Lw@mail.gmail.com>
Subject: Re: [PATCH v9 2/3] pwm: sifive: change the PWM algorithm
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, conor@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com, 
	paul.walmsley@sifive.com, aou@eecs.berkeley.edu, thierry.reding@gmail.com, 
	vincent.chen@sifive.com, zong.li@sifive.com, nylon7717@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Nylon Chen <nylon.chen@sifive.com> =E6=96=BC 2024=E5=B9=B44=E6=9C=882=E6=97=
=A5 =E9=80=B1=E4=BA=8C =E4=B8=8A=E5=8D=8810:08=E5=AF=AB=E9=81=93=EF=BC=9A
>
> Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de> =E6=96=BC 2024=E5=
=B9=B43=E6=9C=8819=E6=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8A=E5=8D=882:16=E5=AF=
=AB=E9=81=93=EF=BC=9A
> >
> > On Thu, Feb 22, 2024 at 04:12:30PM +0800, Nylon Chen wrote:
> > > The `frac` variable represents the pulse inactive time, and the resul=
t
> > > of this algorithm is the pulse active time.
> > > Therefore, we must reverse the result.
> > >
> > > The reference is SiFive FU740-C000 Manual[0]
> > >
> > > Link: https://sifive.cdn.prismic.io/sifive/1a82e600-1f93-4f41-b2d8-86=
ed8b16acba_fu740-c000-manual-v1p6.pdf [0]
> > >
> > > Co-developed-by: Zong Li <zong.li@sifive.com>
> > > Signed-off-by: Zong Li <zong.li@sifive.com>
> > > Co-developed-by: Vincent Chen <vincent.chen@sifive.com>
> > > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> > > Signed-off-by: Nylon Chen <nylon.chen@sifive.com>
> > > ---
> > >  drivers/pwm/pwm-sifive.c | 10 ++++++----
> > >  1 file changed, 6 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
> > > index eabddb7c7820..a586cfe4191b 100644
> > > --- a/drivers/pwm/pwm-sifive.c
> > > +++ b/drivers/pwm/pwm-sifive.c
> > > @@ -110,9 +110,10 @@ static int pwm_sifive_get_state(struct pwm_chip =
*chip, struct pwm_device *pwm,
> > >                               struct pwm_state *state)
> > >  {
> > >       struct pwm_sifive_ddata *ddata =3D pwm_sifive_chip_to_ddata(chi=
p);
> > > -     u32 duty, val;
> > > +     u32 duty, val, inactive;
> > >
> > > -     duty =3D readl(ddata->regs + PWM_SIFIVE_PWMCMP(pwm->hwpwm));
> > > +     inactive =3D readl(ddata->regs + PWM_SIFIVE_PWMCMP(pwm->hwpwm))=
;
> > > +     duty =3D (1U << PWM_SIFIVE_CMPWIDTH) - 1 - inactive;
> > >
> > >       state->enabled =3D duty > 0;
> > >
> > > @@ -123,7 +124,7 @@ static int pwm_sifive_get_state(struct pwm_chip *=
chip, struct pwm_device *pwm,
> > >       state->period =3D ddata->real_period;
> > >       state->duty_cycle =3D
> > >               (u64)duty * ddata->real_period >> PWM_SIFIVE_CMPWIDTH;
> > > -     state->polarity =3D PWM_POLARITY_INVERSED;
> > > +     state->polarity =3D PWM_POLARITY_NORMAL;
> > >
> > >       return 0;
> > >  }
> > > @@ -139,7 +140,7 @@ static int pwm_sifive_apply(struct pwm_chip *chip=
, struct pwm_device *pwm,
> > >       int ret =3D 0;
> > >       u32 frac;
> > >
> > > -     if (state->polarity !=3D PWM_POLARITY_INVERSED)
> > > +     if (state->polarity !=3D PWM_POLARITY_NORMAL)
> > >               return -EINVAL;
> > >
> > >       cur_state =3D pwm->state;
> > > @@ -159,6 +160,7 @@ static int pwm_sifive_apply(struct pwm_chip *chip=
, struct pwm_device *pwm,
> > >       frac =3D DIV64_U64_ROUND_CLOSEST(num, state->period);
Hi Uwe,
> > >       /* The hardware cannot generate a 100% duty cycle */
Do you mean that if the inference is correct, this comment should be modifi=
ed?
> >
> > Is this still true now that we know that PWM_SIFIVE_PWMCMP is the
> > inactive time in a period? If you fix that, the same claim in the heade=
r
> > of the driver needs adaption, too.
> I believe the statement is true, but I don't know which part the
> driver header file refers to.
> >
> > >       frac =3D min(frac, (1U << PWM_SIFIVE_CMPWIDTH) - 1);
> > > +     frac =3D (1U << PWM_SIFIVE_CMPWIDTH) - 1 - frac;
> >
> > I like the additional variable in pwm_sifive_get_state(). Can you pleas=
e
> > add one here, too?
> got it
> >
> > >       mutex_lock(&ddata->lock);
> > >       if (state->period !=3D ddata->approx_period) {
> >
> Thank you for taking the time to help me review my implementation.
>
> Nylon
> > Best regards
> > Uwe
> >
> > --
> > Pengutronix e.K.                           | Uwe Kleine-K=C3=B6nig     =
       |
> > Industrial Linux Solutions                 | https://www.pengutronix.de=
/ |

