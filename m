Return-Path: <devicetree+bounces-78350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9AB9120A9
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 11:32:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13C1A285DF8
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 09:32:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78ADA78C8D;
	Fri, 21 Jun 2024 09:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="LKi+V1H6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E3816DEC2
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 09:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718962363; cv=none; b=lxl9yZVivUR/GbuKmFKudDO6wqukA8e4JAGNZK6ZcZQyGvxoEGKqR0cxwM+aUPCEX8M1zC9NjGU/noHVvnQ/PLwCZPowlPBHO4mYjToxXjYGHyRf0F27h5aocbW00rW5vKsBH7yyXiUovqCqyJ4yoKgtInLun+vwj7hhCcz/n7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718962363; c=relaxed/simple;
	bh=ilfdGg6CdAsAdNVcRoo77zwH7QdmCD6vMKpdV8kKSOo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VNpJ6et+FPtEg6YzPxooD+M0U8qHhn975tkMwH3cOdPFSpXJN6yt/Ak816yrlvosNvR4iEW+Y9QRk2esWiVEud/VvzvVWQTT+sc8GLhH75vYdazP1GH1W9BTKSVmkiP+CQc0PXxopBOnV2gIySp+iIT/kmkLvAe9oHNiWaNR2jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=LKi+V1H6; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3c9cc66c649so830473b6e.1
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 02:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1718962360; x=1719567160; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fGIGu1QUhBsktwpUPOKpE8P34T3ApzsbK5/ENNJ+dHs=;
        b=LKi+V1H6HTXu1/Lqdno3Jl8Ik+AkBlGxVBF81LPQiPSBhjQBqi1PwRr0vpC5CRvqw8
         ZTk5MgAew14f5IWtuxeCyhKRsYRMjIpfofMJ1L5VMJsOUBIlrqgUeDJW4ph5a1ujV3sk
         wLV7RaBaxGHZ0oPtZmRRdy7sjL7iMemI+fZRtUbFdMvXRBF3P9dxbn8kKC8nDOhAorTo
         0Hv+ApuoZGI0M6jy0Is6kBbT6ArCWv1hHj8PKT/nGtqBWZHY6Jqqzil1sn9FBE0pTif7
         iHs88HNJ0lgR5eJGkCiY9qgS/Ak9W+troTs21IZBDgECqfu6gqQZFhJVoJfzPS4aL0RG
         of4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718962360; x=1719567160;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fGIGu1QUhBsktwpUPOKpE8P34T3ApzsbK5/ENNJ+dHs=;
        b=uJuoddoP9Gl0eYQX+w3nUqmYIAHckBUPdK5/phK4JJRyywdoAyq4KdK51E4jire9US
         p19GOexZXm1i7mOS7vd/ogWQsz73vF5lukej5PEVwJt0RSx1G8oVtuttHmTmen1ECCcN
         0Kx8BvPyQCW4NSvcRavUqi/jQWMyaXKmN5FulMNr4upPfmykCg4Sty6myhIj1cfzd+K/
         vle+rtms8OiBxOSgLqsG4u3xON3Mi75/cVD0Sb8oVA8T35yb4oDQFAUA0dSDdBcc7ILx
         vvIgL6Iu6utJ86Z0UiPO2xZVfKVdoFACuoOijqmwIOWGgp5+aYT/EFkVs7OBp7Hat9Vg
         3t5g==
X-Forwarded-Encrypted: i=1; AJvYcCVSeG5pZg00Ljn25yrthca5gnjT/rDK/aisP3f3y309jOaJtZL7MAaVcnMUw+DA+M5Vc5BnI41nl21h8bLoHVvXMMozHDyl4GMQhQ==
X-Gm-Message-State: AOJu0YzLeuw+sOJ5GregAmXm9vxr859QDWxDr7ZkllUuWVEjKz7YqVX8
	SvCrU8HH3yma6NwSzDZ3tswnkD7mid5Vyx9tFtMy4VecwBlyLa6DKS6VlSGUIEs=
X-Google-Smtp-Source: AGHT+IFNK1H6Yqd1iJz0ZbHduOnD+WCNo9reooO6aMGXLiN3SjbCwLwX3YRBxhOXjm0hDh01lxikQQ==
X-Received: by 2002:a05:6808:1782:b0:3d5:1bd8:ab1f with SMTP id 5614622812f47-3d51bd8ac9amr9439532b6e.17.1718962360548;
        Fri, 21 Jun 2024 02:32:40 -0700 (PDT)
Received: from J9GPGXL7NT.bytedance.net ([61.213.176.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7065124dd26sm968415b3a.127.2024.06.21.02.32.34
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Fri, 21 Jun 2024 02:32:40 -0700 (PDT)
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
	Xu Lu <luxu.kernel@bytedance.com>,
	Hangjing Li <lihangjing@bytedance.com>,
	Liang Deng <dengliang.1214@bytedance.com>,
	Wen Chai <chaiwen.cc@bytedance.com>
Subject: [RFC v2 1/2] riscv: process: Introduce idle thread using Zawrs extension
Date: Fri, 21 Jun 2024 17:32:22 +0800
Message-Id: <20240621093223.37893-2-luxu.kernel@bytedance.com>
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

The Zawrs extension introduces a new instruction WRS.NTO, which will
register a reservation set and causes the hart to temporarily stall
execution in a low-power state until a store occurs to the reservation
set or an interrupt is observed.

This commit implements new version of idle thread for RISC-V via Zawrs
extension.

Signed-off-by: Xu Lu <luxu.kernel@bytedance.com>
Reviewed-by: Hangjing Li <lihangjing@bytedance.com>
Reviewed-by: Liang Deng <dengliang.1214@bytedance.com>
Reviewed-by: Wen Chai <chaiwen.cc@bytedance.com>
---
 arch/riscv/Kconfig                 | 10 ++++++++
 arch/riscv/include/asm/cpuidle.h   | 11 +-------
 arch/riscv/include/asm/processor.h | 18 +++++++++++++
 arch/riscv/kernel/cpu.c            |  5 ++++
 arch/riscv/kernel/process.c        | 41 +++++++++++++++++++++++++++++-
 5 files changed, 74 insertions(+), 11 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 34bbe6b70546..898e61bbb328 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -19,6 +19,7 @@ config RISCV
 	select ARCH_ENABLE_SPLIT_PMD_PTLOCK if PGTABLE_LEVELS > 2
 	select ARCH_ENABLE_THP_MIGRATION if TRANSPARENT_HUGEPAGE
 	select ARCH_HAS_BINFMT_FLAT
+	select ARCH_HAS_CPU_FINALIZE_INIT
 	select ARCH_HAS_CURRENT_STACK_POINTER
 	select ARCH_HAS_DEBUG_VIRTUAL if MMU
 	select ARCH_HAS_DEBUG_VM_PGTABLE
@@ -1081,6 +1082,15 @@ endmenu # "Power management options"
 
 menu "CPU Power Management"
 
+config RISCV_ZAWRS_IDLE
+	bool "Idle thread using ZAWRS extensions"
+	depends on RISCV_ISA_ZAWRS
+	default y
+	help
+		Adds support to implement idle thread using ZAWRS extension.
+
+		If you don't know what to do here, say Y.
+
 source "drivers/cpuidle/Kconfig"
 
 source "drivers/cpufreq/Kconfig"
diff --git a/arch/riscv/include/asm/cpuidle.h b/arch/riscv/include/asm/cpuidle.h
index 71fdc607d4bc..94c9ecb46571 100644
--- a/arch/riscv/include/asm/cpuidle.h
+++ b/arch/riscv/include/asm/cpuidle.h
@@ -10,15 +10,6 @@
 #include <asm/barrier.h>
 #include <asm/processor.h>
 
-static inline void cpu_do_idle(void)
-{
-	/*
-	 * Add mb() here to ensure that all
-	 * IO/MEM accesses are completed prior
-	 * to entering WFI.
-	 */
-	mb();
-	wait_for_interrupt();
-}
+void cpu_do_idle(void);
 
 #endif
diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
index 0faf5f161f1e..5ad572645bee 100644
--- a/arch/riscv/include/asm/processor.h
+++ b/arch/riscv/include/asm/processor.h
@@ -12,6 +12,7 @@
 
 #include <vdso/processor.h>
 
+#include <asm/insn-def.h>
 #include <asm/ptrace.h>
 
 /*
@@ -157,6 +158,21 @@ static inline void wait_for_interrupt(void)
 	__asm__ __volatile__ ("wfi");
 }
 
+static inline void wrs_nto(unsigned long *addr)
+{
+	int val;
+
+	__asm__ __volatile__(
+#ifdef CONFIG_64BIT
+			"lr.d %[p], %[v]\n\t"
+#else
+			"lr.w %[p], %[v]\n\t"
+#endif
+			ZAWRS_WRS_NTO "\n\t"
+			: [p] "=&r" (val), [v] "+A" (*addr)
+			: : "memory");
+}
+
 extern phys_addr_t dma32_phys_limit;
 
 struct device_node;
@@ -183,6 +199,8 @@ extern int set_unalign_ctl(struct task_struct *tsk, unsigned int val);
 #define GET_UNALIGN_CTL(tsk, addr)	get_unalign_ctl((tsk), (addr))
 #define SET_UNALIGN_CTL(tsk, val)	set_unalign_ctl((tsk), (val))
 
+extern void select_idle_routine(void);
+
 #endif /* __ASSEMBLY__ */
 
 #endif /* _ASM_RISCV_PROCESSOR_H */
diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index d11d6320fb0d..69cebd41f5f3 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -22,6 +22,11 @@ bool arch_match_cpu_phys_id(int cpu, u64 phys_id)
 	return phys_id == cpuid_to_hartid_map(cpu);
 }
 
+void __init arch_cpu_finalize_init(void)
+{
+	select_idle_routine();
+}
+
 /*
  * Returns the hart ID of the given device tree node, or -ENODEV if the node
  * isn't an enabled and valid RISC-V hart node.
diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index 92922dbd5b5c..9f0f7b888bc1 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -15,6 +15,7 @@
 #include <linux/tick.h>
 #include <linux/ptrace.h>
 #include <linux/uaccess.h>
+#include <linux/static_call.h>
 
 #include <asm/unistd.h>
 #include <asm/processor.h>
@@ -37,11 +38,49 @@ EXPORT_SYMBOL(__stack_chk_guard);
 
 extern asmlinkage void ret_from_fork(void);
 
-void arch_cpu_idle(void)
+static __cpuidle void default_idle(void)
+{
+	/*
+	 * Add mb() here to ensure that all
+	 * IO/MEM accesses are completed prior
+	 * to entering WFI.
+	 */
+	mb();
+	wait_for_interrupt();
+}
+
+static __cpuidle void wrs_idle(void)
+{
+	/*
+	 * Add mb() here to ensure that all
+	 * IO/MEM accesses are completed prior
+	 * to entering WRS.NTO.
+	 */
+	mb();
+	wrs_nto(&current_thread_info()->flags);
+}
+
+DEFINE_STATIC_CALL_NULL(riscv_idle, default_idle);
+
+void __cpuidle cpu_do_idle(void)
+{
+	static_call(riscv_idle)();
+}
+
+void __cpuidle arch_cpu_idle(void)
 {
 	cpu_do_idle();
 }
 
+void __init select_idle_routine(void)
+{
+	if (IS_ENABLED(CONFIG_RISCV_ZAWRS_IDLE) &&
+			riscv_has_extension_likely(RISCV_ISA_EXT_ZAWRS))
+		static_call_update(riscv_idle, wrs_idle);
+	else
+		static_call_update(riscv_idle, default_idle);
+}
+
 int set_unalign_ctl(struct task_struct *tsk, unsigned int val)
 {
 	if (!unaligned_ctl_available())
-- 
2.20.1


