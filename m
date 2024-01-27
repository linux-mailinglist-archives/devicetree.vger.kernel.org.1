Return-Path: <devicetree+bounces-35828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CE81483EE70
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 17:23:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F177D1C22114
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 16:23:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85EC72E408;
	Sat, 27 Jan 2024 16:19:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="NQnTrdyv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D5E5B213
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 16:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706372385; cv=none; b=lbe7S4djt5RRVJVpAJKJg5Y8WK1uAt7bp4XGdWBADZM/cJgAV7OB7bPA3Am/fR19myez5r2/FYBlMX6DDvfOVS7xg14KANtPc4ujNjxhwpAAhtsqtVG1rxklh+y0NYOUDZB9aDGuVYseY70xipYooKi3/gY3r86KFMdKciGUp7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706372385; c=relaxed/simple;
	bh=NedQTssx+bEK6yK03BuZhPdTxJAmlvDpkxuNfU2rSeA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=k87i2nr4v14Bi2iH5avQT6KFU5mdFTI05bQskfmYgUVR+1s8UNrxTz8AHWpV+NnOWE3JsBe7rL6TdyQqffnIfab2Bj/kYrtdPd5lN4/35OptVoiRXVO73naUGXxGeQ9a46h5mFd8LRqEj8GC3BYeca/84UYEqE+nsXm54UolPWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=NQnTrdyv; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-5ce07cf1e5dso690891a12.2
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 08:19:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1706372383; x=1706977183; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2RNpF/CWjVyq2jAidq9g4JrMuQdRaRtl2xGmvH6ydPA=;
        b=NQnTrdyvhSHTQKeyX1bpRRbkLkrVU+w9Ird1sIsu6gQmKceBl8kI9gV5mqSSHXrNNL
         XV+zW1yCdnWzJxwZ/r5vra58Xjp6oDC1eWqiK95j3wFaVgZRDNAN0BkEDK81Ws8zQw6O
         8Lmq9P9sp7i+Roe7O39cugbrmiQM9F12+gko4iOb4Qj8iaE6pIbOM9/b69nfOo9YZaFz
         kffGj+YitMuokZxLcybsLgRu79OD9CI5rGzex6E0rdpDr7MViNy3/VgrA8g87FpCeUfz
         tAIj8kaRFFU1kC9N8+mNW8Jv7hkEDfz3HTirbFnfyAsaY3DxGL3O6vxPo7HducxP8rDl
         TcRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706372383; x=1706977183;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2RNpF/CWjVyq2jAidq9g4JrMuQdRaRtl2xGmvH6ydPA=;
        b=DoASiLH29K/+dzMbv8bE2rB/jlOw5cEjOc+4tzUM/SMvXGFnngkSkOyldCgyVlC7te
         fI+dt+dMBO8Ec29GyOoEtNYKqCYc0krZZcydAie97nvpSWWD61htWVuFBBdiu4tGHawP
         87i9KJxMrBJKyLPg/jCY+KEZVO2X8sfeV9Im14vCgcrqFGiE4rDylgV1UwBqQRrjcY5C
         SpsSnx6eUaiAw0dwjzWD7hS+EElt+GK5/PTHlWgdhMqA63Ii8exNSyx7SREQ8ojg+zzh
         Sy2rhDDSuM1BpVGTyBWGLImf6zbZm98kftfSydcppIFwnV8tNpEd1QaDkXlVmfYMCTCp
         P8lg==
X-Gm-Message-State: AOJu0YyNjUUTwhBxNDdmeuDGNXlM1QPXVXw8ig4c4WqUmZkjsU/5STSL
	FOQ85SOpFzLR0SkiUqs0N/MV3peG4FZZM58HAYCVsgq713PfMzRspUrnnDwbBRw=
X-Google-Smtp-Source: AGHT+IGTKXIA5A/F3TIh/2K3JI3cv2cr3UOEKzMWDcSO7KNGHDfWEcFiCVK572zchauO7w9gUHQZbQ==
X-Received: by 2002:a17:90a:9205:b0:295:488:5ad7 with SMTP id m5-20020a17090a920500b0029504885ad7mr654558pjo.5.1706372382559;
        Sat, 27 Jan 2024 08:19:42 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.86.17])
        by smtp.gmail.com with ESMTPSA id d11-20020a17090ac24b00b00290f8c708d0sm5091620pjx.57.2024.01.27.08.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 08:19:42 -0800 (PST)
From: Anup Patel <apatel@ventanamicro.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Saravana Kannan <saravanak@google.com>,
	Anup Patel <anup@brainfault.org>,
	linux-riscv@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v12 15/25] irqchip/riscv-intc: Add support for RISC-V AIA
Date: Sat, 27 Jan 2024 21:47:43 +0530
Message-Id: <20240127161753.114685-16-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240127161753.114685-1-apatel@ventanamicro.com>
References: <20240127161753.114685-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RISC-V advanced interrupt architecture (AIA) extends the per-HART
local interrupts in following ways:
1. Minimum 64 local interrupts for both RV32 and RV64
2. Ability to process multiple pending local interrupts in same
   interrupt handler
3. Priority configuration for each local interrupts
4. Special CSRs to configure/access the per-HART MSI controller

We add support for #1 and #2 described above in the RISC-V intc driver.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/irqchip/irq-riscv-intc.c | 34 ++++++++++++++++++++++++++------
 1 file changed, 28 insertions(+), 6 deletions(-)

diff --git a/drivers/irqchip/irq-riscv-intc.c b/drivers/irqchip/irq-riscv-intc.c
index e8d01b14ccdd..bab536bbaf2c 100644
--- a/drivers/irqchip/irq-riscv-intc.c
+++ b/drivers/irqchip/irq-riscv-intc.c
@@ -17,6 +17,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/smp.h>
+#include <asm/hwcap.h>
 
 static struct irq_domain *intc_domain;
 
@@ -30,6 +31,15 @@ static asmlinkage void riscv_intc_irq(struct pt_regs *regs)
 	generic_handle_domain_irq(intc_domain, cause);
 }
 
+static asmlinkage void riscv_intc_aia_irq(struct pt_regs *regs)
+{
+	unsigned long topi;
+
+	while ((topi = csr_read(CSR_TOPI)))
+		generic_handle_domain_irq(intc_domain,
+					  topi >> TOPI_IID_SHIFT);
+}
+
 /*
  * On RISC-V systems local interrupts are masked or unmasked by writing
  * the SIE (Supervisor Interrupt Enable) CSR.  As CSRs can only be written
@@ -39,12 +49,18 @@ static asmlinkage void riscv_intc_irq(struct pt_regs *regs)
 
 static void riscv_intc_irq_mask(struct irq_data *d)
 {
-	csr_clear(CSR_IE, BIT(d->hwirq));
+	if (IS_ENABLED(CONFIG_32BIT) && d->hwirq >= BITS_PER_LONG)
+		csr_clear(CSR_IEH, BIT(d->hwirq - BITS_PER_LONG));
+	else
+		csr_clear(CSR_IE, BIT(d->hwirq));
 }
 
 static void riscv_intc_irq_unmask(struct irq_data *d)
 {
-	csr_set(CSR_IE, BIT(d->hwirq));
+	if (IS_ENABLED(CONFIG_32BIT) && d->hwirq >= BITS_PER_LONG)
+		csr_set(CSR_IEH, BIT(d->hwirq - BITS_PER_LONG));
+	else
+		csr_set(CSR_IE, BIT(d->hwirq));
 }
 
 static void riscv_intc_irq_eoi(struct irq_data *d)
@@ -115,16 +131,20 @@ static struct fwnode_handle *riscv_intc_hwnode(void)
 
 static int __init riscv_intc_init_common(struct fwnode_handle *fn)
 {
-	int rc;
+	int rc, nr_irqs = riscv_isa_extension_available(NULL, SxAIA) ?
+			  64 : BITS_PER_LONG;
 
-	intc_domain = irq_domain_create_linear(fn, BITS_PER_LONG,
+	intc_domain = irq_domain_create_linear(fn, nr_irqs,
 					       &riscv_intc_domain_ops, NULL);
 	if (!intc_domain) {
 		pr_err("unable to add IRQ domain\n");
 		return -ENXIO;
 	}
 
-	rc = set_handle_irq(&riscv_intc_irq);
+	if (riscv_isa_extension_available(NULL, SxAIA))
+		rc = set_handle_irq(&riscv_intc_aia_irq);
+	else
+		rc = set_handle_irq(&riscv_intc_irq);
 	if (rc) {
 		pr_err("failed to set irq handler\n");
 		return rc;
@@ -132,7 +152,9 @@ static int __init riscv_intc_init_common(struct fwnode_handle *fn)
 
 	riscv_set_intc_hwnode_fn(riscv_intc_hwnode);
 
-	pr_info("%d local interrupts mapped\n", BITS_PER_LONG);
+	pr_info("%d local interrupts mapped%s\n",
+		nr_irqs, riscv_isa_extension_available(NULL, SxAIA) ?
+			 " using AIA" : "");
 
 	return 0;
 }
-- 
2.34.1


