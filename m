Return-Path: <devicetree+bounces-14698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CF37E6423
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 08:02:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C17DCB20BF8
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 07:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93B5A258D;
	Thu,  9 Nov 2023 07:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="Wi7ksFB/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DEA9D304
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 07:02:31 +0000 (UTC)
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDCDA1727
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 23:02:30 -0800 (PST)
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-da077db5145so586209276.0
        for <devicetree@vger.kernel.org>; Wed, 08 Nov 2023 23:02:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1699513350; x=1700118150; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FoLz//LH1CjVmWy0eAZ6OsQtm1+A5S0uKqoA43bqdiA=;
        b=Wi7ksFB/O7iVwjJ7qlUs7LUEaK9AsGPYxbUAhj18V6i3jZtwhlK4ynST8IxTd9wG0U
         2+J+7TBH0zzj7bw+IhZpEwyYeR3TV+UmZcyYTkQO2lmlt5GaD9+oVv6WvcXt416nrgvE
         KtN26vgPMYfkY6siWe16i4BOIPg8HmnNAWNWUILie9Tm1b6GqAaLrUlwMCjroDXfThQr
         uSW3p/IujlUI5iS4fNYoQgtDmOEPz29sNjJP+tibgmRdz4BTH9AgoBXxSmMLtAfRBrq/
         raMmcBn7Zj/exLmMneCrohH/PUj6jJHrEAqaf3bu4OhA2eyX8fz5yZxIo9qtem5BFkvZ
         SA1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699513350; x=1700118150;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FoLz//LH1CjVmWy0eAZ6OsQtm1+A5S0uKqoA43bqdiA=;
        b=a03MD67/jLSLGusnVbJlEK3j/6ytpAO2doiXbM6ShIl5/6F4Ff+AaC7fLf9tVfpiay
         tUf/hSiUDDkF61gpob2s9gghwCPXgJHoXmb3E5ZajxNsJwHcXMvPQtppZAu9w/cRQUj5
         KvPoBq4IA9p8iX9B6g/ST43SHpfnrOAgXHnrXYP89zOljnaDSaHIInGf53mtawbvamQj
         HVJz4NCcb3U/PT8RGKv8qLyatA0BasNHB7actRKjfFohh9w0aYBrNfTqR1YyTzJ8VKGj
         19aE7uxBgZRmIbhuzZ/ccqW2QPYaWkMQTW13UdVEFZlQiW1yaIXVgeX8bp1rGXth2iIM
         UYtg==
X-Gm-Message-State: AOJu0YxVozKHOGj4Obhzxmam41UWbusn6U8bqIJaIeXqgevDIJLadRdJ
	QLD0TT/t8XUsBbmaj/BZ7u2LD/LfgrKcwmYbWPY5Kw==
X-Google-Smtp-Source: AGHT+IE8BBe1spx8hqF4fLpehhdYAM3HZKZD6rH75vUkL6sQG9EjJs+CVFPxWIJCWp5BEcf+mXPhNKGZGdoG3oWQXio=
X-Received: by 2002:a25:2396:0:b0:d86:5a8d:6e34 with SMTP id
 j144-20020a252396000000b00d865a8d6e34mr3697289ybj.29.1699513349774; Wed, 08
 Nov 2023 23:02:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231024101902.6689-1-nylon.chen@sifive.com> <20231024101902.6689-3-nylon.chen@sifive.com>
In-Reply-To: <20231024101902.6689-3-nylon.chen@sifive.com>
From: Nylon Chen <nylon.chen@sifive.com>
Date: Thu, 9 Nov 2023 15:02:18 +0800
Message-ID: <CAHh=Yk_i-tH-n_5wuwp6H8QRu3cZovkukDzMbeUZrgiih46V8g@mail.gmail.com>
Subject: Re: [v5 2/2] pwm: sifive: change the PWM controlled LED algorithm
To: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de, 
	emil.renner.berthing@canonical.com, vincent.chen@sifive.com
Cc: greentime.hu@sifive.com, zong.li@sifive.com, nylon7717@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Ping on the series.

Uwe, is there anything more I can do to push the process forward?

Nylon Chen <nylon.chen@sifive.com> =E6=96=BC 2023=E5=B9=B410=E6=9C=8824=E6=
=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=886:19=E5=AF=AB=E9=81=93=EF=BC=9A

>
> The `frac` variable represents the pulse inactive time, and the result
> of this algorithm is the pulse active time. Therefore, we must reverse th=
e result.
>
> The reference is SiFive FU740-C000 Manual[0]
>
> Link: https://sifive.cdn.prismic.io/sifive/1a82e600-1f93-4f41-b2d8-86ed8b=
16acba_fu740-c000-manual-v1p6.pdf [0]
>
> Signed-off-by: Nylon Chen <nylon.chen@sifive.com>
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> ---
>  drivers/pwm/pwm-sifive.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
> index eabddb7c7820..353c2342fbf1 100644
> --- a/drivers/pwm/pwm-sifive.c
> +++ b/drivers/pwm/pwm-sifive.c
> @@ -101,7 +101,7 @@ static void pwm_sifive_update_clock(struct pwm_sifive=
_ddata *ddata,
>
>         /* As scale <=3D 15 the shift operation cannot overflow. */
>         num =3D (unsigned long long)NSEC_PER_SEC << (PWM_SIFIVE_CMPWIDTH =
+ scale);
> -       ddata->real_period =3D div64_ul(num, rate);
> +       ddata->real_period =3D DIV_ROUND_UP_ULL(num, rate);
>         dev_dbg(ddata->chip.dev,
>                 "New real_period =3D %u ns\n", ddata->real_period);
>  }
> @@ -121,13 +121,14 @@ static int pwm_sifive_get_state(struct pwm_chip *ch=
ip, struct pwm_device *pwm,
>                 state->enabled =3D false;
>
>         state->period =3D ddata->real_period;
> +
> +       duty =3D (1U << PWM_SIFIVE_CMPWIDTH) - 1 - duty;
>         state->duty_cycle =3D
>                 (u64)duty * ddata->real_period >> PWM_SIFIVE_CMPWIDTH;
> -       state->polarity =3D PWM_POLARITY_INVERSED;
> +       state->polarity =3D PWM_POLARITY_NORMAL;
>
>         return 0;
>  }
> -
>  static int pwm_sifive_apply(struct pwm_chip *chip, struct pwm_device *pw=
m,
>                             const struct pwm_state *state)
>  {
> @@ -139,7 +140,7 @@ static int pwm_sifive_apply(struct pwm_chip *chip, st=
ruct pwm_device *pwm,
>         int ret =3D 0;
>         u32 frac;
>
> -       if (state->polarity !=3D PWM_POLARITY_INVERSED)
> +       if (state->polarity !=3D PWM_POLARITY_NORMAL)
>                 return -EINVAL;
>
>         cur_state =3D pwm->state;
> @@ -158,6 +159,7 @@ static int pwm_sifive_apply(struct pwm_chip *chip, st=
ruct pwm_device *pwm,
>         num =3D (u64)duty_cycle * (1U << PWM_SIFIVE_CMPWIDTH);
>         frac =3D DIV64_U64_ROUND_CLOSEST(num, state->period);
>         /* The hardware cannot generate a 100% duty cycle */
> +       frac =3D (1U << PWM_SIFIVE_CMPWIDTH) - 1 - frac;
>         frac =3D min(frac, (1U << PWM_SIFIVE_CMPWIDTH) - 1);
>
>         mutex_lock(&ddata->lock);
> --
> 2.42.0
>

