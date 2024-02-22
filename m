Return-Path: <devicetree+bounces-44695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D757085F4B5
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 10:42:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 859DE2876CA
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:42:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7334383AF;
	Thu, 22 Feb 2024 09:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="cgft7wIj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FA23F9C8
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 09:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708594867; cv=none; b=eLJc5KJtBWDSX/SgAJrFCScXyqm38NoyulkqZDM1IWZxyf65Lqr18WrdXc31XcWM2GsAGpgs5EUCkO77jO52pCS1PR8YkZFLgTg2EleWsd5kJ+WvuVmylLfCw9nb6wWBD2Gh7C70oKnYgVBivslf6HY118ouZLrA0m4MgxIU+tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708594867; c=relaxed/simple;
	bh=26jNMYp4k2F0BbsKmf5GqSIBzRR7vUDBRp6fHWtZoro=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TuwensJVOxCjciLIhHl/20dC5FEfamsO+J7p6rKwZ8ifvmCLvf+Da3UUJY7pHJan2vnhdBA6Rhn/PNC1tM6PXocF+Roran5mieWiH5MCa55Vu6r3elrukRTFF/+paYwSvQibma0gjZvQ+mfeQjCm1oxFA4TJ0V9Fpn7++4CnU1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=cgft7wIj; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3c02adddb8eso1232312b6e.0
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 01:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708594865; x=1709199665; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=67myGQfWdG/NTMsWtbLvxenqOsS6MBirvNDOIPSERro=;
        b=cgft7wIj1FXUmOfPDLUkYSg3fYZIGA2Vt89OAnZeNie+KwRKZJtaB/1y3ezmTDmkOp
         ib9GEo1O26C8eMj8q0oGvFDEebpMCycKHXTz4Q1173uuA3mV78wDJLRAUl6VQ8dY3Bwe
         nO4gF1h9GfS0pqfFvn2R0d7JwM0y1f/kT57XJ7EV+CzZKPu4hhJomnXOUu2COZ0N2UPG
         KNF63V4LVp+qcKG2uPub3p8pN1p5Ar4y4AXJoN5scH+MvgHWLrmwPd+Dm3L4bhOhzT4B
         p4I42HEiHHMqyf1U+GRTrYIE3hDyzn+D6bRt7r3C1sizBbTymb9bbwEBnpvNCI52zDca
         mP2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708594865; x=1709199665;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=67myGQfWdG/NTMsWtbLvxenqOsS6MBirvNDOIPSERro=;
        b=tWjg6rwuBXr1tM6JL2IlE7L+78D2Op730I+rlwqtvjFJDl1GN46E6ILZq3ACjvHhU5
         1Sw/MD8MVTTXH5hs1vdepjsPXDRPXR2hp4FN/JklwaKfF1GX34O28y9vnozCsU5CdgAk
         eh3oNSjHCTJ2vvHi6VKHH2ynp3olOm5H2bDsAcSXtfHrPHYdfwVdeXlcompIoJjgurJr
         jRzxsT/ryblT0js28CLZTYhSPi8VkDLcWVReUowHSa/Dn04IeECjqkW40ghEkVsF9a3l
         5C0KT9tnxjiiHk7gd7Dq8zEsDZYSBrPpLE+yOnkt86hwiKFswCDvWUlqgDwXwlEOc4rh
         gpCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwdUjKldU63iIVJTpcakQJGgZcAbBc7rnI8u5z38X8fJHeSLcU9ozf5sFQyeRYmWMbI5EL4PIwYmVSnQR4c7gy+LmP18zenThvpw==
X-Gm-Message-State: AOJu0YwymcBdvHoGTdh2BMQp8og9r/JlkmsnHozn3QPOO3DMHzpZqqAk
	qRqdpjHygQtTeAuFNjhwSOSWFHlF9VycW+5SqKRQKH7goZg0nh+4OKyQ4lscTz0=
X-Google-Smtp-Source: AGHT+IEWljpjWcYNh6FWyteZzNizntERHCcdcGk1xA11bQ1Y2eMKvSMWtR4dupwFnRtiGSJXRVaPQw==
X-Received: by 2002:a05:6808:200a:b0:3c1:54c9:be7b with SMTP id q10-20020a056808200a00b003c154c9be7bmr14031502oiw.12.1708594865151;
        Thu, 22 Feb 2024 01:41:05 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id n15-20020a05680803af00b003c17c2b8d09sm130699oie.31.2024.02.22.01.40.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 01:41:04 -0800 (PST)
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
Subject: [PATCH v14 06/18] irqchip/sifive-plic: Parse number of irqs and contexts early in plic_probe
Date: Thu, 22 Feb 2024 15:09:54 +0530
Message-Id: <20240222094006.1030709-7-apatel@ventanamicro.com>
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

The SiFive PLIC driver needs to know the number of irqs and contexts
to complete initialization. Parse these details early in plic_probe()
to avoid unnecessary memory allocations and register mappings if these
details are not available.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/irqchip/irq-sifive-plic.c | 43 ++++++++++++++++++++++++-------
 1 file changed, 33 insertions(+), 10 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index f0df5d0cb76e..e6d23fde51ed 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -416,6 +416,34 @@ static const struct of_device_id plic_match[] = {
 	{}
 };
 
+static int plic_parse_nr_irqs_and_contexts(struct platform_device *pdev,
+					   u32 *nr_irqs, u32 *nr_contexts)
+{
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
+	rc = of_property_read_u32(to_of_node(dev->fwnode), "riscv,ndev", nr_irqs);
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
 static int plic_parse_context_parent(struct platform_device *pdev, u32 context,
 				     u32 *parent_hwirq, int *parent_cpu)
 {
@@ -464,31 +492,26 @@ static int plic_probe(struct platform_device *pdev)
 			plic_quirks = (unsigned long)id->data;
 	}
 
+	error = plic_parse_nr_irqs_and_contexts(pdev, &nr_irqs, &nr_contexts);
+	if (error)
+		return error;
+
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;
 
 	priv->dev = dev;
 	priv->plic_quirks = plic_quirks;
+	priv->nr_irqs = nr_irqs;
 
 	priv->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (WARN_ON(!priv->regs))
 		return -EIO;
 
-	of_property_read_u32(to_of_node(dev->fwnode), "riscv,ndev", &nr_irqs);
-	if (WARN_ON(!nr_irqs))
-		return -EINVAL;
-
-	priv->nr_irqs = nr_irqs;
-
 	priv->prio_save = devm_bitmap_zalloc(dev, nr_irqs, GFP_KERNEL);
 	if (!priv->prio_save)
 		return -ENOMEM;
 
-	nr_contexts = of_irq_count(to_of_node(dev->fwnode));
-	if (WARN_ON(!nr_contexts))
-		return -EINVAL;
-
 	for (i = 0; i < nr_contexts; i++) {
 		error = plic_parse_context_parent(pdev, i, &parent_hwirq, &cpu);
 		if (error) {
-- 
2.34.1


