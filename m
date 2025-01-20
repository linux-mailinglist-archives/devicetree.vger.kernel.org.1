Return-Path: <devicetree+bounces-139601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 527DBA1657F
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 03:44:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B174518840FB
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 02:44:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46A391BC20;
	Mon, 20 Jan 2025 02:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gmnTxz9x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A25B14F9D9;
	Mon, 20 Jan 2025 02:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737341071; cv=none; b=MMTPayWj3eU4z14Nsk+/FEjt7Pzm6ovHYgQs1jo1xMA99q8UIzhm3d1vKjS75OEMTUTS4NTNPrg0ropIj/jPeDU4pyHcuhvTsWXYvigdp3GaALs9/bvwKPSbiL8+MNq5nuMIvDqliP5H+4RHSLJA8/qMErZrGSu1kIjS4SfqiPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737341071; c=relaxed/simple;
	bh=YxTMbqEO4UKPfg3ZvsE5HzpRThXAIxnJsdMU5G2S1pU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Posk2w8q1ZhPHBda+aDfgCyhBP9XoW3mz0BfQ+ptzxGPY6re35ydgIFK/daCeoZO5RWwMF3HIE6UhGnKR/rqAo+QAj6BsKY4uoJZAdrP9RiKQWAZb0xBP1bSvdwNE0IEm4NzVV3DIX5oNurxYA4nOaraRvtcSUew2H62fQNjkys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gmnTxz9x; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-46c8474d8daso32296131cf.3;
        Sun, 19 Jan 2025 18:44:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737341068; x=1737945868; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Sl9nu3Qof0PszksDLNRZJf1Z528uEntwflNxxKMJjDU=;
        b=gmnTxz9x3YZfiFbk4qHETCXqV8yTyMVxItC9wfX6Onw676LkKSMqGGNqgRVNTFLmd2
         kqU1L4qhIzOQAYN+fle3NdxrFJsuyoFk/L11rEKNlSMN3Mq/xEyQWxFXu0bDFgWUqPO/
         l4jokmDT1mM0rbKDNk+9ZT6sYUQgzLEj6T+K5JhjJrZtcMwQutJX/mJWzhHKLBfG99Vs
         xGsSjZuGEBPS9VAjO/1gvOq2v4mo2JU+JC87nwmTlil57N9LUifrDu/rrpm/VH9070Ky
         yvQENY6qhcW/HwssWNgtUz0DXmRpSLoBW2wF9+z5xJPKWtnqC9mbjYkU7x3KeheX/knQ
         7UmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737341068; x=1737945868;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sl9nu3Qof0PszksDLNRZJf1Z528uEntwflNxxKMJjDU=;
        b=i/va/MfI+McCxTvHliv4swmqjA20ZEgXEhigC+YAp2cUpGsR1TyqAtqAij84XZFEix
         xYbE1nLt2ozpmVs1MKKSy46hF+RvL3UC0Nh5Hw4K2N+QtcxunjdOdq/LLSbzsPPmxRR/
         AkoT43VKUiI1jLu3S1DNsO56H4nrWMx9Ql0UaAoG5FdrmS53UECdnA2579Tbr/Oy08VK
         FHxGC9fmilX5nHAatE1dpihWrmYDg3aU1aav/ZhRxwcoOdOV9JYRl2qwDh1LffIotVLv
         vZiG2ls/jVJNW2FtxGMVIsHTfWchekIPLv3ahoQeOC13fen0oo/WkKmWbaBlXCUZtIZF
         ra7g==
X-Forwarded-Encrypted: i=1; AJvYcCVghcCPYdD9HsXPjAbXfI2zWnWTkxxT1QQV40V6KkZG7Jht2T2frrQ4VwxqmYHW66V2fTNklAylR39Qazw2@vger.kernel.org, AJvYcCVhVsUuF9h6y5sBbWBHyeKsZ4y4CWHBft+jPCWPFrgPIk6v5A805l+8K5K1/qEMklBHScmoTRO10rVR@vger.kernel.org
X-Gm-Message-State: AOJu0YxMnnisT/oIHyRHWSvVSOld+GRXx5XpHvMI7AFhS0GBH8sr+Hna
	/3dgOyvjD9JXqx09Ut0ERgdZ2eMYmAhmBJNXmFgAdwxNNv4++hGO
X-Gm-Gg: ASbGncsVf4UVRW4HtLzJ4bZw05DrN+n44RoJgel6dpwn9vXgWi//02Zqftrhhnz/+FD
	YDvnmA8vOF7EpjFELxC5hO7A9OSrHhyt0kvxrBxYEMxE4/B1172e0ErI1TsQRQX35UgO9bVeo1U
	3LOOPie6vNVLH2yxSXEKPTVvH2nmUy1eb7zKX+RzDOjDG+GToPtlQV4K0pnLdJfir2ijJSbVs7G
	77XZ/0xXTxMbGvGGQFH4PkiEbZv/YeKlxlgS3wzUG4P3w==
X-Google-Smtp-Source: AGHT+IHkBEqg8JvBQvC+YkoGK3v8otfkaorCKJlA1539WBUvUougLTSjSNTwIZwfkaT5JegkwqXmYA==
X-Received: by 2002:a05:622a:1922:b0:467:8342:d0d5 with SMTP id d75a77b69052e-46e12a0c255mr203518851cf.2.1737341068100;
        Sun, 19 Jan 2025 18:44:28 -0800 (PST)
Received: from localhost ([2001:da8:7001:11::cb])
        by smtp.gmail.com with UTF8SMTPSA id d75a77b69052e-46e1030daadsm37752521cf.39.2025.01.19.18.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jan 2025 18:44:27 -0800 (PST)
Date: Mon, 20 Jan 2025 10:43:40 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Chen Wang <unicornxw@gmail.com>, u.kleine-koenig@baylibre.com, 
	aou@eecs.berkeley.edu, arnd@arndb.de, unicorn_wang@outlook.com, conor+dt@kernel.org, 
	guoren@kernel.org, inochiama@outlook.com, krzk+dt@kernel.org, palmer@dabbelt.com, 
	paul.walmsley@sifive.com, robh@kernel.org, tglx@linutronix.de, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, chao.wei@sophgo.com, 
	xiaoguang.xing@sophgo.com, fengchun.li@sophgo.com, samuel.holland@sifive.com, 
	christophe.jaillet@wanadoo.fr
Cc: Inochi Amaoto <inochiama@gmail.com>
Subject: Re: [PATCH v3 2/3] irqchip: Add the Sophgo SG2042 MSI interrupt
 controller
Message-ID: <6b4n7jbflkaparryguq2kjdg4bpfy4vgpzucd456awbhl362po@zytqbodpm2wc>
References: <cover.1736921549.git.unicorn_wang@outlook.com>
 <b5c2f13aa94f68c3415a1292678e16db33f291cd.1736921549.git.unicorn_wang@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b5c2f13aa94f68c3415a1292678e16db33f291cd.1736921549.git.unicorn_wang@outlook.com>

On Wed, Jan 15, 2025 at 02:33:45PM +0800, Chen Wang wrote:
> From: Chen Wang <unicorn_wang@outlook.com>
> 
> Add driver for Sophgo SG2042 MSI interrupt controller.
> 
> Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
> ---
>  drivers/irqchip/Kconfig          |  12 ++
>  drivers/irqchip/Makefile         |   1 +
>  drivers/irqchip/irq-sg2042-msi.c | 268 +++++++++++++++++++++++++++++++
>  3 files changed, 281 insertions(+)
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
> index 000000000000..1f88e1671e5c
> --- /dev/null
> +++ b/drivers/irqchip/irq-sg2042-msi.c
> @@ -0,0 +1,268 @@
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
> +#define SG2042_MAX_MSI_VECTOR	32
> +
> +struct sg2042_msi_chipdata {
> +	void __iomem	*reg_clr;	// clear reg, see TRM, 10.1.33, GP_INTR0_CLR
> +
> +	phys_addr_t	doorbell_addr;	// see TRM, 10.1.32, GP_INTR0_SET
> +
> +	u32		irq_first;	// The vector number that MSIs starts
> +	u32		num_irqs;	// The number of vectors for MSIs
> +
> +	DECLARE_BITMAP(msi_map, SG2042_MAX_MSI_VECTOR);
> +	struct mutex	msi_map_lock;	// lock for msi_map
> +};
> +
> +static int sg2042_msi_allocate_hwirq(struct sg2042_msi_chipdata *data, int num_req)
> +{
> +	int first;
> +
> +	guard(mutex)(&data->msi_map_lock);
> +	first = bitmap_find_free_region(data->msi_map, data->num_irqs,
> +					get_count_order(num_req));
> +	return first >= 0 ? first : -ENOSPC;
> +}
> +
> +static void sg2042_msi_free_hwirq(struct sg2042_msi_chipdata *data,
> +				  int hwirq, int num_req)
> +{
> +	guard(mutex)(&data->msi_map_lock);
> +	bitmap_release_region(data->msi_map, hwirq, get_count_order(num_req));
> +}
> +
> +static void sg2042_msi_irq_ack(struct irq_data *d)
> +{
> +	struct sg2042_msi_chipdata *data  = irq_data_get_irq_chip_data(d);
> +	int bit_off = d->hwirq;
> +
> +	writel(1 << bit_off, data->reg_clr);
> +
> +	irq_chip_ack_parent(d);
> +}
> +
> +static void sg2042_msi_irq_compose_msi_msg(struct irq_data *d,
> +					   struct msi_msg *msg)
> +{
> +	struct sg2042_msi_chipdata *data = irq_data_get_irq_chip_data(d);
> +
> +	msg->address_hi = upper_32_bits(data->doorbell_addr);
> +	msg->address_lo = lower_32_bits(data->doorbell_addr);
> +	msg->data = 1 << d->hwirq;
> +}
> +
> +static const struct irq_chip sg2042_msi_middle_irq_chip = {
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
> +	struct sg2042_msi_chipdata *data = domain->host_data;
> +	struct irq_fwspec fwspec;
> +	struct irq_data *d;
> +	int ret;
> +
> +	fwspec.fwnode = domain->parent->fwnode;
> +	fwspec.param_count = 2;
> +	fwspec.param[0] = data->irq_first + hwirq;
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
> +	struct sg2042_msi_chipdata *data = domain->host_data;
> +	int hwirq, err, i;
> +
> +	hwirq = sg2042_msi_allocate_hwirq(data, nr_irqs);
> +	if (hwirq < 0)
> +		return hwirq;
> +
> +	for (i = 0; i < nr_irqs; i++) {
> +		err = sg2042_msi_parent_domain_alloc(domain, virq + i, hwirq + i);
> +		if (err)
> +			goto err_hwirq;
> +
> +		irq_domain_set_hwirq_and_chip(domain, virq + i, hwirq + i,
> +					      &sg2042_msi_middle_irq_chip, data);
> +	}
> +
> +	return 0;
> +
> +err_hwirq:
> +	sg2042_msi_free_hwirq(data, hwirq, nr_irqs);
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
> +	struct sg2042_msi_chipdata *data = irq_data_get_irq_chip_data(d);
> +
> +	irq_domain_free_irqs_parent(domain, virq, nr_irqs);
> +	sg2042_msi_free_hwirq(data, d->hwirq, nr_irqs);
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

I think it is just OK to set the flag directly in the msi_parent_ops.

> +static struct msi_parent_ops sg2042_msi_parent_ops = {
> +	.required_flags		= SG2042_MSI_FLAGS_REQUIRED,
> +	.supported_flags	= SG2042_MSI_FLAGS_SUPPORTED,
> +	.bus_select_mask	= MATCH_PCI_MSI,
> +	.bus_select_token	= DOMAIN_BUS_NEXUS,
> +	.prefix			= "SG2042-",
> +	.init_dev_msi_info	= msi_lib_init_dev_msi_info,
> +};

This struct should be const.

> +
> +static int sg2042_msi_init_domains(struct sg2042_msi_chipdata *data,
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
> +	middle_domain = irq_domain_create_hierarchy(plic_domain, 0, data->num_irqs,
> +						    fwnode,
> +						    &sg2042_msi_middle_domain_ops,
> +						    data);
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
> +	struct sg2042_msi_chipdata *data;
> +	struct of_phandle_args args = {};
> +	struct resource *res;
> +	int ret;
> +
> +	data = devm_kzalloc(&pdev->dev, sizeof(struct sg2042_msi_chipdata), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	data->reg_clr = devm_platform_ioremap_resource_byname(pdev, "clr");
> +	if (IS_ERR(data->reg_clr)) {
> +		dev_err(&pdev->dev, "Failed to map clear register\n");
> +		return PTR_ERR(data->reg_clr);
> +	}
> +
> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "doorbell");
> +	if (!res) {
> +		dev_err(&pdev->dev, "Failed get resource from set\n");
> +		return -EINVAL;
> +	}
> +	data->doorbell_addr = res->start;
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
> +		of_node_put(args.np);
> +		return ret;
> +	}
> +	of_node_put(args.np);
> +
> +	mutex_init(&data->msi_map_lock);
> +
> +	return sg2042_msi_init_domains(data, pdev->dev.of_node);
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
> +		.of_match_table	= sg2042_msi_of_match,
> +	},
> +	.probe = sg2042_msi_probe,
> +};
> +builtin_platform_driver(sg2042_msi_driver);
> -- 
> 2.34.1
> 

