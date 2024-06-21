Return-Path: <devicetree+bounces-78351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2379D9120AB
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 11:32:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46AA71C21903
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 09:32:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A314816E886;
	Fri, 21 Jun 2024 09:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="jP1o0ruq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E630716E881
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 09:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718962368; cv=none; b=ERWVd6byiU8nb1GBb12XSeJTVLjtdt0txsLGsOHAz4kncAFvogplGpvi7Pxmv2Fjb0Iezi6bn6PbnoMNe9xHNMDGrUR2l0Ab8xjDdr3wIRPXlZcvbDXptuqbzdnTjhXIglLonKTypTkcoG758Do3+T2XNnMCTobkkF1eOotwZMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718962368; c=relaxed/simple;
	bh=UH4fBtSDsbKB10cTUtF3bs74qpcLWkdhP62fRG0LU/4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aKeKyn4pfsbpz0BJfdXEXvXJxKQCOMg70Lu3lH34+VPhRzpzvfHjMDYTseU5zOvHc5Jztglj9+uRREr+Kt4fB4EZWst4pWCNsKhr/zYRqqa9IIZ85uE/QLTsSx8zU4zdyhx/lEa/Smgt0TjKqGOl9GvlLvFjBah9cnNYAxiz8N0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=jP1o0ruq; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-706264e1692so1470818b3a.1
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 02:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1718962366; x=1719567166; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QDWjjiZAxDspGubAmoMMssYoq1McfQ9VRFvCIu5o/uE=;
        b=jP1o0ruqi9wYW/C8kJJ9eUiMVPzY9etIw2zBjsPZ2+KjgEBa7u+RTASLmByc2LWjb0
         Z/7Or+lF8rR1RhXkNkCqmNY1YzyDJhvJ5vrEyib868K78faZHwFCQVY0zWqReuxxNQEc
         Ca310CI/kuSoNjg7CbL4plt4Y5CLuWOpFs1tl5GUszFQmAqbFDbb1fDO/GmhPmtRq1KR
         f5yKJPNpUdCvJi5enV4nmlNyv0hUneGYqO4rAWA4ZBrO6brqbx0FTQWl9+Oa5Z8f9GZ9
         MytYlWqU2w/dDda/GOlvKeAl2lV9OiNUnP5a+LvN5XTAmPjACRLumnXTjwC0V8xcgODu
         GCIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718962366; x=1719567166;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QDWjjiZAxDspGubAmoMMssYoq1McfQ9VRFvCIu5o/uE=;
        b=kIjo1KdzdTsVDy+AgHjbz856tBYMPyoZCmLLP08YdEIyB9vYoPrpSea0Ha+AghRSIs
         /cwPxzMFSkVvrvvdjFVzkSkKkiKrOVqnQ9XQ7EjG3ARY86dzqZOM/tW5DEDrxvabp9Uq
         HErXkGKkedWK+a+72AOLHxL7VcDXqGNQoE48dQ39y3SisEaBg1u4E68vU2kUKX/ncQEA
         Y/1IZ814PUXid4cBvViWZrhOHXGCQ3Chq7hyFV1OL8IP43SlHBUSB8De3oIGpmCcPEd8
         rDwrFFNwvvGQ/Sy+bixUAsLrhNoI14zQ5SMk+TIQDofpeuiOnqD5t2/wGIrzFLy3pV5+
         s3rA==
X-Forwarded-Encrypted: i=1; AJvYcCWlNLDy/viQxQ0hbYy3MF9hGUhxY1iMi8n7ZelLDOtUrcfEh4uopefUndar82IS5RWXXtO+SGodASbhpclhhI8KZ1/Pj4mFmjdqFQ==
X-Gm-Message-State: AOJu0Yx1HFgWlkaS1zrv05ftE8kR9qqR+IqSiQwYgrNrCiv0gA6XTFWt
	DT7oXnkvul8hlN629FQN0rZakRBuFmR7U/2idQzR10Vuhgx6SukD4L+YMLw54uI=
X-Google-Smtp-Source: AGHT+IHhJmxHFdSSR4W2LuRda6UNPDko8PXJxoSzJ/rR5MLs1oJV1snZK/jHei68R7odnLFMe42AoA==
X-Received: by 2002:a05:6a20:2d88:b0:1b8:498e:4e34 with SMTP id adf61e73a8af0-1bcbb560c9dmr7600232637.34.1718962366161;
        Fri, 21 Jun 2024 02:32:46 -0700 (PDT)
Received: from J9GPGXL7NT.bytedance.net ([61.213.176.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7065124dd26sm968415b3a.127.2024.06.21.02.32.40
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Fri, 21 Jun 2024 02:32:45 -0700 (PDT)
From: Xu Lu <luxu.kernel@bytedance.com>
To: linux-riscv@lists.infradead.org,
	kvm-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	conor.dooley@microchip.com,
	anup@brainfault.org,
	atishp@atishpatra.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	christoph.muellner@vrull.eu,
	heiko@sntech.de,
	charlie@rivosinc.com,
	David.Laight@aculab.com,
	parri.andrea@gmail.com,
	Xu Lu <luxu.kernel@bytedance.com>
Subject: [RFC v2 2/2] riscv: Use Zawrs to accelerate IPI to idle cpu
Date: Fri, 21 Jun 2024 17:32:23 +0800
Message-Id: <20240621093223.37893-3-luxu.kernel@bytedance.com>
X-Mailer: git-send-email 2.39.3 (Apple Git-146)
In-Reply-To: <20240621093223.37893-1-luxu.kernel@bytedance.com>
References: <20240621093223.37893-1-luxu.kernel@bytedance.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When sending IPI to a cpu which has entered idle state using Zawrs
extension, there is no need to send a physical software interrupt.
Instead, we can write the IPI information to the address reserved by
target cpu, which will wake it from WRS.NTO. Then the target cpu can
handle the IPI directly without falling into traditional interrupt
handling routine.

Signed-off-by: Xu Lu <luxu.kernel@bytedance.com>
---
 arch/riscv/include/asm/processor.h | 14 +++++++
 arch/riscv/include/asm/smp.h       | 14 +++++++
 arch/riscv/kernel/process.c        | 65 +++++++++++++++++++++++++++++-
 arch/riscv/kernel/smp.c            | 39 ++++++++++++------
 4 files changed, 118 insertions(+), 14 deletions(-)

diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
index 5ad572645bee..45e060831313 100644
--- a/arch/riscv/include/asm/processor.h
+++ b/arch/riscv/include/asm/processor.h
@@ -173,6 +173,20 @@ static inline void wrs_nto(unsigned long *addr)
 			: : "memory");
 }
 
+static inline void wrs_nto_if(int *addr, int val)
+{
+	int prev;
+
+	__asm__ __volatile__(
+			"lr.w %[p], %[a]\n\t"
+			"bne %[p], %[v], 1f\n\t"
+			ZAWRS_WRS_NTO "\n\t"
+			"1:\n\t"
+			: [p] "=&r" (prev), [a] "+A" (*addr)
+			: [v] "r" (val)
+			: "memory");
+}
+
 extern phys_addr_t dma32_phys_limit;
 
 struct device_node;
diff --git a/arch/riscv/include/asm/smp.h b/arch/riscv/include/asm/smp.h
index 0d555847cde6..2f27fd743092 100644
--- a/arch/riscv/include/asm/smp.h
+++ b/arch/riscv/include/asm/smp.h
@@ -19,6 +19,20 @@ extern unsigned long boot_cpu_hartid;
 
 #include <linux/jump_label.h>
 
+enum ipi_message_type {
+	IPI_RESCHEDULE,
+	IPI_CALL_FUNC,
+	IPI_CPU_STOP,
+	IPI_CPU_CRASH_STOP,
+	IPI_IRQ_WORK,
+	IPI_TIMER,
+	IPI_MAX
+};
+
+int ipi_virq_base_get(void);
+
+irqreturn_t handle_IPI(int irq, void *data);
+
 /*
  * Mapping between linux logical cpu index and hartid.
  */
diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index 9f0f7b888bc1..7d6bf780d334 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -16,6 +16,7 @@
 #include <linux/ptrace.h>
 #include <linux/uaccess.h>
 #include <linux/static_call.h>
+#include <linux/hardirq.h>
 
 #include <asm/unistd.h>
 #include <asm/processor.h>
@@ -27,6 +28,7 @@
 #include <asm/cpuidle.h>
 #include <asm/vector.h>
 #include <asm/cpufeature.h>
+#include <asm/smp.h>
 
 register unsigned long gp_in_global __asm__("gp");
 
@@ -38,6 +40,8 @@ EXPORT_SYMBOL(__stack_chk_guard);
 
 extern asmlinkage void ret_from_fork(void);
 
+DEFINE_PER_CPU(atomic_t, idle_ipi_mask);
+
 static __cpuidle void default_idle(void)
 {
 	/*
@@ -49,6 +53,16 @@ static __cpuidle void default_idle(void)
 	wait_for_interrupt();
 }
 
+static __cpuidle void default_idle_enter(void)
+{
+	/* Do nothing */
+}
+
+static __cpuidle void default_idle_exit(void)
+{
+	/* Do nothing */
+}
+
 static __cpuidle void wrs_idle(void)
 {
 	/*
@@ -57,10 +71,42 @@ static __cpuidle void wrs_idle(void)
 	 * to entering WRS.NTO.
 	 */
 	mb();
+#ifdef CONFIG_SMP
+	wrs_nto_if(&this_cpu_ptr(&idle_ipi_mask)->counter, BIT(IPI_MAX));
+#else
 	wrs_nto(&current_thread_info()->flags);
+#endif
+}
+
+static __cpuidle void wrs_idle_enter(void)
+{
+#ifdef CONFIG_SMP
+	atomic_set(this_cpu_ptr(&idle_ipi_mask), BIT(IPI_MAX));
+#endif
+}
+
+static __cpuidle void wrs_idle_exit(void)
+{
+#ifdef CONFIG_SMP
+	int pending;
+	unsigned long flags;
+	enum ipi_message_type ipi;
+
+	local_irq_save(flags);
+	pending = atomic_xchg_relaxed(this_cpu_ptr(&idle_ipi_mask), 0);
+	for (ipi = IPI_RESCHEDULE; ipi < IPI_MAX; ipi++)
+		if (pending & BIT(ipi)) {
+			irq_enter();
+			handle_IPI(ipi_virq_base_get() + ipi, NULL);
+			irq_exit();
+		}
+	local_irq_restore(flags);
+#endif
 }
 
 DEFINE_STATIC_CALL_NULL(riscv_idle, default_idle);
+DEFINE_STATIC_CALL_NULL(riscv_idle_enter, default_idle_enter);
+DEFINE_STATIC_CALL_NULL(riscv_idle_exit, default_idle_exit);
 
 void __cpuidle cpu_do_idle(void)
 {
@@ -72,13 +118,28 @@ void __cpuidle arch_cpu_idle(void)
 	cpu_do_idle();
 }
 
+void __cpuidle arch_cpu_idle_enter(void)
+{
+	static_call(riscv_idle_enter)();
+}
+
+void __cpuidle arch_cpu_idle_exit(void)
+{
+	static_call(riscv_idle_exit)();
+}
+
 void __init select_idle_routine(void)
 {
 	if (IS_ENABLED(CONFIG_RISCV_ZAWRS_IDLE) &&
-			riscv_has_extension_likely(RISCV_ISA_EXT_ZAWRS))
+			riscv_has_extension_likely(RISCV_ISA_EXT_ZAWRS)) {
 		static_call_update(riscv_idle, wrs_idle);
-	else
+		static_call_update(riscv_idle_enter, wrs_idle_enter);
+		static_call_update(riscv_idle_exit, wrs_idle_exit);
+	} else {
 		static_call_update(riscv_idle, default_idle);
+		static_call_update(riscv_idle_enter, default_idle_enter);
+		static_call_update(riscv_idle_exit, default_idle_exit);
+	}
 }
 
 int set_unalign_ctl(struct task_struct *tsk, unsigned int val)
diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index 45dd4035416e..b5416ee41967 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -26,16 +26,6 @@
 #include <asm/cacheflush.h>
 #include <asm/cpu_ops.h>
 
-enum ipi_message_type {
-	IPI_RESCHEDULE,
-	IPI_CALL_FUNC,
-	IPI_CPU_STOP,
-	IPI_CPU_CRASH_STOP,
-	IPI_IRQ_WORK,
-	IPI_TIMER,
-	IPI_MAX
-};
-
 unsigned long __cpuid_to_hartid_map[NR_CPUS] __ro_after_init = {
 	[0 ... NR_CPUS-1] = INVALID_HARTID
 };
@@ -94,14 +84,34 @@ static inline void ipi_cpu_crash_stop(unsigned int cpu, struct pt_regs *regs)
 }
 #endif
 
+#if defined(CONFIG_RISCV_ZAWRS_IDLE) && defined(CONFIG_SMP)
+DECLARE_PER_CPU(atomic_t, idle_ipi_mask);
+#endif
+
 static void send_ipi_mask(const struct cpumask *mask, enum ipi_message_type op)
 {
+#if defined(CONFIG_RISCV_ZAWRS_IDLE) && defined(CONFIG_SMP)
+	int cpu, val;
+
+	for_each_cpu(cpu, mask) {
+		val = atomic_fetch_or_relaxed(BIT(op), per_cpu_ptr(&idle_ipi_mask, cpu));
+		if (likely(!(val & BIT(IPI_MAX))))
+			__ipi_send_mask(ipi_desc[op], cpumask_of(cpu));
+	}
+#else
 	__ipi_send_mask(ipi_desc[op], mask);
+#endif
 }
 
 static void send_ipi_single(int cpu, enum ipi_message_type op)
 {
-	__ipi_send_mask(ipi_desc[op], cpumask_of(cpu));
+#if defined(CONFIG_RISCV_ZAWRS_IDLE) && defined(CONFIG_SMP)
+	int val;
+
+	val = atomic_fetch_or_relaxed(BIT(op), per_cpu_ptr(&idle_ipi_mask, cpu));
+	if (likely(!(val & BIT(IPI_MAX))))
+#endif
+		__ipi_send_mask(ipi_desc[op], cpumask_of(cpu));
 }
 
 #ifdef CONFIG_IRQ_WORK
@@ -111,7 +121,7 @@ void arch_irq_work_raise(void)
 }
 #endif
 
-static irqreturn_t handle_IPI(int irq, void *data)
+irqreturn_t handle_IPI(int irq, void *data)
 {
 	int ipi = irq - ipi_virq_base;
 
@@ -332,3 +342,8 @@ void arch_smp_send_reschedule(int cpu)
 	send_ipi_single(cpu, IPI_RESCHEDULE);
 }
 EXPORT_SYMBOL_GPL(arch_smp_send_reschedule);
+
+int ipi_virq_base_get(void)
+{
+	return ipi_virq_base;
+}
-- 
2.20.1


