Return-Path: <devicetree+bounces-142429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75961A254F7
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 09:53:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 323DC16120A
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 08:53:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA94D202C40;
	Mon,  3 Feb 2025 08:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="XBegWBXx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326FC1FCCFB
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 08:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738572761; cv=none; b=LX2dfR165Yj0g8xlfPIDnV23xaDxdeJx6HvC8AUdIjtHhRiVLu3oelxs6uqZ6AGVQDXo4icSqwGeXpBoK6b2x/hks5cjLK1mS89xXs4n3PeD3xlKj6Ndc6aLDi2yAOoBBUY5Fki2yoAgLGeFA2Vs8Ockd9bIlrK/pCd6QM9s1Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738572761; c=relaxed/simple;
	bh=UfWFl+WiF9wnff9ghcAYXQF0BAfAo8SLYSUuLg3w0YA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QiHg8syTvN+WOlllDyA3/FfHk5asdOHFmlw7K0xseb+QnxbIGMvBzQFd48AHCtT6pI8dAT/F4m3EjJSRH55Jd6V4v4M065yKSOAi5md5L9OZt8PczQ4kzVs5wmfyiYvuBfj00ZV1jB1qIXA35bYb4iw+S1oOWsRHneiw0kLZN8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=XBegWBXx; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-467bc28277eso35282241cf.1
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 00:52:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1738572759; x=1739177559; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bMc6tRRbVVjIuFrimhD5cbba2O5fSdoBYlM+WudqAOg=;
        b=XBegWBXx4f7ewx3i5gr5Ehb6or6t6WJN33pqhdut/6stElAgOHoRKiI1uUc0ZbORg1
         VTUGRfBwRz73ERF7mAgbzwN5AjPIJr6AwOUNjOVC7EHUMu8vWipW7XyLqePdpC4QYu5Z
         XHGOvcyZoZGK0o+L3EFEcCsVofJS3XhpBe1GLWk2K93OQzdYFNE9BNwKwiNVzt7oDUID
         JOJCGLCVAWHzfE+Nj5cJt+iThZ3yhrpUo5r1G7Xa2OuT1AoI9Cp3DGmgdDqRyy7994uM
         VxFVemk/hqL6je3nnQHGiaK8Nl8aPsTynTs4T1FaTghQhO7KNxNJ7Wer7pJAJL0V0TYJ
         RBTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738572759; x=1739177559;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bMc6tRRbVVjIuFrimhD5cbba2O5fSdoBYlM+WudqAOg=;
        b=UJHoWYvRaPAnOVo8pBv6e95iq1BneKFXT5iW4ZGM4yNLo9M31hxoUR8EalHSGjyWoy
         ERjpvvLZ5fhrCrSPb/axTALIjCMxWejWCiJQg18+AFxrBXcp2pb4uTJZ+jdXvNB4YibW
         EdHmDhbzqfy7+5Zfc6FspzN3VwvnyiCbZMyc9lOLFXVy1xIjjhCEGe+KPz+pdJUG8gE7
         a1iDiwVcpNkI5BXMFIK1FMqmF2CjKX17S47esYFNvrnHw47i9p0dbFfZHkdfEILc6eQ6
         FwSoGzryoQEqvESS9AB1zEz5osXik9JYLqYMbBJcm27ej2vWJttyGfw8OMCcfyhUL2Zn
         lskA==
X-Forwarded-Encrypted: i=1; AJvYcCVofvzwUj5VJDNheSa5Z1rIBhnPctzs7Cl8/6Jk95P4PZW07tzbchiOeteiBbafcnrAC3ZJSBKYGBfm@vger.kernel.org
X-Gm-Message-State: AOJu0YwHDhA6tz4IJm8Xc8KAdo30dTMN7uDqc5o1vxN7F/ksrYt0FwXa
	A2YhaDKe/Ywb9LtE5nnImjzr9WhDvdak9RRJGoo13/5J5fmw0hLvsDLL4Joh2x0=
X-Gm-Gg: ASbGnct7nRjacVUPxFmFLYuR/J0K/QE6BKo1nX7gyDy1DxCDnMVsg+JAk4m6khsHm3s
	fug0x38myYQFp5PSMPb9VI0xtfSY0jzzQbZ1Ogq3GKIjIIre+gj51lZIeiloomnUG7aoaSOuue4
	U9oOWB+jzro5WfFVIxUjhheNTUT8l5j4XWjYDxj7uthQwHGOVphRsGA67IoMe0sXsjNYx8PjEG3
	czNJF4wHgY5uVjE4xhGVqeLfykWYvku6PaYttUdeYOtl8IMbXUPLs2uV3mo2OpvrIwnTVprQCzl
	qOIy8qNVyBSTC5zXslxzRLdSI90LzrKJjzgzM3vc2YyzWLrK0/pbccI=
X-Google-Smtp-Source: AGHT+IFAdiGU/iUBycYCxgRM5DsqzJFg3ES5gi2sqFYcXQtsQPK6UBgEZ5OP+FdlHA0Q+Cdlc8Fv6A==
X-Received: by 2002:a05:622a:134e:b0:46c:7152:317e with SMTP id d75a77b69052e-46fd0b753famr297039461cf.42.1738572758960;
        Mon, 03 Feb 2025 00:52:38 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-46fdf0e3089sm47657911cf.46.2025.02.03.00.52.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 00:52:38 -0800 (PST)
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
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [RFC PATCH v2 16/17] irqchip/riscv-rpmi-sysmsi: Add ACPI support
Date: Mon,  3 Feb 2025 14:19:05 +0530
Message-ID: <20250203084906.681418-17-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250203084906.681418-1-apatel@ventanamicro.com>
References: <20250203084906.681418-1-apatel@ventanamicro.com>
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
 drivers/irqchip/irq-riscv-rpmi-sysmsi.c | 34 ++++++++++++++++++++++++-
 2 files changed, 34 insertions(+), 2 deletions(-)

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 2ae44354735b..cf96382113ce 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -599,7 +599,7 @@ config RISCV_IMSIC_PCI
 
 config RISCV_RPMI_SYSMSI
 	bool
-	depends on MAILBOX
+	depends on RISCV && MAILBOX
 	select IRQ_DOMAIN_HIERARCHY
 	select GENERIC_MSI_IRQ
 	default RISCV
diff --git a/drivers/irqchip/irq-riscv-rpmi-sysmsi.c b/drivers/irqchip/irq-riscv-rpmi-sysmsi.c
index 3022f0924c94..1f03241920bb 100644
--- a/drivers/irqchip/irq-riscv-rpmi-sysmsi.c
+++ b/drivers/irqchip/irq-riscv-rpmi-sysmsi.c
@@ -8,6 +8,7 @@
 #include <linux/cpu.h>
 #include <linux/interrupt.h>
 #include <linux/irqchip.h>
+#include <linux/irqchip/riscv-imsic.h>
 #include <linux/mailbox_client.h>
 #include <linux/mailbox/riscv-rpmi-message.h>
 #include <linux/module.h>
@@ -215,6 +216,7 @@ static int rpmi_sysmsi_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct rpmi_sysmsi_priv *priv;
+	u32 id;
 	int rc;
 
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
@@ -223,6 +225,15 @@ static int rpmi_sysmsi_probe(struct platform_device *pdev)
 	priv->dev = dev;
 	platform_set_drvdata(pdev, priv);
 
+	if (!is_of_node(dev->fwnode)) {
+		rc = riscv_acpi_get_gsi_info(dev->fwnode, &priv->gsi_base, &id,
+					     &priv->nr_irqs, NULL);
+		if (rc) {
+			dev_err(dev, "failed to find GSI mapping\n");
+			return rc;
+		}
+	}
+
 	/* Setup mailbox client */
 	priv->client.dev		= priv->dev;
 	priv->client.rx_callback	= NULL;
@@ -252,8 +263,16 @@ static int rpmi_sysmsi_probe(struct platform_device *pdev)
 		 * then we need to set it explicitly before using any platform
 		 * MSI functions.
 		 */
-		if (is_of_node(dev->fwnode))
+		if (is_of_node(dev->fwnode)) {
 			of_msi_configure(dev, to_of_node(dev->fwnode));
+		} else {
+			struct irq_domain *msi_domain;
+
+			msi_domain = irq_find_matching_fwnode(imsic_acpi_get_fwnode(dev),
+							      DOMAIN_BUS_PLATFORM_MSI);
+			if (msi_domain)
+				dev_set_msi_domain(dev, msi_domain);
+		}
 
 		if (!dev_get_msi_domain(dev))
 			return -EPROBE_DEFER;
@@ -264,6 +283,10 @@ static int rpmi_sysmsi_probe(struct platform_device *pdev)
 					  priv->nr_irqs, priv, priv))
 		return dev_err_probe(dev, -ENOMEM, "failed to create MSI irq domain\n");
 
+#ifdef CONFIG_ACPI
+	if (!acpi_disabled)
+		acpi_dev_clear_dependencies(ACPI_COMPANION(dev));
+#endif
 	dev_info(dev, "%d system MSIs registered\n", priv->nr_irqs);
 	return 0;
 }
@@ -273,10 +296,19 @@ static const struct of_device_id rpmi_sysmsi_match[] = {
 	{}
 };
 
+#ifdef CONFIG_ACPI
+static const struct acpi_device_id acpi_rpmi_sysmsi_match[] = {
+	{ "RSCV0006", 0 },
+	{}
+};
+MODULE_DEVICE_TABLE(acpi, acpi_rpmi_sysmsi_match);
+#endif
+
 static struct platform_driver rpmi_sysmsi_driver = {
 	.driver = {
 		.name		= "rpmi-sysmsi",
 		.of_match_table	= rpmi_sysmsi_match,
+		.acpi_match_table	= ACPI_PTR(acpi_rpmi_sysmsi_match),
 	},
 	.probe = rpmi_sysmsi_probe,
 };
-- 
2.43.0


