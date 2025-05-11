Return-Path: <devicetree+bounces-176007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8A7AB28C7
	for <lists+devicetree@lfdr.de>; Sun, 11 May 2025 15:44:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 038E218954CA
	for <lists+devicetree@lfdr.de>; Sun, 11 May 2025 13:43:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 238842571D3;
	Sun, 11 May 2025 13:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="cRtp8w0Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889EE19F101
	for <devicetree@vger.kernel.org>; Sun, 11 May 2025 13:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746970960; cv=none; b=uuS5amviZIXMfE270MuXYQeZWOarptdUnr2iNb9tVIapcQPhN3o+4WO1vjKIsJTJTXPDWq2Mg49vNVwlqNlpjwFeC0lKpiPiCRFrjtzEy1SZC0YOWgKjQ4UNvUcjShq3UALroq3FgSBB6XgSU9ZH8QVsOOjVWngT6oOKOTI5Vfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746970960; c=relaxed/simple;
	bh=K7avSPDIXlqobRpntOaSzj5/NTPpnP31Cu49pMX5sIg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TCD5o/p8RrSDzslX+Tw5sec/Qtl2Br3uGvcG1HDAMK2U3UCU4oMFVYJDqXPFyC7pWs5cZEPlqDF1dwf9sUGHbGZAyF39wwmxeGOeG6YES4r5wG1hQpWz5HA+66pBhEA2fn65hQxzNqHLe94dH/ivvJIRMQR/VCFtNC4H/EiNXIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=cRtp8w0Q; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-22c33677183so31251005ad.2
        for <devicetree@vger.kernel.org>; Sun, 11 May 2025 06:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1746970958; x=1747575758; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EicnbWAWAWZGOgLLZdl8aWUhfZGM+BMdqy1GBjeEe78=;
        b=cRtp8w0QrtpFdIzSzXtxM2MGOCFGcqDKP9FtywkawKNErKr+53kJATrU6kMdMdLl6x
         ONnmw+pkkSdPo2+tOvxk8yVd6ObNSGmVAZ3OmEvA2trA/uUWXDHJMjPEEQ0WksZMp9g0
         5DcKHZtDUkSs/ULhsKYREm6h2oxMCcfFjgVr6rmLw18vxg9XRFSCL5P9X2HXcn6Oj+Sw
         bSc9lpDAQq61vuRmRUlvh22bVteCu5NM3Oc9WQHBLSeKYtpuonIGOioy3jCZ+62VKAXo
         BEYB2GA3qdSROtVY6H4HKV8sj6rZxCJUXtIEK//J+UB4cIidsA853ZfG+nP5nSuC9FfT
         fb1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746970958; x=1747575758;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EicnbWAWAWZGOgLLZdl8aWUhfZGM+BMdqy1GBjeEe78=;
        b=R3+trKuMjZXIef2deUGLHQjOuNKuEX1vCHHVnICOv36MxnunRjRMROZj9yfS3EzuEA
         fS2giwBTA+JnOJSFCj3jBqrp3jn4qb4s3ueQr5BRj4lT7Dhv8QtqVj9xnXW/QHoPNHW4
         Uu/26a1diA9qmgDFiZddjovfGW3iL8tDUmLKTZzYLNpbWYrkrDp+JPft3m/8QCZjOOBM
         MER5nG/+YrScw5NIeqfbqt6c6iX2lsSC7bD661gaBZn/6R0CKepDPU950T5EvDCZenBC
         RLTqP5Bq6WEEt4L5fMZrZDFI5bb+lkgnpjTDgYJARVEvTqIzf2rF31QTuA5x694MURJU
         AA5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXa28lHAbpZkA7U8IVIOxCn0C1UzbzGC0opyuEjcSeVDU6k8eVT8KFYRoB7O0XAfdlFddYkZ8VhtQ2e@vger.kernel.org
X-Gm-Message-State: AOJu0YzIQUV/o6lQHl7aWNQcrh0Qj98Gevf6XnNa9oAla3D8/U3TbXMF
	saDTC3yPAY7dgOw3FNmhHnZ7QAm7XNHKhNuYWzLcIJG/+Q5EBysjsLK3Jkc3GzU=
X-Gm-Gg: ASbGncvkyUzkc2Q0J6HEGa8qcEkVqtBWQ/J6QEHRHSr7ReGzeEBsm75yfGPkSZ9vD6P
	vEoR7ISD+C8sG3AI2myD+hJFcVyR6Fo0hdGHCcSs3uKc/rtqrTN9ir1wvkxkakT6g6kRuFJjS2i
	v7zZmYBse/XrpyyOKV/hPEuGBd/Y7seORA2uz+FQ7Spl0y/n2nqHgRSEg4Gl3gR1jy2oP6OUH4h
	iEsT0UZYtr3lTsqV8HOgh48BQO69iycmGm/f34LUxQMUVUrpSIA8TqdRl+d1EGIVkYAHUOJpc+L
	ykymsGsfmKTS7aewiBPES1zqMFp/FY8TXuoKKJlHMB5dvISDfyMbz1LH4+xNnOOrKyZuJ0hexMS
	cCkLK4rqzOLup8A==
X-Google-Smtp-Source: AGHT+IHcv0oB42y9G0S/HkQGQ5hPOUGyXWyhO3DHzdff0XOTKBe+J2a2zxdeZPOiU00EgG5CU4MCpA==
X-Received: by 2002:a17:902:e94d:b0:224:1074:6393 with SMTP id d9443c01a7336-22fc918c44amr161982025ad.43.1746970957821;
        Sun, 11 May 2025 06:42:37 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([122.171.17.86])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc754785bsm46665805ad.20.2025.05.11.06.42.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 May 2025 06:42:37 -0700 (PDT)
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
Subject: [PATCH v3 18/23] ACPI: RISC-V: Add support to update gsi range
Date: Sun, 11 May 2025 19:09:34 +0530
Message-ID: <20250511133939.801777-19-apatel@ventanamicro.com>
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
index 7b038f3b7cb0..ef4aff62fba7 100644
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
+	return -1;
+}
 #endif /* CONFIG_ACPI */
 
 #endif /* _ASM_RISCV_IRQ_H */
diff --git a/drivers/acpi/riscv/irq.c b/drivers/acpi/riscv/irq.c
index 95b4d7574ce3..2ce311042627 100644
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
+	return -1;
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
+	if (!nr_irqs) {
+		ext_intc_element->flag |= RISCV_ACPI_INTC_FLAG_PENDING;
+		ext_intc_element->nr_irqs =  U32_MAX - ext_intc_element->gsi_base;
+	} else {
+		ext_intc_element->nr_irqs = nr_irqs;
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


