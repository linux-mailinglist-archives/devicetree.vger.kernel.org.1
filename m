Return-Path: <devicetree+bounces-98509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AFD9665D5
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 17:39:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 768311F21B7C
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 15:39:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A198F1B9B2D;
	Fri, 30 Aug 2024 15:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="yq913CsD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A27BF1B9B28
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 15:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725032235; cv=none; b=AlIHO1Tbak2Yg45VZVlZhESVfi1nYIGx2qIaptnBskqmSkKhXybTu7jugauy8A1gYEj8AtV6ie6ogACO0GdddJJE/UC0z7FzFVXkqe+ZMu4xzTUd1kJBXG4NCra4YqUXLxVdteobQb+ZwnGGWbfrARvAAZzyFfsAl4oIovzkvSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725032235; c=relaxed/simple;
	bh=K2yKRMFRbErZyKXcXo77GOJgewGrfKe3pRB3fdgDgQE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LopGuvA2aiDqD1qDdJBc8l+vAl8SZel2VBhrJu7/TjT/HHm+OyJ08gBa2YczSvsMUAMbuCQRPQaSSGUuUW7ohqDzpmoJOQ3qEJTSrf6KgzGGW6zS/qkn59aVjmkp5E04+PF4cLzT+8tc3hVSowlfpn7gTjJSrKNrWwHcTegPpS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=yq913CsD; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-2d8818337a5so341936a91.1
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 08:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1725032233; x=1725637033; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UM+MQkg2ViFwyBXVD0yxj8IlX6c2zigV1VItED2uSkA=;
        b=yq913CsD5MhR8ZvKwgWMDF4SdQjW/5K30IBGP4cPxb8Rjm6bbxUQtVdIcLj2KdY7C6
         SBlQHDr9CfWPwS5fNMj7T19f3QUB/Afnpf/yoBmFBgTqUCzx9wlBgZQrobskrztsxHLC
         D7nA9s5bH1gHRcCe5oo/1tm1KfNDwH5iDXA5+qIBUFRpw/kJUzvd9FPwRSNWN2BWvvIw
         rVKkBY8oujkR4dqhC08MeTL9DqvrIYziiXr9kGhXGGcSKu3YMF03BpQ61ufm4NqQO4RI
         8pNKzkddRJNWvgxVdV+7gf1O5OVmB568JxLRYXx1HYVNexMDTpGi//zOJrIHgy/wVYol
         V1gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725032233; x=1725637033;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UM+MQkg2ViFwyBXVD0yxj8IlX6c2zigV1VItED2uSkA=;
        b=O+jMV+RYWkEj9rKaeEUwMU46KRe9D3V5U1Zq76zjIml9nVYawu0EuTmE0zuz6LAoxD
         yoidskAozLrHl8N9V/w/fVQxUt/DKJjl3kOLuwOE3SlsFoTQGg8t3RZqPmCxXXvfqdfL
         oiQIPH6ScXR6J6RndC5h/yCO1CtIo4VZ+sp+/1nZk6lrCJ+C/UyHiPLzKHd0+t6sc4x+
         y0Q2cLfdqlopEmREYbOcVg2Qaq2FYAF24GicB95h0s914e4c3O3AnTfXxsDSkbZLtoTr
         OntCqt5IteSGJkwMiUaYvVvFA6FBs2iO6EYoNlp7eycrgo3s9MnB7KBV0PvBfwG1D4wV
         P9Rg==
X-Forwarded-Encrypted: i=1; AJvYcCWGmNmboGCkuyPKZPWoKsBEMJiAaHe4H5n7BEgeES4qSQyEpusYFTFSBtzFwvoGz25LpvaN3kxV9Bsa@vger.kernel.org
X-Gm-Message-State: AOJu0Yz45VXDY0ogRag5Ntig/TFLbs3CMQr7OZL0ONTUwJZuAFw4sf/r
	sJFz3n1nV5jAZiOVrCmgJArRkNp4lSbVbiY3J376+p96+zYgVzwAy2LNMEhfV7QZqcYTay/nbwq
	bVmRTqfYMT2538TKP8M49Zvx3bY8TYcQ2t1ix+g==
X-Google-Smtp-Source: AGHT+IEHStbAPDt3MEQagJ4R91O240Dty+pZdEj29TVOQZ/cOs+vlhiHHXljxabTcVWrcXM3EnK1RriuR3ZLGzPn4DM=
X-Received: by 2002:a17:90b:e90:b0:2cf:dd3c:9b0d with SMTP id
 98e67ed59e1d1-2d856a2ea31mr9198989a91.2.1725032232384; Fri, 30 Aug 2024
 08:37:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1718388908.git.tjeznach@rivosinc.com> <e2792d6559f9f3e02b2243538647ef60f14176fd.1718388909.git.tjeznach@rivosinc.com>
 <CALw707q=B4h4CF3CvJOiRMMYqzvO_NG+taMLzZquCP=A9bgu0g@mail.gmail.com>
In-Reply-To: <CALw707q=B4h4CF3CvJOiRMMYqzvO_NG+taMLzZquCP=A9bgu0g@mail.gmail.com>
From: Tomasz Jeznach <tjeznach@rivosinc.com>
Date: Fri, 30 Aug 2024 08:37:01 -0700
Message-ID: <CAH2o1u5qU8y=FHRANQ74WnGfMim24Pho2av17rE5ZObZywjB4g@mail.gmail.com>
Subject: Re: [PATCH v8 3/7] iommu/riscv: Add RISC-V IOMMU PCIe device driver
To: Jim Shu <jim.shu@sifive.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Anup Patel <apatel@ventanamicro.com>, devicetree@vger.kernel.org, 
	Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, linux@rivosinc.com, 
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, 
	Sebastien Boeuf <seb@rivosinc.com>, iommu@lists.linux.dev, 
	Palmer Dabbelt <palmer@dabbelt.com>, Nick Kossifidis <mick@ics.forth.gr>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-riscv@lists.infradead.org, 
	Lu Baolu <baolu.lu@linux.intel.com>, Zong Li <zong.li@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 30, 2024 at 12:04=E2=80=AFAM Jim Shu <jim.shu@sifive.com> wrote=
:
>
> Hi Tomasz,
>
> QEMU RISC-V IOMMU will switch the PCIe vendor/device ID to Red Hat one
> [1] in the latest v6 patch.
> Will we also support the PCIe ID of Red Hat one in the Linux driver?
>

Absolutely yes. I've been holding of with adding Red Hat PID/VID to
limit number of changes outside iommu subsystem in this patch series,
planing to sent single change adding new PCI IDs once this series is
accepted. Driver implementation is generic and should correctly
interact with QEMU model and other hardware implementations of RISC-V
IOMMU specification.

Best regards,
 - Tomasz

> [1] https://patchew.org/QEMU/20240801154334.1009852-1-dbarboza@ventanamic=
ro.com/20240801154334.1009852-5-dbarboza@ventanamicro.com/
>
>
> Regards,
> Jim Shu
>
>
>
> On Sat, Jun 15, 2024 at 1:29=E2=80=AFPM Tomasz Jeznach <tjeznach@rivosinc=
.com> wrote:
> >
> > Introduce device driver for PCIe implementation
> > of RISC-V IOMMU architected hardware.
> >
> > IOMMU hardware and system support for MSI or MSI-X is
> > required by this implementation.
> >
> > Vendor and device identifiers used in this patch
> > matches QEMU implementation of the RISC-V IOMMU PCIe
> > device, from Rivos VID (0x1efd) range allocated by the PCI-SIG.
> >
> > MAINTAINERS | added iommu-pci.c already covered by matching pattern.
> >
> > Link: https://lore.kernel.org/qemu-devel/20240307160319.675044-1-dbarbo=
za@ventanamicro.com/
> > Co-developed-by: Nick Kossifidis <mick@ics.forth.gr>
> > Signed-off-by: Nick Kossifidis <mick@ics.forth.gr>
> > Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>
> > Signed-off-by: Tomasz Jeznach <tjeznach@rivosinc.com>
> > ---
> >  drivers/iommu/riscv/Kconfig     |   5 ++
> >  drivers/iommu/riscv/Makefile    |   1 +
> >  drivers/iommu/riscv/iommu-pci.c | 119 ++++++++++++++++++++++++++++++++
> >  3 files changed, 125 insertions(+)
> >  create mode 100644 drivers/iommu/riscv/iommu-pci.c
> >
> > diff --git a/drivers/iommu/riscv/Kconfig b/drivers/iommu/riscv/Kconfig
> > index 5dcc5c45aa50..c071816f59a6 100644
> > --- a/drivers/iommu/riscv/Kconfig
> > +++ b/drivers/iommu/riscv/Kconfig
> > @@ -13,3 +13,8 @@ config RISCV_IOMMU
> >
> >           Say Y here if your SoC includes an IOMMU device implementing
> >           the RISC-V IOMMU architecture.
> > +
> > +config RISCV_IOMMU_PCI
> > +       def_bool y if RISCV_IOMMU && PCI_MSI
> > +       help
> > +         Support for the PCIe implementation of RISC-V IOMMU architect=
ure.
> > diff --git a/drivers/iommu/riscv/Makefile b/drivers/iommu/riscv/Makefil=
e
> > index e4c189de58d3..f54c9ed17d41 100644
> > --- a/drivers/iommu/riscv/Makefile
> > +++ b/drivers/iommu/riscv/Makefile
> > @@ -1,2 +1,3 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >  obj-$(CONFIG_RISCV_IOMMU) +=3D iommu.o iommu-platform.o
> > +obj-$(CONFIG_RISCV_IOMMU_PCI) +=3D iommu-pci.o
> > diff --git a/drivers/iommu/riscv/iommu-pci.c b/drivers/iommu/riscv/iomm=
u-pci.c
> > new file mode 100644
> > index 000000000000..e675acceb290
> > --- /dev/null
> > +++ b/drivers/iommu/riscv/iommu-pci.c
> > @@ -0,0 +1,119 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +
> > +/*
> > + * Copyright =C2=A9 2022-2024 Rivos Inc.
> > + * Copyright =C2=A9 2023 FORTH-ICS/CARV
> > + *
> > + * RISCV IOMMU as a PCIe device
> > + *
> > + * Authors
> > + *     Tomasz Jeznach <tjeznach@rivosinc.com>
> > + *     Nick Kossifidis <mick@ics.forth.gr>
> > + */
> > +
> > +#include <linux/compiler.h>
> > +#include <linux/init.h>
> > +#include <linux/iommu.h>
> > +#include <linux/kernel.h>
> > +#include <linux/pci.h>
> > +
> > +#include "iommu-bits.h"
> > +#include "iommu.h"
> > +
> > +/* Rivos Inc. assigned PCI Vendor and Device IDs */
> > +#ifndef PCI_VENDOR_ID_RIVOS
> > +#define PCI_VENDOR_ID_RIVOS             0x1efd
> > +#endif
> > +
> > +#ifndef PCI_DEVICE_ID_RIVOS_IOMMU
> > +#define PCI_DEVICE_ID_RIVOS_IOMMU       0xedf1
> > +#endif
> > +
> > +static int riscv_iommu_pci_probe(struct pci_dev *pdev, const struct pc=
i_device_id *ent)
> > +{
> > +       struct device *dev =3D &pdev->dev;
> > +       struct riscv_iommu_device *iommu;
> > +       int rc, vec;
> > +
> > +       rc =3D pcim_enable_device(pdev);
> > +       if (rc)
> > +               return rc;
> > +
> > +       if (!(pci_resource_flags(pdev, 0) & IORESOURCE_MEM))
> > +               return -ENODEV;
> > +
> > +       if (pci_resource_len(pdev, 0) < RISCV_IOMMU_REG_SIZE)
> > +               return -ENODEV;
> > +
> > +       rc =3D pcim_iomap_regions(pdev, BIT(0), pci_name(pdev));
> > +       if (rc)
> > +               return dev_err_probe(dev, rc, "pcim_iomap_regions faile=
d\n");
> > +
> > +       iommu =3D devm_kzalloc(dev, sizeof(*iommu), GFP_KERNEL);
> > +       if (!iommu)
> > +               return -ENOMEM;
> > +
> > +       iommu->dev =3D dev;
> > +       iommu->reg =3D pcim_iomap_table(pdev)[0];
> > +
> > +       pci_set_master(pdev);
> > +       dev_set_drvdata(dev, iommu);
> > +
> > +       /* Check device reported capabilities / features. */
> > +       iommu->caps =3D riscv_iommu_readq(iommu, RISCV_IOMMU_REG_CAPABI=
LITIES);
> > +       iommu->fctl =3D riscv_iommu_readl(iommu, RISCV_IOMMU_REG_FCTL);
> > +
> > +       /* The PCI driver only uses MSIs, make sure the IOMMU supports =
this */
> > +       switch (FIELD_GET(RISCV_IOMMU_CAPABILITIES_IGS, iommu->caps)) {
> > +       case RISCV_IOMMU_CAPABILITIES_IGS_MSI:
> > +       case RISCV_IOMMU_CAPABILITIES_IGS_BOTH:
> > +               break;
> > +       default:
> > +               return dev_err_probe(dev, -ENODEV,
> > +                                    "unable to use message-signaled in=
terrupts\n");
> > +       }
> > +
> > +       /* Allocate and assign IRQ vectors for the various events */
> > +       rc =3D pci_alloc_irq_vectors(pdev, 1, RISCV_IOMMU_INTR_COUNT,
> > +                                  PCI_IRQ_MSIX | PCI_IRQ_MSI);
> > +       if (rc <=3D 0)
> > +               return dev_err_probe(dev, -ENODEV,
> > +                                    "unable to allocate irq vectors\n"=
);
> > +
> > +       iommu->irqs_count =3D rc;
> > +       for (vec =3D 0; vec < iommu->irqs_count; vec++)
> > +               iommu->irqs[vec] =3D msi_get_virq(dev, vec);
> > +
> > +       /* Enable message-signaled interrupts, fctl.WSI */
> > +       if (iommu->fctl & RISCV_IOMMU_FCTL_WSI) {
> > +               iommu->fctl ^=3D RISCV_IOMMU_FCTL_WSI;
> > +               riscv_iommu_writel(iommu, RISCV_IOMMU_REG_FCTL, iommu->=
fctl);
> > +       }
> > +
> > +       return riscv_iommu_init(iommu);
> > +}
> > +
> > +static void riscv_iommu_pci_remove(struct pci_dev *pdev)
> > +{
> > +       struct riscv_iommu_device *iommu =3D dev_get_drvdata(&pdev->dev=
);
> > +
> > +       riscv_iommu_remove(iommu);
> > +}
> > +
> > +static const struct pci_device_id riscv_iommu_pci_tbl[] =3D {
> > +       {PCI_VENDOR_ID_RIVOS, PCI_DEVICE_ID_RIVOS_IOMMU,
> > +        PCI_ANY_ID, PCI_ANY_ID, 0, 0, 0},
> > +       {0,}
> > +};
> > +
> > +static struct pci_driver riscv_iommu_pci_driver =3D {
> > +       .name =3D KBUILD_MODNAME,
> > +       .id_table =3D riscv_iommu_pci_tbl,
> > +       .probe =3D riscv_iommu_pci_probe,
> > +       .remove =3D riscv_iommu_pci_remove,
> > +       .driver =3D {
> > +               .suppress_bind_attrs =3D true,
> > +       },
> > +};
> > +
> > +builtin_pci_driver(riscv_iommu_pci_driver);
> > --
> > 2.34.1
> >
> >
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv

