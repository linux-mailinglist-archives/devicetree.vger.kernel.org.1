Return-Path: <devicetree+bounces-11705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6927D65E2
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:56:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3E2BF1C208FE
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:56:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8298B1F60F;
	Wed, 25 Oct 2023 08:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUljIP0n"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669C31FD1
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:56:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7016EC433C8;
	Wed, 25 Oct 2023 08:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698224162;
	bh=8Bq3Qbr/gkUku/+SWoEdJgAMfakCIxzCaI3vtlBxij0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=uUljIP0nXjpIJwp0WDGa9ZfJn/zLuzz3k43zWJq4sGpb8ZuHWM7LAb8VPIJivr+MV
	 LFuMNqCL/2FMw72a12OQh1D1zoQ5PXSyE0Zz0yVxVXJllKkcyXMuXuNQVLvKcqDj3Q
	 PshpFP9LtcjXFQ0i2zLTznMLaCFqHtWUWlSVZw6xP6auTvTC4U8CuY5VWL8gt3xl1q
	 uVccUUx1xQmsx2izxdQdY1LZMkKy/l0dcJQUw92LTiZKx4or3GnnUq6pzRapDhCKbS
	 sZ7m+xYxOKQloKVkVQTXoprD1S1sdCzXVGnOcAG6EEOFa+/qHKAi+CLNy23Nc63Mz1
	 gse8XjPHTo1xA==
From: =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand
 <frowand.list@gmail.com>, Conor Dooley <conor+dt@kernel.org>, Marc Zyngier
 <maz@kernel.org>, Atish Patra <atishp@atishpatra.org>, Andrew Jones
 <ajones@ventanamicro.com>, Sunil V L <sunilvl@ventanamicro.com>, Saravana
 Kannan <saravanak@google.com>, Anup Patel <anup@brainfault.org>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v11 09/14] irqchip/riscv-imsic: Add support for PCI MSI
 irqdomain
In-Reply-To: <CAK9=C2UVgTd-a0671Lab_ZeOPWP3=wHY+pydKHqaR-Yg65YhrA@mail.gmail.com>
References: <20231023172800.315343-1-apatel@ventanamicro.com>
 <20231023172800.315343-10-apatel@ventanamicro.com>
 <8734y0rwtw.fsf@all.your.base.are.belong.to.us>
 <CAK9=C2UVgTd-a0671Lab_ZeOPWP3=wHY+pydKHqaR-Yg65YhrA@mail.gmail.com>
Date: Wed, 25 Oct 2023 10:55:59 +0200
Message-ID: <87jzrbf5cw.fsf@all.your.base.are.belong.to.us>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Anup Patel <apatel@ventanamicro.com> writes:

> On Tue, Oct 24, 2023 at 6:39=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjorn@kern=
el.org> wrote:
>>
>> Anup Patel <apatel@ventanamicro.com> writes:
>>
>> > The Linux PCI framework requires it's own dedicated MSI irqdomain so
>> > let us create PCI MSI irqdomain as child of the IMSIC base irqdomain.
>> >
>> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
>> > ---
>> >  drivers/irqchip/Kconfig                    |  7 +++
>> >  drivers/irqchip/irq-riscv-imsic-platform.c | 51 ++++++++++++++++++++++
>> >  drivers/irqchip/irq-riscv-imsic-state.h    |  1 +
>> >  3 files changed, 59 insertions(+)
>> >
>> > diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
>> > index bdd80716114d..c1d69b418dfb 100644
>> > --- a/drivers/irqchip/Kconfig
>> > +++ b/drivers/irqchip/Kconfig
>> > @@ -552,6 +552,13 @@ config RISCV_IMSIC
>> >       select IRQ_DOMAIN_HIERARCHY
>> >       select GENERIC_MSI_IRQ
>> >
>> > +config RISCV_IMSIC_PCI
>> > +     bool
>> > +     depends on RISCV_IMSIC
>> > +     depends on PCI
>> > +     depends on PCI_MSI
>> > +     default RISCV_IMSIC
>> > +
>> >  config EXYNOS_IRQ_COMBINER
>> >       bool "Samsung Exynos IRQ combiner support" if COMPILE_TEST
>> >       depends on (ARCH_EXYNOS && ARM) || COMPILE_TEST
>> > diff --git a/drivers/irqchip/irq-riscv-imsic-platform.c b/drivers/irqc=
hip/irq-riscv-imsic-platform.c
>> > index 23d286cb017e..cdb659401199 100644
>> > --- a/drivers/irqchip/irq-riscv-imsic-platform.c
>> > +++ b/drivers/irqchip/irq-riscv-imsic-platform.c
>> > @@ -13,6 +13,7 @@
>> >  #include <linux/irqdomain.h>
>> >  #include <linux/module.h>
>> >  #include <linux/msi.h>
>> > +#include <linux/pci.h>
>> >  #include <linux/platform_device.h>
>> >  #include <linux/spinlock.h>
>> >  #include <linux/smp.h>
>> > @@ -215,6 +216,42 @@ static const struct irq_domain_ops imsic_base_dom=
ain_ops =3D {
>> >  #endif
>> >  };
>> >
>> > +#ifdef CONFIG_RISCV_IMSIC_PCI
>> > +
>> > +static void imsic_pci_mask_irq(struct irq_data *d)
>> > +{
>> > +     pci_msi_mask_irq(d);
>> > +     irq_chip_mask_parent(d);
>>
>> I've asked this before, but I still don't get why you need to propagate
>> to the parent? Why isn't masking on PCI enough?
>>
>
> We are using hierarchical IRQ domains where IMSIC-BASE is
> the root domain whereas IMSIC-PLAT domain (MSI irq domain
> for platform devices) and IMSIC-PCI domain (MSI irq domain
> for PCI devices). For hierarchical IRQ domains, if irq domain X
> does not implement irq_mask/unmask then the parent irq
> domain irq_mask/unmask is called with parent irq descriptor.
>
> Now for IMSIC-PCI domain, the PCI framework expects the
> pci_msi_mask/unmask_irq() functions to be called but if
> we directly point pci_msi_mask/unmask_irq() in the IMSIC-PCI
> irqchip then IMSIC-BASE (parent domain) irq_mask/umask
> won't be called hence the IRQ won't be masked/unmask.
> Due to this, we call both pci_msi_mask/unmask_irq() and
> irq_chip_mask/unmask_parent() for IMSIC-PCI domain.

Ok. I wont dig more into it for now! If the interrupt is disabled at
PCI, it seems a bit overkill to *also* mask it at the IMSIC level...


Bj=C3=B6rn

