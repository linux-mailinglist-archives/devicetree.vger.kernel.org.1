Return-Path: <devicetree+bounces-230718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 287EFC0520B
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:45:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3B61F541884
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 08:39:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E4703093D1;
	Fri, 24 Oct 2025 08:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="di9CR2A3"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24FE306B39
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761295030; cv=none; b=fi4ADWCLW7ueQ2ipGoB2pLokK3vja9xv+hg0AxYkP/X0Fqf75Tm6gWQWVgNDb5KKmboVP+FPsiqX0ax/lKCdMhrLV3NmPNzWUR5d6MHeDrqyPtRNRQl+8wbDgEp0bDwM2+z8+iO7Hl6wgxOkWq0ryU6Uy5+hQlaPVL3qm0RdTqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761295030; c=relaxed/simple;
	bh=naIGJgRf/5Gn324ht0cLPWhi94auIFknUkjHFY6rJh0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Yx78NDdzLx16Lsv5Asr50AeDnMXp+61gzP4467WPMFjW42+tJM3wUNvpvU+Qdn8vTA/gtoeCViQhGqiUW3yjft+baNa5LjGHjX/HXIlTZZszZg4LixiybYeV0TeoD1TJMYodTsP6KY4aJyYaY3SxLDtekg1syWBUCj7JJx2BJNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=di9CR2A3; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1761295027;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7g4pB/ckzo2nT8cxJ/9GjBhmxVVtiakBTxXeOu6fIr0=;
	b=di9CR2A3qMZhsFAU68qFMOMriaWRprGwdGpuuZusl7r0on4ZKxYjOZHBuvj2no15056xBP
	Kf13rk9CekE0jLKuRMSsmXl01iyMNdoh4L8SepKCUThqhSCCIh+J6rbP5/gCR6SBeBefXY
	mvb8oXdE46P12dFTAU8+emqfM88pXN4=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-184-kthO1FftOc-Jk1QvH2_8kg-1; Fri, 24 Oct 2025 04:37:06 -0400
X-MC-Unique: kthO1FftOc-Jk1QvH2_8kg-1
X-Mimecast-MFC-AGG-ID: kthO1FftOc-Jk1QvH2_8kg_1761295025
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-4710c04a403so14751065e9.3
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 01:37:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761295025; x=1761899825;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7g4pB/ckzo2nT8cxJ/9GjBhmxVVtiakBTxXeOu6fIr0=;
        b=YmICBwdDqwC81L18UHsFozVyY4mnWSl8BH95TJXYoS7hGl3P6TTbd7WekWOLv9xU1P
         6zREriwTmIbxnrbgPR969X7jtdf0MR0XUsUvTO3RZSMN2UoIXHNnbG9zgMWyH2c4+KUp
         4CZ6zEi5XSG6/ZyZ4dKm3OV0WZAdjHmt/wlL5HnnCeXE4zkvtXdQrD4kpV5+zlrJcYcS
         /BJ41kxp8iqhVs+R5YxJfyZPUB2JsEGFr6Lc32s2FnaACQK5XFaTWYoZjZ4Oq8ptkYWZ
         K5H4zolffHlU/I2IMhwbMopuGWqoxn/X5v9JGQX8Y1Zr56ifJHDq4yQ/I0AhEmpwIecM
         gWew==
X-Forwarded-Encrypted: i=1; AJvYcCV9gWApWEL5G4DJEWWQSXsho+e9vHnTZgcX94KWV/yCcz1Eii9kLGC6poNe7UzsprtMy3kp+CB7YA3j@vger.kernel.org
X-Gm-Message-State: AOJu0YwTMrug8fUgTemZXlQl5xF9y3LLe1ejMDA2B4ga3xdkzHOQMM7T
	REMnjOZ3nTH6bCJz7lMDL7bv938jL/vmqDssWD0YsoTMbFRB12xxx42EKYkfKOHoFR0lncXGL9P
	+MH9GNpmhBq/1UbgpoP0EfwX2Hi6gUlqWpXfgDZzUKZ5cWSvoPJxGHPoMOsCOC+Q=
X-Gm-Gg: ASbGncvpbJIh1V+aOReKnbOK/IQLgjpSmVvWD4TNEi2SxHCLEKp+5gmCWlUzzZ6rmo1
	xaV0DZoqMyGa4A/ufOm79Vxn6yekqNu8AKo++z0P+T0Qmj9KfzycvLJ4/i4XST1gBoZMHvGLzmI
	000pPspXZvy1Ze9LWCfmQrO13HJuFqdoWKT6/qDE9JLz125CSpQkh3OOSXP8eg6MztLaQ4eiG/W
	KOGQmsPjspZLSbTrahmWTKE/yv6aIAsap6TAINdDM/j1H0bYeV5hLWJxasNjavQdVsaD1Nsmc7r
	fNDo4JAI0fX1g6MHLR0nWPlggMrRwdoJTAoVG/pRChAs5Tm3mMVvVbs6btlCJpS6ippvXxk/cre
	bBe6GZZap
X-Received: by 2002:a05:600c:540c:b0:46e:46c8:edac with SMTP id 5b1f17b1804b1-471178a6f9emr188687425e9.11.1761295025443;
        Fri, 24 Oct 2025 01:37:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFiPue6isAM3o8JvoJrHWMiOPf245L3GHD9ByxXO2p2tubIKm8/8NW9BN4YedrYR2Oo1SzNPQ==
X-Received: by 2002:a05:600c:540c:b0:46e:46c8:edac with SMTP id 5b1f17b1804b1-471178a6f9emr188686995e9.11.1761295025004;
        Fri, 24 Oct 2025 01:37:05 -0700 (PDT)
Received: from holism.lzampier.com ([148.252.9.235])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429897e77dasm8111636f8f.2.2025.10.24.01.37.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 01:37:04 -0700 (PDT)
From: Lucas Zampieri <lzampier@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Charles Mirabile <cmirabil@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Vivian Wang <dramforever@live.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Lucas Zampieri <lzampier@redhat.com>
Subject: [PATCH v6 3/4] irqchip/plic: enable optimization of interrupt enable state
Date: Fri, 24 Oct 2025 09:36:42 +0100
Message-ID: <20251024083647.475239-4-lzampier@redhat.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251024083647.475239-1-lzampier@redhat.com>
References: <20251024083647.475239-1-lzampier@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Charles Mirabile <cmirabil@redhat.com>

Optimize the PLIC driver by maintaining the interrupt enable state in
the handler's enable_save array during normal operation rather than only
during suspend/resume. This eliminates the need to read enable registers
during suspend and makes the enable state immediately available for
other optimizations.

Modify __plic_toggle() to take a handler pointer instead of enable_base,
allowing it to update both the hardware registers and the cached
enable_save state atomically within the existing enable_lock protection.

Remove the suspend-time enable register reading since enable_save now
always reflects the current state.

Signed-off-by: Charles Mirabile <cmirabil@redhat.com>
Signed-off-by: Lucas Zampieri <lzampier@redhat.com>
---
 drivers/irqchip/irq-sifive-plic.c | 36 +++++++++++--------------------
 1 file changed, 13 insertions(+), 23 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index cbd7697bc1481..d518a8b468742 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -94,15 +94,22 @@ static DEFINE_PER_CPU(struct plic_handler, plic_handlers);
 
 static int plic_irq_set_type(struct irq_data *d, unsigned int type);
 
-static void __plic_toggle(void __iomem *enable_base, int hwirq, int enable)
+static void __plic_toggle(struct plic_handler *handler, int hwirq, int enable)
 {
-	u32 __iomem *reg = enable_base + (hwirq / 32) * sizeof(u32);
+	u32 __iomem *base = handler->enable_base;
 	u32 hwirq_mask = 1 << (hwirq % 32);
+	int group = hwirq / 32;
+	u32 value;
+
+	value = readl(base + group);
 
 	if (enable)
-		writel(readl(reg) | hwirq_mask, reg);
+		value |= hwirq_mask;
 	else
-		writel(readl(reg) & ~hwirq_mask, reg);
+		value &= ~hwirq_mask;
+
+	handler->enable_save[group] = value;
+	writel(value, base + group);
 }
 
 static void plic_toggle(struct plic_handler *handler, int hwirq, int enable)
@@ -110,7 +117,7 @@ static void plic_toggle(struct plic_handler *handler, int hwirq, int enable)
 	unsigned long flags;
 
 	raw_spin_lock_irqsave(&handler->enable_lock, flags);
-	__plic_toggle(handler->enable_base, hwirq, enable);
+	__plic_toggle(handler, hwirq, enable);
 	raw_spin_unlock_irqrestore(&handler->enable_lock, flags);
 }
 
@@ -247,33 +254,16 @@ static int plic_irq_set_type(struct irq_data *d, unsigned int type)
 
 static int plic_irq_suspend(void)
 {
-	unsigned int i, cpu;
-	unsigned long flags;
-	u32 __iomem *reg;
 	struct plic_priv *priv;
 
 	priv = per_cpu_ptr(&plic_handlers, smp_processor_id())->priv;
 
 	/* irq ID 0 is reserved */
-	for (i = 1; i < priv->nr_irqs; i++) {
+	for (unsigned int i = 1; i < priv->nr_irqs; i++) {
 		__assign_bit(i, priv->prio_save,
 			     readl(priv->regs + PRIORITY_BASE + i * PRIORITY_PER_ID));
 	}
 
-	for_each_present_cpu(cpu) {
-		struct plic_handler *handler = per_cpu_ptr(&plic_handlers, cpu);
-
-		if (!handler->present)
-			continue;
-
-		raw_spin_lock_irqsave(&handler->enable_lock, flags);
-		for (i = 0; i < DIV_ROUND_UP(priv->nr_irqs, 32); i++) {
-			reg = handler->enable_base + i * sizeof(u32);
-			handler->enable_save[i] = readl(reg);
-		}
-		raw_spin_unlock_irqrestore(&handler->enable_lock, flags);
-	}
-
 	return 0;
 }

--
2.51.0


