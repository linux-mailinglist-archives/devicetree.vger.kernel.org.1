Return-Path: <devicetree+bounces-10680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 911FF7D2792
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 02:46:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ABD141C208F0
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 00:46:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C38E9EA9;
	Mon, 23 Oct 2023 00:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713AB372;
	Mon, 23 Oct 2023 00:46:03 +0000 (UTC)
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18DC9E8;
	Sun, 22 Oct 2023 17:45:58 -0700 (PDT)
Received: from mail.andestech.com (ATCPCS16.andestech.com [10.0.1.222])
	by Atcsqr.andestech.com with ESMTP id 39N0iTBU079012;
	Mon, 23 Oct 2023 08:44:29 +0800 (+08)
	(envelope-from peterlin@andestech.com)
Received: from swlinux02.andestech.com (10.0.15.183) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.498.0; Mon, 23 Oct 2023
 08:44:25 +0800
From: Yu Chien Peter Lin <peterlin@andestech.com>
To: <acme@kernel.org>, <adrian.hunter@intel.com>, <ajones@ventanamicro.com>,
        <alexander.shishkin@linux.intel.com>, <andre.przywara@arm.com>,
        <anup@brainfault.org>, <aou@eecs.berkeley.edu>,
        <atishp@atishpatra.org>, <conor+dt@kernel.org>,
        <conor.dooley@microchip.com>, <conor@kernel.org>,
        <devicetree@vger.kernel.org>, <dminus@andestech.com>,
        <evan@rivosinc.com>, <geert+renesas@glider.be>, <guoren@kernel.org>,
        <heiko@sntech.de>, <irogers@google.com>, <jernej.skrabec@gmail.com>,
        <jolsa@kernel.org>, <jszhang@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-perf-users@vger.kernel.org>,
        <linux-renesas-soc@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <linux-sunxi@lists.linux.dev>, <locus84@andestech.com>,
        <magnus.damm@gmail.com>, <mark.rutland@arm.com>, <mingo@redhat.com>,
        <n.shubin@yadro.com>, <namhyung@kernel.org>, <palmer@dabbelt.com>,
        <paul.walmsley@sifive.com>, <peterlin@andestech.com>,
        <peterz@infradead.org>, <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        <rdunlap@infradead.org>, <robh+dt@kernel.org>, <samuel@sholland.org>,
        <sunilvl@ventanamicro.com>, <tglx@linutronix.de>,
        <tim609@andestech.com>, <uwu@icenowy.me>, <wens@csie.org>,
        <will@kernel.org>, <ycliang@andestech.com>
Subject: [RFC PATCH v3 RESEND 03/13] irqchip/riscv-intc: Introduce Andes IRQ chip
Date: Mon, 23 Oct 2023 08:40:50 +0800
Message-ID: <20231023004100.2663486-4-peterlin@andestech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231023004100.2663486-1-peterlin@andestech.com>
References: <20231023004100.2663486-1-peterlin@andestech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.0.15.183]
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 39N0iTBU079012

This commit adds support for the Andes IRQ chip, which provides
IRQ mask/unmask functions to access the custom CSR (SLIE)
where the non-standard S-mode local interrupt enable bits are
located.

The Andes INTC requires the "andestech,cpu-intc" compatible string
to be present in interrupt-controller of cpu node. e.g.,

  cpu0: cpu@0 {
      compatible = "andestech,ax45mp", "riscv";
      ...
      cpu0-intc: interrupt-controller {
          #interrupt-cells = <0x01>;
          compatible = "andestech,cpu-intc", "riscv,cpu-intc";
          interrupt-controller;
      };
  };

Signed-off-by: Yu Chien Peter Lin <peterlin@andestech.com>
Reviewed-by: Charles Ci-Jyun Wu <dminus@andestech.com>
Reviewed-by: Leo Yu-Chi Liang <ycliang@andestech.com>
---
Changes v1 -> v2:
  - New patch
Changes v2 -> v3:
  - Return -ENXIO if no valid compatible INTC found
  - Allow falling back to generic RISC-V INTC
---
 drivers/irqchip/irq-riscv-intc.c       | 51 +++++++++++++++++++++++++-
 include/linux/irqchip/irq-riscv-intc.h | 12 ++++++
 2 files changed, 61 insertions(+), 2 deletions(-)
 create mode 100644 include/linux/irqchip/irq-riscv-intc.h

diff --git a/drivers/irqchip/irq-riscv-intc.c b/drivers/irqchip/irq-riscv-intc.c
index 79d049105384..a0efd645a142 100644
--- a/drivers/irqchip/irq-riscv-intc.c
+++ b/drivers/irqchip/irq-riscv-intc.c
@@ -13,6 +13,7 @@
 #include <linux/irq.h>
 #include <linux/irqchip.h>
 #include <linux/irqdomain.h>
+#include <linux/irqchip/irq-riscv-intc.h>
 #include <linux/interrupt.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -45,6 +46,26 @@ static void riscv_intc_irq_unmask(struct irq_data *d)
 	csr_set(CSR_IE, BIT(d->hwirq));
 }
 
+static void andes_intc_irq_mask(struct irq_data *d)
+{
+	unsigned int mask = BIT(d->hwirq % BITS_PER_LONG);
+
+	if (d->hwirq < ANDES_SLI_CAUSE_BASE)
+		csr_clear(CSR_IE, mask);
+	else
+		csr_clear(ANDES_CSR_SLIE, mask);
+}
+
+static void andes_intc_irq_unmask(struct irq_data *d)
+{
+	unsigned int mask = BIT(d->hwirq % BITS_PER_LONG);
+
+	if (d->hwirq < ANDES_SLI_CAUSE_BASE)
+		csr_set(CSR_IE, mask);
+	else
+		csr_set(ANDES_CSR_SLIE, mask);
+}
+
 static void riscv_intc_irq_eoi(struct irq_data *d)
 {
 	/*
@@ -68,12 +89,37 @@ static struct irq_chip riscv_intc_chip = {
 	.irq_eoi = riscv_intc_irq_eoi,
 };
 
+static struct irq_chip andes_intc_chip = {
+	.name = "RISC-V INTC",
+	.irq_mask = andes_intc_irq_mask,
+	.irq_unmask = andes_intc_irq_unmask,
+	.irq_eoi = riscv_intc_irq_eoi,
+};
+
 static int riscv_intc_domain_map(struct irq_domain *d, unsigned int irq,
 				 irq_hw_number_t hwirq)
 {
+	struct fwnode_handle *fn = riscv_get_intc_hwnode();
+	struct irq_chip *chip;
+	const char *cp;
+	int rc;
+
 	irq_set_percpu_devid(irq);
-	irq_domain_set_info(d, irq, hwirq, &riscv_intc_chip, d->host_data,
-			    handle_percpu_devid_irq, NULL, NULL);
+
+	rc = fwnode_property_read_string(fn, "compatible", &cp);
+	if (rc)
+		return rc;
+
+	if (strcmp(cp, "riscv,cpu-intc") == 0)
+		chip = &riscv_intc_chip;
+	else if (strcmp(cp, "andestech,cpu-intc") == 0)
+		chip = &andes_intc_chip;
+	else
+		return -ENXIO;
+
+	irq_domain_set_info(d, irq, hwirq, chip,
+			    d->host_data, handle_percpu_devid_irq, NULL,
+			    NULL);
 
 	return 0;
 }
@@ -166,6 +212,7 @@ static int __init riscv_intc_init(struct device_node *node,
 }
 
 IRQCHIP_DECLARE(riscv, "riscv,cpu-intc", riscv_intc_init);
+IRQCHIP_DECLARE(andes, "andestech,cpu-intc", riscv_intc_init);
 
 #ifdef CONFIG_ACPI
 
diff --git a/include/linux/irqchip/irq-riscv-intc.h b/include/linux/irqchip/irq-riscv-intc.h
new file mode 100644
index 000000000000..87c105b5b545
--- /dev/null
+++ b/include/linux/irqchip/irq-riscv-intc.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2023 Andes Technology Corporation
+ */
+#ifndef __INCLUDE_LINUX_IRQCHIP_IRQ_RISCV_INTC_H
+#define __INCLUDE_LINUX_IRQCHIP_IRQ_RISCV_INTC_H
+
+#define ANDES_SLI_CAUSE_BASE	256
+#define ANDES_CSR_SLIE		0x9c4
+#define ANDES_CSR_SLIP		0x9c5
+
+#endif /* __INCLUDE_LINUX_IRQCHIP_IRQ_RISCV_INTC_H */
-- 
2.34.1


