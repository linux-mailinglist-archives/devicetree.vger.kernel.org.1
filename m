Return-Path: <devicetree+bounces-107237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDC498D3E0
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 14:59:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 598B4284180
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 12:59:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21BA91D0786;
	Wed,  2 Oct 2024 12:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UzFlDqkF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0691D049D
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 12:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727873913; cv=none; b=KySj87uX1sbHv2RUzeBKvefdu9J5UUV6iBx6TibetlsHlDWQefCwFGLBwU8RPX4Q6kYgwLXMHjmn+gUXxFp8x97FGddrsuaaunZX32/Q/Gd1G7XG8YFwyZSB8v3N8IRBeJ2dpGvZUH2iPoNfjxpVQxH0fuX3dB4/fVZ+vxKxsyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727873913; c=relaxed/simple;
	bh=pDOeQLUv5z6DD8N9F3KZvA1Zx3tJwMWz/s42V6VQSVo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qDPu50PqjQZMF7qKgUP8mAI7kWUK73VkAXmP6CGN904BZKDciD/mTSLC+gFu4QjfIzWRdo4pimKt8VBSOKWjxowTaFsvxlx9qe5zY2zD7pajXA2sIepyTPqlWm9J06bQVIgaBpsU4K8tCmsJJWtWapm6goZlMTt7SmU/GHWX80U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UzFlDqkF; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2fac3f1287bso39051311fa.1
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 05:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727873909; x=1728478709; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+jtQ4FXFUCWol1Gkt0yViKyzB2pgtdbXcRu7N5DjSOU=;
        b=UzFlDqkFwY4gODcYBTbP4v/7zdHUFpvHI9+G+ka+pWxYt80swqx3v8H9K/I1oLs2w4
         /bPuFWAqpcBtfyJ4nYRApRdPnTsXzMfSQQ1qF5S03HWY2YCoPn7u+si3k8PYBH+Mp7vD
         yia3R/DBvrP30yqXY+7hxUviK27DnPuSyttcv/uVjT3ynKaoJpbTxLtuAkvgMnPg0JRQ
         Ch9lURD9eylM9td1/+kIK0IyB93HtlFVP7AwUk8SQ4tNCrjkbfudZBzPbRL2nIAlaViH
         x5tQD3wGDcW+bBG8CL+kiJ8FzgeD7kVOZikdeWrvoGieXze4jeojv7lzhdiGdPJnaz5z
         nbiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727873909; x=1728478709;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+jtQ4FXFUCWol1Gkt0yViKyzB2pgtdbXcRu7N5DjSOU=;
        b=nTL5VE/Z4sD0oJqty1MF1ouG9aVNjAJJ/lQWCwzgZAfFSlkfhtQRg2d+uABnUEPGxY
         8ZrGR3LnG8/tJIdnAwBIxmgfjQQ1SgX3FAiVd3Fzs5cyyVrzAJa02xH6iJnNziu4TcgD
         Ct+k2FzsqHiAgFM+WYBrLvYvX7bvvuCN1ruy2VaORkeR1s1Tu4TRxqDokDInICZMBCkO
         0ngg+LsF7BT7J8rZkCGsxtYWO+fYNcPSymv3b0W6H/7aghhVlux/rSodqTHOVkMTlyBc
         WBqUFYBWUHdkjOIPcJ1H0mfk4v4n6eCNBdltYE286kuxhNbsSBNu4uVMsYZYwsSAqQTK
         He7g==
X-Forwarded-Encrypted: i=1; AJvYcCXQezHyO0fKDGUsnNqJcdzk/Ny6IE3A8OnLpQ1dFtxeuwIDJT3LTZFt1c/apqdHn2ZvPUYb/vnXi5pj@vger.kernel.org
X-Gm-Message-State: AOJu0YzBWJcGXWGtjJtEdCMDg0m9vuMoBieN3pg0vbu4BfKL0o3tRvMO
	WM/Wwn1MZUQObeHTBIz/USeSdBzlo5MYV7vJNegy/w6ywM1v4MOoRzdfx3TinuD/A4r0gASGuyO
	kmCbPps5nghsJIzA425AO8SmD538ACFqCtm0HVA==
X-Google-Smtp-Source: AGHT+IFymKX6xkCaDUcGspB/q99qwrePGX9n7ttzq0hdMpKbNdFfvpYD++sfznNvBnR4emleP82gL6p2kJe45ABDpf4=
X-Received: by 2002:a2e:be2b:0:b0:2f7:4f46:8344 with SMTP id
 38308e7fff4ca-2fae1029a1bmr17813371fa.21.1727873909295; Wed, 02 Oct 2024
 05:58:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240911-en7581-pinctrl-v4-0-60ac93d760bb@kernel.org>
 <20240911-en7581-pinctrl-v4-4-60ac93d760bb@kernel.org> <CACRpkdZbyQ5bk8oR+Q4UmQCdM5h1mF1ztBc26YzqNsze_B=ehA@mail.gmail.com>
 <ZvKQe73ZKIFy4fny@lore-desk>
In-Reply-To: <ZvKQe73ZKIFy4fny@lore-desk>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 2 Oct 2024 14:58:17 +0200
Message-ID: <CACRpkdbXWMU+wq6DvviCQPQ0EzKUm9oOnyFh34Bm=Y8K-HmT0Q@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] pinctrl: airoha: Add support for EN7581 SoC
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Sean Wang <sean.wang@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	linux-mediatek@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	upstream@airoha.com, benjamin.larsson@genexis.eu, ansuelsmth@gmail.com, 
	linux-pwm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lorenzo,

so these comments:

On Tue, Sep 24, 2024 at 12:12=E2=80=AFPM Lorenzo Bianconi <lorenzo@kernel.o=
rg> wrote:

> > > +#include <linux/pinctrl/consumer.h>
> >
> > Why do you need the consumer header?
>
> we need it for pinctrl_gpio_direction_output() and
> pinctrl_gpio_direction_input() for direction_input and direction_output
> callbacks.

I looked it over again and it looks good, I was just confused.

> > > +               arg =3D airoha_pinctrl_gpio_get_direction(pinctrl, gp=
io);
> >
> > I don't see why a pin would have to exist in a GPIO range in order to
> > be set as output or input?
> >
> > Can't you just set up the pin as requested and not care whether
> > it has a corresponding GPIO range?
> >
> > Is it over-reuse of the GPIO code? I'd say just set up the pin instead.
>
> Do you mean to get rid of PIN_CONFIG_OUTPUT_ENABLE, PIN_CONFIG_INPUT_ENAB=
LE
> (and even PIN_CONFIG_OUTPUT in airoha_pinconf_set()) here?
> E.g. we need PIN_CONFIG_OUTPUT_ENABLE to enable pwm for pwm-leds:

I was mainly thinking that the
airoha_pinctrl_gpio_get_direction() is limited to pins that are
used for GPIO.

The callback should be usable on any pins, no matter if they
can be muxed to GPIO or not?

> &mfd {
>         ...
>         pio: pinctrl {
>                 ...
>                 pwm_gpio18_idx10_pins: pwm-gpio18-idx10-pins {
>                         function =3D "pwm";
>                         pins =3D "gpio18";
>                         output-enable;
>                 };
>         };
> };

Like this one.

Which I think works.

It's the name of the function which confuses me:
airoha_pinctrl_gpio_get_direction() and anything else that
is used directly from the airoha_pinconf_set() function
doesn't really care if the pin is used as GPIO or not does
it?

Can you rename the functions just e.g. airoha_pinctrl_get_direction()
because it has nothing to do with GPIO. It's jus pin control.

Also some defines are confusing this way:

+       /* set output enable */
+       mask =3D BIT(gpio % AIROHA_GPIO_BANK_SIZE);
+       index =3D gpio / AIROHA_GPIO_BANK_SIZE;
+       airoha_pinctrl_rmw(pinctrl, pinctrl->gpiochip.out[index],
+                          mask, !input ? mask : 0);

Variables named "gpio" and AIROHA_GPIO_BANK_SIZE despite
it is used for pins that are not (in the Linux sense) GPIO all the time.
This is a big confusion for the mind.

Can you rename the variable from "gpio" to "pin" or so
and the AIROHA_GPIO_BANK_SIZE to AIROHA_PIN_BANK_SIZE
etc so it is clear what is going on?

I understand that the datasheet might be talking about
"GPIO this and GPIO that" but what hardware engineers mean
with GPIO is something else than what Linux mean: for them
it means "it can be muxed so it is kinda-general-purpose-kinda"
but in Linux this has a strict meaning: it can be used by the
gpiolib to control individual lines.

I think this would make it easier for me (and possibly others)
ton understand the driver.

Yours,
Linus Walleij

