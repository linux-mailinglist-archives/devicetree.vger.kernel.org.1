Return-Path: <devicetree+bounces-224722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6E8BC73E3
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 04:53:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F16143E152F
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 02:53:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93D271A9FAF;
	Thu,  9 Oct 2025 02:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UIqyWg7h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681F4147C9B
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 02:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759978384; cv=none; b=cE3pIxB+IUmrHOSzwc4iGxjL9dGnSWxe7fifv6H0Zk6llti18cEFhIxbCnJUs2SK2cjP5njHg7uZK51lGn42wZtHHyMXzmCPlWPR96W6eXwzlPSD2AMvATm5Jg6lJKO/lt1ZGx5mFzqhBbxl5bYvLtwQIUyGJUPNbfLgtInMoZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759978384; c=relaxed/simple;
	bh=DQvSiPW6omkDcXg0/t67Bzq8UFmsbKyoN8TdwS08GSU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jHKhHY8SjPX926O1ZzTQzG6rTTkNttci1NsWecaERYoj4VonVHMqadeAg3uVGPIQ+o8yEqmFDzd9ThkPt0OBsiCUBzXkAnzezd4nGAKxkKYoVI6FUr4BAvxR5lnajMycJX2Sm52ykkpbZIXlMyJ+kSpJaXAoG1VI++j3lHTL8po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UIqyWg7h; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b3da3b34950so70308066b.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 19:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759978380; x=1760583180; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dtYP+3Jd5yeKlx5FWWzJNjaDsE4vTKF5pyfBDOkCk1I=;
        b=UIqyWg7hN5i+lRcJpItohKAqMG/jjvGkyRQ1vjODutseHdknT7+R8l4aXq8e7uzu04
         HEEu1+kO0eQUJ2IRaDCNL8nVjFrdUQ4C6TBNivtIoKTlvwSx92wePzFCVTDFkrTjZAZc
         PierhkUN/RHPu645xVkfUe3pZIoW7jmLHDj46Fxkm4z4xJDJPJDZVF5sDhN/x6b74Xs4
         eoBA16XLABHC8lTi6s/Z8QE3HikrN7oxQuwG/Z3OyTifswGcjpDXzWk1Xf/6aTiQrwFd
         gUGwnLk4uA0Rw5xhF5KDMDc8F5Ag0EOzhVa/CgZL/1mfvHsFDXhxi3aglzT1Aqy4nhBL
         yFWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759978380; x=1760583180;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dtYP+3Jd5yeKlx5FWWzJNjaDsE4vTKF5pyfBDOkCk1I=;
        b=sowEfyJ9sOcVeDxI/1+JPHlObNN5VtO9rydO4R5TAKQxNwLE1svocmca5qSa9dolas
         FZj+N5lfQb786SyBEHeNwsqRf3F8SuZcVG5RG0XkZaimgHyHzb9tGT6ec+4nCF0PgGeA
         6JhYo930yDA8VGOV3KMG2ulxadl2BF9Kjq4jQc1QXTKMRF92LBtHnfCn92DwQGjhznuH
         C2iLql52SCAvAWIOpH9yhNbahEsGiQCqKklxZNz76RhztFi03SKwoIctaA8mcZBskwsz
         tosvEAkQVfQwz7m9Pkn05GXhWgfHSuqQvz/OBrGzVp2CkAkle8cVzHIA3+x7XU3I40Wb
         T5yg==
X-Forwarded-Encrypted: i=1; AJvYcCUupaicBrhrqRoLhTlJlDWWVFrAiO35Iw80DQnRsQ/qYTjNa6wwTmOhybti4SLo4ur6u3sEAVjXYaQN@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2+7HVXgCBBhRGYCbBKS98QOLLMHNWpUU4z/KXlesn2BVESIcG
	OMf4yX3+JE4/6jKlXgg/F9n/chEek+c2kDNbjhBhPsa7EoW52M+EjH8+6MLvf5B5+ewpkxA9XSa
	hs38enuwELu43DX091rQkyHvopb+UzHM=
X-Gm-Gg: ASbGnctfe3ZPBag0M15V/iia3RndfoGpzqJr5Y/yY/e/keRLO3r11dLXhlgSyZoQ9uc
	6dZkRgsbnC/AN6487e/igh0rF07S5YxlForLX660Mowv9roKW1Nlvn3ekntIoaKVtLgw7qS/uYG
	XS5laZDlcXfR0tNzqs8vopp/coaCad05n6Tum4YaePI4VQ1Pi7ZCnbhg2MLkHR/wQHJXxyBeCUb
	otEXZ/NhV/rrhVKy1ZUTQfz600hvb06jw==
X-Google-Smtp-Source: AGHT+IFKD7kMQHOm1a4qgWhdq3lfMUq1fnsfbv1M5SB3kAfjZgbYmQTxi6SEVcCEdOc4V2jqT301qvxUvGD2y+r8DNg=
X-Received: by 2002:a17:907:7e82:b0:b48:44bc:44de with SMTP id
 a640c23a62f3a-b50abfd67a2mr603608266b.51.1759978379357; Wed, 08 Oct 2025
 19:52:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1758676290.git.zhoubinbin@loongson.cn> <9823e7afe713450e210dab9dba6fa18683dc1fe0.1758676290.git.zhoubinbin@loongson.cn>
 <9cd368a1-4ba2-3b96-5cfe-0e600e77a3fe@linux.intel.com>
In-Reply-To: <9cd368a1-4ba2-3b96-5cfe-0e600e77a3fe@linux.intel.com>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Thu, 9 Oct 2025 10:52:46 +0800
X-Gm-Features: AS18NWAPP0659WSwKhaNs44ggQkxkSSAKKRn-C1M2Ku6cKJWGK3KMEaxMYsYV34
Message-ID: <CAMpQs4KS=hd3zvj5KYH7vBXpbEhPLmS61H9dLgnRpBpH+04ChA@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] serial: 8250: Add Loongson uart driver support
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Haowei Zheng <zhenghaowei@loongson.cn>, 
	Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-serial <linux-serial@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ilpo:

Sorry for the late reply and thanks for your detailed review.

On Tue, Sep 30, 2025 at 7:58=E2=80=AFPM Ilpo J=C3=A4rvinen
<ilpo.jarvinen@linux.intel.com> wrote:
>
> On Wed, 24 Sep 2025, Binbin Zhou wrote:
>
> > Add the driver for on-chip UART used on Loongson family chips.
> >
> > The hardware is similar to 8250, but there are the following
> > differences:
> >  - Some chips (such as Loongson-2K2000) have added a fractional divisio=
n
> >    register to obtain the required baud rate accurately, so the
> >    {get,set}_divisor callback is overridden.
> >  - Due to hardware defects, quirk handling is required for
> >    UART_MCR/UART_MSR.
> >
> > Co-developed-by: Haowei Zheng <zhenghaowei@loongson.cn>
> > Signed-off-by: Haowei Zheng <zhenghaowei@loongson.cn>
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  drivers/tty/serial/8250/8250_loongson.c | 202 ++++++++++++++++++++++++
> >  drivers/tty/serial/8250/8250_port.c     |   8 +
> >  drivers/tty/serial/8250/Kconfig         |  10 ++
> >  drivers/tty/serial/8250/Makefile        |   1 +
> >  include/uapi/linux/serial_core.h        |   1 +
> >  5 files changed, 222 insertions(+)
> >  create mode 100644 drivers/tty/serial/8250/8250_loongson.c
> >
> > diff --git a/drivers/tty/serial/8250/8250_loongson.c b/drivers/tty/seri=
al/8250/8250_loongson.c
> > new file mode 100644
> > index 000000000000..a114b4e6d5c3
> > --- /dev/null
> > +++ b/drivers/tty/serial/8250/8250_loongson.c
> > @@ -0,0 +1,202 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +/*
> > + * Serial Port driver for Loongson family chips
> > + *
> > + * Copyright (C) 2020-2025 Loongson Technology Corporation Limited
> > + */
> > +
> > +#include <linux/bitfield.h>
> > +#include <linux/module.h>
> > +#include <linux/property.h>
> > +#include <linux/mod_devicetable.h>
> > +#include <linux/reset.h>
> > +
> > +#include "8250.h"
> > +
> > +/* Divisor Latch Fraction Register */
> > +#define LOONGSON_UART_DLF            0x2
> > +
> > +/* Flags */
> > +#define LOONGSON_UART_HAS_FRAC               BIT(0)
> > +#define LOONGSON_UART_QUIRK_MCR              BIT(1)
> > +#define LOONGSON_UART_QUIRK_MSR              BIT(2)
> > +
> > +#define LS2K0500_UART_FLAG   (LOONGSON_UART_QUIRK_MCR | LOONGSON_UART_=
QUIRK_MSR)
> > +#define LS2K1500_UART_FLAG   (LOONGSON_UART_HAS_FRAC | LOONGSON_UART_Q=
UIRK_MCR)
> > +
> > +struct loongson_uart_data {
> > +     int line;
> > +     int mcr_invert;
> > +     int msr_invert;
> > +     struct reset_control *rst;
> > +};
> > +
> > +static unsigned int serial_fixup(struct uart_port *p, unsigned int off=
set, unsigned int val)
> > +{
> > +     struct loongson_uart_data *ddata =3D p->private_data;
> > +
> > +     if (offset =3D=3D UART_MCR)
> > +             val ^=3D ddata->mcr_invert;
> > +
> > +     if (offset =3D=3D UART_MSR)
> > +             val ^=3D ddata->msr_invert;
> > +
> > +     return val;
> > +}
> > +
> > +static u32 loongson_serial_in(struct uart_port *p, unsigned int offset=
)
> > +{
> > +     unsigned int val;
> > +
> > +     val =3D readb(p->membase + (offset << p->regshift));
> > +
> > +     return serial_fixup(p, offset, val);
> > +}
> > +
> > +static void loongson_serial_out(struct uart_port *p, unsigned int offs=
et, unsigned int value)
> > +{
> > +     offset <<=3D p->regshift;
> > +     writeb(serial_fixup(p, offset, value), p->membase + offset);
>
> This would be cleaner if you do that serial_fixup() on a preceeding line.

ok. I will split serial_fixup() on a preceding line.
>
> Include for writeb()?

#include <linux/io.h>
>
> > +}
> > +
> > +static unsigned int loongson_frac_get_divisor(struct uart_port *port, =
unsigned int baud,
> > +                                           unsigned int *frac)
> > +{
> > +     unsigned int quot;
> > +
> > +     quot =3D DIV_ROUND_CLOSEST((port->uartclk << 4), baud);
>
> Missing include.

#include <linux/math.h>
>
> > +     *frac =3D FIELD_GET(GENMASK(7, 0), quot);
> > +
> > +     return FIELD_GET(GENMASK(15, 8), quot);
>
> Please name the fields properly with defines.
>
> You're also missing #include for GENMASK().

#include <linux/bits.h>
>
> > +}
> > +
> > +static void loongson_frac_set_divisor(struct uart_port *port, unsigned=
 int baud,
> > +                                   unsigned int quot, unsigned int quo=
t_frac)
> > +{
> > +     struct uart_8250_port *up =3D up_to_u8250p(port);
> > +
> > +     serial_port_out(port, UART_LCR, up->lcr | UART_LCR_DLAB);
> > +     serial_dl_write(up, quot);
> > +     serial_port_out(port, LOONGSON_UART_DLF, quot_frac);
> > +}
> > +
> > +static int loongson_uart_probe(struct platform_device *pdev)
> > +{
> > +     struct device *dev =3D &pdev->dev;
> > +     struct uart_8250_port uart =3D {};
> > +     struct loongson_uart_data *ddata;
> > +     struct resource *res;
> > +     unsigned int flags;
> > +     int ret;
> > +
> > +     ddata =3D devm_kzalloc(dev, sizeof(*ddata), GFP_KERNEL);
> > +     if (!ddata)
> > +             return -ENOMEM;
> > +
> > +     res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +     if (!res)
> > +             return -ENODEV;
> > +
> > +     uart.port.irq =3D platform_get_irq(pdev, 0);
> > +     if (uart.port.irq < 0)
> > +             return -EINVAL;
> > +
> > +     device_property_read_u32(dev, "clock-frequency", &uart.port.uartc=
lk);
> > +
> > +     spin_lock_init(&uart.port.lock);
> > +     uart.port.flags =3D UPF_SHARE_IRQ | UPF_FIXED_PORT | UPF_FIXED_TY=
PE | UPF_IOREMAP;
> > +     uart.port.iotype =3D UPIO_MEM;
> > +     uart.port.regshift =3D 0;
> > +     uart.port.dev =3D dev;
> > +     uart.port.type =3D PORT_LOONGSON;
> > +     uart.port.private_data =3D ddata;
> > +
> > +     uart.port.mapbase =3D res->start;
> > +     uart.port.mapsize =3D resource_size(res);
> > +     uart.port.serial_in =3D loongson_serial_in;
> > +     uart.port.serial_out =3D loongson_serial_out;
> > +
> > +     flags =3D (uintptr_t)device_get_match_data(dev);
>
> Perhaps flags should be unsigned long?
>
> > +     if (flags & LOONGSON_UART_HAS_FRAC) {
> > +             uart.port.get_divisor =3D loongson_frac_get_divisor;
> > +             uart.port.set_divisor =3D loongson_frac_set_divisor;
> > +     }
> > +
> > +     if (flags & LOONGSON_UART_QUIRK_MCR)
> > +             ddata->mcr_invert |=3D (UART_MCR_RTS | UART_MCR_DTR);
> > +
> > +     if (flags & LOONGSON_UART_QUIRK_MSR)
> > +             ddata->msr_invert |=3D (UART_MSR_CTS | UART_MSR_DSR);
>
> I think it would be better to put these invert masks directly into a
> struct which is then put into .data. LOONGSON_UART_HAS_FRAC can be bool
> in that struct.

I attempted the following refactoring:

struct loongson_uart_ddata {
        bool has_frac;
        u8 mcr_invert;
        u8 msr_invert;
};

static const struct loongson_uart_ddata ls2k0500_uart_data {
        .has_frac =3D false,
        .mcr_invert =3D UART_MCR_RTS | UART_MCR_DTR,
        .msr_invert =3D UART_MSR_CTS | UART_MSR_DSR,
};

static const struct loongson_uart_ddata ls2k1500_uart_data {
        .has_frac =3D true,
        .mcr_invert =3D UART_MCR_RTS | UART_MCR_DTR,
        .msr_invert =3D 0,
};

struct loongson_uart_priv {
        int line;
        struct clk *clk;
        struct resource *res;
        struct reset_control *rst;
        struct loongson_uart_ddata *ddata;
};

.............
In loongson_uart_probe():
       priv->ddata =3D device_get_match_data(dev);

        if (priv->ddata->has_frac) {
                port->get_divisor =3D loongson_frac_get_divisor;
                port->set_divisor =3D loongson_frac_set_divisor;
        }


.............
static const struct of_device_id loongson_uart_of_ids[] =3D {
        { .compatible =3D "loongson,ls2k0500-uart", .data =3D ls2k0500_uart=
_data },
        { .compatible =3D "loongson,ls2k1500-uart", .data =3D ls2k1500_uart=
_data },
        { },
};
>
> > +     ddata->rst =3D devm_reset_control_get_optional_shared(dev, NULL);
> > +     if (IS_ERR(ddata->rst))
> > +             return PTR_ERR(ddata->rst);
> > +
> > +     ret =3D reset_control_deassert(ddata->rst);
> > +     if (ret)
> > +             return ret;
> > +
> > +     ret =3D serial8250_register_8250_port(&uart);
> > +     if (ret < 0) {
> > +             reset_control_assert(ddata->rst);
> > +             return ret;
> > +     }
> > +
> > +     ddata->line =3D ret;
> > +     platform_set_drvdata(pdev, ddata);
> > +
> > +     return 0;
> > +}
> > +
> > +static void loongson_uart_remove(struct platform_device *pdev)
> > +{
> > +     struct loongson_uart_data *ddata =3D platform_get_drvdata(pdev);
> > +
> > +     serial8250_unregister_port(ddata->line);
> > +     reset_control_assert(ddata->rst);
> > +}
> > +
> > +static int loongson_uart_suspend(struct device *dev)
> > +{
> > +     struct loongson_uart_data *ddata =3D dev_get_drvdata(dev);
> > +
> > +     serial8250_suspend_port(ddata->line);
> > +
> > +     return 0;
> > +}
> > +
> > +static int loongson_uart_resume(struct device *dev)
> > +{
> > +     struct loongson_uart_data *data =3D dev_get_drvdata(dev);
> > +
> > +     serial8250_resume_port(data->line);
> > +
> > +     return 0;
> > +}
> > +
> > +static DEFINE_SIMPLE_DEV_PM_OPS(loongson_uart_pm_ops, loongson_uart_su=
spend,
> > +                             loongson_uart_resume);
>
> Include? Please check if you miss even more includes beyond those I've
> highlighted here.

#include <linux/pm.h>

I will check all missed include files.
>
> > +static const struct of_device_id loongson_uart_of_ids[] =3D {
> > +     { .compatible =3D "loongson,ls2k0500-uart", .data =3D (void *)LS2=
K0500_UART_FLAG },
> > +     { .compatible =3D "loongson,ls2k1500-uart", .data =3D (void *)LS2=
K1500_UART_FLAG },
> > +     { /* sentinel */ },
>
> Nit, no need for comma in the terminator entry.

ok..
>
> > +};
> > +MODULE_DEVICE_TABLE(of, loongson_uart_of_ids);
> > +
> > +static struct platform_driver loongson_uart_driver =3D {
> > +     .probe =3D loongson_uart_probe,
> > +     .remove =3D loongson_uart_remove,
> > +     .driver =3D {
> > +             .name =3D "loongson-uart",
> > +             .pm =3D pm_ptr(&loongson_uart_pm_ops),
> > +             .of_match_table =3D loongson_uart_of_ids,
> > +     },
> > +};
> > +
> > +module_platform_driver(loongson_uart_driver);
> > +
> > +MODULE_DESCRIPTION("Loongson UART driver");
> > +MODULE_AUTHOR("Loongson Technology Corporation Limited.");
> > +MODULE_LICENSE("GPL");
> > diff --git a/drivers/tty/serial/8250/8250_port.c b/drivers/tty/serial/8=
250/8250_port.c
> > index 719faf92aa8a..53efe841656f 100644
> > --- a/drivers/tty/serial/8250/8250_port.c
> > +++ b/drivers/tty/serial/8250/8250_port.c
> > @@ -310,6 +310,14 @@ static const struct serial8250_config uart_config[=
] =3D {
> >               .rxtrig_bytes   =3D {1, 8, 16, 30},
> >               .flags          =3D UART_CAP_FIFO | UART_CAP_AFE,
> >       },
> > +     [PORT_LOONGSON] =3D {
> > +             .name           =3D "Loongson",
> > +             .fifo_size      =3D 16,
> > +             .tx_loadsz      =3D 16,
> > +             .fcr            =3D UART_FCR_ENABLE_FIFO | UART_FCR_R_TRI=
G_10,
> > +             .rxtrig_bytes   =3D {1, 4, 8, 14},
> > +             .flags          =3D UART_CAP_FIFO,
> > +     },
>
> This is exactly identical to PORT_16550A. Just use PORT_16550A instead of
> adding a new one unnecessarily.

OK. I will drop this part and use PORT_16550A in 8250_loongson driver.
>
> --
>  i.
>
> >  };
> >
> >  /* Uart divisor latch read */
> > diff --git a/drivers/tty/serial/8250/Kconfig b/drivers/tty/serial/8250/=
Kconfig
> > index f64ef0819cd4..98236b3bec10 100644
> > --- a/drivers/tty/serial/8250/Kconfig
> > +++ b/drivers/tty/serial/8250/Kconfig
> > @@ -468,6 +468,16 @@ config SERIAL_8250_OMAP_TTYO_FIXUP
> >         not booting kernel because the serial console remains silent in=
 case
> >         they forgot to update the command line.
> >
> > +config SERIAL_8250_LOONGSON
> > +     tristate "Loongson 8250 based serial port"
> > +     depends on SERIAL_8250
> > +     depends on LOONGARCH || COMPILE_TEST
> > +     help
> > +       If you have a machine based on LoongArch CPU you can enable
> > +       its onboard serial ports by enabling this option. The option
> > +       is applicable to both devicetree and ACPI, say Y to this option=
.
> > +       If unsure, say N.
> > +
> >  config SERIAL_8250_LPC18XX
> >       tristate "NXP LPC18xx/43xx serial port support"
> >       depends on SERIAL_8250 && OF && (ARCH_LPC18XX || COMPILE_TEST)
> > diff --git a/drivers/tty/serial/8250/Makefile b/drivers/tty/serial/8250=
/Makefile
> > index 513a0941c284..e318a3240789 100644
> > --- a/drivers/tty/serial/8250/Makefile
> > +++ b/drivers/tty/serial/8250/Makefile
> > @@ -38,6 +38,7 @@ obj-$(CONFIG_SERIAL_8250_HP300)             +=3D 8250=
_hp300.o
> >  obj-$(CONFIG_SERIAL_8250_HUB6)               +=3D 8250_hub6.o
> >  obj-$(CONFIG_SERIAL_8250_INGENIC)    +=3D 8250_ingenic.o
> >  obj-$(CONFIG_SERIAL_8250_IOC3)               +=3D 8250_ioc3.o
> > +obj-$(CONFIG_SERIAL_8250_LOONGSON)   +=3D 8250_loongson.o
> >  obj-$(CONFIG_SERIAL_8250_LPC18XX)    +=3D 8250_lpc18xx.o
> >  obj-$(CONFIG_SERIAL_8250_LPSS)               +=3D 8250_lpss.o
> >  obj-$(CONFIG_SERIAL_8250_MEN_MCB)    +=3D 8250_men_mcb.o
> > diff --git a/include/uapi/linux/serial_core.h b/include/uapi/linux/seri=
al_core.h
> > index 9c007a106330..607cf060a72a 100644
> > --- a/include/uapi/linux/serial_core.h
> > +++ b/include/uapi/linux/serial_core.h
> > @@ -31,6 +31,7 @@
> >  #define PORT_ALTR_16550_F128 28 /* Altera 16550 UART with 128 FIFOs */
> >  #define PORT_RT2880  29      /* Ralink RT2880 internal UART */
> >  #define PORT_16550A_FSL64 30 /* Freescale 16550 UART with 64 FIFOs */
> > +#define PORT_LOONGSON        31      /* Loongson 16550 UART */
> >
> >  /*
> >   * ARM specific type numbers.  These are not currently guaranteed
> >


--=20
Thanks.
Binbin

