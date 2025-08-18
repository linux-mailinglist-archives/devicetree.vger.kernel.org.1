Return-Path: <devicetree+bounces-205588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B680BB297FD
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 06:15:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7E90A1893DB8
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 04:15:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E77DE268C42;
	Mon, 18 Aug 2025 04:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="ZQU6pGq4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6132620C3
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 04:12:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755490380; cv=none; b=EJb9EYdAijVb6ZvwTx0ik0YeI3SMF8QeZbx7oUhB3+igyMWSvtVVD7Q/oFiklWQD42v4+euehHb+3SFHHw3gO7CXzarBwY8G57zoj1V0JBjwsxiopM/zWoojo0ig0MrqpyZDdk7V33qGSH0yXfEW1JQoszfDuaB+XaMpYxaTsdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755490380; c=relaxed/simple;
	bh=9oHSmkR5BSlb6YNScWRBlcLQba4czDyHg5KKv03AfE8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lPOwZQ456kmK8TuQEgEpj03ikA5weTeopdYRD99oHjS2Onw3GwSZNzOY8bc8l3bLCQVgmxAsdaNIMGdX8xmPNUSs5BZHLOITAtI2NK6R8YrWIP/yYFX41Ob28OfC0m/jPvhF6GSGUQQ0siIrRj9fGvqdQz3AYg0oaJZdlqM1iR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=ZQU6pGq4; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-244581cc971so44275445ad.2
        for <devicetree@vger.kernel.org>; Sun, 17 Aug 2025 21:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1755490379; x=1756095179; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qnjod1mifEH5b/qp1WwSmznv0TnT3EP+iS7ZheWdF/Q=;
        b=ZQU6pGq49xLt203UFDhovN5ehXlzwLU/swqWGF0ISp5UyXYxy4QlNgVzQqln/Qj5iQ
         bBUy7HyJX/VuxLeYIYzfiPTDaqd48zwYisiBNQIZA9AXPuF5j8a+Q/U/FypAmC1QEhAN
         xS0Nhxk8pHckBqA0M80HCSfXb4Sd0+LO/EIBw8a7psCelLfeMUVVUS5CLceTOxPjReik
         c/YYeox/81VkTW3YyJ1leQg+wyBlptDk1lx+umCWbwC7jxDdncoL0CiY2oofMTlfAPjF
         +TX72D+x4kCB46szYhYxc+mQ/Xbr2SjxPbw8FbLfhkmIifROIDvJzrQldpDQx8sm1nQX
         txLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755490379; x=1756095179;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qnjod1mifEH5b/qp1WwSmznv0TnT3EP+iS7ZheWdF/Q=;
        b=wYKASZeLLGe4W20gDZnAoFBZ9m42cq5hZSHVRq5rh9j7dIZdci8LGiFS7++ptVZnRy
         xMJjJpHTX7nt4qN2S3OFUDdhtuXCBcHhOLE7CT2sWrEhfMve/swdgsZDSo9dXjTh/2gC
         vy0eUSE9kCOVEAEg214Nd8Q4mMeczehP+33VNfLkghDLfxY+Afkc/1vU+fvVGaS2RoGz
         9NKodT3r2IYC3K87vbt2f61gPmY7eZYmCraKsOQYUqQDLebEd+ugBx/+LSzEfqf7d1ze
         z94KJWIkG6SVLfvB+9R+jp1G4LVPOhjcOpUIpOWZgqLCKVii7b5dpS6rKFKd6CTJJUta
         ldyw==
X-Forwarded-Encrypted: i=1; AJvYcCWVLB4fhd+jGl1ef0WXLD58iQxbDqozA5WhBJ41HsnMb5u0C0C+MzIh0Ze0swxs+dAO7oNjbuni/pml@vger.kernel.org
X-Gm-Message-State: AOJu0Ywxb056Zi+Y38GGbehw6oAfRtv1VWhBs+qhJUAIfPTbYWr+udZC
	C2Lp0dWgBx9RPzWSEAFddnh+lHzJOYhdQDVxU1Tun6AUzgpOMvuro4ScsR6fRJnsob8=
X-Gm-Gg: ASbGncvexZSJXQjqdWYsLLJ2+VONHKwRRGzwfNOaeiEEju5x2T7SmvbCZ5nE9Al/4dc
	l93LaflDpl84jgniHW9L/MEt6ISGzisBiqgxKTbdhJ9A2tM2DiLD3A76tqWCy385rzRa9Ii9Q9I
	4Y6YaM3hHqpiiyyidTtJOi04DvzWzVTiXDtMWYK/iLjWoZauGn7zQhgDxaiY3QCNgB8rPO8v03w
	INVjUY4K6lC2nOlKt0XwFs/HdX3zKtfT/8vmQPra8MEROwF7IctbUO7jL2rAzobY5PIPXk9Lau/
	HNpmwFCLU9jaQXbPpf/DeqthXyc6CVWbSIzmzOb25qkRZ6FnZFuNk8FfpGd1HjFao3cu161lXfA
	Ri1K5OSL5scx07SU/cQB6RBPY+XQzWJCe/91A+CpzehlEM+xI3cxkSA==
X-Google-Smtp-Source: AGHT+IG8j5so9LT6XTGWsEtufkwowpwix82la3oqJqNnsExlbLVaOnLWc/li5RhrKLvcU04tm9JZeA==
X-Received: by 2002:a17:903:1983:b0:240:38f8:ed05 with SMTP id d9443c01a7336-2446d8f36edmr131628175ad.36.1755490378108;
        Sun, 17 Aug 2025 21:12:58 -0700 (PDT)
Received: from localhost.localdomain ([122.171.17.53])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32343c70356sm6560972a91.25.2025.08.17.21.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Aug 2025 21:12:57 -0700 (PDT)
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
	Alexandre Ghiti <alex@ghiti.fr>,
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
	linux-acpi@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v10 21/24] mailbox/riscv-sbi-mpxy: Add ACPI support
Date: Mon, 18 Aug 2025 09:39:17 +0530
Message-ID: <20250818040920.272664-22-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250818040920.272664-1-apatel@ventanamicro.com>
References: <20250818040920.272664-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Sunil V L <sunilvl@ventanamicro.com>

Add ACPI support for the RISC-V SBI message proxy (MPXY) based
mailbox driver.

Acked-by: Jassi Brar <jassisinghbrar@gmail.com>
Signed-off-by: Sunil V L <sunilvl@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/mailbox/riscv-sbi-mpxy-mbox.c | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/mailbox/riscv-sbi-mpxy-mbox.c b/drivers/mailbox/riscv-sbi-mpxy-mbox.c
index 21404baa6df0..7c9c006b7244 100644
--- a/drivers/mailbox/riscv-sbi-mpxy-mbox.c
+++ b/drivers/mailbox/riscv-sbi-mpxy-mbox.c
@@ -5,9 +5,11 @@
  * Copyright (C) 2025 Ventana Micro Systems Inc.
  */
 
+#include <linux/acpi.h>
 #include <linux/cpu.h>
 #include <linux/errno.h>
 #include <linux/init.h>
+#include <linux/irqchip/riscv-imsic.h>
 #include <linux/mailbox_controller.h>
 #include <linux/mailbox/riscv-rpmi-message.h>
 #include <linux/minmax.h>
@@ -906,6 +908,8 @@ static int mpxy_mbox_probe(struct platform_device *pdev)
 		 * explicitly configure here.
 		 */
 		if (!dev_get_msi_domain(dev)) {
+			struct fwnode_handle *fwnode = dev_fwnode(dev);
+
 			/*
 			 * The device MSI domain for OF devices is only set at the
 			 * time of populating/creating OF device. If the device MSI
@@ -913,8 +917,15 @@ static int mpxy_mbox_probe(struct platform_device *pdev)
 			 * then we need to set it explicitly before using any platform
 			 * MSI functions.
 			 */
-			if (dev_of_node(dev))
+			if (is_of_node(fwnode)) {
 				of_msi_configure(dev, dev_of_node(dev));
+			} else if (is_acpi_device_node(fwnode)) {
+				struct irq_domain *msi_domain;
+
+				msi_domain = irq_find_matching_fwnode(imsic_acpi_get_fwnode(dev),
+								      DOMAIN_BUS_PLATFORM_MSI);
+				dev_set_msi_domain(dev, msi_domain);
+			}
 
 			if (!dev_get_msi_domain(dev))
 				return -EPROBE_DEFER;
@@ -960,6 +971,13 @@ static int mpxy_mbox_probe(struct platform_device *pdev)
 		return rc;
 	}
 
+#ifdef CONFIG_ACPI
+	struct acpi_device *adev = ACPI_COMPANION(dev);
+
+	if (adev)
+		acpi_dev_clear_dependencies(adev);
+#endif
+
 	dev_info(dev, "mailbox registered with %d channels\n",
 		 mbox->channel_count);
 	return 0;
@@ -979,10 +997,17 @@ static const struct of_device_id mpxy_mbox_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, mpxy_mbox_of_match);
 
+static const struct acpi_device_id mpxy_mbox_acpi_match[] = {
+	{ "RSCV0005" },
+	{}
+};
+MODULE_DEVICE_TABLE(acpi, mpxy_mbox_acpi_match);
+
 static struct platform_driver mpxy_mbox_driver = {
 	.driver = {
 		.name = "riscv-sbi-mpxy-mbox",
 		.of_match_table = mpxy_mbox_of_match,
+		.acpi_match_table = mpxy_mbox_acpi_match,
 	},
 	.probe = mpxy_mbox_probe,
 	.remove = mpxy_mbox_remove,
-- 
2.43.0


