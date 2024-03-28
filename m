Return-Path: <devicetree+bounces-48622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B8E872E7C
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 06:44:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9E8428185D
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 05:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A532514F7F;
	Wed,  6 Mar 2024 05:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="B1vNTTJq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 929791BF2B
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 05:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709703839; cv=none; b=gcnEpdnJBvYo1C5EvBaWi3ur4Ic4IcmT4u2GQOp6Af0iYshWM9DhjR3pO652aSx5vu8ykjDPVDGmT42NTGZEkQwcZ7Hg3dK3tz85giJ5Qy2JDErHloMWzlqz1tAQ7au3JpDC9CJwFnEg67PDzEQx5YpbmFOXy+s939DIEk6ksTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709703839; c=relaxed/simple;
	bh=vJK76+h0P/w83D+dv8tCr7KX/pKTDybaF7t8CLG0UpI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S9ZVon6nqMoPAEuKuTJr4fQxnvruUJnzb7xnQ7ZbITjiA5nPIl1GWpkObNIDX9unzxWCozvj+AcRvxHQvdDo+sr20Cg1HBAJ2nNH16s6mqtgdb+Y2neqHfmQ6Q1Cf98q/cNP0fw4U6FJsq6WUAmjtSOwtAxJAjJFUQGZa6ffSu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=B1vNTTJq; arc=none smtp.client-ip=209.85.219.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-68fb7928970so29118996d6.2
        for <devicetree@vger.kernel.org>; Tue, 05 Mar 2024 21:43:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1709703836; x=1710308636; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wo3r4Jf7W8kBCpIU2AztHSyZaa0WfmZJXclb5GpV3EE=;
        b=B1vNTTJqsBgeUuJ2RshgJITv4sykfMf9fmw+3i1h8oE9AGzp6pyTszT1xgmt/YNBNn
         sjQ33o6Nq0Lk8MZCj6vkhAmMeDtiwtAsl13zAHZmzh5LiJmdQTThbSxdOK0CpHFXVKdE
         ii/luQC8cdatdREGrQoUI0/HOI66h3EMbe/2fMZlkp+9fz5lAU3KX75qjcqVx3tz00OA
         zDEaczx0gGXMQ68DLE7gTwcsCh2Bmu6iQ55q1yN6wwqBW611z/b+hfX15sApEPEkLxZA
         a22amjRjr89ZiqpSDU5/eucq9rCBU5T/hSaj6m8UjwYFJcuRDIRt+BEAqxAXT9V3mOHs
         Ia/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709703836; x=1710308636;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wo3r4Jf7W8kBCpIU2AztHSyZaa0WfmZJXclb5GpV3EE=;
        b=H7n52ELo15zOedcE/8r5dvMLPTTWXbjUHc3QHOXXaR8vdkp18+ZAfEXoY1BxU0gAFw
         ikwQCC3WBvQ2VNA/7GmARgRlK4QwUbjvo4RG2rgQ/i1OB7Y+f3ao03jwqBv05lVzE5+s
         iV7TFZQj3qqZ2xgJzzpYCg47eLaxTI8aLLz88fqhbCqxNogrdc+bSCEGfOSVoQ8U+iAU
         Ro7TntNbyDWoQxOXdyUpc23ryW3LjyyQ0+q+0ZyfgZlLIUoAtjSLNMqgxTDGFy5H+JD1
         6/XDiAnpiDJyqWi0xtj/X0mOlVAyUJW4+AwzPXSvN45bZGODcCw2Jtfcm+WixLQ4YafP
         nHng==
X-Gm-Message-State: AOJu0Yya7ukWmDaycn0AYgiKWbf30oJapvTl5dfkQekwocr5Id7CcizJ
	NF9dEEDjpBz+LXia96r6kejILZxdnbGFUytrTIV04LU+0eV63NsbhXPWfFvPPP0=
X-Google-Smtp-Source: AGHT+IGjaRCHme+oU0kSkxsFbuhf00fb/NSUiJ5wJD5G1YljPGgaAwF0KORZDmadUNFrfMOX1bzYJg==
X-Received: by 2002:a0c:ec88:0:b0:690:667e:573f with SMTP id u8-20020a0cec88000000b00690667e573fmr3987545qvo.63.1709703836418;
        Tue, 05 Mar 2024 21:43:56 -0800 (PST)
Received: from [100.64.0.1] ([170.85.8.192])
        by smtp.gmail.com with ESMTPSA id cy20-20020a05621418d400b006907e34d029sm2278090qvb.2.2024.03.05.21.43.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Mar 2024 21:43:55 -0800 (PST)
Message-ID: <8a0c321a-6b61-40d0-98d4-6c2c868da45e@sifive.com>
Date: Tue, 5 Mar 2024 23:43:53 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v15 08/10] irqchip/riscv-aplic: Add support for MSI-mode
Content-Language: en-US
To: Anup Patel <apatel@ventanamicro.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Frank Rowand <frowand.list@gmail.com>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, Saravana Kannan <saravanak@google.com>,
 Marc Zyngier <maz@kernel.org>, Anup Patel <anup@brainfault.org>,
 linux-kernel@vger.kernel.org, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn@kernel.org>, Atish Patra <atishp@atishpatra.org>,
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Andrew Jones <ajones@ventanamicro.com>
References: <20240226040746.1396416-1-apatel@ventanamicro.com>
 <20240226040746.1396416-9-apatel@ventanamicro.com>
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <20240226040746.1396416-9-apatel@ventanamicro.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Anup,

On 2024-02-25 10:07 PM, Anup Patel wrote:
> The RISC-V advanced platform-level interrupt controller (APLIC) has
> two modes of operation: 1) Direct mode and 2) MSI mode.
> (For more details, refer https://github.com/riscv/riscv-aia)
> 
> In APLIC MSI-mode, wired interrupts are forwared as message signaled
> interrupts (MSIs) to CPUs via IMSIC.
> 
> Extend the existing APLIC irqchip driver to support MSI-mode for
> RISC-V platforms having both wired interrupts and MSIs.
> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  drivers/irqchip/Kconfig                |   6 +
>  drivers/irqchip/Makefile               |   1 +
>  drivers/irqchip/irq-riscv-aplic-main.c |   2 +-
>  drivers/irqchip/irq-riscv-aplic-main.h |   8 +
>  drivers/irqchip/irq-riscv-aplic-msi.c  | 263 +++++++++++++++++++++++++
>  5 files changed, 279 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/irqchip/irq-riscv-aplic-msi.c
> 
> diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
> index dbc8811d3764..806b5fccb3e8 100644
> --- a/drivers/irqchip/Kconfig
> +++ b/drivers/irqchip/Kconfig
> @@ -551,6 +551,12 @@ config RISCV_APLIC
>  	depends on RISCV
>  	select IRQ_DOMAIN_HIERARCHY
>  
> +config RISCV_APLIC_MSI
> +	bool
> +	depends on RISCV_APLIC
> +	select GENERIC_MSI_IRQ
> +	default RISCV_APLIC
> +
>  config RISCV_IMSIC
>  	bool
>  	depends on RISCV
> diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
> index 7f8289790ed8..47995fdb2c60 100644
> --- a/drivers/irqchip/Makefile
> +++ b/drivers/irqchip/Makefile
> @@ -96,6 +96,7 @@ obj-$(CONFIG_CSKY_MPINTC)		+= irq-csky-mpintc.o
>  obj-$(CONFIG_CSKY_APB_INTC)		+= irq-csky-apb-intc.o
>  obj-$(CONFIG_RISCV_INTC)		+= irq-riscv-intc.o
>  obj-$(CONFIG_RISCV_APLIC)		+= irq-riscv-aplic-main.o irq-riscv-aplic-direct.o
> +obj-$(CONFIG_RISCV_APLIC_MSI)		+= irq-riscv-aplic-msi.o
>  obj-$(CONFIG_RISCV_IMSIC)		+= irq-riscv-imsic-state.o irq-riscv-imsic-early.o irq-riscv-imsic-platform.o
>  obj-$(CONFIG_SIFIVE_PLIC)		+= irq-sifive-plic.o
>  obj-$(CONFIG_IMX_IRQSTEER)		+= irq-imx-irqsteer.o
> diff --git a/drivers/irqchip/irq-riscv-aplic-main.c b/drivers/irqchip/irq-riscv-aplic-main.c
> index 160ff99d6979..774a0c97fdab 100644
> --- a/drivers/irqchip/irq-riscv-aplic-main.c
> +++ b/drivers/irqchip/irq-riscv-aplic-main.c
> @@ -187,7 +187,7 @@ static int aplic_probe(struct platform_device *pdev)
>  	if (is_of_node(dev->fwnode))
>  		msi_mode = of_property_present(to_of_node(dev->fwnode), "msi-parent");
>  	if (msi_mode)
> -		rc = -ENODEV;
> +		rc = aplic_msi_setup(dev, regs);
>  	else
>  		rc = aplic_direct_setup(dev, regs);
>  	if (rc)
> diff --git a/drivers/irqchip/irq-riscv-aplic-main.h b/drivers/irqchip/irq-riscv-aplic-main.h
> index 4cfbadf37ddc..4393927d8c80 100644
> --- a/drivers/irqchip/irq-riscv-aplic-main.h
> +++ b/drivers/irqchip/irq-riscv-aplic-main.h
> @@ -40,5 +40,13 @@ int aplic_irqdomain_translate(struct irq_fwspec *fwspec, u32 gsi_base,
>  void aplic_init_hw_global(struct aplic_priv *priv, bool msi_mode);
>  int aplic_setup_priv(struct aplic_priv *priv, struct device *dev, void __iomem *regs);
>  int aplic_direct_setup(struct device *dev, void __iomem *regs);
> +#ifdef CONFIG_RISCV_APLIC_MSI
> +int aplic_msi_setup(struct device *dev, void __iomem *regs);
> +#else
> +static inline int aplic_msi_setup(struct device *dev, void __iomem *regs)
> +{
> +	return -ENODEV;
> +}
> +#endif
>  
>  #endif
> diff --git a/drivers/irqchip/irq-riscv-aplic-msi.c b/drivers/irqchip/irq-riscv-aplic-msi.c
> new file mode 100644
> index 000000000000..b2a25e011bb2
> --- /dev/null
> +++ b/drivers/irqchip/irq-riscv-aplic-msi.c
> @@ -0,0 +1,263 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2021 Western Digital Corporation or its affiliates.
> + * Copyright (C) 2022 Ventana Micro Systems Inc.
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/bitops.h>
> +#include <linux/cpu.h>
> +#include <linux/interrupt.h>
> +#include <linux/irqchip.h>
> +#include <linux/irqchip/riscv-aplic.h>
> +#include <linux/irqchip/riscv-imsic.h>
> +#include <linux/module.h>
> +#include <linux/msi.h>
> +#include <linux/of_irq.h>
> +#include <linux/platform_device.h>
> +#include <linux/printk.h>
> +#include <linux/smp.h>
> +
> +#include "irq-riscv-aplic-main.h"
> +
> +static void aplic_msi_irq_unmask(struct irq_data *d)
> +{
> +	aplic_irq_unmask(d);
> +	irq_chip_unmask_parent(d);
> +}
> +
> +static void aplic_msi_irq_mask(struct irq_data *d)
> +{
> +	irq_chip_mask_parent(d);
> +	aplic_irq_mask(d);

Surely it's not necessary to mask an interrupt at both the APLIC and the
receiver of the MSI. This ends up with __imsic_local_sync() in the hot path,
which adds significant overhead.

I would suggest the following:

	.irq_mask	= aplic_irq_mask,
	.irq_unmask	= aplic_irq_unmask,
	.irq_enable	= irq_chip_enable_parent,
	.irq_disable	= irq_chip_disable_parent,

> +}
> +
> +static void aplic_msi_irq_eoi(struct irq_data *d)
> +{
> +	struct aplic_priv *priv = irq_data_get_irq_chip_data(d);
> +	u32 reg_off, reg_mask;
> +
> +	/*
> +	 * EOI handling is required only for level-triggered interrupts
> +	 * when APLIC is in MSI mode.
> +	 */
> +
> +	reg_off = APLIC_CLRIP_BASE + ((d->hwirq / APLIC_IRQBITS_PER_REG) * 4);
> +	reg_mask = BIT(d->hwirq % APLIC_IRQBITS_PER_REG);
> +	switch (irqd_get_trigger_type(d)) {
> +	case IRQ_TYPE_LEVEL_LOW:
> +		/*
> +		 * If the rectified input value of the source is still low
> +		 * then set the interrupt pending bit so that interrupt is
> +		 * re-triggered via MSI.
> +		 */
> +		if (!(readl(priv->regs + reg_off) & reg_mask))
> +			writel(d->hwirq, priv->regs + APLIC_SETIPNUM_LE);

When a level-low interrupt is active, the rectified input value is high, so this
case can be combined with the level-high case below.

In fact, there's no need to check the input value at all. The AIA spec mentions
this interrupt flow explicitly (section 4.9.2, see also section 4.7):

"A second option is for the interrupt service routine to write the APLIC’s
source identity number for the interrupt to the domain’s setipnum register just
before exiting. This will cause the interrupt’s pending bit to be set to one
again if the source is still asserting an interrupt, but not if the source is
not asserting an interrupt."

Unfortunately, QEMU currently gets this wrong, so the input value check is
necessary for testing this series until QEMU is fixed.

> +		break;
> +	case IRQ_TYPE_LEVEL_HIGH:
> +		/*
> +		 * If the rectified input value of the source is still high
> +		 * then set the interrupt pending bit so that interrupt is
> +		 * re-triggered via MSI.
> +		 */
> +		if (readl(priv->regs + reg_off) & reg_mask)
> +			writel(d->hwirq, priv->regs + APLIC_SETIPNUM_LE);
> +		break;
> +	}
> +}
> +
> +static void aplic_msi_write_msg(struct irq_data *d, struct msi_msg *msg)
> +{
> +	unsigned int group_index, hart_index, guest_index, val;
> +	struct aplic_priv *priv = irq_data_get_irq_chip_data(d);
> +	struct aplic_msicfg *mc = &priv->msicfg;
> +	phys_addr_t tppn, tbppn, msg_addr;
> +	void __iomem *target;
> +
> +	/* For zeroed MSI, simply write zero into the target register */
> +	if (!msg->address_hi && !msg->address_lo && !msg->data) {
> +		target = priv->regs + APLIC_TARGET_BASE;
> +		target += (d->hwirq - 1) * sizeof(u32);
> +		writel(0, target);
> +		return;
> +	}
> +
> +	/* Sanity check on message data */
> +	WARN_ON(msg->data > APLIC_TARGET_EIID_MASK);
> +
> +	/* Compute target MSI address */
> +	msg_addr = (((u64)msg->address_hi) << 32) | msg->address_lo;
> +	tppn = msg_addr >> APLIC_xMSICFGADDR_PPN_SHIFT;
> +
> +	/* Compute target HART Base PPN */
> +	tbppn = tppn;
> +	tbppn &= ~APLIC_xMSICFGADDR_PPN_HART(mc->lhxs);
> +	tbppn &= ~APLIC_xMSICFGADDR_PPN_LHX(mc->lhxw, mc->lhxs);
> +	tbppn &= ~APLIC_xMSICFGADDR_PPN_HHX(mc->hhxw, mc->hhxs);
> +	WARN_ON(tbppn != mc->base_ppn);
> +
> +	/* Compute target group and hart indexes */
> +	group_index = (tppn >> APLIC_xMSICFGADDR_PPN_HHX_SHIFT(mc->hhxs)) &
> +		     APLIC_xMSICFGADDR_PPN_HHX_MASK(mc->hhxw);
> +	hart_index = (tppn >> APLIC_xMSICFGADDR_PPN_LHX_SHIFT(mc->lhxs)) &
> +		     APLIC_xMSICFGADDR_PPN_LHX_MASK(mc->lhxw);
> +	hart_index |= (group_index << mc->lhxw);
> +	WARN_ON(hart_index > APLIC_TARGET_HART_IDX_MASK);
> +
> +	/* Compute target guest index */
> +	guest_index = tppn & APLIC_xMSICFGADDR_PPN_HART(mc->lhxs);
> +	WARN_ON(guest_index > APLIC_TARGET_GUEST_IDX_MASK);
> +
> +	/* Update IRQ TARGET register */
> +	target = priv->regs + APLIC_TARGET_BASE;
> +	target += (d->hwirq - 1) * sizeof(u32);
> +	val = FIELD_PREP(APLIC_TARGET_HART_IDX, hart_index);
> +	val |= FIELD_PREP(APLIC_TARGET_GUEST_IDX, guest_index);
> +	val |= FIELD_PREP(APLIC_TARGET_EIID, msg->data);
> +	writel(val, target);
> +}
> +
> +static void aplic_msi_set_desc(msi_alloc_info_t *arg, struct msi_desc *desc)
> +{
> +	arg->desc = desc;
> +	arg->hwirq = (u32)desc->data.icookie.value;
> +}
> +
> +static int aplic_msi_translate(struct irq_domain *d, struct irq_fwspec *fwspec,
> +			       unsigned long *hwirq, unsigned int *type)
> +{
> +	struct msi_domain_info *info = d->host_data;
> +	struct aplic_priv *priv = info->data;
> +
> +	return aplic_irqdomain_translate(fwspec, priv->gsi_base, hwirq, type);
> +}
> +
> +static const struct msi_domain_template aplic_msi_template = {
> +	.chip = {
> +		.name			= "APLIC-MSI",
> +		.irq_mask		= aplic_msi_irq_mask,
> +		.irq_unmask		= aplic_msi_irq_unmask,
> +		.irq_set_type		= aplic_irq_set_type,
> +		.irq_eoi		= aplic_msi_irq_eoi,
> +#ifdef CONFIG_SMP
> +		.irq_set_affinity	= irq_chip_set_affinity_parent,
> +#endif
> +		.irq_write_msi_msg	= aplic_msi_write_msg,
> +		.flags			= IRQCHIP_SET_TYPE_MASKED |
> +					  IRQCHIP_SKIP_SET_WAKE |
> +					  IRQCHIP_MASK_ON_SUSPEND,
> +	},
> +
> +	.ops = {
> +		.set_desc		= aplic_msi_set_desc,
> +		.msi_translate		= aplic_msi_translate,
> +	},
> +
> +	.info = {
> +		.bus_token		= DOMAIN_BUS_WIRED_TO_MSI,
> +		.flags			= MSI_FLAG_USE_DEV_FWNODE,
> +		.handler		= handle_fasteoi_irq,

msi_domain_ops_init() requires .handler_name to be set, or .handler is ignored.
Either that needs to be changed, or .handler_name needs to be provided here.
Since the handler is not set, currently the EOI logic for level interrupts is
never run.

Regards,
Samuel

> +	},
> +};
> +
> +int aplic_msi_setup(struct device *dev, void __iomem *regs)
> +{
> +	const struct imsic_global_config *imsic_global;
> +	struct aplic_priv *priv;
> +	struct aplic_msicfg *mc;
> +	phys_addr_t pa;
> +	int rc;
> +
> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	rc = aplic_setup_priv(priv, dev, regs);
> +	if (rc) {
> +		dev_err(dev, "failed to create APLIC context\n");
> +		return rc;
> +	}
> +	mc = &priv->msicfg;
> +
> +	/*
> +	 * The APLIC outgoing MSI config registers assume target MSI
> +	 * controller to be RISC-V AIA IMSIC controller.
> +	 */
> +	imsic_global = imsic_get_global_config();
> +	if (!imsic_global) {
> +		dev_err(dev, "IMSIC global config not found\n");
> +		return -ENODEV;
> +	}
> +
> +	/* Find number of guest index bits (LHXS) */
> +	mc->lhxs = imsic_global->guest_index_bits;
> +	if (APLIC_xMSICFGADDRH_LHXS_MASK < mc->lhxs) {
> +		dev_err(dev, "IMSIC guest index bits big for APLIC LHXS\n");
> +		return -EINVAL;
> +	}
> +
> +	/* Find number of HART index bits (LHXW) */
> +	mc->lhxw = imsic_global->hart_index_bits;
> +	if (APLIC_xMSICFGADDRH_LHXW_MASK < mc->lhxw) {
> +		dev_err(dev, "IMSIC hart index bits big for APLIC LHXW\n");
> +		return -EINVAL;
> +	}
> +
> +	/* Find number of group index bits (HHXW) */
> +	mc->hhxw = imsic_global->group_index_bits;
> +	if (APLIC_xMSICFGADDRH_HHXW_MASK < mc->hhxw) {
> +		dev_err(dev, "IMSIC group index bits big for APLIC HHXW\n");
> +		return -EINVAL;
> +	}
> +
> +	/* Find first bit position of group index (HHXS) */
> +	mc->hhxs = imsic_global->group_index_shift;
> +	if (mc->hhxs < (2 * APLIC_xMSICFGADDR_PPN_SHIFT)) {
> +		dev_err(dev, "IMSIC group index shift should be >= %d\n",
> +			(2 * APLIC_xMSICFGADDR_PPN_SHIFT));
> +		return -EINVAL;
> +	}
> +	mc->hhxs -= (2 * APLIC_xMSICFGADDR_PPN_SHIFT);
> +	if (APLIC_xMSICFGADDRH_HHXS_MASK < mc->hhxs) {
> +		dev_err(dev, "IMSIC group index shift big for APLIC HHXS\n");
> +		return -EINVAL;
> +	}
> +
> +	/* Compute PPN base */
> +	mc->base_ppn = imsic_global->base_addr >> APLIC_xMSICFGADDR_PPN_SHIFT;
> +	mc->base_ppn &= ~APLIC_xMSICFGADDR_PPN_HART(mc->lhxs);
> +	mc->base_ppn &= ~APLIC_xMSICFGADDR_PPN_LHX(mc->lhxw, mc->lhxs);
> +	mc->base_ppn &= ~APLIC_xMSICFGADDR_PPN_HHX(mc->hhxw, mc->hhxs);
> +
> +	/* Setup global config and interrupt delivery */
> +	aplic_init_hw_global(priv, true);
> +
> +	/* Set the APLIC device MSI domain if not available */
> +	if (!dev_get_msi_domain(dev)) {
> +		/*
> +		 * The device MSI domain for OF devices is only set at the
> +		 * time of populating/creating OF device. If the device MSI
> +		 * domain is discovered later after the OF device is created
> +		 * then we need to set it explicitly before using any platform
> +		 * MSI functions.
> +		 *
> +		 * In case of APLIC device, the parent MSI domain is always
> +		 * IMSIC and the IMSIC MSI domains are created later through
> +		 * the platform driver probing so we set it explicitly here.
> +		 */
> +		if (is_of_node(dev->fwnode))
> +			of_msi_configure(dev, to_of_node(dev->fwnode));
> +	}
> +
> +	if (!msi_create_device_irq_domain(dev, MSI_DEFAULT_DOMAIN, &aplic_msi_template,
> +					  priv->nr_irqs + 1, priv, priv)) {
> +		dev_err(dev, "failed to create MSI irq domain\n");
> +		return -ENOMEM;
> +	}
> +
> +	/* Advertise the interrupt controller */
> +	pa = priv->msicfg.base_ppn << APLIC_xMSICFGADDR_PPN_SHIFT;
> +	dev_info(dev, "%d interrupts forwared to MSI base %pa\n", priv->nr_irqs, &pa);
> +
> +	return 0;
> +}


