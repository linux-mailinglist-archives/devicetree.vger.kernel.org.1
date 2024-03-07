Return-Path: <devicetree+bounces-49152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C197D875143
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 15:05:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7799A2882D0
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 14:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B890F12FB3B;
	Thu,  7 Mar 2024 14:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="DNNuBKbm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D7812FB26
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 14:03:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709820225; cv=none; b=LKherqhmSgoCATmU8q2+eNY5TYg7oqVL5WABEED68+gLPnwc8azmHw167Y/Qn8qUX+x0rEVcIeID2QatlppTdun0mZV4ccLdUj4fQSpfY6uswGXe74AlGqjcbBVNSO/0tXDCOCprDzhBFZyWw6j8cTvOZcgnsJFvaOlBDCKI+3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709820225; c=relaxed/simple;
	bh=1EX8L1zE26OQw962MFbAys4CFWP3ww+6xmUKKdVPt6M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oKoBw/6+CKCGgowkvOIjKZLAs5Hxy5++l5sA8WG/mV0bv3VfvS+ZnjBwZvPCPg9wKIgGjjdP5qCbhN8/LtH6EwwCfp+rLGxo1Cj1wttywP5RnZFh5B9wyFgRsfNoQMww8DVNThYR7u2DxvA7oVSicCRUTUvGUqCGOFcc7f8fiu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=DNNuBKbm; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1dd1d9daf02so5912855ad.1
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 06:03:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1709820223; x=1710425023; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7jRh4tMvuYcqr95qV4EQU7BolCnIgD6A0sDxFfSdHTU=;
        b=DNNuBKbmwN1VVcdUTPogTr+dhdA+Ow3h5WIV4WP1kHzxFC2m2aBfMBpSO249uaqIu5
         Y9aGMrK6qLe+ZKGcuWuU0OeBSe2Be7DOzQ8JIp49fCkoKeiucAcz/PN5AwI7vsjOvYOd
         YN+AUgA74CZcgqRAWpdl1dY9Othag/wHa1ev8gCDQUjSNN3797do+QU865+KiScUlWwT
         spSgjycvgsdNn+89z7V9OAYrZ4kQxE334Lz+FAANlHG1P0sBICI3zmZsN/fXRE31XDfC
         U1H4hkiLj4ai1HnezmkpC47Zt+4M6MLkAhi2jqR1wi65hicrQl09Da8nytG4egnwG7UX
         0F5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709820223; x=1710425023;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7jRh4tMvuYcqr95qV4EQU7BolCnIgD6A0sDxFfSdHTU=;
        b=jk49E6BcYAoMeTIrIVXg4Ym6fTTfu8Df5LHL3PMg86rbPTXuenVLWbv0GOJ+Qg20L7
         bBWND3W8NuHTxL/ZOYuFJFamhvKFIlbqhfWLuY1WckU4ofpogVtKrLxzWliwLWogVAje
         DRQ+LOvc6SkH3Jh1dBTNXPHJ5yOrsAX3K2EnPl5/2wFAtFaRx3ZaMTVUMsT+G+7dL83C
         C1TzuMUUsQiRugLMmBpFcMMZf2aGNTK/9rsMLMbxP0oNXhul5Kzi6LSTFiNIGE8N41dF
         GWdQDtpQemwYgFgkXXZ9scHAJerkPtC8AgGaxKmXP5gBQ7/h/0W5u8X4SV/WjOKhU0IX
         gRGg==
X-Forwarded-Encrypted: i=1; AJvYcCVN4dzPNZCVXvExxuKNZw9+0onwMnzSkSfrhkohVTcva/qiiDxN7v7DzwMJQGDSb8Rt2nPFdHw10vZtLLT+/IAodLy/jfsba1tFTg==
X-Gm-Message-State: AOJu0YzWErkT7Z7KmhThe6mTAvriesfbudzdfVgJZ1IFQ6y+mqv33n91
	M0uMSHVEUqBL9Z4QyGuYQvXcH3ZoRb/cnprukzTRX9anhjr/s77wmBOY0sRGw0s=
X-Google-Smtp-Source: AGHT+IHGmxFeZ72Q590ilBqOWS3an5Vyy6hLjQbRDQ0n1Sbt0i2JyCIRAP1shhfNGwpiSrO/aex5oA==
X-Received: by 2002:a17:903:2305:b0:1dc:6fec:15d8 with SMTP id d5-20020a170903230500b001dc6fec15d8mr9709155plh.47.1709820223228;
        Thu, 07 Mar 2024 06:03:43 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.84.79])
        by smtp.gmail.com with ESMTPSA id w1-20020a1709026f0100b001dd6174c651sm386228plk.149.2024.03.07.06.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Mar 2024 06:03:42 -0800 (PST)
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
Subject: [PATCH v16 4/9] irqchip/riscv-imsic: Add device MSI domain support for PCI devices
Date: Thu,  7 Mar 2024 19:33:02 +0530
Message-Id: <20240307140307.646078-5-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240307140307.646078-1-apatel@ventanamicro.com>
References: <20240307140307.646078-1-apatel@ventanamicro.com>
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


