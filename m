Return-Path: <devicetree+bounces-44802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A4F85F9D1
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 14:30:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 037C91C252F1
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 13:30:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDA23134751;
	Thu, 22 Feb 2024 13:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="w7k1AQ7H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69007133983
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 13:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708608640; cv=none; b=B4i+10pN/EFvYwC028oTaTUhHhjVF16pFodMcsclvg2rnC0FGBeBDnldjWxkdkqi226Sk8mvpB4dEOpFwUXHOptA2vGrbMsjvHinawcmNapAo/t9/UkgMxCzauwMNACQG/mbK8OUcJ1ZEYQDffLIGo0Mq2e4841c5G0zMHKwAaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708608640; c=relaxed/simple;
	bh=is9pLe/ncZvHnudaxArpyBBcjnkjUXyeuvoguYondns=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=d4CIp91cBe1YVEOVcq75LmnREJdPfeT1nwR4O0HgqSU/rMLGIjzRCSU53Upj7CiD6C+FrLTuvf5Au006YgXINazqxYLJ5aHyU/CzlDlbQPy4t7xSI9qNahDzQEf2YFUDl2UoU7r7u6Unl8is+nOJrfkov69tjpWRkpVJQRFyeEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=w7k1AQ7H; arc=none smtp.client-ip=209.85.166.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-364f794f237so33112725ab.1
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 05:30:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1708608637; x=1709213437; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tm6+BZx//BfcbcHBQe5tKGHx19q8gbGIF+ECXygbr2c=;
        b=w7k1AQ7HVVFqarY7SbCPeWNNBDEza5JMDigwxicBiIEqLnCbrXvPHFnXTrMjk/8O2C
         6UFzGtsE18rpDyPWQE+QrP7ahXS96yax1zRM5QirCOqFBRWszpoECWsBWrzCcjkB3fzK
         SvPq6s58Pjxj4DBdvSaLi84PVMaviCZ7nwbGvRGDOQHDpO1usOVMJPchQVWSSWP+BbbL
         hWMLX+IsDHYomvv5Gnr0j+HgjfrbGxZDhgZR7tluUoMRb1fYI91+DzzWFH/fIcdHVIZ9
         1JXyEf40+l6gDpPLIcVu8aDOGPUFGAv2tEabSu4bLLmQW3vZCQGXajbOQcsVD6fIpUnz
         DREg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708608637; x=1709213437;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tm6+BZx//BfcbcHBQe5tKGHx19q8gbGIF+ECXygbr2c=;
        b=lWv7+u+7W3Ghn5deKvJ3UcOll7AdjRIXIkAfPAVZfS5qVoCLaBLRIjhX3wndkvuyvn
         oN8U+pZQiByZwK7k0yzl8uKyb/tfC0WIbp/G5n61cxtl5n0AFbqrGSJS73kR52G/Jx4X
         Vw8nE8NnFdOwTxXP3M+CHScilFeNjACh97Ho/c9NwaoFcqXQcLzrTW92IRUa1eY5plry
         Oz2FziBAjpRLw736W7nSLgPxPAQiG/6PqmNrAzy/g3e9kWSj/thRi6K8IqgKPdpGRE28
         gYPQ9TICHMjejErY2m0WQZymOk47JDRN34kKG/2EmBaTS4Ln+p2zyc1Quz3AQGrmgyek
         tVOg==
X-Forwarded-Encrypted: i=1; AJvYcCWpkuwaYqHfQCWJmxxDXdm3qFkXuLAa0f19R/e+ReaB5pAknTOk6H+zDU3ZSa9CUnALAXYAcm2Smmz7QzSgssk8zKhs6u5QjK5+yQ==
X-Gm-Message-State: AOJu0YwvrMaVi/RpouNeensur9XwyC46CkXRtsZRUr7t+a4kZ+0XfP1c
	9risYv6w0M8e3PB48ov57Y66Q3hmV6BmkYfulpJux3QLNJgw7u1ukb5iYksLc7EwdxbcLFoN9+R
	HLc6CW56LyJL/80yitM9GrrOuYoYt3bwzH7q1QuS8A+inQ/+z
X-Google-Smtp-Source: AGHT+IH7+5ZCczA7CU0C46qlCuTGH9ZfX4fnyGxuO1KETodyAdfp/RwxJf4awEiJMnqjcwJ7wcD82uB7iK3DMxQoA9s=
X-Received: by 2002:a05:6e02:1292:b0:363:da36:f643 with SMTP id
 y18-20020a056e02129200b00363da36f643mr18895064ilq.8.1708608637266; Thu, 22
 Feb 2024 05:30:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240222094006.1030709-1-apatel@ventanamicro.com>
 <20240222094006.1030709-14-apatel@ventanamicro.com> <87msrstzck.fsf@all.your.base.are.belong.to.us>
In-Reply-To: <87msrstzck.fsf@all.your.base.are.belong.to.us>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 22 Feb 2024 19:00:25 +0530
Message-ID: <CAAhSdy3DtDFnZKQLXXJ2OPPSv5s8bbGvm8Mmqhg_F2rPneQ3sw@mail.gmail.com>
Subject: Re: [PATCH v14 13/18] irqchip/riscv-imsic: Add device MSI domain
 support for PCI devices
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>
Cc: Anup Patel <apatel@ventanamicro.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Saravana Kannan <saravanak@google.com>, Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org, 
	Atish Patra <atishp@atishpatra.org>, linux-riscv@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, Andrew Jones <ajones@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 22, 2024 at 6:44=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjorn@kernel=
.org> wrote:
>
> Anup Patel <apatel@ventanamicro.com> writes:
>
> > The Linux PCI framework supports per-device MSI domains for PCI devices
> > so extend the IMSIC driver to allow PCI per-device MSI domains.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > ---
> >  drivers/irqchip/Kconfig                    |  7 +++++
> >  drivers/irqchip/irq-riscv-imsic-platform.c | 35 ++++++++++++++++++++--
> >  2 files changed, 40 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
> > index 85f86e31c996..2fc0cb32341a 100644
> > --- a/drivers/irqchip/Kconfig
> > +++ b/drivers/irqchip/Kconfig
> > @@ -553,6 +553,13 @@ config RISCV_IMSIC
> >       select GENERIC_IRQ_MATRIX_ALLOCATOR
> >       select GENERIC_MSI_IRQ
> >
> > +config RISCV_IMSIC_PCI
> > +     bool
> > +     depends on RISCV_IMSIC
> > +     depends on PCI
> > +     depends on PCI_MSI
> > +     default RISCV_IMSIC
> > +
> >  config EXYNOS_IRQ_COMBINER
> >       bool "Samsung Exynos IRQ combiner support" if COMPILE_TEST
> >       depends on (ARCH_EXYNOS && ARM) || COMPILE_TEST
> > diff --git a/drivers/irqchip/irq-riscv-imsic-platform.c b/drivers/irqch=
ip/irq-riscv-imsic-platform.c
> > index e2344fc08dca..90ddcdd0bba5 100644
> > --- a/drivers/irqchip/irq-riscv-imsic-platform.c
> > +++ b/drivers/irqchip/irq-riscv-imsic-platform.c
> > @@ -14,6 +14,7 @@
> >  #include <linux/irqdomain.h>
> >  #include <linux/module.h>
> >  #include <linux/msi.h>
> > +#include <linux/pci.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/spinlock.h>
> >  #include <linux/smp.h>
> > @@ -208,6 +209,28 @@ static const struct irq_domain_ops imsic_base_doma=
in_ops =3D {
> >  #endif
> >  };
> >
> > +#ifdef CONFIG_RISCV_IMSIC_PCI
> > +
> > +static void imsic_pci_mask_irq(struct irq_data *d)
> > +{
> > +     pci_msi_mask_irq(d);
> > +     irq_chip_mask_parent(d);
> > +}
> > +
> > +static void imsic_pci_unmask_irq(struct irq_data *d)
> > +{
> > +     irq_chip_unmask_parent(d);
> > +     pci_msi_unmask_irq(d);
> > +}
> > +
> > +#define MATCH_PCI_MSI                BIT(DOMAIN_BUS_PCI_MSI)
> > +
> > +#else
> > +
> > +#define MATCH_PCI_MSI                0
> > +
> > +#endif
> > +
> >  static bool imsic_init_dev_msi_info(struct device *dev,
> >                                   struct irq_domain *domain,
> >                                   struct irq_domain *real_parent,
> > @@ -231,6 +254,13 @@ static bool imsic_init_dev_msi_info(struct device =
*dev,
> >
> >       /* Is the target supported? */
> >       switch (info->bus_token) {
> > +#ifdef CONFIG_RISCV_IMSIC_PCI
> > +     case DOMAIN_BUS_PCI_DEVICE_MSI:
> > +     case DOMAIN_BUS_PCI_DEVICE_MSIX:
> > +             info->chip->irq_mask =3D imsic_pci_mask_irq;
> > +             info->chip->irq_unmask =3D imsic_pci_unmask_irq;
>
> irq_set_affinity()?

It's already set by the switch-case above.

Regards,
Anup

