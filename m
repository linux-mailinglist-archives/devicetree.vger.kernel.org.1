Return-Path: <devicetree+bounces-192932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 92497AF88CA
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 09:11:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2525D1C22070
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 07:10:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D39EC279DDF;
	Fri,  4 Jul 2025 07:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="SG5e8kig"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1B2274B48
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 07:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751612877; cv=none; b=a13cYtCqav/64vyj759TLrXloURlI+IHWWdEylr6Uwx1ssKw8CMQ8sp126LQc0+sMhTIKtpglw3EOIUPaTkAt9wEqjOOCyj44qkJ29kMK/Guf26cohCDJ7vU57zjTlAfmWk6LXRv4XT0Bi37ACTHQvaLKy0InYaeFwwxJboY2Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751612877; c=relaxed/simple;
	bh=HmUGIQxKVHOETiXQmbQMVfvnbNgiP89D8IFlOG4Z2e8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WpDnXOwOtf9LMu5gARDDn1NIm3VranipTPusUH37Shgs8dPUiFzCdw2zCWaJFsRDCKDBaP4ofTMRj5kq5+tYOucjbrx1lH1kPP7LOV3libPKJJAzcM1XJdg1oBItE0l6GXLeT7PwqePHPcreZzfX9N5Vd62DWK1Efh8zYpAQyZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=SG5e8kig; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-b170c99aa49so452202a12.1
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 00:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751612876; x=1752217676; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R+ya0GtiFk/8ci1A3C7Dw+WSyLS2yytdeeB0s74FDG4=;
        b=SG5e8kigGpcfqbY64PzSx4Dq/0T+2aFzBH+zOAiagCwqwdgXj+4A8OC/j4QlEnC5ts
         Jscc3GshuHI9yKvsbc69uQFdOVGL9sl68iVKaAMapixRzVCHUzGt5HxswQU+dhLNpwbk
         xud9db0UymYWx17/qVHu9/D5FsnjlgrPWOO74M6Hf0k0M80mtmlk+xvP/RVOcS/qZWd7
         //ruFeKVVtzpOApjgPIxU3jAoGiRN8kfaEyN9YqLS3KGnnKE5eC//KfZbKTvY4jdqN+Y
         M0K5cmXmh+CT6VhlvlsggG7kvoc4Zp5vS+j/Tc01m49GWrUHND0paXRxNU+eX0W/WYrj
         ywow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751612876; x=1752217676;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R+ya0GtiFk/8ci1A3C7Dw+WSyLS2yytdeeB0s74FDG4=;
        b=PQpOndhOWzojDmSXi+sTtE71WWarTVCBuqEFrgHNtb9AA5N/RwIVWPefP+qA1WwjnM
         oOqBtPBZAa92WwfX/FebDZx8335myifizPrU7eibElB5eKAPBedQVGT40H+GxRq27Yq/
         j6Brcg1Vrg4qKkqSSbfprzB/fmQamDDsc9wSQ1fIulschxU3El/JjelX8F+DW7UCDx+K
         hea+dakVrQsKZmyP6smdW4LuUqzpTZBHfn/oqgBPmE3Q1C86j8Cdo7Ef29odXPJ4nanq
         pT0H8bvNIDq3w8gj2QuLyNe7aPvGZ0NfL1ONQ2WvOGgryLyFbg94okS62V3TDSY37xM9
         vrCg==
X-Forwarded-Encrypted: i=1; AJvYcCWjJJnbOJWiGnS59tttnMDwxL57IF+ASrSru13DATXP+JK6IUsML+3FbtI5MOSnvg8dzQJKL/Eit20W@vger.kernel.org
X-Gm-Message-State: AOJu0YyagJpBnZ/DHdpy1Jtsd7V1FAyRFufLqnv2lI2OWuKuRdl31KLl
	XbPXkR+IDzcnPqI4HKzfxr1JyZKmoPxQ++Ja59+DU9oIJ0awZSzSMKS/IYvFV45EeFM=
X-Gm-Gg: ASbGnctHSds7/W/MdPe1/HPkmFtea89IKSRKRhltFp4/MrHwxTrVHm6x6B4+MTj2/K/
	1MfkbmTi7eQQTlgpzwEWQry6jGkzelQu02dD0gDVsKc+t36rGJ1YD1eoYOJOCJpO0BFLmo3o9fw
	YQN0E8boVR6FWEPMH7/j/Gu0JyqL/B9xrmg3UOnrJrOnhDj6Eil5eEN+ZzfkbuPbEPeCSGPHpDj
	N0UcrYj1AVCSmU0SkQAaPx/CK6EO2tRkwN+K6LJDt+t4lPxMJUPWpIbGdsY3N4b4741aWBs8dbL
	gxYFHvVzxSeu/Vou51epSgCqVa+o8tEAVOE2NuHOimFzqkBhOBaE8TQq2Uw4o7rsQqlvOtkrNF3
	eXYr+2Xt9i8FduXbxX2C1aWYvnQ==
X-Google-Smtp-Source: AGHT+IG/03mTyIl4ACwrZWxyGTrvcF6TGZgw6cqAkHeGWIoJt4VduhRgTNhbrtOhLpJY/IUYJNAMug==
X-Received: by 2002:a17:90b:3bcb:b0:311:d3a5:572a with SMTP id 98e67ed59e1d1-31aac44b7b2mr2197771a91.8.1751612875556;
        Fri, 04 Jul 2025 00:07:55 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31aaae59a93sm1358697a91.12.2025.07.04.00.07.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 00:07:55 -0700 (PDT)
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
Subject: [PATCH v8 19/24] ACPI: RISC-V: Add RPMI System MSI to GSI mapping
Date: Fri,  4 Jul 2025 12:33:51 +0530
Message-ID: <20250704070356.1683992-20-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250704070356.1683992-1-apatel@ventanamicro.com>
References: <20250704070356.1683992-1-apatel@ventanamicro.com>
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


