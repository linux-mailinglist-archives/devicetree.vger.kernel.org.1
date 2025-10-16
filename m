Return-Path: <devicetree+bounces-227515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BF3BE234F
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 10:44:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0B293A6BDF
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 08:43:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A42E130C34D;
	Thu, 16 Oct 2025 08:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="YRnFqRas"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21633090F9
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760604207; cv=none; b=AXLNp4Xkn6w1AqhNWuFZBGJUMbdiMYbQTTM2h7Zof0OjIouBJiS/c3VbjT209XKyI41r1F7BQvXoR8515Utxxtk46imCxlLQcLBGkz3Y8DAwEdzx6C918X9Ej4g/mqmZ/TgUCUHcYGpL2Myz3UKILlnJDhgJksesjinZWxwf/LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760604207; c=relaxed/simple;
	bh=lo3XNgqHRfgF/0r5ZS5b6kNk9J2xXhQnGNi2YRY9P8E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=o07wHICYkjzID+A/ozvaW/WlKDeDO27Cu8MXTL/2Fpg8BV3lTdTqQTh9028LYG1PrO/kmNKUKoMlozMyTWii4Y//80Mx4+q79j4B76Rhm5ODLITYzTcBYGZJGe/WgA68cf+1yRQwRuyfEnmdp4KRMCsfwL3HF/1mN/xgbpNs0eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=YRnFqRas; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760604204;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ax80nK+NKV6/YU/qBv9lphSIJ/vcwRTM2uSJVvNymrE=;
	b=YRnFqRasyLyuJvm1bBEpNOGDvvx+YUGfhA9jZJj7UswkeiTn3i452S3xnddN8yV2i8T2VL
	yKWSIEgcTz1S0Rki3B1O3WyZUfA36d/Tc7tsQ6r2mBrK2SMhigixq6MxVPD3xshU7snPNy
	/iI34ARZo7rDOCso/kQBK5KNAcG9ZBQ=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-652-L_rHnHZtMLK0v-KVykbXfQ-1; Thu, 16 Oct 2025 04:43:23 -0400
X-MC-Unique: L_rHnHZtMLK0v-KVykbXfQ-1
X-Mimecast-MFC-AGG-ID: L_rHnHZtMLK0v-KVykbXfQ_1760604202
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-46e39567579so2724145e9.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 01:43:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760604202; x=1761209002;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ax80nK+NKV6/YU/qBv9lphSIJ/vcwRTM2uSJVvNymrE=;
        b=sUh9kniXf7cCaxFs7tRZAFf2NaBm00kRxFMDIlI+8kWffXNXKKav8GgMdE9beGBJe2
         74x0Hr/L8AU0nbdBGt2VgeWJwIsxokNvpaTkbdjDrD1DJnVd4bk9LnQ9TKx6rkMmkRd8
         QbMeN+B8PncZuU+/l0GI7XxWbcUurlNA70dYdg6t23Z4ngU4Qbj5KysiiuzQ5S8lBUl2
         NrfpjLDX3Bue2HQElt0FdT5+O6ADk1qWhvGSyLjNjkKCCNpzQBPT25K81tvc6x28mR2n
         EDq3fuFjJuTQZa8pGqecUgIo9zG1rb19vzoWKsuiSG5qYERnNscW0VdSW2+7ClspOebu
         WcsA==
X-Forwarded-Encrypted: i=1; AJvYcCV4VoHL6TLPqnuhbA9eRASPngRR9sV1lUn1ImdnhxEHOoCxHbmNoW+Jptp8mbhSyLHSguPQDJcFd1FB@vger.kernel.org
X-Gm-Message-State: AOJu0YwbxI2EP1M0gnjBEfjkuVDkLyy8It/NAqC0QTqazvIxyC7CJN8/
	NtqDra7/JeFlKOBsHS7XeMUwpviOA3ACagUpLCxsy365Y49xBMd16wWQqPJ4jSFbr7h26Ixznoh
	lW1sODevFkbZv9XxsY5ceXcD0F1ZZ9ya+jXY8Q63BZM2rmSJVwDnWBCkbJqTPKTw=
X-Gm-Gg: ASbGncs20Uy1EoBOAQ0nuYHdl7Tr0PUqQ0EVEBEbGlFmKH4jJYq6i9A4cfEve/VskKF
	0X7wPJyjUoEbDgzkxvakWXggwF1xndc5RZDGhpn5mvWKOcy7IxpRlHWnLUHxIFXOX9zjEFP0hu4
	eFMelrGQjOP0DAhbcnmWtmM/ZBA8/RbFbcQPJsuw4htKGjFkRfC/iTrGeNBIOdtBMFLtPlrxuKm
	ucaBD6xh5tV/6e8CJCERimqXVL0O2CPMnx95e1BAbBh6nEviJ0hyNfobRN1hw3jQfqN5B4e+NIq
	1DaclPfk4/O6zt+dH7WWkriQcGYP2K5TZrumCrVUSJwLdXROimJ05gSMFIQVO3RYZXdv2kAODXY
	kboY1weBj
X-Received: by 2002:a05:6000:40c9:b0:426:d619:cac7 with SMTP id ffacd0b85a97d-426d619cd64mr12707393f8f.36.1760604202118;
        Thu, 16 Oct 2025 01:43:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE87h87L5+cjbKqDzFGeScqw+GJyAWKB/ZTf9y7pe94sr7jbGPA3jOKyUr3qhAx/eeHS0qseQ==
X-Received: by 2002:a05:6000:40c9:b0:426:d619:cac7 with SMTP id ffacd0b85a97d-426d619cd64mr12707369f8f.36.1760604201696;
        Thu, 16 Oct 2025 01:43:21 -0700 (PDT)
Received: from holism.lzampier.com ([148.252.9.235])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5e1284sm33047565f8f.45.2025.10.16.01.43.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 01:43:21 -0700 (PDT)
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
Subject: [PATCH v5 3/3] irqchip/plic: add support for UltraRISC DP1000 PLIC
Date: Thu, 16 Oct 2025 09:42:56 +0100
Message-ID: <20251016084301.27670-4-lzampier@redhat.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251016084301.27670-1-lzampier@redhat.com>
References: <20251016084301.27670-1-lzampier@redhat.com>
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
+		if (j == i) {
+			/* Extract mask with lowest set bit */
+			new_mask = (pending_irqs & -pending_irqs);
+		}
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
+	int nr_irq_groups = DIV_ROUND_UP(handler->priv->nr_irqs, 32);
+	void __iomem *pending = handler->priv->regs + PENDING_BASE;
+	void __iomem *enable = handler->enable_base;
+	irq_hw_number_t hwirq = 0;
+	int i;
+
+	guard(raw_spinlock)(&handler->enable_lock);
+
+	/* Save current interrupt enable state */
+	for (i = 0; i < nr_irq_groups; i++)
+		handler->enable_save[i] = readl_relaxed(enable + i * sizeof(u32));
+
+	if (!cp100_isolate_pending_irq(nr_irq_groups, handler->enable_save, pending, enable))
+		return 0;
+
+	hwirq = readl(claim);
+
+	/* Restore previous state */
+	for (i = 0; i < nr_irq_groups; i++)
+		writel_relaxed(handler->enable_save[i], enable + i * sizeof(u32));
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


