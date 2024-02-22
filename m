Return-Path: <devicetree+bounces-44702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA84C85F4C4
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 10:43:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 173631C22BAE
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:43:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 963863838B;
	Thu, 22 Feb 2024 09:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="NFcAwanV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E50A41236
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 09:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708594923; cv=none; b=lHRAXeDkqERybf+vjIcv2WCk09QxnXEMSQIAtAtLxRcl8OJ+J9QKbD9yQaW7JaZQO7zp29CMd/OjHOLsubhclx7fqQHNjnMPiWkY5LINHcccHMNi61hey1+Lqc2CaTyupVb/XQr9ZA//9xhWjrd+oE8AZADAJb8u2fTpt+vHKo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708594923; c=relaxed/simple;
	bh=Jq677SKEM38g+jVBPgtBStA3mG/f0yhqJeCpfC43444=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nevaDFtacOwI1A1HbSHFTAMx1xXj0GakB/0ZxWOXblZ0Tq8ryAK9bOv/RAVEXNW49PZCRXRncUIaD8ObPr4hgi5ylArD0ziRbO7CjgYUIVtXz1QAnWE2kWiEJhFhW1nVCKiQiQl1nYow/bx4sDm5+b1r+YnCYD4Sm0pL7zQMkv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=NFcAwanV; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3c15bfa17b2so825021b6e.2
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 01:42:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708594921; x=1709199721; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jp730QJfPl3UdF1ypk+MZODRkE+rBOU76pBYGEsA07M=;
        b=NFcAwanVdKMVs3nU5BCxVeQJXw6m+Vxul+lah+Ogbie/SNPcCxrlRr5n2idMh/ET6z
         cSg4MlR3jkAmwcuhZKQXgT14PhPgW/brCSFJpVaUBZJjN+szIDXJLxtb6Su8QTPFJaq6
         g0nfMU+1YSYooc7Q9Jy0OT5fj7AnGyjCb0HrCG5mf2ZQpS1UqOSnAr6733PFQwr1FaY2
         56cp5LyTqzfAw7ei5vcdqe0p5UJaEmvlkV3xsNB96XDWHPC5EeGrzwkg6FEwM/Fpgs4u
         jyuCC01XWd6np050FM5pYNDj2hBUqnk2bgJH0+KZinKzD7ppWzDiL4SGtYZHj1xMabDd
         6sPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708594921; x=1709199721;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jp730QJfPl3UdF1ypk+MZODRkE+rBOU76pBYGEsA07M=;
        b=JD1VlBlyxX4O9KoIQyjD9duXWx/EorbxUaX/LLGPEer01QccPL3R3//pjDLUwDo/QA
         d4+FRDHzDuuL5y8Z/OWcnW2L5bJFnAbI5zgUm8MK+GUIaAx4g56QWZdRYCCf7DCJBPKh
         Pv6dxsnOPepi8kuSKGkUOpMy9uDxASfWIpZzHgBjzIQ6LYwkYALk1eanZZ8QQwVY4c92
         za6ZKoPeo02J9JfEbDU7/V1wgCeD77eawVOItHAWzuV6x7ZkGfd+lrRQYqodhaaZKjuE
         4qfy4pZLpwgln6mypMu3evAGBeLGLilWZ3zKEKgVTZhvBnpq4FLFoj5uY9Vv1olndTzL
         0IZQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8g6Cvw44ZJZqkkTZ6tbkrmOxxHR46LIOmfi+GZONgSGEJI2aMeQlQmxdM6ZmjUj75IJk+UEpA6m4JAzAWinw/W5jDTa5WZsIxpA==
X-Gm-Message-State: AOJu0YwtHoYzYZa/UcSVOWSQPn2IAVg8M7kIn950n3MO1d3GhdhMzeML
	Mjol6UfuCuBNlFXbUYC0zaqAPWLAtGvcKQdjqvx0qoS30iGQ61fUZ1Zg8zGZfq4=
X-Google-Smtp-Source: AGHT+IFami/eHbrAuwdif34EK9jrr/gIrhjNiuyviyiZpgrNHVm6xVJTUyG+0a808idQ56fvM4bgXA==
X-Received: by 2002:a05:6808:308a:b0:3c1:782e:b8e1 with SMTP id bl10-20020a056808308a00b003c1782eb8e1mr1966233oib.39.1708594920963;
        Thu, 22 Feb 2024 01:42:00 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id n15-20020a05680803af00b003c17c2b8d09sm130699oie.31.2024.02.22.01.41.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 01:42:00 -0800 (PST)
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
Subject: [PATCH v14 13/18] irqchip/riscv-imsic: Add device MSI domain support for PCI devices
Date: Thu, 22 Feb 2024 15:10:01 +0530
Message-Id: <20240222094006.1030709-14-apatel@ventanamicro.com>
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

The Linux PCI framework supports per-device MSI domains for PCI devices
so extend the IMSIC driver to allow PCI per-device MSI domains.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/irqchip/Kconfig                    |  7 +++++
 drivers/irqchip/irq-riscv-imsic-platform.c | 35 ++++++++++++++++++++--
 2 files changed, 40 insertions(+), 2 deletions(-)

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 85f86e31c996..2fc0cb32341a 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -553,6 +553,13 @@ config RISCV_IMSIC
 	select GENERIC_IRQ_MATRIX_ALLOCATOR
 	select GENERIC_MSI_IRQ
 
+config RISCV_IMSIC_PCI
+	bool
+	depends on RISCV_IMSIC
+	depends on PCI
+	depends on PCI_MSI
+	default RISCV_IMSIC
+
 config EXYNOS_IRQ_COMBINER
 	bool "Samsung Exynos IRQ combiner support" if COMPILE_TEST
 	depends on (ARCH_EXYNOS && ARM) || COMPILE_TEST
diff --git a/drivers/irqchip/irq-riscv-imsic-platform.c b/drivers/irqchip/irq-riscv-imsic-platform.c
index e2344fc08dca..90ddcdd0bba5 100644
--- a/drivers/irqchip/irq-riscv-imsic-platform.c
+++ b/drivers/irqchip/irq-riscv-imsic-platform.c
@@ -14,6 +14,7 @@
 #include <linux/irqdomain.h>
 #include <linux/module.h>
 #include <linux/msi.h>
+#include <linux/pci.h>
 #include <linux/platform_device.h>
 #include <linux/spinlock.h>
 #include <linux/smp.h>
@@ -208,6 +209,28 @@ static const struct irq_domain_ops imsic_base_domain_ops = {
 #endif
 };
 
+#ifdef CONFIG_RISCV_IMSIC_PCI
+
+static void imsic_pci_mask_irq(struct irq_data *d)
+{
+	pci_msi_mask_irq(d);
+	irq_chip_mask_parent(d);
+}
+
+static void imsic_pci_unmask_irq(struct irq_data *d)
+{
+	irq_chip_unmask_parent(d);
+	pci_msi_unmask_irq(d);
+}
+
+#define MATCH_PCI_MSI		BIT(DOMAIN_BUS_PCI_MSI)
+
+#else
+
+#define MATCH_PCI_MSI		0
+
+#endif
+
 static bool imsic_init_dev_msi_info(struct device *dev,
 				    struct irq_domain *domain,
 				    struct irq_domain *real_parent,
@@ -231,6 +254,13 @@ static bool imsic_init_dev_msi_info(struct device *dev,
 
 	/* Is the target supported? */
 	switch (info->bus_token) {
+#ifdef CONFIG_RISCV_IMSIC_PCI
+	case DOMAIN_BUS_PCI_DEVICE_MSI:
+	case DOMAIN_BUS_PCI_DEVICE_MSIX:
+		info->chip->irq_mask = imsic_pci_mask_irq;
+		info->chip->irq_unmask = imsic_pci_unmask_irq;
+		break;
+#endif
 	case DOMAIN_BUS_DEVICE_MSI:
 		/*
 		 * Per-device MSI should never have any MSI feature bits
@@ -270,11 +300,12 @@ static bool imsic_init_dev_msi_info(struct device *dev,
 #define MATCH_PLATFORM_MSI		BIT(DOMAIN_BUS_PLATFORM_MSI)
 
 static const struct msi_parent_ops imsic_msi_parent_ops = {
-	.supported_flags	= MSI_GENERIC_FLAGS_MASK,
+	.supported_flags	= MSI_GENERIC_FLAGS_MASK |
+				  MSI_FLAG_PCI_MSIX,
 	.required_flags		= MSI_FLAG_USE_DEF_DOM_OPS |
 				  MSI_FLAG_USE_DEF_CHIP_OPS,
 	.bus_select_token	= DOMAIN_BUS_NEXUS,
-	.bus_select_mask	= MATCH_PLATFORM_MSI,
+	.bus_select_mask	= MATCH_PCI_MSI | MATCH_PLATFORM_MSI,
 	.init_dev_msi_info	= imsic_init_dev_msi_info,
 };
 
-- 
2.34.1


