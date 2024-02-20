Return-Path: <devicetree+bounces-43692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DD785B2AB
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 07:09:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C663284D52
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 06:09:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34D5D5820E;
	Tue, 20 Feb 2024 06:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Zpmloi5L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88C0259B77
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 06:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708409316; cv=none; b=cHiC234g615BRaJiBb8ZVMgSwmxEGmmdycAjYTjXANfeqjR3/g1emWiSny256d5PJ/1eCTUQcl3DhWaal/5Ia8rkOI/ktqt4OAzaMWYQ1pfWKThujAzjIf1uw1H7be7ANAOa6vPDuGKqESIchqu/Q5uaKk9u/gjhkViInQxcoPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708409316; c=relaxed/simple;
	bh=VAWtf9g4DapkxTzN2mFW9HLNmtCXqz5CP7PvFfQHAe0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eiLptXx1d7kwBa9C9i0w50CBbGFXrIvWocLUKmT7hA78VlVbYjXGMDy6nT1zQNONLSSrjJIGx9aDHZA9OYoZiITsAOK5axQcktQXIhdDfbagG0vX5X/Huv0DSPX6vD0SvJ7YFk3NvTjuYnZ2b09mEneJuIyJi2TD1YUZsjTKHS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Zpmloi5L; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1d7431e702dso49502565ad.1
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 22:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708409314; x=1709014114; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=voD/meL0W7zIWdBDdYwK2ixfoNvQujQS24AsRgXA4M8=;
        b=Zpmloi5Ly2pfTpoFW80htMNE8jziPLBxboAjSuQmoOQ6wyFY0uS49vXnEeTATvX6Cj
         WEfmnyepUDXWQbndXg8JITbv8p+uJzwvLUYESV9IKprVsPnnm6deBbhEP30v0bPsXyX4
         48AYs/XePrKEoZjw5pXjpLfCJBJG5qqY6t//4V1l3KZyqiBYLMz5RKEQNaQI1qv3jgXc
         3VETPI5Kta8yNROlAwyBKK+i6v8wUzGpAa8OkQgsCI+MsUQcnv8iVg3aI4OWUxXwN62e
         cX10g1A/1fVY/5Zv+yPd3BzoXNPIUOk12ksaSv8T7qOvfqoL8R4MrtjtrQJyW6Fjcu0n
         H43Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708409314; x=1709014114;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=voD/meL0W7zIWdBDdYwK2ixfoNvQujQS24AsRgXA4M8=;
        b=lfr9BQX8E3N2Ojs146RfHvrbVzlr+kNiAuh8/ypZwwJfowHfATfUIV5Lx3z+To8oR4
         tH8HHq3DQZ/RptOuqFIYxMdNIp2r8pqkTUbNJRIKRRIL+ksNIOf2o98Ogs27OBiKlICM
         nVaAXH5amsH6IwWKmydkfLew2Z8fP6VK5lP0GIgykH022PhMoBOVl7q+5J0acxJnMisF
         ROXbYdI0pqEbGQkQmFZow85ooMHrHBV7eKBDw7Dfvtl3N+kSjsXU71InC+tVZg4hO7lg
         eJ3cV4bHMDjB+/qdqI1WBUjSPm8/vDnq8Loxtoq5SoZmYLwVCMFWOXYq9CsT1cGBADoe
         54lQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwxHSLybROLxfk4gS6KodjU9lK51naybS0J88jRVsdyv2gOWNrUhw+9imE558Q3YZ8YELgNoXSy4NaOtSIGtTrMs9YblhDdgCU2g==
X-Gm-Message-State: AOJu0YzUW497Ly0MVQgdNHvaDURUbCWMBpJrEycTuYFpUCe3w6snDkQ8
	MJhYnJ/JXGbQQU289T+xO4sf9H/Ds00nQryPVZ46D/Uo80N8/58jGgEiWRXu2Sk=
X-Google-Smtp-Source: AGHT+IFHK5RUyvMii5QlAptAoirJ/ZuRW0A/bZtMk+rPS/m+OG49B3S5mOnnqlLYEWjyb8TnkNBU9Q==
X-Received: by 2002:a17:903:182:b0:1dc:25c:f67d with SMTP id z2-20020a170903018200b001dc025cf67dmr2750921plg.54.1708409313859;
        Mon, 19 Feb 2024 22:08:33 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.80.86])
        by smtp.gmail.com with ESMTPSA id j6-20020a17090276c600b001db4c89aea5sm5368114plt.158.2024.02.19.22.08.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Feb 2024 22:08:33 -0800 (PST)
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
Subject: [PATCH v13 08/13] irqchip/riscv-imsic: Add device MSI domain support for PCI devices
Date: Tue, 20 Feb 2024 11:37:13 +0530
Message-Id: <20240220060718.823229-9-apatel@ventanamicro.com>
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
index 7ee44c493dbc..37f47375d5b7 100644
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
@@ -209,6 +210,28 @@ static const struct irq_domain_ops imsic_base_domain_ops = {
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
@@ -218,6 +241,7 @@ static bool imsic_init_dev_msi_info(struct device *dev,
 
 	/* MSI parent domain specific settings */
 	switch (real_parent->bus_token) {
+	case DOMAIN_BUS_PCI_MSI:
 	case DOMAIN_BUS_NEXUS:
 		if (WARN_ON_ONCE(domain != real_parent))
 			return false;
@@ -232,6 +256,13 @@ static bool imsic_init_dev_msi_info(struct device *dev,
 
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
@@ -271,11 +302,12 @@ static bool imsic_init_dev_msi_info(struct device *dev,
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


