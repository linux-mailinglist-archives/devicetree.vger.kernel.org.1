Return-Path: <devicetree+bounces-91005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 243359476E0
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 10:07:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 972B5B21E79
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 08:07:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C08BE150990;
	Mon,  5 Aug 2024 08:05:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zShhkMLm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5FAC14F9F1
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 08:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722845107; cv=none; b=RRc/YNfo9qMdecaV4WEkboGmXY6FjtWhiCPthe5U5cS9eiuTkQGPKh813mnPG7gOcjfo9sgc6z2Wf8kqH1GQJ7pi1jtJ+fQs7qlHvMReUKUcVv15keK8e6Bm39NfhPaX/3R+9Z+8yUAng5BR89gtl5f1tXVaVXCSvKxhvMDSZNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722845107; c=relaxed/simple;
	bh=6sXJ3WO3dFim8GApcSIrk/tXyaVvkV0bTNmi+2+R1Zw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HYNRh9w54wFF2LKKvC00h43cH0u0Yg0Mua9x3TEesja5n4pRIZV4vNFlXOKQjV/Itow1FC/OIU1jmSVah63UrntQDovjQonC3PyQQBWmMY+fdvhXnGJ0gyBgT3dW6oRUeyrztzrBODcMQ2VqaGbW/8+7z73rNjwvOHLiNk25ESU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zShhkMLm; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52efc60a6e6so15763466e87.1
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 01:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722845104; x=1723449904; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+vUo6X2UB32z9znfy1Y49G04XlyGtFJELqgfmxMvQuo=;
        b=zShhkMLmDtgbewDtCSCDCufn0hLfxDpfNlIUzrcvy74+QktlzYbNaMds5V57gz5Fpg
         WogQdSnR9Bw1+AlB9pHhj7XQmSQkMBH8h1aLjgY0VDRe5XmOlC/chNqEKTPicItYAvDn
         kvhDyZbHnhi7AdTVUZoFw5xRZQMt3MGyhc/ZE8oFSjdun0kK3O2indQTwUPHs9dILJIp
         O5f9GNjxo+ve7vG6n+zHdduFi1t4r8lDblZuwTW4pg0VYCOdjSm7uVyxCBsL39YlpYM5
         4wVsrHnDR/P6+RsNdTZ+L6xXg5AcbZe5LOLSqSE8nbavjmTOGdfU4Q5GQ9NhAxo2hOLa
         7UKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722845104; x=1723449904;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+vUo6X2UB32z9znfy1Y49G04XlyGtFJELqgfmxMvQuo=;
        b=b4dCZ+JfgLfiYSu3dJjYblnzbgFg1lCc9MGD3MpHXR9Eqk4+C2OWMwVBFEPvCn/Wqp
         acRXfKYQQ5SBiUFPSNkcJO4+0guaTmYxfW4qNNc5moa5FKfO2qq68Javp1+iffylKcQO
         nXd6ct4K9A9NXglox82A9aKdSoxAjMoW1wsT/RZ5d4tnh3oBU3BmsYDkoTyojtfJDuK5
         SN1T2RMtbjUxzBLAhXKBYvD56BJdKMcD1P/RGSgl2tuPA23Sc0UsuHTKNMgP9Gy5wLWr
         Nfoz6du0IXj9gtYvIAo07Y1ACUPud9BcYe7eLd7pDpUvcBJq00ont4dA/dZBHiNAgCg0
         gStg==
X-Forwarded-Encrypted: i=1; AJvYcCU7ztb4wT6A68gkMEDvVGXzu7nsxrvSNTTsd7Dcmi2hc+o/kB62SES2qbh5HEfOTfbJhOQEIpTIfP2gxvhqlIFqtLngtj5jLxEAOw==
X-Gm-Message-State: AOJu0YzFSgmZdijAzTUBYSffEN62es9N5X+86DCffhW/LA0uYWbqtczN
	QPOZKsSThiYiIalaDYKsxLZoOkT/v7eVokcipsdtBvXmwkd8RNlwmbjy0xnoCJDt74fVxCZlaqi
	pPDHfSYvPJ4DnvcEKqZ0wPc/9f4nVSzGd7PjL9Q==
X-Google-Smtp-Source: AGHT+IFGNovjX087F1QurhU0HQ7nruW2cdo46FHweA0PGGBWHf1HSVejhpZypq7DgKQTcYz6PkOVXwzgpSu/BA7Ep7U=
X-Received: by 2002:a05:6512:ba7:b0:52c:9e82:a971 with SMTP id
 2adb3069b0e04-530bb36640fmr7518778e87.7.1722845103835; Mon, 05 Aug 2024
 01:05:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240723-supervise-drown-d5d3b303e7fd@wendy> <20240723-underage-wheat-7dd65c2158e7@wendy>
In-Reply-To: <20240723-underage-wheat-7dd65c2158e7@wendy>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2024 10:04:53 +0200
Message-ID: <CACRpkdbRE695f-+do1HYpOZ6e4qxgUBWJzEPO2hTCuZ3xxYHQg@mail.gmail.com>
Subject: Re: [RFC v7 4/6] gpio: mpfs: add polarfire soc gpio support
To: Conor Dooley <conor.dooley@microchip.com>
Cc: linux-kernel@vger.kernel.org, conor@kernel.org, 
	Marc Zyngier <maz@kernel.org>, Daire McNamara <daire.mcnamara@microchip.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	linux-riscv@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, Lewis Hanly <lewis.hanly@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 23, 2024 at 1:28=E2=80=AFPM Conor Dooley <conor.dooley@microchi=
p.com> wrote:


> From: Lewis Hanly <lewis.hanly@microchip.com>
>
> Add a driver to support the Polarfire SoC gpio controller
>
> Signed-off-by: Lewis Hanly <lewis.hanly@microchip.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

Just a comment on second thought:

> +config GPIO_POLARFIRE_SOC
> +       bool "Microchip FPGA GPIO support"
> +       depends on OF_GPIO
> +       select GPIOLIB_IRQCHIP

select GPIO_GENERIC?

> +static int mpfs_gpio_direction_input(struct gpio_chip *gc, unsigned int =
gpio_index)
> +{
> +       struct mpfs_gpio_chip *mpfs_gpio =3D gpiochip_get_data(gc);
> +       u32 gpio_cfg;
> +       unsigned long flags;
> +
> +       raw_spin_lock_irqsave(&mpfs_gpio->lock, flags);
> +
> +       gpio_cfg =3D readl(mpfs_gpio->base + MPFS_GPIO_CTRL(gpio_index));
> +       gpio_cfg |=3D MPFS_GPIO_EN_IN;
> +       gpio_cfg &=3D ~(MPFS_GPIO_EN_OUT | MPFS_GPIO_EN_OUT_BUF);

OK this part is unique...

> +static int mpfs_gpio_direction_output(struct gpio_chip *gc, unsigned int=
 gpio_index, int value)
> +{
> +       struct mpfs_gpio_chip *mpfs_gpio =3D gpiochip_get_data(gc);
> +       u32 gpio_cfg;
> +       unsigned long flags;
> +
> +       raw_spin_lock_irqsave(&mpfs_gpio->lock, flags);
> +
> +       gpio_cfg =3D readl(mpfs_gpio->base + MPFS_GPIO_CTRL(gpio_index));
> +       gpio_cfg |=3D MPFS_GPIO_EN_OUT | MPFS_GPIO_EN_OUT_BUF;

Also here

> +static int mpfs_gpio_get_direction(struct gpio_chip *gc,
> +                                  unsigned int gpio_index)
> +static int mpfs_gpio_get(struct gpio_chip *gc,
> +                        unsigned int gpio_index)
> +static void mpfs_gpio_set(struct gpio_chip *gc, unsigned int gpio_index,=
 int value)

But these are just MMIO functions.

Is it possible to use augmented generic MMIO, i.e just override these
two functions that
need special handling?

Yours,
Linus Walleij

