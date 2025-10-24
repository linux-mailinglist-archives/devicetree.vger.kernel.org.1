Return-Path: <devicetree+bounces-230720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B465AC05263
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:47:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 26927504D34
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 08:39:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E74A309F12;
	Fri, 24 Oct 2025 08:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="L3lSGeZY"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523BA3093CD
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761295032; cv=none; b=Ta3qeDXLX9G0FxzaBzjfdjmrkUh8AGdqRq+bioevRte+BnI6IlKPeV9NQHqn9svvP051vVuQkvYy7J8aDPbYowSWIEDJ8nd5h4gUq5+ffPybcLhiHP176eZN/OmSbtUrI6eNtojrkPnj1hjMAJa2hfXlUSJIuvJd+v+l+o8fD7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761295032; c=relaxed/simple;
	bh=K2HhgskP3H/4M/wjnZbsRyaDQCuBFj5Hdoc9ZE42YzU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QF/hYjA7+v4aLonjc+tHUn8CwnFJoy8FiXnTCWpZe9ZTebFNUL2rGUCIVmuvi83a+xY/c7ix5xZLSOpQgSNs4mzEEOB6HQu87YUojlYDWaw6em4TI002sGeJ7tnj2hBM74WUBvybB1a4rsyOyf6WQE1JzGGdHhWtK7gnqHfe6F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=L3lSGeZY; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1761295029;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5IT49IQx4naO1r1BdT6bWbCUaLMDI3v7xXAjUka+ohY=;
	b=L3lSGeZYf/HpwxE6Ftu2+GtsHIr/lQ6keu1ELgWzs9b/M3PTMTyed0eSIWmej2VWoMOAix
	KTMVDO9OzcSwSBRheSv5/ZlPkyGEpbuLXPdrTyZ8Z3omZdDly4jRXxK8+FC4X7NUg0h1NT
	RNuqrqxG/nkKz39MF/E1vpr0FwGh1L8=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-576-8iqJZCPSMVuJMQwYoxns4g-1; Fri, 24 Oct 2025 04:37:08 -0400
X-MC-Unique: 8iqJZCPSMVuJMQwYoxns4g-1
X-Mimecast-MFC-AGG-ID: 8iqJZCPSMVuJMQwYoxns4g_1761295027
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-471005f28d2so9103615e9.0
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 01:37:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761295027; x=1761899827;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5IT49IQx4naO1r1BdT6bWbCUaLMDI3v7xXAjUka+ohY=;
        b=fD4Zs6imfg/7WbGhSwxzY8dGsspVudVCLVzZUd3ifnBOqzttVQzqZccBMO8+8TXTTB
         WZBhqRcN9IkKWyOUlZrYeQC0KXraRZH1aa2sIVyllVaymx+FloqNWqCsFIfZFW0EWMOK
         Rz8vNj9fx/LEdX5YE806DsF4gsn6NdURExL6z/NX+DnUMgfx/5AD3lrK+HCqiuWddi3r
         tkcGH7QVAtBZzafZxaiYuVKWHoksAwTHWdJXZOCc9zFh9ysXLyks8WWgCXxNd8X1Doco
         3E7HmBaMVQ2rX5g/L1F2jrOAJJP/fIhnlep68XbdJh7mwU7LEyvKuopUMTKsFGgZKu71
         xyGQ==
X-Forwarded-Encrypted: i=1; AJvYcCUjq2MDBBN6Pmti07mlTjhNQnOGXOYmTZ3Ycnczo+YfgRitbX92/d7taviewoce+9rjVOehfdRw4E9x@vger.kernel.org
X-Gm-Message-State: AOJu0YxFvWxlpPSCRJ0lrKyG7/J2g2Wu2pv15Osay084eX5M4/FKaS8H
	sZk8CuLraNX2PbAWzNilJPik7VQzQQ+6SJDuR6qYetqNzK+LemolmuxRgFnnsi8zC6C0VrAemBv
	cjo7OMoffx8b9rFqyEhWgdsh+czDZvjn3jY+gqIMsZh0FS0f7lIcX74FQ6dOr+h0=
X-Gm-Gg: ASbGncuKleX8189Dwuo9FQbA1aGiDxvrrU4B+iYJHVm0nr+pqgZRfk3NtDWXZXGWBLC
	Qoq0XSyiRZiDHi8jqTdpaiwX4Yz7u+EofrooZjZ560cSTKKJIseahqiEmQoR7O5uewbjKIsOcJf
	qdNGXuD8cCbn5chIhGbmc5aAZMNkV/R6E4DcBaD63pKFXGzq+zBjhMZHEjtoaumC7nGt2Fkgdhm
	kwyfBBSbWpyNWnwixG2uNpWTu9yJ7e5eHHnCSdkxbYOCxYzVHhwy47AqUMPicwNtCpMxcrmIfvd
	8lXIhsOfgxAR9mMyqHAtSiv6kaRPkMGMMY8MF6mrxHGIjbm5Jqn7YghfgT1Dak2/zbIxs7UBlyb
	MX5FAC0Ai
X-Received: by 2002:a05:600c:154b:b0:46f:b42e:edcd with SMTP id 5b1f17b1804b1-47117925d59mr167079915e9.38.1761295026808;
        Fri, 24 Oct 2025 01:37:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHABp1V97kl04EvJJ7E4Ix+e6A0Tpy/3SLGTAbnd7bu3MUfhtp6cG5IYxmZlmc9oJMTlIO6zw==
X-Received: by 2002:a05:600c:154b:b0:46f:b42e:edcd with SMTP id 5b1f17b1804b1-47117925d59mr167079575e9.38.1761295026379;
        Fri, 24 Oct 2025 01:37:06 -0700 (PDT)
Received: from holism.lzampier.com ([148.252.9.235])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429897e77dasm8111636f8f.2.2025.10.24.01.37.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 01:37:05 -0700 (PDT)
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
	Zhang Xincheng <zhangxincheng@ultrarisc.com>,
	Lucas Zampieri <lzampier@redhat.com>
Subject: [PATCH v6 4/4] irqchip/plic: add support for UltraRISC DP1000 PLIC
Date: Fri, 24 Oct 2025 09:36:43 +0100
Message-ID: <20251024083647.475239-5-lzampier@redhat.com>
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

Add a new compatible for the plic found in UltraRISC DP1000 with a quirk to
work around a known hardware bug with IRQ claiming in the UR-CP100 cores.

When claiming an interrupt on UR-CP100 cores, all other interrupts must be
disabled before the claim register is accessed to prevent incorrect
handling of the interrupt. This is a hardware bug in the CP100 core
implementation, not specific to the DP1000 SoC.

When the PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM flag is present, a
specialized handler (plic_handle_irq_cp100) saves the enable state of all
interrupts, disables all interrupts except for the first pending one before
reading the claim register, and then restores the interrupts before further
processing of the claimed interrupt continues.

This implementation leverages the enable_save optimization from the
previous patch, which maintains the current interrupt enable state in
memory, avoiding additional register reads during the workaround.

The driver matches on "ultrarisc,cp100-plic" to apply the quirk to all
SoCs using UR-CP100 cores, regardless of the specific SoC implementation.
This has no impact on other platforms.

Co-developed-by: Zhang Xincheng <zhangxincheng@ultrarisc.com>
Signed-off-by: Zhang Xincheng <zhangxincheng@ultrarisc.com>
Signed-off-by: Charles Mirabile <cmirabil@redhat.com>
Acked-by: Samuel Holland <samuel.holland@sifive.com>
Signed-off-by: Lucas Zampieri <lzampier@redhat.com>
---
 drivers/irqchip/irq-sifive-plic.c | 116 +++++++++++++++++++++++++++++-
 1 file changed, 115 insertions(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index d518a8b468742..786be200248f9 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -49,6 +49,8 @@
 #define CONTEXT_ENABLE_BASE		0x2000
 #define     CONTEXT_ENABLE_SIZE		0x80

+#define PENDING_BASE                    0x1000
+
 /*
  * Each hart context has a set of control registers associated with it.  Right
  * now there's only two: a source priority threshold over which the hart will
@@ -63,6 +65,7 @@
 #define	PLIC_ENABLE_THRESHOLD		0

 #define PLIC_QUIRK_EDGE_INTERRUPT	0
+#define PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM	1

 struct plic_priv {
 	struct fwnode_handle *fwnode;
@@ -388,6 +391,110 @@ static void plic_handle_irq(struct irq_desc *desc)
 	chained_irq_exit(chip, desc);
 }
 
+static u32 cp100_isolate_pending_irq(int nr_irq_groups, u32 ie[],
+				      u32 __iomem *pending,
+				      u32 __iomem *enable)
+{
+	u32 pending_irqs = 0;
+	int i, j;
+
+	/* Look for first pending interrupt */
+	for (i = 0; i < nr_irq_groups; i++) {
+		/* Any pending interrupts would be annihilated, so skip checking them */
+		if (!ie[i])
+			continue;
+
+		pending_irqs = ie[i] & readl_relaxed(pending + i);
+
+		if (pending_irqs)
+			break;
+	}
+
+	if (!pending_irqs)
+		return 0;
+
+	/* Isolate lowest set bit*/
+	pending_irqs &= -pending_irqs;
+
+	/* Disable all interrupts but the first pending one */
+	for (j = 0; j < nr_irq_groups; j++) {
+		u32 new_mask = j == i ? pending_irqs : 0;
+
+		/* If the new mask does not differ, skip writing it */
+		if (new_mask == ie[j])
+			continue;
+
+		writel_relaxed(new_mask, enable + j);
+	}
+
+	return pending_irqs;
+}
+
+static irq_hw_number_t cp100_get_hwirq(struct plic_handler *handler,
+					void __iomem *claim)
+{
+	int nr_irq_groups = DIV_ROUND_UP(handler->priv->nr_irqs, 32);
+	u32 __iomem *pending = handler->priv->regs + PENDING_BASE;
+	u32 __iomem *enable = handler->enable_base;
+	irq_hw_number_t hwirq = 0;
+	u32 iso_mask;
+	int i;
+
+	guard(raw_spinlock)(&handler->enable_lock);
+
+	/* Existing enable state is already cached in enable_save */
+	iso_mask = cp100_isolate_pending_irq(nr_irq_groups, handler->enable_save, pending, enable);
+
+	if (!iso_mask)
+		return 0;
+
+	/*
+	 * Interrupts delievered to hardware still become pending, but only
+	 * interrupts that are both pending and enabled can be claimed.
+	 * Clearing enable bit for all interrupts but the first pending one
+	 * avoids hardware bug that occurs during read from claim register
+	 * with more than one eligible interrupt.
+	 */
+	hwirq = readl(claim);
+
+	/* Restore previous state */
+	for (i = 0; i < nr_irq_groups; i++) {
+		u32 stored = handler->enable_save[i];
+		u32 written = i == hwirq / 32 ? iso_mask : 0;
+
+		/* If we did not need to change the mask, no need to change it back */
+		if (stored == written)
+			continue;
+
+		writel_relaxed(stored, enable + i);
+	}
+
+	return hwirq;
+}
+
+static void plic_handle_irq_cp100(struct irq_desc *desc)
+{
+	struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
+	struct irq_chip *chip = irq_desc_get_chip(desc);
+	void __iomem *claim = handler->hart_base + CONTEXT_CLAIM;
+	irq_hw_number_t hwirq;
+
+	WARN_ON_ONCE(!handler->present);
+
+	chained_irq_enter(chip, desc);
+
+	while ((hwirq = cp100_get_hwirq(handler, claim))) {
+		int err = generic_handle_domain_irq(handler->priv->irqdomain, hwirq);
+
+		if (unlikely(err)) {
+			pr_warn_ratelimited("%pfwP: can't find mapping for hwirq %lu\n",
+					    handler->priv->fwnode, hwirq);
+		}
+	}
+
+	chained_irq_exit(chip, desc);
+}
+
 static void plic_set_threshold(struct plic_handler *handler, u32 threshold)
 {
 	/* priority must be > threshold to trigger an interrupt */
@@ -424,6 +531,8 @@ static const struct of_device_id plic_match[] = {
 	  .data = (const void *)BIT(PLIC_QUIRK_EDGE_INTERRUPT) },
 	{ .compatible = "thead,c900-plic",
 	  .data = (const void *)BIT(PLIC_QUIRK_EDGE_INTERRUPT) },
+	{ .compatible = "ultrarisc,cp100-plic",
+	  .data = (const void *)BIT(PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM) },
 	{}
 };
 
@@ -658,12 +767,17 @@ static int plic_probe(struct fwnode_handle *fwnode)
 		}

 		if (global_setup) {
+			void (*handler_fn)(struct irq_desc *) = plic_handle_irq;
+
+			if (test_bit(PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM, &handler->priv->plic_quirks))
+				handler_fn = plic_handle_irq_cp100;
+
 			/* Find parent domain and register chained handler */
 			domain = irq_find_matching_fwnode(riscv_get_intc_hwnode(), DOMAIN_BUS_ANY);
 			if (domain)
 				plic_parent_irq = irq_create_mapping(domain, RV_IRQ_EXT);
 			if (plic_parent_irq)
-				irq_set_chained_handler(plic_parent_irq, plic_handle_irq);
+				irq_set_chained_handler(plic_parent_irq, handler_fn);

 			cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
 					  "irqchip/sifive/plic:starting",
-- 
2.51.0


