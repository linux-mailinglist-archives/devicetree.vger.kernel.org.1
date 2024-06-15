Return-Path: <devicetree+bounces-75988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2E0909623
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 07:28:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68B4F28343A
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 05:28:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6E8C17C60;
	Sat, 15 Jun 2024 05:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="czYgHKte"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7B3B1798C
	for <devicetree@vger.kernel.org>; Sat, 15 Jun 2024 05:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718429276; cv=none; b=C3NomACM7a9Mg8MfHYfWnQTQNAjDmS4ydxP7JyPGqJV/K19D3ZQz7vs2UWtiB6nHHBqDdBxyBCy9hdbdaGfm3lfrMV66msPq6BY8duPOriCZ+m+y9mRLihtH3fsbyq4dkS5IOGM9K6G8npKIgqKie1VZtVys7ZRrruvP56zRQc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718429276; c=relaxed/simple;
	bh=DcOSw2ew0c3URNrUO3l1Ipvi4bfVqwYuFrqb7c+A5RM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SQn/pwzAss0k1Z0K5gc6d0vAf6JtYuIaF71K0nzVZBag5bWX57zdnDZucG3PDEeOnG0U0N2rCWC98+XrOdF8sffN4GxjPNk+JLcS6+YfCNTdS6hfDfjZwzgEMVYqkQRcfubNTwWpPPadMY6ZkxpVZubyKlb26mAEx3henbY+uoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=czYgHKte; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-25545664f37so1400251fac.1
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 22:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718429274; x=1719034074; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bZ/AEFSFwdT9H/GgMZYFdqgb9wNJbl1T6o8nBqHR0q8=;
        b=czYgHKtelKDFTAP7IoHNZOsFUhpr1/BRhrpU6WYyUMJBgdF08+ifWwp4YxeK5PyZ38
         ngG8UaYJSRXz4imlAvPEjgHIgljmhv4eEfSTGycofzdPSO0HryVF+r5z6gY0GRzcdqUz
         B0i4C5FIVSd+QcbxWSlOWNkVRcsXmgMV913alyvIjoSAYqmVIa/Hm9qxbkGVDbMu+Uft
         mlyocoDmH/CvOOxObTPXEj8Ev7vYZjBM1ZLYmFSbIRPmlcvHWepE3FJKgfRt7UDbIIYA
         BZm8aPqfqdbumqhxzuAR4EDMMqoJyFhL6Eih9ObNUTg/+7Oj8nuDaBuyhumdv3FHzDud
         Y/AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718429274; x=1719034074;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bZ/AEFSFwdT9H/GgMZYFdqgb9wNJbl1T6o8nBqHR0q8=;
        b=RY/5JRZNhikOqlWXkzl55kDfs6TuUUSwh7Ytt6hBvyvUdWxYTngJBDCGJ6b2uyDbpe
         uNALH+SepkUEt5VtG2tk5BOy0mQIaxdNOh1sob+i4rvD0kaoxFbzLq1omqac4XdphKko
         oZ86ZVYe4RVXVRi31EANytG8MGCEz3P5028oeKpWjHMIDhdxvTrf+t1tqvfOjpwwGvp+
         0NDPzrm6KOLYu7pPTaVGVfk+BA2v+4Jj8509aERYcGXX2W8ZH+ebBd6ajlGpElWVqbiN
         3JlHNjABxKjFc0gRIoAvr9UDjZfZ/0zBxa/mZM3IBUAdUbba4ehsqLV56xA1VpOQssma
         cHkA==
X-Forwarded-Encrypted: i=1; AJvYcCVQ+13I3F/OWEAeVyKyhbxKA41blseJGZhzFGDIATkbJ3VX16v82kCk6gkYDA56LZsArOe+ffXMwXYvJxf4ZQkleHci2zaoAVWp2Q==
X-Gm-Message-State: AOJu0Ywiq+opuYSDxV/lAof53gVHQxEtkLqSw2kgU/1eCN+pR/5Ee7Dk
	L2HqWl6nx4UcJsiFAF663HHvvBcyYc+Z64/6v9lsKU0M5GtiqDe6baaKts9QSrM=
X-Google-Smtp-Source: AGHT+IEnTFt+sU3zBDueFeeAR+Sqv++eT6ZwMZ4l8v+6Wnel3qsQm7lMef3RAxT7X2I/eqaupa5DQQ==
X-Received: by 2002:a05:6871:828:b0:254:a753:d1c0 with SMTP id 586e51a60fabf-25842b7b406mr5663474fac.48.1718429273890;
        Fri, 14 Jun 2024 22:27:53 -0700 (PDT)
Received: from tjeznach.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-705ccb6b99bsm4081578b3a.143.2024.06.14.22.27.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 22:27:52 -0700 (PDT)
From: Tomasz Jeznach <tjeznach@rivosinc.com>
To: Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Anup Patel <apatel@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Nick Kossifidis <mick@ics.forth.gr>,
	Sebastien Boeuf <seb@rivosinc.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux@rivosinc.com,
	Tomasz Jeznach <tjeznach@rivosinc.com>,
	Lu Baolu <baolu.lu@linux.intel.com>
Subject: [PATCH v8 3/7] iommu/riscv: Add RISC-V IOMMU PCIe device driver
Date: Fri, 14 Jun 2024 22:27:33 -0700
Message-Id: <e2792d6559f9f3e02b2243538647ef60f14176fd.1718388909.git.tjeznach@rivosinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1718388908.git.tjeznach@rivosinc.com>
References: <cover.1718388908.git.tjeznach@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF8
Content-Transfer-Encoding: 8bit

Introduce device driver for PCIe implementation
of RISC-V IOMMU architected hardware.

IOMMU hardware and system support for MSI or MSI-X is
required by this implementation.

Vendor and device identifiers used in this patch
matches QEMU implementation of the RISC-V IOMMU PCIe
device, from Rivos VID (0x1efd) range allocated by the PCI-SIG.

MAINTAINERS | added iommu-pci.c already covered by matching pattern.

Link: https://lore.kernel.org/qemu-devel/20240307160319.675044-1-dbarboza@ventanamicro.com/
Co-developed-by: Nick Kossifidis <mick@ics.forth.gr>
Signed-off-by: Nick Kossifidis <mick@ics.forth.gr>
Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>
Signed-off-by: Tomasz Jeznach <tjeznach@rivosinc.com>
---
 drivers/iommu/riscv/Kconfig     |   5 ++
 drivers/iommu/riscv/Makefile    |   1 +
 drivers/iommu/riscv/iommu-pci.c | 119 ++++++++++++++++++++++++++++++++
 3 files changed, 125 insertions(+)
 create mode 100644 drivers/iommu/riscv/iommu-pci.c

diff --git a/drivers/iommu/riscv/Kconfig b/drivers/iommu/riscv/Kconfig
index 5dcc5c45aa50..c071816f59a6 100644
--- a/drivers/iommu/riscv/Kconfig
+++ b/drivers/iommu/riscv/Kconfig
@@ -13,3 +13,8 @@ config RISCV_IOMMU
 
 	  Say Y here if your SoC includes an IOMMU device implementing
 	  the RISC-V IOMMU architecture.
+
+config RISCV_IOMMU_PCI
+	def_bool y if RISCV_IOMMU && PCI_MSI
+	help
+	  Support for the PCIe implementation of RISC-V IOMMU architecture.
diff --git a/drivers/iommu/riscv/Makefile b/drivers/iommu/riscv/Makefile
index e4c189de58d3..f54c9ed17d41 100644
--- a/drivers/iommu/riscv/Makefile
+++ b/drivers/iommu/riscv/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_RISCV_IOMMU) += iommu.o iommu-platform.o
+obj-$(CONFIG_RISCV_IOMMU_PCI) += iommu-pci.o
diff --git a/drivers/iommu/riscv/iommu-pci.c b/drivers/iommu/riscv/iommu-pci.c
new file mode 100644
index 000000000000..e675acceb290
--- /dev/null
+++ b/drivers/iommu/riscv/iommu-pci.c
@@ -0,0 +1,119 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+/*
+ * Copyright © 2022-2024 Rivos Inc.
+ * Copyright © 2023 FORTH-ICS/CARV
+ *
+ * RISCV IOMMU as a PCIe device
+ *
+ * Authors
+ *	Tomasz Jeznach <tjeznach@rivosinc.com>
+ *	Nick Kossifidis <mick@ics.forth.gr>
+ */
+
+#include <linux/compiler.h>
+#include <linux/init.h>
+#include <linux/iommu.h>
+#include <linux/kernel.h>
+#include <linux/pci.h>
+
+#include "iommu-bits.h"
+#include "iommu.h"
+
+/* Rivos Inc. assigned PCI Vendor and Device IDs */
+#ifndef PCI_VENDOR_ID_RIVOS
+#define PCI_VENDOR_ID_RIVOS             0x1efd
+#endif
+
+#ifndef PCI_DEVICE_ID_RIVOS_IOMMU
+#define PCI_DEVICE_ID_RIVOS_IOMMU       0xedf1
+#endif
+
+static int riscv_iommu_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
+{
+	struct device *dev = &pdev->dev;
+	struct riscv_iommu_device *iommu;
+	int rc, vec;
+
+	rc = pcim_enable_device(pdev);
+	if (rc)
+		return rc;
+
+	if (!(pci_resource_flags(pdev, 0) & IORESOURCE_MEM))
+		return -ENODEV;
+
+	if (pci_resource_len(pdev, 0) < RISCV_IOMMU_REG_SIZE)
+		return -ENODEV;
+
+	rc = pcim_iomap_regions(pdev, BIT(0), pci_name(pdev));
+	if (rc)
+		return dev_err_probe(dev, rc, "pcim_iomap_regions failed\n");
+
+	iommu = devm_kzalloc(dev, sizeof(*iommu), GFP_KERNEL);
+	if (!iommu)
+		return -ENOMEM;
+
+	iommu->dev = dev;
+	iommu->reg = pcim_iomap_table(pdev)[0];
+
+	pci_set_master(pdev);
+	dev_set_drvdata(dev, iommu);
+
+	/* Check device reported capabilities / features. */
+	iommu->caps = riscv_iommu_readq(iommu, RISCV_IOMMU_REG_CAPABILITIES);
+	iommu->fctl = riscv_iommu_readl(iommu, RISCV_IOMMU_REG_FCTL);
+
+	/* The PCI driver only uses MSIs, make sure the IOMMU supports this */
+	switch (FIELD_GET(RISCV_IOMMU_CAPABILITIES_IGS, iommu->caps)) {
+	case RISCV_IOMMU_CAPABILITIES_IGS_MSI:
+	case RISCV_IOMMU_CAPABILITIES_IGS_BOTH:
+		break;
+	default:
+		return dev_err_probe(dev, -ENODEV,
+				     "unable to use message-signaled interrupts\n");
+	}
+
+	/* Allocate and assign IRQ vectors for the various events */
+	rc = pci_alloc_irq_vectors(pdev, 1, RISCV_IOMMU_INTR_COUNT,
+				   PCI_IRQ_MSIX | PCI_IRQ_MSI);
+	if (rc <= 0)
+		return dev_err_probe(dev, -ENODEV,
+				     "unable to allocate irq vectors\n");
+
+	iommu->irqs_count = rc;
+	for (vec = 0; vec < iommu->irqs_count; vec++)
+		iommu->irqs[vec] = msi_get_virq(dev, vec);
+
+	/* Enable message-signaled interrupts, fctl.WSI */
+	if (iommu->fctl & RISCV_IOMMU_FCTL_WSI) {
+		iommu->fctl ^= RISCV_IOMMU_FCTL_WSI;
+		riscv_iommu_writel(iommu, RISCV_IOMMU_REG_FCTL, iommu->fctl);
+	}
+
+	return riscv_iommu_init(iommu);
+}
+
+static void riscv_iommu_pci_remove(struct pci_dev *pdev)
+{
+	struct riscv_iommu_device *iommu = dev_get_drvdata(&pdev->dev);
+
+	riscv_iommu_remove(iommu);
+}
+
+static const struct pci_device_id riscv_iommu_pci_tbl[] = {
+	{PCI_VENDOR_ID_RIVOS, PCI_DEVICE_ID_RIVOS_IOMMU,
+	 PCI_ANY_ID, PCI_ANY_ID, 0, 0, 0},
+	{0,}
+};
+
+static struct pci_driver riscv_iommu_pci_driver = {
+	.name = KBUILD_MODNAME,
+	.id_table = riscv_iommu_pci_tbl,
+	.probe = riscv_iommu_pci_probe,
+	.remove = riscv_iommu_pci_remove,
+	.driver = {
+		.suppress_bind_attrs = true,
+	},
+};
+
+builtin_pci_driver(riscv_iommu_pci_driver);
-- 
2.34.1


