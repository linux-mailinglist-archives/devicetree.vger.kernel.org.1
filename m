Return-Path: <devicetree+bounces-32988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E408319CF
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 14:00:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E7C981F27284
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 13:00:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD75824B5F;
	Thu, 18 Jan 2024 13:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="RODEh9Vg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B2024B55
	for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 13:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705582804; cv=none; b=tm9ihXUUeoK0d34WQY90tsZtD/CwKiNrkmVq4Kd+4kU1ZNFmVdCZhQxRhBe3yvyZQBXNLq2A7A2fscCgM4UizfShuZvOGQIJfvOF8ZB8xnJlcVqh+HzmFzHgYVOstixWeMVLatPUeGeH7yBuD+MGtfPNGnVuXu51HQ7BPv1prHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705582804; c=relaxed/simple;
	bh=7M4VaIUyYm8pE44IOXTCPDugJRBLIqoanr86Xn4yKIs=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:MIME-Version:
	 References:In-Reply-To:From:Date:Message-ID:Subject:To:Cc:
	 Content-Type:Content-Transfer-Encoding; b=bsg0tJ4zJ7NuFCEA1qNWPD8huktO3YcCjlZrLhV/UJn7t0CsSJhmLdpv27uahY4mdvk3NZ0uAR55zjl9QVJaIJ3CRJqWjEx1mCeIm6Q7mpnvjjQnbWwjfflfrvcreAe77osjF++B1ZxHC/32zXUdaxiWHdYm6O+1+ABV/5g+MRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=RODEh9Vg; arc=none smtp.client-ip=209.85.222.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-7cd42bc09adso3901677241.2
        for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 05:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1705582802; x=1706187602; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YbPI80yNiYQVcWLbaA0E+htnDslr+gyomLLCxgqK/9A=;
        b=RODEh9VgKUbKarmhkWY8riLHD0mvfw761K6T1JqT6HOQbrDqNM0jB7qRzdiR1nIUyw
         w31vlGZ5TifUZmURBbnYblehCKePsqlnVhuCe9o9sbzZLJf32LppFGgf9Xp9ng5Yd0Xz
         OenY6DJtD/RpPkKWomwvP3HgQ6CD3qsv/CvX+EkPLCeeu3Npn4oskjIJJAuUzgrA4SzD
         wU1LVQ9/m3esU9Ex9qkf0Wa5KP0uxEdkNs7s4ppL8UfybKp3C1CoAU4MYQ1SdgWmVKYK
         7uTjrHwx+O+QuyJ6kBatAmJoms4gGFq55a/LSQ75ytTsIDrjBZ3lvzL2Wi2wNfb93nHn
         yjFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705582802; x=1706187602;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YbPI80yNiYQVcWLbaA0E+htnDslr+gyomLLCxgqK/9A=;
        b=JiFqAezBICGlIn7rDRJwepKuijwByy3K/U8lwhe0+htvKHAUyiI0l/nYeh+P571M7i
         E6yMOJiMLpXzVRu5ePiqM/lbah6dXDbpyfPoc56niw8hZum12JPv+VHlMciAjwwYVV6y
         mz3RPoHBZ9YElt1eHS8q/r1Q6IFgq3U11tk1ZNCWUJpMCYkzDcvDEJZrt9YGoj1yDrsR
         R8St3ZxbuwN8PFdcdklG2ZHWY6FABj2/p0ydt1h8JWIwe8H9kcEEus5kurO4mOQa8lht
         1hnFlPGS99mIr4KdhU5rBX80xK9+kSf9GDO+/SlyanEL0RwbXKO5Q/s2Z2jFIUj7+r91
         0DBw==
X-Gm-Message-State: AOJu0YzH6/V2louq48xcRR7j+Z31qkmugAe4w/ErdgoTKVLxeSGXesKb
	CL1mjo8kFRqz32mbzS1Z5eyI3ZFNVwqylVQp+3yczd66WYqhAMbiAuTJ3th3avVWjeNkh9He/c5
	Zc8vFr20CorbkO3yeTbNNC+7/w76DcV/NMg3QSw==
X-Google-Smtp-Source: AGHT+IFV799Pl75EVGiEihv8NguEM801LhNe7yQvY5xjGtMqBPcnTKWr82ZJvwoc7zCV0G5B1YL66F/miSdR/lsCxqk=
X-Received: by 2002:a67:f797:0:b0:469:877d:fc1a with SMTP id
 j23-20020a67f797000000b00469877dfc1amr681665vso.8.1705582801234; Thu, 18 Jan
 2024 05:00:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240117083251.53868-1-hector.palacios@digi.com>
 <20240117083251.53868-2-hector.palacios@digi.com> <CAHp75Vci=1nAvxRcbkK2SxGWGbQVbzQMTycMt8tZ5snPRTYXOg@mail.gmail.com>
 <fd5550ad-76c0-419b-aa07-a0493a57286e@digi.com> <CAHp75Vf4wXLEjmfpz6KQSCB0Jd8LNv6+SU_ikbhR_8PsJHuq-g@mail.gmail.com>
 <CAMRc=MfAW5NDJHtZ1333-xrcCyQfft-pQF1-0Vv_ehY16agShw@mail.gmail.com> <9b370036-bf3a-49d3-99a0-5c11eaca4e6f@digi.com>
In-Reply-To: <9b370036-bf3a-49d3-99a0-5c11eaca4e6f@digi.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 18 Jan 2024 13:59:50 +0100
Message-ID: <CAMRc=MeJQihq3N1ZqGiKS_9JJ6c0BwXZfiY1XicBiW8mc18Oxw@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] gpio: vf610: add support to DT 'ngpios' property
To: Hector Palacios <hector.palacios@digi.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>, linus.walleij@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, andy@kernel.org, conor+dt@kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, linux-imx@nxp.com, stefan@agner.ch, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 18, 2024 at 1:45=E2=80=AFPM Hector Palacios
<hector.palacios@digi.com> wrote:
>
> On 1/18/24 13:03, Bartosz Golaszewski wrote:
> >
> > On Thu, Jan 18, 2024 at 10:04=E2=80=AFAM Andy Shevchenko
> > <andy.shevchenko@gmail.com> wrote:
> >>
> >> On Thu, Jan 18, 2024 at 10:25=E2=80=AFAM Hector Palacios
> >> <hector.palacios@digi.com> wrote:
> >>> On 1/17/24 21:51, Andy Shevchenko wrote:
> >>>>> Some SoCs, such as i.MX93, don't have all 32 pins available
> >>>>> per port. Allow optional generic 'ngpios' property to be
> >>>>> specified from the device tree and default to
> >>>>> VF610_GPIO_PER_PORT (32) if the property does not exist.
> >>
> >> ...
> >>
> >>>>> +       ret =3D device_property_read_u32(dev, "ngpios", &ngpios);
> >>>>> +       if (ret || ngpios > VF610_GPIO_PER_PORT)
> >>>>> +               gc->ngpio =3D VF610_GPIO_PER_PORT;
> >>>>> +       else
> >>>>> +               gc->ngpio =3D (u16)ngpios;
> >>>>
> >>>> This property is being read by the GPIOLIB core. Why do you need to =
repeat this?
> >>>
> >>> My apologies; I had not seen this.
> >>> I'll use gpiochip_get_ngpios() on the next iteration.
> >>
> >> But still why?
> >> https://elixir.bootlin.com/linux/latest/source/drivers/gpio/gpiolib.c#=
L867
> >>
> >> It's called for every driver.
> >>
> >> Maybe it's needed to be refactored to allow fallbacks? Then can the
> >> GPIO MMIO case also be updated?
> >>
> >
> > I guess it's because Hector wants to set an upper limit on the number o=
f GPIOs?
>
> I think Andy is suggesting to rework the gpio-vf610 driver to use
> bgpio_chip struct (it doesn't currently), and then I guess the 'ngpio'
> property gets read automatically if you call bgpio_init().

No, Andy said (and even provided a link to the code) that "ngpios" is
read ALWAYS when a new GPIO chip is registered with the GPIO core.
It's just that it doesn't impose any limits but that could be
addressed with imposing an upper limit in DT bindings maybe?

Bart

