Return-Path: <devicetree+bounces-43507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4F185A892
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 17:18:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C25781C231B9
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 16:18:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF5843C46F;
	Mon, 19 Feb 2024 16:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="dcpdvjf1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B733B7A9
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 16:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708359485; cv=none; b=nmUJPQaco1ZXmX+qORRlrSjzJP0Kc/lQXmtbCbpLyKjdAdpgU7guoPQZSe9ULFeKjGAxtz6HAh7+iqgUDBhDHiMcD54Hj+Ozsy324AEc3VhmgyNKnzlbJq4jqE75LfvssBjBDt6KGQZOgRBNNtzJz1ja4moRPoX/U6JQHGn9kXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708359485; c=relaxed/simple;
	bh=qjzcx+ky+m9LqUCnQsunFaXlJI8F3Ray2e8gmZDQnsY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tuCWaHSmFVxPKZhJhI1Ii+m4h5wuCHgtW84jOux4MTDgKtqzjosNuNghXiXT1dFnuT9X6bg/T9BRbYGaISYJSWeAXR4JNxcoNRKWYvelJdJJK+bVuneSIn9AnOxUvjM9i+MNHmKSJsbAC181KmFtQ6yCTzEl9Eax8q8xPccbYSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=dcpdvjf1; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-218eea4f1a7so1168247fac.3
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 08:18:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1708359483; x=1708964283; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dkkKZJCCytTGAljspGkyIipfcm+Bvc2X5TtIBHDj2O0=;
        b=dcpdvjf1TK+Ev/Mj+ftRw+S4+JCtcDmwlMU8lw+zETf52zeuO0VJI6AVprwjcLhY9Y
         TvobkL7WVjHzERUl91TIu/CS5I2BpQ9XuCvDdquE+G5UrNj+EaISCqJJ7dynzXL3lSRn
         zpPaoOFzaSl76JhxqP5eCpQViiWYAaV3hkWD+tCrploWTbzkgPsx9IKEsILoJhkuQKLf
         aJThTzdVr6cPs+Yl1IGLn/1lzbUBb9HY9UEMMi/5+mvKnWnUmpYVFMC8ccRWNDrlofm5
         Roe+VhvVlpBva0iokGAhkiMUlPAv2xl5r+RBWIa7xzeNg1AaFVz9Yufnfs/X1kBKwWrw
         eZjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708359483; x=1708964283;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dkkKZJCCytTGAljspGkyIipfcm+Bvc2X5TtIBHDj2O0=;
        b=a7ycmDU4weaM254TEkLvEljXUZmlPzpaLHVBD+LloABLisyaUYtOLkbOIj8qbWkvX9
         vNU7T9WrplpJE+IdJ197tQywd1kcKBscv3l0ZDj1IXfmu4IXkGU82oPJt8dWbE2ftNw4
         TUfi8a0dfURwgSawmXfQ3Gt4Ed1hSivUUfaz9tfcfbccSQvwlQQWWDzj7nuchRHkyp65
         xCCk+bgP25ydsvc8E2wvRzqiRz33Rw7t5qrIIcVzJOY5/miUlGE/ySTw+KNOgspMI+e9
         E1F27HGj4awWXq5vSZ68Tk7oZLJ8ZTkQEsbTyOOHHTtbtMy39rWQqtP9wpH7labaWMsW
         Vt7A==
X-Forwarded-Encrypted: i=1; AJvYcCXCSS+/0IZkqgOx5EBX35OXHSGBQjJQQlFmMRNpHMPEOVpIO6qSdi/hNLtQgiLd8zGWLQqRcXxNN6rn2M6GNuMx4mymGfaEw66Kjg==
X-Gm-Message-State: AOJu0YzHVEftss+eInxS87Rz840CmB4iP1o2QgIq7Wd3LrdK22CoJT1i
	kLnO/Fsde3apUzFa+tMvensVkFyB3jwRmZ9qI0IN7RMLnGJ3YsaQS/rn0zlek6PAjqUUKCObZdQ
	XBhu7oF5sZGu5SrlJcYSNRjyl0sNovEn+ZbrKPw==
X-Google-Smtp-Source: AGHT+IG5pyvJ8VZ6IeRCjDQVoO+8UramCL2g0nrYiEFGzvjye6ON6eV4Qtkb+srU6g6Hef9hGKjITtSXzU2gX9D/suw=
X-Received: by 2002:a05:6871:79a:b0:219:3054:3ea5 with SMTP id
 o26-20020a056871079a00b0021930543ea5mr12969383oap.45.1708359483560; Mon, 19
 Feb 2024 08:18:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240214-mbly-gpio-v1-0-f88c0ccf372b@bootlin.com> <20240214-mbly-gpio-v1-17-f88c0ccf372b@bootlin.com>
In-Reply-To: <20240214-mbly-gpio-v1-17-f88c0ccf372b@bootlin.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 19 Feb 2024 17:17:52 +0100
Message-ID: <CAMRc=Me=SiS5oScmm8jMNsed_2smN4p6s+xPnkTzjHM_hPPULQ@mail.gmail.com>
Subject: Re: [PATCH 17/23] gpio: nomadik: handle variadic GPIO count
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 14, 2024 at 5:24=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:
>
> Read the "ngpios" device-tree property to determine the number of GPIOs
> for a bank. If not available, fallback to NMK_GPIO_PER_CHIP ie 32 ie
> the current behavior.
>
> The IP block always supports 32 GPIOs, but platforms can expose a lesser
> amount. The Mobileye EyeQ5 is in this case; one bank is 29 GPIOs and
> the other is 23.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>
> ---
>  drivers/gpio/gpio-nomadik.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpio/gpio-nomadik.c b/drivers/gpio/gpio-nomadik.c
> index 5b1e3b3efcff..02b53c58adf7 100644
> --- a/drivers/gpio/gpio-nomadik.c
> +++ b/drivers/gpio/gpio-nomadik.c
> @@ -490,7 +490,7 @@ struct nmk_gpio_chip *nmk_gpio_populate_chip(struct d=
evice_node *np,
>         struct resource *res;
>         struct clk *clk;
>         void __iomem *base;
> -       u32 id;
> +       u32 id, ngpio;
>
>         gpio_pdev =3D of_find_device_by_node(np);
>         if (!gpio_pdev) {
> @@ -518,10 +518,15 @@ struct nmk_gpio_chip *nmk_gpio_populate_chip(struct=
 device_node *np,
>                 return ERR_PTR(-ENOMEM);
>         }
>
> +       if (of_property_read_u32(np, "ngpios", &ngpio)) {

As commented elsewhere - please try to use device_property_read_u32().

Bart

> +               ngpio =3D NMK_GPIO_PER_CHIP;
> +               dev_dbg(&pdev->dev, "populate: using default ngpio (%d)\n=
", ngpio);
> +       }
> +
>         nmk_chip->bank =3D id;
>         chip =3D &nmk_chip->chip;
>         chip->base =3D -1;
> -       chip->ngpio =3D NMK_GPIO_PER_CHIP;
> +       chip->ngpio =3D ngpio;
>         chip->label =3D dev_name(&gpio_pdev->dev);
>         chip->parent =3D &gpio_pdev->dev;
>
>
> --
> 2.43.1
>

