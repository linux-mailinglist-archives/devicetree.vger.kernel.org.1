Return-Path: <devicetree+bounces-13712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E95F7E01B4
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 12:04:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12516281CD9
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 11:04:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9C9414F6E;
	Fri,  3 Nov 2023 11:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="IgfCV8Zl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CC0314276
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 11:04:49 +0000 (UTC)
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E85B182
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 04:04:45 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-27db9fdec0dso1911963a91.0
        for <devicetree@vger.kernel.org>; Fri, 03 Nov 2023 04:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1699009484; x=1699614284; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7NhqsXT32zvyxB1kmJRh7iPQS4yQRF5HVneufZU3p4I=;
        b=IgfCV8ZlkXfSsL04TXX+mIERB/2Y2ymMqHurXHsXrFOZU5xBNpD14DoS27S8DvuX7+
         MzNuvVyj9CtATlh73SIOwMmDvJfTIq+LqTpLHh5xIN+vVsQDt21+T3LDUDoriRKMC7RG
         4LNVstCUJKEXJBqaCmmnaeXe7r7cud4pnWPn+ps+xrsHHS4pVJ2zX0I5erRBD7tQEJ4V
         sToVjyIZbXxrkARfvxmdhGUxvSP4UdLBhsv/fzr2N+O1mg3fYttWl/8iIr+vZgTAw+hW
         Hp0a2C/ZqEBmqwIHCX7oO+UowFgEMEmpZCydDQIX8g2dTkzTmA0EGhmAJh0Fg4VkkiYG
         4jrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699009484; x=1699614284;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7NhqsXT32zvyxB1kmJRh7iPQS4yQRF5HVneufZU3p4I=;
        b=g7whS6n6sjSiVlYNC+1jp1YV3Gg1PT0L1RlVSmRn/itvPUUdUoBX7GVavfp0aUbfDO
         SIGdqXUek5Su4tKw8776BJDEgRm4AtEzdtOtqtVY7s7lLGq+1zvRVxmylOafWfBEgRDs
         MgHPZwNDLs0zttsHzngK9l0Mt8kwImQwuc5i4w8/LH37GFT7rPydBfwiaoLocJMtStbM
         0bahPHHjxDgC5Ad8Yz5GHsj+KjQWx5Q1RnhYi5gE6f98EMhK5ia6Bkjn51ltKYDJ6dah
         QY0LBnrDoGyCrCNtB7VDaRgJjhFw4Cu2Lp2jOhZIuf7tFw+q7P7aOBuZppSy5ndC75h8
         DC2Q==
X-Gm-Message-State: AOJu0Yyuds/v1Kbxiqp1rISJHN5EoKUqgMkeMT76Pmro/4BKe7aNfkRs
	evS/OElqdtjYj87tCK/2fw84msogh799Y+pnwSFMFg==
X-Google-Smtp-Source: AGHT+IGSOr06M27lxx0IMgcdH0w4+aO2IwgEJZ0jtzNlKCwRzHlOJ3+MKTWbw1ZqW3p67rzA16QXvv7xjsLdEWawCLI=
X-Received: by 2002:a17:90a:ca8e:b0:27d:222c:f5eb with SMTP id
 y14-20020a17090aca8e00b0027d222cf5ebmr19538926pjt.11.1699009484425; Fri, 03
 Nov 2023 04:04:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231023172800.315343-1-apatel@ventanamicro.com>
 <20231023172800.315343-13-apatel@ventanamicro.com> <210e2757.3169.18b8eb4495c.Coremail.figure1802@126.com>
 <CAK9=C2UsExEDz76dr=gF2nxyF_3p5OtWxC7L8vZuK5s1nbiSoQ@mail.gmail.com> <15813ba.5290.18b948db497.Coremail.figure1802@126.com>
In-Reply-To: <15813ba.5290.18b948db497.Coremail.figure1802@126.com>
From: Anup Patel <apatel@ventanamicro.com>
Date: Fri, 3 Nov 2023 16:34:32 +0530
Message-ID: <CAK9=C2Xe-ODWUgbeYs4TXySrKKZuA7LWGr-UUaLdZGTnLZ2-7g@mail.gmail.com>
Subject: Re: Re: [PATCH v11 12/14] irqchip/riscv-aplic: Add support for MSI-mode
To: Ben <figure1802@126.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Saravana Kannan <saravanak@google.com>, Marc Zyngier <maz@kernel.org>, Anup Patel <anup@brainfault.org>, 
	linux-kernel@vger.kernel.org, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, linux-riscv@lists.infradead.org, 
	Andrew Jones <ajones@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 3, 2023 at 3:14=E2=80=AFPM Ben <figure1802@126.com> wrote:
>
>
>
> =E5=9C=A8 2023-11-02 20:37:42=EF=BC=8C"Anup Patel" <apatel@ventanamicro.c=
om> =E5=86=99=E9=81=93=EF=BC=9A
> >On Thu, Nov 2, 2023 at 11:55=E2=80=AFAM Ben <figure1802@126.com> wrote:
> >>
> >>
> >> At 2023-10-24 01:27:58, "Anup Patel" <apatel@ventanamicro.com> wrote:
> >> >The RISC-V advanced platform-level interrupt controller (APLIC) has
> >> >two modes of operation: 1) Direct mode and 2) MSI mode.
> >> >(For more details, refer https://github.com/riscv/riscv-aia)
> >> >
> >> >In APLIC MSI-mode, wired interrupts are forwared as message signaled
> >> >interrupts (MSIs) to CPUs via IMSIC.
> >> >
> >> >We extend the existing APLIC irqchip driver to support MSI-mode for
> >> >RISC-V platforms having both wired interrupts and MSIs.
> >> >
> >> >Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> >> >---
> >> > drivers/irqchip/Kconfig                |   6 +
> >> > drivers/irqchip/Makefile               |   1 +
> >> > drivers/irqchip/irq-riscv-aplic-main.c |   2 +-
> >> > drivers/irqchip/irq-riscv-aplic-main.h |   8 +
> >> > drivers/irqchip/irq-riscv-aplic-msi.c  | 285 +++++++++++++++++++++++=
++
> >> > 5 files changed, 301 insertions(+), 1 deletion(-)
> >> > create mode 100644 drivers/irqchip/irq-riscv-aplic-msi.c
> >> >
> >> >diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
> >> >index 1996cc6f666a..7adc4dbe07ff 100644
> >> >--- a/drivers/irqchip/Kconfig
> >> >+++ b/drivers/irqchip/Kconfig
> >> >@@ -551,6 +551,12 @@ config RISCV_APLIC
> >> > depends on RISCV
> >> > select IRQ_DOMAIN_HIERARCHY
> >> >
> >> >+config RISCV_APLIC_MSI
> >> >+ bool
> >> >+ depends on RISCV_APLIC
> >> >+ select GENERIC_MSI_IRQ
> >> >+ default RISCV_APLIC
> >> >+
> >> > config RISCV_IMSIC
> >> > bool
> >> > depends on RISCV
> >> >diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
> >> >index 7f8289790ed8..47995fdb2c60 100644
> >> >--- a/drivers/irqchip/Makefile
> >> >+++ b/drivers/irqchip/Makefile
> >> >@@ -96,6 +96,7 @@ obj-$(CONFIG_CSKY_MPINTC) +=3D irq-csky-mpintc.o
> >> > obj-$(CONFIG_CSKY_APB_INTC) +=3D irq-csky-apb-intc.o
> >> > obj-$(CONFIG_RISCV_INTC) +=3D irq-riscv-intc.o
> >> > obj-$(CONFIG_RISCV_APLIC) +=3D irq-riscv-aplic-main.o irq-riscv-apli=
c-direct.o
> >> >+obj-$(CONFIG_RISCV_APLIC_MSI) +=3D irq-riscv-aplic-msi.o
> >> > obj-$(CONFIG_RISCV_IMSIC) +=3D irq-riscv-imsic-state.o irq-riscv-ims=
ic-early.o irq-riscv-imsic-platform.o
> >> > obj-$(CONFIG_SIFIVE_PLIC) +=3D irq-sifive-plic.o
> >> > obj-$(CONFIG_IMX_IRQSTEER) +=3D irq-imx-irqsteer.o
> >> >diff --git a/drivers/irqchip/irq-riscv-aplic-main.c b/drivers/irqchip=
/irq-riscv-aplic-main.c
> >> >index 87450708a733..d1b342b66551 100644
> >> >--- a/drivers/irqchip/irq-riscv-aplic-main.c
> >> >+++ b/drivers/irqchip/irq-riscv-aplic-main.c
> >> >@@ -205,7 +205,7 @@ static int aplic_probe(struct platform_device *pd=
ev)
> >> > msi_mode =3D of_property_present(to_of_node(dev->fwnode),
> >> > "msi-parent");
> >> > if (msi_mode)
> >> >- rc =3D -ENODEV;
> >> >+ rc =3D aplic_msi_setup(dev, regs);
> >> > else
> >> > rc =3D aplic_direct_setup(dev, regs);
> >> > if (rc) {
> >> >diff --git a/drivers/irqchip/irq-riscv-aplic-main.h b/drivers/irqchip=
/irq-riscv-aplic-main.h
> >> >index 474a04229334..78267ec58098 100644
> >> >--- a/drivers/irqchip/irq-riscv-aplic-main.h
> >> >+++ b/drivers/irqchip/irq-riscv-aplic-main.h
> >> >@@ -41,5 +41,13 @@ void aplic_init_hw_global(struct aplic_priv *priv,=
 bool msi_mode);
> >> > int aplic_setup_priv(struct aplic_priv *priv, struct device *dev,
> >> >     void __iomem *regs);
> >> > int aplic_direct_setup(struct device *dev, void __iomem *regs);
> >> >+#ifdef CONFIG_RISCV_APLIC_MSI
> >> >+int aplic_msi_setup(struct device *dev, void __iomem *regs);
> >> >+#else
> >> >+static inline int aplic_msi_setup(struct device *dev, void __iomem *=
regs)
> >> >+{
> >> >+ return -ENODEV;
> >> >+}
> >> >+#endif
> >> >
> >> > #endif
> >> >diff --git a/drivers/irqchip/irq-riscv-aplic-msi.c b/drivers/irqchip/=
irq-riscv-aplic-msi.c
> >> >new file mode 100644
> >> >index 000000000000..086d00e0429e
> >> >--- /dev/null
> >> >+++ b/drivers/irqchip/irq-riscv-aplic-msi.c
> >> >@@ -0,0 +1,285 @@
> >> >+// SPDX-License-Identifier: GPL-2.0
> >> >+/*
> >> >+ * Copyright (C) 2021 Western Digital Corporation or its affiliates.
> >> >+ * Copyright (C) 2022 Ventana Micro Systems Inc.
> >> >+ */
> >> >+
> >> >+#include <linux/bitops.h>
> >> >+#include <linux/cpu.h>
> >> >+#include <linux/interrupt.h>
> >> >+#include <linux/irqchip.h>
> >> >+#include <linux/irqchip/riscv-aplic.h>
> >> >+#include <linux/irqchip/riscv-imsic.h>
> >> >+#include <linux/module.h>
> >> >+#include <linux/msi.h>
> >> >+#include <linux/of_irq.h>
> >> >+#include <linux/platform_device.h>
> >> >+#include <linux/printk.h>
> >> >+#include <linux/smp.h>
> >> >+
> >> >+#include "irq-riscv-aplic-main.h"
> >> >+
> >> >+static void aplic_msi_irq_unmask(struct irq_data *d)
> >> >+{
> >> >+ aplic_irq_unmask(d);
> >> >+ irq_chip_unmask_parent(d);
> >> >+}
> >> >+
> >> >+static void aplic_msi_irq_mask(struct irq_data *d)
> >> >+{
> >> >+ aplic_irq_mask(d);
> >> >+ irq_chip_mask_parent(d);
> >> >+}
> >> >+
> >> >+static void aplic_msi_irq_eoi(struct irq_data *d)
> >> >+{
> >> >+ struct aplic_priv *priv =3D irq_data_get_irq_chip_data(d);
> >> >+ u32 reg_off, reg_mask;
> >> >+
> >> >+ /*
> >> >+ * EOI handling only required only for level-triggered
> >> >+ * interrupts in APLIC MSI mode.
> >> >+ */
> >> >+
> >> >+ reg_off =3D APLIC_CLRIP_BASE + ((d->hwirq / APLIC_IRQBITS_PER_REG) =
* 4);
> >> >+ reg_mask =3D BIT(d->hwirq % APLIC_IRQBITS_PER_REG);
> >> >+ switch (irqd_get_trigger_type(d)) {
> >> >+ case IRQ_TYPE_LEVEL_LOW:
> >> >+ if (!(readl(priv->regs + reg_off) & reg_mask))
> >> >+ writel(d->hwirq, priv->regs + APLIC_SETIPNUM_LE);
> >> >+ break;
> >> >+ case IRQ_TYPE_LEVEL_HIGH:
> >> >+ if (readl(priv->regs + reg_off) & reg_mask)
> >> >+ writel(d->hwirq, priv->regs + APLIC_SETIPNUM_LE);
> >> >+ break;
> >> >+ }
> >> >+}
> >> >+
> >> >+static struct irq_chip aplic_msi_chip =3D {
> >> >+ .name =3D "APLIC-MSI",
> >> >+ .irq_mask =3D aplic_msi_irq_mask,
> >> >+ .irq_unmask =3D aplic_msi_irq_unmask,
> >> >+ .irq_set_type =3D aplic_irq_set_type,
> >> >+ .irq_eoi =3D aplic_msi_irq_eoi,
> >> >+#ifdef CONFIG_SMP
> >> >+ .irq_set_affinity =3D irq_chip_set_affinity_parent,
> >> >+#endif
> >> >+ .flags =3D IRQCHIP_SET_TYPE_MASKED |
> >> >+  IRQCHIP_SKIP_SET_WAKE |
> >> >+  IRQCHIP_MASK_ON_SUSPEND,
> >> >+};
> >> >+
> >> >+static int aplic_msi_irqdomain_translate(struct irq_domain *d,
> >> >+ struct irq_fwspec *fwspec,
> >> >+ unsigned long *hwirq,
> >> >+ unsigned int *type)
> >> >+{
> >> >+ struct aplic_priv *priv =3D platform_msi_get_host_data(d);
> >> >+
> >> >+ return aplic_irqdomain_translate(fwspec, priv->gsi_base, hwirq, typ=
e);
> >> >+}
> >> >+
> >> >+static int aplic_msi_irqdomain_alloc(struct irq_domain *domain,
> >> >+     unsigned int virq, unsigned int nr_irqs,
> >> >+     void *arg)
> >> >+{
> >> >+ int i, ret;
> >> >+ unsigned int type;
> >> >+ irq_hw_number_t hwirq;
> >> >+ struct irq_fwspec *fwspec =3D arg;
> >> >+ struct aplic_priv *priv =3D platform_msi_get_host_data(domain);
> >> >+
> >> >+ ret =3D aplic_irqdomain_translate(fwspec, priv->gsi_base, &hwirq, &=
type);
> >> >+ if (ret)
> >> >+ return ret;
> >> >+
> >> >+ ret =3D platform_msi_device_domain_alloc(domain, virq, nr_irqs);
> >> >+ if (ret)
> >> >+ return ret;
> >> >+
> >> >+ for (i =3D 0; i < nr_irqs; i++) {
> >> >+ irq_domain_set_info(domain, virq + i, hwirq + i,
> >> >+    &aplic_msi_chip, priv, handle_fasteoi_irq,
> >> >+    NULL, NULL);
> >> >+ /*
> >> >+ * APLIC does not implement irq_disable() so Linux interrupt
> >> >+ * subsystem will take a lazy approach for disabling an APLIC
> >> >+ * interrupt. This means APLIC interrupts are left unmasked
> >> >+ * upon system suspend and interrupts are not processed
> >> >+ * immediately upon system wake up. To tackle this, we disable
> >> >+ * the lazy approach for all APLIC interrupts.
> >> >+ */
> >> >+ irq_set_status_flags(virq + i, IRQ_DISABLE_UNLAZY);
> >> >+ }
> >>
> >> For platfrom MSI irq, it will call irq_domain_set_info() and irq_set_s=
tatus_flags() twice, the first one is here:
> >> platform_msi_device_domain_alloc->msi_domain_populate_irqs->irq_domain=
_alloc_irqs_hierarchy->imsic_irq_domain_alloc->irq_domain_set_info
> >>
> >> so  i think here this for(...) is not necessary, can be removed.
> >
> >If we remove then it breaks APLIC MSI-mode because we have
> >hierarchical irq domains where the APLIC-MSI domain is a child
> >of the IMSIC-PLAT domain.
> >
> >The irq_domain_set_info() called by IMSIC driver only sets irqchip
> >for IMSIC irq whereas irq_domain_set_info() called by APLIC driver
> >sets irqchip for APLIC irq. We use a different APLIC irqchip for the
> >APLIC domain to mask, unmask, and eoi irqs in an APLIC specific
> >way.
> >
>
> As your said APLIC-MSI domain is a child of the IMSIC-PLAT domain, so all=
 of platform IRQ or wired IRQ will go to APLIC-MSI domain firstly.
> how about the pure MSI interrupt? for example the MSI of PCIe device or d=
evice driver call platform_msi_domain_alloc_irqs() to allocate a MSI ?

MSIs from PCIe device will directly go to IMSIC-PCI domain.

>  in this scenario, it also go into  APLIC-MSI domain firstly?

No

>
> would you like provide the steps how to test the PCI MSI for your patchse=
t on QEMU? i run a QEMU system, but i cannot found any PCI devices using MS=
I, especially the virtio devices which using the platform IRQ.

Just add virtio-blk-pci OR some other PCI device in your QEMU
command line but ensure that you have corresponding device
driver enabled in your kernel.

>
> ~# cat /proc/interrupts
>            CPU0       CPU1       CPU2       CPU3
>  10:      38972      38946      38882      38924  RISC-V INTC   5 Edge   =
   riscv-timer
>  11:          0       1149          0          0  APLIC-MSI   8 Level    =
 virtio0
>  12:          0          0         21          0  APLIC-MSI   7 Level    =
 virtio1
>  13:        149          0          0        218  APLIC-MSI  10 Level    =
 ttyS0
> IPI0:        40         53         43         50  Rescheduling interrupts
> IPI1:      7518       8899       6679       7959  Function call interrupt=
s
> IPI2:         0          0          0          0  CPU stop interrupts
> IPI3:         0          0          0          0  CPU stop (for crash dum=
p) interrupts
> IPI4:         0          0          0          0  IRQ work interrupts
> IPI5:         0          0          0          0  Timer broadcast interru=
pts
>
>

Regards,
Anup

