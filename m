Return-Path: <devicetree+bounces-179553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A1FAC0C19
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 15:01:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9BEDAA26D5E
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 13:01:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 443311D618A;
	Thu, 22 May 2025 13:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="H5c8q866"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B211E487
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 13:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747918880; cv=none; b=MU6HHavvucKzFfnfXPZDVZpCCNK3oHwJNwTOgIeSNNbVicaDsb5QvK1wtmo7d6U3Bd3b7VmhJbIqiXG8zHxeO/xukbsj6ssf13lTgFd+NBnk5Seho5t8ZSNKZ64tIEMNJvllpqyU6A4BgGqogM21HAKM05VtIaInl0BwJVtUjkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747918880; c=relaxed/simple;
	bh=dyHhktMA+tP6K9DkwriiNHXh1gKPz9cPXffhriQHbYk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Oz/lLOt6Nyo0cWupCQXpV4w2Rtmua5J/xlLjTve+P4zJuQHqfqI1Kb+xB9w6jJo0QqRWMNRnKdLzb27ZgK5+nSWr4Z22RQHClmpG5hvYt2jESry+USRJZjPEmEvPn43431mrtlA7NEsqkT2c82ZnQrCg0yXkeCtI1rhWV3Xgl0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=H5c8q866; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-54acc0cd458so10512181e87.0
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 06:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1747918876; x=1748523676; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zzu+PRVXcOL8yrXNh1C3D66rYRdfVDajFRg4W7HU2/U=;
        b=H5c8q866PU2olvrfRdCEzxfs5UqFPCJMlqXXzSEXsxL5wjcfX68lHYvdD1lpx7VvYR
         jqk8ChlF/3FyxPHO7ilFWoR6fYkD4pecoWGltnsy96k+m1HkAbAz8sQogTwFuLQkptra
         Ufv19xKEPummZ69LGAdIMxyde9VE/+vwiSRx62rhTCDn0oQS9e0Xy43cOyFwibBtv/PN
         5w7x75QhSG9DFdGyBUaolHSu50bpprwtiGLlS5tbQYJc98P1oBcSBrYyPTGQQpGeDkMT
         vSYuBDc9kVlk+4p135FHfCSw95UTuRSJ+54XFqN/pc8cIYMHeqkq0kNq67raQOtWTCcw
         tqww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747918876; x=1748523676;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zzu+PRVXcOL8yrXNh1C3D66rYRdfVDajFRg4W7HU2/U=;
        b=lAzZPrFnsPmCwk0RXbq20rTNYGGoQF94vPOJ1tSyImlGLHDhgw+9JwdBBMfWDVcns3
         ZqQXTqmXW/ANJ0/J/DtwltpXujSmTEr+IbO3L5JmZ7n5ZBDv1A722I+zxtTBbsEBIzS0
         r2FfcXFMaaxGTRAv7J33QZXV/2lH1lo0w/Rhls5Qk7hw9xWFJ/3V0TmlTtmLwOIQRh11
         ljucPATXcsrjavDvrev47ChLFkEGrUjWWnr65ut54PrGLVSxpryD3jcSSxu+J4+hloPr
         FhYq7sr/PNnbG746RAk7v1ZuKYdyCBoen+JgTtiCT9y+WZ2pY39KcnOx+H0dXd+SpLTq
         Kgyg==
X-Forwarded-Encrypted: i=1; AJvYcCWqEsiy2NgFMwanDh16N+Zoku0azdhCLmjUaTWG65L/aflFIKfviQoYHNCtoRLGdF4ZWf/Nmae3qcHp@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7IBPihT9HZo5LQaTHSxu1IPSzjHNdRsHXJfcgcoBmHbM9ojnN
	OsqjF+STTAcS4dRNsuvj/JISM8jlrobe9DXFAgGIZ7MaCxG+XsVueceH3D9Vq8/N/xxXLnXi3ei
	TEIzTQVifoMYyhh/b5Fm6kLyr25q88Q2YRziJ1k4SAw==
X-Gm-Gg: ASbGncsui+yZUUE2IBhojPc6d6i1t4zIRHDU+gn+ZBulhoVow4g+Dgg/5CybepbbnmN
	5/ADUAf9eV5yWpOt1sBdDGiT6z2QSXUBrOO5t8F/UUa7Tje1y6n0VaZhTejxrhQB1z3kw23BFRT
	5lESLb6XVFvKZmuojFFaUSGCLIh3MP4jWcvqpOLhA/TdrBJ1qOKQ9TDgJk+t4NE9qh
X-Google-Smtp-Source: AGHT+IEKXZsuXa61rx7iYXVdN5gAUYZ6t4jPh8WeQF1z9sKal0LbQMPKsCLBhIwfmsJA3Pg+puN9L64R+OYtBY9d0U8=
X-Received: by 2002:a2e:a594:0:b0:30c:4610:9e9e with SMTP id
 38308e7fff4ca-328077c36ecmr91178471fa.35.1747918874917; Thu, 22 May 2025
 06:01:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250522-mdb-max7360-support-v9-0-74fc03517e41@bootlin.com> <20250522-mdb-max7360-support-v9-6-74fc03517e41@bootlin.com>
In-Reply-To: <20250522-mdb-max7360-support-v9-6-74fc03517e41@bootlin.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 22 May 2025 15:01:03 +0200
X-Gm-Features: AX0GCFsKBsNYnfZ6NFYjJv1MLR5Cl4LpJ53FIqsJ0O4hK_3tLeUr_p3wGhtMou4
Message-ID: <CAMRc=MeT+b5dBOWyf6-BpTjk70nwVhLOpCY-JHNizBo5H1-AnQ@mail.gmail.com>
Subject: Re: [PATCH v9 06/11] gpio: regmap: Allow to allocate regmap-irq device
To: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kamel Bouhara <kamel.bouhara@bootlin.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Michael Walle <mwalle@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-pwm@vger.kernel.org, andriy.shevchenko@intel.com, 
	=?UTF-8?Q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 22, 2025 at 2:06=E2=80=AFPM Mathieu Dubois-Briand
<mathieu.dubois-briand@bootlin.com> wrote:
>
> GPIO controller often have support for IRQ: allow to easily allocate
> both gpio-regmap and regmap-irq in one operation.
>
> Signed-off-by: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
> ---
>  drivers/gpio/gpio-regmap.c  | 21 +++++++++++++++++++--
>  include/linux/gpio/regmap.h | 11 +++++++++++
>  2 files changed, 30 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpio/gpio-regmap.c b/drivers/gpio/gpio-regmap.c
> index 87c4225784cf..9cbbbaf82609 100644
> --- a/drivers/gpio/gpio-regmap.c
> +++ b/drivers/gpio/gpio-regmap.c
> @@ -215,6 +215,7 @@ EXPORT_SYMBOL_GPL(gpio_regmap_get_drvdata);
>   */
>  struct gpio_regmap *gpio_regmap_register(const struct gpio_regmap_config=
 *config)
>  {
> +       struct irq_domain *irq_domain;
>         struct gpio_regmap *gpio;
>         struct gpio_chip *chip;
>         int ret;
> @@ -295,8 +296,24 @@ struct gpio_regmap *gpio_regmap_register(const struc=
t gpio_regmap_config *config
>         if (ret < 0)
>                 goto err_free_gpio;
>
> -       if (config->irq_domain) {
> -               ret =3D gpiochip_irqchip_add_domain(chip, config->irq_dom=
ain);
> +#ifdef CONFIG_REGMAP_IRQ
> +       if (config->regmap_irq_chip) {
> +               struct regmap_irq_chip_data *irq_chip_data;
> +
> +               ret =3D devm_regmap_add_irq_chip_fwnode(config->parent, d=
ev_fwnode(config->parent),
> +                                                     config->regmap, con=
fig->regmap_irq_line,
> +                                                     config->regmap_irq_=
flags, 0,
> +                                                     config->regmap_irq_=
chip, &irq_chip_data);

I don't think using devres here is a good idea. There's no guarantee
that gpio_regmap_register() will be called on device attach so you
must not make the release of the resource depend on an associated
detach which may never happen. Please use the non-managed variant
here.

Bart

> +               if (ret)
> +                       goto err_free_gpio;
> +
> +               irq_domain =3D regmap_irq_get_domain(irq_chip_data);
> +       } else
> +#endif
> +       irq_domain =3D config->irq_domain;
> +
> +       if (irq_domain) {
> +               ret =3D gpiochip_irqchip_add_domain(chip, irq_domain);
>                 if (ret)
>                         goto err_remove_gpiochip;
>         }
> diff --git a/include/linux/gpio/regmap.h b/include/linux/gpio/regmap.h
> index c722c67668c6..19b52ac03a5d 100644
> --- a/include/linux/gpio/regmap.h
> +++ b/include/linux/gpio/regmap.h
> @@ -40,6 +40,11 @@ struct regmap;
>   * @drvdata:           (Optional) Pointer to driver specific data which =
is
>   *                     not used by gpio-remap but is provided "as is" to=
 the
>   *                     driver callback(s).
> + * @regmap_irq_chip:   (Optional) Pointer on an regmap_irq_chip structur=
e. If
> + *                     set, a regmap-irq device will be created and the =
IRQ
> + *                     domain will be set accordingly.
> + * @regmap_irq_line    (Optional) The IRQ the device uses to signal inte=
rrupts.
> + * @regmap_irq_flags   (Optional) The IRQF_ flags to use for the interru=
pt.
>   *
>   * The ->reg_mask_xlate translates a given base address and GPIO offset =
to
>   * register and mask pair. The base address is one of the given register
> @@ -78,6 +83,12 @@ struct gpio_regmap_config {
>         int ngpio_per_reg;
>         struct irq_domain *irq_domain;
>
> +#ifdef CONFIG_REGMAP_IRQ
> +       struct regmap_irq_chip *regmap_irq_chip;
> +       int regmap_irq_line;
> +       unsigned long regmap_irq_flags;
> +#endif
> +
>         int (*reg_mask_xlate)(struct gpio_regmap *gpio, unsigned int base=
,
>                               unsigned int offset, unsigned int *reg,
>                               unsigned int *mask);
>
> --
> 2.39.5
>

