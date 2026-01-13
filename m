Return-Path: <devicetree+bounces-254310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A629CD171D5
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:53:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 29C0F3018356
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 07:53:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 438132877DA;
	Tue, 13 Jan 2026 07:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PBidv/RH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8E1618BC3B
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768290809; cv=none; b=BsG3sPG1XDily4VHYiXWklQWzMonRcTulAQ5kh0Wp6PkvaqFJ71wFoLTo6kbT/t85/gDw0RVuyfoRdiER/JUf1VtQKbJnjIpT5O2uKMem0HZ4auF0RWP32MhC3SiyXGjyY8uPAQt1Ws1Nxx3k6nwpdKCdFOATbSmRqrwjnOA9W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768290809; c=relaxed/simple;
	bh=FAO02sDwAwX4+HG1mgbfrjWPUzfBxHTmaxAnrYrAds4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VZJmXIKX2wD1078vNWVxCObjteFvUPecq79H4UhuwqF1J98TbeK9vBVLlTaSI91pxn9xYZ8NN8XLUQu0ttWn7XF4yQV24ldC7YGnwhh1/PlvJaqES47vx3zISMvDMNCkxba1HsGJUwp/IRi6SbH/SxM8r36JFTlL71yPY/3V8do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PBidv/RH; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b8010b8f078so1205114066b.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 23:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768290806; x=1768895606; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M8FHrs+dJ/4FJYePrcFfdKVekHzeK8pOp4dSOIgIIrE=;
        b=PBidv/RHjoWcZC27ywhDU29jx1A5RHwJblT/Vc49s20Y95s7h6ZQfqyovJ3rYNsSxG
         ycFlfhzyCyCH37FTDtFrtlTCQxRYKpTtXuzHhPaaxRAYxiTVYyt/ZBW3hmayNyMc/wEt
         Yq6K5DRRd3Gyi56FNMsKUWWS0ORpMzYdgdh/2vyCYcEd5eFXzMhlf9fXCBnFwcUZTAIE
         XpRcUymZlyjsC/GEsf1Td6eO4q7dO5APF2Dkh9hoK6+W0jkoK30bKoWk/gLkYhMYIWqP
         Ntd6ccM6fYN0Vnlp1tO/kOcEEGBmPKfhaRRR5xHH5sLGAMkbHC2FywCgwCXSLwMp5jsR
         jRhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768290806; x=1768895606;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=M8FHrs+dJ/4FJYePrcFfdKVekHzeK8pOp4dSOIgIIrE=;
        b=KkOUFXWMHZz2Ww9BbnarbMm1Q2hu91jM2ry9paBg9LkKiUqUBoeDFaTkN3RKeDLR+b
         YS+P3VIOHC9MZ4eRjLCGtkcigEGQ1x/EODJx3HJXGH4IC2igtngzIAXOekzqzlNQN2xE
         lz4/QYNKoLb2FbA2MxLvQh/cEvZm6HVJaG4duggCf7I4SzfiRLAEQiCAEZ+FdP/psjc8
         hbgntbhjY5sHyZOkcNKdP9YYFdKWmoJgzmiX7PFekU0o/Mat8LZ5Ma/dDeylekF8ONCr
         AbFX0ybz3FqHlkpFq0TD0IDTKLs6MPKuYICqH9PcfF8Q35EKvpr8OasQaUEToXE1rrk+
         DBdQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIzaO5Ttd9sdG1rNRmDJSiGrHT04gEeoOqz8N3Jt3M5DiZ6kKr77dYwu0+AWVvvhZZcHix9frey2Km@vger.kernel.org
X-Gm-Message-State: AOJu0YzTpWTFMrxa6fBSlyIW6NUQtTn2Z2mAyjuAvKsKYTuEkE8wJciW
	AbtlF3Lbj1G+/neFZ2p+odpJp6RAHBdCdLhQ7yCtlgqETkbUL3XvNjherLB/7IP9R9N2zYcgTrv
	1XoF0ebMYJyZHe4F5TSl9xSCwrRYCS80=
X-Gm-Gg: AY/fxX5gRC7+JLMOWHC/v/5iUEZQtKDyuGT8nVwOxr1hm2H8cduBawzetXfQK0OhlOD
	8F3V9Mwa3ox9Fg0i4/SggP5YxfCfzbVoMCcXo9Oigsu5um3bd7FjLcGJbmEXkUZ0Tx12EiTwqbf
	1j+4iVE2YHvuDkcpWqHmgFqfX4V8JKx7EBwDqgB84Vq6aVk0Tk4gU3RXSBmVKMmeF5Zp+8q4wo5
	lMDsa9v5+A4GS2Kaol8ELm7p7cF65ejXA4ONar+0n+5oaXRIWcfhQfAE4hKzGEA/RVxYvljVcJj
	RDbr35+qjtE7yC5wBqNqSPDjOiplpU83aXdKlghw7n+tdLDhMKupCXa+QqaqawD1daZgp+k=
X-Google-Smtp-Source: AGHT+IFXMyxALPb7AJdWb6Uk+k0kOae+l8EP9Eu/uq3iLZyfmRiSstajirnJRTcciETVCuqgo4pR+aSctOVEUaKscdM=
X-Received: by 2002:a17:906:d54d:b0:b84:200d:15b5 with SMTP id
 a640c23a62f3a-b8445179fd0mr2244041066b.31.1768290805591; Mon, 12 Jan 2026
 23:53:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260113040242.19156-1-email@sirat.me> <20260113040242.19156-4-email@sirat.me>
In-Reply-To: <20260113040242.19156-4-email@sirat.me>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 13 Jan 2026 09:52:49 +0200
X-Gm-Features: AZwV_Qh8XK_UrV7q5hONEYTqAxseOh1UxJDotOLwF_n_zEDHEe9kj8jEwTxd7eQ
Message-ID: <CAHp75VdCoHPp_ynzsrvbzx_LY_N5x4sMxvzQnDkatWiEe91j1A@mail.gmail.com>
Subject: Re: [PATCH 3/4] auxdisplay: tm1637: Add driver for TM1637
To: Siratul Islam <email@sirat.me>
Cc: andy@kernel.org, geert@linux-m68k.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 13, 2026 at 6:03=E2=80=AFAM Siratul Islam <email@sirat.me> wrot=
e:
>
> Add a driver for the Titanmec TM1637 7-segment display controller.
>
> The TM1637 uses a custom two-wire protocol (similar to I2C but without
> a slave address) which requires bit-banging via GPIOs. This driver
> implements the protocol manually as it does not fit the standard I2C
> subsystem.
>
> The driver exposes a character device interface via sysfs:
> - 'message': Write a string to display (supports alphanumeric & dots).
> - 'brightness': Control intensity (0-8).
>
> Standard 7-segment mapping is handled using the kernel's map_to_7segment
> utility.

Thanks for your contribution. I believe in the current form (design
wise) this is no go (we want linedisp and better understanding of the
protocol here), but below is just a shallow review to get you an idea
about some common mistakes people make (usually style related) to
avoid similar problems in the future. It means a free review for
making your code better in the future.

...

> +Date:          January 2026
> +KernelVersion: 6.19

At bare minimum this could be material for 6.21. Use
https://hansen.beer/~dave/phb/ prediction machine for this.

...

> +config TM1637
> +       tristate "Shenzhen Titan Micro Electronics TM1637 7-Segment Displ=
ay"
> +       depends on GPIOLIB || COMPILE_TEST
> +       select AUXDISPLAY
> +       help
> +         This driver provides support for the Titanmec TM1637 7-segment
> +         display controller connected via GPIO bit-banging.
> +
> +         This driver exposes a character interface for controlling the
> +         display content and brightness via sysfs.

We also expect the name of the module being mentioned if the user chooses M=
.

...

The below block doesn't follow the IWYU (Include What You Use)
principle. E.g., bits.h is missing.

> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/module.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/mutex.h>
> +#include <linux/platform_device.h>
> +#include <linux/property.h>
> +#include <linux/slab.h>

+ blank line

> +#include <linux/map_to_7segment.h>

...

> +/* Protocol timing */
> +#define TM1637_BIT_DELAY_MIN 100
> +#define TM1637_BIT_DELAY_MAX 120

What units are these? We do suffixes like _MS for milliseconds, for example=
.

...

> +struct tm1637 {
> +       struct device *dev;
> +       struct gpio_desc *clk;
> +       struct gpio_desc *dio;
> +       struct mutex lock; /* Protects display buffer and brightness */
> +       u8 brightness;
> +       u8 buf[TM1637_DIGITS];

Always think about alignment in the data types.  Definitely we want a
possibility for the code to use one assembly instruction to get a full
buffer to the register. With this layout it becomes impossible on
(some) 32-bit architectures. Also `pahole` should be your tool to
check structure layouts.

> +};

...

> +static void tm1637_delay(void)
> +{
> +       usleep_range(TM1637_BIT_DELAY_MIN, TM1637_BIT_DELAY_MAX);
> +}

Unneeded wrapper, just use fsleep() directly in the code with the
comment above on each case.

...

> +static void tm1637_start(struct tm1637 *tm)
> +{
> +       gpiod_direction_output(tm->dio, 1);
> +       gpiod_set_value(tm->clk, 1);
> +       tm1637_delay();
> +       gpiod_set_value(tm->dio, 0);
> +       tm1637_delay();
> +       gpiod_set_value(tm->clk, 0);
> +       tm1637_delay();
> +}
> +
> +static void tm1637_stop(struct tm1637 *tm)
> +{
> +       gpiod_direction_output(tm->dio, 0);
> +       gpiod_set_value(tm->clk, 1);
> +       tm1637_delay();
> +       gpiod_set_value(tm->dio, 1);
> +       tm1637_delay();
> +}
> +
> +static bool tm1637_write_byte(struct tm1637 *tm, u8 data)
> +{
> +       bool ack;
> +       int i;
> +
> +       for (i =3D 0; i < 8; i++) {
> +               gpiod_set_value(tm->clk, 0);
> +               tm1637_delay();
> +
> +               if (data & BIT(i))
> +                       gpiod_direction_input(tm->dio);
> +               else
> +                       gpiod_direction_output(tm->dio, 0);
> +
> +               tm1637_delay();
> +               gpiod_set_value(tm->clk, 1);
> +               tm1637_delay();
> +       }
> +
> +       gpiod_set_value(tm->clk, 0);
> +       gpiod_direction_input(tm->dio);
> +       tm1637_delay();
> +
> +       gpiod_set_value(tm->clk, 1);
> +       tm1637_delay();
> +
> +       ack =3D !gpiod_get_value(tm->dio);
> +
> +       if (!ack)
> +               gpiod_direction_output(tm->dio, 0);
> +
> +       tm1637_delay();
> +       gpiod_set_value(tm->clk, 0);
> +
> +       return ack;
> +}

This looks like the I2C bitbanging protocol. Have you checked that
one? And why I2C with raw transfers can't be used? I doubt this can't
be proper i2c peripheral driver.

...

> +       if (brightness > TM1637_BRIGHTNESS_MAX + 1)
> +               brightness =3D TM1637_BRIGHTNESS_MAX + 1;

min() / max()  (from minmax.h)?

...

> +       mutex_lock(&tm->lock);

> +       mutex_unlock(&tm->lock);

Use guard()() or scoped_guard() from cleanup.h.

...

> +static struct attribute *tm1637_attrs[] =3D {
> +       &dev_attr_message.attr,
> +       &dev_attr_brightness.attr,
> +       NULL};

Two lines on a single one. Split.

...

> +static int tm1637_probe(struct platform_device *pdev)
> +{
> +       struct device *dev =3D &pdev->dev;
> +       struct tm1637 *tm;
> +
> +       tm =3D devm_kzalloc(dev, sizeof(*tm), GFP_KERNEL);
> +       if (!tm)
> +               return -ENOMEM;
> +
> +       tm->dev =3D dev;
> +
> +       tm->clk =3D devm_gpiod_get(dev, "clk", GPIOD_OUT_LOW);
> +       if (IS_ERR(tm->clk))
> +               return dev_err_probe(dev, PTR_ERR(tm->clk), "Failed to ge=
t clk GPIO\n");
> +
> +       tm->dio =3D devm_gpiod_get(dev, "dio", GPIOD_OUT_LOW);
> +       if (IS_ERR(tm->dio))
> +               return dev_err_probe(dev, PTR_ERR(tm->dio), "Failed to ge=
t dio GPIO\n");

> +       mutex_init(&tm->lock);

Use devm_mutex_init().

> +       tm->brightness =3D TM1637_BRIGHTNESS_MAX + 1;
> +
> +       platform_set_drvdata(pdev, tm);
> +       tm1637_update_display(tm);
> +
> +       return 0;
> +}

...

> +       mutex_destroy(&tm->lock);

Will be gone per above.

...

> +static const struct of_device_id tm1637_of_match[] =3D {
> +       {.compatible =3D "titanmec,tm1637"},

Missing spaces inside {}.

> +       {}};

Two lines on a single one. Please, split.

--
With Best Regards,
Andy Shevchenko

