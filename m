Return-Path: <devicetree+bounces-146049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CF4A331FC
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 23:06:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C2D4188AEBB
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 22:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEBD8202C50;
	Wed, 12 Feb 2025 22:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ttgayTej"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5A2203705
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 22:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739397951; cv=none; b=ZJM0cdSMlmGSAhWWjwT1JDBVVHqz6gl3z0nB9wylKehdudWXIxZ7B+VBbj+VgA19UYQbJcGAUB7C/H6VcOsvwQJSuMe/Qavd7C4gB4xjuDqrQ57HD8MYBfwn1T5aYmVSOkhFiGNJfF7VMJQVu5nBmAQ8P3a2XfkDDRx+sGtYP6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739397951; c=relaxed/simple;
	bh=TIp6IiSw9J6XeW41z4PtWs3Pf5rf0JtnBBQ3ET3vPAw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kmq+3CpM3ZTHikvOtqAXHsIOy111qPcR0BbH7EsqZtNVdSvchbNoTEcyFhQqFKY9O97sVWxM3ao1pCtfCiec12oFpd+cZbvWMgFBbsK50+Ik6rnM9wG8yIDbuN1R9CNKAn/7yfP5ZlnE7x6zAoZAbzQzSej6qaBJpBbr8SYcuFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ttgayTej; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-308dc0878dfso2386221fa.3
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 14:05:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739397948; x=1740002748; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AyeS31oOn+dyoHdEWwNg/btCvozuEbvtdJVbwfowCPI=;
        b=ttgayTejd1PyC4/daUQsPLiIUzmFcgNOFlR3oRFQDJq6S3kvSPz3zjPpvV1zEITOU5
         bFsCqHW7clcTqeKHUFyRJx9FvFxF8myeI2SvFacrVkD638WTHZY6vB8RKX+608j+lOVM
         VAXrESsDlx4yS2NX5UWPbYykJUChAV2r6O1nwQrBuMQLQo0Ol/4LInKdyrUKiCBgSOMG
         +JyMrlhX8jKO8TdafilAekwhxd/6HJ+8abV3KMAaedDS4UUgMLUsqJbT/JF97TSQbavN
         fSTDsQz1DjHoOMtdjg1fpk1UFYZur9atEfwjVnTXao/p5xOMahyVbOyALsir6RUmsJp5
         skIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739397948; x=1740002748;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AyeS31oOn+dyoHdEWwNg/btCvozuEbvtdJVbwfowCPI=;
        b=CrPcLVIA/KFdkzLXuV4IbP4KwyayxpXhqV2xvDR5a0XxRzpc01l80+NN1J3BjqLpJT
         YPT4unguX3o6g63914LS+WODFRC/+OpIRoYuH9dTpjNRDTdVAXlifug2RVUkAcUsXQVA
         3wTACm2Lx2+d7kfbBlXlARZyPgZ5je2ypyEsmYbIJQRWbs+RLqW8R8+JTcPEIgDupCp9
         2PNWMlEoLGcmdIRFFngSpzTboC4YmylnEKTLCU5dxZp/OhD9Xs9Iyh5+NelHMJEATtOV
         WAdpOODjmNGvjpzAZFQeE+B6BL/sbnyLxsCVrhcDMZ46Z9zQVkPfQ7QaXomr62GrX7lu
         xcUg==
X-Forwarded-Encrypted: i=1; AJvYcCXRUbpZtDDcMBYzIQV6I5vWyE2j7gJS0cKr3eBBv4MGOfPNw442ikrS5oQAcGb4gchd8W7/IUcDAQb1@vger.kernel.org
X-Gm-Message-State: AOJu0YzQjvOOv04hMr5nDFYkqFmDv9gYKwg0/DVdNCvHR86aGM8xc8T2
	VYs7obPdJK2qFgSXwREJIsEcea00vqMRfS5+e5LY01l49AtSECd0imOlpF/6NkTGWN11NB5CElR
	2eeiG5Jd8phKZ22VqLZnF2roZE667PSlTTAL4KA==
X-Gm-Gg: ASbGncv4NH9RzRj+HYTymYqRYWFz9kCvq6mRm9DNerxrpkBA5BPFGbckmhJC4H0de9B
	mWuMFqn3GIsJ2c/d5Pkg3lEw6EtScNPY23cR7kkn4cDp6Q4rRJ/h6c4O1T4swaqav/KLLm0nG
X-Google-Smtp-Source: AGHT+IFVaagqh0CMTsKcRkmd3v9fDc83O1leceTlQ3IBKxH8tfOt/VuYKAEwsc8W8nqObHABGLW4nQjjLkytNesf0P0=
X-Received: by 2002:a2e:a9a6:0:b0:301:12:1ef3 with SMTP id 38308e7fff4ca-3090363078fmr16793271fa.4.1739397948015;
 Wed, 12 Feb 2025 14:05:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250212-kernel-upstreaming-add_gpio_support-v1-0-080e724a21f3@blaize.com>
 <20250212-kernel-upstreaming-add_gpio_support-v1-3-080e724a21f3@blaize.com>
In-Reply-To: <20250212-kernel-upstreaming-add_gpio_support-v1-3-080e724a21f3@blaize.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 12 Feb 2025 23:05:36 +0100
X-Gm-Features: AWEUYZlDq7_9jonIwEr0yAB71k3AJVNBKOFS6VlejNFuOFWzLB734tg5VjHuCCs
Message-ID: <CACRpkdaWSgTO=S=L=m4bCXCU5b7aOG-DzN-TLEvPjb-QZGc72A@mail.gmail.com>
Subject: Re: [PATCH 3/5] gpio: vsiapb: Add VeriSilicon APB support
To: Nikolaos Pasaloukos <nikolaos.pasaloukos@blaize.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, James Cowgill <james.cowgill@blaize.com>, 
	Matt Redfearn <matthew.redfearn@blaize.com>, Neil Jones <neil.jones@blaize.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nikolaos,

thanks for your patch!

This driver is really high quality, only nitpicks below.

With these addressed:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

On Wed, Feb 12, 2025 at 2:47=E2=80=AFPM Nikolaos Pasaloukos
<nikolaos.pasaloukos@blaize.com> wrote:

> VeriSilicon APB v0.2 is a custom GPIO design provided from VeriSilicon
> Microelectronics. It has 32 input/output ports which can be
> configured as edge or level triggered interrupts. It also provides
> a de-bounce feature.
>
> Signed-off-by: Nikolaos Pasaloukos <nikolaos.pasaloukos@blaize.com>
(...)
> +config GPIO_VSIAPB
> +       tristate "Verisilicon APB GPIO support"
> +       depends on OF_GPIO
> +       select GPIO_GENERIC
> +       select GPIOLIB_IRQCHIP
> +       select IRQ_DOMAIN_HIERARCHY

Are you really using the hierarchical domain?

Not in this driver, right? This is just regular chained IRQ.

> +       /* configure the gpio chip */
> +       gc =3D &chip->gc;
> +       gc->owner =3D THIS_MODULE;

I think the core sets up owner for you so you can drop this assignment?

Yours,
Linus Walleij

