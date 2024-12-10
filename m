Return-Path: <devicetree+bounces-129533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BFE9EBF1D
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 00:13:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D59A18893C4
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 23:13:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68962204692;
	Tue, 10 Dec 2024 23:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="ORlKIrIi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A323211260
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 23:13:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733872427; cv=none; b=MwymxFfl1gcPM2E8/q81SI1ZT5DPdfT4nj/Ose5X5Ko1EISxgVe5J7+nHFcxUYIaJyYeNagH4KqyR6iTz2n1FXSIoj+kE9qHWDo6uBDiL14AodvOGj33ycdSibFR1V7O6V5TDgSEJFkgLV33bu/pBL1H0icNl1FWbWKi9j05FrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733872427; c=relaxed/simple;
	bh=9p6ZOaTrPT+VyAL9q4stDAigMeJr1N786v9I2DeTX3Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:Cc:
	 In-Reply-To:Content-Type; b=GZXikVOZZari1yqyc2XVv4439JJJ1M9zOiyFeHBSeWeVDsDQyh62bRkDuSPaQRUjA/pDl5sv8gzJIYVtf0Q9s2NjqdizqDfJIJbOgUN2RdiexH14cTo/5NkcfP5bx9g7446D9C5YfWVPcnIkqR83ZrVcbUBH1eEIYslr+7L7KYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=ORlKIrIi; arc=none smtp.client-ip=209.85.166.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-3a9cdcec53fso21464125ab.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 15:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1733872424; x=1734477224; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:cc:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CL89FZ8rBs/vPwll11Qly5YiICrNaOtO0zLQ2yHga0E=;
        b=ORlKIrIi/YIDSQSW4j7fy38ySBJWEUrkU1PoyVAjhhWt6mmgGKLZFmW5Lla8aLWKRU
         w9tLKwsgdqG6F0+aKZNUPtoMa/NnpLf9DBDJ78+K85PiQiS9uDehSnEY/wbWNwcZZ0XH
         8MNjAZ2HigpYETf2msPtMWrLQbRiXLkbjJXUOoiP5EwVZcKSR0nOSbQaKvjZcOmC1fLV
         tx60imhbq3eHRFehftR+gIl9IBm1A0bcZ2U9vohVwQnUOIMZWSB12g14NUrGXYsFP9sX
         HBo9ZoVHr8NQOKgrtDta5XoK8XP8ro9WOwlQoa7qVr8JMTE0FZYit6guzxGS8IDhrY4E
         aDtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733872424; x=1734477224;
        h=content-transfer-encoding:in-reply-to:cc:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CL89FZ8rBs/vPwll11Qly5YiICrNaOtO0zLQ2yHga0E=;
        b=uNQiae9mgWkMFrDuH2qD4Cah0gWW0A82XRyXZwIqnutTyVLzXkj/SeKQlybEnleRFM
         1VahFHKYBk8KxK4Xh3YVRm5CjHHuQN7y+yqWuFfSxAWYWIGr/jIjbJtIdLwLkmiwtMdt
         XX5QWZcxHf5nHs5dVLvGPJzXYAcr5B6sCnO1ArfEy7Gsk5CNaLWCv3TKwrBTh3RSMrOI
         BCSn8yH3iQAnZKn1FMLO8TrypoSXw0K7z752zyRFYRJWrRX3XVVGY7la1AMKLMHFA7KV
         TtAh8n1fPE1mihoD6/k8OXPG5dVouMTPL0m2k7Fv90Tk/aPppbPSTfT+jE2tDztGQJkv
         WjNw==
X-Forwarded-Encrypted: i=1; AJvYcCVbz6E1QYbxXzGElkyql7gCiEqN7T07+ng6XKmXcKCbCm++Jys5HPtZrBYP4/qyvR0xF94iu5sSCRKX@vger.kernel.org
X-Gm-Message-State: AOJu0YzfWnPmMzbsBBhZ73SOaIJZb8Q++XIrR4NLmedjTD3x18dFh6qn
	r0SM/qAU5BZBV04v62oJUy+DnZyNjknpNYjpnlKufvureUEg8ma3aldX2gdsiic=
X-Gm-Gg: ASbGncuGBLNVmDYyR7z4ONGK4ZlbdgUoHashflTY/K/Fv06rD/jivOhF14c3ZhIb2V6
	w0KO7xiYqKoQLGS0rRmp39eKABhS6I3f+4+kfMB1caaRbwGVRoOMNTpN9khRHvpK/XR9PBSGOWf
	Q9B0pXSQOOvUy56lt4IBKlo/vOPeUcBjNqRl47NKdn653bONsa+yEiWt7783Bi4td8oAbn3OgfT
	lj2n171Ryia/zIwu6Jt6TjXtAcTTvyTm8rWcvIMOXlZXXWdpGgwyjrvlVaeqXLZwHQ3pP3fHA==
X-Google-Smtp-Source: AGHT+IH1cttf0zqTC0279H5IuBIHzNpxFxo+epqYyGKe/aICDB9M4Sg5fC7b1/xKO4o9a8pr3YLVfA==
X-Received: by 2002:a05:6e02:1989:b0:3a7:8720:9e9f with SMTP id e9e14a558f8ab-3aa05010f82mr8620605ab.2.1733872424415;
        Tue, 10 Dec 2024 15:13:44 -0800 (PST)
Received: from [100.64.0.1] ([147.124.94.167])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4e2b93355aesm1573785173.46.2024.12.10.15.13.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 15:13:43 -0800 (PST)
Message-ID: <51757598-18c5-4b44-b11a-54db07384131@sifive.com>
Date: Tue, 10 Dec 2024 17:13:42 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] irqchip: Add the Sophgo SG2042 MSI interrupt
 controller
To: Chen Wang <unicornxw@gmail.com>
References: <cover.1733726057.git.unicorn_wang@outlook.com>
 <c882fe329932409131be76ce47b81a6155595ce4.1733726057.git.unicorn_wang@outlook.com>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
Cc: u.kleine-koenig@baylibre.com, aou@eecs.berkeley.edu, arnd@arndb.de,
 unicorn_wang@outlook.com, conor+dt@kernel.org, guoren@kernel.org,
 inochiama@outlook.com, krzk+dt@kernel.org, palmer@dabbelt.com,
 paul.walmsley@sifive.com, robh@kernel.org, tglx@linutronix.de,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, chao.wei@sophgo.com,
 xiaoguang.xing@sophgo.com, fengchun.li@sophgo.com
In-Reply-To: <c882fe329932409131be76ce47b81a6155595ce4.1733726057.git.unicorn_wang@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2024-12-09 1:12 AM, Chen Wang wrote:
> From: Chen Wang <unicorn_wang@outlook.com>
> 
> Add driver for Sophgo SG2042 MSI interrupt controller.
> 
> Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
> ---
>  drivers/irqchip/Kconfig          |  12 ++
>  drivers/irqchip/Makefile         |   1 +
>  drivers/irqchip/irq-sg2042-msi.c | 285 +++++++++++++++++++++++++++++++
>  3 files changed, 298 insertions(+)
>  create mode 100644 drivers/irqchip/irq-sg2042-msi.c
> 
> diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
> index 9bee02db1643..161fb5df857f 100644
> --- a/drivers/irqchip/Kconfig
> +++ b/drivers/irqchip/Kconfig
> @@ -749,6 +749,18 @@ config MCHP_EIC
>  	help
>  	  Support for Microchip External Interrupt Controller.
>  
> +config SOPHGO_SG2042_MSI
> +	bool "Sophgo SG2042 MSI Controller"
> +	depends on ARCH_SOPHGO || COMPILE_TEST
> +	depends on PCI
> +	select IRQ_DOMAIN_HIERARCHY
> +	select IRQ_MSI_LIB
> +	select PCI_MSI
> +	help
> +	  Support for the Sophgo SG2042 MSI Controller.
> +	  This on-chip interrupt controller enables MSI sources to be
> +	  routed to the primary PLIC controller on SoC.
> +
>  config SUNPLUS_SP7021_INTC
>  	bool "Sunplus SP7021 interrupt controller" if COMPILE_TEST
>  	default SOC_SP7021
> diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
> index 25e9ad29b8c4..dd60e597491d 100644
> --- a/drivers/irqchip/Makefile
> +++ b/drivers/irqchip/Makefile
> @@ -128,4 +128,5 @@ obj-$(CONFIG_WPCM450_AIC)		+= irq-wpcm450-aic.o
>  obj-$(CONFIG_IRQ_IDT3243X)		+= irq-idt3243x.o
>  obj-$(CONFIG_APPLE_AIC)			+= irq-apple-aic.o
>  obj-$(CONFIG_MCHP_EIC)			+= irq-mchp-eic.o
> +obj-$(CONFIG_SOPHGO_SG2042_MSI)		+= irq-sg2042-msi.o
>  obj-$(CONFIG_SUNPLUS_SP7021_INTC)	+= irq-sp7021-intc.o
> diff --git a/drivers/irqchip/irq-sg2042-msi.c b/drivers/irqchip/irq-sg2042-msi.c
> new file mode 100644
> index 000000000000..495ee2b45eb2
> --- /dev/null
> +++ b/drivers/irqchip/irq-sg2042-msi.c
> @@ -0,0 +1,285 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * SG2042 MSI Controller
> + *
> + * Copyright (C) 2024 Sophgo Technology Inc.
> + * Copyright (C) 2024 Chen Wang <unicorn_wang@outlook.com>
> + */
> +
> +#include <linux/cleanup.h>
> +#include <linux/io.h>
> +#include <linux/irq.h>
> +#include <linux/irqdomain.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/msi.h>
> +#include <linux/of.h>
> +#include <linux/of_irq.h>
> +#include <linux/of_pci.h>
> +#include <linux/of_platform.h>
> +#include <linux/platform_device.h>
> +#include <linux/slab.h>
> +
> +#include "irq-msi-lib.h"
> +
> +#define SG2042_VECTOR_MIN	64
> +#define SG2042_VECTOR_MAX	95
> +
> +struct sg2042_msi_data {
> +	void __iomem	*reg_clr;	// clear reg, see TRM, 10.1.33, GP_INTR0_CLR
> +
> +	u64		doorbell_addr;	// see TRM, 10.1.32, GP_INTR0_SET
> +
> +	u32		irq_first;	// The vector number that MSIs starts
> +	u32		num_irqs;	// The number of vectors for MSIs
> +
> +	unsigned long	*msi_map;
> +	struct mutex	msi_map_lock;	// lock for msi_map
> +};
> +
> +static int sg2042_msi_allocate_hwirq(struct sg2042_msi_data *priv, int num_req)
> +{
> +	int first;
> +
> +	guard(mutex)(&priv->msi_map_lock);
> +	first = bitmap_find_free_region(priv->msi_map, priv->num_irqs,
> +					get_count_order(num_req));
> +	return first >= 0 ? priv->irq_first + first : -ENOSPC;

How does this work? The irqdomain is instantiated with size == priv->num_irqs,
so hwirqs must be less than priv->num_irqs. It also quite simplifies the code
for hwirq be a number between 0 and priv->num_irqs. You only need to apply the
offset when allocating the parent IRQ:

	fwspec.param[0] = priv->irq_first + hwirq;

> +}
> +
> +static void sg2042_msi_free_hwirq(struct sg2042_msi_data *priv,
> +				  int hwirq, int num_req)
> +{
> +	int first = hwirq - priv->irq_first;
> +
> +	guard(mutex)(&priv->msi_map_lock);
> +	bitmap_release_region(priv->msi_map, first, get_count_order(num_req));
> +}
> +
> +static void sg2042_msi_irq_ack(struct irq_data *d)
> +{
> +	struct sg2042_msi_data *data  = irq_data_get_irq_chip_data(d);
> +	int bit_off = d->hwirq - data->irq_first;
> +
> +	writel(1 << bit_off, (unsigned int *)data->reg_clr);
> +
> +	irq_chip_ack_parent(d);
> +}
> +
> +static void sg2042_msi_irq_compose_msi_msg(struct irq_data *data,
> +					   struct msi_msg *msg)
> +{
> +	struct sg2042_msi_data *priv = irq_data_get_irq_chip_data(data);
> +
> +	msg->address_hi = upper_32_bits(priv->doorbell_addr);
> +	msg->address_lo = lower_32_bits(priv->doorbell_addr);
> +	msg->data = 1 << (data->hwirq - priv->irq_first);
> +
> +	pr_debug("%s hwirq[%ld]: address_hi[%#x], address_lo[%#x], data[%#x]\n",
> +		 __func__, data->hwirq, msg->address_hi, msg->address_lo, msg->data);
> +}
> +
> +static struct irq_chip sg2042_msi_middle_irq_chip = {
> +	.name			= "SG2042 MSI",
> +	.irq_ack		= sg2042_msi_irq_ack,
> +	.irq_mask		= irq_chip_mask_parent,
> +	.irq_unmask		= irq_chip_unmask_parent,
> +#ifdef CONFIG_SMP
> +	.irq_set_affinity	= irq_chip_set_affinity_parent,
> +#endif
> +	.irq_compose_msi_msg	= sg2042_msi_irq_compose_msi_msg,
> +};
> +
> +static int sg2042_msi_parent_domain_alloc(struct irq_domain *domain,
> +					  unsigned int virq, int hwirq)
> +{
> +	struct irq_fwspec fwspec;
> +	struct irq_data *d;
> +	int ret;
> +
> +	fwspec.fwnode = domain->parent->fwnode;
> +	fwspec.param_count = 2;
> +	fwspec.param[0] = hwirq;
> +	fwspec.param[1] = IRQ_TYPE_EDGE_RISING;
> +
> +	ret = irq_domain_alloc_irqs_parent(domain, virq, 1, &fwspec);
> +	if (ret)
> +		return ret;
> +
> +	d = irq_domain_get_irq_data(domain->parent, virq);
> +	return d->chip->irq_set_type(d, IRQ_TYPE_EDGE_RISING);
> +}
> +
> +static int sg2042_msi_middle_domain_alloc(struct irq_domain *domain,
> +					  unsigned int virq,
> +					  unsigned int nr_irqs, void *args)
> +{
> +	struct sg2042_msi_data *priv = domain->host_data;
> +	int hwirq, err, i;
> +
> +	hwirq = sg2042_msi_allocate_hwirq(priv, nr_irqs);
> +	if (hwirq < 0)
> +		return hwirq;
> +
> +	for (i = 0; i < nr_irqs; i++) {
> +		err = sg2042_msi_parent_domain_alloc(domain, virq + i, hwirq + i);
> +		if (err)
> +			goto err_hwirq;
> +
> +		pr_debug("%s: virq[%d], hwirq[%d]\n", __func__, virq + i, hwirq + i);
> +
> +		irq_domain_set_hwirq_and_chip(domain, virq + i, hwirq + i,
> +					      &sg2042_msi_middle_irq_chip, priv);
> +	}
> +
> +	return 0;
> +
> +err_hwirq:
> +	sg2042_msi_free_hwirq(priv, hwirq, nr_irqs);
> +	irq_domain_free_irqs_parent(domain, virq, i);
> +
> +	return err;
> +}
> +
> +static void sg2042_msi_middle_domain_free(struct irq_domain *domain,
> +					  unsigned int virq,
> +					  unsigned int nr_irqs)
> +{
> +	struct irq_data *d = irq_domain_get_irq_data(domain, virq);
> +	struct sg2042_msi_data *priv = irq_data_get_irq_chip_data(d);
> +
> +	irq_domain_free_irqs_parent(domain, virq, nr_irqs);
> +	sg2042_msi_free_hwirq(priv, d->hwirq, nr_irqs);
> +}
> +
> +static const struct irq_domain_ops sg2042_msi_middle_domain_ops = {
> +	.alloc	= sg2042_msi_middle_domain_alloc,
> +	.free	= sg2042_msi_middle_domain_free,
> +	.select	= msi_lib_irq_domain_select,
> +};
> +
> +#define SG2042_MSI_FLAGS_REQUIRED (MSI_FLAG_USE_DEF_DOM_OPS |	\
> +				   MSI_FLAG_USE_DEF_CHIP_OPS)
> +
> +#define SG2042_MSI_FLAGS_SUPPORTED MSI_GENERIC_FLAGS_MASK
> +
> +static struct msi_parent_ops sg2042_msi_parent_ops = {
> +	.required_flags		= SG2042_MSI_FLAGS_REQUIRED,
> +	.supported_flags	= SG2042_MSI_FLAGS_SUPPORTED,
> +	.bus_select_mask	= MATCH_PCI_MSI,
> +	.bus_select_token	= DOMAIN_BUS_NEXUS,
> +	.prefix			= "SG2042-",
> +	.init_dev_msi_info	= msi_lib_init_dev_msi_info,
> +};
> +
> +static int sg2042_msi_init_domains(struct sg2042_msi_data *priv,
> +				   struct device_node *node)
> +{
> +	struct fwnode_handle *fwnode = of_node_to_fwnode(node);
> +	struct irq_domain *plic_domain, *middle_domain;
> +	struct device_node *plic_node;
> +
> +	if (!of_find_property(node, "interrupt-parent", NULL)) {
> +		pr_err("Can't find interrupt-parent!\n");
> +		return -EINVAL;
> +	}
> +
> +	plic_node = of_irq_find_parent(node);
> +	if (!plic_node) {
> +		pr_err("Failed to find the PLIC node!\n");
> +		return -ENXIO;
> +	}
> +
> +	plic_domain = irq_find_host(plic_node);
> +	of_node_put(plic_node);
> +	if (!plic_domain) {
> +		pr_err("Failed to find the PLIC domain\n");
> +		return -ENXIO;
> +	}
> +
> +	middle_domain = irq_domain_create_hierarchy(plic_domain, 0, priv->num_irqs,
> +						    fwnode,
> +						    &sg2042_msi_middle_domain_ops,
> +						    priv);
> +	if (!middle_domain) {
> +		pr_err("Failed to create the MSI middle domain\n");
> +		return -ENOMEM;
> +	}
> +
> +	irq_domain_update_bus_token(middle_domain, DOMAIN_BUS_NEXUS);
> +
> +	middle_domain->flags |= IRQ_DOMAIN_FLAG_MSI_PARENT;
> +	middle_domain->msi_parent_ops = &sg2042_msi_parent_ops;
> +
> +	return 0;
> +}
> +
> +static int sg2042_msi_probe(struct platform_device *pdev)
> +{
> +	struct of_phandle_args args = {};
> +	struct sg2042_msi_data *data;
> +	int ret;
> +
> +	data = devm_kzalloc(&pdev->dev, sizeof(struct sg2042_msi_data), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	data->reg_clr = devm_platform_ioremap_resource_byname(pdev, "clr");
> +	if (IS_ERR(data->reg_clr)) {
> +		dev_err(&pdev->dev, "Failed to map clear register\n");
> +		return PTR_ERR(data->reg_clr);
> +	}
> +
> +	if (of_property_read_u64(pdev->dev.of_node, "sophgo,msi-doorbell-addr",
> +				 &data->doorbell_addr)) {
> +		dev_err(&pdev->dev, "Unable to parse MSI doorbell addr\n");
> +		return -EINVAL;
> +	}
> +
> +	ret = of_parse_phandle_with_args(pdev->dev.of_node, "msi-ranges",
> +					 "#interrupt-cells", 0, &args);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Unable to parse MSI vec base\n");
> +		return ret;
> +	}
> +	data->irq_first = (u32)args.args[0];
> +
> +	ret = of_property_read_u32_index(pdev->dev.of_node, "msi-ranges",
> +					 args.args_count + 1, &data->num_irqs);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Unable to parse MSI vec number\n");
> +		return ret;
> +	}
> +
> +	if (data->irq_first < SG2042_VECTOR_MIN ||
> +	    (data->irq_first + data->num_irqs - 1) > SG2042_VECTOR_MAX) {
> +		dev_err(&pdev->dev, "msi-ranges is incorrect!\n");
> +		return -EINVAL;
> +	}
> +
> +	mutex_init(&data->msi_map_lock);
> +
> +	data->msi_map = bitmap_zalloc(data->num_irqs, GFP_KERNEL);
> +	if (!data->msi_map)
> +		return -ENOMEM;
> +
> +	ret = sg2042_msi_init_domains(data, pdev->dev.of_node);
> +	if (ret)
> +		bitmap_free(data->msi_map);
> +
> +	return ret;
> +}
> +
> +static const struct of_device_id sg2042_msi_of_match[] = {
> +	{ .compatible	= "sophgo,sg2042-msi" },
> +	{}
> +};
> +
> +static struct platform_driver sg2042_msi_driver = {
> +	.driver = {
> +		.name		= "sg2042-msi",
> +		.of_match_table	= of_match_ptr(sg2042_msi_of_match),
> +	},
> +	.probe = sg2042_msi_probe,
> +};
> +builtin_platform_driver(sg2042_msi_driver);


