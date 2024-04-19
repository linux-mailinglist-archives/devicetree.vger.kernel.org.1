Return-Path: <devicetree+bounces-60925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7638AAFC5
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 15:53:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 43BFA2825E7
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 13:53:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A61412C53F;
	Fri, 19 Apr 2024 13:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="X1rk6Ukx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A7FA12C49C
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 13:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713534811; cv=none; b=VDGhWdXmP4A7Mn0Wqh23/r6WZD0fmGPTHA8POIWo2id15ah9qpEgtXC2O11sgvvcyC1WX58w/gjiYNohIAkMbaBiUXuqupoXlLxCW4Ir2frGtiHIJkdOvMI3xwHdZeZQotOInRRJUv9+t2TqliEeQ6BoorehSqcnCeC/9Y3FCCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713534811; c=relaxed/simple;
	bh=5X0BUssV9Kt9dqZ168A9hVbOXB9i6otaw8DFvHNaeiw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-type; b=YV4+B3OoWs5lF0hZ7ouYpn1iywQBvaLV5YwKxwIIY6e5RO/COY0FrN+pTXryvkOiRQkGI8NV32OMGb9/EGvNaqkfM8GX3xM94UrxHQgNO7Vky/kYz2/s9XzgwyW8DLfm8JtIZ1qbei3a/pW6kJG+SzJph0dk0P0N3S57VxTQuE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=X1rk6Ukx; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-571c22d9de4so2213631a12.3
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 06:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1713534808; x=1714139608; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nEizurJcSR1aY1vBLFtX+JNkUfZx2QKjVF6QEsuG1UY=;
        b=X1rk6UkxpnrDNVXYp9yMjKW3Q+s67j2eWi/W7xEu79er2oY4oXWw0zKbssyZHfiEa1
         Col3drA1shbP10xpV/tiVSpN6U1uI1KMluj/tUw8wJnYWNRqFGwsJrWMOorZ40N6kG0U
         WQzh0FEs2Elk+l7qsOi2Qk5JMN+kCP3sITvkA++0TW5Jij0CcRUa8MiMEXbFZelaQ/5T
         U5ts0lf9uyETt/woCSPoQdoAWDcZTZ8n4F++OGsPQfM9dSICm776WXnBExQaxd96ktXF
         hY/s8zkutk8gL5S6zatE7Zr9c4OtJ54420yMIgkmFNLYU3k2yVkMh9YhGadH2RjUUJkl
         hfsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713534808; x=1714139608;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nEizurJcSR1aY1vBLFtX+JNkUfZx2QKjVF6QEsuG1UY=;
        b=X4p1516Clig2PY8j+rW2kaOs9RSE4iAkP2M6rEzVG5PjrtLBkNeMewFRXNeHgoFfI6
         aDviQI/j/sGcXAYL4+9PutDBJQLZzWaluu3qlYAuRtgiElO0/UHqJgZhhU1FI6MWaJVf
         R1duQA3maFdmFfTj+MQGL9Ps6/KhzVtC5tWoDZctS53FgijxLJE2RTAZ8E+AZk6DE5Hc
         AOnBk+FWIU4uEt1EoDSicsYMkSxfO4HPfyTsLMRIaRAm7TNlJXxvanSh974/9O2qPLLy
         sdkfIcyS+r4PJamsYrvFM7PBnlWCzmL5WEjfoGdkAUpcRRHR802Nf5Rm7C4+J46Jao2D
         tJiQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9GRqe77tgUlud/tIO7ydZKwMXh1J5czfO9WmV+p8+Ac73zH4nS5QKCbo4UJ6VbgdwB/fUcMIp8rerpPTN+xtFZcteVM7yPlXlNw==
X-Gm-Message-State: AOJu0YyBcKOkyZM06+OG1/c6ufs1LMA1u+1kEMMtwJept5dkLLlN/7c2
	t03GVji6TkAtjf0e4WPaUdIEGIbHaBDWS8AOsJpYQbok1EnLWtE0QlxXKMLLyi8=
X-Google-Smtp-Source: AGHT+IGkQt2hO18a+SNSAYfEOPucXpHAMV1WR0RrkuDvLuCw0MpZGKjuj++zRhwHCrnJC9FEvEAlqg==
X-Received: by 2002:a50:baad:0:b0:56e:323b:d7e7 with SMTP id x42-20020a50baad000000b0056e323bd7e7mr1751219ede.34.1713534807639;
        Fri, 19 Apr 2024 06:53:27 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id d6-20020a05640208c600b0056e72c4a330sm2148891edz.41.2024.04.19.06.53.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 06:53:27 -0700 (PDT)
From: Andrew Jones <ajones@ventanamicro.com>
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
	David.Laight@ACULAB.COM,
	parri.andrea@gmail.com,
	luxu.kernel@bytedance.com
Subject: [PATCH v2 3/6] riscv: Add Zawrs support for spinlocks
Date: Fri, 19 Apr 2024 15:53:25 +0200
Message-ID: <20240419135321.70781-11-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240419135321.70781-8-ajones@ventanamicro.com>
References: <20240419135321.70781-8-ajones@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-type: text/plain
Content-Transfer-Encoding: 8bit

From: Christoph Müllner <christoph.muellner@vrull.eu>

RISC-V code uses the generic ticket lock implementation, which calls
the macros smp_cond_load_relaxed() and smp_cond_load_acquire().
Introduce a RISC-V specific implementation of smp_cond_load_relaxed()
which applies WRS.NTO of the Zawrs extension in order to reduce power
consumption while waiting and allows hypervisors to enable guests to
trap while waiting. smp_cond_load_acquire() doesn't need a RISC-V
specific implementation as the generic implementation is based on
smp_cond_load_relaxed() and smp_acquire__after_ctrl_dep() sufficiently
provides the acquire semantics.

This implementation is heavily based on Arm's approach which is the
approach Andrea Parri also suggested.

The Zawrs specification can be found here:
https://github.com/riscv/riscv-zawrs/blob/main/zawrs.adoc

Signed-off-by: Christoph Müllner <christoph.muellner@vrull.eu>
Co-developed-by: Andrew Jones <ajones@ventanamicro.com>
Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/Kconfig                | 13 ++++++++
 arch/riscv/include/asm/barrier.h  | 45 ++++++++++++++++++---------
 arch/riscv/include/asm/cmpxchg.h  | 51 +++++++++++++++++++++++++++++++
 arch/riscv/include/asm/hwcap.h    |  1 +
 arch/riscv/include/asm/insn-def.h |  2 ++
 arch/riscv/kernel/cpufeature.c    |  1 +
 6 files changed, 98 insertions(+), 15 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 7427d8088337..34bbe6b70546 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -578,6 +578,19 @@ config RISCV_ISA_V_PREEMPTIVE
 	  preemption. Enabling this config will result in higher memory
 	  consumption due to the allocation of per-task's kernel Vector context.
 
+config RISCV_ISA_ZAWRS
+	bool "Zawrs extension support for more efficient busy waiting"
+	depends on RISCV_ALTERNATIVE
+	default y
+	help
+	  The Zawrs extension defines instructions to be used in polling loops
+	  which allow a hart to enter a low-power state or to trap to the
+	  hypervisor while waiting on a store to a memory location. Enable the
+	  use of these instructions in the kernel when the Zawrs extension is
+	  detected at boot.
+
+	  If you don't know what to do here, say Y.
+
 config TOOLCHAIN_HAS_ZBB
 	bool
 	default y
diff --git a/arch/riscv/include/asm/barrier.h b/arch/riscv/include/asm/barrier.h
index 880b56d8480d..e1d9bf1deca6 100644
--- a/arch/riscv/include/asm/barrier.h
+++ b/arch/riscv/include/asm/barrier.h
@@ -11,6 +11,7 @@
 #define _ASM_RISCV_BARRIER_H
 
 #ifndef __ASSEMBLY__
+#include <asm/cmpxchg.h>
 #include <asm/fence.h>
 
 #define nop()		__asm__ __volatile__ ("nop")
@@ -28,21 +29,6 @@
 #define __smp_rmb()	RISCV_FENCE(r, r)
 #define __smp_wmb()	RISCV_FENCE(w, w)
 
-#define __smp_store_release(p, v)					\
-do {									\
-	compiletime_assert_atomic_type(*p);				\
-	RISCV_FENCE(rw, w);						\
-	WRITE_ONCE(*p, v);						\
-} while (0)
-
-#define __smp_load_acquire(p)						\
-({									\
-	typeof(*p) ___p1 = READ_ONCE(*p);				\
-	compiletime_assert_atomic_type(*p);				\
-	RISCV_FENCE(r, rw);						\
-	___p1;								\
-})
-
 /*
  * This is a very specific barrier: it's currently only used in two places in
  * the kernel, both in the scheduler.  See include/linux/spinlock.h for the two
@@ -70,6 +56,35 @@ do {									\
  */
 #define smp_mb__after_spinlock()	RISCV_FENCE(iorw, iorw)
 
+#define __smp_store_release(p, v)					\
+do {									\
+	compiletime_assert_atomic_type(*p);				\
+	RISCV_FENCE(rw, w);						\
+	WRITE_ONCE(*p, v);						\
+} while (0)
+
+#define __smp_load_acquire(p)						\
+({									\
+	typeof(*p) ___p1 = READ_ONCE(*p);				\
+	compiletime_assert_atomic_type(*p);				\
+	RISCV_FENCE(r, rw);						\
+	___p1;								\
+})
+
+#ifdef CONFIG_RISCV_ISA_ZAWRS
+#define smp_cond_load_relaxed(ptr, cond_expr) ({			\
+	typeof(ptr) __PTR = (ptr);					\
+	__unqual_scalar_typeof(*ptr) VAL;				\
+	for (;;) {							\
+		VAL = READ_ONCE(*__PTR);				\
+		if (cond_expr)						\
+			break;						\
+		__cmpwait_relaxed(ptr, VAL);				\
+	}								\
+	(typeof(*ptr))VAL;						\
+})
+#endif
+
 #include <asm-generic/barrier.h>
 
 #endif /* __ASSEMBLY__ */
diff --git a/arch/riscv/include/asm/cmpxchg.h b/arch/riscv/include/asm/cmpxchg.h
index 2fee65cc8443..0926ac7f4ca6 100644
--- a/arch/riscv/include/asm/cmpxchg.h
+++ b/arch/riscv/include/asm/cmpxchg.h
@@ -8,7 +8,10 @@
 
 #include <linux/bug.h>
 
+#include <asm/alternative-macros.h>
 #include <asm/fence.h>
+#include <asm/hwcap.h>
+#include <asm/insn-def.h>
 
 #define __xchg_relaxed(ptr, new, size)					\
 ({									\
@@ -359,4 +362,52 @@
 	arch_cmpxchg_relaxed((ptr), (o), (n));				\
 })
 
+#ifdef CONFIG_RISCV_ISA_ZAWRS
+static __always_inline void __cmpwait(volatile void *ptr,
+				      unsigned long val,
+				      int size)
+{
+	unsigned long tmp;
+
+	asm goto(ALTERNATIVE("j %l[no_zawrs]", "nop",
+			     0, RISCV_ISA_EXT_ZAWRS, 1)
+		 : : : : no_zawrs);
+
+	switch (size) {
+	case 4:
+		asm volatile(
+		"	lr.w	%0, %1\n"
+		"	xor	%0, %0, %2\n"
+		"	bnez	%0, 1f\n"
+			ZAWRS_WRS_NTO "\n"
+		"1:"
+		: "=&r" (tmp), "+A" (*(u32 *)ptr)
+		: "r" (val));
+		break;
+#if __riscv_xlen == 64
+	case 8:
+		asm volatile(
+		"	lr.d	%0, %1\n"
+		"	xor	%0, %0, %2\n"
+		"	bnez	%0, 1f\n"
+			ZAWRS_WRS_NTO "\n"
+		"1:"
+		: "=&r" (tmp), "+A" (*(u64 *)ptr)
+		: "r" (val));
+		break;
+#endif
+	default:
+		BUILD_BUG();
+	}
+
+	return;
+
+no_zawrs:
+	asm volatile(RISCV_PAUSE : : : "memory");
+}
+
+#define __cmpwait_relaxed(ptr, val) \
+	__cmpwait((ptr), (unsigned long)(val), sizeof(*(ptr)))
+#endif
+
 #endif /* _ASM_RISCV_CMPXCHG_H */
diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index e17d0078a651..5b358c3cf212 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -81,6 +81,7 @@
 #define RISCV_ISA_EXT_ZTSO		72
 #define RISCV_ISA_EXT_ZACAS		73
 #define RISCV_ISA_EXT_XANDESPMU		74
+#define RISCV_ISA_EXT_ZAWRS		75
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/include/asm/insn-def.h b/arch/riscv/include/asm/insn-def.h
index 64dffaa21bfa..9a913010cdd9 100644
--- a/arch/riscv/include/asm/insn-def.h
+++ b/arch/riscv/include/asm/insn-def.h
@@ -197,5 +197,7 @@
 	       RS1(base), SIMM12(4))
 
 #define RISCV_PAUSE	".4byte 0x100000f"
+#define ZAWRS_WRS_NTO	".4byte 0x00d00073"
+#define ZAWRS_WRS_STO	".4byte 0x01d00073"
 
 #endif /* __ASM_INSN_DEF_H */
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 3ed2359eae35..02de9eaa3f42 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -257,6 +257,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(zihintpause, RISCV_ISA_EXT_ZIHINTPAUSE),
 	__RISCV_ISA_EXT_DATA(zihpm, RISCV_ISA_EXT_ZIHPM),
 	__RISCV_ISA_EXT_DATA(zacas, RISCV_ISA_EXT_ZACAS),
+	__RISCV_ISA_EXT_DATA(zawrs, RISCV_ISA_EXT_ZAWRS),
 	__RISCV_ISA_EXT_DATA(zfa, RISCV_ISA_EXT_ZFA),
 	__RISCV_ISA_EXT_DATA(zfh, RISCV_ISA_EXT_ZFH),
 	__RISCV_ISA_EXT_DATA(zfhmin, RISCV_ISA_EXT_ZFHMIN),
-- 
2.44.0


