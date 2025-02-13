Return-Path: <devicetree+bounces-146478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4AEA35225
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 00:25:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 640F116AF0A
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 23:25:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D159722D7AC;
	Thu, 13 Feb 2025 23:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V9/vsZhb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A12275400
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 23:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739489121; cv=none; b=gUVpyJJ2hXZUJkKehp68w7FpstRcyIWWibeuY0dC9YUMlZUcUVTghpQ4SvzAP6tlVXWYEcxHlC/Y4ZlSWUMIoQOpX63T7jdxVmzndMy9WeZjvdqfrt5w2aB9BmpDV1e7Y0hSKMLigbKE4SqsLHmTMhPvQOhS1cX0YwaFpQUzrvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739489121; c=relaxed/simple;
	bh=TODc8kLM/Xouk8pD6JlJR6Tsa6qT4/CImIfhu4Qav8A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=U9S+XgPhrFr4XXhaRqcss1NQeRBJrtituZrAR1BXXroZcXSV7yXzLavuZV7VPeVelF7FkiYdRftVvhhNvVnVntPbeMdvspFQinHkuNpBtarPrCDC+C5k8OYX3QDX4KkrsnAKzTLQrrC/qC+UM+l7mpEZ9emk5wHQN7xepuopPKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V9/vsZhb; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-308e92c3779so26755851fa.0
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 15:25:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739489118; x=1740093918; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vyZKU2VItF3c2AsSc7Vt49la6al69dnIjTLywWBtcgo=;
        b=V9/vsZhbz8h45mi2qIljX85+Eah2cWs/PgHrIaBI+4Pa85IqPyj5lve1ie6qFdla2H
         a6dYgZcQVZxID1bE86MWHYp1WLaSXxB1/7znttpDJeOLuz+suJKBHyCCq/V5YEB3EuGc
         J3QXEceByMTZpcby1zTrf7NXUb8UTXoj/3jHXWD3t6ahCCL5X+UGzwlUuYOx/yGoINqm
         mzN7v3DzXgGtMdeBBGtAyH76O+jgFaBrJ8wJ3+TIVbZQPEYi4mr3aOtG94JIHpLgnCLf
         nnJJF76wOe58OK81cDsw2doFXyzL9M1B4paXOaVjEGrX9mRwJKdTnl0UOKYycX4sFh9q
         i7Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739489118; x=1740093918;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vyZKU2VItF3c2AsSc7Vt49la6al69dnIjTLywWBtcgo=;
        b=EhhjBX90OI0zIOBGiJKQvYKQKM6U2i/v12v77zg2Mz3fYQwDJ30Siido7wuqjAsxRI
         HDt1/u4YYLJn6lVUf0FHlBL5mVly/i51JBt/ng706PY/k6K/CWk2CvZqbUogmMv62rFf
         vov/gk+GEBKW9kFVZ790pLx68BqaWAv/3QGqtzUNeGZdaeNHMOlVlaum6yNRIUYYOWOz
         m/fmnbl/VEUfs/K/MLRTeFjnl8qmXpe5XIZ+adgMTLGU541yMvwKNcAtN7cq5vBUJvHK
         JJG+ZzS4CKppk/t+Jki60HZ3tsuf/L488pPv3KlUa0FafftSS3rWBWyvRd2f0J4dc3Ab
         FtBQ==
X-Forwarded-Encrypted: i=1; AJvYcCXV3P9W6/UWPA01r8z1BEd/A1ryRlk6nFO2RWCn3KfGpGDFmYcotTRndJDD/JtJU9ZxhbmVtf3Y/Lkq@vger.kernel.org
X-Gm-Message-State: AOJu0YxrOl+Cj8mYB4lUH36N4SkYngJNuuW42BMkbM9uluFbw+T0MYMp
	xsa9Tqqjf+YBD7HfwdtlkR2BmeC8Tj0sCj5UNbNWLPdftT+R43P8c4PNfKFUNcl1RwUT3PD4MzW
	+uw//X1HbReIJzdXWmuJp/Auu6quV8yUmm4FGUAw2cn6If411
X-Gm-Gg: ASbGncsldKBk60AJ/Xa7hIKHrX8v8KfN0YsBqqPi5e8XYoSfvkrRW+yho64AC1p+GzU
	eESfUBV1/O3/LHl6//BiFrJTWBzqNQVEDw8bYqNOOZ8PJ1R0HBgTU4ZyCccKq67BKpqyUKn1I
X-Google-Smtp-Source: AGHT+IGmjAzrNY8Z0UTae5YliwRsM6MnTTixoI4bM9qkST97BNNxdmQbCoyn1pxrE+FZoDlCxTTPFfOz0rgkvbaPBag=
X-Received: by 2002:a05:6512:31c9:b0:545:6a2:4c4a with SMTP id
 2adb3069b0e04-5451dfc139amr1470866e87.1.1739489117809; Thu, 13 Feb 2025
 15:25:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250213-for_upstream-v2-0-ec4eff3b3cd5@analog.com> <20250213-for_upstream-v2-2-ec4eff3b3cd5@analog.com>
In-Reply-To: <20250213-for_upstream-v2-2-ec4eff3b3cd5@analog.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Feb 2025 00:25:06 +0100
X-Gm-Features: AWEUYZmhtXgqSIi7PU_BPNP_JIj58JJuOvAuh5G-9TQ2nJTUsjALSXHus6KTIHI
Message-ID: <CACRpkdZR8X17Bn-i2anqjxf0Gk60V175F7Xfwytkhy7_K+LsSA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] gpio: gpio-adg1414: New driver
To: Kim Seer Paller <kimseer.paller@analog.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Kim,

thanks for your patch!

On Thu, Feb 13, 2025 at 2:17=E2=80=AFPM Kim Seer Paller
<kimseer.paller@analog.com> wrote:

> The ADG1414 is a 9.5 =CE=A9 RON =C2=B115 V/+12 V/=C2=B15 V iCMOS Serially=
-Controlled
> Octal SPST Switches
>
> Signed-off-by: Kim Seer Paller <kimseer.paller@analog.com>

OK so I looked at the data sheet and it looks like this:

A  o-------/ --------o B

It'a a switch.

Why is this switch a "gpio", other than that it is convenient
to use the GPIO abstraction to control it?

GPIO is usually devices that can drive a line high or low.
This is very far from that. This could switch some analog
line or whatever, right?

Now, the kernel does not have switch subsystem I think,
so this is something like a special case, so we might be
compelled to make an exception, if the users will all be in
say userspace and make use of this switch for factory lines
or similar.

Otherwise there is also drivers/mux, but maybe a 1:1
mux is an odd type of switch...

> +static int adg1414_spi_write(void *context, const void *data, size_t cou=
nt)
> +{
> +       struct adg1414_state *st =3D context;
> +
> +       struct spi_transfer xfer =3D {
> +               .tx_buf =3D &st->tx,
> +               .len =3D count,
> +       };
> +
> +       return spi_sync_transfer(st->spi, &xfer, 1);
> +}
> +
> +static int adg1414_spi_read(void *context, const void *reg, size_t reg_s=
ize,
> +                           void *val, size_t val_size)
> +{
> +       return 0;
> +}
> +
> +static int adg1414_get(struct gpio_chip *chip, unsigned int offset)
> +{
> +       struct adg1414_state *st =3D gpiochip_get_data(chip);
> +
> +       guard(mutex)(&st->lock);
> +
> +       return st->buf & BIT(offset);
> +}
> +
> +static void adg1414_set(struct gpio_chip *chip, unsigned int offset, int=
 value)
> +{
> +       struct adg1414_state *st =3D gpiochip_get_data(chip);
> +
> +       guard(mutex)(&st->lock);
> +
> +       if (value)
> +               st->buf |=3D BIT(offset);
> +       else
> +               st->buf &=3D ~BIT(offset);
> +
> +       st->tx =3D cpu_to_be32(st->buf << (32 - st->chip.ngpio));
> +
> +       adg1414_spi_write(st, 0, st->chip.ngpio / 8);
> +}
> +
> +static const struct regmap_bus adg1414_regmap_bus =3D {
> +       .write =3D adg1414_spi_write,
> +       .read =3D adg1414_spi_read,
> +       .reg_format_endian_default =3D REGMAP_ENDIAN_BIG,
> +       .val_format_endian_default =3D REGMAP_ENDIAN_BIG,
> +};
> +
> +static const struct regmap_config adg1414_regmap_config =3D {
> +       .reg_bits =3D 8,
> +       .val_bits =3D 8,
> +};

This is not how regmap works. Your get/set callbacks for GPIO
should call regmap_get() and regmap_update_bits() to get/set
the individual bits.

So the adg1414_spi_write() needs to be done from inside the
regmap abstraction.

Yours,
Linus Walleij

