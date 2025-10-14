Return-Path: <devicetree+bounces-226689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 39023BDA7C1
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 17:51:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C2A03544A18
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5904301711;
	Tue, 14 Oct 2025 15:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Gmuh3eS3"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C80530146F
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760456484; cv=none; b=jw4otvSC9x5sgOS1gz1ESsq0AJqSZNC1zB7DutK/3mPNfXsiJ3AMh/1c9I6cPsbYQMBJwPOtIEYfEvgTqywKSb33HXRpLKmiEDMbnsQOBiq/Yd7EO5twJuC3LNtNv46V2vrwoxCnexcphi0atPiAo6eLIa2J3ejOZ4WQvXd9468=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760456484; c=relaxed/simple;
	bh=KV9ucYdrSd7aV5THkg1HTTYQyvCfSHuotGgMSDPE0ws=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Mmq2H6qwu5N3nIZZDY0Kr8t4TJSuJDpUXRbqqb/2ZnFrgI7AHsQzsTC4ju7jmQ5pMKgdOAKUmBZCKiE95oyyoAcrgm/ge7vz/mnkJTmi8qTG6BLRBi8x5z3RU1GlvxDJDPMSb7QRgOGd5xwPGJcBBmB1BTD9ecwwU5EdegCTH1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Gmuh3eS3; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760456480;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=v7lZewkuBAVdyN4JZJP+nOAcqX15LbPPR5tHpYtIJSQ=;
	b=Gmuh3eS3VYgMI2zNjciMnKDB9TYVGBSl5wIArhWHfSTuwfQP04Rr+iQgDn3TFqoHHX7qQE
	uVvQ553SR0fFkmCyDWZjFiXrKkfTngEV58fikEaDo69UkXA9h0wgFEyOigDEmmeRGX1Rqv
	C0ZWOAdotubI06jH0vPlXMwyFjMaw6w=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-475-hHCWj1spMBqhMpO28xrQyQ-1; Tue, 14 Oct 2025 11:41:18 -0400
X-MC-Unique: hHCWj1spMBqhMpO28xrQyQ-1
X-Mimecast-MFC-AGG-ID: hHCWj1spMBqhMpO28xrQyQ_1760456477
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-b448c864d45so522208766b.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 08:41:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760456477; x=1761061277;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v7lZewkuBAVdyN4JZJP+nOAcqX15LbPPR5tHpYtIJSQ=;
        b=sAyJETH4RJJy4JIXGwp8zoHyQBlw6PTiju/nFX/LBChl1KbbLw4cuHaS7En9/cD28D
         m9EZILA+AP4MaRfcxzRBq9kxRWH+HE1bHcGu+NAlF/S1rIydeLzPDCbcUla2YODSOKvB
         fF1PR7WNckaVqghAXS4hyvc9Y5+Gm6/BoZ3xLhj8lgdRo1ROzRbDRsMD4hcaAguuZmDt
         yIzCV0RsKIZKbmdSx3SigBFeWam3Bk/XlmcO4CK4WoRJikfp5jlq7Hgx7aHIPB1YUse0
         WlbIoA5VllzWkd1bQ0cTaFBGCfreMV6eH0qrxsiUiAy85D4Pn7C9I5jlmOGRx0yMZ0DN
         l7Nw==
X-Forwarded-Encrypted: i=1; AJvYcCUhQawRQcmrl6abT8fxnLE4x4FogZwQwpVxY2yJeAG7dbpPcd3oZhGmeWMyvcmAS8YJ/j8YKsPpm4CF@vger.kernel.org
X-Gm-Message-State: AOJu0YxhUhsUJym7mnojksci0RWaSJxtZeHt7+RfeNNcO1RZkf3IxdVS
	J5aH7X7h8hDVcF3Nl9Rc1BOFXas/9e3P3yYy8ffLcWZoK8JiJe9JHhrjZwfa3n6liQ+dv6CXJw2
	HDB09hoMYW9cyf8Ny8yZ6RcqRBvatJN8Zu+NMBncytyjoZOA3PAqos0WhGp3aohg=
X-Gm-Gg: ASbGncsAL3Vq7MFldkxMrgrPRtq6gPbCM+ZBjhCG9JwtODJoWvZnoJfwBOUWl3yKbSr
	s0W2e4W1FwRQ0iFsHiMMDDwiScmwb3BKz426XdNMsqCQHDYYA3/13FdomgMukLzyKqmboFvtcJ2
	M1T7a+vy365RY8/Im6WMYo+cS0GQYIgVsM98Px68R2FyGaAc0+oEqLwzp7pXVLPi30DThvhkDu3
	sp6N0roRezfT9DoIWdmU2/TXba986GTXNMMLvR67jqkwX9oS2ZwVcSOoD3myZFEidNuNTfjvqsE
	2vJymvbJgvYdXKkjFC1JDRebKKasKlYExdtJPl3laes7SFp9lg==
X-Received: by 2002:a17:906:c14c:b0:b49:96e4:183c with SMTP id a640c23a62f3a-b50a9a6cdebmr2459862466b.9.1760456477277;
        Tue, 14 Oct 2025 08:41:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxi3HOmmPdFAXXJcKIC3OMf7TwEi8WYlD9KX4pDU2Vz/Xka6zpLXX+wOVIoz+BKQRNnG1wDg==
X-Received: by 2002:a17:906:c14c:b0:b49:96e4:183c with SMTP id a640c23a62f3a-b50a9a6cdebmr2459858366b.9.1760456476812;
        Tue, 14 Oct 2025 08:41:16 -0700 (PDT)
Received: from holism.lzampier.com ([148.252.9.235])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5cba45b3cbsm7897866b.40.2025.10.14.08.41.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 08:41:16 -0700 (PDT)
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
Subject: [PATCH v3 3/3] irqchip/plic: add support for UltraRISC DP1000 PLIC
Date: Tue, 14 Oct 2025 16:40:57 +0100
Message-ID: <20251014154100.168236-4-lzampier@redhat.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251014154100.168236-1-lzampier@redhat.com>
References: <20251014154100.168236-1-lzampier@redhat.com>
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

When the PLIC_QUIRK_CLAIM_REGISTER is present, a specialized handler
(plic_handle_irq_cp100) saves the enable state of all interrupts, disables
all interrupts except for the first pending one before reading the claim
register, and then restores the interrupts before further processing of
the claimed interrupt continues.

The driver matches on "ultrarisc,cp100-plic" to apply the quirk to all
SoCs using UR-CP100 cores, regardless of the specific SoC implementation.
This has no impact on other platforms.

Co-developed-by: Zhang Xincheng <zhangxincheng@ultrarisc.com>
Signed-off-by: Zhang Xincheng <zhangxincheng@ultrarisc.com>
Signed-off-by: Charles Mirabile <cmirabil@redhat.com>
Signed-off-by: Lucas Zampieri <lzampier@redhat.com>
---
 drivers/irqchip/irq-sifive-plic.c | 94 ++++++++++++++++++++++++++++++-
 1 file changed, 93 insertions(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index bf69a4802b71..1d528904b353 100644
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
+#define PLIC_QUIRK_CLAIM_REGISTER	1
 
 struct plic_priv {
 	struct fwnode_handle *fwnode;
@@ -394,6 +397,89 @@ static void plic_handle_irq(struct irq_desc *desc)
 	chained_irq_exit(chip, desc);
 }
 
+static bool cp100_isolate_pending_irq(int nr_irq_groups, u32 ie[],
+				       void __iomem *pending,
+				       void __iomem *enable)
+{
+	u32 pending_irqs = 0;
+	int i, j;
+
+	/* Look for first pending interrupt */
+	for (i = 0; i < nr_irq_groups; i++) {
+		pending_irqs = ie[i] & readl_relaxed(pending + i * sizeof(u32));
+		if (pending_irqs)
+			break;
+	}
+
+	if (!pending_irqs)
+		return false;
+
+	/* Disable all interrupts but the first pending one */
+	for (j = 0; j < nr_irq_groups; j++) {
+		u32 new_mask = 0;
+
+		if (j == i)
+			/* Extract mask with lowest set bit */
+			new_mask = (pending_irqs & -pending_irqs);
+
+		writel_relaxed(new_mask, enable + j * sizeof(u32));
+	}
+
+	return true;
+}
+
+static irq_hw_number_t cp100_get_hwirq(struct plic_handler *handler,
+					void __iomem *claim)
+{
+	void __iomem *enable = handler->enable_base;
+	void __iomem *pending = handler->priv->regs + PENDING_BASE;
+	int nr_irqs = handler->priv->nr_irqs;
+	int nr_irq_groups = DIV_ROUND_UP(nr_irqs, 32);
+	int i;
+	irq_hw_number_t hwirq = 0;
+
+	raw_spin_lock(&handler->enable_lock);
+
+	/* Save current interrupt enable state */
+	for (i = 0; i < nr_irq_groups; i++)
+		handler->enable_save[i] = readl_relaxed(enable + i * sizeof(u32));
+
+	if (!cp100_isolate_pending_irq(nr_irq_groups, handler->enable_save, pending, enable))
+		goto out;
+
+	hwirq = readl(claim);
+
+	/* Restore previous state */
+	for (i = 0; i < nr_irq_groups; i++)
+		writel_relaxed(handler->enable_save[i], enable + i * sizeof(u32));
+out:
+	raw_spin_unlock(&handler->enable_lock);
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
+		int err = generic_handle_domain_irq(handler->priv->irqdomain,
+						    hwirq);
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
@@ -430,6 +516,8 @@ static const struct of_device_id plic_match[] = {
 	  .data = (const void *)BIT(PLIC_QUIRK_EDGE_INTERRUPT) },
 	{ .compatible = "thead,c900-plic",
 	  .data = (const void *)BIT(PLIC_QUIRK_EDGE_INTERRUPT) },
+	{ .compatible = "ultrarisc,cp100-plic",
+	  .data = (const void *)BIT(PLIC_QUIRK_CLAIM_REGISTER) },
 	{}
 };
 
@@ -664,12 +752,16 @@ static int plic_probe(struct fwnode_handle *fwnode)
 		}
 
 		if (global_setup) {
+			void (*handler_fn)(struct irq_desc *) = plic_handle_irq;
+			if (test_bit(PLIC_QUIRK_CLAIM_REGISTER, &handler->priv->plic_quirks))
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


