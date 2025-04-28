Return-Path: <devicetree+bounces-171546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7FCA9EF8B
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 13:43:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 95C543A63D1
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 11:43:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16C50265CD2;
	Mon, 28 Apr 2025 11:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="O9XK9Xvm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ADE2264A84
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 11:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745840618; cv=none; b=hIC8a65c1XNCGd0LLNpihwT548h8ND8d/AiE4fot8qEVab7rvkI842mT8cnR1ChgGtRxPF4n5ywf6WqNLFjmEF+at7xQ/sAJCn9HxNrRdhz2yFirvBJuk76EWgwjgxJS3SBKQ3yGOHGlSeB0DkqSPy1uehnJMRU5mpjHg/bW/vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745840618; c=relaxed/simple;
	bh=N7WIWDwBiFPBHG6RtziOKsfaaUWsA49kMC7wZCjMKe0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fzqts23XpfGMdJDYP3VykugudorRD4zQoasBTVsiZ87C8hQhWBrDtyU2C9B5zLxptpa7hgZGmnz/WSXN7PIUAPSKv5EAU8PGwBGhgirmHyqZhFFYFCqTRIU4UyOVtCmD7JJaVTyqeqsDqwsMQZbcqnIPd0YOQChidZwSrZ19L4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=O9XK9Xvm; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-54af20849bbso5329589e87.0
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 04:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1745840613; x=1746445413; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kX/tC8coeF6pt/Nd0vQ2pLOJWZbhUUNTjjg2AdFwINU=;
        b=O9XK9XvmuRofTbQRIwS9OOX/K+Iz2cRiedvAQGwffCwGvuQQJ6aI2EKnMj8IfJvqrf
         g0uztvsm2trOG4QqvbZrM3yWKuQNdcX9fW39rX5uN4DXrCfJb1D4PEAlAIC3650cXccM
         fZcYDqMTpCwDv2LlV5NzIPwbCfE5vrb/UFPfodFsF8B83OP/hskd1Ly72eAHHPhT22x/
         ilgqAyetGgM4Xl9y5L1BzcPCHx1VXHGX32ZK5+MJMW7TG3ohj5amztf3/hxTuCbqgACk
         pqrERuQg+gG0zUoIOwNXizSyjE2IAJLL/KaeciGd7fC/PmHYuTacSr9Uam/CXhVtY3c6
         7kqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745840613; x=1746445413;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kX/tC8coeF6pt/Nd0vQ2pLOJWZbhUUNTjjg2AdFwINU=;
        b=eFyj4SG6bSC7K8fMytWVm2QoPH2j9wmh/hvwP+N2RbzHa/aUoXTbEG1VhVReQoU1i+
         TKsGyVwd62pcXThIB6yx/HsOGnftjdrqkurDQ2cnWXw2hYKKpOPKM3FfRc+67w37Tm7l
         EEtjYPXXksUSBj2W+WEQ5FI96YR6vjN/TwmucoXCHGuZP6Oyq6UG52BMPfa3ksTE+4Yb
         FNktkydI7zJuTjxOFUUmUONVC96dPhWk5KjQJp4rn0YFl4jCWO81R+j7+YbM2oOndvqz
         eb9D7iRGI1U5ButOBfZBFw9CIaPz73n9COVgyFL/HB8qBgtT/FFFT8v9RkNK2aUrW9u8
         RPVg==
X-Forwarded-Encrypted: i=1; AJvYcCXnEHQhK3av6I2pgY3udiv34JChsBbXgpd5ZriHD6WNDkbnjx7ugXWov1ln80zEGqIzfxPHkw1VoF5k@vger.kernel.org
X-Gm-Message-State: AOJu0YxCKlwcf5fuiOsmhadSdK3zvirW/voEi84QafK2WKWSXH2vhGZ9
	dHN+ImT08ppNBqR849vAfa1YETNOq91AyaTb40Ih0rsuo5bajJNhtit6YHYK849wWkwxXUptCJW
	d1X0JcCD97rMtWRPJu3XTaFAQWg9ixusfculuaw==
X-Gm-Gg: ASbGnctt11NjULNlcfE7HGEjEhqAS/BWTda4W4UpPaarXtz/DvrXrfmP8OLBisIUw7K
	8XcfjOwZTd6pOMLb5anuZiRYKGObCkqr03D9kGa/9MGNmGfZCDDjbLf3N8vYGx+LqbcW288uKcv
	tt2UXXORpjtcRAGV7FMwH+cddfB2F3H3S01A17tVF9TMBn1vU4X4UIgA==
X-Google-Smtp-Source: AGHT+IEX8jJV7HnhVW7+fghG4q9+ghyZY/XzjHuCql+UIJeBm8TXPQiK12eFFODxXmy05fbna2r7j5iNKaow+pXqX44=
X-Received: by 2002:a05:651c:158b:b0:30b:ca48:1089 with SMTP id
 38308e7fff4ca-319dba4f9d9mr29996981fa.2.1745840613339; Mon, 28 Apr 2025
 04:43:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250428-max77759-mfd-v7-0-edfe40c16fe8@linaro.org> <20250428-max77759-mfd-v7-5-edfe40c16fe8@linaro.org>
In-Reply-To: <20250428-max77759-mfd-v7-5-edfe40c16fe8@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 28 Apr 2025 13:43:22 +0200
X-Gm-Features: ATxdqUFCxRnO3E7xcEweLG1JpD07L7-5rWx-FRd1gKrBNZ7uwi1zJAM7VnHWVBE
Message-ID: <CAMRc=MdDH7UPkhjBKr6hO-j2J158_u4Mp=++hjh=V0OtoJHX1g@mail.gmail.com>
Subject: Re: [PATCH v7 5/6] gpio: max77759: add Maxim MAX77759 gpio driver
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Srinivas Kandagatla <srini@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-hardening@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 28, 2025 at 1:36=E2=80=AFPM Andr=C3=A9 Draszik <andre.draszik@l=
inaro.org> wrote:
>
> The Maxim MAX77759 is a companion PMIC for USB Type-C applications and
> includes Battery Charger, Fuel Gauge, temperature sensors, USB Type-C
> Port Controller (TCPC), NVMEM, and a GPIO expander.
>
> This driver supports the GPIO functions using the platform device
> registered by the core MFD driver.
>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

[snip]

> +
> +       chip->gc.names =3D max77759_gpio_line_names;
> +       chip->gc.ngpio =3D MAX77759_N_GPIOS;
> +       chip->gc.get_direction =3D max77759_gpio_get_direction;
> +       chip->gc.direction_input =3D max77759_gpio_direction_input;
> +       chip->gc.direction_output =3D max77759_gpio_direction_output;
> +       chip->gc.get =3D max77759_gpio_get_value;
> +       chip->gc.set =3D max77759_gpio_set_value;

Please use the set_rv variant now, the old set is deprecated. Until
that's changed, my Ack is revoked.

Bartosz

