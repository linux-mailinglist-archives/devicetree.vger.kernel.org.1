Return-Path: <devicetree+bounces-139511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C16A160A7
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 08:03:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 25D043A6AA7
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 07:03:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B187E1779B8;
	Sun, 19 Jan 2025 07:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="KRsLLBbr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4DB6BB5B
	for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 07:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737270210; cv=none; b=iUIu7ahBMgDvQuhq6ELTa4ityqWCyjacTEJzfESGbQnCPDi1D5RL1V1b9qlsXC67zXrddfYmHpdlhDed/nfrCVz54/HKQ7bsz3J23hi5rWSvt2+1yKi8SpK9Vey9CvK0zyJVjNioqI/iPFYfkovw3aLQs5SYmVXyn2oSS/d63qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737270210; c=relaxed/simple;
	bh=Usi/qeoq9NOWuaw9Qjeon+wBmjALU/8jQmLif+un00c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GhFQLr0AwlgI11Bl09NaM1skeckW9C5daGf16zOM9stnGtS0Lpj6oK8L8Xv6QFT2LwCC2p3n+Xov3/LlhOy2ETS3yroQfvTVhbNSWCFgVM6PhFYVJflW74eXBXIo1GvP6dneZvxucCagtyJvpYAJfReJaG9xZ3EpwsxSbVCDDZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=KRsLLBbr; arc=none smtp.client-ip=209.85.217.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-4affab62589so929453137.1
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 23:03:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1737270207; x=1737875007; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZnpXrWKq0VBDxTyj8254F7BSKfNpb/hJLHAuN7YJik0=;
        b=KRsLLBbrVofIjiu7NstAOWOQjxdVx4TmEj9cbzS3fTSgS0AL6gvSyF3gzSxJhyD7oz
         BRRotGAU3XQjrK2uOB7cy++qHNNkG9M4hxDBrCofLQFLkPM9VTvPolI7uhWMsbN8YYQX
         m3AMWfAU92H1j2b0pDpvELdl+EVl0k1PxHhsmxNLTeUiSZJIYHHhAyiZ77Yz6NObS4Y4
         BwCZ3Sq7RLJNItK7gbPJuLb9ylUKvo08knT8STCnhdkpy3quxViEjTB/4XQFpgdwAHeB
         v6COYoD6a0Qsh6tZTqbfpA+afRURRakfFHRQhoy+CQsjpT5rIfDgqJ3BzvjIC1sWpl90
         R6nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737270207; x=1737875007;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZnpXrWKq0VBDxTyj8254F7BSKfNpb/hJLHAuN7YJik0=;
        b=ie1yMAtplj1iT8k4SXOKJzXNIgBv2via7scr3WXWVxsXdnFbwrqCwNaelA8jiuouuu
         cOl6TRrll1B2TrsapRJ9pCzkb0WukMYHqE1M86jzi/t8WwY4KTIkH43k7UaxHJ4ZKHLZ
         Csax3iKjzG8GTgtUgylv4bfD7b4htNwABwCIhXL2FeHuxwUdpktNnVFjVJJuGYkipLo7
         /vX5Xr7GTNHF15ZV1MefJCsNJgft5oZ9VqMboHKkGKGTJBnNwh717hCwWJLEP5sVUWbY
         shs8IdvFrj0w6XFL9v20TdSKUU0Db24Fd9R2QaxIUQKIkjIzlahrdUUv873AN4FSgTyc
         BvIw==
X-Forwarded-Encrypted: i=1; AJvYcCWkaJUiA/CnVVEUQpr3GmWm2U4SwxzBGF9TXyTHLGIBBgrHzP/+dPPy5yRPVSnfItQZoz6qrw5F0xtH@vger.kernel.org
X-Gm-Message-State: AOJu0Yxzzbu2PY/UAtLvLmUKieQwoQlp3VZnVVIH1Cxe46ijsIMLMyFT
	YccFr0LI5l3dN60vPka6nzHQyaJh8S4XtJPd0InAlovA05xvvcP8cGUegSotWMIqX8a69yHZoeK
	X7KvKoC1TadQ18iIteIokI63mDy0WsLXxjeMRtw==
X-Gm-Gg: ASbGncskKroPrVbL+iWY26NdXv33fUyowVx93oklyxdpTWVOJqtPENCOA2dWMfB1zef
	inWs3DDzlVj1HEwYjARl+wtgVi2OgpcLvYgTzTvyhHDSz3d0+jJFF
X-Google-Smtp-Source: AGHT+IET+wfBuCZLuaKbQD0fnAAK9r+Trh7Tp3Z3Tdnsd8797nd910UeypWqyFjddsNTUEAmq7sdL4dxMI1NIJ2lWKE=
X-Received: by 2002:a05:6102:390e:b0:4b2:5c0a:98c1 with SMTP id
 ada2fe7eead31-4b690cb5750mr6905795137.22.1737270207604; Sat, 18 Jan 2025
 23:03:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241224093902.1632627-1-nylon.chen@sifive.com>
 <zqkx7cx5nalslfmxeoxdnsjbvrvzajrjybsmsyeyc65a64sntr@gpc5qp6aoyp7> <CAHh=Yk-_0rKB=FG6Voif2MDjtRxzUA5vXDP2J-o5=8ru1ewt0w@mail.gmail.com>
In-Reply-To: <CAHh=Yk-_0rKB=FG6Voif2MDjtRxzUA5vXDP2J-o5=8ru1ewt0w@mail.gmail.com>
From: Nylon Chen <nylon.chen@sifive.com>
Date: Sun, 19 Jan 2025 15:03:16 +0800
X-Gm-Features: AbW1kvYEhClrN-MTto4gCSBy3I71VayyQl61nNw1WQtRAy-GYH0yHkhILkIz0uk
Message-ID: <CAHh=Yk-TosOmwEughfK9mMx-=DgzWK5H_bf6H641SGh1ue8BrA@mail.gmail.com>
Subject: Re: [PATCH v10 0/3] Change PWM-controlled LED pin active mode and algorithm
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Samuel Holland <samuel.holland@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Nylon Chen <nylon.chen@sifive.com> =E6=96=BC 2025=E5=B9=B41=E6=9C=886=E6=97=
=A5 =E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=885:09=E5=AF=AB=E9=81=93=EF=BC=9A
>
> Uwe Kleine-K=C3=B6nig <u.kleine-koenig@baylibre.com> =E6=96=BC 2024=E5=B9=
=B412=E6=9C=8827=E6=97=A5 =E9=80=B1=E4=BA=94 =E4=B8=8B=E5=8D=884:20=E5=AF=
=AB=E9=81=93=EF=BC=9A
> >
> > Hello Nylon,
> >
> > On Tue, Dec 24, 2024 at 05:38:58PM +0800, Nylon Chen wrote:
> > > According to the circuit diagram of User LEDs - RGB described in the
> > > manual hifive-unleashed-a00.pdf[0] and hifive-unmatched-schematics-v3=
.pdf[1].
> > >
> > > The behavior of PWM is acitve-high.
> > >
> > > According to the descriptionof PWM for pwmcmp in SiFive FU740-C000 Ma=
nual[2].
> > >
> > > The pwm algorithm is (PW) pulse active time  =3D (D) duty * (T) perio=
d.
> > > The `frac` variable is pulse "inactive" time so we need to invert it.
> >
> > I'm trying to understand that. You're saying that the PWMCMP register
> > holds the inactive time. Looking at the logic diagram (Figure 29) of
> > "SiFive FU740-C000 Manual v1p6" that is because pwms is feed into the
> > comparator after going through that XNOR where the lower input is alway=
s
> > 0 (as pwmcmpXcenter is always 0) and so effectively counts backwards,
> > right?
> > In that case the sentence "The output of each comparator is high
> > whenever the value of pwms is greater than or equal to the correspondin=
g
> > pwmcmpX." from the description of the Compare Registers is wrong.
> >
> Hi Uwe,
>
> Please give us some time to clarify these questions, thank you.
> > With that assumption there are a few issues with the second patch:
> >
> >  - The Limitations paragraph still says "The hardware cannot generate a
> >    100% duty cycle."
> >  - If pwm_sifive_apply() is called with state->duty_cycle =3D 0 the PWM=
CMP
> >    register becomes (1U << PWM_SIFIVE_CMPWIDTH) - 1 which results in a
> >    wave form that is active for 1 clock tick each period. That's bogus.
> >    If duty_cycle =3D 0 is requested, either make sure the output is
> >    inactive the whole time, or return an error.
> >  - With the above error in the official documentation, I'd like to have
> >    a code comment that explains the mismatch such that a future reader
> >    of the code has a chance to understand the situation without in
> >    detail review of the manual and the driver.
> >
> > Orthogonal to your patches, I wonder about
> >
> >         frac =3D DIV64_U64_ROUND_CLOSEST(num, state->period);
> >
> > . Round-closest is usually wrong in an .apply() callback. I didn't do
> > the detailed math, but I think you need to round up here.
Hi Uwe, about this part.

I ran some basic tests by changing the period and duty cycle in both
decreasing and increasing sequences (see the script below).

# Backward testing for period (decreasing)
echo "Testing period backward..."

seq 15000 -1 5000 | while read p; do

   echo $p > /sys/class/pwm/pwmchip1/pwm0/period

   echo "Testing period: $p"

done


# Forward testing for period (increasing)
echo "Testing period forward..."

seq 5000 1 15000 | while read p; do

   echo $p > /sys/class/pwm/pwmchip1/pwm0/period

   echo "Testing period: $p"

done


# Backward testing for duty cycle (decreasing)
echo "Testing duty cycle backward..."

for duty in $(seq 10000 -1 0); do

   echo $duty > /sys/class/pwm/pwmchip1/pwm0/duty_cycle

   echo "Testing duty cycle: $duty"

done


# Forward testing for duty cycle (increasing)

echo "Testing duty cycle forward..."

for duty in $(seq 0 1 10000); do

   echo $duty > /sys/class/pwm/pwmchip1/pwm0/duty_cycle

   echo "Testing duty cycle: $duty"

done



In these particular tests, I didn=E2=80=99t see any functional difference o=
r
unexpected behavior whether I used DIV64_U64_ROUND_CLOSEST() or
DIV64_U64_ROUND_UP.
Of course, there=E2=80=99s a chance my tests haven=E2=80=99t covered every =
scenario,
so there could still be edge cases I missed.

From what I understand, your main concern is to ensure we never end up
with a duty cycle that=E2=80=99s smaller than what the user requested, whic=
h a
round-up approach would help guarantee. If you still recommend making
that change to achieve the desired behavior, I=E2=80=99m happy to update th=
e
code accordingly(CLOSEST->UP).

Thanks again for your feedback.

> I will conduct relevant experiments to clarify this issue.
>
> Thanks again.
> >
> > Best regards
> > Uwe

