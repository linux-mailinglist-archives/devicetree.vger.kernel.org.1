Return-Path: <devicetree+bounces-11042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E677D3DAF
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 19:29:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CD3C9B20E38
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:29:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23E6320B29;
	Mon, 23 Oct 2023 17:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="DBF4NyJG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED6FF20B2C
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:29:20 +0000 (UTC)
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A3611BD4
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:29:12 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-5aa7fdd1420so1919905a12.3
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698082151; x=1698686951; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fH6x1k1LJtKMb6BIo5ACB7vcFAsyQYKoi5xZNuXPFf8=;
        b=DBF4NyJGa0KpyLeZWKLAntGZrO88ykYdbCChNbSxHip2YdaOmBcdkkWWm7qxAmNYif
         yVSUD3L/z/Vu2R7mxr0rCxj9xGMpbNuSh4lQXeTZvnOLHVzX9qXQKFCXAdwedMCfwlml
         sc6FS5Lzsfx6dpPv3MIEL3pNxDIn7iTXs0GFHpYNoSe3GUqAiwsto5afHISkiqzjOU3q
         5t2BWZDMfLSxjse3CjA+mNJUKpUav6IDe+JdUhEpxvSQxSgsV5Lrfb5wStpWYPN5xHkj
         glOl/WE/I28RAxrDTmblgFW37xAgq9kDjjfRaeRSsqEInCc1sUnhc209/VpIcfY3/Kct
         qvzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698082151; x=1698686951;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fH6x1k1LJtKMb6BIo5ACB7vcFAsyQYKoi5xZNuXPFf8=;
        b=ZHRqWtH9852a20Dnkrzt06qwVQ+9jSCTxD6gIUVU4tDxrOGY6B1uDbI4bGTUCRmrmO
         gbb0nPE6R5oDuFiJVjaT2JdyCVdWSfolSgcJxcwsMzTXhCkb5OkVDr9KaGPMKMg9+5SQ
         7MCY0T/lQR9d9CVIzpLQGehEGblnSnA9YbcVZN+uZbgMVyJ10xfDdB9fOVuejaz5yuob
         Xh5S6MiIDM282lD99chLgJjIsY/NBshtyOuk4tEjqbJYLdRrSuiaegIKUGUnFdkEJ95Z
         CJ5eloFTBPyF9nxw3Ao1+r09g3GyaI4Uaa/1JNXVE+fkbjh6QMD7ZNK0fsQmt0cMLtni
         SpWA==
X-Gm-Message-State: AOJu0Yxw98+6966D4+Yxe1nl/rQAMH/CnDvGM2VoJcLzBVAnYzUSGIDd
	7Pt1ZLvHHycW+iFqkInAJZCW6Q==
X-Google-Smtp-Source: AGHT+IFaSPj626i6NsvOj6iiNDVTO88YCf9SNmY+6qTlSNPwrniXhfEHPt4bJsdwViRw7dfCIP9PUw==
X-Received: by 2002:a05:6a21:a58a:b0:174:af85:9626 with SMTP id gd10-20020a056a21a58a00b00174af859626mr373377pzc.11.1698082151076;
        Mon, 23 Oct 2023 10:29:11 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([171.76.86.9])
        by smtp.gmail.com with ESMTPSA id g5-20020aa79f05000000b006be055ab117sm6473194pfr.92.2023.10.23.10.29.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 10:29:10 -0700 (PDT)
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
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v11 12/14] irqchip/riscv-aplic: Add support for MSI-mode
Date: Mon, 23 Oct 2023 22:57:58 +0530
Message-Id: <20231023172800.315343-13-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231023172800.315343-1-apatel@ventanamicro.com>
References: <20231023172800.315343-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RISC-V advanced platform-level interrupt controller (APLIC) has
two modes of operation: 1) Direct mode and 2) MSI mode.
(For more details, refer https://github.com/riscv/riscv-aia)

In APLIC MSI-mode, wired interrupts are forwared as message signaled
interrupts (MSIs) to CPUs via IMSIC.

We extend the existing APLIC irqchip driver to support MSI-mode for
RISC-V platforms having both wired interrupts and MSIs.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/irqchip/Kconfig                |   6 +
 drivers/irqchip/Makefile               |   1 +
 drivers/irqchip/irq-riscv-aplic-main.c |   2 +-
 drivers/irqchip/irq-riscv-aplic-main.h |   8 +
 drivers/irqchip/irq-riscv-aplic-msi.c  | 285 +++++++++++++++++++++++++
 5 files changed, 301 insertions(+), 1 deletion(-)
 create mode 100644 drivers/irqchip/irq-riscv-aplic-msi.c

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 1996cc6f666a..7adc4dbe07ff 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -551,6 +551,12 @@ config RISCV_APLIC
 	depends on RISCV
 	select IRQ_DOMAIN_HIERARCHY
 
+config RISCV_APLIC_MSI
+	bool
+	depends on RISCV_APLIC
+	select GENERIC_MSI_IRQ
+	default RISCV_APLIC
+
 config RISCV_IMSIC
 	bool
 	depends on RISCV
diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index 7f8289790ed8..47995fdb2c60 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -96,6 +96,7 @@ obj-$(CONFIG_CSKY_MPINTC)		+= irq-csky-mpintc.o
 obj-$(CONFIG_CSKY_APB_INTC)		+= irq-csky-apb-intc.o
 obj-$(CONFIG_RISCV_INTC)		+= irq-riscv-intc.o
 obj-$(CONFIG_RISCV_APLIC)		+= irq-riscv-aplic-main.o irq-riscv-aplic-direct.o
+obj-$(CONFIG_RISCV_APLIC_MSI)		+= irq-riscv-aplic-msi.o
 obj-$(CONFIG_RISCV_IMSIC)		+= irq-riscv-imsic-state.o irq-riscv-imsic-early.o irq-riscv-imsic-platform.o
 obj-$(CONFIG_SIFIVE_PLIC)		+= irq-sifive-plic.o
 obj-$(CONFIG_IMX_IRQSTEER)		+= irq-imx-irqsteer.o
diff --git a/drivers/irqchip/irq-riscv-aplic-main.c b/drivers/irqchip/irq-riscv-aplic-main.c
index 87450708a733..d1b342b66551 100644
--- a/drivers/irqchip/irq-riscv-aplic-main.c
+++ b/drivers/irqchip/irq-riscv-aplic-main.c
@@ -205,7 +205,7 @@ static int aplic_probe(struct platform_device *pdev)
 		msi_mode = of_property_present(to_of_node(dev->fwnode),
 						"msi-parent");
 	if (msi_mode)
-		rc = -ENODEV;
+		rc = aplic_msi_setup(dev, regs);
 	else
 		rc = aplic_direct_setup(dev, regs);
 	if (rc) {
diff --git a/drivers/irqchip/irq-riscv-aplic-main.h b/drivers/irqchip/irq-riscv-aplic-main.h
index 474a04229334..78267ec58098 100644
--- a/drivers/irqchip/irq-riscv-aplic-main.h
+++ b/drivers/irqchip/irq-riscv-aplic-main.h
@@ -41,5 +41,13 @@ void aplic_init_hw_global(struct aplic_priv *priv, bool msi_mode);
 int aplic_setup_priv(struct aplic_priv *priv, struct device *dev,
 		     void __iomem *regs);
 int aplic_direct_setup(struct device *dev, void __iomem *regs);
+#ifdef CONFIG_RISCV_APLIC_MSI
+int aplic_msi_setup(struct device *dev, void __iomem *regs);
+#else
+static inline int aplic_msi_setup(struct device *dev, void __iomem *regs)
+{
+	return -ENODEV;
+}
+#endif
 
 #endif
diff --git a/drivers/irqchip/irq-riscv-aplic-msi.c b/drivers/irqchip/irq-riscv-aplic-msi.c
new file mode 100644
index 000000000000..086d00e0429e
--- /dev/null
+++ b/drivers/irqchip/irq-riscv-aplic-msi.c
@@ -0,0 +1,285 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2021 Western Digital Corporation or its affiliates.
+ * Copyright (C) 2022 Ventana Micro Systems Inc.
+ */
+
+#include <linux/bitops.h>
+#include <linux/cpu.h>
+#include <linux/interrupt.h>
+#include <linux/irqchip.h>
+#include <linux/irqchip/riscv-aplic.h>
+#include <linux/irqchip/riscv-imsic.h>
+#include <linux/module.h>
+#include <linux/msi.h>
+#include <linux/of_irq.h>
+#include <linux/platform_device.h>
+#include <linux/printk.h>
+#include <linux/smp.h>
+
+#include "irq-riscv-aplic-main.h"
+
+static void aplic_msi_irq_unmask(struct irq_data *d)
+{
+	aplic_irq_unmask(d);
+	irq_chip_unmask_parent(d);
+}
+
+static void aplic_msi_irq_mask(struct irq_data *d)
+{
+	aplic_irq_mask(d);
+	irq_chip_mask_parent(d);
+}
+
+static void aplic_msi_irq_eoi(struct irq_data *d)
+{
+	struct aplic_priv *priv = irq_data_get_irq_chip_data(d);
+	u32 reg_off, reg_mask;
+
+	/*
+	 * EOI handling only required only for level-triggered
+	 * interrupts in APLIC MSI mode.
+	 */
+
+	reg_off = APLIC_CLRIP_BASE + ((d->hwirq / APLIC_IRQBITS_PER_REG) * 4);
+	reg_mask = BIT(d->hwirq % APLIC_IRQBITS_PER_REG);
+	switch (irqd_get_trigger_type(d)) {
+	case IRQ_TYPE_LEVEL_LOW:
+		if (!(readl(priv->regs + reg_off) & reg_mask))
+			writel(d->hwirq, priv->regs + APLIC_SETIPNUM_LE);
+		break;
+	case IRQ_TYPE_LEVEL_HIGH:
+		if (readl(priv->regs + reg_off) & reg_mask)
+			writel(d->hwirq, priv->regs + APLIC_SETIPNUM_LE);
+		break;
+	}
+}
+
+static struct irq_chip aplic_msi_chip = {
+	.name		= "APLIC-MSI",
+	.irq_mask	= aplic_msi_irq_mask,
+	.irq_unmask	= aplic_msi_irq_unmask,
+	.irq_set_type	= aplic_irq_set_type,
+	.irq_eoi	= aplic_msi_irq_eoi,
+#ifdef CONFIG_SMP
+	.irq_set_affinity = irq_chip_set_affinity_parent,
+#endif
+	.flags		= IRQCHIP_SET_TYPE_MASKED |
+			  IRQCHIP_SKIP_SET_WAKE |
+			  IRQCHIP_MASK_ON_SUSPEND,
+};
+
+static int aplic_msi_irqdomain_translate(struct irq_domain *d,
+					 struct irq_fwspec *fwspec,
+					 unsigned long *hwirq,
+					 unsigned int *type)
+{
+	struct aplic_priv *priv = platform_msi_get_host_data(d);
+
+	return aplic_irqdomain_translate(fwspec, priv->gsi_base, hwirq, type);
+}
+
+static int aplic_msi_irqdomain_alloc(struct irq_domain *domain,
+				     unsigned int virq, unsigned int nr_irqs,
+				     void *arg)
+{
+	int i, ret;
+	unsigned int type;
+	irq_hw_number_t hwirq;
+	struct irq_fwspec *fwspec = arg;
+	struct aplic_priv *priv = platform_msi_get_host_data(domain);
+
+	ret = aplic_irqdomain_translate(fwspec, priv->gsi_base, &hwirq, &type);
+	if (ret)
+		return ret;
+
+	ret = platform_msi_device_domain_alloc(domain, virq, nr_irqs);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < nr_irqs; i++) {
+		irq_domain_set_info(domain, virq + i, hwirq + i,
+				    &aplic_msi_chip, priv, handle_fasteoi_irq,
+				    NULL, NULL);
+		/*
+		 * APLIC does not implement irq_disable() so Linux interrupt
+		 * subsystem will take a lazy approach for disabling an APLIC
+		 * interrupt. This means APLIC interrupts are left unmasked
+		 * upon system suspend and interrupts are not processed
+		 * immediately upon system wake up. To tackle this, we disable
+		 * the lazy approach for all APLIC interrupts.
+		 */
+		irq_set_status_flags(virq + i, IRQ_DISABLE_UNLAZY);
+	}
+
+	return 0;
+}
+
+static const struct irq_domain_ops aplic_msi_irqdomain_ops = {
+	.translate	= aplic_msi_irqdomain_translate,
+	.alloc		= aplic_msi_irqdomain_alloc,
+	.free		= platform_msi_device_domain_free,
+};
+
+static void aplic_msi_write_msg(struct msi_desc *desc, struct msi_msg *msg)
+{
+	unsigned int group_index, hart_index, guest_index, val;
+	struct irq_data *d = irq_get_irq_data(desc->irq);
+	struct aplic_priv *priv = irq_data_get_irq_chip_data(d);
+	struct aplic_msicfg *mc = &priv->msicfg;
+	phys_addr_t tppn, tbppn, msg_addr;
+	void __iomem *target;
+
+	/* For zeroed MSI, simply write zero into the target register */
+	if (!msg->address_hi && !msg->address_lo && !msg->data) {
+		target = priv->regs + APLIC_TARGET_BASE;
+		target += (d->hwirq - 1) * sizeof(u32);
+		writel(0, target);
+		return;
+	}
+
+	/* Sanity check on message data */
+	WARN_ON(msg->data > APLIC_TARGET_EIID_MASK);
+
+	/* Compute target MSI address */
+	msg_addr = (((u64)msg->address_hi) << 32) | msg->address_lo;
+	tppn = msg_addr >> APLIC_xMSICFGADDR_PPN_SHIFT;
+
+	/* Compute target HART Base PPN */
+	tbppn = tppn;
+	tbppn &= ~APLIC_xMSICFGADDR_PPN_HART(mc->lhxs);
+	tbppn &= ~APLIC_xMSICFGADDR_PPN_LHX(mc->lhxw, mc->lhxs);
+	tbppn &= ~APLIC_xMSICFGADDR_PPN_HHX(mc->hhxw, mc->hhxs);
+	WARN_ON(tbppn != mc->base_ppn);
+
+	/* Compute target group and hart indexes */
+	group_index = (tppn >> APLIC_xMSICFGADDR_PPN_HHX_SHIFT(mc->hhxs)) &
+		     APLIC_xMSICFGADDR_PPN_HHX_MASK(mc->hhxw);
+	hart_index = (tppn >> APLIC_xMSICFGADDR_PPN_LHX_SHIFT(mc->lhxs)) &
+		     APLIC_xMSICFGADDR_PPN_LHX_MASK(mc->lhxw);
+	hart_index |= (group_index << mc->lhxw);
+	WARN_ON(hart_index > APLIC_TARGET_HART_IDX_MASK);
+
+	/* Compute target guest index */
+	guest_index = tppn & APLIC_xMSICFGADDR_PPN_HART(mc->lhxs);
+	WARN_ON(guest_index > APLIC_TARGET_GUEST_IDX_MASK);
+
+	/* Update IRQ TARGET register */
+	target = priv->regs + APLIC_TARGET_BASE;
+	target += (d->hwirq - 1) * sizeof(u32);
+	val = (hart_index & APLIC_TARGET_HART_IDX_MASK)
+				<< APLIC_TARGET_HART_IDX_SHIFT;
+	val |= (guest_index & APLIC_TARGET_GUEST_IDX_MASK)
+				<< APLIC_TARGET_GUEST_IDX_SHIFT;
+	val |= (msg->data & APLIC_TARGET_EIID_MASK);
+	writel(val, target);
+}
+
+int aplic_msi_setup(struct device *dev, void __iomem *regs)
+{
+	const struct imsic_global_config *imsic_global;
+	struct irq_domain *irqdomain;
+	struct aplic_priv *priv;
+	struct aplic_msicfg *mc;
+	phys_addr_t pa;
+	int rc;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	rc = aplic_setup_priv(priv, dev, regs);
+	if (!priv) {
+		dev_err(dev, "failed to create APLIC context\n");
+		return rc;
+	}
+	mc = &priv->msicfg;
+
+	/*
+	 * The APLIC outgoing MSI config registers assume target MSI
+	 * controller to be RISC-V AIA IMSIC controller.
+	 */
+	imsic_global = imsic_get_global_config();
+	if (!imsic_global) {
+		dev_err(dev, "IMSIC global config not found\n");
+		return -ENODEV;
+	}
+
+	/* Find number of guest index bits (LHXS) */
+	mc->lhxs = imsic_global->guest_index_bits;
+	if (APLIC_xMSICFGADDRH_LHXS_MASK < mc->lhxs) {
+		dev_err(dev, "IMSIC guest index bits big for APLIC LHXS\n");
+		return -EINVAL;
+	}
+
+	/* Find number of HART index bits (LHXW) */
+	mc->lhxw = imsic_global->hart_index_bits;
+	if (APLIC_xMSICFGADDRH_LHXW_MASK < mc->lhxw) {
+		dev_err(dev, "IMSIC hart index bits big for APLIC LHXW\n");
+		return -EINVAL;
+	}
+
+	/* Find number of group index bits (HHXW) */
+	mc->hhxw = imsic_global->group_index_bits;
+	if (APLIC_xMSICFGADDRH_HHXW_MASK < mc->hhxw) {
+		dev_err(dev, "IMSIC group index bits big for APLIC HHXW\n");
+		return -EINVAL;
+	}
+
+	/* Find first bit position of group index (HHXS) */
+	mc->hhxs = imsic_global->group_index_shift;
+	if (mc->hhxs < (2 * APLIC_xMSICFGADDR_PPN_SHIFT)) {
+		dev_err(dev, "IMSIC group index shift should be >= %d\n",
+			(2 * APLIC_xMSICFGADDR_PPN_SHIFT));
+		return -EINVAL;
+	}
+	mc->hhxs -= (2 * APLIC_xMSICFGADDR_PPN_SHIFT);
+	if (APLIC_xMSICFGADDRH_HHXS_MASK < mc->hhxs) {
+		dev_err(dev, "IMSIC group index shift big for APLIC HHXS\n");
+		return -EINVAL;
+	}
+
+	/* Compute PPN base */
+	mc->base_ppn = imsic_global->base_addr >> APLIC_xMSICFGADDR_PPN_SHIFT;
+	mc->base_ppn &= ~APLIC_xMSICFGADDR_PPN_HART(mc->lhxs);
+	mc->base_ppn &= ~APLIC_xMSICFGADDR_PPN_LHX(mc->lhxw, mc->lhxs);
+	mc->base_ppn &= ~APLIC_xMSICFGADDR_PPN_HHX(mc->hhxw, mc->hhxs);
+
+	/* Setup global config and interrupt delivery */
+	aplic_init_hw_global(priv, true);
+
+	/* Set the APLIC device MSI domain if not available */
+	if (!dev_get_msi_domain(dev)) {
+		/*
+		 * The device MSI domain for OF devices is only set at the
+		 * time of populating/creating OF device. If the device MSI
+		 * domain is discovered later after the OF device is created
+		 * then we need to set it explicitly before using any platform
+		 * MSI functions.
+		 *
+		 * In case of APLIC device, the parent MSI domain is always
+		 * IMSIC and the IMSIC MSI domains are created later through
+		 * the platform driver probing so we set it explicitly here.
+		 */
+		if (is_of_node(dev->fwnode))
+			of_msi_configure(dev, to_of_node(dev->fwnode));
+	}
+
+	/* Create irq domain instance for the APLIC MSI-mode */
+	irqdomain = platform_msi_create_device_domain(
+						dev, priv->nr_irqs + 1,
+						aplic_msi_write_msg,
+						&aplic_msi_irqdomain_ops,
+						priv);
+	if (!irqdomain) {
+		dev_err(dev, "failed to create MSI irq domain\n");
+		return -ENOMEM;
+	}
+
+	/* Advertise the interrupt controller */
+	pa = priv->msicfg.base_ppn << APLIC_xMSICFGADDR_PPN_SHIFT;
+	dev_info(dev, "%d interrupts forwared to MSI base %pa\n",
+		 priv->nr_irqs, &pa);
+
+	return 0;
+}
-- 
2.34.1


