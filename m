Return-Path: <devicetree+bounces-187115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 200B2ADEBCA
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 14:23:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22FC9189D4FB
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 12:20:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB6492E8DE1;
	Wed, 18 Jun 2025 12:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="ka38MkA/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73DC82E7F34
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 12:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750249012; cv=none; b=u6srpL8RmhDzw53IwxO0hKhG4hLX/EXaaIZAvV2QBWiDWk9AqWDcMGms4Rq6sQhQ3oub54Y0xqRyc4oDrniiVJensqbVj1zspUjyl1J/JP5Y/WqZJQG4bUc+j92EckzEr7zP5AlwNsjaZQPEwo3V7JfPPHimy9g77ilJkDN8hro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750249012; c=relaxed/simple;
	bh=HmUGIQxKVHOETiXQmbQMVfvnbNgiP89D8IFlOG4Z2e8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GHvfN2rGpmWsvVGq6Hn8lx1Vqy+RevLz6GFUE59eYNXhx6xe6MYqlQ84tSrtk628/PPWU0wcBh3M3OFOPn0KeTQkXVjfi0N8f2UEqVhB/cmLbPVcF+zcpiLCokX3zTz7CaXiBM6lA/yjBLxjvw5D4qqCLzkhc8rgY7W0ge/Rxl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=ka38MkA/; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7426c44e014so5698937b3a.3
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 05:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1750249011; x=1750853811; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R+ya0GtiFk/8ci1A3C7Dw+WSyLS2yytdeeB0s74FDG4=;
        b=ka38MkA/QrDwQU5RJ0sYhorcPJ1AWTjxxOff5PQkpWFvT60FlIyDkuhh3Ez9Ti7c8U
         QU8YLx7FcJWKZaFgf794saJZQkp3ZhFDLcRkPw3PsPesSlMg+JI4oqSs9kb9UQ13qkGM
         cb7YSiqqVF4q8LJNwgf/RYg2TqgJjGIuHnUIoksyEf6ww3ctaCLn40eliKIm2aRLa3LR
         Wj/Qk92Tmx1AI1H+QKcNFGN3KzMTg86ekAI7SBvqAChNQHg9vOSkMvCKZZH/g6VM9iwH
         NppkfuVWm91+GOqmgONLHInoGXA2wHjwFNJlLVAJ5u2teX8tjXu5jrXNJHjPxAaHPKTC
         tyRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750249011; x=1750853811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R+ya0GtiFk/8ci1A3C7Dw+WSyLS2yytdeeB0s74FDG4=;
        b=Ht7yx/4munRVsQsBshPzblaBK4MOXeuTMkH+FCNU+3e8/A3RDRo2QhB+AKsJhL3GV2
         hYZp6ILRvDoTbYRUyktGogPqxR/R8oPC9C6MIKItFLh0b+fReRCYbHBxgmW7JQigJYiR
         ZlQHGlmDrcsfoh60QZbHrVBOUVmbjL4oF9FR2OrY3N+EC6EOInpcrY9gy96CFyBr5y2P
         re0iYY/wZj2eQL9A3vrfHeLSkoTlGLv4JOGKIzoRsFEMOZQfF02o+2zvsWtFHi4kMkFl
         NnzVMMShh3y8VJ8sweqO4dwlxV7IJA8vXy1ZcYGuaOj25ux6ho1dwO68KR8rTBLaylMr
         YW3g==
X-Forwarded-Encrypted: i=1; AJvYcCWBeZS39bdxH6wkahZgHayOc2wHwd/2Pwx92sIRKJ4aanS0kqJxR9xnMmzLcxynzVaZevZcu9Q7qATR@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1ej1q0kvoCqnUYvmGpAasrdQVRdWtEPoI53XUgqjITVbP4GQ9
	Onh9Qx/4S9ld8qzPyoPDnxn3To+A76as8vKzMRKGEU+KqjPUFBCJCFMMudltUhBgIFA=
X-Gm-Gg: ASbGncuFYwew58tiT3GUkaCHEjPK7X4DW7ynksZW9n25k6GJMN5FC0ZPwzsLXAtq15Y
	emb3ZRCSlh+UHS3Pdn+hRFjepcWYCJm9SdCZ8+O+KY3KW33HPBNunU8czPGkN7dSgdw7yTwJxac
	diyQYf4M3mGnr5aAGY9t9ZuUOZRXqDILENioVkV7sRd7LfdqePWCuWtMOXQaBcwj7QZrPY7/L0h
	839aXKilglaLKaflBE5p5QqMVInMCzGy3GblRvOIQ1pDUhfy/Id+1Ulb4fyihvdqxW+DnkqU/f0
	Lp/61ilEwmMjAUQWzz9oq03u+VxLHEjON5Nx2csfX+wdJORXwzt5D2zOfoZkH+OduRAiBV/LSgl
	/y6kCGEu7wPbpBQEZyA==
X-Google-Smtp-Source: AGHT+IGBu9f7X1d5EGUhRQ9j96q5jUjwVSBF0M5vehfN7EkXrctEjP/TYemz83ALSInZEF27aHmtjA==
X-Received: by 2002:a05:6a00:148a:b0:736:b101:aed3 with SMTP id d2e1a72fcca58-7489cdeef7emr22605339b3a.1.1750249010475;
        Wed, 18 Jun 2025 05:16:50 -0700 (PDT)
Received: from localhost.localdomain ([122.171.23.44])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-748900d7e0asm11201177b3a.174.2025.06.18.05.16.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 05:16:49 -0700 (PDT)
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
Subject: [PATCH v6 18/23] ACPI: RISC-V: Add RPMI System MSI to GSI mapping
Date: Wed, 18 Jun 2025 17:43:53 +0530
Message-ID: <20250618121358.503781-19-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250618121358.503781-1-apatel@ventanamicro.com>
References: <20250618121358.503781-1-apatel@ventanamicro.com>
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


