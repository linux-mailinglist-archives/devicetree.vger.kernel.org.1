Return-Path: <devicetree+bounces-191860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C7CAF0A8A
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 07:19:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B427F7A23FF
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 05:18:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 229E920D4FC;
	Wed,  2 Jul 2025 05:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="K3lU5Ep0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 940A61FBEBD
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 05:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751433393; cv=none; b=c8L1lkg0ifnFbXqPpgFZ6RQk5yitvLhqbMW6s7jOFt0UznwQcRUv9qYwMx5KVvLLt/Uxl0ZHZje4urjFHutS3UrKNjGxCiq0qwG8LTZHJQ2tp5ie+iCluJRZnaFLxjmy59blT9L3IUG08q4QMROQsv+tDbUUl9M2rYsAXHCHYHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751433393; c=relaxed/simple;
	bh=HmUGIQxKVHOETiXQmbQMVfvnbNgiP89D8IFlOG4Z2e8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DeGWaPvyu5Czkps5YIUqtXABNkQ/zQnjJdtfX2f8GM8DyZ7pD3vEVUqTLQe81s6M7ZQ3xvI8/dCOMRf//QTuinvXTkdrMFR0dbAWx+RTux8I71zsrVk1fF0sro15jX8tpJc2rv0cJctVLYMjXPRH2QCyQqTVPEis2fPiEovRKZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=K3lU5Ep0; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2350b1b9129so26385015ad.0
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 22:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751433391; x=1752038191; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R+ya0GtiFk/8ci1A3C7Dw+WSyLS2yytdeeB0s74FDG4=;
        b=K3lU5Ep0Y4F8NeuPHf4pkqkRimPzASxkbkyPhz9fzQrFPgbcbXShsl+y8NVck0vooV
         YA2xLDEj2ifdjA6Y9q4ha2LRYPIuiqbNDb7IDkhXWl7VlQw0bptDFs9VM9VtlHnrnw8M
         dmnC2BYAvsK+jLuGYry/m9sQ6ZtJ2uvkhkc6HIlRct/mOGRqo7cSA5pg5d2WeY3bYpwS
         O4EF4LztoRVRmqG83psrX3C3foc4SDJ8elf7/ASBHwxS1Z636enqfnOxff//a/6zEmYN
         /YWuJJHcfXY7kqDulbQJfzzjZ55fe4pTLT3S4cnb8l1/g6bS5nIj0D4G9Ev4sOUyLSyH
         hSeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751433391; x=1752038191;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R+ya0GtiFk/8ci1A3C7Dw+WSyLS2yytdeeB0s74FDG4=;
        b=RdiKhi1GJp10XscUfpQ7bKzgcIBmxmhnaioMQ9ZkmrAR8z63Z2ZZA/ZxSm1EoujFAm
         5u/LKXOjDQgjBI3BrRUy2+NgxUneMNtc0tMDw5uHnMYPgHtvVYvlQwGBzRWIjU3uGlnj
         wIXXCo33ArgZLolKPw/dkMquaSaXKE5bWEGGqgTYIzRoQbwobO/b6RHKuEhrx8XAalyi
         zg6QN7NZn/pEn1V7ggS1AzJ7z2bPcjCQaW8+G23WiPHr94H2ZHkHg42hxOotMcGKmJ6s
         HXodZtVF3Cls9HtxlJEU0vrJmArMAMUNvagGyt3VO+OO/zMVQcS+ctm3pI2KlIWSlnzv
         BmLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpitnzTvbp/0jO3YIKc6RxQSccS3CjiUXEoZLlmvNF2FLFG5lf2c9+KsEyyb+D2hh/Kk4NWgGWszrN@vger.kernel.org
X-Gm-Message-State: AOJu0Yyqie05wrB2J5YTfbyxyhYlG1OaamyguR5IjHJKCToapcaqyYy3
	y5Q17b1w7wULfwjn+qOl8UQ2o6x3q4v9chIbKcXnJwcoiw6htextyCGrnXXJp+89EN4=
X-Gm-Gg: ASbGnctLm8jsPV86wvIUUzXRPTvR7A99oui+cMoSvgt5rVVKqmzGHap6NgcJ5aH1nHp
	YXKbfXSGtee9InaC+HN5vnQdWgZB3NvmtPPRDPRy+iKITD1seN81YJ1Qj56IIkF6zUQ4YPQQ+ct
	tNkUKTcb0xlk1aXfagwwhTwejw9MlxsGiXqhSaTh2ixCbGWgSkBbKA1vKZ5fuQB0hy89EepzQjz
	EblrZlXwKJTi0UbsNHnuNRGjU722OOE0d7rjpZS7Km+ANdw+Kq7eKQiU+3wsa+qmlPz01SjAKiU
	Z3b+WI9hPTQ3gbjLfMBbkw57OmJH3NhePdAEb+64sB3wt/J567cghCeniiZMMExGmCeOkRoMc0o
	iwe1aChlnJUYoN4Kq
X-Google-Smtp-Source: AGHT+IGVPhlwjhXki+/3hyU8U7wHE3TbWpzk5YrsdGI24+SP+ypvFn2VzK1niX3bMdBnop5rpgktYA==
X-Received: by 2002:a17:903:3c6b:b0:234:9670:cc73 with SMTP id d9443c01a7336-23c6e490fc1mr24534815ad.5.1751433390748;
        Tue, 01 Jul 2025 22:16:30 -0700 (PDT)
Received: from localhost.localdomain ([14.141.91.70])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23c6fe31933sm4719595ad.220.2025.07.01.22.16.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 22:16:30 -0700 (PDT)
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
Subject: [PATCH v7 19/24] ACPI: RISC-V: Add RPMI System MSI to GSI mapping
Date: Wed,  2 Jul 2025 10:43:40 +0530
Message-ID: <20250702051345.1460497-20-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250702051345.1460497-1-apatel@ventanamicro.com>
References: <20250702051345.1460497-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Sunil V L <sunilvl@ventanamicro.com>

The RPMI System MSI device will provide GSIs to downstream devices
(such as GED) so add it to the RISC-V GSI to fwnode mapping.

Signed-off-by: Sunil V L <sunilvl@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/riscv/include/asm/irq.h |  1 +
 drivers/acpi/riscv/irq.c     | 30 ++++++++++++++++++++++++++++++
 2 files changed, 31 insertions(+)

diff --git a/arch/riscv/include/asm/irq.h b/arch/riscv/include/asm/irq.h
index 2caf049f09c8..9c9d22f5165e 100644
--- a/arch/riscv/include/asm/irq.h
+++ b/arch/riscv/include/asm/irq.h
@@ -30,6 +30,7 @@ enum riscv_irqchip_type {
 	ACPI_RISCV_IRQCHIP_IMSIC	= 0x01,
 	ACPI_RISCV_IRQCHIP_PLIC		= 0x02,
 	ACPI_RISCV_IRQCHIP_APLIC	= 0x03,
+	ACPI_RISCV_IRQCHIP_SMSI		= 0x04,
 };
 
 int riscv_acpi_get_gsi_info(struct fwnode_handle *fwnode, u32 *gsi_base,
diff --git a/drivers/acpi/riscv/irq.c b/drivers/acpi/riscv/irq.c
index cc1928422418..d9a2154d6c6a 100644
--- a/drivers/acpi/riscv/irq.c
+++ b/drivers/acpi/riscv/irq.c
@@ -168,6 +168,33 @@ static int __init riscv_acpi_register_ext_intc(u32 gsi_base, u32 nr_irqs, u32 nr
 	return 0;
 }
 
+static acpi_status __init riscv_acpi_create_gsi_map_smsi(acpi_handle handle, u32 level,
+							 void *context, void **return_value)
+{
+	acpi_status status;
+	u64 gbase;
+
+	if (!acpi_has_method(handle, "_GSB")) {
+		acpi_handle_err(handle, "_GSB method not found\n");
+		return AE_ERROR;
+	}
+
+	status = acpi_evaluate_integer(handle, "_GSB", NULL, &gbase);
+	if (ACPI_FAILURE(status)) {
+		acpi_handle_err(handle, "failed to evaluate _GSB method\n");
+		return status;
+	}
+
+	riscv_acpi_register_ext_intc(gbase, 0, 0, 0, ACPI_RISCV_IRQCHIP_SMSI);
+	status = riscv_acpi_update_gsi_handle((u32)gbase, handle);
+	if (ACPI_FAILURE(status)) {
+		acpi_handle_err(handle, "failed to find the GSI mapping entry\n");
+		return status;
+	}
+
+	return AE_OK;
+}
+
 static acpi_status __init riscv_acpi_create_gsi_map(acpi_handle handle, u32 level,
 						    void *context, void **return_value)
 {
@@ -222,6 +249,9 @@ void __init riscv_acpi_init_gsi_mapping(void)
 
 	if (acpi_table_parse_madt(ACPI_MADT_TYPE_APLIC, riscv_acpi_aplic_parse_madt, 0) > 0)
 		acpi_get_devices("RSCV0002", riscv_acpi_create_gsi_map, NULL, NULL);
+
+	/* Unlike PLIC/APLIC, SYSMSI doesn't have MADT */
+	acpi_get_devices("RSCV0006", riscv_acpi_create_gsi_map_smsi, NULL, NULL);
 }
 
 static acpi_handle riscv_acpi_get_gsi_handle(u32 gsi)
-- 
2.43.0


