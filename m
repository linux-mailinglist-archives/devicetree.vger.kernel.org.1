Return-Path: <devicetree+bounces-176010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0727FAB28C4
	for <lists+devicetree@lfdr.de>; Sun, 11 May 2025 15:44:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 49A3717155D
	for <lists+devicetree@lfdr.de>; Sun, 11 May 2025 13:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A443625A2A6;
	Sun, 11 May 2025 13:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="PyY7lDBh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8187258CC1
	for <devicetree@vger.kernel.org>; Sun, 11 May 2025 13:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746970987; cv=none; b=PpBASq/7I7QcgADVP+qGxsa35ma5hBh+zlGJSanBcDfm8mGgbjZBazU4h3NcgtDYEt9D6xHS4YZRxRKK38VJKy+SuoNqBXNlo/5CQQ6qjRyQFPQ6TrB6wNUZTFydgYDAJStYM0G/y99cXh7XupeAE2RPPXFqK9bR0t2YcyxRkq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746970987; c=relaxed/simple;
	bh=Y4vHAlFkhOKdHSTrf6MC05HMPDfK1GqfCwTsDy5gq4Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TTm7JcSimpW2DLxm/4TLPEHVnP5C9QeymBHooSp6ByWhCxgDFLeYvAvtUU47FI7s5rvm0ysjfct+LLC0h8GljTXRr7VBSqBXiKTpa5wrkiqvAg3mpqiKSmkiq41gEIc7yDoJf6k+FLXkoaM68J8jSr66l/yO9y5ssnjBnBqyPHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=PyY7lDBh; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7418e182864so2630953b3a.1
        for <devicetree@vger.kernel.org>; Sun, 11 May 2025 06:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1746970984; x=1747575784; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6cxg75+BmbsVK8by8Jg0JGFQhw+Q08MYdBoH8jGW6Ls=;
        b=PyY7lDBhenPvom9m8Wq5SusMuuy4mI1Pr5niaxcGcYT2rnC5E/8PzuhZECmUL/VTM8
         vxw3dGh2bfMxZkw9mb24qWbKD+WDBUpqaHNl9ssfijEzQwmvkG4Su2gJSoYmD112NbCU
         4m0dwx+PSjhHl9vh18t++sYUCgjq4h44JFtWIxYWtQJQqsCwONM9wqT5vRxpMW62pX3e
         x9C8tzDsqNg9xcKX2bVl7Mal/hdVTimahTRp+vfYADVVtY8Id6YyXHsoVRZfV4iceDjz
         BA3vJxphqcXyQ0ByX5DSh4wla1NQPcC0TgdbtRbHb1TsbNJsgMD6eEMP/njzzDOo5M+5
         DHqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746970984; x=1747575784;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6cxg75+BmbsVK8by8Jg0JGFQhw+Q08MYdBoH8jGW6Ls=;
        b=bOyz6uNH7eBu1l9I/UkMnRakO3W84GRau2Vnt3YZ5Hgl0aczCNL7r1uReVz4IdI5wr
         eBlZb1EXY06H1WbdII7ZQP26uOxU7ma4n6EWFuoqXWkLvbBcMMnhfSsXsanlVCxFIjIF
         iH54L3AzGX8tzIk21EZMUVQMbBGW08fwMqh9901tK86Tc8igmiHTSUy3mho/6tuamOpe
         he3T12NKdLImX6YAitzatLLlfDCZP6iBvmRg3og3Y3vU0nmk2qZ1+8/fWu2fgfEBxzSr
         8epAi1IEcOi/FMaijvN5tUcDWQ4aZc0ADOH75nugAd02QNxqDKpZnr1CaD2UOMC92d2M
         3CLA==
X-Forwarded-Encrypted: i=1; AJvYcCVzEnD1hwT/QsMNJWSuiHcaLM29WsVdN2ipNPyW/DXA5txLcgrxhrBiHXHiKqHGoElFTMsnEwx5TJ1S@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7xvxuvCRTRHh2AuDvcJhrd19gLLGYInVvKFCwy632xbjbQTV/
	Hyhu3680XrQx9QzlQ0pcboiBVs9qoeUXGQ9Y87i1gu8ywiauhCuK53x9YjwWF+M=
X-Gm-Gg: ASbGncvTRlHGLW12/Vb08vC3zkifWg685VJZ/hERtjPkPJJe8fqnu1UvBC7hHefTGp+
	+h9gpo7Zjltre7IAyjz8YPD+HJCtxwLD0tqdUwq66ZTAT6hG/dsx+n+T5No9EFhJQ/+JLCQTwVI
	WR/soPKOCXRr6NiDfiVtnYDouuEECS2/9svVAYjhTrCiOcSRFQfk94LnD6dnGHAaHlNO5HRhY/4
	yFcJs42pAAgMUZQjwP9lXgKP2U3rSob4DVOgoyr01oqdlZ9yRWs9vAv+LeY8h+9m0UzorQBGKFu
	Zxu/cT3LINYkJum7WXQXR/fiFpHK1HrrbspHQ6ml8/Kqr6vk5pdDSkq2JQbgfobyNnkmVM89njw
	6MHxwQNHW4jJPIg==
X-Google-Smtp-Source: AGHT+IGimxLIrk98Pq6CzitTPHpo8INIdEParac2p+qEDKU8VjpHbzTRWz5rjvW160LTHxYOVVCdIA==
X-Received: by 2002:a17:902:c7ca:b0:22f:c91f:d05f with SMTP id d9443c01a7336-22fc91fd077mr102748145ad.46.1746970983702;
        Sun, 11 May 2025 06:43:03 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([122.171.17.86])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc754785bsm46665805ad.20.2025.05.11.06.42.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 May 2025 06:43:03 -0700 (PDT)
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
Subject: [PATCH v3 21/23] irqchip/riscv-rpmi-sysmsi: Add ACPI support
Date: Sun, 11 May 2025 19:09:37 +0530
Message-ID: <20250511133939.801777-22-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250511133939.801777-1-apatel@ventanamicro.com>
References: <20250511133939.801777-1-apatel@ventanamicro.com>
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
 drivers/irqchip/irq-riscv-rpmi-sysmsi.c | 41 +++++++++++++++++++++++--
 2 files changed, 39 insertions(+), 4 deletions(-)

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
index 9f14a92290c4..cfe8d45dba97 100644
--- a/drivers/irqchip/irq-riscv-rpmi-sysmsi.c
+++ b/drivers/irqchip/irq-riscv-rpmi-sysmsi.c
@@ -3,11 +3,13 @@
  * Copyright (C) 2025 Ventana Micro Systems Inc.
  */
 
+#include <linux/acpi.h>
 #include <linux/bitfield.h>
 #include <linux/bitops.h>
 #include <linux/cpu.h>
 #include <linux/interrupt.h>
 #include <linux/irqchip.h>
+#include <linux/irqchip/riscv-imsic.h>
 #include <linux/mailbox_client.h>
 #include <linux/mailbox/riscv-rpmi-message.h>
 #include <linux/module.h>
@@ -212,6 +214,8 @@ static int rpmi_sysmsi_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct rpmi_sysmsi_priv *priv;
+	struct irq_domain *msi_domain;
+	u32 id;
 	int rc;
 
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
@@ -240,6 +244,21 @@ static int rpmi_sysmsi_probe(struct platform_device *pdev)
 	}
 	priv->nr_irqs = rc;
 
+	if (is_acpi_node(dev_fwnode(dev))) {
+		u32 nr_irqs;
+
+		rc = riscv_acpi_get_gsi_info(dev_fwnode(dev), &priv->gsi_base, &id,
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
@@ -249,8 +268,13 @@ static int rpmi_sysmsi_probe(struct platform_device *pdev)
 		 * then we need to set it explicitly before using any platform
 		 * MSI functions.
 		 */
-		if (is_of_node(dev_fwnode(dev)))
+		if (is_of_node(dev_fwnode(dev))) {
 			of_msi_configure(dev, to_of_node(dev_fwnode(dev)));
+		} else {
+			msi_domain = irq_find_matching_fwnode(imsic_acpi_get_fwnode(dev),
+							      DOMAIN_BUS_PLATFORM_MSI);
+			dev_set_msi_domain(dev, msi_domain);
+		}
 
 		if (!dev_get_msi_domain(dev))
 			return -EPROBE_DEFER;
@@ -261,6 +285,10 @@ static int rpmi_sysmsi_probe(struct platform_device *pdev)
 					  priv->nr_irqs, priv, priv))
 		return dev_err_probe(dev, -ENOMEM, "failed to create MSI irq domain\n");
 
+#ifdef CONFIG_ACPI
+	if (!acpi_disabled)
+		acpi_dev_clear_dependencies(ACPI_COMPANION(dev));
+#endif
 	dev_info(dev, "%d system MSIs registered\n", priv->nr_irqs);
 	return 0;
 }
@@ -270,10 +298,17 @@ static const struct of_device_id rpmi_sysmsi_match[] = {
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


