Return-Path: <devicetree+bounces-139942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FF3A1797B
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 09:48:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82A663AACB2
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 08:47:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2731A1B85C2;
	Tue, 21 Jan 2025 08:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="lLYsa0Dw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62CFF1B4237
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 08:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737449280; cv=none; b=PeOLQ42FLTRKqr4u84ln+MyZtIU40EX0LleU0qLeSraBc/aBC1mABMUQfdN9yGKCn3Ow+xW5W4Rcxe2g+GZ51jbLWBg5U9+9ZPBY+5R1atS6WYdETi97YkULYFXCR1Km9XXvpN3ctR1NJxFdKubF+EkO7EskwumBamXQwha9EU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737449280; c=relaxed/simple;
	bh=W0gV58YMdVAgUpJ7DgzgpwUIMKPDw9p1SpbYXncdnBw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eH5LYKMHuCf4YOWOu4WP63MXAWxg8BFoAeYhZIo7TEU6TnnHTvbPbWnHoANT0+82ojedP7yL61CU7Pp09rKsXRW49i7IowAXce+pjyBYbOszw8eYG1XQV3mVDvzcthjpA+7TRCqpaNJgr+CC+gTrwTPD+M8i69c9WmU6StVv0y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=lLYsa0Dw; arc=none smtp.client-ip=209.85.217.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-4aff78a39e1so1319424137.1
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 00:47:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1737449277; x=1738054077; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ylm0SQb6Ef9jjirSI4sl+IsEvfZdYeaZm3dNfDBGQWQ=;
        b=lLYsa0DwvH1le/p8zCBdetzYw6za0RUFLTGxiZRZY9Hjy+5FK81+/oGsCBhyBswHCO
         r/FHUeJarRCoq8uHBqOIg/DKRs6tkDAOa/1YkW5ovKPz1+AVB2c20oJsnDp+DQtGE/7N
         xHgK+334QX4kPh3McH/6qImftLXI7HZe611ghF7Td4Zh8nVN3XGLui8B/diiwwEIcA0G
         JMXfbeOD+CgbXQGsu2dTTqKUkpoH2iQRlU0aaOuy5b5X0rUakcsuo3ZgUH4Y228+YNTE
         G6mrSISeK881JSJulbLNbWFbNKsS+CKYRLNlVGsRac8fyfmA+FhuAyjvtUa7xqfzU6nA
         O4Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737449277; x=1738054077;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ylm0SQb6Ef9jjirSI4sl+IsEvfZdYeaZm3dNfDBGQWQ=;
        b=lLVbVfuj4rZeYggNy5uw0S0jSckAekkie0SVlsNRDt2ZP117ASYG1PVon+kwfEwcAX
         YRhHITTHkBDnTuhGsil9V7w5a+Gy9fns29uYIFK9nGByORbWIipJypYAJryeJlH5iyf+
         0Ku83W/dCN1+Jc/TnaeR8Oj/JrY+ZxoGzZ1rHtYPC/Xews/fPwtsj4DAV9l+kLn3QPUa
         Nspk/fCHCTlye0HmACCn75U6VP8wa2BmghGvjZkFgJb4YWfoojqs3KaPw3fArs9chFEU
         HuxI2r2UD/U/IoUBeWMwmSBib0Q+1cq/Hnybnmf3eV0mcUc+gNTJWeN+kpkG7vfV+jsU
         TUuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUy6RIQnGMLLUUuqFF0G1gbNhnyEfynQ/NOX2RUvK9lbYfx8JtBGVxJk4dLcPRCwD3M8UNrd/DI5Ax/@vger.kernel.org
X-Gm-Message-State: AOJu0YyJdpWNWwvUEJFWHjarhxwZT3JxaTFJ2nXVfJnv+dqxfOVINaMq
	DePFWRWzWYPJx/KcUz6Xsn6n4IFFqQ+Mvf5jtA/35zfgtLHM3HKkgJI/Nsi+z6KEdOkPULcC9oU
	Qt6aLQp0aAt/vIhXVONeZIpY97qRuP8OHw/gleQ==
X-Gm-Gg: ASbGncv5kqZ9rMLhvK3krCREer9EMZGx45UMLYLSKDR5UZRxI1MeOgMN7oewnJfCff4
	9+SoJJfc+pVgrAx82ErhPwOhA5kEATo6Df112ejAN0XyCLGvtPYRhrA==
X-Google-Smtp-Source: AGHT+IHq4KMBokiyD5WugWcwEvEj0WpVyisepAYzvkq3Q3ow3rYydwBTKGAk6ok+pF9C8Pda6DGP35aW3y6LsiGm1r0=
X-Received: by 2002:a05:6102:161e:b0:4b2:cc94:1879 with SMTP id
 ada2fe7eead31-4b690d1e374mr11844622137.22.1737449277184; Tue, 21 Jan 2025
 00:47:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241224093902.1632627-1-nylon.chen@sifive.com>
 <zqkx7cx5nalslfmxeoxdnsjbvrvzajrjybsmsyeyc65a64sntr@gpc5qp6aoyp7>
 <CAHh=Yk-_0rKB=FG6Voif2MDjtRxzUA5vXDP2J-o5=8ru1ewt0w@mail.gmail.com>
 <CAHh=Yk-TosOmwEughfK9mMx-=DgzWK5H_bf6H641SGh1ue8BrA@mail.gmail.com> <zneb3qwgf52zitcbq4wz76shnmhwfkabbsts3sussjpc5s5tsz@uneaxdfp4m2f>
In-Reply-To: <zneb3qwgf52zitcbq4wz76shnmhwfkabbsts3sussjpc5s5tsz@uneaxdfp4m2f>
From: Nylon Chen <nylon.chen@sifive.com>
Date: Tue, 21 Jan 2025 16:47:46 +0800
X-Gm-Features: AbW1kvb1k96mTed4V1SVNr18MrzJpI0GDeXCbwcceOVDYQeW1YSiE4o1vNYPLLY
Message-ID: <CAHh=Yk_oTdURhkna_saF6mrA9gDY=+v_j5NoY_7jTDLuZ=EXtg@mail.gmail.com>
Subject: Re: [PATCH v10 0/3] Change PWM-controlled LED pin active mode and algorithm
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Samuel Holland <samuel.holland@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Uwe Kleine-K=C3=B6nig <u.kleine-koenig@baylibre.com> =E6=96=BC 2025=E5=B9=
=B41=E6=9C=8821=E6=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=883:47=E5=AF=AB=
=E9=81=93=EF=BC=9A
>
> Hello,
>
> On Sun, Jan 19, 2025 at 03:03:16PM +0800, Nylon Chen wrote:
> > I ran some basic tests by changing the period and duty cycle in both
> > decreasing and increasing sequences (see the script below).
>
> What is clk_get_rate(ddata->clk) for you?
130 MHz
>
> > # Backward testing for period (decreasing)
> > echo "Testing period backward..."
> >
> > seq 15000 -1 5000 | while read p; do
> >
> >    echo $p > /sys/class/pwm/pwmchip1/pwm0/period
> >
> >    echo "Testing period: $p"
> >
> > done
> >
> >
> > # Forward testing for period (increasing)
> > echo "Testing period forward..."
> >
> > seq 5000 1 15000 | while read p; do
> >
> >    echo $p > /sys/class/pwm/pwmchip1/pwm0/period
> >
> >    echo "Testing period: $p"
> >
> > done
> >
> >
> > # Backward testing for duty cycle (decreasing)
> > echo "Testing duty cycle backward..."
> >
> > for duty in $(seq 10000 -1 0); do
> >
> >    echo $duty > /sys/class/pwm/pwmchip1/pwm0/duty_cycle
> >
> >    echo "Testing duty cycle: $duty"
> >
> > done
> >
> >
> > # Forward testing for duty cycle (increasing)
> >
> > echo "Testing duty cycle forward..."
> >
> > for duty in $(seq 0 1 10000); do
> >
> >    echo $duty > /sys/class/pwm/pwmchip1/pwm0/duty_cycle
> >
> >    echo "Testing duty cycle: $duty"
> >
> > done
> >
> >
> >
> > In these particular tests, I didn=E2=80=99t see any functional differen=
ce or
> > unexpected behavior whether I used DIV64_U64_ROUND_CLOSEST() or
> > DIV64_U64_ROUND_UP.
> > Of course, there=E2=80=99s a chance my tests haven=E2=80=99t covered ev=
ery scenario,
> > so there could still be edge cases I missed.
>
> Just to be sure: You have PWM_DEBUG enabled?
Yes, to verify my patch, I always enable it by default.

>
> > From what I understand, your main concern is to ensure we never end up
> > with a duty cycle that=E2=80=99s smaller than what the user requested, =
which a
> > round-up approach would help guarantee. If you still recommend making
> > that change to achieve the desired behavior, I=E2=80=99m happy to updat=
e the
> > code accordingly(CLOSEST->UP).
>
> No, .apply should round down and so to ensure that
>
>         pwm_get_state(mypwm, &state);
>         pwm_apply(mypwm, &state);
>
> doesn't modify the hardware setting, .get_state has to round up.
I have some questions that I'd like to further confirm, to ensure I
understand correctly and can adjust the patch accordingly

your earlier suggestions were as follows:
"Round-closest is usually wrong in an .apply() callback. I didn't do
the detailed math, but I think you need to round up here."

The more recent suggestions are as follows:
"No, .apply should round down and so to ensure that....."

I speculate that the latter suggestion is to ensure idempotency
between .apply and .get_state, avoiding unnecessary hardware setting
modifications during repeated reading and applying processes. However,
the earlier suggestions seem to conflict with this.

If needed, I can provide more test results or make further adjustments.
Thank you again for your patient guidance.
>
> Best regards
> Uwe

