Return-Path: <devicetree+bounces-230264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E52C00FAB
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:07:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EFE7C19C464D
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 12:07:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDBC130F542;
	Thu, 23 Oct 2025 12:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="zudtGHkq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E69265621
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 12:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761221233; cv=none; b=C5PCyx7TX1qWpVl3+Ozj04EN6B1HDypbkayOqEbKi6qpDME/62KsOUjfDFWtT06kE6+6XGKvTYavDDsKS+TJrhPvwFJ7NWb00IGqN4DYW2qfRNAXzjfk41PG4foUpET9f1Dgtp2dmnb5Ap2+p70CAiW0lMM8Gsz7zAT2Lyte0UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761221233; c=relaxed/simple;
	bh=qTa5v9/v5NbPlSDL/Vo/i3ec1YqZV/ko+X0VaKXMkmE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JCpTn6BZEpD5XSowsq2Gvv6fagZeSWTPKjIa9l5liaYGFAvF1kp9N3nQxzvJs0TiddxUlAquvQF88uepg5Of63oBc9sftJ0a1jnJyyZHUTqygK6GUttRkPz9G/6OUdR6EwxXIYk1ur6AjxvPwAZiR/6kNEOAbqhf1XJqOCLOJ3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=zudtGHkq; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-591ea9ccfc2so970841e87.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 05:07:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1761221230; x=1761826030; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3wSA08yxMybYC5Sv+/SAZaVGIbJoxksVKnqMBUGns0I=;
        b=zudtGHkqtGDOCft8CWbiG8DWh9t75wzehbch30bcjMPMNYoIyxqyo2Tb1sX2HR41jx
         bmT3KEjA9wi3hxgY6gfuAAoH83pq0n43edyUk3G6uJzi6bbW16LLde0jFvHPn1HYTFJK
         jTfK2MPXPJzdN6e5ZZF9dS6vcx9jIo4MXRYYC9bWkM7Y8t4znUMQ5fVsaXiktN5vaeLI
         DnbVDbMyuDuMpBoRHaQRgvxianI+OaSUpThARg1iszA6Uha6tsO2IupXh0kjnztzdFJB
         0Uvp+k3zD4QKXHom8EVqJJizQwsjAHVZXpn6Pie0EFNjKk8PGdSyGMUBmSLNu5UlBPsQ
         b0WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761221230; x=1761826030;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3wSA08yxMybYC5Sv+/SAZaVGIbJoxksVKnqMBUGns0I=;
        b=keUKSW9z/9ZPDl7DXlrSfOvbTtOQqLldipOBaaBt9J4q6grSEauo0U4ch0aW0/iptW
         QqTNt8OfDQR8YEDLQ5sgKUvalUMnjnPFHFvs9kGEZCRItHDzuuslldSWy32hQU5ciWEj
         Jif2Po+zM1uvT2Jgj8NOC8k74RwJwD7x4E3SJUL5L/SZ7i7YivgiPvfC8ipbrNSZn56u
         FJzSfJ8CzyyWaT8RIbh/I3CuIoiax7QmUlIyiAzuMaXnh5z52TWV/UXyT+D+hfwwIG2A
         NlzjRDpsLJM0h1Hwmig6MvzFFA9Dn1i/pTB4MyTmsDZXkuEbGIASq6/HZs/4sP8VvZ1C
         7Iig==
X-Forwarded-Encrypted: i=1; AJvYcCU1JgUGAoAE4P+LedcXbnFjFQABPNawFZobeHpnuV3PvP9mcNIB5LuFXgWarEMR15soO02g/j84rSdq@vger.kernel.org
X-Gm-Message-State: AOJu0YzL6FPl1Hd9mNOtE8oLwMLi0ZZ10n+EtyKlmr/FH1yw6RBD17yR
	E0bgPocmANVeG5Q84h2M22i6qJ1K91aFwiwdDVm+V2N7RQ2W3gvdmufayPToP/hXoqtx9n417MA
	XtDaR8cYZeHJxngckwzmzQOkgRib1cLUSwctT7c+wBA==
X-Gm-Gg: ASbGncsUCR5/1I9vayCqJeKWYLGs/5hdYeZSiDm4r4e/N23mqLM6GUUpNajOnJyuPYX
	lpUeQUITyt7D431hwems2TlOH65iUt4oH9QwXmJsJEkv4IjqHXxjRM46Uru6b6A7XS9omUAi5bd
	rM9X4sB3jZtmMG684hmKyPbrDRPDz1HIuJbWnY2EnAIt2FLIdZPryj14S8FwQb8D0F5VAVF8p0E
	mzfxuWbOOxUeFyJue4khZfl4lHXkB+N5jM9ZPcqOVeSX8JDV0pyazxuzYddWp+oQIcJzEst9pxN
	0Y7vFBOzaNcBnKe6agK77divXwnl4FgvnNak
X-Google-Smtp-Source: AGHT+IEyVOm5IBklELoMZatdcICtobl7Ib94Uu3o+Ml+3GyBIHju56j9a5TbEHU5whXAfI1PuPwpWcnLKVQT/DRXSys=
X-Received: by 2002:a05:6512:3d2a:b0:591:d84c:205b with SMTP id
 2adb3069b0e04-592dc04d33emr2335180e87.16.1761221230008; Thu, 23 Oct 2025
 05:07:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251021142407.307753-1-sander@svanheule.net> <20251021142407.307753-3-sander@svanheule.net>
In-Reply-To: <20251021142407.307753-3-sander@svanheule.net>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 23 Oct 2025 14:06:58 +0200
X-Gm-Features: AS18NWAEFusL3Hp-4sM_SAS38ZnVOKKGvo81QZWmsgYdmYixwwiWHBeVWLH-c6c
Message-ID: <CAMRc=Mevt+h-zjU2hmbTOjuTB=xQZN7O=FtdM0v=680VNiAKTg@mail.gmail.com>
Subject: Re: [PATCH v6 2/8] gpio: regmap: Bypass cache for aliased inputs
To: Sander Vanheule <sander@svanheule.net>
Cc: Michael Walle <mwalle@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	linux-gpio@vger.kernel.org, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-leds@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 21, 2025 at 4:24=E2=80=AFPM Sander Vanheule <sander@svanheule.n=
et> wrote:
>
> GPIO chips often have data input and output registers aliased to the
> same offset. The output register is non-valitile and could in theory be
> cached. The input register however is volatile by nature and hence
> should not be cached, resulting in different requirements for reads and
> writes.
>
> The generic gpio chip implementation stores a shadow value of the pin
> output data, which is updated and written to hardware on output data
> changes in bgpio_set(), bgpio_set_set(). Pin input values are always
> obtained by reading the aliased data register from hardware.
>
> For gpio-regmap the situation is more complex as the output data could
> be in multiple registers, but we can use the regmap cache to shadow the
> output values when marking the data registers as non-volatile. By using
> regmap_read_bypassed() we can still treat the input values as volatile,
> irrespective of the regmap config. This ensures proper functioning of
> writing the output register with regmap_write_bits(), which will then
> use and update the cache only on data writes, gaining some performance
> from the cached output values.
>
> Signed-off-by: Sander Vanheule <sander@svanheule.net>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Reviewed-by: Michael Walle <mwalle@kernel.org>
> --
> Changes since RFC:
>   - Add review tags
>   - Slightly reworded the commit message

Nit: changelog should not be part of the commit message, I dropped it.

Bart

> ---
>  drivers/gpio/gpio-regmap.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpio/gpio-regmap.c b/drivers/gpio/gpio-regmap.c
> index ba3c19206ccf..afecacf7607f 100644
> --- a/drivers/gpio/gpio-regmap.c
> +++ b/drivers/gpio/gpio-regmap.c
> @@ -81,7 +81,11 @@ static int gpio_regmap_get(struct gpio_chip *chip, uns=
igned int offset)
>         if (ret)
>                 return ret;
>
> -       ret =3D regmap_read(gpio->regmap, reg, &val);
> +       /* ensure we don't spoil any register cache with pin input values=
 */
> +       if (gpio->reg_dat_base =3D=3D gpio->reg_set_base)
> +               ret =3D regmap_read_bypassed(gpio->regmap, reg, &val);
> +       else
> +               ret =3D regmap_read(gpio->regmap, reg, &val);
>         if (ret)
>                 return ret;
>
> --
> 2.51.0
>

