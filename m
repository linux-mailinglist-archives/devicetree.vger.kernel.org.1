Return-Path: <devicetree+bounces-62976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0648B34F2
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 12:08:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF16B1F21F4A
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 10:08:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2F971428E9;
	Fri, 26 Apr 2024 10:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="F6wzXs+P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F123113F42F
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 10:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714126108; cv=none; b=kBxWdyMI+lWfy5puQgwabQ62Ep+MNt76BziGT5ru352kPFgGdMpvfFJzvdGrXGQdSFTO9FMYufPfV3ftlrtIz+pDaM0C3/Fb5sGvLyc0rLbKEPuFWTJRP1ctjP1N7KjiuBPTjwmmY+iKnsNS4PoCbxMbs/P4sKWf5ncpkuKuc3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714126108; c=relaxed/simple;
	bh=mliGHJw/lhp1w2Htr7nMCGVMPH50unT+ZRIR4xUQyVw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-type; b=TbJPMyb2t/0YbPeQVY+J8kMyeWvwWrMNUMacg62nEAY/DxemBOLaZb6Ryql/eAuyZiK9MaIZmZz7k9FluYKoKR5z6gIbe/kxKqdodrL3MAjsZ5gsKzTTbnJUwsOCJDVN1gpS7eGBO4muGrs6+Ui4nUaWdGDeQYEI74b0RJQCx/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=F6wzXs+P; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-41b21ed19f5so13086725e9.2
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 03:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1714126105; x=1714730905; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E8O3jKW5zyNbrO6dtUbBgWHQ1PyDPXudMYuuJfu6UIA=;
        b=F6wzXs+PLxyCSmNo9QV9dsw6nmJMySNOa2b/vmX6/BT5I9ZLsCmdi7WA0tebhK3rmU
         a+4pd5ls9PKnGNdzektCXzicrDutHB99mZaqDIFTJ/lkptGgBs68xOabQxoi4qeVlfA7
         aC1s6iu4LTYGU7Qm8uBpzZ8TtLo+61MzC68ait3YMx12RloDvvXzNbDzWWqWcVanB7Wi
         CEHablpQ4yX+b6DPMCKpuIOuzzoBphwdG8iazLkJ3pfxZN8752vmLdgotH71FN2ANPec
         eQTLbP8fw7MM+ls++rZyEEYUa6zVzs3rJpp5XXKY8OhqzJq8upbeGCkg+zJOstCHcPkl
         09Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714126105; x=1714730905;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E8O3jKW5zyNbrO6dtUbBgWHQ1PyDPXudMYuuJfu6UIA=;
        b=v5Wk93a3yvsp36N+jx/5t4VZF0n6KmgmLHLC+QiDg05Ml0MjkuSUgCyEYsVNnKQ4tU
         /jm5N/ICRdAevMq5jJrZGQOjF6Pp20Z0h0VqyuGunz+1rf+d9eF15M3dA063CufB3ZYP
         AXrSslEHy2qFFNOVJFGMA1MwMhkr0wId6VQeoVcu27y3QMkzIdVfhRx5TcCQAUajjqiE
         6H8i1r004A8TJwdwehEzzLgfH2BsOXqQpOiGSvuGOJfHI7mz+jvDK+V01Pgc5TDKtb5k
         Q8Wxpl5eLmhuZppICnLstJU7ZmfesSvnAk2vsVlbkmnZGoipn8KZIMDgI6oSCRRxrViW
         MO5w==
X-Forwarded-Encrypted: i=1; AJvYcCVPAtZKo95hzsJu5AdjWVbd9hWKs3Kxq9tDmTwqYXKm+ELwbX0UkfQ5ZpurFukq9iQxVngaQOVE8hHmfel4nMqbjNkMyu7zrhmudg==
X-Gm-Message-State: AOJu0YymVqjzZ4eb8DLQbp4TIdp72vqMymz5UUvUJR23IemnDnBbZQgv
	pGR3eK0J5RTHMp2QIWTYSF4rXxp3q21BZPIhtSXc1Bxd5MblcY5H7YxRaar3sz8=
X-Google-Smtp-Source: AGHT+IFS7q1eCgZ4QHsbL9HU68hWE0WmzFBmq4oRwln3KHr9st3diU9z/2R70C7iw2dqysNRZyGPzw==
X-Received: by 2002:a05:600c:3d86:b0:41b:8a7d:c34c with SMTP id bi6-20020a05600c3d8600b0041b8a7dc34cmr1125310wmb.20.1714126105104;
        Fri, 26 Apr 2024 03:08:25 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id ay39-20020a05600c1e2700b0041b61504565sm3991687wmb.28.2024.04.26.03.08.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 03:08:24 -0700 (PDT)
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
Subject: [PATCH v3 3/6] riscv: Add Zawrs support for spinlocks
Date: Fri, 26 Apr 2024 12:08:23 +0200
Message-ID: <20240426100820.14762-11-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240426100820.14762-8-ajones@ventanamicro.com>
References: <20240426100820.14762-8-ajones@ventanamicro.com>
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
 arch/riscv/Kconfig                | 13 +++++++
 arch/riscv/include/asm/barrier.h  | 45 ++++++++++++++++--------
 arch/riscv/include/asm/cmpxchg.h  | 58 +++++++++++++++++++++++++++++++
 arch/riscv/include/asm/hwcap.h    |  1 +
 arch/riscv/include/asm/insn-def.h |  2 ++
 arch/riscv/kernel/cpufeature.c    |  1 +
 6 files changed, 105 insertions(+), 15 deletions(-)

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
index 2fee65cc8443..725276dcb996 100644
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
@@ -359,4 +362,59 @@
 	arch_cmpxchg_relaxed((ptr), (o), (n));				\
 })
 
+#ifdef CONFIG_RISCV_ISA_ZAWRS
+/*
+ * Despite wrs.nto being "WRS-with-no-timeout", in the absence of changes to
+ * @val we expect it to still terminate within a "reasonable" amount of time
+ * for an implementation-specific other reason, a pending, locally-enabled
+ * interrupt, or because it has been configured to raise an illegal
+ * instruction exception.
+ */
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


