Return-Path: <devicetree+bounces-255652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D63BD25339
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 16:12:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A1D5C308A704
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 15:11:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 779E33ACF17;
	Thu, 15 Jan 2026 15:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UKpAD379"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3E53ACA72
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768489854; cv=none; b=McG7+u7fe4KsymTWi4S7WhDAJ1dEG95BONDsoldyS8ey/alFlYzgFobbDX/YtNFSS76XH3EJdkrLLu18TKKeQWnUB+sZG1LEOrb2w7xZCuEX2lC61sUUfDOL5l/Im9+hxWfLWWJjjYzAiDEYPpPeLUpQo4jjE1UHlzKUb+peqv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768489854; c=relaxed/simple;
	bh=IKKdRw2BPRZGdSnokUi+lLWreRL7wCXnn1Ye9vz44zM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YLjKKYDj8g01w7QvPHfvQvUkXyN9Baf2mrtS0Mn5/uECIYDPSt7Ajp2NclxMlDRm6EAWdC/oxP+kkWgYLPmv8SorBFmGL0p9XUv3Z26Hc64aOMyykluWPGZbPy08TV8Scml9+GNouETuTnbFmYEKEu3wLB8ew3V3+b6RtpoL1/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UKpAD379; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47ee807a4c5so7634025e9.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768489836; x=1769094636; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NjqV3wlU4tHE/m54DQEIhq4RJtDBUToXmEOJfRTmvP0=;
        b=UKpAD379w186/vZ/Aapff8yCWVmtIZW0MA2y8tdn6C//mCBemtqXbNbRni4DAxIor0
         a75l0vk0WvpjVyDSDAxapIwQ2aD6ULjK9TUgf4I6VDO/c+lYt1q2L80AJaTiaCEQYsKz
         kcnTH3uYmuqcYpGUNRyVcHTtWY6FUYa/kRE1R1K+6vmyRupt8t0CDTkV9XnokFupwrO6
         eNOlosI7vpDlZ7CnLi5zrKNHWDUaAQGLKnVrUtpMD2oOSlb972U1dXukELIipR+Nlo+G
         nYPpWJE/ejx1ybAbZxCLFId3TADEqTbmuCmzGKYMz8DWUFhDd8lIB+CLPCBf6Zxy6kth
         WJlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768489836; x=1769094636;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NjqV3wlU4tHE/m54DQEIhq4RJtDBUToXmEOJfRTmvP0=;
        b=qINUoxvM6ccNxFeDo+yUUBCyYaAcqyJmSoPKdVFWlqPvqgVXusloGL7yoJ8Y8iWgQN
         qFF0z9PtJoka3pvYcAXGeDkZ6pTY2uzoB3rd030ahhH1i0LPRwCYi5MwfECHsX23xqsF
         jtCY+OyFZrIbO0IAu1RGsLG5pTkA8vN8giqwDnuktWno9JgIiea8aPVcVUg709hviFxK
         KlrtaZQz2+wv4PBsSa+kVGcKW7iSbfbN47n3zrmDQDa/zmTCxUhFhkIgD9xxUhbtgNPX
         2caDYw/17VqJkHAHX8c3cH8kdxVNP6TrHDgQzG9wg/0kuykesoTogN5RyvmijFvMhWJ3
         i6Fg==
X-Forwarded-Encrypted: i=1; AJvYcCX0m1GWQnIrxKvlwKlPy412TH5/uP+AaXfyflFN/MdA5V5fl0yiYSXvA7ucaWTTOm4r8GSKHyJEF6h6@vger.kernel.org
X-Gm-Message-State: AOJu0YydSHz0mH6CkPtGREGEZFNH11qv+V2IPYOF/z5kEeA25vII9VeE
	lnAgL5OCUKtlGdY30hCC0OWo2dknNjQ85AeWhniyWiQTze1xFU4um7/w
X-Gm-Gg: AY/fxX4yB3Vvby4xhEfgaeQFPIkekYHPC1i68sZZKEMN8aYEOaXvBae4bP1BCsl5fq1
	79BDVPpNb9Gg29+U1eK07AzQEKuWm0CflOfJz1IdcjiSOb0w5COFay0e0n3s8+Ad/YJRgKziuV+
	e7DPoS6ZvnFJjCRBxgDoZA+LLlRtCBQzL/yODg3p4SfJmc0zx0TYXAfV0lKJPn0wHXXJnA/fkb9
	8pe0CXjzhWp052dP6T/MYkcdLnIrks4albfeWykATTzqFF9x8iv1c6P9jtVeY7L/zGzUs33umpz
	KaQ06LRnTZCr8QkWjbSxAQ0MkEdrkmUh0P3out9ky4du0xkD2II2brRKNtgmkFaalcjJtLV/Mdh
	0yCO6ebi65ANkAgEyu2f4AFLfUeuCtiyUjUlXwGo3wAL513glhKBr5IDOAYABrPOWYVLfEFW8Vj
	9vSHLy6We5g3mg53QZxU2M42GIC6+VFaWN5HDgHFvzAL/RK1GMR5vNVnvfUVyk6nqUYV0hefp+9
	7s=
X-Received: by 2002:a05:600c:4693:b0:477:abea:9023 with SMTP id 5b1f17b1804b1-4801e30ae84mr1037785e9.9.1768489835791;
        Thu, 15 Jan 2026 07:10:35 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47f4b26764fsm51725885e9.12.2026.01.15.07.10.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 07:10:34 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stafford Horne <shorne@gmail.com>,
	Thomas Gleixner <tglx@kernel.org>,
	Jonas Bonn <jonas@southpole.se>,
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>
Subject: [PATCH v6 4/6] openrisc: Fix IPIs on simple multicore systems
Date: Thu, 15 Jan 2026 15:10:00 +0000
Message-ID: <20260115151014.3956805-5-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260115151014.3956805-1-shorne@gmail.com>
References: <20260115151014.3956805-1-shorne@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit c05671846451 ("openrisc: sleep instead of spin on secondary
wait") fixed OpenRISC SMP Linux for QEMU. However, stability was never
achieved on FPGA development boards.  This is because the above patch
has a step to unmask IPIs on non-boot cpu's but on hardware without
power management, IPIs remain masked.

This meant that IPI's were never actually working on the simple SMP
systems we run on development boards.  The systems booted but stability
was very suspect.

Add the ability to unmask IPI's on the non-boot cores.  This is done by
making the OMPIC IRQs proper percpu IRQs.  We can then use the
enabled_percpu_irq() to unmask IRQ on the non-boot cpus.

Update the or1k PIC driver to use a flow handler that can switch between
percpu and the configured level or edge flow handlers at runtime.
This mechanism is inspired by that done in the J-Core AIC driver.

Signed-off-by: Stafford Horne <shorne@gmail.com>
Acked-by: Thomas Gleixner <tglx@kernel.org>
---
Since v5:
 - No changes.
Since v4:
 - Added acked-by.

 arch/openrisc/include/asm/smp.h |  3 ++-
 arch/openrisc/kernel/smp.c      | 22 +++++++++++++++++++++-
 drivers/irqchip/irq-ompic.c     | 15 +++++++++++----
 drivers/irqchip/irq-or1k-pic.c  | 27 ++++++++++++++++++++++++++-
 4 files changed, 60 insertions(+), 7 deletions(-)

diff --git a/arch/openrisc/include/asm/smp.h b/arch/openrisc/include/asm/smp.h
index e21d2f12b5b6..007296f160ef 100644
--- a/arch/openrisc/include/asm/smp.h
+++ b/arch/openrisc/include/asm/smp.h
@@ -20,7 +20,8 @@ extern void smp_init_cpus(void);
 extern void arch_send_call_function_single_ipi(int cpu);
 extern void arch_send_call_function_ipi_mask(const struct cpumask *mask);
 
-extern void set_smp_cross_call(void (*)(const struct cpumask *, unsigned int));
+extern void set_smp_cross_call(void (*)(const struct cpumask *, unsigned int),
+			       unsigned int irq);
 extern void handle_IPI(unsigned int ipi_msg);
 
 #endif /* __ASM_OPENRISC_SMP_H */
diff --git a/arch/openrisc/kernel/smp.c b/arch/openrisc/kernel/smp.c
index 86da4bc5ee0b..040ca201b692 100644
--- a/arch/openrisc/kernel/smp.c
+++ b/arch/openrisc/kernel/smp.c
@@ -13,6 +13,7 @@
 
 #include <linux/smp.h>
 #include <linux/cpu.h>
+#include <linux/interrupt.h>
 #include <linux/sched.h>
 #include <linux/sched/mm.h>
 #include <linux/irq.h>
@@ -25,6 +26,7 @@
 
 asmlinkage __init void secondary_start_kernel(void);
 
+static unsigned int ipi_irq __ro_after_init;
 static void (*smp_cross_call)(const struct cpumask *, unsigned int);
 
 unsigned long secondary_release = -1;
@@ -39,6 +41,14 @@ enum ipi_msg_type {
 
 static DEFINE_SPINLOCK(boot_lock);
 
+static void or1k_ipi_enable(void)
+{
+	if (WARN_ON_ONCE(!ipi_irq))
+		return;
+
+	enable_percpu_irq(ipi_irq, 0);
+}
+
 static void boot_secondary(unsigned int cpu, struct task_struct *idle)
 {
 	/*
@@ -136,6 +146,7 @@ asmlinkage __init void secondary_start_kernel(void)
 	complete(&cpu_running);
 
 	synchronise_count_slave(cpu);
+	or1k_ipi_enable();
 	set_cpu_online(cpu, true);
 
 	local_irq_enable();
@@ -195,9 +206,18 @@ void smp_send_stop(void)
 	smp_call_function(stop_this_cpu, NULL, 0);
 }
 
-void __init set_smp_cross_call(void (*fn)(const struct cpumask *, unsigned int))
+void __init set_smp_cross_call(void (*fn)(const struct cpumask *, unsigned int),
+			       unsigned int irq)
 {
+	if (WARN_ON(ipi_irq))
+		return;
+
 	smp_cross_call = fn;
+
+	ipi_irq = irq;
+
+	/* Enabled IPIs for boot CPU immediately */
+	or1k_ipi_enable();
 }
 
 void arch_send_call_function_single_ipi(int cpu)
diff --git a/drivers/irqchip/irq-ompic.c b/drivers/irqchip/irq-ompic.c
index e66ef4373b1e..f0e0b435bb1d 100644
--- a/drivers/irqchip/irq-ompic.c
+++ b/drivers/irqchip/irq-ompic.c
@@ -84,6 +84,8 @@ DEFINE_PER_CPU(unsigned long, ops);
 
 static void __iomem *ompic_base;
 
+static DEFINE_PER_CPU_READ_MOSTLY(int, ipi_dummy_dev);
+
 static inline u32 ompic_readreg(void __iomem *base, loff_t offset)
 {
 	return ioread32be(base + offset);
@@ -183,12 +185,17 @@ static int __init ompic_of_init(struct device_node *node,
 		goto out_unmap;
 	}
 
-	ret = request_irq(irq, ompic_ipi_handler, IRQF_PERCPU,
-				"ompic_ipi", NULL);
-	if (ret)
+	irq_set_percpu_devid(irq);
+	ret = request_percpu_irq(irq, ompic_ipi_handler, "ompic_ipi",
+				 &ipi_dummy_dev);
+
+	if (ret) {
+		pr_err("ompic: failed to request irq %d, error: %d",
+		       irq, ret);
 		goto out_irq_disp;
+	}
 
-	set_smp_cross_call(ompic_raise_softirq);
+	set_smp_cross_call(ompic_raise_softirq, irq);
 
 	return 0;
 
diff --git a/drivers/irqchip/irq-or1k-pic.c b/drivers/irqchip/irq-or1k-pic.c
index 48126067c54b..73dc99c71d40 100644
--- a/drivers/irqchip/irq-or1k-pic.c
+++ b/drivers/irqchip/irq-or1k-pic.c
@@ -118,11 +118,36 @@ static void or1k_pic_handle_irq(struct pt_regs *regs)
 		generic_handle_domain_irq(root_domain, irq);
 }
 
+/*
+ * The OR1K PIC is a cpu-local interrupt controller and does not distinguish or
+ * use distinct irq number ranges for per-cpu event interrupts (IPI). Since
+ * information to determine whether a particular irq number should be treated as
+ * per-cpu is not available at mapping time, we use a wrapper handler function
+ * which chooses the right handler at runtime based on whether IRQF_PERCPU was
+ * used when requesting the irq.  Borrowed from J-Core AIC.
+ */
+static void or1k_irq_flow_handler(struct irq_desc *desc)
+{
+#ifdef CONFIG_SMP
+	struct irq_data *data = irq_desc_get_irq_data(desc);
+	struct or1k_pic_dev *pic = data->domain->host_data;
+
+	if (irqd_is_per_cpu(data))
+		handle_percpu_devid_irq(desc);
+	else
+		pic->handle(desc);
+#endif
+}
+
 static int or1k_map(struct irq_domain *d, unsigned int irq, irq_hw_number_t hw)
 {
 	struct or1k_pic_dev *pic = d->host_data;
 
-	irq_set_chip_and_handler(irq, &pic->chip, pic->handle);
+	if (IS_ENABLED(CONFIG_SMP))
+		irq_set_chip_and_handler(irq, &pic->chip, or1k_irq_flow_handler);
+	else
+		irq_set_chip_and_handler(irq, &pic->chip, pic->handle);
+
 	irq_set_status_flags(irq, pic->flags);
 
 	return 0;
-- 
2.51.0


