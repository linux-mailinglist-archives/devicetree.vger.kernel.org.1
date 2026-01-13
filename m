Return-Path: <devicetree+bounces-254395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF5DD17C2B
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:48:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DFDFD303533B
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:42:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8065B33BBC6;
	Tue, 13 Jan 2026 09:42:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E002C1EB5FD
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768297345; cv=none; b=hqXlWOoOzioiKOd1qJJTz62JdvmObNMKSdLUpQN87ORjcRHOPViIgNI3LjHZllB1dGADDNtNd4tmRHgJ6a2/yMswrbBY/7nZrM6ndzgAAsZDNlmx5tKSzncANss3s23SLA0851OhAeGPFy9GIhjKTgV8qbNlbMzWL4L9kxJyUNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768297345; c=relaxed/simple;
	bh=w0jhGZnQ0sdkIpEiarOLFC8TsNoxz6kDGsumXc3uZY4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eNIsyxeArKTnkOTKnHn2ErsSUGKP7bMna1A+1DcI/3WjvQjfWdkjmF4Ta2/cIv9kyc7QjzkMK/jv5Jqj8jFanzppWlRGueE1IPQu0oa3pFTueKvv6tR2xJuGyVlX7ENwZo1wGlFk8FqOnkYhUnyXTEu/SC0zAzJp2RFq+xgJTl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-790b7b3e594so58383827b3.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:42:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768297343; x=1768902143;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=csQULM9JgTHkure8QZVoDiumEgvbYegm0kv54lw6dcE=;
        b=ntnCBCPaSJWSAiK6EW8YeEfJdpnPXweNtUU++Wk6B9r8R6DU6tgDCCGRB3Ol2NxHz4
         /eWrd/jcO+pHy2hnrNqMtvOTUV3Zltmcq+CdThfr2SKc3mrdAW8zfgeotDtAtcXxitPj
         QJwKr0YHii+FxwKRW0PTpgSI159kBB4M+Bl8N3M1G90RwWDzyqc0/5YNHsMVo5tsZeKp
         HShpR3RUYiUl0p2L2SR/tRBN+eQQe8vi0p/2AFqjjHzB623imBruxWf0oqqtAIAz9/m1
         xDYKjUtyx7RUOOm2wQioNVt64q3K886jhlpMHyokBm0igc71cxl4qnYpCvejEMV5OcyF
         9O+w==
X-Forwarded-Encrypted: i=1; AJvYcCX6WlEELD48zpiAwuLpVM7gz5whNlWpJl7xuq/8GDySKXxVGQUJ/x2DyRH1RHNMINn8D12200feJqdH@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0XURHrf7fmJO5ZIHhbltHSsKyiLY7+GNfyneq+WIZrQDWPzxo
	OkM26OpcbP9KsVnzK+nmGHt8nHsmTsbQBnfsLpXOUIpIR4GBPNdfglNQC3XoGhz7
X-Gm-Gg: AY/fxX496lzojJsBNNxrn/XkZamavMMValP0CmqLWmoT+cHBsOaLT09zM3kY6540rSg
	08zG4QRsKSwZlQ88h3HmB3zKruh9sdboMt79q/ZXcQUhQb7DSxIlPPSs+GbrkkjXh1+R7czCwts
	wkvv7JAAkoRA2CIWtiMLngt7/vMluzWyM0vlkpfc6JNSAaIIT0AgAvIUmIWUzzENx1qhxE30+TW
	lgOrLhn0MTzgXuw0Cty2el+7JzFZNdd/V+zyC26KlaqW6AGyH8584ZDv38qrfQlq7nsBd+8jJ2f
	V0P4ge1zFtNISMj9TEO1ZMuDhaASnBZUlQ4jVA19Sjc2zPs3c1edPxR4JivQdCrDif74spxcaWE
	/tC6RZykGQD6Gl6UlOY4XIwBiy7DzUknTWfmCKlfO5mG44RLsl2Gntxi9r9W3hWbEbDh1IeNNRp
	2bKqv1lACN2rvJLcd1fD6cF9e/tttqHg6MQY9w24BNtVrT
X-Google-Smtp-Source: AGHT+IFCGBoFRJwDctSV4lU2l/e1PlKJrMH7Bz7kbUU9vm0bEbTnFlngOrX6j64YBaayT+Ij3YJYFA==
X-Received: by 2002:a05:690c:2605:b0:788:88b4:5d0f with SMTP id 00721157ae682-790b5762fecmr182218517b3.25.1768297342773;
        Tue, 13 Jan 2026 01:42:22 -0800 (PST)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com. [209.85.128.180])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-790aa6a7abdsm77998057b3.44.2026.01.13.01.42.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 01:42:22 -0800 (PST)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-790884840baso77129427b3.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:42:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUG+VooI5+NMp/RFM5PxsxvgCxGc7Nj1oNvahhy3+e7lTU+l/Jx/Ef3tp/MH5XE+JnsZqbWVOGAMxWG@vger.kernel.org
X-Received: by 2002:a05:690e:14ce:b0:645:5a2f:7d1c with SMTP id
 956f58d0204a3-64716c4163amr17504329d50.74.1768297341476; Tue, 13 Jan 2026
 01:42:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260113040242.19156-1-email@sirat.me> <20260113040242.19156-4-email@sirat.me>
 <CAHp75VdCoHPp_ynzsrvbzx_LY_N5x4sMxvzQnDkatWiEe91j1A@mail.gmail.com>
In-Reply-To: <CAHp75VdCoHPp_ynzsrvbzx_LY_N5x4sMxvzQnDkatWiEe91j1A@mail.gmail.com>
From: Sirat <email@sirat.me>
Date: Tue, 13 Jan 2026 15:42:09 +0600
X-Gmail-Original-Message-ID: <CANn+LW+PkAcZ2ZVSUpAQwYhDucruiiN90cAakDMXnayRPW0jUQ@mail.gmail.com>
X-Gm-Features: AZwV_QiYfMovHJtyWmjRWcqkT0wJejob8pDyEUUycg8BIQFB2QktRX1qtkMCw-M
Message-ID: <CANn+LW+PkAcZ2ZVSUpAQwYhDucruiiN90cAakDMXnayRPW0jUQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] auxdisplay: tm1637: Add driver for TM1637
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: andy@kernel.org, geert@linux-m68k.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andy,

Thanks for the review. appreciate the mentorship on the coding style.

On the I2C point: I did check, but the TM1637 is incompatible with
standard I2C adapters. It expects LSB-first data and there's no slave
address so bit-banging is the only option here.

I'll handle the rest in v2:
- Switching to `linedisp`.
- Fixing the struct alignment and locking with `guard()`.
- Cleaning up the headers (IWYU), units, and version numbers.

Thanks,
Sirat

On Tue, Jan 13, 2026 at 1:53=E2=80=AFPM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Tue, Jan 13, 2026 at 6:03=E2=80=AFAM Siratul Islam <email@sirat.me> wr=
ote:
> >
> > Add a driver for the Titanmec TM1637 7-segment display controller.
> >
> > The TM1637 uses a custom two-wire protocol (similar to I2C but without
> > a slave address) which requires bit-banging via GPIOs. This driver
> > implements the protocol manually as it does not fit the standard I2C
> > subsystem.
> >
> > The driver exposes a character device interface via sysfs:
> > - 'message': Write a string to display (supports alphanumeric & dots).
> > - 'brightness': Control intensity (0-8).
> >
> > Standard 7-segment mapping is handled using the kernel's map_to_7segmen=
t
> > utility.
>
> Thanks for your contribution. I believe in the current form (design
> wise) this is no go (we want linedisp and better understanding of the
> protocol here), but below is just a shallow review to get you an idea
> about some common mistakes people make (usually style related) to
> avoid similar problems in the future. It means a free review for
> making your code better in the future.
>
> ...
>
> > +Date:          January 2026
> > +KernelVersion: 6.19
>
> At bare minimum this could be material for 6.21. Use
> https://hansen.beer/~dave/phb/ prediction machine for this.
>
> ...
>
> > +config TM1637
> > +       tristate "Shenzhen Titan Micro Electronics TM1637 7-Segment Dis=
play"
> > +       depends on GPIOLIB || COMPILE_TEST
> > +       select AUXDISPLAY
> > +       help
> > +         This driver provides support for the Titanmec TM1637 7-segmen=
t
> > +         display controller connected via GPIO bit-banging.
> > +
> > +         This driver exposes a character interface for controlling the
> > +         display content and brightness via sysfs.
>
> We also expect the name of the module being mentioned if the user chooses=
 M.
>
> ...
>
> The below block doesn't follow the IWYU (Include What You Use)
> principle. E.g., bits.h is missing.
>
> > +#include <linux/delay.h>
> > +#include <linux/gpio/consumer.h>
> > +#include <linux/module.h>
> > +#include <linux/mod_devicetable.h>
> > +#include <linux/mutex.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/property.h>
> > +#include <linux/slab.h>
>
> + blank line
>
> > +#include <linux/map_to_7segment.h>
>
> ...
>
> > +/* Protocol timing */
> > +#define TM1637_BIT_DELAY_MIN 100
> > +#define TM1637_BIT_DELAY_MAX 120
>
> What units are these? We do suffixes like _MS for milliseconds, for examp=
le.
>
> ...
>
> > +struct tm1637 {
> > +       struct device *dev;
> > +       struct gpio_desc *clk;
> > +       struct gpio_desc *dio;
> > +       struct mutex lock; /* Protects display buffer and brightness */
> > +       u8 brightness;
> > +       u8 buf[TM1637_DIGITS];
>
> Always think about alignment in the data types.  Definitely we want a
> possibility for the code to use one assembly instruction to get a full
> buffer to the register. With this layout it becomes impossible on
> (some) 32-bit architectures. Also `pahole` should be your tool to
> check structure layouts.
>
> > +};
>
> ...
>
> > +static void tm1637_delay(void)
> > +{
> > +       usleep_range(TM1637_BIT_DELAY_MIN, TM1637_BIT_DELAY_MAX);
> > +}
>
> Unneeded wrapper, just use fsleep() directly in the code with the
> comment above on each case.
>
> ...
>
> > +static void tm1637_start(struct tm1637 *tm)
> > +{
> > +       gpiod_direction_output(tm->dio, 1);
> > +       gpiod_set_value(tm->clk, 1);
> > +       tm1637_delay();
> > +       gpiod_set_value(tm->dio, 0);
> > +       tm1637_delay();
> > +       gpiod_set_value(tm->clk, 0);
> > +       tm1637_delay();
> > +}
> > +
> > +static void tm1637_stop(struct tm1637 *tm)
> > +{
> > +       gpiod_direction_output(tm->dio, 0);
> > +       gpiod_set_value(tm->clk, 1);
> > +       tm1637_delay();
> > +       gpiod_set_value(tm->dio, 1);
> > +       tm1637_delay();
> > +}
> > +
> > +static bool tm1637_write_byte(struct tm1637 *tm, u8 data)
> > +{
> > +       bool ack;
> > +       int i;
> > +
> > +       for (i =3D 0; i < 8; i++) {
> > +               gpiod_set_value(tm->clk, 0);
> > +               tm1637_delay();
> > +
> > +               if (data & BIT(i))
> > +                       gpiod_direction_input(tm->dio);
> > +               else
> > +                       gpiod_direction_output(tm->dio, 0);
> > +
> > +               tm1637_delay();
> > +               gpiod_set_value(tm->clk, 1);
> > +               tm1637_delay();
> > +       }
> > +
> > +       gpiod_set_value(tm->clk, 0);
> > +       gpiod_direction_input(tm->dio);
> > +       tm1637_delay();
> > +
> > +       gpiod_set_value(tm->clk, 1);
> > +       tm1637_delay();
> > +
> > +       ack =3D !gpiod_get_value(tm->dio);
> > +
> > +       if (!ack)
> > +               gpiod_direction_output(tm->dio, 0);
> > +
> > +       tm1637_delay();
> > +       gpiod_set_value(tm->clk, 0);
> > +
> > +       return ack;
> > +}
>
> This looks like the I2C bitbanging protocol. Have you checked that
> one? And why I2C with raw transfers can't be used? I doubt this can't
> be proper i2c peripheral driver.
>
> ...
>
> > +       if (brightness > TM1637_BRIGHTNESS_MAX + 1)
> > +               brightness =3D TM1637_BRIGHTNESS_MAX + 1;
>
> min() / max()  (from minmax.h)?
>
> ...
>
> > +       mutex_lock(&tm->lock);
>
> > +       mutex_unlock(&tm->lock);
>
> Use guard()() or scoped_guard() from cleanup.h.
>
> ...
>
> > +static struct attribute *tm1637_attrs[] =3D {
> > +       &dev_attr_message.attr,
> > +       &dev_attr_brightness.attr,
> > +       NULL};
>
> Two lines on a single one. Split.
>
> ...
>
> > +static int tm1637_probe(struct platform_device *pdev)
> > +{
> > +       struct device *dev =3D &pdev->dev;
> > +       struct tm1637 *tm;
> > +
> > +       tm =3D devm_kzalloc(dev, sizeof(*tm), GFP_KERNEL);
> > +       if (!tm)
> > +               return -ENOMEM;
> > +
> > +       tm->dev =3D dev;
> > +
> > +       tm->clk =3D devm_gpiod_get(dev, "clk", GPIOD_OUT_LOW);
> > +       if (IS_ERR(tm->clk))
> > +               return dev_err_probe(dev, PTR_ERR(tm->clk), "Failed to =
get clk GPIO\n");
> > +
> > +       tm->dio =3D devm_gpiod_get(dev, "dio", GPIOD_OUT_LOW);
> > +       if (IS_ERR(tm->dio))
> > +               return dev_err_probe(dev, PTR_ERR(tm->dio), "Failed to =
get dio GPIO\n");
>
> > +       mutex_init(&tm->lock);
>
> Use devm_mutex_init().
>
> > +       tm->brightness =3D TM1637_BRIGHTNESS_MAX + 1;
> > +
> > +       platform_set_drvdata(pdev, tm);
> > +       tm1637_update_display(tm);
> > +
> > +       return 0;
> > +}
>
> ...
>
> > +       mutex_destroy(&tm->lock);
>
> Will be gone per above.
>
> ...
>
> > +static const struct of_device_id tm1637_of_match[] =3D {
> > +       {.compatible =3D "titanmec,tm1637"},
>
> Missing spaces inside {}.
>
> > +       {}};
>
> Two lines on a single one. Please, split.
>
> --
> With Best Regards,
> Andy Shevchenko
>

