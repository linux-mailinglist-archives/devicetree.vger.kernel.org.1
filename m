Return-Path: <devicetree+bounces-43685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE09985B29D
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 07:08:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D2C0B1C21A2C
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 06:08:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11E2858217;
	Tue, 20 Feb 2024 06:07:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="KTaQt+KP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484B157339
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 06:07:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708409275; cv=none; b=Jnab7vD5jqNtU/fO9FBK/c4V3pB76XSG5GP7LTU87MAyaixlf/VeREr+xeOqxkweegYAg1jkQLBkFrUuVydAYXQd+wri0Mpb+2aMyJMWrMMs9i+4BnxcVTHAaixuDxjzF38j7AVxKlC5BvWaw4uMghOYwqOA+JZMqcqfdslXHl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708409275; c=relaxed/simple;
	bh=YhDc3vkaM38Tf1OiTT/09IzrOujib0wloPu1yoboiMQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lEXFpQT+1H7ydsH+CecwD6G0bMGCqrl5tKfiVu56bJqh1xVsNVzipzMhQrpqs4txN4pGgDILW/Vv7bN+AKTtSYr0wGtTBqn9EWzxy2bYqX5uTRUjUfp7aa9kskm8aS5vrLyY7tetUo7NBa0z3NcQVDUZBk3EuNWolUo7Bo2Vl64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=KTaQt+KP; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1d944e8f367so41076475ad.0
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 22:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708409272; x=1709014072; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KT9YnFkoUw3B+5mBXpQvEFepoy4xwyPtVpTIMALcBNs=;
        b=KTaQt+KPqW66KL2VwaHoCnaLsgTAdQtYahGT/DSzThxnIAT/zru2mQ5DjV+dPnd0OG
         jsM6THDf/2n0ybgu1MBchzKTMpHDc6qWCUzyPuE8OHTbrV+DbU/1b+rMIPBeEExYthiE
         BxTaQ1u0MYWCc4Th75+coTkahDw4v5r9HlhZYKe79yOhQeBFzD/qjlOOl0EDeTc83M+S
         c+EDeyCyVFpPum80ERcTV9HuJaajdnffT52fjfM1raTbJSZ6W4w8TPKaOmfIpAFH2Zew
         1oB71TkF3OC0sLx8EsTCWOg5+gksZl/LSHlItuAt0XCnl2OChZIJtrKNH7uZDPiUfBEY
         xcRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708409272; x=1709014072;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KT9YnFkoUw3B+5mBXpQvEFepoy4xwyPtVpTIMALcBNs=;
        b=XEIucslqpAeCXj9Vjs73f4CugAZMDDeJW6CUwtQnbEDkcHCpPOyIAjj/cHSwrQ8per
         VdfFFBhX6aM0XBkD7mcjLZGC3J/PDJ6cFGCmHuq7AIH+8NPL7A03bLHgiPRFZlqyHITo
         BVeHziTlgb8gvYNlXfkCcwfwG71NyNQIhO0yFWr2IKo9DTw891yc76QedTRLDH/APuPA
         W6EyvIFrgJYW5t7CkeddM+db8o2RxbZk27v1c+fozcKsIfaa8yOizIaSlJQTQE9X6WwM
         2y9RuFwDgXmmRYksMyzQ/lX3ynT9ZDE/uRpbER7yHQvdHMhNbOYorChniylKhBZoLyP8
         6rAw==
X-Forwarded-Encrypted: i=1; AJvYcCUMs+pmcNPDufjiXUAq9azKenZZ4iIC7tpsp0uPDHuY7/+f7gb4jeUE7fQZWIuf6HklUF9yan8LWGQQ5m2rWEbf+B5BEkNQ8te6OA==
X-Gm-Message-State: AOJu0YyDt9vs1OBoqP33m2O6obh8J4mIrpM6Fae+DNs+w3BFhu6LQIX3
	Kk9gERBfTTw0Qcsmr5c6ncbkBiA/9yFk3UPZfI9JU1x65o19Hfjn67LiM4RAlSE=
X-Google-Smtp-Source: AGHT+IHE25jVhjaQcfp/tmFbCjDghKuNslytyxG9pDenfauRx+spKpWOuZDbwow2e3YA44fOCa4etg==
X-Received: by 2002:a17:902:e848:b0:1db:c84c:3549 with SMTP id t8-20020a170902e84800b001dbc84c3549mr8940077plg.11.1708409272206;
        Mon, 19 Feb 2024 22:07:52 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.80.86])
        by smtp.gmail.com with ESMTPSA id j6-20020a17090276c600b001db4c89aea5sm5368114plt.158.2024.02.19.22.07.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 22:07:51 -0800 (PST)
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
Subject: [PATCH v13 01/13] irqchip/sifive-plic: Convert PLIC driver into a platform driver
Date: Tue, 20 Feb 2024 11:37:06 +0530
Message-Id: <20240220060718.823229-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240220060718.823229-1-apatel@ventanamicro.com>
References: <20240220060718.823229-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The PLIC driver does not require very early initialization so let
us convert it into a platform driver.

As part of the conversion, the PLIC probing undergoes the following
changes:
1. Use dev_info(), dev_err() and dev_warn() instead of pr_info(),
   pr_err() and pr_warn()
2. Use devm_xyz() APIs wherever applicable
3. PLIC is now probed after CPUs are brought-up so we have to
   setup cpuhp state after context handler of all online CPUs
   are initialized otherwise we see crash on multi-socket systems

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/irqchip/irq-sifive-plic.c | 269 ++++++++++++++++++++----------
 1 file changed, 177 insertions(+), 92 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index 5b7bc4fd9517..48483a1a41dd 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -3,7 +3,6 @@
  * Copyright (C) 2017 SiFive
  * Copyright (C) 2018 Christoph Hellwig
  */
-#define pr_fmt(fmt) "plic: " fmt
 #include <linux/cpu.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
@@ -64,6 +63,7 @@
 #define PLIC_QUIRK_EDGE_INTERRUPT	0
 
 struct plic_priv {
+	struct device *dev;
 	struct cpumask lmask;
 	struct irq_domain *irqdomain;
 	void __iomem *regs;
@@ -371,7 +371,8 @@ static void plic_handle_irq(struct irq_desc *desc)
 		int err = generic_handle_domain_irq(handler->priv->irqdomain,
 						    hwirq);
 		if (unlikely(err))
-			pr_warn_ratelimited("can't find mapping for hwirq %lu\n",
+			dev_warn_ratelimited(handler->priv->dev,
+					"can't find mapping for hwirq %lu\n",
 					hwirq);
 	}
 
@@ -406,57 +407,126 @@ static int plic_starting_cpu(unsigned int cpu)
 	return 0;
 }
 
-static int __init __plic_init(struct device_node *node,
-			      struct device_node *parent,
-			      unsigned long plic_quirks)
+static const struct of_device_id plic_match[] = {
+	{ .compatible = "sifive,plic-1.0.0" },
+	{ .compatible = "riscv,plic0" },
+	{ .compatible = "andestech,nceplic100",
+	  .data = (const void *)BIT(PLIC_QUIRK_EDGE_INTERRUPT) },
+	{ .compatible = "thead,c900-plic",
+	  .data = (const void *)BIT(PLIC_QUIRK_EDGE_INTERRUPT) },
+	{}
+};
+
+static int plic_parse_nr_irqs_and_contexts(struct platform_device *pdev,
+					   u32 *nr_irqs, u32 *nr_contexts)
 {
-	int error = 0, nr_contexts, nr_handlers = 0, i;
-	u32 nr_irqs;
-	struct plic_priv *priv;
+	struct device *dev = &pdev->dev;
+	int rc;
+
+	/*
+	 * Currently, only OF fwnode is supported so extend this
+	 * function for ACPI support.
+	 */
+	if (!is_of_node(dev->fwnode))
+		return -EINVAL;
+
+	rc = of_property_read_u32(to_of_node(dev->fwnode),
+				  "riscv,ndev", nr_irqs);
+	if (rc) {
+		dev_err(dev, "riscv,ndev property not available\n");
+		return rc;
+	}
+
+	*nr_contexts = of_irq_count(to_of_node(dev->fwnode));
+	if (WARN_ON(!(*nr_contexts))) {
+		dev_err(dev, "no PLIC context available\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int plic_parse_context_parent_hwirq(struct platform_device *pdev,
+					   u32 context, u32 *parent_hwirq,
+					   unsigned long *parent_hartid)
+{
+	struct device *dev = &pdev->dev;
+	struct of_phandle_args parent;
+	int rc;
+
+	/*
+	 * Currently, only OF fwnode is supported so extend this
+	 * function for ACPI support.
+	 */
+	if (!is_of_node(dev->fwnode))
+		return -EINVAL;
+
+	rc = of_irq_parse_one(to_of_node(dev->fwnode), context, &parent);
+	if (rc)
+		return rc;
+
+	rc = riscv_of_parent_hartid(parent.np, parent_hartid);
+	if (rc)
+		return rc;
+
+	*parent_hwirq = parent.args[0];
+	return 0;
+}
+
+static int plic_probe(struct platform_device *pdev)
+{
+	int rc, nr_contexts, nr_handlers = 0, i, cpu;
+	unsigned long plic_quirks = 0, hartid;
+	struct device *dev = &pdev->dev;
 	struct plic_handler *handler;
-	unsigned int cpu;
+	u32 nr_irqs, parent_hwirq;
+	struct irq_domain *domain;
+	struct plic_priv *priv;
+	irq_hw_number_t hwirq;
+	struct resource *res;
+	bool cpuhp_setup;
+
+	if (is_of_node(dev->fwnode)) {
+		const struct of_device_id *id;
+
+		id = of_match_node(plic_match, to_of_node(dev->fwnode));
+		if (id)
+			plic_quirks = (unsigned long)id->data;
+	}
 
-	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;
-
+	priv->dev = dev;
 	priv->plic_quirks = plic_quirks;
 
-	priv->regs = of_iomap(node, 0);
-	if (WARN_ON(!priv->regs)) {
-		error = -EIO;
-		goto out_free_priv;
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res) {
+		dev_err(dev, "failed to get MMIO resource\n");
+		return -EINVAL;
+	}
+	priv->regs = devm_ioremap(dev, res->start, resource_size(res));
+	if (!priv->regs) {
+		dev_err(dev, "failed map MMIO registers\n");
+		return -EIO;
 	}
 
-	error = -EINVAL;
-	of_property_read_u32(node, "riscv,ndev", &nr_irqs);
-	if (WARN_ON(!nr_irqs))
-		goto out_iounmap;
-
+	rc = plic_parse_nr_irqs_and_contexts(pdev, &nr_irqs, &nr_contexts);
+	if (rc) {
+		dev_err(dev, "failed to parse irqs and contexts\n");
+		return rc;
+	}
 	priv->nr_irqs = nr_irqs;
 
-	priv->prio_save = bitmap_alloc(nr_irqs, GFP_KERNEL);
+	priv->prio_save = devm_bitmap_zalloc(dev, nr_irqs, GFP_KERNEL);
 	if (!priv->prio_save)
-		goto out_free_priority_reg;
-
-	nr_contexts = of_irq_count(node);
-	if (WARN_ON(!nr_contexts))
-		goto out_free_priority_reg;
-
-	error = -ENOMEM;
-	priv->irqdomain = irq_domain_add_linear(node, nr_irqs + 1,
-			&plic_irqdomain_ops, priv);
-	if (WARN_ON(!priv->irqdomain))
-		goto out_free_priority_reg;
+		return -ENOMEM;
 
 	for (i = 0; i < nr_contexts; i++) {
-		struct of_phandle_args parent;
-		irq_hw_number_t hwirq;
-		int cpu;
-		unsigned long hartid;
-
-		if (of_irq_parse_one(node, i, &parent)) {
-			pr_err("failed to parse parent for context %d.\n", i);
+		rc = plic_parse_context_parent_hwirq(pdev, i,
+						     &parent_hwirq, &hartid);
+		if (rc) {
+			dev_warn(dev, "hwirq for context%d not found\n", i);
 			continue;
 		}
 
@@ -464,7 +534,7 @@ static int __init __plic_init(struct device_node *node,
 		 * Skip contexts other than external interrupts for our
 		 * privilege level.
 		 */
-		if (parent.args[0] != RV_IRQ_EXT) {
+		if (parent_hwirq != RV_IRQ_EXT) {
 			/* Disable S-mode enable bits if running in M-mode. */
 			if (IS_ENABLED(CONFIG_RISCV_M_MODE)) {
 				void __iomem *enable_base = priv->regs +
@@ -477,21 +547,17 @@ static int __init __plic_init(struct device_node *node,
 			continue;
 		}
 
-		error = riscv_of_parent_hartid(parent.np, &hartid);
-		if (error < 0) {
-			pr_warn("failed to parse hart ID for context %d.\n", i);
-			continue;
-		}
-
 		cpu = riscv_hartid_to_cpuid(hartid);
 		if (cpu < 0) {
-			pr_warn("Invalid cpuid for context %d\n", i);
+			dev_warn(dev, "Invalid cpuid for context %d\n", i);
 			continue;
 		}
 
 		/* Find parent domain and register chained handler */
-		if (!plic_parent_irq && irq_find_host(parent.np)) {
-			plic_parent_irq = irq_of_parse_and_map(node, i);
+		domain = irq_find_matching_fwnode(riscv_get_intc_hwnode(),
+						  DOMAIN_BUS_ANY);
+		if (!plic_parent_irq && domain) {
+			plic_parent_irq = irq_create_mapping(domain, RV_IRQ_EXT);
 			if (plic_parent_irq)
 				irq_set_chained_handler(plic_parent_irq,
 							plic_handle_irq);
@@ -504,7 +570,7 @@ static int __init __plic_init(struct device_node *node,
 		 */
 		handler = per_cpu_ptr(&plic_handlers, cpu);
 		if (handler->present) {
-			pr_warn("handler already present for context %d.\n", i);
+			dev_warn(dev, "handler already present for context%d.\n", i);
 			plic_set_threshold(handler, PLIC_DISABLE_THRESHOLD);
 			goto done;
 		}
@@ -518,10 +584,15 @@ static int __init __plic_init(struct device_node *node,
 			i * CONTEXT_ENABLE_SIZE;
 		handler->priv = priv;
 
-		handler->enable_save =  kcalloc(DIV_ROUND_UP(nr_irqs, 32),
-						sizeof(*handler->enable_save), GFP_KERNEL);
-		if (!handler->enable_save)
-			goto out_free_enable_reg;
+		handler->enable_save =  devm_kcalloc(dev,
+						DIV_ROUND_UP(nr_irqs, 32),
+						sizeof(*handler->enable_save),
+						GFP_KERNEL);
+		if (!handler->enable_save) {
+			rc = -ENOMEM;
+			goto fail_cleanup_contexts;
+		}
+
 done:
 		for (hwirq = 1; hwirq <= nr_irqs; hwirq++) {
 			plic_toggle(handler, hwirq, 0);
@@ -531,52 +602,66 @@ static int __init __plic_init(struct device_node *node,
 		nr_handlers++;
 	}
 
+	priv->irqdomain = irq_domain_create_linear(dev->fwnode, nr_irqs + 1,
+						   &plic_irqdomain_ops, priv);
+	if (WARN_ON(!priv->irqdomain)) {
+		rc = -ENOMEM;
+		goto fail_cleanup_contexts;
+	}
+
 	/*
 	 * We can have multiple PLIC instances so setup cpuhp state
-	 * and register syscore operations only when context handler
-	 * for current/boot CPU is present.
+	 * and register syscore operations only once after context
+	 * handlers of all online CPUs are initialized.
 	 */
-	handler = this_cpu_ptr(&plic_handlers);
-	if (handler->present && !plic_cpuhp_setup_done) {
-		cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
-				  "irqchip/sifive/plic:starting",
-				  plic_starting_cpu, plic_dying_cpu);
-		register_syscore_ops(&plic_irq_syscore_ops);
-		plic_cpuhp_setup_done = true;
+	if (!plic_cpuhp_setup_done) {
+		cpuhp_setup = true;
+		for_each_online_cpu(cpu) {
+			handler = per_cpu_ptr(&plic_handlers, cpu);
+			if (!handler->present) {
+				cpuhp_setup = false;
+				break;
+			}
+		}
+		if (cpuhp_setup) {
+			cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
+					  "irqchip/sifive/plic:starting",
+					  plic_starting_cpu, plic_dying_cpu);
+			register_syscore_ops(&plic_irq_syscore_ops);
+			plic_cpuhp_setup_done = true;
+		}
 	}
 
-	pr_info("%pOFP: mapped %d interrupts with %d handlers for"
-		" %d contexts.\n", node, nr_irqs, nr_handlers, nr_contexts);
+	dev_info(dev, "mapped %d interrupts with %d handlers for %d contexts.\n",
+		 nr_irqs, nr_handlers, nr_contexts);
 	return 0;
 
-out_free_enable_reg:
-	for_each_cpu(cpu, cpu_present_mask) {
+fail_cleanup_contexts:
+	for (i = 0; i < nr_contexts; i++) {
+		if (plic_parse_context_parent_hwirq(pdev, i,
+						    &parent_hwirq, &hartid))
+			continue;
+		if (parent_hwirq != RV_IRQ_EXT)
+			continue;
+		cpu = riscv_hartid_to_cpuid(hartid);
+		if (cpu < 0)
+			continue;
+
 		handler = per_cpu_ptr(&plic_handlers, cpu);
-		kfree(handler->enable_save);
+		handler->present = false;
+		handler->hart_base = NULL;
+		handler->enable_base = NULL;
+		handler->enable_save = NULL;
+		handler->priv = NULL;
 	}
-out_free_priority_reg:
-	kfree(priv->prio_save);
-out_iounmap:
-	iounmap(priv->regs);
-out_free_priv:
-	kfree(priv);
-	return error;
+	return rc;
 }
 
-static int __init plic_init(struct device_node *node,
-			    struct device_node *parent)
-{
-	return __plic_init(node, parent, 0);
-}
-
-IRQCHIP_DECLARE(sifive_plic, "sifive,plic-1.0.0", plic_init);
-IRQCHIP_DECLARE(riscv_plic0, "riscv,plic0", plic_init); /* for legacy systems */
-
-static int __init plic_edge_init(struct device_node *node,
-				 struct device_node *parent)
-{
-	return __plic_init(node, parent, BIT(PLIC_QUIRK_EDGE_INTERRUPT));
-}
-
-IRQCHIP_DECLARE(andestech_nceplic100, "andestech,nceplic100", plic_edge_init);
-IRQCHIP_DECLARE(thead_c900_plic, "thead,c900-plic", plic_edge_init);
+static struct platform_driver plic_driver = {
+	.driver = {
+		.name		= "riscv-plic",
+		.of_match_table	= plic_match,
+	},
+	.probe = plic_probe,
+};
+builtin_platform_driver(plic_driver);
-- 
2.34.1


