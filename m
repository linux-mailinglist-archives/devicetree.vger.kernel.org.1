Return-Path: <devicetree+bounces-44701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA8885F4C2
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 10:43:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4EE0F287015
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:43:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D6DE3D988;
	Thu, 22 Feb 2024 09:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Wc5IA7wp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694D13D3A4
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 09:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708594916; cv=none; b=We5eZWgdx7V5h7yT6GmMGPKq7jtiwV3emTLJVnsPpapazSiQ7yXEZVZ6lM3tFxAcAyuL/jkFHErJmHKbKyGrXiThu7x3dpF+UivGsQUQduMVJdLxAxwHYldfkS1uj6TOs/fwbjkJifKaaSMGGfPhSRiwlll4SIjisetXxJ+DREI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708594916; c=relaxed/simple;
	bh=qKSVGitH/zCrU31udTY4kEZVBftWfNtu8tAJfBhv7js=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gbuAlO1Y1CKiVrqG7Zvqb8DzXc90qd94XcsnZJWla+fq0cRcSA8JQjFcOTp7HjqKC77VbW2zaj9mr2032i87cggjlUmSbOof/bUtgyEYsUnovFGaEUYRV3t6cNzAolLHkTCwhF5HACYfld72OapjdPrPf+RpPXVjTQ4ISCSHD7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Wc5IA7wp; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3c17ac08a38so217989b6e.1
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 01:41:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708594913; x=1709199713; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Onzedmr5Am6ze3NRK5gw42LIgp4mgcT5wlYSsvKP2w=;
        b=Wc5IA7wpgZpl+9LsbiVtwwYRzG3hM5Tz1nNU0q46zmtjyFKDFD2TsKITllHbfkh6AW
         bkl9+IJpszaa4Z10mkdmeJYbXO5eVVr3aKzmb29wHdX6J7s7YhE7BPrmXk8yesIHbwdL
         B01VOh8vMiGXJjmPsh15zjzDF04W7TdEowbs+7RAN71d++ZZjNR3s35bh9qCsR2TsXam
         nEwD4gv5kMCJCJIM8vdwbkr8lUv0d+1juKfexLkxCgxXPdODP/EpsLmNM69KFFykkZhC
         /0ytEyd55Kbm676OtoSKN31xkRzYdfLwGn5gwIQBYf9SXXEBdT5yfKIt+/Mjq2cf5Qy7
         INJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708594913; x=1709199713;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9Onzedmr5Am6ze3NRK5gw42LIgp4mgcT5wlYSsvKP2w=;
        b=u03mg9g0ZXFkkoSUiYsmo9SK6uMIr6ivsp9UVDH5e8+AqngxnhmEYht2ClFXtGw3sL
         R8uZ7CATpp6C0CVanKvoBdcGFJmJNn7CVfZUUBnFTSyiN8P6GN6WGsBB4hJt2wYr2Qj6
         HrKND2b2UEwF13WM4PO9EgETybVZxhY6qbeMOR+1eDrV2stfsKSk0USs8wQndbcUGhnJ
         e/FRSkCVs2XF/QQmI73kGMchhksXukUCHnCSWxZGulYOWfJn+UF1/D/1Yk/zVJ3ncJer
         bBmCjeCjkGFUfCJjR54uYJ/4BsLPfTnhD1q6fA0FZai0VDGsm8kj4nGUx6vpVjlzHCzm
         yjyw==
X-Forwarded-Encrypted: i=1; AJvYcCVbkgcyM7b23uoSzUTe/4axVBpyoVfHDW8oBhrQy8LPgPfre998kse4QSa3+o5RPwySsD0TqktFbyyMU4laKDH9fsu4g++pkujvgA==
X-Gm-Message-State: AOJu0YyVg4sF6YZIAD/yOaDOPLpp3FWIJ1keFJq9OOf+6JgtX/0KWoyy
	0Ma+xPy8IjyOYqXBMfPIsLErla9job7JrcKiSYgUzeBvqxKE7bo0OordArw9fLs=
X-Google-Smtp-Source: AGHT+IGjGGQ51oac8fpl2gvWAYhT3xpAg/8om8+12EbV86RHwS8mz+NWK7BNwdaGuz2xgI6Wd8MOtQ==
X-Received: by 2002:a05:6808:1241:b0:3c0:33c0:f65d with SMTP id o1-20020a056808124100b003c033c0f65dmr24099436oiv.22.1708594913448;
        Thu, 22 Feb 2024 01:41:53 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id n15-20020a05680803af00b003c17c2b8d09sm130699oie.31.2024.02.22.01.41.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 01:41:53 -0800 (PST)
From: Anup Patel <apatel@ventanamicro.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Saravana Kannan <saravanak@google.com>,
	Anup Patel <anup@brainfault.org>,
	linux-riscv@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v14 12/18] irqchip/riscv-imsic: Add device MSI domain support for platform devices
Date: Thu, 22 Feb 2024 15:10:00 +0530
Message-Id: <20240222094006.1030709-13-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240222094006.1030709-1-apatel@ventanamicro.com>
References: <20240222094006.1030709-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Linux platform MSI support allows per-device MSI domains so add
a platform irqchip driver for RISC-V IMSIC which provides a base IRQ
domain with MSI parent support for platform device domains.

The IMSIC platform driver assumes that the IMSIC state is already
initialized by the IMSIC early driver.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/irqchip/Makefile                   |   2 +-
 drivers/irqchip/irq-riscv-imsic-platform.c | 344 +++++++++++++++++++++
 drivers/irqchip/irq-riscv-imsic-state.h    |   1 +
 3 files changed, 346 insertions(+), 1 deletion(-)
 create mode 100644 drivers/irqchip/irq-riscv-imsic-platform.c

diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index d714724387ce..abca445a3229 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -95,7 +95,7 @@ obj-$(CONFIG_QCOM_MPM)			+= irq-qcom-mpm.o
 obj-$(CONFIG_CSKY_MPINTC)		+= irq-csky-mpintc.o
 obj-$(CONFIG_CSKY_APB_INTC)		+= irq-csky-apb-intc.o
 obj-$(CONFIG_RISCV_INTC)		+= irq-riscv-intc.o
-obj-$(CONFIG_RISCV_IMSIC)		+= irq-riscv-imsic-state.o irq-riscv-imsic-early.o
+obj-$(CONFIG_RISCV_IMSIC)		+= irq-riscv-imsic-state.o irq-riscv-imsic-early.o irq-riscv-imsic-platform.o
 obj-$(CONFIG_SIFIVE_PLIC)		+= irq-sifive-plic.o
 obj-$(CONFIG_IMX_IRQSTEER)		+= irq-imx-irqsteer.o
 obj-$(CONFIG_IMX_INTMUX)		+= irq-imx-intmux.o
diff --git a/drivers/irqchip/irq-riscv-imsic-platform.c b/drivers/irqchip/irq-riscv-imsic-platform.c
new file mode 100644
index 000000000000..e2344fc08dca
--- /dev/null
+++ b/drivers/irqchip/irq-riscv-imsic-platform.c
@@ -0,0 +1,344 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2021 Western Digital Corporation or its affiliates.
+ * Copyright (C) 2022 Ventana Micro Systems Inc.
+ */
+
+#define pr_fmt(fmt) "riscv-imsic: " fmt
+#include <linux/bitmap.h>
+#include <linux/cpu.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/irq.h>
+#include <linux/irqchip.h>
+#include <linux/irqdomain.h>
+#include <linux/module.h>
+#include <linux/msi.h>
+#include <linux/platform_device.h>
+#include <linux/spinlock.h>
+#include <linux/smp.h>
+
+#include "irq-riscv-imsic-state.h"
+
+static bool imsic_cpu_page_phys(unsigned int cpu, unsigned int guest_index,
+				phys_addr_t *out_msi_pa)
+{
+	struct imsic_global_config *global;
+	struct imsic_local_config *local;
+
+	global = &imsic->global;
+	local = per_cpu_ptr(global->local, cpu);
+
+	if (BIT(global->guest_index_bits) <= guest_index)
+		return false;
+
+	if (out_msi_pa)
+		*out_msi_pa = local->msi_pa +
+			      (guest_index * IMSIC_MMIO_PAGE_SZ);
+
+	return true;
+}
+
+static void imsic_irq_mask(struct irq_data *d)
+{
+	imsic_vector_mask(irq_data_get_irq_chip_data(d));
+}
+
+static void imsic_irq_unmask(struct irq_data *d)
+{
+	imsic_vector_unmask(irq_data_get_irq_chip_data(d));
+}
+
+static int imsic_irq_retrigger(struct irq_data *d)
+{
+	struct imsic_vector *vec = irq_data_get_irq_chip_data(d);
+	struct imsic_local_config *local;
+
+	if (WARN_ON(!vec))
+		return -ENOENT;
+
+	local = per_cpu_ptr(imsic->global.local, vec->cpu);
+	writel_relaxed(vec->local_id, local->msi_va);
+	return 0;
+}
+
+static void imsic_irq_compose_vector_msg(struct imsic_vector *vec, struct msi_msg *msg)
+{
+	phys_addr_t msi_addr;
+
+	if (WARN_ON(!vec))
+		return;
+
+	if (WARN_ON(!imsic_cpu_page_phys(vec->cpu, 0, &msi_addr)))
+		return;
+
+	msg->address_hi = upper_32_bits(msi_addr);
+	msg->address_lo = lower_32_bits(msi_addr);
+	msg->data = vec->local_id;
+}
+
+static void imsic_irq_compose_msg(struct irq_data *d, struct msi_msg *msg)
+{
+	imsic_irq_compose_vector_msg(irq_data_get_irq_chip_data(d), msg);
+}
+
+#ifdef CONFIG_SMP
+static void imsic_msi_update_msg(struct irq_data *d, struct imsic_vector *vec)
+{
+	struct msi_msg msg = { };
+
+	imsic_irq_compose_vector_msg(vec, &msg);
+	irq_data_get_irq_chip(d)->irq_write_msi_msg(d, &msg);
+}
+
+static int imsic_irq_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
+				  bool force)
+{
+	struct imsic_vector *old_vec, *new_vec;
+	struct irq_data *pd = d->parent_data;
+
+	old_vec = irq_data_get_irq_chip_data(pd);
+	if (WARN_ON(!old_vec))
+		return -ENOENT;
+
+	/* If old vector cpu belongs to the target cpumask then do nothing */
+	if (cpumask_test_cpu(old_vec->cpu, mask_val))
+		return IRQ_SET_MASK_OK_DONE;
+
+	/* If move is already in-flight then return failure */
+	if (imsic_vector_get_move(old_vec))
+		return -EBUSY;
+
+	/* Get a new vector on the desired set of CPUs */
+	new_vec = imsic_vector_alloc(old_vec->hwirq, mask_val);
+	if (!new_vec)
+		return -ENOSPC;
+
+	/* Point device to the new vector */
+	imsic_msi_update_msg(d, new_vec);
+
+	/* Update irq descriptors with the new vector */
+	pd->chip_data = new_vec;
+
+	/* Update effective affinity of parent irq data */
+	irq_data_update_effective_affinity(pd, cpumask_of(new_vec->cpu));
+
+	/* Move state of the old vector to the new vector */
+	imsic_vector_move(old_vec, new_vec);
+
+	return IRQ_SET_MASK_OK_DONE;
+}
+#endif
+
+static struct irq_chip imsic_irq_base_chip = {
+	.name			= "IMSIC",
+	.irq_mask		= imsic_irq_mask,
+	.irq_unmask		= imsic_irq_unmask,
+	.irq_retrigger		= imsic_irq_retrigger,
+	.irq_compose_msi_msg	= imsic_irq_compose_msg,
+	.flags			= IRQCHIP_SKIP_SET_WAKE |
+				  IRQCHIP_MASK_ON_SUSPEND,
+};
+
+static int imsic_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
+				  unsigned int nr_irqs, void *args)
+{
+	struct imsic_vector *vec;
+
+	/* Multi-MSI is not supported yet. */
+	if (nr_irqs > 1)
+		return -EOPNOTSUPP;
+
+	vec = imsic_vector_alloc(virq, cpu_online_mask);
+	if (!vec)
+		return -ENOSPC;
+
+	irq_domain_set_info(domain, virq, virq, &imsic_irq_base_chip, vec,
+			    handle_simple_irq, NULL, NULL);
+	irq_set_noprobe(virq);
+	irq_set_affinity(virq, cpu_online_mask);
+
+	return 0;
+}
+
+static void imsic_irq_domain_free(struct irq_domain *domain, unsigned int virq,
+				  unsigned int nr_irqs)
+{
+	struct irq_data *d = irq_domain_get_irq_data(domain, virq);
+
+	imsic_vector_free(irq_data_get_irq_chip_data(d));
+	irq_domain_free_irqs_parent(domain, virq, nr_irqs);
+}
+
+static int imsic_irq_domain_select(struct irq_domain *domain, struct irq_fwspec *fwspec,
+				   enum irq_domain_bus_token bus_token)
+{
+	const struct msi_parent_ops *ops = domain->msi_parent_ops;
+	u32 busmask = BIT(bus_token);
+
+	if (fwspec->fwnode != domain->fwnode || fwspec->param_count != 0)
+		return 0;
+
+	/* Handle pure domain searches */
+	if (bus_token == ops->bus_select_token)
+		return 1;
+
+	return !!(ops->bus_select_mask & busmask);
+}
+
+#ifdef CONFIG_GENERIC_IRQ_DEBUGFS
+static void imsic_irq_debug_show(struct seq_file *m, struct irq_domain *d,
+				 struct irq_data *irqd, int ind)
+{
+	if (!irqd) {
+		imsic_vector_debug_show_summary(m, ind);
+		return;
+	}
+
+	imsic_vector_debug_show(m, irq_data_get_irq_chip_data(irqd), ind);
+}
+#endif
+
+static const struct irq_domain_ops imsic_base_domain_ops = {
+	.alloc		= imsic_irq_domain_alloc,
+	.free		= imsic_irq_domain_free,
+	.select		= imsic_irq_domain_select,
+#ifdef CONFIG_GENERIC_IRQ_DEBUGFS
+	.debug_show	= imsic_irq_debug_show,
+#endif
+};
+
+static bool imsic_init_dev_msi_info(struct device *dev,
+				    struct irq_domain *domain,
+				    struct irq_domain *real_parent,
+				    struct msi_domain_info *info)
+{
+	const struct msi_parent_ops *pops = real_parent->msi_parent_ops;
+
+	/* MSI parent domain specific settings */
+	switch (real_parent->bus_token) {
+	case DOMAIN_BUS_NEXUS:
+		if (WARN_ON_ONCE(domain != real_parent))
+			return false;
+#ifdef CONFIG_SMP
+		info->chip->irq_set_affinity = imsic_irq_set_affinity;
+#endif
+		break;
+	default:
+		WARN_ON_ONCE(1);
+		return false;
+	}
+
+	/* Is the target supported? */
+	switch (info->bus_token) {
+	case DOMAIN_BUS_DEVICE_MSI:
+		/*
+		 * Per-device MSI should never have any MSI feature bits
+		 * set. It's sole purpose is to create a dumb interrupt
+		 * chip which has a device specific irq_write_msi_msg()
+		 * callback.
+		 */
+		if (WARN_ON_ONCE(info->flags))
+			return false;
+
+		/* Core managed MSI descriptors */
+		info->flags |= MSI_FLAG_ALLOC_SIMPLE_MSI_DESCS |
+			       MSI_FLAG_FREE_MSI_DESCS;
+		break;
+	case DOMAIN_BUS_WIRED_TO_MSI:
+		break;
+	default:
+		WARN_ON_ONCE(1);
+		return false;
+	}
+
+	/* Use hierarchial chip operations re-trigger */
+	info->chip->irq_retrigger = irq_chip_retrigger_hierarchy;
+
+	/*
+	 * Mask out the domain specific MSI feature flags which are not
+	 * supported by the real parent.
+	 */
+	info->flags &= pops->supported_flags;
+
+	/* Enforce the required flags */
+	info->flags |= pops->required_flags;
+
+	return true;
+}
+
+#define MATCH_PLATFORM_MSI		BIT(DOMAIN_BUS_PLATFORM_MSI)
+
+static const struct msi_parent_ops imsic_msi_parent_ops = {
+	.supported_flags	= MSI_GENERIC_FLAGS_MASK,
+	.required_flags		= MSI_FLAG_USE_DEF_DOM_OPS |
+				  MSI_FLAG_USE_DEF_CHIP_OPS,
+	.bus_select_token	= DOMAIN_BUS_NEXUS,
+	.bus_select_mask	= MATCH_PLATFORM_MSI,
+	.init_dev_msi_info	= imsic_init_dev_msi_info,
+};
+
+int imsic_irqdomain_init(void)
+{
+	struct imsic_global_config *global;
+
+	if (!imsic || !imsic->fwnode) {
+		pr_err("early driver not probed\n");
+		return -ENODEV;
+	}
+
+	if (imsic->base_domain) {
+		pr_err("%pfwP: irq domain already created\n", imsic->fwnode);
+		return -ENODEV;
+	}
+
+	/* Create Base IRQ domain */
+	imsic->base_domain = irq_domain_create_tree(imsic->fwnode,
+						    &imsic_base_domain_ops, imsic);
+	if (!imsic->base_domain) {
+		pr_err("%pfwP: failed to create IMSIC base domain\n", imsic->fwnode);
+		return -ENOMEM;
+	}
+	imsic->base_domain->flags |= IRQ_DOMAIN_FLAG_MSI_PARENT;
+	imsic->base_domain->msi_parent_ops = &imsic_msi_parent_ops;
+
+	irq_domain_update_bus_token(imsic->base_domain, DOMAIN_BUS_NEXUS);
+
+	global = &imsic->global;
+	pr_info("%pfwP:  hart-index-bits: %d,  guest-index-bits: %d\n",
+		imsic->fwnode, global->hart_index_bits, global->guest_index_bits);
+	pr_info("%pfwP: group-index-bits: %d, group-index-shift: %d\n",
+		imsic->fwnode, global->group_index_bits, global->group_index_shift);
+	pr_info("%pfwP: per-CPU IDs %d at base PPN %pa\n",
+		imsic->fwnode, global->nr_ids, &global->base_addr);
+	pr_info("%pfwP: total %d interrupts available\n",
+		imsic->fwnode, num_possible_cpus() * (global->nr_ids - 1));
+
+	return 0;
+}
+
+static int imsic_platform_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+
+	if (imsic && imsic->fwnode != dev->fwnode) {
+		dev_err(dev, "fwnode mismatch\n");
+		return -ENODEV;
+	}
+
+	return imsic_irqdomain_init();
+}
+
+static const struct of_device_id imsic_platform_match[] = {
+	{ .compatible = "riscv,imsics" },
+	{}
+};
+
+static struct platform_driver imsic_platform_driver = {
+	.driver = {
+		.name		= "riscv-imsic",
+		.of_match_table	= imsic_platform_match,
+	},
+	.probe = imsic_platform_probe,
+};
+builtin_platform_driver(imsic_platform_driver);
diff --git a/drivers/irqchip/irq-riscv-imsic-state.h b/drivers/irqchip/irq-riscv-imsic-state.h
index 8ec9649d0d01..5ae2f69b035b 100644
--- a/drivers/irqchip/irq-riscv-imsic-state.h
+++ b/drivers/irqchip/irq-riscv-imsic-state.h
@@ -103,5 +103,6 @@ void imsic_vector_debug_show_summary(struct seq_file *m, int ind);
 void imsic_state_online(void);
 void imsic_state_offline(void);
 int imsic_setup_state(struct fwnode_handle *fwnode);
+int imsic_irqdomain_init(void);
 
 #endif
-- 
2.34.1


