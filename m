Return-Path: <devicetree+bounces-138648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C2AA119B5
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 07:34:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B2AC3A4665
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 06:33:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B77622F395;
	Wed, 15 Jan 2025 06:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e3aWs8hf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF1422F381;
	Wed, 15 Jan 2025 06:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736922836; cv=none; b=szF51/+wbSh2n5K1SethPSltlWZb3vpQLsSeXY80zQ0TZnq2FLN+QacmFdRSVFJ5I681mBQRmD5YxMifLtF0I7/9jYYCkjoI6xjVBpuqEci1aiGwC+W54sMFKE35u976vYMybOJegwV2sWDaL+ez0SX5vgfBYlqj125eqn3qu7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736922836; c=relaxed/simple;
	bh=fAPQUDXp3QUe0Bz/J1dz9Mff7QBrXeIgus887Hbm1D4=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Hl8OblWn+728kDXEEqtZlvxKNYbtZlcP9/z5r0GnW7NNCv44LRguprtiheMTerlAdVNFhJdSaZ2jTAS40317I+rBNj2hDVhFtTHjP3xfR2kCz/fdKWDlXSl172JEBszM4yvdZwzMxkLSI/YTg4IIyzCj0zzHOqPgRhvH5PieLGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e3aWs8hf; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-71e2dccdb81so4357550a34.1;
        Tue, 14 Jan 2025 22:33:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736922834; x=1737527634; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UzjTeEY2+sET1QtOARyHjdsr1nFiQCmKj/PSNb9JIQ4=;
        b=e3aWs8hf6qiL5GS5FtvoW//0Mwn/y19Y6x/hP/45Gs3dXI7r8n3g9xPGLfOvzRdV0N
         JjXc8m9nx9q/KAw6GM3Ulr/j01bLHE3LPyT9GthrL+QIHKcwvud8PwqQhnzzOwacCvW4
         t6wLfW+3nD3A+XOl1B3fzzV3KvoqycoRX+uFVvEODQq471m0421Z4gikX3QQd85DDfW+
         MdeFzoiCiN19/GgkkcE5KondjvFjs8KVITQuHLyoddHfLg5/6kVzli9ybmoX5BSB1+Qk
         QzKUmQ7JIr9mN+ruLnBiBEKZxBVeT4KTQXhI9DNGkxny19CSZfWQ8tClF36/ndmPhZGa
         Sovg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736922834; x=1737527634;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UzjTeEY2+sET1QtOARyHjdsr1nFiQCmKj/PSNb9JIQ4=;
        b=xLdeNFABKD+/09PLG7e+4W3g1xA8WYefbgtUeQtkUBp5AfOOrUwuSet9v1YHqWvOFv
         n2sEQEDiHM/ObreqVjx2k2W3OIqCJkLv7di9RPsIyhAkjs+MC7kZC63XQcePYiuXi7N4
         KR4tSELFE90Mg95f2ZmMQeAMkIgfKZ2+kyltczLnMnuJNJkKtO1EaN+JfwA2xNDRcHAL
         XEOcYYB2JaEjW9/tQNQ6/PEcThSW/dZyQJQuVQHBwEiSRtLiKY1WVfdWlqI3d3WvkXaF
         xgtfM2aypnTBqyiz3hNHpYpqF/r/NctM6h5NQ3s+bQI8vkytDOQQVYcLFsNRk3815ybq
         Opqg==
X-Forwarded-Encrypted: i=1; AJvYcCWZNVsW0DtccOOe8dFAsJj2XsgZ7fbmT9FQGH+Ile5Nrn+G+QyzEatA657sR3xkLxbHzQBhH65e/HARtYq/@vger.kernel.org, AJvYcCWbdJdLYU2Xh7eiLbywf1uknfmVFSgzdINoTv1R/7i2bmvG72VjcbTEcFSGZDOQhKCXmbNayxJuxr9w@vger.kernel.org
X-Gm-Message-State: AOJu0YyFEqHC6Yit/9xL6Mkg8B24gpEcfUKQkEBHFyKk2fx0Poo4LFlj
	djls6TfehtMo7Y6APRGPcbfU/kZ/B2a6aYH1JNu0pTexkZaVdqih
X-Gm-Gg: ASbGnctM4pi9TBKMsF8vfTbXE8pWYmM27PGK2gLCrkfxW38Tbasv94JURJ5OtN8Cw38
	SdOJB4/6NlIqt7Q82OQd0MYUjalQ53pfgxWHA1uvkPUUHjU9nKzxn2Vvm8ykFsefuBjfqGmVrf3
	6qGz3vZGcEebajar9lPK0klk7KJNMYLzKwioZiMXDnCn4fk5oHgQEGHO2Fc+gLvYQf7O43pvF6M
	FTdUZw6FMgQsdnYbtbkaGievOs535pGdBb6J/eaelSeVqkyTrWUCryMD2Xo/uCsjcU=
X-Google-Smtp-Source: AGHT+IHXAw89dGDyX9Nw8CfePHQKR3L/8boZN0/bHFRvrKiAMKe05eg8QKM7xv5N0LeiBS3sNhSU1g==
X-Received: by 2002:a05:6830:7185:b0:71d:fb64:b601 with SMTP id 46e09a7af769-721e2ef8013mr19422504a34.27.1736922834050;
        Tue, 14 Jan 2025 22:33:54 -0800 (PST)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7232698f926sm4756652a34.40.2025.01.14.22.33.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 22:33:52 -0800 (PST)
From: Chen Wang <unicornxw@gmail.com>
To: u.kleine-koenig@baylibre.com,
	aou@eecs.berkeley.edu,
	arnd@arndb.de,
	unicorn_wang@outlook.com,
	conor+dt@kernel.org,
	guoren@kernel.org,
	inochiama@outlook.com,
	krzk+dt@kernel.org,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	robh@kernel.org,
	tglx@linutronix.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com,
	fengchun.li@sophgo.com,
	samuel.holland@sifive.com,
	christophe.jaillet@wanadoo.fr
Subject: [PATCH v3 2/3] irqchip: Add the Sophgo SG2042 MSI interrupt controller
Date: Wed, 15 Jan 2025 14:33:45 +0800
Message-Id: <b5c2f13aa94f68c3415a1292678e16db33f291cd.1736921549.git.unicorn_wang@outlook.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1736921549.git.unicorn_wang@outlook.com>
References: <cover.1736921549.git.unicorn_wang@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chen Wang <unicorn_wang@outlook.com>

Add driver for Sophgo SG2042 MSI interrupt controller.

Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
---
 drivers/irqchip/Kconfig          |  12 ++
 drivers/irqchip/Makefile         |   1 +
 drivers/irqchip/irq-sg2042-msi.c | 268 +++++++++++++++++++++++++++++++
 3 files changed, 281 insertions(+)
 create mode 100644 drivers/irqchip/irq-sg2042-msi.c

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 9bee02db1643..161fb5df857f 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -749,6 +749,18 @@ config MCHP_EIC
 	help
 	  Support for Microchip External Interrupt Controller.
 
+config SOPHGO_SG2042_MSI
+	bool "Sophgo SG2042 MSI Controller"
+	depends on ARCH_SOPHGO || COMPILE_TEST
+	depends on PCI
+	select IRQ_DOMAIN_HIERARCHY
+	select IRQ_MSI_LIB
+	select PCI_MSI
+	help
+	  Support for the Sophgo SG2042 MSI Controller.
+	  This on-chip interrupt controller enables MSI sources to be
+	  routed to the primary PLIC controller on SoC.
+
 config SUNPLUS_SP7021_INTC
 	bool "Sunplus SP7021 interrupt controller" if COMPILE_TEST
 	default SOC_SP7021
diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index 25e9ad29b8c4..dd60e597491d 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -128,4 +128,5 @@ obj-$(CONFIG_WPCM450_AIC)		+= irq-wpcm450-aic.o
 obj-$(CONFIG_IRQ_IDT3243X)		+= irq-idt3243x.o
 obj-$(CONFIG_APPLE_AIC)			+= irq-apple-aic.o
 obj-$(CONFIG_MCHP_EIC)			+= irq-mchp-eic.o
+obj-$(CONFIG_SOPHGO_SG2042_MSI)		+= irq-sg2042-msi.o
 obj-$(CONFIG_SUNPLUS_SP7021_INTC)	+= irq-sp7021-intc.o
diff --git a/drivers/irqchip/irq-sg2042-msi.c b/drivers/irqchip/irq-sg2042-msi.c
new file mode 100644
index 000000000000..1f88e1671e5c
--- /dev/null
+++ b/drivers/irqchip/irq-sg2042-msi.c
@@ -0,0 +1,268 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * SG2042 MSI Controller
+ *
+ * Copyright (C) 2024 Sophgo Technology Inc.
+ * Copyright (C) 2024 Chen Wang <unicorn_wang@outlook.com>
+ */
+
+#include <linux/cleanup.h>
+#include <linux/io.h>
+#include <linux/irq.h>
+#include <linux/irqdomain.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/msi.h>
+#include <linux/of.h>
+#include <linux/of_irq.h>
+#include <linux/of_pci.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+
+#include "irq-msi-lib.h"
+
+#define SG2042_MAX_MSI_VECTOR	32
+
+struct sg2042_msi_chipdata {
+	void __iomem	*reg_clr;	// clear reg, see TRM, 10.1.33, GP_INTR0_CLR
+
+	phys_addr_t	doorbell_addr;	// see TRM, 10.1.32, GP_INTR0_SET
+
+	u32		irq_first;	// The vector number that MSIs starts
+	u32		num_irqs;	// The number of vectors for MSIs
+
+	DECLARE_BITMAP(msi_map, SG2042_MAX_MSI_VECTOR);
+	struct mutex	msi_map_lock;	// lock for msi_map
+};
+
+static int sg2042_msi_allocate_hwirq(struct sg2042_msi_chipdata *data, int num_req)
+{
+	int first;
+
+	guard(mutex)(&data->msi_map_lock);
+	first = bitmap_find_free_region(data->msi_map, data->num_irqs,
+					get_count_order(num_req));
+	return first >= 0 ? first : -ENOSPC;
+}
+
+static void sg2042_msi_free_hwirq(struct sg2042_msi_chipdata *data,
+				  int hwirq, int num_req)
+{
+	guard(mutex)(&data->msi_map_lock);
+	bitmap_release_region(data->msi_map, hwirq, get_count_order(num_req));
+}
+
+static void sg2042_msi_irq_ack(struct irq_data *d)
+{
+	struct sg2042_msi_chipdata *data  = irq_data_get_irq_chip_data(d);
+	int bit_off = d->hwirq;
+
+	writel(1 << bit_off, data->reg_clr);
+
+	irq_chip_ack_parent(d);
+}
+
+static void sg2042_msi_irq_compose_msi_msg(struct irq_data *d,
+					   struct msi_msg *msg)
+{
+	struct sg2042_msi_chipdata *data = irq_data_get_irq_chip_data(d);
+
+	msg->address_hi = upper_32_bits(data->doorbell_addr);
+	msg->address_lo = lower_32_bits(data->doorbell_addr);
+	msg->data = 1 << d->hwirq;
+}
+
+static const struct irq_chip sg2042_msi_middle_irq_chip = {
+	.name			= "SG2042 MSI",
+	.irq_ack		= sg2042_msi_irq_ack,
+	.irq_mask		= irq_chip_mask_parent,
+	.irq_unmask		= irq_chip_unmask_parent,
+#ifdef CONFIG_SMP
+	.irq_set_affinity	= irq_chip_set_affinity_parent,
+#endif
+	.irq_compose_msi_msg	= sg2042_msi_irq_compose_msi_msg,
+};
+
+static int sg2042_msi_parent_domain_alloc(struct irq_domain *domain,
+					  unsigned int virq, int hwirq)
+{
+	struct sg2042_msi_chipdata *data = domain->host_data;
+	struct irq_fwspec fwspec;
+	struct irq_data *d;
+	int ret;
+
+	fwspec.fwnode = domain->parent->fwnode;
+	fwspec.param_count = 2;
+	fwspec.param[0] = data->irq_first + hwirq;
+	fwspec.param[1] = IRQ_TYPE_EDGE_RISING;
+
+	ret = irq_domain_alloc_irqs_parent(domain, virq, 1, &fwspec);
+	if (ret)
+		return ret;
+
+	d = irq_domain_get_irq_data(domain->parent, virq);
+	return d->chip->irq_set_type(d, IRQ_TYPE_EDGE_RISING);
+}
+
+static int sg2042_msi_middle_domain_alloc(struct irq_domain *domain,
+					  unsigned int virq,
+					  unsigned int nr_irqs, void *args)
+{
+	struct sg2042_msi_chipdata *data = domain->host_data;
+	int hwirq, err, i;
+
+	hwirq = sg2042_msi_allocate_hwirq(data, nr_irqs);
+	if (hwirq < 0)
+		return hwirq;
+
+	for (i = 0; i < nr_irqs; i++) {
+		err = sg2042_msi_parent_domain_alloc(domain, virq + i, hwirq + i);
+		if (err)
+			goto err_hwirq;
+
+		irq_domain_set_hwirq_and_chip(domain, virq + i, hwirq + i,
+					      &sg2042_msi_middle_irq_chip, data);
+	}
+
+	return 0;
+
+err_hwirq:
+	sg2042_msi_free_hwirq(data, hwirq, nr_irqs);
+	irq_domain_free_irqs_parent(domain, virq, i);
+
+	return err;
+}
+
+static void sg2042_msi_middle_domain_free(struct irq_domain *domain,
+					  unsigned int virq,
+					  unsigned int nr_irqs)
+{
+	struct irq_data *d = irq_domain_get_irq_data(domain, virq);
+	struct sg2042_msi_chipdata *data = irq_data_get_irq_chip_data(d);
+
+	irq_domain_free_irqs_parent(domain, virq, nr_irqs);
+	sg2042_msi_free_hwirq(data, d->hwirq, nr_irqs);
+}
+
+static const struct irq_domain_ops sg2042_msi_middle_domain_ops = {
+	.alloc	= sg2042_msi_middle_domain_alloc,
+	.free	= sg2042_msi_middle_domain_free,
+	.select	= msi_lib_irq_domain_select,
+};
+
+#define SG2042_MSI_FLAGS_REQUIRED (MSI_FLAG_USE_DEF_DOM_OPS |	\
+				   MSI_FLAG_USE_DEF_CHIP_OPS)
+
+#define SG2042_MSI_FLAGS_SUPPORTED MSI_GENERIC_FLAGS_MASK
+
+static struct msi_parent_ops sg2042_msi_parent_ops = {
+	.required_flags		= SG2042_MSI_FLAGS_REQUIRED,
+	.supported_flags	= SG2042_MSI_FLAGS_SUPPORTED,
+	.bus_select_mask	= MATCH_PCI_MSI,
+	.bus_select_token	= DOMAIN_BUS_NEXUS,
+	.prefix			= "SG2042-",
+	.init_dev_msi_info	= msi_lib_init_dev_msi_info,
+};
+
+static int sg2042_msi_init_domains(struct sg2042_msi_chipdata *data,
+				   struct device_node *node)
+{
+	struct fwnode_handle *fwnode = of_node_to_fwnode(node);
+	struct irq_domain *plic_domain, *middle_domain;
+	struct device_node *plic_node;
+
+	if (!of_find_property(node, "interrupt-parent", NULL)) {
+		pr_err("Can't find interrupt-parent!\n");
+		return -EINVAL;
+	}
+
+	plic_node = of_irq_find_parent(node);
+	if (!plic_node) {
+		pr_err("Failed to find the PLIC node!\n");
+		return -ENXIO;
+	}
+
+	plic_domain = irq_find_host(plic_node);
+	of_node_put(plic_node);
+	if (!plic_domain) {
+		pr_err("Failed to find the PLIC domain\n");
+		return -ENXIO;
+	}
+
+	middle_domain = irq_domain_create_hierarchy(plic_domain, 0, data->num_irqs,
+						    fwnode,
+						    &sg2042_msi_middle_domain_ops,
+						    data);
+	if (!middle_domain) {
+		pr_err("Failed to create the MSI middle domain\n");
+		return -ENOMEM;
+	}
+
+	irq_domain_update_bus_token(middle_domain, DOMAIN_BUS_NEXUS);
+
+	middle_domain->flags |= IRQ_DOMAIN_FLAG_MSI_PARENT;
+	middle_domain->msi_parent_ops = &sg2042_msi_parent_ops;
+
+	return 0;
+}
+
+static int sg2042_msi_probe(struct platform_device *pdev)
+{
+	struct sg2042_msi_chipdata *data;
+	struct of_phandle_args args = {};
+	struct resource *res;
+	int ret;
+
+	data = devm_kzalloc(&pdev->dev, sizeof(struct sg2042_msi_chipdata), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	data->reg_clr = devm_platform_ioremap_resource_byname(pdev, "clr");
+	if (IS_ERR(data->reg_clr)) {
+		dev_err(&pdev->dev, "Failed to map clear register\n");
+		return PTR_ERR(data->reg_clr);
+	}
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "doorbell");
+	if (!res) {
+		dev_err(&pdev->dev, "Failed get resource from set\n");
+		return -EINVAL;
+	}
+	data->doorbell_addr = res->start;
+
+	ret = of_parse_phandle_with_args(pdev->dev.of_node, "msi-ranges",
+					 "#interrupt-cells", 0, &args);
+	if (ret) {
+		dev_err(&pdev->dev, "Unable to parse MSI vec base\n");
+		return ret;
+	}
+	data->irq_first = (u32)args.args[0];
+
+	ret = of_property_read_u32_index(pdev->dev.of_node, "msi-ranges",
+					 args.args_count + 1, &data->num_irqs);
+	if (ret) {
+		dev_err(&pdev->dev, "Unable to parse MSI vec number\n");
+		of_node_put(args.np);
+		return ret;
+	}
+	of_node_put(args.np);
+
+	mutex_init(&data->msi_map_lock);
+
+	return sg2042_msi_init_domains(data, pdev->dev.of_node);
+}
+
+static const struct of_device_id sg2042_msi_of_match[] = {
+	{ .compatible	= "sophgo,sg2042-msi" },
+	{}
+};
+
+static struct platform_driver sg2042_msi_driver = {
+	.driver = {
+		.name		= "sg2042-msi",
+		.of_match_table	= sg2042_msi_of_match,
+	},
+	.probe = sg2042_msi_probe,
+};
+builtin_platform_driver(sg2042_msi_driver);
-- 
2.34.1


