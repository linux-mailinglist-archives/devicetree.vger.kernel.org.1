Return-Path: <devicetree+bounces-44697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 802ED85F4B9
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 10:42:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA0711F21865
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:42:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F0FA39FF5;
	Thu, 22 Feb 2024 09:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="QlJGNwMx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A83F7383BD
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 09:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708594883; cv=none; b=WkP5tLkb0lnVrVgyj3JIrlI1Y8cmtaD++EQrT1PXTwk7HB7VrWNJWFYKX6Igdh6EfNSBY2ur2wujCWjJo4Ny5lVr7nAjIPpCWSQ2/MEc1Tcqa4d48RZ5bW9ir89PNXzr+A9qymjNj/h+Xk/ZYJDUwLgY849ci+lj369HLLn/EO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708594883; c=relaxed/simple;
	bh=AREfP5h691mLVlaksim6LHj3bQFv44Li+RtHHtiPx0k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HJqIB7LNHUQ10L7oYq2ojvh/RcObDtrx0Ad0psoKfoe4rrUgRuoNEIQVQ8pbxWnbv/1GiRXisGAxORbn6vurf5HKhGCri2FKIMbGIr7QE41nfg7wTJy1BlzSBKCwN9J9b73YH3oHl5J2zUYtvIXaWBSMGCuOjyHtpYFSFFmKcKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=QlJGNwMx; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3c1593b82acso2297908b6e.0
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 01:41:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708594881; x=1709199681; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dw8y24wZWNZ04w7x8csHkLTJ35ivq17oSt9+7/D12iY=;
        b=QlJGNwMxRCxHmrovkpzNvW9f6Vn6jIjAiPwNaWEuQhGzQmgWajmG17LGQao4FXpxAL
         tOKTVKwgIAI2OHjw8NzFgTlNb5i9RYB0jcWM8RnnzZ0+V7c25vCscrb+97xXT4dTvakl
         X5JiqTuSVrda/ExFKCm+DaLRS/3aSaE135KYkG5hk1iSNsD/LWt7Pl6HTkJmVDlz9In1
         enZkrioHlZ/ywJg+FuBMFVJQ8ecdgTBLmcXOU+7aI6Sr2Zr9AKktjczRIVi1y/jbHK4w
         lQwoywu1J4nVTjc+Blpl/rkrt+Ac6wqEWxFFJnAFbA6QFuYTqvDCOBncu9gSR0eTZMgY
         a06g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708594881; x=1709199681;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dw8y24wZWNZ04w7x8csHkLTJ35ivq17oSt9+7/D12iY=;
        b=DDH3d6YfYr7gE4WdLwcwu5rtM5pzI0fosocfSssKorjU1jqXbWIc5gasweyzX8gNKc
         aEPJN9uHCcqdRWI8eBB9AynZKcWbekRPvFGKu+sa5j53M9/XocuhJoANNm1gCOPfixgJ
         uCyUVA7CUmZr6jvzMjJrXxfEuBGO3EW6guQMIAeqiJ5AQgVPtqm8oVe59ap52OXtvVPX
         PE+Ur6mx9P9Mz8fkI+SgfQWdv7dRdlRWv9PzYpr4lBHKpD9ka2CHdXyNjg7dnhv3awIn
         Dd7e9A2lHel1WOabgF5GRFJSC/necjXVi9zqfTJNV6P3qRn4Pi99dts46avFKikMvCn6
         jS3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXZ6rq2mFeLshK2GtXcjpz1UFq+vQ+aCsGDvj1Tkh30WMjz2OQr6i0+35moQOqqYJ9JvXgSV9bVRAIv7pVyeDWtvZ0JqTQJRlm5EQ==
X-Gm-Message-State: AOJu0YwRAOTZGX4MgxAvpUellVBqnDO6ROpUdz84ohm2Hw97ScI8dVwj
	cweVIli1hJnKAJJEUV6X82CSjN5qTXzmtpZIbPsGJClG+T4r2Go8LLTWICwBNXo=
X-Google-Smtp-Source: AGHT+IEOb1Yx2hf7SfgFjAX4PLImkj9wNrlWxC26sYi3FIjcQ1SGd91HFyROaXeS/Zjiup30flFeDw==
X-Received: by 2002:a05:6808:d47:b0:3c1:8039:f8b9 with SMTP id w7-20020a0568080d4700b003c18039f8b9mr408375oik.21.1708594880741;
        Thu, 22 Feb 2024 01:41:20 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id n15-20020a05680803af00b003c17c2b8d09sm130699oie.31.2024.02.22.01.41.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 01:41:20 -0800 (PST)
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
Subject: [PATCH v14 08/18] irqchip/riscv-intc: Add support for RISC-V AIA
Date: Thu, 22 Feb 2024 15:09:56 +0530
Message-Id: <20240222094006.1030709-9-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240222094006.1030709-1-apatel@ventanamicro.com>
References: <20240222094006.1030709-1-apatel@ventanamicro.com>
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

Add support for #1 and #2 described above in the RISC-V intc driver.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/irqchip/irq-riscv-intc.c | 32 +++++++++++++++++++++++++-------
 1 file changed, 25 insertions(+), 7 deletions(-)

diff --git a/drivers/irqchip/irq-riscv-intc.c b/drivers/irqchip/irq-riscv-intc.c
index e8d01b14ccdd..8997f6986f89 100644
--- a/drivers/irqchip/irq-riscv-intc.c
+++ b/drivers/irqchip/irq-riscv-intc.c
@@ -17,6 +17,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/smp.h>
+#include <asm/hwcap.h>
 
 static struct irq_domain *intc_domain;
 
@@ -30,6 +31,14 @@ static asmlinkage void riscv_intc_irq(struct pt_regs *regs)
 	generic_handle_domain_irq(intc_domain, cause);
 }
 
+static asmlinkage void riscv_intc_aia_irq(struct pt_regs *regs)
+{
+	unsigned long topi;
+
+	while ((topi = csr_read(CSR_TOPI)))
+		generic_handle_domain_irq(intc_domain, topi >> TOPI_IID_SHIFT);
+}
+
 /*
  * On RISC-V systems local interrupts are masked or unmasked by writing
  * the SIE (Supervisor Interrupt Enable) CSR.  As CSRs can only be written
@@ -39,12 +48,18 @@ static asmlinkage void riscv_intc_irq(struct pt_regs *regs)
 
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
@@ -115,16 +130,18 @@ static struct fwnode_handle *riscv_intc_hwnode(void)
 
 static int __init riscv_intc_init_common(struct fwnode_handle *fn)
 {
-	int rc;
+	int rc, nr_irqs = riscv_isa_extension_available(NULL, SxAIA) ? 64 : BITS_PER_LONG;
 
-	intc_domain = irq_domain_create_linear(fn, BITS_PER_LONG,
-					       &riscv_intc_domain_ops, NULL);
+	intc_domain = irq_domain_create_linear(fn, nr_irqs, &riscv_intc_domain_ops, NULL);
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
@@ -132,7 +149,8 @@ static int __init riscv_intc_init_common(struct fwnode_handle *fn)
 
 	riscv_set_intc_hwnode_fn(riscv_intc_hwnode);
 
-	pr_info("%d local interrupts mapped\n", BITS_PER_LONG);
+	pr_info("%d local interrupts mapped%s\n", nr_irqs,
+		riscv_isa_extension_available(NULL, SxAIA) ? " using AIA" : "");
 
 	return 0;
 }
-- 
2.34.1


