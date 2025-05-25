Return-Path: <devicetree+bounces-180309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B285DAC333D
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 10:52:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8CBCD3B91BC
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 08:51:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 744BB1F03D7;
	Sun, 25 May 2025 08:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="bKKwgEv6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF3201C700C
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 08:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748163019; cv=none; b=kdsoA2ohSVjOPX/4PQv+Ot4OkO0oSwD1567DFd9tadzoRES142j3gqWeW1prfliB4FElsubK+YMJlhPU4/WTOlLjYIPi1dtkL6y1U40MWH8gW5t3ZeP3eBpTkGjPMn9M1pAYM6dJ9JUvMCP93Dk/DlBIu8qdinufdG2E3o80kh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748163019; c=relaxed/simple;
	bh=YzdL1KMPOnix9KLBwQGvplL/otnn20kqRApoLPaxoOo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ldchYmIHfJaqRAEluJ7AmBUJRU+97czzcX9vA5urXuxfXioUGUQVyii56kQga8gMFPQ+zhNCD6dp0IDX2ISLwjtihhLrmcMfFBPnY1ZOKwu2mjCWx+/eLwAyrTjMjfpsgQz/Lb1ad4naquy+h4RLM8FJ7TawnDMBW16eJo9tsP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=bKKwgEv6; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-73972a54919so920966b3a.3
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 01:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1748163017; x=1748767817; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6V6QbiInxE/Um6Eyr5jQlxs29QfT2mwTqovmMoRPQuU=;
        b=bKKwgEv6HgQpW+/OvcBFyBBAFCmqu+M5AUTCQHnvEDWQLhTrXKujmAxqS0AzQ8wfaN
         2GBQQxtbJkkHpnFZZJWIRq7cFqSrYAU7MUEc69FgSizxu9lqD7UAf3fn+mq4vZkUB+dn
         pgBx74gGnjQDBMkkiucmcIrJU42dSt6TETsdThlAgoA0yGUNIkC4k7hh03S8Cax+tfAI
         hOiWsbtNnj6iGIimfDacfyn43amHenWpyqhyVeIUS43CPRb+UDitU9VVUOwE6Z9/bCmW
         4S7ptHErVgonHUkmZidkYqgBUf0oXIP+ab8HNKDzFt0flLeWLP4FxFFR7gODzcUDKz+t
         ZLuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748163017; x=1748767817;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6V6QbiInxE/Um6Eyr5jQlxs29QfT2mwTqovmMoRPQuU=;
        b=R85BznnRxGaoL8V3ALtih5vT0IJ2zMd/jsl2SkCNjYt5gYVpgwogXOpvJcXD+/qfC/
         s+tDCpAk+UKsCNTHl81Nyr42BbryeM0QZy8lxvmPCwuy0u8FJCpBo0uuE7LO41R7oUNH
         plibFG8EMpqALi0kwDgHJE2AyKUEVdhuT/Q/lgimADW/PMslpn9MG4Jfcy++esF5fRoO
         eGX0gJci+sr06Rrr8kSNVPlP5xhE8s5Ro4Dyo4+HOcomr+fnSnKNzPGweOVdVflN93+I
         C81H5VkmgaYePAHLfh1mLkfgQt6iirJKnKbdD7UpaGXUeFrm/SXmmvi4IuQLoE0GWthi
         eR8Q==
X-Forwarded-Encrypted: i=1; AJvYcCUA/CMBP/NoHQ6Cvz7YP74cugxziJUIviKX7QhLp8c8wN8Jf4hxjbwnXC14ZdFi9kthgxYhmJpFsCfJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwC8hokgI8vMBtU/liOQW9leGMXFoiOWg6kcOcNHueh/NIZ7Yj+
	FyQVFG8zkkiFQcVEkprJNLa9+k23j+LcgNmQ6B3yLEdzLAk4UftJPHkbchJ9LaSfQlU=
X-Gm-Gg: ASbGncv3Yktc1PWRHuUfcf/dVNs5AWH+h8RyPOLhnHfs4lSD0P/dV6DDBC42PLyl7k7
	i3TEmdVdvzOptIfV5OguaD9sXdj3KpqO6bDCQ5Vk1DkgprUbrWroei3xstFcmcHkClXSKf3OZJt
	3ru2uzn7C8ktiGFAc+UjWvhYQFrZkcmOzaPhuxp52G9dfBHq4aBULcIIYyjOgA3DRwHvtAG6hxa
	00CImgE8rzgm52wqp05vmn8oxhb8VWvk9kRI7jfpB0EI+BhF1ElAJ2HzighKJ1Pk7+1pQj8XND8
	ZJXycOQP0xMvIDum7chuQEyxMLMup3LSxpFUQ85Kq8O/rfYpKSyt5PfYkmSGkhyhDrS+4KPRIqc
	+Y+oTXuhu
X-Google-Smtp-Source: AGHT+IHA6vG3gnOFkfnCkqjtNt9jIgboUuMsLJqr0O3oyAfcFRpaKdyOG2hZOtww2NGmCEAF3xsiNQ==
X-Received: by 2002:a05:6a20:6f08:b0:215:f6ab:cf77 with SMTP id adf61e73a8af0-2188c28ac6fmr8436680637.23.1748163017053;
        Sun, 25 May 2025 01:50:17 -0700 (PDT)
Received: from localhost.localdomain ([122.171.22.180])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eaf6dd83sm15250627a12.18.2025.05.25.01.50.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 May 2025 01:50:16 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Len Brown <lenb@kernel.org>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Rahul Pathak <rpathak@ventanamicro.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Atish Patra <atish.patra@linux.dev>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v4 21/23] irqchip/riscv-rpmi-sysmsi: Add ACPI support
Date: Sun, 25 May 2025 14:17:08 +0530
Message-ID: <20250525084710.1665648-22-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250525084710.1665648-1-apatel@ventanamicro.com>
References: <20250525084710.1665648-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Sunil V L <sunilvl@ventanamicro.com>

Add ACPI support for the RISC-V RPMI system MSI based irqchip driver.

Signed-off-by: Sunil V L <sunilvl@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/irqchip/Kconfig                 |  2 +-
 drivers/irqchip/irq-riscv-rpmi-sysmsi.c | 48 ++++++++++++++++++++++---
 2 files changed, 45 insertions(+), 5 deletions(-)

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 83700fc2ddc9..132e56a596fc 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -614,7 +614,7 @@ config RISCV_IMSIC
 
 config RISCV_RPMI_SYSMSI
 	bool
-	depends on MAILBOX
+	depends on RISCV && MAILBOX
 	select IRQ_DOMAIN_HIERARCHY
 	select GENERIC_MSI_IRQ
 	default RISCV
diff --git a/drivers/irqchip/irq-riscv-rpmi-sysmsi.c b/drivers/irqchip/irq-riscv-rpmi-sysmsi.c
index d7b19fb7bf4e..6d27c036928a 100644
--- a/drivers/irqchip/irq-riscv-rpmi-sysmsi.c
+++ b/drivers/irqchip/irq-riscv-rpmi-sysmsi.c
@@ -1,9 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (C) 2025 Ventana Micro Systems Inc. */
 
+#include <linux/acpi.h>
 #include <linux/device.h>
 #include <linux/dev_printk.h>
 #include <linux/irq.h>
+#include <linux/irqchip/riscv-imsic.h>
 #include <linux/irqdomain.h>
 #include <linux/mailbox_client.h>
 #include <linux/mailbox/riscv-rpmi-message.h>
@@ -209,6 +211,9 @@ static int rpmi_sysmsi_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct rpmi_sysmsi_priv *priv;
+	struct irq_domain *msi_domain;
+	struct fwnode_handle *fwnode;
+	u32 id;
 	int rc;
 
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
@@ -240,6 +245,22 @@ static int rpmi_sysmsi_probe(struct platform_device *pdev)
 	}
 	priv->nr_irqs = rc;
 
+	fwnode = dev_fwnode(dev);
+	if (is_acpi_node(fwnode)) {
+		u32 nr_irqs;
+
+		rc = riscv_acpi_get_gsi_info(fwnode, &priv->gsi_base, &id,
+					     &nr_irqs, NULL);
+		if (rc) {
+			dev_err(dev, "failed to find GSI mapping\n");
+			return rc;
+		}
+
+		/* Update with actual GSI range */
+		if (nr_irqs != priv->nr_irqs)
+			riscv_acpi_update_gsi_range(priv->gsi_base, priv->nr_irqs);
+	}
+
 	/* Set the device MSI domain if not available */
 	if (!dev_get_msi_domain(dev)) {
 		/*
@@ -249,8 +270,13 @@ static int rpmi_sysmsi_probe(struct platform_device *pdev)
 		 * then we need to set it explicitly before using any platform
 		 * MSI functions.
 		 */
-		if (is_of_node(dev_fwnode(dev)))
-			of_msi_configure(dev, to_of_node(dev_fwnode(dev)));
+		if (is_of_node(fwnode)) {
+			of_msi_configure(dev, to_of_node(fwnode));
+		} else if (is_acpi_device_node(fwnode)) {
+			msi_domain = irq_find_matching_fwnode(imsic_acpi_get_fwnode(dev),
+							      DOMAIN_BUS_PLATFORM_MSI);
+			dev_set_msi_domain(dev, msi_domain);
+		}
 
 		if (!dev_get_msi_domain(dev)) {
 			mbox_free_channel(priv->chan);
@@ -265,6 +291,13 @@ static int rpmi_sysmsi_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, -ENOMEM, "failed to create MSI irq domain\n");
 	}
 
+#ifdef CONFIG_ACPI
+	struct acpi_device *adev = ACPI_COMPANION(dev);
+
+	if (adev)
+		acpi_dev_clear_dependencies(adev);
+#endif
+
 	dev_info(dev, "%u system MSIs registered\n", priv->nr_irqs);
 	return 0;
 }
@@ -274,10 +307,17 @@ static const struct of_device_id rpmi_sysmsi_match[] = {
 	{}
 };
 
+static const struct acpi_device_id acpi_rpmi_sysmsi_match[] = {
+	{ "RSCV0006" },
+	{}
+};
+MODULE_DEVICE_TABLE(acpi, acpi_rpmi_sysmsi_match);
+
 static struct platform_driver rpmi_sysmsi_driver = {
 	.driver = {
-		.name		= "rpmi-sysmsi",
-		.of_match_table	= rpmi_sysmsi_match,
+		.name			= "rpmi-sysmsi",
+		.of_match_table		= rpmi_sysmsi_match,
+		.acpi_match_table	= acpi_rpmi_sysmsi_match,
 	},
 	.probe = rpmi_sysmsi_probe,
 };
-- 
2.43.0


