Return-Path: <devicetree+bounces-180306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C69AC3332
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 10:51:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE9043A4632
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 08:51:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83A341EF0BB;
	Sun, 25 May 2025 08:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="CcAOjlFz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69DB1E833E
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748162995; cv=none; b=CEhiKZL3Y9CGDAEdf6ceurfhamcoOwZcuf2HfKl5qExdikyM8MQi8wS5QLubrt0j68VMJAZBj1ziJxIG3T8kLTtVc+E609XUHOS70qbIuqIh1fLTwJGzRrzZGV7wtyyKn9ZeW+rrm+FXl1qY+rv156EygCteAMbE1iWqiRqezsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748162995; c=relaxed/simple;
	bh=Yod1ojfym0H02wPij0QCUYk2vocudWOnUaZuvcAfPVA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=knpHqF1DhgNbZkP6OuUU3DnwcdvXdTGGpOOrSkkyZgO0P0jJTt9txqe5oqsCN61YpS0rwoF7Q1WUDLxc450E7cuBMYernV+q9PxJJmJs0VOJvtEn7jaMVe1KQStmKD4PsDcLRkyKkWTUIlECPmGbPr6yJVpYgPn42eQ85u1RRdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=CcAOjlFz; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-742c5eb7d1cso1426126b3a.3
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 01:49:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1748162993; x=1748767793; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JayfekSBf60XxmNCoReWHRNPh+4d4QR/028ggZ4l4HQ=;
        b=CcAOjlFzDMA2FLrJ/kqDZeKtGnT0lkXu3bev4MbXRsjHCC6FOr0hik0wovkqfZfiyC
         /kxB8wRFJZpUdzbIoubXSjSaCz8a0yF1g7w0hWXRWwdDu0D33YIy+HErBf+Gm78QWb7+
         WXuq+vtB5mCkXMDIsTNb3kdw/nzw3dKVVgbVNibah943JRR85ofDF+WSuynQ56V5Vh9j
         SzDyEJ82fk7Drc9tmeQbXP8c5FHW6JDOXIs+a4lr0hSzEIGMf3OyRDAc2bh8lIJCtvU4
         j6w4gZnBylstlzRNXvP8x/8b7FftYkAf+XD3ucfDRQ50lHvcLjfTnu/yu25TPtvPuUuU
         V6OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748162993; x=1748767793;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JayfekSBf60XxmNCoReWHRNPh+4d4QR/028ggZ4l4HQ=;
        b=PwQ+xMKKsXBEtAq4ef0ODEh/5/0peCVCNa2eLSu7AGSC5uIdMyAB+pX6/ay9A6NPNq
         pxCKY6A+Itn2z8Oo8Q4S2OJMkz/GWAIEv4JZXY53Y2Z+pbnqXMKm+2zWnBl2Zc6NKmLL
         xZvZBNtwUjFH5bqclbMxOrw8Xw2ZHfavw3Ir5UZCsHJavKcBEfryTpTdL2Q2mF56beOP
         f9vxNEFSSQdUe2IrjYM9C9aSiYWMDvNDB5oIQOw9oeP3GnGoyC5mEB9EfOHtx1TiyGr7
         vdX7v7ZBSN7NKR2gsjzjxYxnHlA5F88IgLPLDUSeU/fBZYq/XB18tRIs0Ayfb+uycnWk
         iozw==
X-Forwarded-Encrypted: i=1; AJvYcCUQ8OEfSY9sjOC+DZhCs8sJcdkRUm02Lg5OemUKs86JEzX1hMD9+Rfp3yps7vU87jjpQMzGVjFZXiiv@vger.kernel.org
X-Gm-Message-State: AOJu0YyVU30XZvnMu/8lcAi7TW8I6Oax+LIAFyKqEpbp0gV1FPehmLsP
	8gyGHwCT7a9MnVppJoZmblC8jlh1CkM5O0JqwypcFEIMOBwB3Z/WPfiC730rjHuFBsM=
X-Gm-Gg: ASbGnct3OfZOzs6K/gTC2ByCgxNya8UlsysnjT+whOwqSxjTRQOQCILJ+ZganPQqN92
	zn3ThlUJf3a9+s7KrZTEuNWyBUODNWv6YbfLcY4Tc+zACyZHiU2huClwuDIxVf5hPqmL7f8FQ+M
	ZrIveo7R7h0eoeph5g0Qnl80jaDOyoFnQvhCAKRLWb471DMvsSbLHkRyCTAvBnWidrc67hqsjyk
	cgZCYZeblVB+MELpl6A7/sSL7DZVbF4ZA9A7/nbOiWAnT2/+ps/p2NWTRMsys6kTbS725tOENH7
	cJ3uXdJ1VGkIc7WVUow5mIqKs8XHnr6jzlA95rLY+4+3bTNmjmL755aQ0JXoE++BNo4807kRFF2
	VEqeaGyOm
X-Google-Smtp-Source: AGHT+IEwbZO/SSaKSehtYIjWeeQeYjGYbuE6PZbtY+EctOE5J9CWn4Wrz1InyntDeMSrBzuiztLrSQ==
X-Received: by 2002:a05:6a20:3d94:b0:215:d25d:fd14 with SMTP id adf61e73a8af0-2188c243786mr7499517637.13.1748162992994;
        Sun, 25 May 2025 01:49:52 -0700 (PDT)
Received: from localhost.localdomain ([122.171.22.180])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eaf6dd83sm15250627a12.18.2025.05.25.01.49.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 May 2025 01:49:52 -0700 (PDT)
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
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 18/23] ACPI: RISC-V: Add support to update gsi range
Date: Sun, 25 May 2025 14:17:05 +0530
Message-ID: <20250525084710.1665648-19-apatel@ventanamicro.com>
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

Some RISC-V interrupt controllers like RPMI based system MSI interrupt
controllers do not have MADT entry defined. These interrupt controllers
exist only in the namespace. ACPI spec defines _GSB method to get the
GSI base of the interrupt controller, However, there is no such standard
method to get the GSI range. To support such interrupt controllers, set
the GSI range of such interrupt controllers to non-overlapping range and
provide API for interrupt controller driver to update it with proper
value.

Signed-off-by: Sunil V L <sunilvl@ventanamicro.com>
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
index 95b4d7574ce3..c881cf037f0a 100644
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
 	if (list_empty(&ext_intc_list)) {
@@ -135,6 +162,13 @@ static int __init riscv_acpi_register_ext_intc(u32 gsi_base, u32 nr_irqs, u32 nr
 			break;
 	}
 
+	/* Adjust the previous node's GSI range if that has pending registration */
+	prev = list_prev_entry(node, list);
+	if (!list_entry_is_head(prev, &ext_intc_list, list)) {
+		if (prev->flag & RISCV_ACPI_INTC_FLAG_PENDING)
+			prev->nr_irqs = ext_intc_element->gsi_base - prev->gsi_base;
+	}
+
 	__list_add(&ext_intc_element->list, node->list.prev, &node->list);
 	return 0;
 }
-- 
2.43.0


