Return-Path: <devicetree+bounces-33757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 763A08363FD
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 14:08:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CF847B20FC5
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 13:00:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 912253BB3A;
	Mon, 22 Jan 2024 13:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="rg9VKTYR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6F33BB4D
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 13:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705928421; cv=none; b=mlEHvRK9rL/tcHCrj//ge81ln7zp6JaFUerhvH3o1zX8wwbXARo92d/JcTBttqLOtQp2ICIqHUEkbfUQ8HNSwLjP0FIAdjtmtonuMcFYW1gOfnlwLbKlpBNo7Gog4krqkD4njOy5cD0YzqAbPl3rK+UuBMq2z6eLC4Bi0GGIsKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705928421; c=relaxed/simple;
	bh=ahGtvFaputZwuFZ8rVL034FxyRm3g+H89Syq0qpxbsg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lVmRKPxkTITWvXnhnxpV8EVxBaH+iAlJgTKdxuDoExSLUFjh7dgGm3RiuzZOZxDYS8iSxzmoxUAtQ9AbjlhK1nys3RtpVWY/oZTqGX08cgC9witRsLHHHkHWYzlEG2KokdFCPAZTqrotzT6Z7WpfoYUjv9KyUKpfzAm1q1QbHR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=rg9VKTYR; arc=none smtp.client-ip=209.85.217.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-4698c58c589so606753137.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 05:00:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1705928419; x=1706533219; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7UVF6VRlL7jBDtamTYbW1rZwrgsP2BU/YLQdNr3yats=;
        b=rg9VKTYR0fJ9kjrPgCmjPl3eSyl2pK5LySdLdfyxP4+7ZXJxdzUQrZsft3WUD+8hq6
         03Ir2yrdAicOP13jRt7JBU07/prldHRPx0VEo2oSp5wdf71v3Tv6OwnVDf6Fc70w3jYm
         N0lcPXIQ/iP3Ejt7M+npgMNcFlYBQS3vnBAeXgY0xz6iwqjY7X2SluF91OklgM40nOR4
         UXZ/jGa6m1llfVTLcdIutDe5IgxwNQyydsmyRzXPL0B3AYs8AvwQqaKKITDNqXJfNjgp
         NQtMNoZFKaeXX4DDNBDZCP7ECXRjZgroxAbI9egM7+JV4b5K32Y0FLQPRzGmvp/h7jfZ
         jP/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705928419; x=1706533219;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7UVF6VRlL7jBDtamTYbW1rZwrgsP2BU/YLQdNr3yats=;
        b=UPFvt3tXNfKkUT9fhqR51PG7bkMoO1fbpDnjnEo0LTcnc2Zhe7H/gb2rqyxofaDun8
         yP3/qGWcA5lk/7pUvtwj/bgpeNKjpQQrq+Hdz94alVtxbeRFh3WHWCD8j3dKzT1FP3PU
         J1NNx6S9JheSVWr6e9p+baeZSDAlXsM5N7F0JZH3WnedDdq+7q5I+Ml6VAN5q26T742P
         xxatGC+LD/zh3RSEM/6y5cEo3rIgdCUQw87d7y5mUJ1UwRFDnevs+bq+ii6IX7f2AH0+
         aZmexfvQvhffWXvMj+knE0X1wYd2zPp5zbJgVZgUTmQTI/hnGZoNOpKrjckQhezVpjs+
         dTsA==
X-Gm-Message-State: AOJu0YxI3LCMJW6ZMNmfvwiMF4Y9+/jaFmDu/ix/fxlBiLVbGiUuWE8K
	5g8jGEK0DB4JmKG8tbJu/P9rYGHPxc8U6SYIc6ZnMFuAgNeFnnen9vzIjHrTFF7N9TIXwSqXFm+
	SlcsnVCLEpog1gmn7fq/N52TkYGmQVn+D9Egmzk9RVp8BkRN+
X-Google-Smtp-Source: AGHT+IHc0nWUe3FE9llG2FWpD2qTL6DIi/+E0DtCT4oL1Yx/t4nCI6zGwUTm6+wkSiMTO+Zs5jDh5S8JrYyf5lKdzk0=
X-Received: by 2002:a67:f1d7:0:b0:467:ea78:a41a with SMTP id
 v23-20020a67f1d7000000b00467ea78a41amr2045193vsm.30.1705928418671; Mon, 22
 Jan 2024 05:00:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240121103505.26475-1-kimseer.paller@analog.com> <20240121103505.26475-3-kimseer.paller@analog.com>
In-Reply-To: <20240121103505.26475-3-kimseer.paller@analog.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 22 Jan 2024 14:00:07 +0100
Message-ID: <CAMRc=MeGVAO8Fr4U5ai-OgEmX5gXeddLDKyRC+FQia1TH64m+Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] gpio: gpio-adg1414: New driver
To: Kim Seer Paller <kimseer.paller@analog.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 21, 2024 at 11:35=E2=80=AFAM Kim Seer Paller
<kimseer.paller@analog.com> wrote:
>
> The ADG1414 is a 9.5 =CE=A9 RON =C2=B115 V/+12 V/=C2=B15 V iCMOS Serially=
-Controlled
> Octal SPST Switches

Switch? (singular)

>
> Signed-off-by: Kim Seer Paller <kimseer.paller@analog.com>
> ---
>  MAINTAINERS                 |   1 +
>  drivers/gpio/Kconfig        |  10 +++
>  drivers/gpio/Makefile       |   1 +
>  drivers/gpio/gpio-adg1414.c | 141 ++++++++++++++++++++++++++++++++++++
>  4 files changed, 153 insertions(+)
>  create mode 100644 drivers/gpio/gpio-adg1414.c
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 526145e69..254ba7ea5 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -466,6 +466,7 @@ M:  Kim Seer Paller <kimseer.paller@analog.com>
>  S:     Supported
>  W:     https://ez.analog.com/linux-software-drivers
>  F:     Documentation/devicetree/bindings/gpio/gpio-adg1414.yaml
> +F:     drivers/gpio/gpio-adg1414.c
>
>  ADM1025 HARDWARE MONITOR DRIVER
>  M:     Jean Delvare <jdelvare@suse.com>
> diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
> index 1301cec94..25d467d70 100644
> --- a/drivers/gpio/Kconfig
> +++ b/drivers/gpio/Kconfig
> @@ -1728,6 +1728,16 @@ config GPIO_74X164
>           shift registers. This driver can be used to provide access
>           to more GPIO outputs.
>
> +config GPIO_ADG1414
> +       tristate "ADG1414 SPST Switch Driver"
> +       depends on SPI
> +       help
> +         Say yes here to build support for Analog Devices ADG1414 SPST
> +         Switch Driver
> +
> +         To compile this driver as a module, choose M here: the
> +         module will be called gpio-adg1414.
> +
>  config GPIO_MAX3191X
>         tristate "Maxim MAX3191x industrial serializer"
>         select CRC8
> diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
> index 9e40af196..9ab45d128 100644
> --- a/drivers/gpio/Makefile
> +++ b/drivers/gpio/Makefile
> @@ -24,6 +24,7 @@ obj-$(CONFIG_GPIO_104_IDI_48)         +=3D gpio-104-idi=
-48.o
>  obj-$(CONFIG_GPIO_104_IDIO_16)         +=3D gpio-104-idio-16.o
>  obj-$(CONFIG_GPIO_74X164)              +=3D gpio-74x164.o
>  obj-$(CONFIG_GPIO_74XX_MMIO)           +=3D gpio-74xx-mmio.o
> +obj-$(CONFIG_GPIO_ADG1414)             +=3D gpio-adg1414.o
>  obj-$(CONFIG_GPIO_ADNP)                        +=3D gpio-adnp.o
>  obj-$(CONFIG_GPIO_ADP5520)             +=3D gpio-adp5520.o
>  obj-$(CONFIG_GPIO_AGGREGATOR)          +=3D gpio-aggregator.o
> diff --git a/drivers/gpio/gpio-adg1414.c b/drivers/gpio/gpio-adg1414.c
> new file mode 100644
> index 000000000..6c0830ee2
> --- /dev/null
> +++ b/drivers/gpio/gpio-adg1414.c
> @@ -0,0 +1,141 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * ADG1414 SPST Switch Driver
> + *
> + * Copyright 2024 Analog Devices Inc.
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/gpio/driver.h>
> +#include <linux/spi/spi.h>
> +#include <linux/module.h>

Can you keep the headers in alphabetical order please?

> +#include <linux/property.h>
> +
> +#define ADG1414_MAX_DEVICES            4
> +
> +struct adg1414_state {
> +       struct spi_device               *spi;
> +       struct gpio_chip                chip;
> +       struct mutex                    lock; /* protect sensor state */

Locking here is simple enough that you could use the SPI regmap and
get it to do the serialization for you. And then you could possibly
reuse the gpio-regmap abstraction and get an even smaller footprint.

> +       u32                             buf;
> +
> +       __be32                          tx __aligned(ARCH_DMA_MINALIGN);
> +};

Please drop the tabs from the struct, I personally don't think they
add to readability.

> +
> +static void adg1414_set(struct gpio_chip *chip,
> +                       unsigned int offset,
> +                       int value)
> +{
> +       struct adg1414_state *st =3D gpiochip_get_data(chip);
> +       int ret;
> +
> +       struct spi_transfer xfer =3D {
> +               .tx_buf =3D &st->tx,
> +               .len =3D st->chip.ngpio / 8,
> +       };
> +
> +       mutex_lock(&st->lock);
> +
> +       if (value)
> +               st->buf |=3D BIT(offset);
> +       else
> +               st->buf &=3D ~BIT(offset);
> +
> +       st->tx =3D cpu_to_be32(st->buf << (32 - st->chip.ngpio));
> +
> +       ret =3D spi_sync_transfer(st->spi, &xfer, 1);
> +       if (ret)
> +               goto out;
> +
> +out:
> +       mutex_unlock(&st->lock);
> +}
> +
> +static int adg1414_get(struct gpio_chip *chip,
> +                      unsigned int offset)
> +{
> +       struct adg1414_state *st =3D gpiochip_get_data(chip);
> +       int value;
> +
> +       mutex_lock(&st->lock);
> +
> +       value =3D st->buf & BIT(offset);
> +
> +       mutex_unlock(&st->lock);
> +
> +       return value;
> +}
> +
> +static int adg1414_get_direction(struct gpio_chip *chip,
> +                                unsigned int offset)
> +{
> +       return GPIO_LINE_DIRECTION_OUT;
> +}
> +
> +static int adg1414_probe(struct spi_device *spi)
> +{
> +       struct adg1414_state *st;
> +       struct gpio_desc *reset;
> +       struct device *dev =3D &spi->dev;
> +       u32 num_devices;
> +       int ret;
> +
> +       st =3D devm_kzalloc(dev, sizeof(*st), GFP_KERNEL);
> +       if (!st)
> +               return -ENOMEM;
> +
> +       st->spi =3D spi;
> +
> +       /* Use reset pin to reset the device */
> +       reset =3D devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
> +       if (IS_ERR(reset))
> +               return dev_err_probe(dev, PTR_ERR(reset),
> +                                    "Failed to get reset gpio");
> +
> +       if (reset) {
> +               fsleep(1);
> +               gpiod_set_value_cansleep(reset, 0);
> +       }
> +
> +       num_devices =3D 1;
> +       ret =3D device_property_read_u32(dev, "#daisy-chained-devices",
> +                                      &num_devices);
> +       if (!ret) {
> +               if (!num_devices || num_devices > ADG1414_MAX_DEVICES)
> +                       return dev_err_probe(dev, ret,
> +                              "Failed to get daisy-chained-devices prope=
rty\n");
> +       }
> +
> +       st->chip.label =3D "adg1414";
> +       st->chip.parent =3D dev;
> +       st->chip.get_direction =3D adg1414_get_direction;
> +       st->chip.set =3D adg1414_set;
> +       st->chip.get =3D adg1414_get;
> +       st->chip.base =3D -1;
> +       st->chip.ngpio =3D  num_devices * 8;
> +       st->chip.can_sleep =3D true;
> +
> +       mutex_init(&st->lock);
> +
> +       return devm_gpiochip_add_data(dev, &st->chip, st);
> +}
> +
> +static const struct of_device_id adg1414_of_match[] =3D {
> +       { .compatible =3D "adi,adg1414" },
> +       { }
> +};
> +MODULE_DEVICE_TABLE(of, adg1414_of_match);
> +
> +static struct spi_driver adg1414_driver =3D {
> +       .driver =3D {
> +               .name =3D "adg1414",
> +               .of_match_table =3D adg1414_of_match,
> +       },
> +       .probe =3D adg1414_probe,
> +};
> +module_spi_driver(adg1414_driver);
> +
> +MODULE_AUTHOR("Kim Seer Paller <kimseer.paller@analog.com>");
> +MODULE_DESCRIPTION("ADG1414 SPST Switch Driver");
> +MODULE_LICENSE("GPL");
> --
> 2.34.1
>

Bart

