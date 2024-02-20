Return-Path: <devicetree+bounces-43999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2868285C196
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 17:40:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 92E59B226C6
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 16:40:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD56576405;
	Tue, 20 Feb 2024 16:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="dX+SBhFd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC5292599
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 16:39:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708447201; cv=none; b=TA3K4VYC+o9cO3LfZds16zA/H6s7C4fHCPb94oDwb2jahHZcl0Zj5wVyZi3doMXTSb2RkJLLBT7009u8qShlUsxV5GgmMBlYZGyf6+AxDnGiSvJT/XWTsOi92Q2CxEiBFhl2mNa7Av48Snz/WFDzq3eO6QOs6ePBaRy/EnlN0pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708447201; c=relaxed/simple;
	bh=GZBQZRTBlrdcFzCAbk88GbH0iGu6hZl7vqBRoEcr7dQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ou2aQFIGo8RU+WQ+IK7EKThmuXWMjQWsenT2XFCmQkzTascMy5FgazHnIBi36+KcJ5xaADdxyDYZTSOUXuqFTnriuB8TvHrW5BPEvFLdJ/O4q2ZJ2JBHSDSnJROIAwWKcGapu3Dk7jgjEGixIuCh4mQEpX8fG9gMo1o9nQGZHF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=dX+SBhFd; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2d09cf00214so62280781fa.0
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 08:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708447198; x=1709051998; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Jx/g2F04nwFnHGFZmO2AEQi8r5RKzzWTGuYmKXn7Lg=;
        b=dX+SBhFdc/bBY1qGRQxWgn1DrhYn7MwUKZrKjKs/86Ahk2UY7/cJxjiQcgXejyDMBx
         T5qKURBA5gTpnAR1K7dJRS8OFb8KxvB/uwxh3rdxFbH89cdQsuemc1y22b/EdHXMcJct
         0RTooelr2tPDhmUwNnQDRW4g/mHbEhsZLXqNL9oMmnScfoY9Ajo2wGpDOfXYNwb23/+t
         WY8t2U5ydzItamNefDKdddJFGg9Si7VI1HjwJSsHiP1XbjATHdfC0AMsBb2frrTqD9j6
         cV2qQepx7A5cn80dY5zLK3drCWZloGvaNwOjvvTJ7DiPj91+Oj0EGlee64Q5jvn+XLSB
         Vq8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708447198; x=1709051998;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Jx/g2F04nwFnHGFZmO2AEQi8r5RKzzWTGuYmKXn7Lg=;
        b=jnG+K/BJR0v4BhBeqfgPm9dFgV3nAz4wpY8GbGYFy93jR/2g1E/nMjsvl45OI10Au4
         TZxGG9LtrnkvD4zftzMrejRHXBYPC8Hvh5vMssOmFrcp/jbBdiKhxe3qWbs2TR6Yl17A
         u+MkK+O22mImyp7VOBTdESRuJexufjE54E3eb9T4uPNmWhAl1WSdRSXJTs3th/dWxC9C
         Jgkm/YKnic8IINqiYCb9IhHPxB1LmShmw5hd6hSMfRvsu+53QhJp6tyB19daiJTw4Vkp
         lPd55YI2gf/rW7sgPZ5D3akwgVWHXKY2HbgK9NFdgIOIqQE4A0+x7tQ1XgD+4e5UdcWT
         BxaA==
X-Forwarded-Encrypted: i=1; AJvYcCUHzc94d6lmWVAv5Y34E6NAX63i1Ul1Qj9EpeBGBH0JIIoU7wGwUCUNlySiKnS5jlyPBv6DGqrGocCalwQhR2KLfPtiXBbW73JJFw==
X-Gm-Message-State: AOJu0YzEt85LdwVkNc0Q+PkDaIpXr+cIMkN1rwHdM1Ofy9sEHCoH43oZ
	RMmDhMB4GaYHdgAuWndIUl4VBTROerpS3jlvOPvni5rkv2BI/SyG/KYd6rkfkS5brlQx7l+j6So
	8f1hwJeGz2uJn2eClfRoprp9Sy5ti8zS/C/5HJA==
X-Google-Smtp-Source: AGHT+IFB9znm/aAh02NlSHtCnRt8v0sejhM55uWmIksi2dFX9t4vpt8MQMfP61LS+XuEU8uCxpHxx9+dioUbZN2Tz4c=
X-Received: by 2002:a2e:bc09:0:b0:2d2:38b6:661b with SMTP id
 b9-20020a2ebc09000000b002d238b6661bmr5231051ljf.33.1708447197605; Tue, 20 Feb
 2024 08:39:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240220060718.823229-1-apatel@ventanamicro.com>
 <20240220060718.823229-8-apatel@ventanamicro.com> <87cysrfj32.fsf@all.your.base.are.belong.to.us>
In-Reply-To: <87cysrfj32.fsf@all.your.base.are.belong.to.us>
From: Anup Patel <apatel@ventanamicro.com>
Date: Tue, 20 Feb 2024 22:09:46 +0530
Message-ID: <CAK9=C2Umyc5KpZSQiAVxRA8NNqj3yuvqX4d8pMnc21jQjwZkWg@mail.gmail.com>
Subject: Re: [PATCH v13 07/13] irqchip/riscv-imsic: Add device MSI domain
 support for platform devices
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Saravana Kannan <saravanak@google.com>, Marc Zyngier <maz@kernel.org>, Anup Patel <anup@brainfault.org>, 
	linux-kernel@vger.kernel.org, Atish Patra <atishp@atishpatra.org>, 
	linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Andrew Jones <ajones@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 20, 2024 at 5:23=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjorn@kernel=
.org> wrote:
>
> Anup Patel <apatel@ventanamicro.com> writes:
>
> > The Linux platform MSI support allows per-device MSI domains so let
> > us add a platform irqchip driver for RISC-V IMSIC which provides a
> > base IRQ domain with MSI parent support for platform device domains.
> >
> > This driver assumes that the IMSIC state is already initialized by
> > the IMSIC early driver.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > ---
> >  drivers/irqchip/Makefile                   |   2 +-
> >  drivers/irqchip/irq-riscv-imsic-platform.c | 346 +++++++++++++++++++++
> >  drivers/irqchip/irq-riscv-imsic-state.h    |   1 +
> >  3 files changed, 348 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/irqchip/irq-riscv-imsic-platform.c
> >
> > diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
> > index d714724387ce..abca445a3229 100644
> > --- a/drivers/irqchip/Makefile
> > +++ b/drivers/irqchip/Makefile
> > @@ -95,7 +95,7 @@ obj-$(CONFIG_QCOM_MPM)                      +=3D irq-=
qcom-mpm.o
> >  obj-$(CONFIG_CSKY_MPINTC)            +=3D irq-csky-mpintc.o
> >  obj-$(CONFIG_CSKY_APB_INTC)          +=3D irq-csky-apb-intc.o
> >  obj-$(CONFIG_RISCV_INTC)             +=3D irq-riscv-intc.o
> > -obj-$(CONFIG_RISCV_IMSIC)            +=3D irq-riscv-imsic-state.o irq-=
riscv-imsic-early.o
> > +obj-$(CONFIG_RISCV_IMSIC)            +=3D irq-riscv-imsic-state.o irq-=
riscv-imsic-early.o irq-riscv-imsic-platform.o
> >  obj-$(CONFIG_SIFIVE_PLIC)            +=3D irq-sifive-plic.o
> >  obj-$(CONFIG_IMX_IRQSTEER)           +=3D irq-imx-irqsteer.o
> >  obj-$(CONFIG_IMX_INTMUX)             +=3D irq-imx-intmux.o
> > diff --git a/drivers/irqchip/irq-riscv-imsic-platform.c b/drivers/irqch=
ip/irq-riscv-imsic-platform.c
> > new file mode 100644
> > index 000000000000..7ee44c493dbc
> > --- /dev/null
> > +++ b/drivers/irqchip/irq-riscv-imsic-platform.c
> > @@ -0,0 +1,346 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2021 Western Digital Corporation or its affiliates.
> > + * Copyright (C) 2022 Ventana Micro Systems Inc.
> > + */
> > +
> > +#define pr_fmt(fmt) "riscv-imsic: " fmt
> > +#include <linux/bitmap.h>
> > +#include <linux/cpu.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/io.h>
> > +#include <linux/irq.h>
> > +#include <linux/irqchip.h>
> > +#include <linux/irqdomain.h>
> > +#include <linux/module.h>
> > +#include <linux/msi.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/spinlock.h>
> > +#include <linux/smp.h>
> > +
> > +#include "irq-riscv-imsic-state.h"
> > +
> > +static bool imsic_cpu_page_phys(unsigned int cpu, unsigned int guest_i=
ndex,
> > +                             phys_addr_t *out_msi_pa)
> > +{
> > +     struct imsic_global_config *global;
> > +     struct imsic_local_config *local;
> > +
> > +     global =3D &imsic->global;
> > +     local =3D per_cpu_ptr(global->local, cpu);
> > +
> > +     if (BIT(global->guest_index_bits) <=3D guest_index)
> > +             return false;
> > +
> > +     if (out_msi_pa)
> > +             *out_msi_pa =3D local->msi_pa +
> > +                           (guest_index * IMSIC_MMIO_PAGE_SZ);
> > +
> > +     return true;
> > +}
> > +
> > +static void imsic_irq_mask(struct irq_data *d)
> > +{
> > +     imsic_vector_mask(irq_data_get_irq_chip_data(d));
> > +}
> > +
> > +static void imsic_irq_unmask(struct irq_data *d)
> > +{
> > +     imsic_vector_unmask(irq_data_get_irq_chip_data(d));
> > +}
> > +
> > +static int imsic_irq_retrigger(struct irq_data *d)
> > +{
> > +     struct imsic_vector *vec =3D irq_data_get_irq_chip_data(d);
> > +     struct imsic_local_config *local;
> > +
> > +     if (WARN_ON(vec =3D=3D NULL))
>
> Checkpatch: use !vec

Okay, I will update.

>
> > +             return -ENOENT;
> > +
> > +     local =3D per_cpu_ptr(imsic->global.local, vec->cpu);
> > +     writel_relaxed(vec->local_id, local->msi_va);
> > +     return 0;
> > +}
> > +
> > +static void imsic_irq_compose_vector_msg(struct imsic_vector *vec, str=
uct msi_msg *msg)
> > +{
> > +     phys_addr_t msi_addr;
> > +
> > +     if (WARN_ON(vec =3D=3D NULL))
>
> Checkpatch: use !vec

Okay, I will update.

>
> > +             return;
> > +
> > +     if (WARN_ON(!imsic_cpu_page_phys(vec->cpu, 0, &msi_addr)))
> > +             return;
> > +
> > +     msg->address_hi =3D upper_32_bits(msi_addr);
> > +     msg->address_lo =3D lower_32_bits(msi_addr);
> > +     msg->data =3D vec->local_id;
> > +}
> > +
> > +static void imsic_irq_compose_msg(struct irq_data *d, struct msi_msg *=
msg)
> > +{
> > +     imsic_irq_compose_vector_msg(irq_data_get_irq_chip_data(d), msg);
> > +}
> > +
> > +#ifdef CONFIG_SMP
> > +static void imsic_msi_update_msg(struct irq_data *d, struct imsic_vect=
or *vec)
> > +{
> > +     struct msi_msg msg[2] =3D { [1] =3D { }, };
> > +
> > +     imsic_irq_compose_vector_msg(vec, msg);
> > +     irq_data_get_irq_chip(d)->irq_write_msi_msg(d, msg);
> > +}
> > +
> > +static int imsic_irq_set_affinity(struct irq_data *d, const struct cpu=
mask *mask_val,
> > +                               bool force)
> > +{
> > +     struct imsic_vector *old_vec, *new_vec;
> > +     struct irq_data *pd =3D d->parent_data;
> > +
> > +     old_vec =3D irq_data_get_irq_chip_data(pd);
> > +     if (WARN_ON(old_vec =3D=3D NULL))
>
> Checkpatch: use !old_vec

Okay, I will update.

>
> > +             return -ENOENT;
> > +
> > +     /* If old vector cpu belongs to the target cpumask then do nothin=
g */
> > +     if (cpumask_test_cpu(old_vec->cpu, mask_val))
> > +             return IRQ_SET_MASK_OK_DONE;
> > +
> > +     /* If move is already in-flight then return failure */
> > +     if (imsic_vector_get_move(old_vec))
> > +             return -EBUSY;
> > +
> > +     /* Get a new vector on the desired set of CPUs */
> > +     new_vec =3D imsic_vector_alloc(old_vec->hwirq, mask_val);
> > +     if (!new_vec)
> > +             return -ENOSPC;
> > +
> > +     /* Point device to the new vector */
> > +     imsic_msi_update_msg(d, new_vec);
> > +
> > +     /* Update irq descriptors with the new vector */
> > +     pd->chip_data =3D new_vec;
> > +
> > +     /* Update effective affinity of parent irq data */
> > +     irq_data_update_effective_affinity(pd, cpumask_of(new_vec->cpu));
> > +
> > +     /* Move state of the old vector to the new vector */
> > +     imsic_vector_move(old_vec, new_vec);
> > +
> > +     return IRQ_SET_MASK_OK_DONE;
> > +}
> > +#endif
> > +
> > +static struct irq_chip imsic_irq_base_chip =3D {
> > +     .name                   =3D "IMSIC",
> > +     .irq_mask               =3D imsic_irq_mask,
> > +     .irq_unmask             =3D imsic_irq_unmask,
> > +     .irq_retrigger          =3D imsic_irq_retrigger,
> > +     .irq_compose_msi_msg    =3D imsic_irq_compose_msg,
> > +     .flags                  =3D IRQCHIP_SKIP_SET_WAKE |
> > +                               IRQCHIP_MASK_ON_SUSPEND,
> > +};
> > +
> > +static int imsic_irq_domain_alloc(struct irq_domain *domain, unsigned =
int virq,
> > +                               unsigned int nr_irqs, void *args)
> > +{
> > +     struct imsic_vector *vec;
> > +
> > +     /* Legacy-MSI or multi-MSI not supported yet. */
> > +     if (nr_irqs > 1)
> > +             return -ENOTSUPP;
>
> Checkpatch: WARNING: ENOTSUPP is not a SUSV4 error code, prefer EOPNOTSUP=
P

Okay, I will update.

Regards,
Anup

