Return-Path: <devicetree+bounces-227138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1CCBDF0FB
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 16:32:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7234F19C7645
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 14:32:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2897D2D063B;
	Wed, 15 Oct 2025 14:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Y0+pIHMc"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6CC2C15B4
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 14:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760538690; cv=none; b=hpYKKMpvo70r/mA+BsWNmQyL2UXhYj/5MR89Gmqgb1l/4Zz3ySzfdJapzlZhNXVq6A9W5juPmBORAlASVff8/sczcTmJR9QdGQvvURKT98WBTNLkxobryUCPoYnwSpNOTzCoAauuCtJrp7LEmNJsi/9X4gsEnwoB2XTtnZ9zWu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760538690; c=relaxed/simple;
	bh=AcY2f4MlAAdbgw8jaDNOVSExq4kwIaO5QnCF7RkLa3Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cO7EtqSCc8yThKOaSZ5r0u9Pr2qOz4n2XqhYUXgM8lmpyWiFOhvzVCiad1XYsGbECWa/BTBXegrwCjsHW0AFVpoO1nVxRsTrg+cDcv8yQ0FCk/UmQ49XsursS/nygsA3UyfofIk9H47NtDU8zvfcNzrOhutspyxUjsPODdc+NEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Y0+pIHMc; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760538687;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MZ3PbqPH/LPP3qCouoXc35gFS4lh1EqDc5ueYOQ4ME8=;
	b=Y0+pIHMcimzJr5Q7HXcBPjoylUiPSPMryk3v/0rFiF4onaR6Lo1zRlcyobBbRhvijh/Z7J
	cGKwRFkAoix3lzyxSZ0/JHFg9XdqfK5f9gUn0v2mqb9hC2b3Cm/kuNlaitDQbQRURrvOjJ
	slgfVKEbQe7FTiRSRjpEKr8BzxBK+8E=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-150-fmBaKvZ0O5a-zyIxfE_i3Q-1; Wed, 15 Oct 2025 10:31:22 -0400
X-MC-Unique: fmBaKvZ0O5a-zyIxfE_i3Q-1
X-Mimecast-MFC-AGG-ID: fmBaKvZ0O5a-zyIxfE_i3Q_1760538680
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-47107fcb257so3219805e9.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 07:31:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760538680; x=1761143480;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MZ3PbqPH/LPP3qCouoXc35gFS4lh1EqDc5ueYOQ4ME8=;
        b=eaz+XLn4eGtGBDPWXmvulcf3TWBJPKM5d2aqcgntXuRWF8FKJeXASxjiN7+OU++JBq
         FYMRdc/jlZJ6Zx415Np5aXcex8mBwwodlToY+ZRTeaOfd5GMgtFvBXhww50pFbi8Qozz
         AIIp9sA+t2YQw6Pkj56nrAsV5XkWWTbTHBbJA4W1h7GTud1JkRcpRYEzPlkgOG1BEnqh
         n/Z/r8awDtuIeJhKThzQa3Uhmac5oK3Y5GwN6qySmSdHmaIAqPAD+KLJiPjkzHk3gtns
         SvEa2NVNoU3VzpHgKJ9lH/SwiicaC9cOXjg0VLEd0TI3gX7/4t3r3t8PQLLptRIK+hRz
         G2fQ==
X-Forwarded-Encrypted: i=1; AJvYcCU92R6HGTa+b+S8+f0u90tr6SA/okk6jpmIcsH6pe1wdD2AgtpYp5tIeU/Htrf/gAl7+Is1muUq1wjp@vger.kernel.org
X-Gm-Message-State: AOJu0YzC6i5yMuIXk/zorkv4laEYBOOC6ldbug/lUf9na9C8e4DrS1d8
	AhtFZJtb502ZnYXQrFxELYvaXfZrMMIvyXsXe1BE2mykvFNTPbZbhKmg2oDTK7+M6SG7M/fC10V
	FT2ZgtkfS2n8OApQ6RLRxZCN0xT9/r2Tre4IQq2ZIQt0D8CCkQQOKllkzxJ7tGpo=
X-Gm-Gg: ASbGncst+R3VD4PfsTnUGw+naXxFReNIRxkjGtM2U274L5ka1r8HdW0bBn8MP1Vq7IT
	90tNpddrXSWTFPVX51VRbdXptAP+6/i7wUgNaoNu++wRkIHKHKeyAB0t9Nm0vXF5rwsNAgEg693
	/RmQD1DnlJxgfUMouxCl/GLi+VhrP411C9yXD3fhagYTnSz942RncAfktg5vb/IabnygEs9MKzk
	AkmtFRnOdwArDFeYbnQA6na73g7cgyV6UiW+5JRIupvetmmBR734q73EFjrHd8mibZ+pb96Xq0z
	olhakYjgZwUKSnPqCgSen0SSSG1dE8O+JatKnBKvUj8KwIxJutPvXAo=
X-Received: by 2002:a05:600d:420d:b0:45d:cfee:7058 with SMTP id 5b1f17b1804b1-46fa9af9041mr215934915e9.22.1760538679838;
        Wed, 15 Oct 2025 07:31:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHLp6f6711sgQUKuizHpqV871t5JrC5QuuNz5v7X1cxT23Pw64P4dbArMvd8WIxfdbe/kLA1w==
X-Received: by 2002:a05:600d:420d:b0:45d:cfee:7058 with SMTP id 5b1f17b1804b1-46fa9af9041mr215934555e9.22.1760538679364;
        Wed, 15 Oct 2025 07:31:19 -0700 (PDT)
Received: from holism.lzampier.com ([2a06:5900:814a:ab00:c1c7:2e09:633d:e94e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47101c02377sm32617005e9.6.2025.10.15.07.31.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 07:31:18 -0700 (PDT)
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
Subject: [PATCH v4 3/3] irqchip/plic: add support for UltraRISC DP1000 PLIC
Date: Wed, 15 Oct 2025 15:31:07 +0100
Message-ID: <20251015143108.441291-4-lzampier@redhat.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251015143108.441291-1-lzampier@redhat.com>
References: <20251015143108.441291-1-lzampier@redhat.com>
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

When the PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM flag is present, a specialized
handler (plic_handle_irq_cp100) saves the enable state of all interrupts,
disables all interrupts except for the first pending one before reading the
claim register, and then restores the interrupts before further processing of
the claimed interrupt continues.

The driver matches on "ultrarisc,cp100-plic" to apply the quirk to all
SoCs using UR-CP100 cores, regardless of the specific SoC implementation.
This has no impact on other platforms.

Co-developed-by: Zhang Xincheng <zhangxincheng@ultrarisc.com>
Signed-off-by: Zhang Xincheng <zhangxincheng@ultrarisc.com>
Signed-off-by: Charles Mirabile <cmirabil@redhat.com>
Acked-by: Samuel Holland <samuel.holland@sifive.com>
Signed-off-by: Lucas Zampieri <lzampier@redhat.com>
---
 drivers/irqchip/irq-sifive-plic.c | 94 ++++++++++++++++++++++++++++++-
 1 file changed, 93 insertions(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index bf69a4802b71..0428e9f3423d 100644
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
+	  .data = (const void *)BIT(PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM) },
 	{}
 };
 
@@ -664,12 +752,16 @@ static int plic_probe(struct fwnode_handle *fwnode)
 		}
 
 		if (global_setup) {
+			void (*handler_fn)(struct irq_desc *) = plic_handle_irq;
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


