Return-Path: <devicetree+bounces-167619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 75043A8B245
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 09:36:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE734174E20
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 07:36:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D678D22B8C2;
	Wed, 16 Apr 2025 07:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lu3GcZPN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3A7F227E95
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 07:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744788963; cv=none; b=rQU6fbsblvMcjHUr3v1HVYTU81219TRem7FRGfxLLTX1kLifgd6FXeg1LuDnTguH3F6YryQzX+xDn67HJHhIg10bybPuT7Q5SOUwAOhYMb6XXpWq9BrHOBdEejYqdh0HX2+qxzmk2NSePXVZ+DuEo1U5lOaGsuAPsGVihcE/fY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744788963; c=relaxed/simple;
	bh=utHL6CUHYCqScb8aWOZTdLTjaHpP5+HYoKwpnSAv4bU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kc+hOgi/U9bAOi3la/UGDExWm13Jd4ivaXBFrk/AvgrCgmUgrZ7esvZumXslS99TG5iUHXIMKWctTYPtkRg3GA9+NvEmKL6CnL5C33cqD0goMvk21HhuLSWK+2EKKcx6xtM99+2UNDEOWymY8PD2H+mFdKagUno/lRl1qHnqxEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lu3GcZPN; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5499c5d9691so6883409e87.2
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 00:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744788960; x=1745393760; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tahJOR44ovG/8oTG2DD87WyQ8FqTumd0rmUHp9pfS34=;
        b=lu3GcZPN+XygfeaT2uHJayCF6M+/wfAPQ/bNsYGXAxeR+WRfQ/tkWJHaSS+SZoHgbf
         RsduXzY2ze1fG4ztcLqfU9FZ0h27ogNF0IL/K9015x58ey4l+myjAmT3yz8Mb3p7tgT8
         ca4KthVRjNVU5/0V9jTOvWEe9PSfRA4jxO3/xnnmVCeQVgJuNztTHZhRBcdgonT2sydU
         lx9bel5VhZoMQswpK6A0jfFjCCxb9KRlm0EkwwDAx723eGBa0cuauyLXzP4IBR73IL++
         hAQ4eNfoQkEjAnIGAQ6DBfJNrJuLcCW6nEPe1rRgpc4P3mdob3HPQH47Vadg93KLTrS8
         T0Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744788960; x=1745393760;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tahJOR44ovG/8oTG2DD87WyQ8FqTumd0rmUHp9pfS34=;
        b=Gxy52JdQUMd9GUT6w8yFSWdbjBxhTinGVo39Mc++tNrGZvrVArLfmKZh2mpKs7nxNf
         pmoytgSit8onwowqHjbuUkd8O3NOmRUIMN8dgfa9QhvL9taqoxiIxdzdhaqR9PIUd3Dj
         8OagjVpUsl4G5PzA5SxCNKZgVCS5ub+LeTyK405hu+CcwjGXUYJQgRkELmHrctFjlLAa
         PBM8EnW5fcx6hax7xRS80BlLfx6zKjz9uwDH4KVc5X07+81tSwXG7YMr0Zyyo2WKf7a8
         FQXnu8M2114ibn1Q/320kbLzHu9iM4ePv8rWhYOswoPzGjvZbjDf2dlfV+baKt6DJPI2
         inxg==
X-Forwarded-Encrypted: i=1; AJvYcCVv5taMftQKP/Ru2CYBa9HwMw3NzSQyyuahRv5EbJfYFM10LaQuDr95TH/S7hb1RLhLxW9LgYh8+XTS@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/JhDRE960Wx+PzAI1ltE41aui0HnC7dz4/BJiAzx7YBtZjV8q
	bcS34nVx8csYy5B6olZ0UbMF7C03Eud2r+DdRkoZLfCYCmj9dib3j4nYnKSQn+BO9gUXVF+zmo7
	scunBWcieFz6m1RFRUOdXVpvFOO6dltDQMmwQQQ==
X-Gm-Gg: ASbGncsWHOsHx0lSRiaLWluaK9zPZ2Crz/9j8I7vYba4zDH2yI77IgvfHuA5+F/MLk8
	t9UfNuF9wLW+0dLeVwFSu38EZFVvo2AHDeZdVUs0rGejfagsm51S/Ve2lY+47Y6orJ7unO4fCgA
	nPYLBrVwW35Tg2pavG7Wl/Nw==
X-Google-Smtp-Source: AGHT+IH24Ze7Uj+sez6vaxU18ssHrwQYzi2qOUAKOEfNuhruNeH0Yi5FTQWh526Drs8Kqf/boypXWbGB6xmSwB0JtV4=
X-Received: by 2002:a05:651c:b0f:b0:30b:d44d:e76d with SMTP id
 38308e7fff4ca-3107f717f28mr2363111fa.26.1744788959942; Wed, 16 Apr 2025
 00:35:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1744325346.git.Jonathan.Santos@analog.com> <2a789531fda5031c135fc207a547f2c3f00a13ea.1744325346.git.Jonathan.Santos@analog.com>
In-Reply-To: <2a789531fda5031c135fc207a547f2c3f00a13ea.1744325346.git.Jonathan.Santos@analog.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Apr 2025 09:35:49 +0200
X-Gm-Features: ATxdqUERw-HLaVcEGEBRc9LkrCdUDVa5ewjlkgrTDVV5Xmky5Ym5mhn0wiOk-Q4
Message-ID: <CACRpkdY0VAkW3v5mBzxz5u5RfLv4zpj5sy-zpx8Ma9+0=8qQfQ@mail.gmail.com>
Subject: Re: [PATCH v5 09/14] iio: adc: ad7768-1: Add GPIO controller support
To: Jonathan Santos <Jonathan.Santos@analog.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	Sergiu Cuciurean <sergiu.cuciurean@analog.com>, lars@metafoo.de, Michael.Hennerich@analog.com, 
	marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, marcelo.schmitt1@gmail.com, 
	brgl@bgdev.pl, lgirdwood@gmail.com, broonie@kernel.org, jonath4nns@gmail.com, 
	dlechner@baylibre.com, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jonathan,

thanks for your patch!

On Fri, Apr 11, 2025 at 5:58=E2=80=AFPM Jonathan Santos
<Jonathan.Santos@analog.com> wrote:

> +static void ad7768_gpio_set(struct gpio_chip *chip, unsigned int offset,=
 int value)
> +{
(...)
> +       st->gpiochip =3D (struct gpio_chip) {
> +               .label =3D "ad7768_1_gpios",
> +               .base =3D -1,
> +               .ngpio =3D 4,
> +               .parent =3D &st->spi->dev,
> +               .can_sleep =3D true,
> +               .direction_input =3D ad7768_gpio_direction_input,
> +               .direction_output =3D ad7768_gpio_direction_output,
> +               .get =3D ad7768_gpio_get,
> +               .set =3D ad7768_gpio_set,

Due to refactorings going on in the .set calls please switch this to use
the new .set_rv() callback that return an integer (errorcode) on failure.

Yours,
Linus Walleij

