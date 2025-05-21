Return-Path: <devicetree+bounces-179198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C39ABF2FD
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 13:37:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CE318C3F6F
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 11:37:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66532263F28;
	Wed, 21 May 2025 11:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="IOVFI/f9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA6C21516E
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 11:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747827442; cv=none; b=N+LgOmggHM0xT3uVclR0yJtHL64mc+Bwvs4FhjwuDKKiKuND3yB1Kf/EhCxLoZkcHliedEdCMmf3+jIWAfwkLiaYMrDOYdz2yUj9gBu0vBNgo7wMIDBZ4M+yKeclnlXqdKOKxLaJ+vh6mXzFKCOvoJPJtYhgjtIkQQvViYo4r6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747827442; c=relaxed/simple;
	bh=aUwu7ynv58jsNshaez4JIBjecCiqdiO1cl4puDm3Iac=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HkSLVtiBNOufyj3xMccGqlTUNQ5hp9qM23Ujdu/iJpFdoPrjvnjMjiXNCmHR4/I4T+9OWs3+UU9TCeJyDMlG78AOPHETWk9mgd/VmQoSAXAgrL+ch4uK2MEorkMokQFSIO4t1ZlDs9HCKIZeHE+d9AUmR+gVZAN0XH1BkAjWIZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=IOVFI/f9; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-551ed0038a0so4667508e87.2
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 04:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1747827438; x=1748432238; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bq2unRbgv/HFo6D86aX5CmiwTp0UijkhqdpWvEJewKM=;
        b=IOVFI/f9EZHjLaBXQ0rzZ3jCUAuHfmyOQegFv45I1TdIeKHGa9Yt+yucH/32yskZ1f
         smItKMoZbPRYow0QlD+GZ8ETeuUflINGPA3G7oEyKh4iMka3dEv0YUXblj6ie+iWiAJS
         7MPxjKzyLfwwEnM0eyTgBEIRxWi5NCFWzFj400iiSZN4FRwVISMP7rJKNJuEkBD8zFjC
         AfRXPTrLbTniFvMu1htF376WKsgJ5WVFW3L3w3yX6+8j+7fz/Vgr51lwAujpqnxhh1Vt
         q1nP/AaG0LhhbGcxegGq9/VXtmeGsVREwNrD0xPAfIPWaRzJcGoheKvk1MGg3tCoIXHd
         ULHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747827438; x=1748432238;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bq2unRbgv/HFo6D86aX5CmiwTp0UijkhqdpWvEJewKM=;
        b=PyyD8DsxaB1nNW/zdFlQPRzwAVQkRgO91Zqjb9ekFyirIgw8OJOzeba9TXH2NtOs7d
         LKEB72ihngIQHMbo0+AuC6i4mvCVgkpzJyDY4lJfT33VYDAAFqQfqhOWQcyw9vI5pWQw
         9W5v1biGOs9u3VdNa9sgoKrtEBg87u1/jX/jriQaI54U5rFFoHRQNjB69eC0OKthux/u
         L2o0Lsp8X7QnApnaZhxxZuX8UfzCHAStbpJbITkLLGv7iJkaumq1/aEQ6ruwugfTf+Ku
         WAuWH4NeKtu7TIAybzbqQBldkkOl9GAfGHvJZmTbSEs/n9V1RQiaH4gNUvk5KHirnIV1
         HRww==
X-Forwarded-Encrypted: i=1; AJvYcCWXPo6mLCm6VTUgUfSWPygsIWOYwMFM6hNuuf//Z1b29wCCV7oBouUFC07EFodIY2B/1HAKVl9GxMaX@vger.kernel.org
X-Gm-Message-State: AOJu0Yym64h8V+b5AlnX3B/+xTh61azeuIeK3vnySETqmZRaUvycid2B
	8we6sUCuFrdTo9gPCyFB4fR7evavrqWH+D7HTGx5Sbm972197v7EeBAFwEEExjJtK/t0MT6nBrh
	yrbyd+RvDQE3geaO0ePp0vfJlpl4xRdfo96UMvTyE4A==
X-Gm-Gg: ASbGncvbw5hg1sZfCznUZ/VcYuqRPEjz9U+Lwfr966Ggbhb3ad8fL8KRKv20stdSAuq
	Ncg8IYlXyrGq2Yt+IxXfWe7t8KE/2fJ/+yWiWsFwvD5tof0G3llfB/4kppkADAechWlUkdXl9DJ
	iA5GP9DS5BQUtZZykVZIMcdZeqKkeTVYer5kQ1NM01FKtm
X-Google-Smtp-Source: AGHT+IEfFRJ1uCRuqmP4owkMAUn9fjXR/6fk30LYXalgtbRk3jIERMhcf1RDrfIEzlwpn6xl8q47m+FQo99BZm7P7qM=
X-Received: by 2002:a05:6512:22d1:b0:550:f012:96a with SMTP id
 2adb3069b0e04-550f0120cdbmr4068337e87.20.1747827438295; Wed, 21 May 2025
 04:37:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250511133939.801777-1-apatel@ventanamicro.com>
 <20250511133939.801777-14-apatel@ventanamicro.com> <aCGaKXOOWyM4JQMg@smile.fi.intel.com>
In-Reply-To: <aCGaKXOOWyM4JQMg@smile.fi.intel.com>
From: Anup Patel <apatel@ventanamicro.com>
Date: Wed, 21 May 2025 17:07:05 +0530
X-Gm-Features: AX0GCFvNwxTxwAgZLci2dmWWitFjI2kQU-baZRFrggBnWcQZjGdOl85COFKoeDQ
Message-ID: <CAK9=C2U1rzSa42qMNqxfTtjAC5RiJrhwg_32_B86nT2+xJ4Qow@mail.gmail.com>
Subject: Re: [PATCH v3 13/23] irqchip: Add driver for the RPMI system MSI
 service group
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Len Brown <lenb@kernel.org>, Sunil V L <sunilvl@ventanamicro.com>, 
	Rahul Pathak <rpathak@ventanamicro.com>, Leyfoon Tan <leyfoon.tan@starfivetech.com>, 
	Atish Patra <atish.patra@linux.dev>, Andrew Jones <ajones@ventanamicro.com>, 
	Samuel Holland <samuel.holland@sifive.com>, Anup Patel <anup@brainfault.org>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 12, 2025 at 12:20=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Sun, May 11, 2025 at 07:09:29PM +0530, Anup Patel wrote:
> > The RPMI specification defines a system MSI service group which
> > allows application processors to receive MSIs upon system events
> > such as graceful shutdown/reboot request, CPU hotplug event, memory
> > hotplug event, etc.
> >
> > Add an irqchip driver for the RISC-V RPMI system MSI service group
> > to directly receive system MSIs in Linux kernel.
>
> ...
>
> > +/*
> > + * Copyright (C) 2025 Ventana Micro Systems Inc.
> > + */
>
> It can occupy a single line instead of 3 LoCs.

Okay, I will update.

>
> ...
>
> > +#include <linux/bitfield.h>
> > +#include <linux/bitops.h>
> > +#include <linux/cpu.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/irqchip.h>
> > +#include <linux/mailbox_client.h>
> > +#include <linux/mailbox/riscv-rpmi-message.h>
> > +#include <linux/module.h>
> > +#include <linux/msi.h>
> > +#include <linux/of_irq.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/printk.h>
> > +#include <linux/smp.h>
>
> + types.h
>
> Actually this one is most clean, the rest of the patches where the new co=
de
> is introduced has semi-random list of the inclusions, please, follow the =
IWYU
> principle.

Sure, I will simplify the #includes

>
> ...
>
> > +static void rpmi_sysmsi_irq_mask(struct irq_data *d)
> > +{
> > +     struct rpmi_sysmsi_priv *priv =3D irq_data_get_irq_chip_data(d);
> > +     int ret;
> > +
> > +     ret =3D rpmi_sysmsi_set_msi_state(priv, d->hwirq, 0);
>
> Please, use the respective getter and the type:

Okay

>
>         irq_hw_number_t hwirq =3D irqd_to_hwirq(d);
>
> Ditto for all other similar cases.
>
> > +     if (ret) {
> > +             dev_warn(priv->dev, "Failed to mask hwirq %d (error %d)\n=
",
> > +                      (u32)d->hwirq, ret);
>
> No, this is wrong in two ways: usage of specified for signed value and
> passing the unsigned; using explicit casting to something unsigned.
> Instead ofa the explicit casting, find the best formatting specifier
> and use it.
>
> Ditto for  all your code.

Okay, I will update.

>
> > +     }
> > +     irq_chip_mask_parent(d);
> > +}
>
> ...
>
> > +static int rpmi_sysmsi_probe(struct platform_device *pdev)
> > +{
> > +     struct device *dev =3D &pdev->dev;
> > +     struct rpmi_sysmsi_priv *priv;
> > +     int rc;
> > +
> > +     priv =3D devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> > +     if (!priv)
> > +             return -ENOMEM;
> > +     priv->dev =3D dev;
> > +     platform_set_drvdata(pdev, priv);
> > +
> > +     /* Setup mailbox client */
> > +     priv->client.dev                =3D priv->dev;
> > +     priv->client.rx_callback        =3D NULL;
> > +     priv->client.tx_block           =3D false;
> > +     priv->client.knows_txdone       =3D true;
> > +     priv->client.tx_tout            =3D 0;
> > +
> > +     /* Request mailbox channel */
> > +     priv->chan =3D mbox_request_channel(&priv->client, 0);
> > +     if (IS_ERR(priv->chan))
> > +             return PTR_ERR(priv->chan);
> > +
> > +     /* Get number of system MSIs */
> > +     rc =3D rpmi_sysmsi_get_num_msi(priv);
> > +     if (rc < 1) {
> > +             mbox_free_channel(priv->chan);
> > +             return dev_err_probe(dev, -ENODEV, "No system MSIs found\=
n");
>
> Can rc be negative holding an error code? If so, why does the code shadow=
 that?

Ahh yes, we should print a different error message when rc < 0. I will upda=
te.

>
> > +     }
> > +     priv->nr_irqs =3D rc;
> > +
> > +     /* Set the device MSI domain if not available */
> > +     if (!dev_get_msi_domain(dev)) {
> > +             /*
> > +              * The device MSI domain for OF devices is only set at th=
e
> > +              * time of populating/creating OF device. If the device M=
SI
> > +              * domain is discovered later after the OF device is crea=
ted
> > +              * then we need to set it explicitly before using any pla=
tform
> > +              * MSI functions.
> > +              */
> > +             if (is_of_node(dev_fwnode(dev)))
> > +                     of_msi_configure(dev, to_of_node(dev_fwnode(dev))=
);
> > +
> > +             if (!dev_get_msi_domain(dev))
> > +                     return -EPROBE_DEFER;
> > +     }
> > +
> > +     if (!msi_create_device_irq_domain(dev, MSI_DEFAULT_DOMAIN,
> > +                                       &rpmi_sysmsi_template,
> > +                                       priv->nr_irqs, priv, priv))
> > +             return dev_err_probe(dev, -ENOMEM, "failed to create MSI =
irq domain\n");
> > +
> > +     dev_info(dev, "%d system MSIs registered\n", priv->nr_irqs);
> > +     return 0;
> > +}
>
> ...
>
> > +/** RPMI system MSI service IDs */
>
> Why does this have a kernel-doc marker?

Okay, I will use "/* */".

>
> > +enum rpmi_sysmsi_service_id {
> > +     RPMI_SYSMSI_SRV_ENABLE_NOTIFICATION =3D 0x01,
> > +     RPMI_SYSMSI_SRV_GET_ATTRIBUTES =3D 0x2,
> > +     RPMI_SYSMSI_SRV_GET_MSI_ATTRIBUTES =3D 0x3,
> > +     RPMI_SYSMSI_SRV_SET_MSI_STATE =3D 0x4,
> > +     RPMI_SYSMSI_SRV_GET_MSI_STATE =3D 0x5,
> > +     RPMI_SYSMSI_SRV_SET_MSI_TARGET =3D 0x6,
> > +     RPMI_SYSMSI_SRV_GET_MSI_TARGET =3D 0x7,
>
> Please, be consistent in the style of values.

Okay, I will update.

>
> > +     RPMI_SYSMSI_SRV_ID_MAX_COUNT,
>
> No comma in the terminator entry.

Okay.

>
> > +};
>
> --
> With Best Regards,
> Andy Shevchenko
>
>

Regards,
Anup

