Return-Path: <devicetree+bounces-45743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 66731866934
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 05:10:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1DAF2282E61
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 04:10:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75A3919BA5;
	Mon, 26 Feb 2024 04:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="WSjrYg7l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB0C41C684
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 04:09:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708920570; cv=none; b=B1KwFs3792S7/Mt0eQMymyTJSLtI4a6oI7hd/QldSgAlGWh8QmwH4WDG/Pi5EBiYnSc54KjkmoQYTa761STb32Rqidm7souVlPBbZO68baJN7nm+C8V2RZbBY0gLWhmmBT3Q2uvY2c57PJE/8vdQwdnlJ0dxhjIksi0hIOEPAcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708920570; c=relaxed/simple;
	bh=1EX8L1zE26OQw962MFbAys4CFWP3ww+6xmUKKdVPt6M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Z/46n23YLrGP9q7UAvIxzDE56JlN9+TzfaAJ3Db6WFHQ6Vrst14laKzP3YelQLnQtOJ9VjI6+1vRgNRcoILgIqubDz7lzkVfNroLB/a0UriKnywBlE9YmH19kLiim39NAsq5cr21buqNZjHNS22glDYskU4ePOSmiUP/2vbk7oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=WSjrYg7l; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1dc13fb0133so18519855ad.3
        for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 20:09:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708920568; x=1709525368; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7jRh4tMvuYcqr95qV4EQU7BolCnIgD6A0sDxFfSdHTU=;
        b=WSjrYg7lkRUQ4rOEfyKCFrQoE6RxLCV0b3V3Enjrr/50FDO4c/e1LtIdnFt6EMxAWI
         fzpfLFAwHxXyCg+TDslTDRE1Co07jDw8QM1Mm30xteY78AprJGEcSktmO5SogIInFveT
         M1kh63mRZqRgOffsZXZa0avQRmJj46eEHWOxpIvW2f0o+8Cb3RvnAK9tuKo23DcbCqyt
         ubeBslhszxtyHux43eKs8HTcpKTPAsWA49L4vlyq2nQfWakLUSDPvsWQ+F/QolKFycrs
         hB1KbNSRS3D4jhhymHaDXqv71OAMhYU5j+fBvAd/+o9GvbX7zBxOFVYPi6GDdmlhyfpl
         gelA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708920568; x=1709525368;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7jRh4tMvuYcqr95qV4EQU7BolCnIgD6A0sDxFfSdHTU=;
        b=fzyrNaOE/7N+uXdaBTTMXcEJi059/y9Gg81QZ1nw/B5BROk5kJycM9hAQCPL2bECE6
         8mGvEsjm/p0OQQtfUVmTdC58CstpyvQuafkwGVVhDKyWNm/yyFWFzKBwsrF+Qn8KPmU1
         /r2KGMuhkBlER+SNkPhRsDtbv/UgRScCJecNfmqFeADl0Y6jLzJQLmhfmRSfcpsKIikd
         G7kESaSO+9HT3Ykap88Iz5WQMvwGXne2iSsjERbFpIxNex/VGAAnjaIWUXORkMegYJKg
         o6QhTc5f5gGyPf9mmF527BVtEU+Dwu1w530YqnTJImvvlcaScPpc6XAb5PXErwsil/H+
         eTzQ==
X-Forwarded-Encrypted: i=1; AJvYcCU9N9hU00pXwqI8kw3jmbSAMBlsgQ2s5J9LFhoBcM/811GOdGBHAWhEWwKDHYDo1yfkxpCzyIioGikee4kr+wV4xjhaA8M3OlSGHQ==
X-Gm-Message-State: AOJu0Yw2Ep0uAYM/4uppQyaXA+Wa5uwzIgNuguVgI6iWcrPWnt/+2rXf
	xvJ6ZJgzUsLC2dgGrhfKCqWJCyFKP6J0n7lCpSoBGTAgI+C9J8J1cgSkkDMHbzc=
X-Google-Smtp-Source: AGHT+IFb5nfTnsngif5R24W+zDTwXCsdIbt9IxWe6Et50phyVLUhDui9STPSBvBSVJnrNYZYK5nNgQ==
X-Received: by 2002:a17:902:e885:b0:1dc:a84c:987c with SMTP id w5-20020a170902e88500b001dca84c987cmr626941plg.10.1708920568219;
        Sun, 25 Feb 2024 20:09:28 -0800 (PST)
Received: from localhost.localdomain ([171.76.86.62])
        by smtp.gmail.com with ESMTPSA id d11-20020a170902654b00b001dc6f7e794dsm3023258pln.16.2024.02.25.20.09.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 20:09:27 -0800 (PST)
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
Subject: [PATCH v15 05/10] irqchip/riscv-imsic: Add device MSI domain support for PCI devices
Date: Mon, 26 Feb 2024 09:37:41 +0530
Message-Id: <20240226040746.1396416-6-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240226040746.1396416-1-apatel@ventanamicro.com>
References: <20240226040746.1396416-1-apatel@ventanamicro.com>
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
index 35291bf90d65..1e6dddfd3046 100644
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
@@ -207,6 +208,28 @@ static const struct irq_domain_ops imsic_base_domain_ops = {
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
@@ -230,6 +253,13 @@ static bool imsic_init_dev_msi_info(struct device *dev,
 
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
@@ -269,11 +299,12 @@ static bool imsic_init_dev_msi_info(struct device *dev,
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


