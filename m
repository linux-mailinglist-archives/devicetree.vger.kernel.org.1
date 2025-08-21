Return-Path: <devicetree+bounces-207329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A59BB2F323
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 11:02:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 704851C2264A
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 09:01:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E25A0284B33;
	Thu, 21 Aug 2025 09:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UiO2jxF+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1F49270572
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755766894; cv=none; b=OH/+LRvKJZf8UkVCGTfc71Z6WJdQxhuLajgjpv08r8OAkw/EErM+7N9saHzI+NnDRK+ySPKHvsNpe6qsptoDFiybigDJXF5W871W+W7RhE9la8qKivdKLcxFqb/ILv7Gt90t0QVo39Acb7pwgmOlV25+aM4LdudLFeUMSrZvfLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755766894; c=relaxed/simple;
	bh=43VjtKOxxXNDPkLZNHUOkeHBaoI742+CHnEyUgUavCo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Yti+12iV81D0IU4ythDEpOwpEpyGCGVkMSiL52fVXl0rFckY8Jef1EUUqaixeHQoRq2LA042pZn8dctNzQQU4DvDQJl7mr16wO929zupdMDyYbHsNoTLRjnXYxSzl6qRQgeTWoztmN6+jhAHyyL6G6a9sZRKHTY9driEtMg0guM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UiO2jxF+; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-55ce52b01caso736792e87.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 02:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755766890; x=1756371690; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HJiLgdHWROqB12Hg/2IJvH+nEqITMBBgtAb49NceKgg=;
        b=UiO2jxF+LbCzHY+5WTBmwVPShuq7ZTgAcdHHfEYkHAYrJgfYRs5gVTMf0Cupze0ifi
         8VLBTtku54o5T4fC+TuZwIc/EbZ8acrrxhP3LOaXviAdG+7IVcIKodKp8F2wEZbyDR0a
         VtfMVRUfmA7o0ZTiEhOpD4PtZsk2aQGwjYRocJaFt2saXiQgcpZi/8UHpnNQ5ZdQDi+A
         79DPAGePHtr+4S04Tc6rjW28/uJgdOEYRoPQfrEzXvwe2eDUzi7Pa2XArn1r+8CrX40L
         dJF44ZQl8dURTZoOjp5gMwmxUR1tGZUp0+nE06g/i3BYQ91TyhYMHJwyPCsp/bQimdDS
         sgDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755766890; x=1756371690;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HJiLgdHWROqB12Hg/2IJvH+nEqITMBBgtAb49NceKgg=;
        b=ok8hcPq21xvXemcM3rE+AIgWkg21tbveZcsObNi41478u9NoGkoLAVy03vXrUeepgg
         Lqjs2svgar6IzM3BcfhDT5eIULAaOzVmbP1aOoK64ESNECtXpuGPqL1vCUkuisO7f5qs
         Uw0DQjX+Qgj/oGTHQiaw2uicDpHoF6ld+on9trOWX1Vn1lctQxGP66Ih0zFJsl+ezb3V
         BCXJwN1RGCBA1RaA1mUOHv0P41ouoXxg7D+2X1Npg45WcWTZNfyhViFAHtD0CB1H8TKW
         F6rqyozlJDUZdMKLJI5MtAiuDA/Gpl0Axj8gbDM0ncUCmz+7GJaFl4Fsm82lUxyG0Cmg
         MN8g==
X-Forwarded-Encrypted: i=1; AJvYcCWuYyAZBpW5JchBt/67W5/HOsRjPc50UGVMXWPHYucdtvYvRDGzBF7qhl2HNjKLLc5WqzXZ7QoIcbRF@vger.kernel.org
X-Gm-Message-State: AOJu0YyrsW1YQOJ+/lKe84g6MuqT+N5icjtdLci2oVyLhKF+eZ7pRMEo
	UZD7cRIgDlUnyq/5FA5EphNuKtJY46v/ev25Wvp5hT+zj1N54V8XD+slHU6AQQvfENUrZPkO3hC
	VUX3iGiOIyW8CKulbcz5eMo9UbbjZoFTAvsoqSO/Gnw==
X-Gm-Gg: ASbGncsvyX0TTGZdWlxnSb6smSu+3GDkyGEmisOPxWTnFl/oVmsBqc7j+NJ0d3/SvXe
	EgZXjEfLmNZtO0SpGDBSaxQleZNQ0x1N4McO946D2aXW6CAFO9BoTBl3/kZVQRBKJOkGR/AU/5x
	73dQuavJBt3CsZ+QNvZ9ZgJEM6PQ9BBdKgyYzB8a5HIL8ojseRYMA4q52ztCtg+pPhEf5yJ3xMW
	0lLFmw=
X-Google-Smtp-Source: AGHT+IFbJnnVhn06jfVroEMIzVme3igeJ9POu+bHevjfLshjHAvocCiAi05+NyAeJQCwMuLXL3VFXUrBLqRgHDUA23A=
X-Received: by 2002:a05:651c:23c8:20b0:333:b9db:f998 with SMTP id
 38308e7fff4ca-33549e41ff2mr4529661fa.1.1755766889647; Thu, 21 Aug 2025
 02:01:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250818204420.794554-1-shenwei.wang@nxp.com> <20250818204420.794554-4-shenwei.wang@nxp.com>
In-Reply-To: <20250818204420.794554-4-shenwei.wang@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 21 Aug 2025 11:01:17 +0200
X-Gm-Features: Ac12FXzKbO7sUD26Sno_8xmcOgjEihVR1BbLvXDJUasi5_vpoZ4AnY5gKSX69DE
Message-ID: <CACRpkdZq25n4gZSesV8z8zrBs6kqU1a8=vwVkPBwM+hFb9JKwg@mail.gmail.com>
Subject: Re: [PATCH 3/4] gpio: imx-rpmsg: add imx-rpmsg GPIO driver
To: Shenwei Wang <shenwei.wang@nxp.com>, Bjorn Andersson <andersson@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>, 
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-imx@nxp.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Shenwei,

thanks for your patch!

On Mon, Aug 18, 2025 at 10:45=E2=80=AFPM Shenwei Wang <shenwei.wang@nxp.com=
> wrote:

> On i.MX SoCs, the system may include two processors:
>         - An MCU running an RTOS
>         - An MPU running Linux
>
> These processors communicate via the RPMSG protocol.
> The driver implements the standard GPIO interface, allowing
> the Linux side to control GPIO controllers which reside in
> the remote processor via RPMSG protocol.
>
> Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>

Since this is a first RPMSG GPIO driver, I'd like if Bj=C3=B6rn and/or
Mathieu have a look at it so I'm sure it is RPMSG-proper!

> diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
> index a437fe652dbc..2ce4e9b5225e 100644
> --- a/drivers/gpio/Kconfig
> +++ b/drivers/gpio/Kconfig
> @@ -402,6 +402,17 @@ config GPIO_ICH
>
>           If unsure, say N.
>
> +config GPIO_IMX_RPMSG
> +       tristate "NXP i.MX SoC RPMSG GPIO support"
> +       depends on IMX_REMOTEPROC && RPMSG && GPIOLIB
> +       default IMX_REMOTEPROC
> +       help
> +         Say yes here to support the RPMSG GPIO functions on i.MX SoC ba=
sed
> +         platform.  Currently supported devices: i.MX7ULP, i.MX8ULP, i.M=
X8x,
> +         and i.MX9x.
> +
> +         If unsure, say N.

This is sorted under memory-mapped GPIO, but it isn't.

Create a new submenu:

menu "RPMSG GPIO drivers"
        depends on RPMSG

And put it here as the first such driver.

No need to have a dependency on RPMSG in the GPIO_IMX_RPMSG
Kconfig entry after this.

> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/bitops.h>

bitops.h or just bits.h? Check which one you actually use.

> +#include <linux/err.h>
> +#include <linux/gpio/driver.h>
> +#include <linux/imx_rpmsg.h>
> +#include <linux/init.h>
> +#include <linux/irqdomain.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_qos.h>

Are you really using pm_qos?

> +#include <linux/rpmsg.h>
> +#include <linux/virtio.h>
> +#include <linux/workqueue.h>

(...)

> +struct imx_rpmsg_gpio_port {
> +       struct gpio_chip gc;
> +       struct irq_chip chip;

This irqchip doesn't look very immutable.

Look at other patches rewriting irqchips to be immutable
and break this out to a static const struct irq_chip with
IRQCHIP_IMMUTABLE set instead.

> +static int imx_rpmsg_gpio_get(struct gpio_chip *gc, unsigned int gpio)
> +{
> +       struct imx_rpmsg_gpio_port *port =3D gpiochip_get_data(gc);
> +       struct gpio_rpmsg_data *msg =3D NULL;
> +       int ret;
> +
> +       mutex_lock(&port->info.lock);

Please use guards for all the mutexes:

#include <linux/cleanup.h>

guard(mutex)(&port->info.lock);

and it will be released as you exit the function.

> +static int imx_rpmsg_gpio_direction_input(struct gpio_chip *gc,
> +                                         unsigned int gpio)
> +{
> +       struct imx_rpmsg_gpio_port *port =3D gpiochip_get_data(gc);
> +       struct gpio_rpmsg_data *msg =3D NULL;
> +       int ret;
> +
> +       mutex_lock(&port->info.lock);

Dito for all these instances.
(Saves you a bunch of lines!)

> +static void imx_rpmsg_irq_bus_lock(struct irq_data *d)
> +{
> +       struct imx_rpmsg_gpio_port *port =3D irq_data_get_irq_chip_data(d=
);
> +
> +       mutex_lock(&port->info.lock);
> +}

Here you need to keep the classic mutex_lock() though,
because of the irqchip locking abstraction helper.

> +static struct irq_chip imx_rpmsg_irq_chip =3D {

const

> +       .irq_mask =3D imx_rpmsg_mask_irq,
> +       .irq_unmask =3D imx_rpmsg_unmask_irq,
> +       .irq_set_wake =3D imx_rpmsg_irq_set_wake,
> +       .irq_set_type =3D imx_rpmsg_irq_set_type,
> +       .irq_shutdown =3D imx_rpmsg_irq_shutdown,
> +       .irq_bus_lock =3D imx_rpmsg_irq_bus_lock,
> +       .irq_bus_sync_unlock =3D imx_rpmsg_irq_bus_sync_unlock,

        .flags =3D IRQCHIP_IMMUTABLE,

probably also:

         GPIOCHIP_IRQ_RESOURCE_HELPERS,

?

I think you want to properly mark GPIO lines as used for
IRQs!

> +static int imx_rpmsg_gpio_to_irq(struct gpio_chip *gc, unsigned int gpio=
)
> +{
> +       struct imx_rpmsg_gpio_port *port =3D gpiochip_get_data(gc);
> +       int irq;
> +
> +       irq =3D irq_find_mapping(port->domain, gpio);
> +       if (irq > 0) {
> +               irq_set_chip_data(irq, port);
> +               irq_set_chip_and_handler(irq, &port->chip, handle_level_i=
rq);
> +       }
> +
> +       return irq;
> +}

Ugh we try to to use custom to_irq() if we can...

Do you have to?

Can't you use
select GPIOLIB_IRQCHIP
and be inspired by other chips using the irqchip
helper library?

We almost always use that these days.

> +       /* create an irq domain */
> +       port->chip =3D imx_rpmsg_irq_chip;
> +       port->chip.name =3D devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s-gp=
io%d",
> +                                        pltdata->rproc_name, port->idx);
> +       port->dev =3D &pdev->dev;
> +
> +       irq_base =3D devm_irq_alloc_descs(&pdev->dev, -1, 0, IMX_RPMSG_GP=
IO_PER_PORT,
> +                                  numa_node_id());
> +       if (irq_base < 0) {
> +               dev_err(&pdev->dev, "Failed to alloc irq_descs\n");
> +               return irq_base;
> +       }
> +
> +       port->domain =3D irq_domain_create_legacy(of_node_to_fwnode(np),
> +                                               IMX_RPMSG_GPIO_PER_PORT,
> +                                               irq_base, 0,
> +                                               &irq_domain_simple_ops, p=
ort);
> +       if (!port->domain) {
> +               dev_err(&pdev->dev, "Failed to allocate IRQ domain\n");
> +               return -EINVAL;
> +       }

This also looks unnecessarily custom.

Try to use GPIOLIB_IRQCHIP.


> +static struct platform_driver imx_rpmsg_gpio_driver =3D {
> +       .driver =3D {
> +               .name =3D "gpio-imx-rpmsg",
> +               .of_match_table =3D imx_rpmsg_gpio_dt_ids,
> +       },
> +       .probe =3D imx_rpmsg_gpio_probe,
> +};
> +
> +static int __init gpio_imx_rpmsg_init(void)
> +{
> +       return platform_driver_register(&imx_rpmsg_gpio_driver);
> +}
> +
> +device_initcall(gpio_imx_rpmsg_init);

No please just do:

module_platform_driver(imx_rpmsg_gpio_driver);

Fix up  these things to begin with and then we can
look at details!

Yours,
Linus Walleij

