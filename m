Return-Path: <devicetree+bounces-254629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E8CD1A2BE
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:19:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A4BC830C1B53
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:15:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F5A42264C9;
	Tue, 13 Jan 2026 16:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fQ//JyQy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83B9D19C540
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768320928; cv=none; b=Yn/OEc4FKUT5/I2+AwqUIPLJYDm5S8SGtUgBOtMB1n3P0B0WQeMs1ANkS2b0SPISyk0Y3G2xIAKPZlQXP3C3bNJxAsMtoztFcImjbkGMgATQmeO1tv92sjnG1FOo1Qarhu+gM86GOrgpOAtPKBnFSw9JB1xUqN2fcKvr0212oKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768320928; c=relaxed/simple;
	bh=Upo/KeJ1tydzhEX3FEnB2Lq6CdSMUiNT1LlycW0K1NM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VnPcyvTSJ5pcwLW0WR/Mz8v4MDW6PMpwXxkZ6rj4ea6k9NiAWCCIt8AERfu4VcpzAS5p4ZnIvz7Hut5DLVuboYXIHkHcLwOEXOJ4bT3Hzgib+N3sFodyJ/3+9mW85DBZRV6Tqe/jFMfRdqEoNsh6KELn95TV3a6CVW23NnQ05VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fQ//JyQy; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47d3ffb0f44so53212165e9.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:15:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768320925; x=1768925725; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VFXHMGeoomdbZOLp3ce3D0yDHo0q4hSajO4R4fHl4CQ=;
        b=fQ//JyQyUIHGRfPyqTagnrhK/DKLTuhvB07e7n05qtUhSzDKIsDLJJqLyPQS3XxaAQ
         qWWs2UrAW5Zh+YuLeGXt07YkZPOpqI+u8kDM9rB8W62ksUS+38pm734rbMdeapRJSdKz
         GlXxy6LIP/bSpBEG1ZgrHJ6ZieusMZ94+5i9YiUtHWvynwa/j2Zx8VpLvmB4bL7RoMSU
         zcRcKqhouU1wji5mtg+ybcZl60KHAUqFhXHMTfcFAP7EkdGcc5svElF7dEaDOq5+Tr4k
         j0ZXG+16SyNSe0gD8v7CuXf37UjdRmatcVonJLGnzmy7uxSUMpNYa/+CYOI5jZws/mME
         aWGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768320925; x=1768925725;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VFXHMGeoomdbZOLp3ce3D0yDHo0q4hSajO4R4fHl4CQ=;
        b=CKDZNBwRJlQALiWFzk6GoILPeX0TWGN1v2eI17jAOtf5vcPDdy+es+6OKQLTYGvtwc
         yRJDgF6GwkhtKOm0Sz3QAAQzh8bzM8ZfJ7jS5vLBbDB4cPQw9Y4ciDPSH6MWOvf25RiG
         Rkr0HsGQQjzDiuO2qBJq/Ve+lYS5VFrCOcCD6ztrZEhoNF8xwIuza6eo3ZxofHwwufux
         jCjOXGa8qtwvLrAytA7CPFGi+vnx2VzD8F4E0eLz0mNPy5Bhnat/UorUEmlh2zTScTM7
         Rs0zRk6QyT1/Od5asmyJsb7rKdbEE4PIBdcKXevYOR8eraT9LPdqyoghKLnAPEvF7Btt
         vMVw==
X-Forwarded-Encrypted: i=1; AJvYcCVE58ezEKU5HEAUTM06DGJOLfHbJlnvHSsSe8reiPqX7BUdX+K6ELq9EJEFHRYg71u3lR3c02q8vF4H@vger.kernel.org
X-Gm-Message-State: AOJu0YwB44IFG+UmumhiuWm9+CQkHJrl3cCKQ6LHTZKFUOVwzsUrkXFN
	JIUNQr6Xn1R0mxnUDJau5ovE9hXu/QuWBZ4ns7Y94VVDovBdXa2O6ypg
X-Gm-Gg: AY/fxX6VGeCztN2hdlzvYGDttPq+M93HiNll7EmRQLNGgN9PvpnSDbKT88YoNbtZ3oH
	RiJjffOng34sj0JOizIlnWAjMOmwZ5ffT4IcDfQ2MUeZPMbAYk06hl3WyZMd2vmy/oyxvedDO7u
	CwUZDacQO1sux0OAbgvM20SrX8VWwllpJlLukbnUX6OqEVFdwHPtl64rpli02amPLHhf79DQsoN
	fg9e2H6jdxsB6negqO0nVmO7VEL5rPpEygjnEJdZ6+nHa2819CnyuKlSFSEi/r6Q1Xkj1X+hLUE
	B5H4eINy6CaNn9gUj98MrayrLH/uTTOJa+GbfPrTyIifAAENCMcNE2pWVl5eBziDHkaC9UCxx80
	dSJoU3h6dsuUjCsVGMxe9Eb2JH3nXJkAst2BGqM/CU5jY/1FRInP2I14OWuk0lXiNsyzEuOGclz
	nQT/90HmZx9Dgt9wbtPxQT6CJqkMgI2SnRsZC5CJlDrk5dFWcNow9IORYSv/FvvY0d
X-Google-Smtp-Source: AGHT+IFNlvwrKp+KJG2284DCa8NpoGDbY3vjhJ6xtVEGbHn019G4ljpezxVBqkiUcpZVaYK+N7/Z1A==
X-Received: by 2002:a05:600c:1393:b0:477:55ce:f3bc with SMTP id 5b1f17b1804b1-47d84b3bad4mr246429825e9.19.1768320924653;
        Tue, 13 Jan 2026 08:15:24 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f4184e1sm403945455e9.4.2026.01.13.08.15.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 08:15:23 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stafford Horne <shorne@gmail.com>,
	Jonas Bonn <jonas@southpole.se>,
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH v4 4/6] openrisc: Fix IPIs on simple multicore systems
Date: Tue, 13 Jan 2026 16:11:37 +0000
Message-ID: <20260113161152.3688309-5-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260113161152.3688309-1-shorne@gmail.com>
References: <20260113161152.3688309-1-shorne@gmail.com>
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
---
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


