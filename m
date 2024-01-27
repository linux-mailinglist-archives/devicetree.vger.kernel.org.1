Return-Path: <devicetree+bounces-35833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F181F83EE7C
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 17:24:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4F98EB23BE1
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 16:24:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 549222C1A2;
	Sat, 27 Jan 2024 16:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="ipfksZdH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E388E5FEFC
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 16:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706372414; cv=none; b=KQSXwLtYX0MGcF+pCP2mCk4DdQtEfqDLcJdm7jZBFZMVM/YWetlsf54BXeVLZiVkDUn/DLX+UrYSerdZqEcRw2tBHntLZCTKMVlPvqv4uBioXFCXX9kKBE1uM4QOERyLmVAtvBQJr5cOsD+oJDvFHesjWJ6qJVvfnNjdugjt9BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706372414; c=relaxed/simple;
	bh=UqlJj0IR1+RS9SlqlFzG9aXPcDUbmBNLb5E1jNbJsB0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OrDHAZNAMGG9PnjovMnywxavuXVVl76PNqfCaLNYaVAAQAJgd6Jb4LcByC3D3IlD6U34Bfmjl4hOJ2cAmh3veNG4He5/DFy+AVBDlv/AR/TptKYiY0XSsE5Wt0C2kWvXNugAIXcGyWsr3ztt70Fjy2mvBo0vPbzQkSyNO/tvg5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=ipfksZdH; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2906bd9f2ebso906290a91.0
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 08:20:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1706372412; x=1706977212; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VWyTlHThOIP2PmYrOkTqrnYOBnpBzPmOIxliRiyO7gY=;
        b=ipfksZdHfi8smu7kIuPtJaz/f+U9EGLX07VMiRJ6l47ION5B60VAYEZh2gLTB+K5dq
         p9+pVZy+802NoREFOV+BHZEsiaWq4EVvaAzIgNtzYVrzGqsNjNBXmCRGkGw7HN1d4Ja0
         D1ahoHhcxZp9B+B7a1QglcspUgQJkGI95cNh/0GwvAcHWszcCfLu8VSjDogmc5mGdNCv
         0c1zTzSUPyemwdalYb6yd1i3oAgpk7HcAnpQTk2rCL3THawz3PhPvynjzeiRa9uOiLMP
         xn8vtBIOfUGB6epWrEV+QqKtis9bNasF9iufVQYhgfmkBZ7s7cfWe4G581lJEfI1GMyL
         nGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706372412; x=1706977212;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VWyTlHThOIP2PmYrOkTqrnYOBnpBzPmOIxliRiyO7gY=;
        b=rJIDhbg89HcOz/af359DH43B9wGDBsWHJ5RErxjM2uKAsdK/fbzKOc+ngsmwfG30YW
         7Uh99+b0Dp6woiXCkkNEUZVygZryZhFlqGqDD1MvC3sLPEyQ9SlLsPQ8MNihgdOkTKw/
         5NBtGKNFuxkXTwTyQpmIioF126Tr6MtwbvAv07Mz5WawvmhAYr5GXax9FgFQTV+ZM6m/
         WiovsOkj5fb3ipqso+1axvOy7ecuoy7V1af7pliJCWxoQzL4v67hdfqpZG6jKrgWcyc2
         EWdMW8XEpsXTk1LjaAeGI0BAmIF6eke33wfg/KwsLLh7BkfdWVT5tcDIy5wYM29UR/9Z
         PPgg==
X-Gm-Message-State: AOJu0YwRIeD5Taf1D/KZ3+HpR+nJJXUo26ZL6N0OmaxdLdrQc2XPo+p3
	xSjbFgC5i+EHNFn7qzn6Rb0t9AqsLDg2/ZLeUqKo3QikG8C8zLV7oK3VG8kLqPs=
X-Google-Smtp-Source: AGHT+IFrKJaMrUUnXUlX9Xg/yzaWu/kqwtNsAtmGyQxWv5XM9lg2H6U7/sf2rrzmbZzLdQh1c/SffA==
X-Received: by 2002:a17:90a:d48a:b0:28e:8e78:8ba6 with SMTP id s10-20020a17090ad48a00b0028e8e788ba6mr1902639pju.43.1706372412102;
        Sat, 27 Jan 2024 08:20:12 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.86.17])
        by smtp.gmail.com with ESMTPSA id d11-20020a17090ac24b00b00290f8c708d0sm5091620pjx.57.2024.01.27.08.20.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 08:20:11 -0800 (PST)
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
Subject: [PATCH v12 20/25] irqchip/riscv-imsic: Add device MSI domain support for PCI devices
Date: Sat, 27 Jan 2024 21:47:48 +0530
Message-Id: <20240127161753.114685-21-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240127161753.114685-1-apatel@ventanamicro.com>
References: <20240127161753.114685-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Linux PCI framework supports per-device MSI domains for PCI devices
so let us extend the IMSIC driver to allow per-device MSI domains for
PCI devices.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/irqchip/Kconfig                    |  7 +++++
 drivers/irqchip/irq-riscv-imsic-platform.c | 36 ++++++++++++++++++++--
 2 files changed, 41 insertions(+), 2 deletions(-)

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
index 65791a6b0727..d78c93e2cf2b 100644
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
@@ -233,6 +234,28 @@ static const struct irq_domain_ops imsic_base_domain_ops = {
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
+	pci_msi_unmask_irq(d);
+	irq_chip_unmask_parent(d);
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
@@ -242,6 +265,7 @@ static bool imsic_init_dev_msi_info(struct device *dev,
 
 	/* MSI parent domain specific settings */
 	switch (real_parent->bus_token) {
+	case DOMAIN_BUS_PCI_MSI:
 	case DOMAIN_BUS_NEXUS:
 		if (WARN_ON_ONCE(domain != real_parent))
 			return false;
@@ -256,6 +280,13 @@ static bool imsic_init_dev_msi_info(struct device *dev,
 
 	/* Is the target supported? */
 	switch (info->bus_token) {
+#ifdef CONFIG_RISCV_IMSIC_PCI
+	case DOMAIN_BUS_PCI_DEVICE_MSI:
+	case DOMAIN_BUS_PCI_DEVICE_MSIX:
+		info->chip->irq_mask = imsic_pci_mask_irq;
+		info->chip->irq_unmask = imsic_pci_unmask_irq;
+		break;
+#endif
 	case DOMAIN_BUS_DEVICE_IMS:
 		/*
 		 * Per device IMS should never have any MSI feature bits
@@ -295,11 +326,12 @@ static bool imsic_init_dev_msi_info(struct device *dev,
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


