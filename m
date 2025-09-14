Return-Path: <devicetree+bounces-216908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1945FB56842
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 14:05:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C35A8173F7B
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 12:05:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CD9D253B67;
	Sun, 14 Sep 2025 12:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IvARUJB+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504F91F8728
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 12:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757851510; cv=none; b=K/q1/fEMz9AjeleGvJU5DJVJ2UMZD6G01ihpDYt1aZi6jbcAuz9P+3oh1MJockAutwX3mZziIushtmNj7R65QJYrC2EgYmAhGevgCMtT5v8zh0484M00qAe3HVZ1VUNK0A7S3iJLWjDZyiFjn+X4JqG8lHRYBgoMA7+uVoffrtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757851510; c=relaxed/simple;
	bh=2XEUW3sv2PyTMtUGHSUVu8YoqpR7RWEQF674FEhLsR8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LIULWx4GDn9sAQzQ6al1409NhcgIKmB48hFksROlION41BoCy1A51iOo4Mfoi5pYJJh1aAA5lnNDVsZYrByowo5dNJmc/pIeE44N1Cq/zPsTKIbDhQdUZolyZYZnLaE+VOYOiRqJW/dmGEttzqqWp8vRe+ORbDkMUrO2np0nRzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IvARUJB+; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b0411b83aafso489223666b.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 05:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757851507; x=1758456307; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fY6DSEo3jc/AJz5h4ijfNxRlC4eYjZTzab4rWN3vGwY=;
        b=IvARUJB+3LjKzMNjVqb5Qa205KJ5gvr6ef7dG7G3E0shxZKsFaeWmxGOuNyxjN8xF6
         ieFK4u2iFFWvkGgka4wwLlpp4VeD9wdyPWYyowIRAkKuZnCKL6r5o4fvMfsFfHq5xu3e
         9cQT9eJQygNT+OTQ1jPzZ3NdIfNTiQGMvSZ8tDGC8nlB3SfRPJ/INE/A9S2Zf5UgiN3Z
         UxxU+0N5AYjCEXWWkhJKQyVkeSq1Hsf4ZCSoZryl/zARi1XFYJtGwWppKt1ftjFG1AQl
         d9Z0DOYzG5cem9DAdwxCmYTitAjKiR+z5oYzvJVPwTikLh+SSrn9lUm5f0aBVzmSLQQ8
         MEfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757851507; x=1758456307;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fY6DSEo3jc/AJz5h4ijfNxRlC4eYjZTzab4rWN3vGwY=;
        b=uTB6hzp0yLsUAGNZj2PjppBqQYvU5pUMNCfc+HP45j/M4pttwKz4iP3anI+gNYJ1y+
         qv4477JDzCNwpt0wYpUPY0qqv2/Hf31te9uoL93a1hO6L6xSkVBuQbr3GFhKInhC9txl
         sz06PUbXVkRVxufaaE/6fjMAQgyZeq/QdqYVqT88ZrNejpTF/ATmAWDwnuP7xtGWVsVW
         o21+TdlQAqZMI8ib+jT5DtLLdw2DBaembov82tNyCWHrh539J9LZ+4dardLSi2CriLVe
         SPolzEh3pqXpAc5S0P3G32eTttYZ1tWZQ4ChgOBh1tsUFE9vKZ7Z02nMOJJuhURYcvxL
         8+pg==
X-Forwarded-Encrypted: i=1; AJvYcCUAYDiuESa9BxDzfRYnD3EoYB5C+G6Xef5aeqq3eaRTi7arXsh1JLgw5wcTTN7GHO81ErXdLwBHpQge@vger.kernel.org
X-Gm-Message-State: AOJu0YxoSPq+//5rf8kkD6SD6xPPTUNFEemAdFMBtlFfMhwxbw5eXgxc
	6sjppQ3XSmvY5WmhYwO4atEDTk7qtO8hgD7MRzHwyJJsvyrlTWrbiWFRh8PEdiUJlJDxWBO60Y0
	tQLzbPFbEDmNVEkhWzV2NU1+JuqAOzgk=
X-Gm-Gg: ASbGncukXP/7KzyYl4j63THuabEoyhS6Pio0kXo37LFhaQRUbnSmAzu25jsD1UZgY3b
	vzlWLMbmwF8PFHVJ1+EPOXFjRQId0KeueJknkapVaVT79XW9jKkyUPUEqIEfO8pockJ3aR5/BvF
	/T82nzpbecyIYS+xQhuTjhVbF7m0aGCvx4IAyo3hgDzYL8ind9OTI1uSkm6QzUBjwBH649G1iVJ
	z/DvkQ=
X-Google-Smtp-Source: AGHT+IHsndcZySXaL6I1jcRzVrpRT63KT1X95uqVC06SA7Ggplz0Yps+bfOG8puX6cEkwkqk4cjU2eV9ySlSoHck3Gk=
X-Received: by 2002:a17:907:6e9e:b0:b04:aa9d:2240 with SMTP id
 a640c23a62f3a-b07c37dbd64mr909536866b.39.1757851506307; Sun, 14 Sep 2025
 05:05:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250913-b4-bma220_improvements-v3-0-0b97279b4e45@subdimension.ro>
 <20250913-b4-bma220_improvements-v3-6-0b97279b4e45@subdimension.ro>
In-Reply-To: <20250913-b4-bma220_improvements-v3-6-0b97279b4e45@subdimension.ro>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 14 Sep 2025 15:04:29 +0300
X-Gm-Features: Ac12FXwYsc-BkMVQQt5TjOs94PVItMr4VpPlJOUdr5AMKIOfTub8Tv9c2hIE7dI
Message-ID: <CAHp75VcQW2LLjDSL+6z-RLjoniqNL-eqLz82eBozJuG49r4kgA@mail.gmail.com>
Subject: Re: [PATCH v3 06/18] iio: accel: bma220: turn power supplies on
To: Petre Rodan <petre.rodan@subdimension.ro>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 13, 2025 at 6:40=E2=80=AFPM Petre Rodan <petre.rodan@subdimensi=
on.ro> wrote:
>
> Add devm_regulator_bulk_get_enable() to device probe().

...

>  {
>         int ret;
> +       static const char * const regulator_names[] =3D { "vddd", "vddio"=
, "vdda" };
> +
> +       ret =3D devm_regulator_bulk_get_enable(&spi->dev,
> +                                            ARRAY_SIZE(regulator_names),

Adding

  struct device *dev =3D &spi->dev;

will make this line and others shorter.

> +                                            regulator_names);
> +       if (ret)
> +               return dev_err_probe(&spi->dev, ret, "Failed to get regul=
ators\n");

...

It's possible to do in a separate patch for all of the cases, though.


--=20
With Best Regards,
Andy Shevchenko

