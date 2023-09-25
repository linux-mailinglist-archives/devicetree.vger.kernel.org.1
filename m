Return-Path: <devicetree+bounces-3163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B307AD8A0
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 15:09:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id C2FD51C20441
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 13:09:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E8411B28D;
	Mon, 25 Sep 2023 13:09:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569FE13ACF
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 13:09:07 +0000 (UTC)
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2766183
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:09:05 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-274c05edb69so3598714a91.2
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695647344; x=1696252144; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rg2N9sGbEMEhKoHsVbPQzmUDY+5M1hDJEAcwQPt3NlY=;
        b=UnDJj295476Fl2Iji6VLWgctC/C/ng3gt3cMq37BBKRwF5HCZhF+Tjb6ZqwKrubxuT
         I8oMGgGhAdDPGpjY5LdZbBTpU/hFXFz5Oia2rhNxGk76SWpWoOJVx7qEO0uNNEn6ERKt
         E1g9pEMt60yNBUxiqFtY3XqbEyHC3SFUOellZWwkv1hKNiDeTG58OHmfUrRj1wRQBeGm
         DoTRkCFFqKrvQdUVWFh2VJ/LtU/2LSNAngiLfBA9EB71bMdPEB3TMAjMiEjAvxzp2dAt
         /IMdSmBZivyXgaGiKU5Jtu5F0t0AoEy7freUgOUiCNG7tV4NyRtCTu1aITrOQs5nVYmD
         QFFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695647344; x=1696252144;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rg2N9sGbEMEhKoHsVbPQzmUDY+5M1hDJEAcwQPt3NlY=;
        b=T8G9nHZ0sJnEceDP+lZQGDYDrcH5LiTCEvxb8G4AYcQujG64jsAy4z/XWu0RKPY240
         dOCPpl6F2WTpaLJm9o+yHD+QtCopah+hYZx3KUTKZjrick+IEt3fW/5y9Pc7QuBTteVp
         PVLKhMah5PcvxRP/z/EQzVEaFcNWABncUSsMNR4too53lZP/dPKw17lFxEtAf2Sz9iuo
         8UskZngdYEtgfvFOLZ7YMIfaC18+7fLCHe89KiRunfM5cIItKsMLDoCPaVYgHrHtBUKq
         GEj1LFBCpCBe7Ai0ww2aeEMue4CnAGKg+8nv3I+rIYL1zDDhIvos1oohnWO5IagBMSRC
         om4w==
X-Gm-Message-State: AOJu0Yx9twNuI2KYEcoGroaZPan5H1ZGQSMSHCe6ZGcibJo4qmic6Kd1
	3EpLQ8LT0ZotnhRacejRBWK67S3vHcWxJyv9UDOXDg==
X-Google-Smtp-Source: AGHT+IE+OeBjqj5dSImmwZ7PZgV5tShVm9U7SiI7TvQQunpPnZWkarMgAnUJJhAcQyNKJOJcHt83QhSLTjFxGjczddA=
X-Received: by 2002:a17:90a:fe0c:b0:268:b66b:d9f6 with SMTP id
 ck12-20020a17090afe0c00b00268b66bd9f6mr3906104pjb.18.1695647344419; Mon, 25
 Sep 2023 06:09:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912174928.528414-1-apatel@ventanamicro.com>
 <20230912174928.528414-11-apatel@ventanamicro.com> <efd9f7dc-c9e8-99a5-e139-20133b30903c@huawei.com>
In-Reply-To: <efd9f7dc-c9e8-99a5-e139-20133b30903c@huawei.com>
From: Anup Patel <apatel@ventanamicro.com>
Date: Mon, 25 Sep 2023 18:38:53 +0530
Message-ID: <CAK9=C2XSEFx5gGvjHfhfygUbYqAQYC84-smNB588M2gFj9TRng@mail.gmail.com>
Subject: Re: [PATCH v8 10/16] irqchip/riscv-imsic: Add support for platform
 MSI irqdomain
To: Ruan Jinjie <ruanjinjie@huawei.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Saravana Kannan <saravanak@google.com>, Anup Patel <anup@brainfault.org>, linux-kernel@vger.kernel.org, 
	Atish Patra <atishp@atishpatra.org>, linux-riscv@lists.infradead.org, 
	Andrew Jones <ajones@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 25, 2023 at 6:31=E2=80=AFPM Ruan Jinjie <ruanjinjie@huawei.com>=
 wrote:
>
>
>
> On 2023/9/13 1:49, Anup Patel wrote:
> > The Linux platform MSI support requires a platform MSI irqdomain so
> > let us add a platform irqchip driver for RISC-V IMSIC which provides
> > a base IRQ domain and platform MSI domain. This driver assumes that
> > the IMSIC state is already initialized by the IMSIC early driver.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > ---
> >  drivers/irqchip/Makefile                   |   2 +-
> >  drivers/irqchip/irq-riscv-imsic-platform.c | 280 +++++++++++++++++++++
> >  2 files changed, 281 insertions(+), 1 deletion(-)
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
> > index 000000000000..b78f1b2ee3dc
> > --- /dev/null
> > +++ b/drivers/irqchip/irq-riscv-imsic-platform.c
> > @@ -0,0 +1,280 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2021 Western Digital Corporation or its affiliates.
> > + * Copyright (C) 2022 Ventana Micro Systems Inc.
> > + */
> > +
> > +#include <linux/bitmap.h>
> > +#include <linux/cpu.h>
> > +#include <linux/interrupt.h>
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
> > +static int imsic_cpu_page_phys(unsigned int cpu,
> > +                            unsigned int guest_index,
> > +                            phys_addr_t *out_msi_pa)
> > +{
> > +     struct imsic_global_config *global;
> > +     struct imsic_local_config *local;
> > +
> > +     global =3D &imsic->global;
> > +     local =3D per_cpu_ptr(global->local, cpu);
> > +
> > +     if (BIT(global->guest_index_bits) <=3D guest_index)
> > +             return -EINVAL;
> > +
> > +     if (out_msi_pa)
> > +             *out_msi_pa =3D local->msi_pa +
> > +                           (guest_index * IMSIC_MMIO_PAGE_SZ);
> > +
> > +     return 0;
> > +}
> > +
> > +static int imsic_get_cpu(const struct cpumask *mask_val, bool force,
> > +                      unsigned int *out_target_cpu)
> > +{
> > +     unsigned int cpu;
> > +
> > +     if (force)
> > +             cpu =3D cpumask_first(mask_val);
> > +     else
> > +             cpu =3D cpumask_any_and(mask_val, cpu_online_mask);
> > +
> > +     if (cpu >=3D nr_cpu_ids)
> > +             return -EINVAL;
> > +
> > +     if (out_target_cpu)
> > +             *out_target_cpu =3D cpu;
> > +
> > +     return 0;
> > +}
> > +
> > +static void imsic_irq_mask(struct irq_data *d)
> > +{
> > +     unsigned long flags;
> > +
> > +     raw_spin_lock_irqsave(&imsic->ids_lock, flags);
> > +     bitmap_clear(imsic->ids_enabled_bimap, d->hwirq, 1);
> > +     __imsic_id_disable(d->hwirq);
> > +     raw_spin_unlock_irqrestore(&imsic->ids_lock, flags);
> > +
> > +     imsic_ids_remote_sync();
> > +}
> > +
> > +static void imsic_irq_unmask(struct irq_data *d)
> > +{
> > +     unsigned long flags;
> > +
> > +     raw_spin_lock_irqsave(&imsic->ids_lock, flags);
> > +     bitmap_set(imsic->ids_enabled_bimap, d->hwirq, 1);
> > +     __imsic_id_enable(d->hwirq);
> > +     raw_spin_unlock_irqrestore(&imsic->ids_lock, flags);
> > +
> > +     imsic_ids_remote_sync();
> > +}
> > +
> > +static void imsic_irq_compose_msi_msg(struct irq_data *d,
> > +                                   struct msi_msg *msg)
> > +{
> > +     phys_addr_t msi_addr;
> > +     unsigned int cpu;
> > +     int err;
> > +
> > +     cpu =3D imsic_id_get_target(d->hwirq);
> > +     if (WARN_ON(cpu =3D=3D UINT_MAX))
> > +             return;
> > +
> > +     err =3D imsic_cpu_page_phys(cpu, 0, &msi_addr);
> > +     if (WARN_ON(err))
> > +             return;
> > +
> > +     msg->address_hi =3D upper_32_bits(msi_addr);
> > +     msg->address_lo =3D lower_32_bits(msi_addr);
> > +     msg->data =3D d->hwirq;
> > +}
> > +
> > +#ifdef CONFIG_SMP
> > +static int imsic_irq_set_affinity(struct irq_data *d,
> > +                               const struct cpumask *mask_val,
> > +                               bool force)
> > +{
> > +     unsigned int target_cpu;
> > +     int rc;
> > +
> > +     rc =3D imsic_get_cpu(mask_val, force, &target_cpu);
> > +     if (rc)
> > +             return rc;
> > +
> > +     imsic_id_set_target(d->hwirq, target_cpu);
> > +     irq_data_update_effective_affinity(d, cpumask_of(target_cpu));
>
> According to the =E2=80=9CThe RISC-V Advanced Interrupt Architecture Vers=
ion
> 0.2-draft=E2=80=9D=EF=BC=8Cthe "3.1 Interrupt files and interrupt identit=
ies" has
> following description.
>
> Thus the total number of MSI sources that can be separately distinguished
> within a system is potentially the product of the number of interrupt
> identities at a single interrupt
> file times the total number of interrupt files in the system, over all
> harts.
>
> In my opinion, the MSI interrupt number is a local interrupt number.
> However, when the above interrupt affinity is set, it is processed as a
> global interrupt number, which seems not comply with the above RISC-V
> specifications.

Treating IMSIC minor interrupt identities as global instead of local is a
design choice we made to integrate cleanly with Linux IRQ subsystem
because otherwise MSI interrupts will be percpu interrupts and we can't
steer device MSIs to different CPUs using set_irq_affinity().

Regards,
Anup

>
> > +
> > +     return IRQ_SET_MASK_OK;
> > +}
> > +#endif
> > +
> > +static struct irq_chip imsic_irq_base_chip =3D {
> > +     .name                   =3D "IMSIC-BASE",
> > +     .irq_mask               =3D imsic_irq_mask,
> > +     .irq_unmask             =3D imsic_irq_unmask,
> > +#ifdef CONFIG_SMP
> > +     .irq_set_affinity       =3D imsic_irq_set_affinity,
> > +#endif
> > +     .irq_compose_msi_msg    =3D imsic_irq_compose_msi_msg,
> > +     .flags                  =3D IRQCHIP_SKIP_SET_WAKE |
> > +                               IRQCHIP_MASK_ON_SUSPEND,
> > +};
> > +
> > +static int imsic_irq_domain_alloc(struct irq_domain *domain,
> > +                               unsigned int virq,
> > +                               unsigned int nr_irqs,
> > +                               void *args)
> > +{
> > +     int i, hwirq, err =3D 0;
> > +     unsigned int cpu;
> > +
> > +     err =3D imsic_get_cpu(cpu_online_mask, false, &cpu);
> > +     if (err)
> > +             return err;
> > +
> > +     hwirq =3D imsic_ids_alloc(get_count_order(nr_irqs));
> > +     if (hwirq < 0)
> > +             return hwirq;
> > +
> > +     for (i =3D 0; i < nr_irqs; i++) {
> > +             imsic_id_set_target(hwirq + i, cpu);
> > +             irq_domain_set_info(domain, virq + i, hwirq + i,
> > +                                 &imsic_irq_base_chip, imsic,
> > +                                 handle_simple_irq, NULL, NULL);
> > +             irq_set_noprobe(virq + i);
> > +             irq_set_affinity(virq + i, cpu_online_mask);
> > +             /*
> > +              * IMSIC does not implement irq_disable() so Linux interr=
upt
> > +              * subsystem will take a lazy approach for disabling an I=
MSIC
> > +              * interrupt. This means IMSIC interrupts are left unmask=
ed
> > +              * upon system suspend and interrupts are not processed
> > +              * immediately upon system wake up. To tackle this, we di=
sable
> > +              * the lazy approach for all IMSIC interrupts.
> > +              */
> > +             irq_set_status_flags(virq + i, IRQ_DISABLE_UNLAZY);
> > +     }
> > +
> > +     return 0;
> > +}
> > +
> > +static void imsic_irq_domain_free(struct irq_domain *domain,
> > +                               unsigned int virq,
> > +                               unsigned int nr_irqs)
> > +{
> > +     struct irq_data *d =3D irq_domain_get_irq_data(domain, virq);
> > +
> > +     imsic_ids_free(d->hwirq, get_count_order(nr_irqs));
> > +     irq_domain_free_irqs_parent(domain, virq, nr_irqs);
> > +}
> > +
> > +static const struct irq_domain_ops imsic_base_domain_ops =3D {
> > +     .alloc          =3D imsic_irq_domain_alloc,
> > +     .free           =3D imsic_irq_domain_free,
> > +};
> > +
> > +static struct irq_chip imsic_plat_irq_chip =3D {
> > +     .name                   =3D "IMSIC-PLAT",
> > +};
> > +
> > +static struct msi_domain_ops imsic_plat_domain_ops =3D {
> > +};
> > +
> > +static struct msi_domain_info imsic_plat_domain_info =3D {
> > +     .flags  =3D (MSI_FLAG_USE_DEF_DOM_OPS | MSI_FLAG_USE_DEF_CHIP_OPS=
),
> > +     .ops    =3D &imsic_plat_domain_ops,
> > +     .chip   =3D &imsic_plat_irq_chip,
> > +};
> > +
> > +static int imsic_irq_domains_init(struct device *dev)
> > +{
> > +     /* Create Base IRQ domain */
> > +     imsic->base_domain =3D irq_domain_create_tree(dev->fwnode,
> > +                                     &imsic_base_domain_ops, imsic);
> > +     if (!imsic->base_domain) {
> > +             dev_err(dev, "failed to create IMSIC base domain\n");
> > +             return -ENOMEM;
> > +     }
> > +     irq_domain_update_bus_token(imsic->base_domain, DOMAIN_BUS_NEXUS)=
;
> > +
> > +     /* Create Platform MSI domain */
> > +     imsic->plat_domain =3D platform_msi_create_irq_domain(dev->fwnode=
,
> > +                                             &imsic_plat_domain_info,
> > +                                             imsic->base_domain);
> > +     if (!imsic->plat_domain) {
> > +             dev_err(dev, "failed to create IMSIC platform domain\n");
> > +             irq_domain_remove(imsic->base_domain);
> > +             return -ENOMEM;
> > +     }
> > +
> > +     return 0;
> > +}
> > +
> > +static int imsic_platform_probe(struct platform_device *pdev)
> > +{
> > +     struct device *dev =3D &pdev->dev;
> > +     struct imsic_global_config *global;
> > +     int rc;
> > +
> > +     if (!imsic) {
> > +             dev_err(dev, "early driver not probed\n");
> > +             return -ENODEV;
> > +     }
> > +
> > +     if (imsic->base_domain) {
> > +             dev_err(dev, "irq domain already created\n");
> > +             return -ENODEV;
> > +     }
> > +
> > +     global =3D &imsic->global;
> > +
> > +     /* Initialize IRQ and MSI domains */
> > +     rc =3D imsic_irq_domains_init(dev);
> > +     if (rc) {
> > +             dev_err(dev, "failed to initialize IRQ and MSI domains\n"=
);
> > +             return rc;
> > +     }
> > +
> > +     dev_info(dev, "  hart-index-bits: %d,  guest-index-bits: %d\n",
> > +              global->hart_index_bits, global->guest_index_bits);
> > +     dev_info(dev, " group-index-bits: %d, group-index-shift: %d\n",
> > +              global->group_index_bits, global->group_index_shift);
> > +     dev_info(dev, " mapped %d interrupts at base PPN %pa\n",
> > +              global->nr_ids, &global->base_addr);
> > +
> > +     return 0;
> > +}
> > +
> > +static const struct of_device_id imsic_platform_match[] =3D {
> > +     { .compatible =3D "riscv,imsics" },
> > +     {}
> > +};
> > +
> > +static struct platform_driver imsic_platform_driver =3D {
> > +     .driver =3D {
> > +             .name           =3D "riscv-imsic",
> > +             .of_match_table =3D imsic_platform_match,
> > +     },
> > +     .probe =3D imsic_platform_probe,
> > +};
> > +
> > +static int __init imsic_platform_init(void)
> > +{
> > +     /*
> > +      * Register IMSIC driver as early as possible so that IMSIC
> > +      * platform device is probed as soon as it is created.
> > +      */
> > +     return platform_driver_register(&imsic_platform_driver);
> > +}
> > +core_initcall(imsic_platform_init);

