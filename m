Return-Path: <devicetree+bounces-170409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CAD1A9AA80
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 12:37:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E13333AA161
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:36:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F0AA221FB2;
	Thu, 24 Apr 2025 10:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KIDrYHXo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29AF1F0E47
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745490677; cv=none; b=isg7uQ9ZNpmRHAAAdbzHfHsV3513jmLKQknnQvl9KoRJwdaX5NodHyj6vsb7oGX/SJ8YPKAJ8W/ftf9WykXBRz9svbiQ/zI8k40Fl91xZgHZZYU7Lmc6iW3My8alaM69tz5nYS5kbIXQ7kB4DUZ7Rvr90t5HCzn+wqLRpcVAQl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745490677; c=relaxed/simple;
	bh=veuDQajYZQmtwy5soBS8bgeTiDpHDVxRfRcmVV3dkkA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dWG7wJ47XoExhd+55F9heqCO+yK1Ghqt1l3CpYz9QCV1Vp3YiQ6o1JoJuqGDQm6BCRZr5Z1yhLONfW46VXrOh7+iROW7ahdR+GQxQFjfPg128FaPu8Mb6XNFb7nWvsm1Sq5/HdbipbmamSrENWJ6eJI1Xrj0BFlKtmSFBhFd178=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KIDrYHXo; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-7080dd5fe92so7781547b3.3
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 03:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745490674; x=1746095474; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=veuDQajYZQmtwy5soBS8bgeTiDpHDVxRfRcmVV3dkkA=;
        b=KIDrYHXoflincouO6Ie5zfhCB/C/R6tb8+kaypogXRHd4vGrIP+SK/5GSmA38CpYdB
         iSe6VycjkUw/IAfM06GmCwxLKyIVJyDHVdCmKMb6MV5sJHPZ5GkSikQ9QTFIqsGA/bX7
         7PqACZcSu59lWn+WSUlEImpUSMVjOrH3LOME7YbV5+x4i4J5l3cAYVZ1lSgl60xixg0w
         YYKV/LD04e6y6ZRHwWj5Jgx7AQkevxDhqXyuCxkc0kUlQpqf985zKd46dI4DwlYWbhaX
         3ZaFQKGyyft23LyNrq92GiDB8gQSsgG6A9bht+VAygM4H/a4VxPTsUvj3GMgmcUbrUjJ
         U4cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745490674; x=1746095474;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=veuDQajYZQmtwy5soBS8bgeTiDpHDVxRfRcmVV3dkkA=;
        b=gRMH9AQe17xav1sHcKu5yrzO7FICLnzURnQ0+7NT9pSn73aqnAyDWJW9QVlnWf0+5b
         N4fV+EPJEw2f1xqhXW8fF6OyLORTqihtPZ+JFvBVcoV5xUMmhDEAsCjY5nBOAYQbOKVl
         Eezog9BRnU0QiIR1KJUcXLzlyHi3fJDl9PzWPhoZwQuUuG9SXBSFcplvdDYyeiQjz0yN
         C3XRfSpWYOuFeENmg2NJfuw43WXfM3Ehx+ui2CjLmGbu8ftBFjlG74GlTdZtwO0EhtyT
         c5s/H6TMEgPfBydES7S4IITbttfdmAi6oTYnygezB+zG7u8qhUyz1UUm60n/zmz0ctXo
         jADw==
X-Forwarded-Encrypted: i=1; AJvYcCX9lpcNw0p7R0mOyXzTAW6NSkjX5kLqiK7eH8V5SafmmyCj6QRuFWJrQsGX2arTZVgG/Tag6ygrBA0Y@vger.kernel.org
X-Gm-Message-State: AOJu0YyZIF6iafIUY+vlbEVaeIpem0NotTFSAhNpd012Sk95mABgJGPw
	tdEFq86B+uwuUuc0PsXGb8yvYV8fhvfIozOfNpYNmLlUsJkbIhY4c7SwC0WOkWr/M5/3YNPZ4C9
	OzCI75rxl9nOeRSPZsEDmVfWspSjbbYxP4Uh9MA==
X-Gm-Gg: ASbGncukwwVgw73MY2B6P174R/+wulZHpup8LjrNNe1sbBThvS4QH4TR0e40zIFFXwL
	6/YegBofSjySy2PUSqAu9DkCBRAbAYDL7IkzxNDxSDo2NF2FI9eJL2JUTpFiUhZ8facYsDMK76S
	wiog76YVEXjUaTu53I6vIrlA==
X-Google-Smtp-Source: AGHT+IFaCgdi/D8Mz2g+4kwknyPmgE+BAWyWeosYJdPhAXZY/ccwJe6YGp50DFdsLuHQOqspxP6UrWYnj+YkNWqFGqY=
X-Received: by 2002:a05:690c:dd1:b0:6fb:46dc:d9c4 with SMTP id
 00721157ae682-7083ec4d087mr32192027b3.12.1745490673788; Thu, 24 Apr 2025
 03:31:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250424062017.652969-1-uwu@icenowy.me> <20250424062017.652969-2-uwu@icenowy.me>
 <CACRpkdaX0hTJSsZN6YNXASY3noZw=JsOSXzFBbxKegJ6A+2usA@mail.gmail.com> <7e62e720ccc51fb5c7d023adae3eab35aecf0bba.camel@icenowy.me>
In-Reply-To: <7e62e720ccc51fb5c7d023adae3eab35aecf0bba.camel@icenowy.me>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 24 Apr 2025 12:30:58 +0200
X-Gm-Features: ATxdqUHtrYzEaLg25kuj53TyY1Q41AznmucaPtZY25yhlzNHITgdvG43lqbYwqY
Message-ID: <CACRpkdY0DXxDixZVhnRuKvSVbKQ6pSfLMiT2hf9818sbNG-4hg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: pinctrl: starfive,jh7110: add
 PAD_INTERNAL_* virtual pins
To: Icenowy Zheng <uwu@icenowy.me>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Jianlong Huang <jianlong.huang@starfivetech.com>, 
	Hal Feng <hal.feng@starfivetech.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 24, 2025 at 11:38=E2=80=AFAM Icenowy Zheng <uwu@icenowy.me> wro=
te:
> =E5=9C=A8 2025-04-24=E6=98=9F=E6=9C=9F=E5=9B=9B=E7=9A=84 10:51 +0200=EF=
=BC=8CLinus Walleij=E5=86=99=E9=81=93=EF=BC=9A
> > On Thu, Apr 24, 2025 at 8:20=E2=80=AFAM Icenowy Zheng <uwu@icenowy.me> =
wrote:
> >
> > > The JH7110 SoC could support internal GPI signals to be routed to
> > > not
> > > external GPIO but internal low/high levels.
> > >
> > > Add two macros, PAD_INTERNAL_LOW and PAD_INTERNAL_HIGH, as two
> > > virtual
> > > "pads" to represent internal GPI sources with fixed low/high
> > > levels.
> > >
> > > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> >
> > As per my other reply in the previous post, I think this should be
> > handled internal in the kernel instead using a tighter integration
> > between
> > the GPIO and pin control parts of the driver and utilizing the
> > gpio-specific struct pinmux_ops callbacks.
>
> Well I cannot understand this -- these signals are not GPIOs, totally
> not related to the GPIO subsystem (because they're only pinmux, not
> related to GPIOs). This is described in my previous mail.

OK sorry if I'm a bit dumb at times :(

I guess I was falling into the common confusion of "something named
general purpose" such as your GPI and GPO registers, is also
related to GPIO which it is not, at least not always.

> The pin mux of JH7110 strictly route its inputs to its outputs. For
> signals from other SoC blocks (to external pins), the registers define
> how OUT/OEn of IO buffers *are driven by* the signals; however for
> signals to other SoC blocks (from external pins), the registers define
> how IN of IO buffers *drive* the signals. (This follows the generic
> signal-driving rule that one signal can drive multiple signals but
> cannot be multi-driven).
>
> In addition the situation I am trying to handle here is an addition to
> the latter part of the previous paragraph -- in addition to 64 inputs
> corresponding to 64 GPIOs, two extra inputs, one always 0 and another
> always 1 are available to the pin controller for driving other SoC
> blocks' input (as output of pin controller).

OK ... maybe I get it now.

> > This solution looks like software configuration disguised as hardware
> > configuration.
>
> Well this solution handles these internal wires in the same way as
> signals from external GPIOs, excepting specifying special GPIO numbers.
> If you are against the principle, maybe the current already-included
> GPIOMUX system of the StarFive pinctrl is to be blamed instead of my
> small extension to it.
>
> I must admit that the current GPIOMUX system isn't a faithful
> representation of the hardware because it's a pad-centric setup instead
> of a register-field-centric one, which isn't very natural for input
> signals. However configurating the mux in such a way is against people
> reading, and we're not able to break the system because it's already
> there.
>
> Well in the situation that one GPIO used as input drives multiple
> internal signals the pinmux looks a little confusing too, e.g. the I2S
> clock situation I mentioned in my reply in the previous revision of the
> patchset.

I guess what rubs me the wrong way is why the external users
(devices, device drivers or even pin hogs) cannot trigger the chain of
events leading to this configuration, instead of different "magic"
configurations that are just set up in the pin controller itself.

But if you are positively convinced that there is no other way,
I guess I have to live with it.

Yours,
Linus Walleij

