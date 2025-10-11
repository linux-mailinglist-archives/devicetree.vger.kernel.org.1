Return-Path: <devicetree+bounces-225612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D64A4BCF679
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 16:11:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D9318189AA61
	for <lists+devicetree@lfdr.de>; Sat, 11 Oct 2025 14:12:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E14CC27AC54;
	Sat, 11 Oct 2025 14:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fy3010KF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CECE277CA5
	for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 14:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760191898; cv=none; b=f5l5f9uBQp6vsP0DOmfyDAsCaoZ76b5se+WzFkZfW4r3UBPjyughTYukesGIDw1cLXEwMz+DG8KBZCk09mJhMwFcbbcQdu/k3MyHGiG8yC4G7DeQDzdO3baNI8ICXoF1LJ3SgHaJ3m7AwWHPx8z0L+/oxQNGX+mrKmYWjGoCKzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760191898; c=relaxed/simple;
	bh=8wvRyvMl7jbmibuSMl9finBX9MZefBMDP35JDHA7Rgo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aYg9wMoXSjWoLFSKV0blKbR2tF8OQpTp6itU119Lhiwz5whB0KZXkEgd5NYT077zk+TfBys1iiclUSkGLZsbmofDFLS9C0XSC/zXnMpukOjFD3YcWkU9M7O+/GwrShUC8deY2ia7qkxqaYfwH0jDdl4iv3HspUNh20UHmTrpLZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fy3010KF; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b3d196b7eeeso469063466b.0
        for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 07:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760191895; x=1760796695; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fiqYX67a29+7/BrGLoUqx9B7lcR7QhRetducBf0jPIs=;
        b=fy3010KFEbIIQPVKIE+dQ8ImUPrfV8Gsnbx1JCwulIr0Wn25ne8xu4FRV2qHVNOIcm
         RLpiao1T/mrJShlehDWPu0+Fu/6fmpDbyplbi5GOqfCXu50OGNgCqQAtPncfBQvuzK5h
         aHCMmJmFBSsD2xeB+e0SxdVOjGx/ATJVnpvrwENEIMP/DcrxbFS/Fegs1k/pnhJqvuSS
         Y+cZ/kL7TVJnGsOIpJyLNWx7y2P2tHvDKUIj4pWZSnJcmdycdumOGVE3zLd0DUawo7aa
         pHeVkod4zAyLx5wmQlpgAbT7isDhksG6hSL6Zcw7JKsLiLqDFJxywew4UbtvsATBkbsq
         MrWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760191895; x=1760796695;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fiqYX67a29+7/BrGLoUqx9B7lcR7QhRetducBf0jPIs=;
        b=EiMni4BEsQAcdPvK8EjUcj6L5CIxLDmkgBXgcyE3b1RisjCktZSGMxyilENoVFeePE
         NmWVFT04bvArxUp75Ad4X9gNa/fRE8zCPAreKKxQ7JfXJIWyx4sIekIwNU9vbiGv/lJZ
         1eoRAAby0hPKulhqJxWg/RtjpmVb3VKpFTI9AUDp8U8Jzn3Oh2IbmAu+IBAO6Kw4SD/e
         xjafLg/k8mpZG/VUm2I+2BdphWiVozzw9BhvvakxA+DAZUV/UwFpWGZ94IE3tgLLDHaq
         Px+70TfDcNkZ9nDVnqLFN3iCANzMVCQR7MpZqPmRyqLb9E1ZNgVHYLDCtMhsInwGfRUu
         TPdQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2OU8FNJWhV1r51z6XtQ0vi1tcwtiu/jMpfsSbXWdgza0ui2aVV4MV1mqF5m7NE62+bONGOp9QPW4W@vger.kernel.org
X-Gm-Message-State: AOJu0YyfntqSgZzGIvmr7f3uP1XRjtserZPrVHivd+KEzscEMP5vnXyq
	8stVhj2u022jxLupD5eSYdMr9UCNBn3htsmPl2Iw1FIJY23u29H18okk7fSLIGzHBW3J2Q7RtQp
	jx8rtrDVRg6FCStp48qAWV4MC8c4NeUg=
X-Gm-Gg: ASbGncv2SQV88xwoNxCIJQIsZbyprJpIfXAYAyhczy/TwDEE3qy/XFto3/1aylqeo/W
	RhZuKcXJv+qQpjO2z6uP5NeWUQNzCDwt7rt3FyxFI0dOIaM4JRLk/BHyS3EAeYu3knlXLTmsX+Q
	qQKtyDU61l53sgb9AhJkg09U6xiD0cIvSvpg7EqpRsTretb4xGAOcwKYfKtc4vWxawuN5MYnIxB
	dOTG7pLHp2dJTph0Y1VHQJuGBcxERQDHFv0
X-Google-Smtp-Source: AGHT+IF8pjchv/mLl7+6Bq4644/t2EFee/ZuJaS1F0ES+A/Y0PgYXqbc3bUen3DrJjpCgXHVWfuyFd4izNg1Swfe2yE=
X-Received: by 2002:a17:906:6a1f:b0:b41:660:13b8 with SMTP id
 a640c23a62f3a-b50aba9ebf7mr1710587566b.31.1760191895287; Sat, 11 Oct 2025
 07:11:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1760184859.git.akhilesh@ee.iitb.ac.in> <8c202e7ccd332b26217d529a7a73b7a3ef0726ea.1760184859.git.akhilesh@ee.iitb.ac.in>
In-Reply-To: <8c202e7ccd332b26217d529a7a73b7a3ef0726ea.1760184859.git.akhilesh@ee.iitb.ac.in>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 11 Oct 2025 17:10:58 +0300
X-Gm-Features: AS18NWCfBEuMNLlSQQ2bxdbOxJ7GeYu7t2Z-7mVT0pXpifK-ZyZxhMOzIQzkjfU
Message-ID: <CAHp75VdGJfMALGOFvkOW=JZ0yHE2QbRSzNs2Xd42-Weec1GmQw@mail.gmail.com>
Subject: Re: [PATCH 2/2] iio: pressure: adp810: Add driver for adp810 sensor
To: Akhilesh Patil <akhilesh@ee.iitb.ac.in>
Cc: jic23@kernel.org, dlechner@baylibre.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, nuno.sa@analog.com, andy@kernel.org, 
	marcelo.schmitt1@gmail.com, vassilisamir@gmail.com, salah.triki@gmail.com, 
	skhan@linuxfoundation.org, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	akhileshpatilvnit@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 11, 2025 at 3:25=E2=80=AFPM Akhilesh Patil <akhilesh@ee.iitb.ac=
.in> wrote:
>
> Add driver for Aosong adp810 differential pressure and
> temperature sensor. This sensor provides I2C interface for

an I=C2=B2C

> reading data. Calculate CRC of the data received using standard
> crc8 library to verify data integrity.
>
> Tested on TI am62x sk board with sensor connected at i2c-2

Missing period at the end.

...

> +AOSONG ADP810 DIFFERENTIAL PRESSURE SENSOR DRIVER
> +M:     Akhilesh Patil <akhilesh@ee.iitb.ac.in>
> +L:     linux-iio@vger.kernel.org
> +S:     Maintained
> +F:     Documentation/devicetree/bindings/iio/pressure/aosong,adp810.yaml
> +F:     drivers/iio/pressure/adp810.c

Some tools will report an orphaned yaml file if you apply patch 1
without patch 2.

...

> +config ADP810
> +       tristate "Aosong adp810 differential pressure and temperature sen=
sor"
> +       depends on I2C
> +       select CRC8
> +       help
> +         Say yes here to build adp810 differential pressure and temperat=
ure
> +         sensor driver. ADP810 can measure pressure range up to 500Pa.
> +         It supports I2C interface for data communication.

Same as in the commit message.

> +         To compile this driver as a module, choose M here: the module w=
ill
> +         be called adp810

...

>  obj-$(CONFIG_IIO_ST_PRESS_I2C) +=3D st_pressure_i2c.o
>  obj-$(CONFIG_IIO_ST_PRESS_SPI) +=3D st_pressure_spi.o
> +obj-$(CONFIG_ADP810) +=3D adp810.o

Is Makefile ordered in terms of files and/or configuration options?


> +#include <linux/module.h>
> +#include <linux/delay.h>
> +#include <linux/i2c.h>
> +#include <linux/iio/iio.h>
> +#include <linux/iio/sysfs.h>
> +#include <linux/crc8.h>

Please,
1) keep it alphabetically ordered;
2) follow the IWYU (Include What You Use) principle.

...

> +/* Time taken in ms by sensor to do measurements after triggering.

/*
 * Wrong multi-line comment format. You
 * may use this as a reference.
 */

> + * As per datahseet, 10ms is sufficient but we define 30 for better marg=
in

datasheet

Please, respect grammar and punctuation, i.e. again as in the commit
message you made a mistake.

...

> +#define ADP810_MEASURE_LATENCY         30

What's the unit of this value?

...

This needs a comment to explain the choice of this. E.g., reference to
the Datasheet section / chapter.

> +#define ADP810_CRC8_POLYNOMIAL         0x31

...

> +struct adp810_read_buf {
> +       u8 dp_msb;
> +       u8 dp_lsb;
> +       u8 dp_crc;
> +       u8 tmp_msb;
> +       u8 tmp_lsb;
> +       u8 tmp_crc;
> +       u8 sf_msb;
> +       u8 sf_lsb;
> +       u8 sf_crc;
> +} __packed;

Why __packed?

...

> +struct adp810_data {
> +       struct i2c_client *client;
> +       /* Use lock to synchronize access to device during read sequence =
*/
> +       struct mutex lock;
> +};

Is there a deliberate choice to not use regmap I=C2=B2C APIs?

...

> +       /* Wait for sensor to aquire data */

Spell-check. Also the comment is semi-useless, add the reference to
the datasheet or even cite a part of it to explain this.

> +       msleep(ADP810_MEASURE_LATENCY);

...

> +       mutex_lock(&data->lock);
> +       ret =3D adp810_measure(data, &buf);
> +       mutex_unlock(&data->lock);
> +
> +       if (ret) {
> +               dev_err(&indio_dev->dev, "Failed to read from device\n");
> +               return ret;
> +       }

Instead, include cleanup,h and use scoped_guard() (and possible
guard()() in some other places, but first answer why not regmap).

...

> +       case IIO_CHAN_INFO_RAW:
> +               switch (chan->type) {
> +               case IIO_PRESSURE:
> +                       *val =3D buf.dp_msb << 8 | buf.dp_lsb;

Those have to be properly defined to begin with, i.e. __be16. With
that done, use existing conversion helpers from asm/byteorder.h.

> +                       return IIO_VAL_INT;
> +               case IIO_TEMP:
> +                       *val =3D buf.tmp_msb << 8 | buf.tmp_lsb;

Ditto and so on...

> +                       return IIO_VAL_INT;
> +               default:
> +                       return -EINVAL;
> +               }

...

> +       default:
> +               return -EINVAL;
> +       }
> +
> +       return -EINVAL;

Why is dead code required?

...

> +       mutex_init(&data->lock);

devm

--=20
With Best Regards,
Andy Shevchenko

