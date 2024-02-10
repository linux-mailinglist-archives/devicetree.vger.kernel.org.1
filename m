Return-Path: <devicetree+bounces-40330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23954850263
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 04:09:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4563D1C2474D
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 03:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71A61522F;
	Sat, 10 Feb 2024 03:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="Ly/WqWvM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC3B35224
	for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 03:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707534559; cv=none; b=SwhUOTNSqjFKbLrM9gdAhcGqWdStLuGaTwuo4AxNxJqlxrkSrIu8QKIjGHKkJFcFmZqpJYld+RccG0LD8RjJg3QNfTCLlfWX8hknzLPwPr/q1tey94eY9LvSq5MvqwLMuPv4PnQtz1IUAVSSezGygJCWmB4A5F8dJ8FiSpNibTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707534559; c=relaxed/simple;
	bh=a/B+x6qGVmEPhmuSOW++53GgluCj2guBBnZIF24h4CM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=T/We2QJsHupOsKd2TWdXAH0o9oq48Utg1tFbXgwaAr/iWQenHmjXYmQOqoo1KaxptUuL1EjFKYqa68VVYPskTdNEvUe470IQxiPvWrDtI3IpJyNe5FavsvPCWyqTE4LPaldO1t7m3jqQByCj0cFgecqV9VL0VH3R1hAHF2dZGRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=Ly/WqWvM; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-60499a12ca0so17003067b3.2
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 19:09:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1707534556; x=1708139356; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5NlfPA40flIXglJdThwjDuOLYTh+YAAerXy2K72G15g=;
        b=Ly/WqWvMd5C2ju0Pd+n8JkQD9Sdq0efurSnrq0gIYCeKVXw+uO+GADoRr14azzOXC5
         +Xs4Rv2OtGBWWQD6NsOtvYQRRhyKWokut6eW7wVCFWZOodgO7BZs7fizZ8S7tHB9Om7h
         qDF9VY5CoTnDmoBwpf+tdtZfBfS4EiIH7FoyWYxoZ2HaVt9kNdMBZpb+TXtrY4D6EpdY
         DOp/6qwzbvbottlrn+Q5meRlW00FtV46yyTCx9l2kDJ6PDB812fxbcg1RMLG0ut/NhDQ
         TtNeDYITJJJhynU+IvmSCYzckahaOk71pXWUr6AxpHXI+291zU1b1LAleNVccUjKpd05
         hALQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707534556; x=1708139356;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5NlfPA40flIXglJdThwjDuOLYTh+YAAerXy2K72G15g=;
        b=PRUNUJx+rt8x4IzvwC2r1rBtDroaIle1BO3JgydRMk+BBLN3gmyEz35G4skdPNIDcj
         LhqzcNOAxpdGBg4Hr/pp6Q5UWafed0dqJEbw77qs979epgVao9BFYRE4E77TpZKeGxLe
         paOc7//Vlzbv6LFZm6+cS5NBxKgAsyWwG9EIs0RYQ/ryT8aySRsu87KsosohOAntXHmu
         tUIc656h4O9ElRx8sp9dBLPLz2qjtBrXyHdaJBufW0dVHRssjN0WoGcBuCScFykHQBuJ
         qHOgHW71wvvO61USABRm0IuZWNGNlNNeL3dzprddhBvI6lkEB2y5qJvhbmDCm8xtHY8T
         /+7A==
X-Gm-Message-State: AOJu0Yz26cPFtTtbCVZbHgtrCPDaISYIl5kH1Mt/JnvwhnkXWAr8g/05
	L5Ta9gx3/H4UM2ixVypHeAdBV9VSeBt7FekPhoCOq26nHPF/nljeccsWhEBlpiFBJ8eRYWwNELx
	xpH40Yk5VC7vkJKh24nH/2XwkRPkRVfn2ak7EDg==
X-Google-Smtp-Source: AGHT+IHGF7ANrInFVu7kswdinwo7NjOexDcTMyg5R35Qf/nzrvatBvo9UFZi2JyE3JMFYYfCG6Zh8m3FUyKa/q0zJPA=
X-Received: by 2002:a81:a08d:0:b0:604:2c60:d5d4 with SMTP id
 x135-20020a81a08d000000b006042c60d5d4mr1199631ywg.21.1707534556540; Fri, 09
 Feb 2024 19:09:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240126074045.20159-1-nylon.chen@sifive.com> <20240126074045.20159-3-nylon.chen@sifive.com>
 <4kqkazromkzyhic2mgyyjrh4jlnp6djfuotu37btdfolqp5e2o@6jkbjnahvrbo>
In-Reply-To: <4kqkazromkzyhic2mgyyjrh4jlnp6djfuotu37btdfolqp5e2o@6jkbjnahvrbo>
From: Nylon Chen <nylon.chen@sifive.com>
Date: Sat, 10 Feb 2024 11:09:05 +0800
Message-ID: <CAHh=Yk8Zeuu7hyvF3f-27TOV+t1Pn3OpSFSQErV7maE1WQ6cqw@mail.gmail.com>
Subject: Re: [PATCH v8 2/3] pwm: sifive: change the PWM controlled LED algorithm
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, conor@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com, 
	paul.walmsley@sifive.com, aou@eecs.berkeley.edu, thierry.reding@gmail.com, 
	vincent.chen@sifive.com, zong.li@sifive.com, nylon7717@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de> =E6=96=BC 2024=E5=B9=
=B42=E6=9C=886=E6=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8A=E5=8D=882:07=E5=AF=AB=
=E9=81=93=EF=BC=9A
>
> Hello,
Hi Uwe, thanks for your feedback.
>
> Regarding the Subject: The patch has nothing to do with an LED, has it?
I will correct this.
>
> On Fri, Jan 26, 2024 at 03:40:44PM +0800, Nylon Chen wrote:
> > The `frac` variable represents the pulse inactive time, and the result
> > of this algorithm is the pulse active time. Therefore, we must reverse =
the result.
>
> Please break lines at 75 columns in the commit log.
got it.
>
> > The reference is SiFive FU740-C000 Manual[0]
> >
> > Link: https://sifive.cdn.prismic.io/sifive/1a82e600-1f93-4f41-b2d8-86ed=
8b16acba_fu740-c000-manual-v1p6.pdf [0]
>
> I looked at Figure 29 in this document (version v1p6, pdf page 148). Not
> sure I understand that correctly, but I expect that the output of the
> ">=3D?" node below pwmcmp0 to become 1 if pwms has reached pwmcmp0, is
> that right? In that case this output is zero when pwmcount is zero and
> then pwmcmp0ip is zero, too. So a period starts with the inactive part
> and so it's inversed polarity.
>
> What made you think that the current driver implementation is wrong?

This is the process of my speculation.

This is a HiFive Unmatched/Unleashed LED-PWM layout

            VDD
               |
               |
           _____
           \        /   LED
            \     /
              ---
               |
               |
               |
         ______
        |              |
        -             |
        ^    -->    |------ PWM
        |___|___|
               |
               |
              __
               -
            GND

- the waveform
e.g. duty=3D30s, period=3D100s, actvie-high =3D 30%, active-low =3D 70%

V
^
|
| ----------|
|             |
|             |
|______ |__________ > t

When VCC is high, the LED will be illuminated, which is an active-high
logic. This is why I want to remove "active-low".

For HW, we just focus on pwmcount/pwmcmp[0-3]
- pwmcount default is zero, that counter 0->1->0xffff
- Follow the origin algorithm the frac=3D0x0(on) / 0xffff(off) and when
the smaller the value of frac, the brighter the light.
   -- E.g. pwmcmp =3D 0x2, pwmcount 0x0->0x1->...->0xffff
       --- 0->0x2=3Dlow & 0x3->0xffff=3Dhigh =3D> 98%
   -- E.g. pwmcmp =3D 0xffff, pwmcount 0x0->0x1->...->0xffff
       --- 0->0xffff=3Dlow =3D> 0%
- For SW, we reference the algorithm. (D=3DPW/T*100% D=3Dduty_cycle,
T=3Dperiod, PW=3Dpulse width (pulse active time))
  -- when we consider HW behavior
  --- Direct writing SW frac into HW's pwmcmp is active low, so when
we want to get an active-high behavior that use a invert function.

If my understanding or deduction process is incorrect, please let me
know. Thank you.
>
> > Co-developed-by: Zong Li <zong.li@sifive.com>
> > Signed-off-by: Zong Li <zong.li@sifive.com>
> > Co-developed-by: Vincent Chen <vincent.chen@sifive.com>
> > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> > Signed-off-by: Nylon Chen <nylon.chen@sifive.com>
> > ---
> >  drivers/pwm/pwm-sifive.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
> > index eabddb7c7820..b07c8598bb21 100644
> > --- a/drivers/pwm/pwm-sifive.c
> > +++ b/drivers/pwm/pwm-sifive.c
> > @@ -113,6 +113,7 @@ static int pwm_sifive_get_state(struct pwm_chip *ch=
ip, struct pwm_device *pwm,
> >       u32 duty, val;
> >
> >       duty =3D readl(ddata->regs + PWM_SIFIVE_PWMCMP(pwm->hwpwm));
> > +     duty =3D (1U << PWM_SIFIVE_CMPWIDTH) - 1 - duty;
>
> I find it irritating that both values are assigned to duty. I'd spend
> another variable and make this:
>
>         inactive =3D readl(ddata->regs + PWM_SIFIVE_PWMCMP(pwm->hwpwm));
>         duty =3D (1U << PWM_SIFIVE_CMPWIDTH) - 1 - inactive;
got it.
>
>
> >
> >       state->enabled =3D duty > 0;
> >
> > @@ -123,11 +124,10 @@ static int pwm_sifive_get_state(struct pwm_chip *=
chip, struct pwm_device *pwm,
> >       state->period =3D ddata->real_period;
> >       state->duty_cycle =3D
> >               (u64)duty * ddata->real_period >> PWM_SIFIVE_CMPWIDTH;
> > -     state->polarity =3D PWM_POLARITY_INVERSED;
> > +     state->polarity =3D PWM_POLARITY_NORMAL;
> >
> >       return 0;
> >  }
> > -
>
> Please keep this empty line between functions.
got it.
>
> >  static int pwm_sifive_apply(struct pwm_chip *chip, struct pwm_device *=
pwm,
> >                           const struct pwm_state *state)
> >  {
>
> Best regards
> Uwe
>
> --
> Pengutronix e.K.                           | Uwe Kleine-K=C3=B6nig       =
     |
> Industrial Linux Solutions                 | https://www.pengutronix.de/ =
|

