Return-Path: <devicetree+bounces-44691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB5B85F4A8
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 10:41:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3F0F72870FC
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:41:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33A7A38DD8;
	Thu, 22 Feb 2024 09:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="OQ/Hvd7l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0D87383BD
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 09:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708594845; cv=none; b=S36mkmHTPb2Hv/WDneKsBNUMNkfB67YaWjZfZBDfgM8ahB77abaorFnmMF2U/QisC8OZTw6gJ4rR2dQoufgeWzaBjOCNnLEMpLBc7Cbsjc2qk7m1ctV8a3y5xSahhk7LSN2yg7X5wIFe4Aa+XKMEFnZT1DE4aU67inEmkYzv7oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708594845; c=relaxed/simple;
	bh=FXoCaba3gtvEALwRNM4h4nFnfI8O68CksmTNcI5rPr8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=uSyfr+Ia8TxAp6bhQb3GTKN+f4Yj7g/WGLNC8cl9YiI83caY/X6OJfUtCcT+6xYan4uFnyo7JuTzgjvRueCtbgGpZdyvwk6TXTZXCkvTn5oHAPfNiIxOvI2OrKA0K87GyEg73pepmIxdlr26rHCpArRkv//5og/gXY1qbQPX4g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=OQ/Hvd7l; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-2183afd4103so305909fac.1
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 01:40:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708594842; x=1709199642; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Mzp7gOUhADSPQHe9BbGbbZnz24qrFAsUkCIt0RA8CU=;
        b=OQ/Hvd7ljcbfo4JzytYMqCSjMifsUiCanXJBxAx3RUvHCW6m9Cb21beTQmWbiRQCnw
         PlbiMM3YsHW3d45h/huZ756KuTiZwtH3YMpMDINdqoIXnb+BPeXALCIUuZr75g/4fLT6
         bDlj4J1KDL1HFN5mgrYBJ7xXT9abGjj/yZgDcZIw7eSjtGi21TsYwxKTziLWpuru/FMI
         aXf5OQBoJTixritfqIVrQlzIaciWwj/MU5iLtokgtWzE0aoUeAOH1qR6pkzDZV232Fan
         ln8NzU7IGl5rUnLx6EeIUPm5+kE4RQn2xKZRQe/EkjeEEl/StW8TzExBsEVrY9wv722H
         8JOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708594842; x=1709199642;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Mzp7gOUhADSPQHe9BbGbbZnz24qrFAsUkCIt0RA8CU=;
        b=KZzyISygTI3e5ebgmVHCvIuOthq58/bt3U+m73swzr0ZHQDdEsVc1L8zBjlsmeqR8p
         q26MMAyzfsZrDg/bThBs0zXvmbnyinMMyJz8Xgzzb7+LEYoyfgr7+Gv24SD0dc6Irlg9
         cf2jyTOsTa0J1JPdNgmwe924CuCQsjjfEL82+gDbGRVFamu51eN86nCnSF6qLqo1kJfq
         9eF/bNQJ6AyKqiHTYX+sXHZA/6KxzIrl6qNSOZhWXmli7mezoJRp6+ygWtGqZ0f7oVA+
         PQWoy4NT6G1aApIW7l8ju0pHX3nMyGZv6+tchZgSQs2w06/w/GGigKPhCT7/O83qCvm2
         DZzw==
X-Forwarded-Encrypted: i=1; AJvYcCX7twV9FUajeqy6Ik4k8H7cugTeaSA0SZTJ8zwDnnL3Ku00Qtde2mtrYdQ49SRRau+qMBGGtjT8epm+lG1VhcIHgBNZZqeievHfVg==
X-Gm-Message-State: AOJu0Yyh1GipjODHaIXBDI5gQ+BqQMaMTKaZVp3laqosRWr3sP5RptVF
	i59nC6BXpCVyDoxJlUEG8QBdvUeiy/fTdK8tAp8qZ+BBqb5PIvZQ0Z/2xDv0cok=
X-Google-Smtp-Source: AGHT+IFzj7gpBHsAbfHA1HB2Ahj3EaOotj58ypEPbvRRGrv+4AcOMimIZzwgpDeKvAl20quCShvtNQ==
X-Received: by 2002:a05:6871:4e43:b0:21e:9dbd:ce3b with SMTP id uj3-20020a0568714e4300b0021e9dbdce3bmr938781oab.6.1708594842413;
        Thu, 22 Feb 2024 01:40:42 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id n15-20020a05680803af00b003c17c2b8d09sm130699oie.31.2024.02.22.01.40.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 01:40:42 -0800 (PST)
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
Subject: [PATCH v14 03/18] irqchip/sifive-plic: Use devm_xyz() for managed allocation
Date: Thu, 22 Feb 2024 15:09:51 +0530
Message-Id: <20240222094006.1030709-4-apatel@ventanamicro.com>
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

Use devm_xyz() for allocations and mappings managed by the
Linux device driver framework.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/irqchip/irq-sifive-plic.c | 49 ++++++++++---------------------
 1 file changed, 16 insertions(+), 33 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index 3d7a61c35572..558ae63795d9 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -435,39 +435,30 @@ static int plic_probe(struct platform_device *pdev)
 			plic_quirks = (unsigned long)id->data;
 	}
 
-	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;
 
 	priv->dev = dev;
 	priv->plic_quirks = plic_quirks;
 
-	priv->regs = of_iomap(to_of_node(dev->fwnode), 0);
-	if (WARN_ON(!priv->regs)) {
-		error = -EIO;
-		goto out_free_priv;
-	}
+	priv->regs = devm_platform_ioremap_resource(pdev, 0);
+	if (WARN_ON(!priv->regs))
+		return -EIO;
 
-	error = -EINVAL;
 	of_property_read_u32(to_of_node(dev->fwnode), "riscv,ndev", &nr_irqs);
 	if (WARN_ON(!nr_irqs))
-		goto out_iounmap;
+		return -EINVAL;
 
 	priv->nr_irqs = nr_irqs;
 
-	priv->prio_save = bitmap_alloc(nr_irqs, GFP_KERNEL);
+	priv->prio_save = devm_bitmap_zalloc(dev, nr_irqs, GFP_KERNEL);
 	if (!priv->prio_save)
-		goto out_free_priority_reg;
+		return -ENOMEM;
 
 	nr_contexts = of_irq_count(to_of_node(dev->fwnode));
 	if (WARN_ON(!nr_contexts))
-		goto out_free_priority_reg;
-
-	error = -ENOMEM;
-	priv->irqdomain = irq_domain_add_linear(to_of_node(dev->fwnode), nr_irqs + 1,
-						&plic_irqdomain_ops, priv);
-	if (WARN_ON(!priv->irqdomain))
-		goto out_free_priority_reg;
+		return -EINVAL;
 
 	for (i = 0; i < nr_contexts; i++) {
 		struct of_phandle_args parent;
@@ -538,10 +529,10 @@ static int plic_probe(struct platform_device *pdev)
 			i * CONTEXT_ENABLE_SIZE;
 		handler->priv = priv;
 
-		handler->enable_save =  kcalloc(DIV_ROUND_UP(nr_irqs, 32),
-						sizeof(*handler->enable_save), GFP_KERNEL);
+		handler->enable_save = devm_kcalloc(dev, DIV_ROUND_UP(nr_irqs, 32),
+						    sizeof(*handler->enable_save), GFP_KERNEL);
 		if (!handler->enable_save)
-			goto out_free_enable_reg;
+			return -ENOMEM;
 done:
 		for (hwirq = 1; hwirq <= nr_irqs; hwirq++) {
 			plic_toggle(handler, hwirq, 0);
@@ -551,6 +542,11 @@ static int plic_probe(struct platform_device *pdev)
 		nr_handlers++;
 	}
 
+	priv->irqdomain = irq_domain_add_linear(to_of_node(dev->fwnode), nr_irqs + 1,
+						&plic_irqdomain_ops, priv);
+	if (WARN_ON(!priv->irqdomain))
+		return -ENOMEM;
+
 	/*
 	 * We can have multiple PLIC instances so setup cpuhp state
 	 * and register syscore operations only once after context
@@ -577,19 +573,6 @@ static int plic_probe(struct platform_device *pdev)
 	dev_info(dev, "mapped %d interrupts with %d handlers for %d contexts.\n",
 		 nr_irqs, nr_handlers, nr_contexts);
 	return 0;
-
-out_free_enable_reg:
-	for_each_cpu(cpu, cpu_present_mask) {
-		handler = per_cpu_ptr(&plic_handlers, cpu);
-		kfree(handler->enable_save);
-	}
-out_free_priority_reg:
-	kfree(priv->prio_save);
-out_iounmap:
-	iounmap(priv->regs);
-out_free_priv:
-	kfree(priv);
-	return error;
 }
 
 static struct platform_driver plic_driver = {
-- 
2.34.1


