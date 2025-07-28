Return-Path: <devicetree+bounces-200149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9A9B1381B
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 11:49:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 04A063BF243
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 09:45:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 023C6262FF1;
	Mon, 28 Jul 2025 09:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="cW8SE6Qr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C492571BD
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753695837; cv=none; b=c8LsWgArtEUsfoOgPmNhT+axWT0AtqspobOZQDF+imtqzRRTnRn/VGzM6C/6NSrygocx2xCmXH61pZGboyu31HyqKJZixLnr2m+rxBoKEggDmLn5mbwvWUrKsI+96tqRSm50hdMg4nZDYO3RvrdI+c4uzcyZ+vULjoJKAUjhlrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753695837; c=relaxed/simple;
	bh=bDMVpDUTCKSQxIzYquuybqhsrFm52uIQJL3fLHSkHZc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=o5PYZMJ7YCgAJ32/ED7N35P7TvdDuAfe0nu20/5LKnJdIRDXNBnZqbB1QFaQsKXAGWYgxUUR+tGE8SvoLUme+YuBrmk66a/gU9Iof457Krvz9g2UxtTf++2F5GAItFzAT7LWf/JRpl5sXLFk5v6K0nT1ubX69/ngVp1a8mgl+nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=cW8SE6Qr; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-23636167afeso36121155ad.3
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 02:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1753695835; x=1754300635; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P3TJh+HyLkyeQ1VqRyPxzf43XEd03uT1gCuO+kpCcOM=;
        b=cW8SE6QrSmkYw5KbPGjctVwo/AqaY3FoTHFy2GyanNBJCjrNZ/NptlzqrH1bEDiRTs
         5GCumIP6310khyD0Rem4HsW/ArDHzNQFRXr193xTTx8OoyCqnSa7Hd8pkCRmmkRr+Nd8
         u9e+GeJzWcc+4g5lTgiBYtn7cE369cmOz2tY7l79NkL+YrVN4L4XtZa/+JNH9L8rWoOj
         mKaOyGfmHZCwifnRWzzOaDEWrqllNH2i18AcLPeyYtpi1SNIkmByEChgzAuntqsahc9H
         DGHKnbeossk3pqDK9D4Uqx/Fq/jc1wLWI7BXlsImvtwu27KsPcQINzY+TosLr9bSKA3j
         lubA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753695835; x=1754300635;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P3TJh+HyLkyeQ1VqRyPxzf43XEd03uT1gCuO+kpCcOM=;
        b=V4ZOpFZyCmaSVBqrL3snHpB16bZiv1RGhoBNVX/69AKeY50ZzhZMw5lmJjaFVRS7zH
         qkNFAAtE/5BzUMrJ1fVvqTUtAdjYnIgFYQlHYCNcgGv8XYaJBh3qWwV2HsFG32O8rBXp
         SaFc5eB8mPnHHJjP2hPPB7bc5nm136EjjD6RcAGH3jvgSIrOalZekDv58PQYA9zSa1oe
         Mf8r2oeL8LiAFq9XKOha77nLkCZEVAp0jCWcw8hKdZXWhQiiOtw0bpgo6GDlEpQEQlGk
         /sxb6oE0X7dO0ZdQswkpiBcKiL9FqN4lYLlvw4ElAMKTYATGDlwb6C0nWEKq5li13M3j
         GQhw==
X-Forwarded-Encrypted: i=1; AJvYcCUxICnKC/rSddoQI5ZXPNIufVPTmHKMEr/f731YSY2y+2h8QWB2PRpixWEBIWtQZnFV4UXksXIlnZlX@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4rGC4QAA42JELyLvVEFgOcG0nG27GZF3nSNRGuoTtuT0PGKP0
	I5oSSsKBpx2tXt9Ce0SWZBJrYpJqUoAGWQcUjG1pUKg5NRz/sayHh5mBoh3coittreQ=
X-Gm-Gg: ASbGncvlE7GP/TEPgDmL6q2amnrdibn4Y2dsPkqQxW1GBMkdguBvEbwX3NiDnETdpw6
	YdnQzGGMJ8Kb2S7qEDSgUhjiPOhaCfxBscNZ6v2PZ70tPvVWjxlz/HA4g3PMS67jaIJjAPbxTbH
	MM1RpgqT7fv/UjMmdAIXSKApGseWiqM7txQd8DfauLg6nFKQalMCJvof0J5mAo0+SZsQPS6S1lA
	qRnFHTsSLYs8e+FkxdNKDD5Dt4wFtPti5/B7RZw6YvpZzVLeHLGxBQDGSg7Otk2w8ZvBVOJMrGU
	ReZdzOx0R/vnJ/kA5VtpZ2gGEqqRtZ5cYzVU5yEOVKFv6wfVMsS74Prm3++eXBBa0vb+fl67LwS
	hj3VPGMH/+U8HV3PI7KbLLwDjBHPeHpFQxwi0oUHf6FEycTLRu9nT3zz6VeV9
X-Google-Smtp-Source: AGHT+IHI2M7ktVDfnRXlbMOQx8cI9hQctNhXTmp4VHflXoE3OleDRvbaoO88+G60sLgtIf+JGimi6Q==
X-Received: by 2002:a17:902:f30b:b0:23f:f983:5ca1 with SMTP id d9443c01a7336-23ff9835e51mr55263795ad.12.1753695834472;
        Mon, 28 Jul 2025 02:43:54 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([122.171.19.28])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31e832fbf99sm5396230a91.1.2025.07.28.02.43.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 02:43:53 -0700 (PDT)
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
Subject: [PATCH v9 18/24] ACPI: RISC-V: Add support to update gsi range
Date: Mon, 28 Jul 2025 15:10:26 +0530
Message-ID: <20250728094032.63545-19-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250728094032.63545-1-apatel@ventanamicro.com>
References: <20250728094032.63545-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Sunil V L <sunilvl@ventanamicro.com>

Some RISC-V interrupt controllers like RPMI based system MSI interrupt
controllers do not have MADT entry defined. These interrupt controllers
exist only in the namespace. ACPI spec defines _GSB method to get the
GSI base of the interrupt controller, However, there is no such standard
method to get the GSI range. To support such interrupt controllers, set
the GSI range of such interrupt controllers to non-overlapping range and
provide API for interrupt controller driver to update it with proper
value.

Signed-off-by: Sunil V L <sunilvl@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/riscv/include/asm/irq.h |  5 +++++
 drivers/acpi/riscv/irq.c     | 38 ++++++++++++++++++++++++++++++++++--
 2 files changed, 41 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/include/asm/irq.h b/arch/riscv/include/asm/irq.h
index 7b038f3b7cb0..2caf049f09c8 100644
--- a/arch/riscv/include/asm/irq.h
+++ b/arch/riscv/include/asm/irq.h
@@ -40,6 +40,7 @@ unsigned long acpi_rintc_ext_parent_to_hartid(unsigned int plic_id, unsigned int
 unsigned int acpi_rintc_get_plic_nr_contexts(unsigned int plic_id);
 unsigned int acpi_rintc_get_plic_context(unsigned int plic_id, unsigned int ctxt_idx);
 int __init acpi_rintc_get_imsic_mmio_info(u32 index, struct resource *res);
+int riscv_acpi_update_gsi_range(u32 gsi_base, u32 nr_irqs);
 
 #else
 static inline int riscv_acpi_get_gsi_info(struct fwnode_handle *fwnode, u32 *gsi_base,
@@ -74,6 +75,10 @@ static inline int __init acpi_rintc_get_imsic_mmio_info(u32 index, struct resour
 	return 0;
 }
 
+static inline int riscv_acpi_update_gsi_range(u32 gsi_base, u32 nr_irqs)
+{
+	return -ENODEV;
+}
 #endif /* CONFIG_ACPI */
 
 #endif /* _ASM_RISCV_IRQ_H */
diff --git a/drivers/acpi/riscv/irq.c b/drivers/acpi/riscv/irq.c
index 33c073e2e71d..cc1928422418 100644
--- a/drivers/acpi/riscv/irq.c
+++ b/drivers/acpi/riscv/irq.c
@@ -10,6 +10,8 @@
 
 #include "init.h"
 
+#define RISCV_ACPI_INTC_FLAG_PENDING BIT(0)
+
 struct riscv_ext_intc_list {
 	acpi_handle		handle;
 	u32			gsi_base;
@@ -17,6 +19,7 @@ struct riscv_ext_intc_list {
 	u32			nr_idcs;
 	u32			id;
 	u32			type;
+	u32			flag;
 	struct list_head	list;
 };
 
@@ -69,6 +72,22 @@ static acpi_status riscv_acpi_update_gsi_handle(u32 gsi_base, acpi_handle handle
 	return AE_NOT_FOUND;
 }
 
+int riscv_acpi_update_gsi_range(u32 gsi_base, u32 nr_irqs)
+{
+	struct riscv_ext_intc_list *ext_intc_element;
+
+	list_for_each_entry(ext_intc_element, &ext_intc_list, list) {
+		if (gsi_base == ext_intc_element->gsi_base &&
+		    (ext_intc_element->flag & RISCV_ACPI_INTC_FLAG_PENDING)) {
+			ext_intc_element->nr_irqs = nr_irqs;
+			ext_intc_element->flag &= ~RISCV_ACPI_INTC_FLAG_PENDING;
+			return 0;
+		}
+	}
+
+	return -ENODEV;
+}
+
 int riscv_acpi_get_gsi_info(struct fwnode_handle *fwnode, u32 *gsi_base,
 			    u32 *id, u32 *nr_irqs, u32 *nr_idcs)
 {
@@ -115,14 +134,22 @@ struct fwnode_handle *riscv_acpi_get_gsi_domain_id(u32 gsi)
 static int __init riscv_acpi_register_ext_intc(u32 gsi_base, u32 nr_irqs, u32 nr_idcs,
 					       u32 id, u32 type)
 {
-	struct riscv_ext_intc_list *ext_intc_element, *node;
+	struct riscv_ext_intc_list *ext_intc_element, *node, *prev;
 
 	ext_intc_element = kzalloc(sizeof(*ext_intc_element), GFP_KERNEL);
 	if (!ext_intc_element)
 		return -ENOMEM;
 
 	ext_intc_element->gsi_base = gsi_base;
-	ext_intc_element->nr_irqs = nr_irqs;
+
+	/* If nr_irqs is zero, indicate it in flag and set to max range possible */
+	if (nr_irqs) {
+		ext_intc_element->nr_irqs = nr_irqs;
+	} else {
+		ext_intc_element->flag |= RISCV_ACPI_INTC_FLAG_PENDING;
+		ext_intc_element->nr_irqs = U32_MAX - ext_intc_element->gsi_base;
+	}
+
 	ext_intc_element->nr_idcs = nr_idcs;
 	ext_intc_element->id = id;
 	list_for_each_entry(node, &ext_intc_list, list) {
@@ -130,6 +157,13 @@ static int __init riscv_acpi_register_ext_intc(u32 gsi_base, u32 nr_irqs, u32 nr
 			break;
 	}
 
+	/* Adjust the previous node's GSI range if that has pending registration */
+	prev = list_prev_entry(node, list);
+	if (!list_entry_is_head(prev, &ext_intc_list, list)) {
+		if (prev->flag & RISCV_ACPI_INTC_FLAG_PENDING)
+			prev->nr_irqs = ext_intc_element->gsi_base - prev->gsi_base;
+	}
+
 	list_add_tail(&ext_intc_element->list, &node->list);
 	return 0;
 }
-- 
2.43.0


