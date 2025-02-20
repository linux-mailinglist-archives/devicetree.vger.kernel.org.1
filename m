Return-Path: <devicetree+bounces-148787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D4EF3A3D667
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 11:22:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6DE016D650
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 10:22:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 398C61F0E51;
	Thu, 20 Feb 2025 10:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="sI8O7S0Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAC71EF080
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 10:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740046943; cv=none; b=ClIEm6BgRqrKFkoJldiXRLJbHZTfEzdaUxy3zm2GZ0W+iHGdtMpDiL2MIeCKtGmWs03HO/K9HAq8m1KnQDipJTRH+RfHjEKIRPTL6rX48o3FX6dfmXu6MtP4g4NZr2dQdymxlRph2RE6K75oUmQ3fwWsQdKPjII9JeVUSNhGwOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740046943; c=relaxed/simple;
	bh=jOVTKQclGET5JYRc6XUbL9hn0R2HM4yai3zEupfHd2E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=U7ODoh7EwC6QZGvkXWP/5ZksTOvUt8JcxJ2XWmSII76y3UL/gY8MNgQnIJr4OpIeS5McMpsLrpsOyfv6STCJ3HlbDHEXfvRF0MxeevagG72bZs/exlbubuBO7d6fzyXfuOPSsx5zyuGrgRAj9Sj4046diWTWxJnA+QIOH0auln0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=sI8O7S0Y; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-545fed4642aso854332e87.0
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 02:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1740046938; x=1740651738; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XkSjnPvhIdGSMhTbx4xuOa7rgF3IDrn9ZbqjQjQTkQo=;
        b=sI8O7S0Y+7kDFw+A6OnhYh0Prqh+udMMJuxY5+kRemV3TRjmCEp2JcwazAbBuRDcDh
         HNuwTDDT7VipdNFdqY8AFtRTmgRWsxC6FhZQRDJgihK6Ko0EU6gS8ABkH/wUrfvkNCAX
         qofjcaXFY3XWSuxDevmpLRta/bumGsaJcQ3aB0F+UI839y5JMrMmZv6T5XLW5TxTaQY+
         /yCGfWcwzBjRIqDtazxwdTG6f66fRopI2JtuQHZEwDL6bx2CEtVsD7KxgQjb1CmIr8hg
         Zbwir77cNb9d07BBezLKcOMsKqLmZbqemiyHVtd2sZnFE7MxJLEEdmfL4nx1a/k5cxVD
         qrPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740046938; x=1740651738;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XkSjnPvhIdGSMhTbx4xuOa7rgF3IDrn9ZbqjQjQTkQo=;
        b=axsXe8Ph9nAwVoWLyXWGEoM4wbm57+VZli9qtYIWtxdly6fwuYlZBVUehiwsed+E/0
         AomiaM8Hw0gRJ7mUP0H7R3AFlJx0IxQaTWzaz9Si+HzViveCShgm7jodxO4urosFMtFi
         Wae3wUGaiNCTaSvTIDbSz/iyVVsIXPHo03qxO+O+DiHzrYtiWnFz1T97szWa4rUQmSyX
         tc+g5LVw2gGfXZ0h3bZ9WJNcxwVkxCYfPgHf7ehVSzjkgUznnaz7iWTIEmwSfndck5/a
         6Y5TF+8Qtslcxuv2fFrl4cmuP44Y/FEa0P8SqvxAyG7zn7Uv0tGyKNo14m28/8Jch/3K
         uvAg==
X-Forwarded-Encrypted: i=1; AJvYcCULsfbhaNXVTuigRt8KBsDEEITsqSE24/sTrvZb6jPZry160d3Wikqm+53+1U3rRk/tSDQAUAdbtFLw@vger.kernel.org
X-Gm-Message-State: AOJu0YwCNRCegJBuEWNPgcjzt4b0ZdG9nawo6k0xVCn7AwOgRAS7ORNS
	MuyGdeRECPaTvrLGJ+rBAcfW3TsKBMvlW7zWOHGXxxQq5VAIWVW6MJTRIiX4Q+oBTtbYR3+Jg5g
	ls9e/qWjEpoc+fnl2Ucii3TbNs44ik0motMTaLA==
X-Gm-Gg: ASbGnctPW73AoLbQpJVpyOvlZL/X2JkpEmOj1KSFaE0Wuk4QWwvwl0V6aULmpd26coa
	G5CVoLXZZShf34tkqR3SZ2noiq3/ai8QYdUD9oNs9GbbMeNJl+7VYzh15YdV1r6knK9JjvjlSyP
	nKV6V48fOlGVG/njDua+BzRm3SXW0=
X-Google-Smtp-Source: AGHT+IE7ycVVt1d8Epdhqngc45O4P0xrOwOQkPZv5wp+QGx6BPbp3JM32UOKdgqnWZwOei+ObE4ZSLIyhVDxExTl7Dg=
X-Received: by 2002:ac2:4c46:0:b0:545:bf4:4bc7 with SMTP id
 2adb3069b0e04-547243c348amr871274e87.19.1740046938079; Thu, 20 Feb 2025
 02:22:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250217-03-k1-gpio-v5-0-2863ec3e7b67@gentoo.org> <20250217-03-k1-gpio-v5-1-2863ec3e7b67@gentoo.org>
In-Reply-To: <20250217-03-k1-gpio-v5-1-2863ec3e7b67@gentoo.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 20 Feb 2025 11:22:07 +0100
X-Gm-Features: AWEUYZkU7hdFlPspPbvUdBzoHfPqDtoAsaxfbkwGu_CSQGks7Gip_UiARp6sYIc
Message-ID: <CAMRc=MdGBTXRSAgY2vjOrqVVRzOyYh7N8yZsjK+W4cYFCQAwhQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/5] gpio: of: support to add custom add pin range function
To: Yixun Lan <dlan@gentoo.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Conor Dooley <conor@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Yangyu Chen <cyy@cyyself.name>, 
	Jisheng Zhang <jszhang@kernel.org>, Jesse Taube <mr.bossman075@gmail.com>, 
	Inochi Amaoto <inochiama@outlook.com>, Icenowy Zheng <uwu@icenowy.me>, 
	Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 17, 2025 at 1:58=E2=80=AFPM Yixun Lan <dlan@gentoo.org> wrote:
>
> Export custom function to add gpio pin range from pinctrl
> subsystem. This would make it possible to add pins to multi
> gpio chips.
>
> Signed-off-by: Yixun Lan <dlan@gentoo.org>
> ---
>  drivers/gpio/gpiolib-of.c   | 5 ++++-
>  include/linux/gpio/driver.h | 7 +++++++
>  2 files changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpio/gpiolib-of.c b/drivers/gpio/gpiolib-of.c
> index 2e537ee979f3e2b6e8d5f86f3e121a66f2a8e083..64c8a153b823d65faebed9c4c=
d87952359b42765 100644
> --- a/drivers/gpio/gpiolib-of.c
> +++ b/drivers/gpio/gpiolib-of.c
> @@ -1170,7 +1170,10 @@ int of_gpiochip_add(struct gpio_chip *chip)
>         if (chip->of_gpio_n_cells > MAX_PHANDLE_ARGS)
>                 return -EINVAL;
>
> -       ret =3D of_gpiochip_add_pin_range(chip);
> +       if (!chip->of_add_pin_range)
> +               chip->of_add_pin_range =3D of_gpiochip_add_pin_range;
> +
> +       ret =3D chip->of_add_pin_range(chip);
>         if (ret)
>                 return ret;
>
> diff --git a/include/linux/gpio/driver.h b/include/linux/gpio/driver.h
> index 2dd7cb9cc270a68ddedbcdd5d44e0d0f88dfa785..a7b966c78a2f62075fb7804f6=
e96028564dda161 100644
> --- a/include/linux/gpio/driver.h
> +++ b/include/linux/gpio/driver.h
> @@ -528,6 +528,13 @@ struct gpio_chip {
>          */
>         int (*of_xlate)(struct gpio_chip *gc,
>                         const struct of_phandle_args *gpiospec, u32 *flag=
s);
> +
> +       /**
> +        * @of_add_pin_range:
> +        *
> +        * Callback to add pin ranges from pinctrl
> +        */

Please, make the API contract more specific: describe the return value
and check it in the call place if it can return errors.

Also: is this even OF-specific if it doesn't take any OF argument? Why
not just add_pin_range()?

Bart


> +       int (*of_add_pin_range)(struct gpio_chip *chip);
>  #endif /* CONFIG_OF_GPIO */
>  };
>
>
> --
> 2.48.1
>

