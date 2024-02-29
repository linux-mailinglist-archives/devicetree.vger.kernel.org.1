Return-Path: <devicetree+bounces-47259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CC47086C9A8
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 14:03:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C4571F22CF5
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 13:03:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E70637E0F0;
	Thu, 29 Feb 2024 13:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N7C9WFvE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACBC7D097
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 13:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709211808; cv=none; b=jtNQSVggPLrRou2dp2gOCBvC370t01ZM7rlP1vohCri6cW7L6DL+U4p+3IrpfvBxC2+Uxjg0qpPDRMBVAYQ2WPm3YJmNXvCIWd4anjNGCFf+RlotXjr44wnyBIqfCdr1Qnkd+IcYx6+OgGQ5ARn2GcGPI7irc6v3dyy5F+X7zrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709211808; c=relaxed/simple;
	bh=3KFwAwzX3Nqj77zYQMOKvmHpYqpHOLy9C2qCRmqB3Is=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Bm1x1CmNszINolHSOfv/c8sfla+A4Hd2+RPx8WKwKwTsXdSAEyqwQ35n68U6JBaOlw6Q2j0SpqLV92Co6/jt9/VtoiViulFKU1oXyQT3jNqRZWbwnIS/PxwohMzkMv4Ry6xGgFFyVsGTNagE3G8HoE7CJWGk4PpLx82CD19aurw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N7C9WFvE; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-608ed07bdc5so9366707b3.3
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 05:03:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709211806; x=1709816606; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H7BfAiS0dMbweRAkXE/17W2K80r1DmpgC/baihcoMn4=;
        b=N7C9WFvESgQgQ58sJGCBk1jKwXLcI+MQelQpsM/721oaHZQWNhetCrFNF/55vJ8iAW
         ioAPKVieW6U/Mc05Yo2CB1vUKgxzM59tAn0zLXkku4ukQnFXdeDxR9Oz1KT8MoSvuJN5
         zTUUjTRcmmhgAEJnby5p3thdXnAP7LQVVGvN8m1uwU1I2AVORs0Upy5t4zndGwtydU+K
         ASxNpKAPG0N3LaIlpYUmVzxshTsb+CJToyV4KHovo+LHPYk/cWxXMQu7QiNgmpAt1+T9
         mITGTGj1QwWstzUTpr3VwrtqGI6FuKz882epUfDEqXrn+X/DqQanSIMJvK5Gt9lHR09q
         ztNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709211806; x=1709816606;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H7BfAiS0dMbweRAkXE/17W2K80r1DmpgC/baihcoMn4=;
        b=qCc7CJ118rz2q3sDLAxxD8zPswdmovnNwh3hixO+xdmEpPQkEj5hYBeMMDxMdCYK0Y
         3zvPEhWy+fI1Ou1eEYi0hsAk/UCNAcjmGSxQqMgFKFTIjeLb8/vvxM7nnmQfPCG4QNcn
         I97MY2ALrZQVjYDi9rvehmvy+UIg1S0M7aKzxYWtkaRNKe5SO/WfPn6k2Y+EQRP992am
         mCc9OqihGdkPBYQqCC4FPObY00YUMydjphAsp4DmyXpWFOVi6CNmln7S8M8xbh3R9KF+
         564M5ASyrjOmStBOJGxyxM9ALFtEUVzyXC3aK9Yn46Lc+FoVQIwzdawir2ajH8375W/S
         3OaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWaqxAxPwY+4p3eVSKvYOZClUr7Zhc12yQG0ATb7M5JLNW2Cv5ZBPp66grZL1R7bDv6n+Xr7AL7ehMQWMrdKVZY8GNED1Sgtr9ouQ==
X-Gm-Message-State: AOJu0YyatzcftuT9m4IEGoyJlLz+EnCnkn1T5hVVRS2FDnHunqnOFeOo
	UcJ89Qi14X9Nlno3gGq28PaV+qFI/H+IRgZkX4y8+m5mD3ZcgW2K6t+Y7U+hnP5ukvb1UcgfJbp
	H3nYOAHvSvc9IG6yNgLt2A4a0yePHUiW0S+mbWQ==
X-Google-Smtp-Source: AGHT+IHQz42wX2mAaaw9ho5RQMq4VSD4ZFqcEz4aryLKKrd9HwtJCvam+GQvCM1L9WJW5tUmbAJLU5/+2pI5vohfiqc=
X-Received: by 2002:a25:ce02:0:b0:dcf:9019:a2fe with SMTP id
 x2-20020a25ce02000000b00dcf9019a2femr1786280ybe.64.1709211806087; Thu, 29 Feb
 2024 05:03:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240220064246.467216-1-yuklin.soo@starfivetech.com> <20240220064246.467216-3-yuklin.soo@starfivetech.com>
In-Reply-To: <20240220064246.467216-3-yuklin.soo@starfivetech.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 14:03:14 +0100
Message-ID: <CACRpkdZd9WuLmvBEjEOF5R+R8Yrva_KiEPRCOXU98yLDkS=+ZQ@mail.gmail.com>
Subject: Re: [RFC PATCH v2 2/6] pinctrl: starfive: jh8100: add main and
 sys_east driver
To: Alex Soo <yuklin.soo@starfivetech.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Hal Feng <hal.feng@starfivetech.com>, 
	Ley Foon Tan <leyfoon.tan@starfivetech.com>, 
	Jianlong Huang <jianlong.huang@starfivetech.com>, Emil Renner Berthing <kernel@esmil.dk>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Drew Fustini <drew@beagleboard.org>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Alex,

this new version is much improved!

On Tue, Feb 20, 2024 at 7:43=E2=80=AFAM Alex Soo <yuklin.soo@starfivetech.c=
om> wrote:

> Add JH8100 pinctrl main and sys_east domain driver.
>
> Signed-off-by: Alex Soo <yuklin.soo@starfivetech.com>

This commit message should at least explain what we are adding here,
that it's a core driver that will be used by all the domains, what the
SoC is etc etc.

> +       select GPIOLIB_IRQCHIP
(...)
> +#include "../core.h"
> +#include "../pinmux.h"
> +#include "../pinconf.h"

Do you really need to poke around in the internals like this?

Please explain for each cross-include *why* you need to do this.

> +++ b/drivers/pinctrl/starfive/pinctrl-starfive-jh8100.c
(...)
> +#include <linux/of_gpio.h>

Never use this include. It is legacy and you should not be using
it. Use <linux/gpio/consumer.h> solely. See comments below.

> +#include <linux/pinctrl/consumer.h>

Why?

> +#include "../core.h"
> +#include "../pinctrl-utils.h"
> +#include "../pinmux.h"
> +#include "../pinconf.h"

Again all this. Explain for each one exactly why you need this.

> +static int jh8100_gpio_irq_setup(struct device *dev, struct jh8100_pinct=
rl *sfp)
> +{
> +       struct device_node *np =3D dev->of_node;
> +       struct gpio_irq_chip *girq =3D &sfp->gc.irq;
> +       struct gpio_desc *gpiod;
> +       struct irq_desc *desc;
> +       irq_hw_number_t hwirq;
> +       int i, ret;
> +       int dir;
> +
> +       if (!girq->domain) {
> +               sfp->irq_domain =3D irq_domain_add_linear(np, sfp->gc.ngp=
io,
> +                                                       &irq_domain_simpl=
e_ops,
> +                                                       sfp);

When would this happen? I don't quite get it.

It looks like a probe order issue or something.

> +       } else {
> +               sfp->irq_domain =3D girq->domain;
> +       }
> +
> +       if (!sfp->irq_domain) {
> +               dev_err(dev, "Couldn't allocate IRQ domain\n");
> +               return -ENXIO;
> +       }
> +
> +       for (i =3D 0; i < sfp->gc.ngpio; i++) {
> +               int virq =3D irq_create_mapping(sfp->irq_domain, i);
> +
> +               irq_set_chip_and_handler(virq, &jh8100_irq_chip,
> +                                        handle_edge_irq);
> +               irq_set_chip_data(virq, &sfp->gc);
> +       }

This duplicates core gpiolib irqchip handling, which you select using
select GPIOLIB_IRQCHIP.

Can you please look into just using the gpiolib irqchip handling?

> +       sfp->wakeup_gpio =3D of_get_named_gpio(np, "wakeup-gpios", 0);

No using <linux/of_gpio.h> please.

Use just <linux/gpio/consumer.h> and something like:

struct gpio_desc *wakeup;
wakeup =3D devm_gpiod_get_optional(dev, "wakeup", GPIOD_IN);

> +       if (gpio_is_valid(sfp->wakeup_gpio)) {
> +               hwirq =3D pin_to_hwirq(sfp);
> +               sfp->wakeup_irq =3D irq_find_mapping(sfp->irq_domain, hwi=
rq);
> +               desc =3D irq_to_desc(sfp->wakeup_irq);

if (wakeup) {
     irq =3D gpiod_to_irq(wakeup);
     .. convert to irq descriptor etc...

Actually: is this wakeup handling something we would like to add
to the gpiolib irqchip so everyone can reuse it?
In gpiochip_add_irqchip()?
At least give it a thought.

Yours,
Linus Walleij

