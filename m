Return-Path: <devicetree+bounces-134398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB259FD5F8
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:29:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A5AB43A2A75
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAE7B1F76C1;
	Fri, 27 Dec 2024 16:29:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JzgfcQqy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F891F76AF
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735316948; cv=none; b=iEe3+1cCzJjfcba7JzAX8Qdr3LpAdbTKEyz5jmXGamtVRiQISPQcILV2C01pQxPjzahuE0pIF6TB1fJwCpYbtmUTJxhPywYFLIcvByY2g/TLQAJo91H4R/HFBmxSYykYOKhpgZzsjZB/l5+0uoI/JY6vGpKMke/GrbAnbUO8zho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735316948; c=relaxed/simple;
	bh=zgYZUl5WkvllzAU1eF0FO9O5S+PDx+hLGZ5UZutAUCc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ntnGIRiHXum8YU+zirhEfN10Fy3C3bn38RDvKV5h0c1rT22jt1yn/YRApUDCOGM27mjSdSjoZ6VN8Fj5FzmZRVW+4fbeUxjkOmKFFDfQzrxUyckbmH+Jpv54FP1TF0vVDJsAoCMZJF0j+JBto8R2evmD3op4zOXs2sKd3FQvtFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JzgfcQqy; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-53df6322ea7so10027713e87.0
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:29:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735316944; x=1735921744; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5oW4mN8cC86oshtjqRgjsTaW7z+n3qOyOrUeMP9CRCk=;
        b=JzgfcQqyJCOfYV+lLpI0BMIxT4vXvxJecSzUiY6YmsnPDcSuSt8vYDvuNbH4W/hUDP
         8pPdbvpvhlg1I+vq47MkTiXTUhAxlPD7TYSVfZKutEIRWKUUyAKUlotOE5AUlw3X5vrv
         3wcv1CRwAvvQtuib8chFGt8gc9Vl0GYbN8qKGsh7oT1D7EqYaX7Dbnnn1lz4nINCzmvW
         jH7I+c/H5tUT1PXuQhxSyNnmsiM843UDW//Kcgot74RTG35Kbmq3A0q6ezhYw798tYgG
         niJ34QGOR0xw9g9Jf9zIw8aarw3B55Cbjn00Mxr2uLa3OwKD8+vUNS/HlZAskVbujeg8
         2F9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735316944; x=1735921744;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5oW4mN8cC86oshtjqRgjsTaW7z+n3qOyOrUeMP9CRCk=;
        b=aWFBvo+0XPKnUO88JExzqQzuleBkolz0tFvyUdON/kOUSGV36TEAOmzclPkWY9QqM7
         iiOuzEb/DxZvsJQkrx2Ct7r+nMEvLVz6InjIWDfY/uWarZUX7nEKxm06TTUK3u15rDCZ
         KgSq7r3JYkYigyQzx4z3Fubr23/63OQdLTaxL+n3cjLx4+aqbjLFGqRKql8NFtNP4xRw
         IkYS6uyD5VmGOeQpfcyOQcxIhcmyLsMptDf/FtNq6JSffZDqb10G9duVUKpGPXIDWNXo
         vN5Q5Bwyd6w9TRdPm/P3Eks/LcfnZXkF2nE+yFlxx8bas3W7CsO+IP2JNYAtesg5oTUy
         450A==
X-Forwarded-Encrypted: i=1; AJvYcCXBx/oQZbzJ9VlF9j0C921EloK2aEkaZE5MPOMjbqbCfGwmpLFL+Bs+Vsat9LKhpRaM/F+lSwZfLV8C@vger.kernel.org
X-Gm-Message-State: AOJu0YwAy0Sc4LQyqUB952UDPGdjz4APFII0BuRtQ0TWkljHnVNLDyuO
	1evI5EOnbcj47j7M3/HFae0AnbCPxXraAPNMnshRey3SDt79cvsz+PPeums7zSVCqj76Rs4pz5U
	Bs+l8gdcRNhpk09hDgxQStjHa0/ZEf4UXD9ckPw==
X-Gm-Gg: ASbGncsHQN3z0BhxNVEBoplLKHdbatNwhpeZoGTbLO6IZt0McvaSRKbmC74XAtRvhgS
	RuuJWZ8HfyqhPIA45QgHfC6freGbJJiCDE9ct
X-Google-Smtp-Source: AGHT+IFEVrD+v3aZLF1u0UgSdbK6XoWVvLireUe/cfd58JtoLPKDCHpDJcLqQ+n8HxbzaxWY6+YsJylFW7tZ4FIBybs=
X-Received: by 2002:a05:6512:1241:b0:53f:f074:801c with SMTP id
 2adb3069b0e04-5422958eaaemr9406977e87.41.1735316944181; Fri, 27 Dec 2024
 08:29:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241225-03-k1-gpio-v3-0-27bb7b441d62@gentoo.org> <20241225-03-k1-gpio-v3-2-27bb7b441d62@gentoo.org>
In-Reply-To: <20241225-03-k1-gpio-v3-2-27bb7b441d62@gentoo.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 27 Dec 2024 17:28:53 +0100
Message-ID: <CACRpkdYgGho=VQabonq4HccEiXBH2qM76K45oDaV1Jyi0xZ-YA@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] gpio: spacemit: add support for K1 SoC
To: Yixun Lan <dlan@gentoo.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Conor Dooley <conor@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Yangyu Chen <cyy@cyyself.name>, 
	Jisheng Zhang <jszhang@kernel.org>, Jesse Taube <mr.bossman075@gmail.com>, 
	Inochi Amaoto <inochiama@outlook.com>, Icenowy Zheng <uwu@icenowy.me>, 
	Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Yixun,

thanks for your patch!

Some comments below:

On Wed, Dec 25, 2024 at 1:33=E2=80=AFAM Yixun Lan <dlan@gentoo.org> wrote:

> Implement GPIO functionality which capable of setting pin as
> input, output. Also, each pin can be used as interrupt which
> support rising/failing edge type trigger, or both.
>
> Signed-off-by: Yixun Lan <dlan@gentoo.org>
(...)
> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/init.h>
> +#include <linux/irq.h>
> +#include <linux/interrupt.h>
> +#include <linux/clk.h>
> +#include <linux/gpio.h>

Please drop this legacy include. It should not be needed.

> +#include <linux/gpio/driver.h>

This should be enough for any driver.

> +/* register offset */
> +#define GPLR           0x00
> +#define GPDR           0x0c
> +#define GPSR           0x18
> +#define GPCR           0x24
> +#define GRER           0x30
> +#define GFER           0x3c
> +#define GEDR           0x48
> +#define GSDR           0x54
> +#define GCDR           0x60
> +#define GSRER          0x6c
> +#define GCRER          0x78
> +#define GSFER          0x84
> +#define GCFER          0x90
> +#define GAPMASK                0x9c
> +#define GCPMASK                0xa8

This looks like the archetype of a memory-mapped GPIO chip.

> +#define spacemit_gpio_to_bank_idx(gpio)                ((gpio) / K1_BANK=
_GPIO_NUMBER)
> +#define spacemit_gpio_to_bank_offset(gpio)     ((gpio) & BANK_GPIO_MASK)
> +#define spacemit_bank_to_gpio(idx, offset)     \
> +       (((idx) * K1_BANK_GPIO_NUMBER) | ((offset) & BANK_GPIO_MASK))
> +
> +static u32 k1_gpio_bank_offset[] =3D { 0x0, 0x4, 0x8, 0x100 };

Yet this is not registered on a per-bank basis, instead all four banks
are hammered into one single chip. Why?

Can you please split this into 4 instances, also in the device
tree. It makes everything much simpler.

> +struct spacemit_gpio_chip {
> +       struct gpio_chip                chip;
> +       struct irq_domain               *domain;

If you're using GPIOLIB_IRQCHIP you should not
also define youe own irq_domain, the gpiolib handles this.

> +       struct spacemit_gpio_bank       *banks;
> +       void __iomem                    *reg_base;
> +       unsigned int                    ngpio;

Is this ever used after initialization?

> +       unsigned int                    nbank;
> +       int                             irq;

Or this?

> +static int spacemit_gpio_to_irq(struct gpio_chip *chip, unsigned int off=
set)
> +{
> +       struct spacemit_gpio_chip *schip =3D to_spacemit_gpio_chip(chip);
> +
> +       return irq_create_mapping(schip->domain, offset);
> +}

Should not be needed when using GPIOLIB_IRQCHIP.

> +       schip =3D to_spacemit_gpio_chip(chip);
> +       bank =3D spacemit_gpio_get_bank(schip, offset);
> +       bit =3D BIT(spacemit_gpio_to_bank_offset(offset));

#include <linux/bits.h> to use the BIT() macro.

This driver becomes unnecessarily complex due to collecting 4 GPIO chips
into one.

Please split it into 4 instances of the same driver, then look at other
drivers using select GPIO_GENERIC such as
drivers/gpio/gpio-pl061.c
drivers/gpio/gpio-ftgpio010.c
for examples of how to create a very compact and simple driver
reusing the generic GPIO helpers, this will also provide
get/set_multiple implementations and other useful things.

Yours,
Linus Walleij

