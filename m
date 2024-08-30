Return-Path: <devicetree+bounces-98253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D836D965809
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 09:06:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 64FFA1F22FA3
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 07:06:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FFA616A947;
	Fri, 30 Aug 2024 07:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="PfqTNQ3G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063E0168490
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 07:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725001490; cv=none; b=UtkCJQix7DTN8lpN8relvQIF5uhIM2PSEQ5C97uGydyQijvNhcmfXBkn8N4lbRqEbnGGD1lZHM1J6z/KMnMjVQDU1Dv1PkX6DLtlVq5W/ARwv8PxYma9kkARQ3GBcJdS178M+zmFyPGbuuLmAY/MhcAvMOTwkS/egraNFRBE9uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725001490; c=relaxed/simple;
	bh=eVwNtLZHmhWU/2lTbpeA+2Q2eA2Fy8/APevulXiBTos=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=g2I2bjvbv14P+5ZoTn6iLUtmbyrOC9Fkak/gDzwKcqs2O6TT/wYkRG8eu0wvHQlvu1KcATT0cUx3AfULU/BHmqd3rZgmXWX+iO6tlq7TRYjxlJ07O7Y+X/5D5eBnnuLFVLfoLJPNYc2XkNhvEkfLqBKPcxaeM077qTo9KGIgHzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=PfqTNQ3G; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5bed72ff443so1709677a12.1
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 00:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1725001487; x=1725606287; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CVwpPrfqZBi2nHqvlji9DNnqgOvs+fljgqDbmRHEQSs=;
        b=PfqTNQ3G+n0ZPu6p3jRil+bHABMrXYBeaoo8nn7MeRFWZ9YCByL7huAvpSInhbfp4d
         iHvyivhCtGM2hG8+VmF8NKTQ6e/eCAkCgUtwtm/ZeZo/i4mP8/98/7ErLdq7ztJ3RGDW
         VST31QVmBFqkeoLRFJA2hPgAH0uMfC/NMJycGqKBVy9TYHhsSpWQ9UR41PqufyZBy2TK
         7bLWtGy/pdUQgPNqlh2MtmLZC4qEgL8qhYZvjZFtN/a2qLX+ZiIi974Wo0VrXxf9Q33+
         Z4HZ5+j96NiCU24JhVlCRtGBMI29sbCcBdw/ptG0WmeRroqKWEKXojIEra/3j7A56zWN
         gKmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725001487; x=1725606287;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CVwpPrfqZBi2nHqvlji9DNnqgOvs+fljgqDbmRHEQSs=;
        b=GFWFMi0aMI1v6h/CqpeZVo8qhJlR2rzuxhzHzTXUiK7HyIuuIcT8i8RllnBtgqZ1Ag
         4Jhaall/+tRQBeQKXB/s54ualLPRNznclw9tJMIj8bycnQQ+Zx6APayKgXIK4wn0pemU
         8WDSH+5dkZWRL7DMLBhqKZFhR2Mt/RtG3nLUiCnJEUvoIuPVKnO19xuYeSaBOcBsHF5g
         ahDATSzcVSoM3eJOX0cUrrqE0A40Bs9NqVVNvlXFvML6+HypUsGmfsxg5OVN4/Kyqp46
         ngypqICG+AehAatYyUa6BApM0sNpRS3dAP+T/SL3CDCckDm6Re7zKtqud+zDhSwxkxuV
         LQpQ==
X-Forwarded-Encrypted: i=1; AJvYcCUyCDyW7X5RDbMtIu3nC6fr6Y7yZHg+lSsIDQtMWu9sIE+yB1RU57gk0CSwP1PHsZWE0tbfStZ8Afrf@vger.kernel.org
X-Gm-Message-State: AOJu0YwsxuxyrXhTUxz+9GRpfnADjEvMIwW40fyPT4ClSUxnBIr/yXSY
	J/CHTu2a4ueg7dIR+ismgWjCPDrTHqYJWpKT/4BNMG+vS+B87Yq9h3VdZ4XrXZUbH9lVkG9wUhc
	ec8zIFM9A99zXzhuMyHtAa9vd8nwfm5aq3fC1PA==
X-Google-Smtp-Source: AGHT+IG5+UfnbfxkXyVLqKMncggD6DiL+xZoZyb1S4HjdlcoRnDAxgwhgJrQSSHikJw7XAUm8zwwT/R8zXLbusS4lOc=
X-Received: by 2002:a05:6402:541b:b0:5c2:2fb6:9f50 with SMTP id
 4fb4d7f45d1cf-5c22fb6a433mr813596a12.25.1725001486802; Fri, 30 Aug 2024
 00:04:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1718388908.git.tjeznach@rivosinc.com> <e2792d6559f9f3e02b2243538647ef60f14176fd.1718388909.git.tjeznach@rivosinc.com>
In-Reply-To: <e2792d6559f9f3e02b2243538647ef60f14176fd.1718388909.git.tjeznach@rivosinc.com>
From: Jim Shu <jim.shu@sifive.com>
Date: Fri, 30 Aug 2024 15:04:35 +0800
Message-ID: <CALw707q=B4h4CF3CvJOiRMMYqzvO_NG+taMLzZquCP=A9bgu0g@mail.gmail.com>
Subject: Re: [PATCH v8 3/7] iommu/riscv: Add RISC-V IOMMU PCIe device driver
To: Tomasz Jeznach <tjeznach@rivosinc.com>
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

Hi Tomasz,

QEMU RISC-V IOMMU will switch the PCIe vendor/device ID to Red Hat one
[1] in the latest v6 patch.
Will we also support the PCIe ID of Red Hat one in the Linux driver?

[1] https://patchew.org/QEMU/20240801154334.1009852-1-dbarboza@ventanamicro=
.com/20240801154334.1009852-5-dbarboza@ventanamicro.com/


Regards,
Jim Shu



On Sat, Jun 15, 2024 at 1:29=E2=80=AFPM Tomasz Jeznach <tjeznach@rivosinc.c=
om> wrote:
>
> Introduce device driver for PCIe implementation
> of RISC-V IOMMU architected hardware.
>
> IOMMU hardware and system support for MSI or MSI-X is
> required by this implementation.
>
> Vendor and device identifiers used in this patch
> matches QEMU implementation of the RISC-V IOMMU PCIe
> device, from Rivos VID (0x1efd) range allocated by the PCI-SIG.
>
> MAINTAINERS | added iommu-pci.c already covered by matching pattern.
>
> Link: https://lore.kernel.org/qemu-devel/20240307160319.675044-1-dbarboza=
@ventanamicro.com/
> Co-developed-by: Nick Kossifidis <mick@ics.forth.gr>
> Signed-off-by: Nick Kossifidis <mick@ics.forth.gr>
> Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>
> Signed-off-by: Tomasz Jeznach <tjeznach@rivosinc.com>
> ---
>  drivers/iommu/riscv/Kconfig     |   5 ++
>  drivers/iommu/riscv/Makefile    |   1 +
>  drivers/iommu/riscv/iommu-pci.c | 119 ++++++++++++++++++++++++++++++++
>  3 files changed, 125 insertions(+)
>  create mode 100644 drivers/iommu/riscv/iommu-pci.c
>
> diff --git a/drivers/iommu/riscv/Kconfig b/drivers/iommu/riscv/Kconfig
> index 5dcc5c45aa50..c071816f59a6 100644
> --- a/drivers/iommu/riscv/Kconfig
> +++ b/drivers/iommu/riscv/Kconfig
> @@ -13,3 +13,8 @@ config RISCV_IOMMU
>
>           Say Y here if your SoC includes an IOMMU device implementing
>           the RISC-V IOMMU architecture.
> +
> +config RISCV_IOMMU_PCI
> +       def_bool y if RISCV_IOMMU && PCI_MSI
> +       help
> +         Support for the PCIe implementation of RISC-V IOMMU architectur=
e.
> diff --git a/drivers/iommu/riscv/Makefile b/drivers/iommu/riscv/Makefile
> index e4c189de58d3..f54c9ed17d41 100644
> --- a/drivers/iommu/riscv/Makefile
> +++ b/drivers/iommu/riscv/Makefile
> @@ -1,2 +1,3 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  obj-$(CONFIG_RISCV_IOMMU) +=3D iommu.o iommu-platform.o
> +obj-$(CONFIG_RISCV_IOMMU_PCI) +=3D iommu-pci.o
> diff --git a/drivers/iommu/riscv/iommu-pci.c b/drivers/iommu/riscv/iommu-=
pci.c
> new file mode 100644
> index 000000000000..e675acceb290
> --- /dev/null
> +++ b/drivers/iommu/riscv/iommu-pci.c
> @@ -0,0 +1,119 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +/*
> + * Copyright =C2=A9 2022-2024 Rivos Inc.
> + * Copyright =C2=A9 2023 FORTH-ICS/CARV
> + *
> + * RISCV IOMMU as a PCIe device
> + *
> + * Authors
> + *     Tomasz Jeznach <tjeznach@rivosinc.com>
> + *     Nick Kossifidis <mick@ics.forth.gr>
> + */
> +
> +#include <linux/compiler.h>
> +#include <linux/init.h>
> +#include <linux/iommu.h>
> +#include <linux/kernel.h>
> +#include <linux/pci.h>
> +
> +#include "iommu-bits.h"
> +#include "iommu.h"
> +
> +/* Rivos Inc. assigned PCI Vendor and Device IDs */
> +#ifndef PCI_VENDOR_ID_RIVOS
> +#define PCI_VENDOR_ID_RIVOS             0x1efd
> +#endif
> +
> +#ifndef PCI_DEVICE_ID_RIVOS_IOMMU
> +#define PCI_DEVICE_ID_RIVOS_IOMMU       0xedf1
> +#endif
> +
> +static int riscv_iommu_pci_probe(struct pci_dev *pdev, const struct pci_=
device_id *ent)
> +{
> +       struct device *dev =3D &pdev->dev;
> +       struct riscv_iommu_device *iommu;
> +       int rc, vec;
> +
> +       rc =3D pcim_enable_device(pdev);
> +       if (rc)
> +               return rc;
> +
> +       if (!(pci_resource_flags(pdev, 0) & IORESOURCE_MEM))
> +               return -ENODEV;
> +
> +       if (pci_resource_len(pdev, 0) < RISCV_IOMMU_REG_SIZE)
> +               return -ENODEV;
> +
> +       rc =3D pcim_iomap_regions(pdev, BIT(0), pci_name(pdev));
> +       if (rc)
> +               return dev_err_probe(dev, rc, "pcim_iomap_regions failed\=
n");
> +
> +       iommu =3D devm_kzalloc(dev, sizeof(*iommu), GFP_KERNEL);
> +       if (!iommu)
> +               return -ENOMEM;
> +
> +       iommu->dev =3D dev;
> +       iommu->reg =3D pcim_iomap_table(pdev)[0];
> +
> +       pci_set_master(pdev);
> +       dev_set_drvdata(dev, iommu);
> +
> +       /* Check device reported capabilities / features. */
> +       iommu->caps =3D riscv_iommu_readq(iommu, RISCV_IOMMU_REG_CAPABILI=
TIES);
> +       iommu->fctl =3D riscv_iommu_readl(iommu, RISCV_IOMMU_REG_FCTL);
> +
> +       /* The PCI driver only uses MSIs, make sure the IOMMU supports th=
is */
> +       switch (FIELD_GET(RISCV_IOMMU_CAPABILITIES_IGS, iommu->caps)) {
> +       case RISCV_IOMMU_CAPABILITIES_IGS_MSI:
> +       case RISCV_IOMMU_CAPABILITIES_IGS_BOTH:
> +               break;
> +       default:
> +               return dev_err_probe(dev, -ENODEV,
> +                                    "unable to use message-signaled inte=
rrupts\n");
> +       }
> +
> +       /* Allocate and assign IRQ vectors for the various events */
> +       rc =3D pci_alloc_irq_vectors(pdev, 1, RISCV_IOMMU_INTR_COUNT,
> +                                  PCI_IRQ_MSIX | PCI_IRQ_MSI);
> +       if (rc <=3D 0)
> +               return dev_err_probe(dev, -ENODEV,
> +                                    "unable to allocate irq vectors\n");
> +
> +       iommu->irqs_count =3D rc;
> +       for (vec =3D 0; vec < iommu->irqs_count; vec++)
> +               iommu->irqs[vec] =3D msi_get_virq(dev, vec);
> +
> +       /* Enable message-signaled interrupts, fctl.WSI */
> +       if (iommu->fctl & RISCV_IOMMU_FCTL_WSI) {
> +               iommu->fctl ^=3D RISCV_IOMMU_FCTL_WSI;
> +               riscv_iommu_writel(iommu, RISCV_IOMMU_REG_FCTL, iommu->fc=
tl);
> +       }
> +
> +       return riscv_iommu_init(iommu);
> +}
> +
> +static void riscv_iommu_pci_remove(struct pci_dev *pdev)
> +{
> +       struct riscv_iommu_device *iommu =3D dev_get_drvdata(&pdev->dev);
> +
> +       riscv_iommu_remove(iommu);
> +}
> +
> +static const struct pci_device_id riscv_iommu_pci_tbl[] =3D {
> +       {PCI_VENDOR_ID_RIVOS, PCI_DEVICE_ID_RIVOS_IOMMU,
> +        PCI_ANY_ID, PCI_ANY_ID, 0, 0, 0},
> +       {0,}
> +};
> +
> +static struct pci_driver riscv_iommu_pci_driver =3D {
> +       .name =3D KBUILD_MODNAME,
> +       .id_table =3D riscv_iommu_pci_tbl,
> +       .probe =3D riscv_iommu_pci_probe,
> +       .remove =3D riscv_iommu_pci_remove,
> +       .driver =3D {
> +               .suppress_bind_attrs =3D true,
> +       },
> +};
> +
> +builtin_pci_driver(riscv_iommu_pci_driver);
> --
> 2.34.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

