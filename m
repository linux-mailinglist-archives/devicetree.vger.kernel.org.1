Return-Path: <devicetree+bounces-82228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F25BB9238ED
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 10:54:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B0D9F28108B
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 08:54:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE6C814F9D1;
	Tue,  2 Jul 2024 08:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="vXDW4Gpq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA9555C1A
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 08:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719910441; cv=none; b=EcFb2goSHM0XM5Sor25I9Nqb5VcDn8H3f2pTjb5tZ+zwcM5Q3iR0nCptZsBIVeZEV1w3XdZU/eCQRBUwcoGyweI9GO3bwnU2xcrxK8R55g7+UY+G2fO5G2PkDJb3zknX0bh/yvUnzFyIgGho+aBOGEUGB16OcBFyVImytdqr+gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719910441; c=relaxed/simple;
	bh=SJlW595uXad9rD6+zweV5SrXaZEpmVzYLMMUVwkQ4Ds=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=k6eankj8kwbAbwU0XmyOXEj41X51sRr5mR0+60LDUGTPI+a/Lut/C9LZEgjyVZiEPX45q+uj6qvOnB3+5qZ776xsULEyApeiQU7bOlbF9dbo52wETTGye3O4yfK6JNaxmBtWQX0WH8zzqP7fDUNdVfXff6L91WYW46VIPXQGJLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=vXDW4Gpq; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52ce6c8db7bso5890354e87.1
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 01:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1719910438; x=1720515238; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qWzpfXbjHTEv/qVD1sp5NKs48EnXRR4pt9tF+RZkbF0=;
        b=vXDW4Gpq+m0He4ncX2tDH+5HmKVN8P+jeYhiTtUlLlX+j1hU5GLOO0YUbZfZ6o9Vfq
         9cYkzKjsxGlUKSKRPGs77aZEJV9H7Yc/fyx4p7+A+P+IVVCnuPu7Qu3JTBZ/6bm90ODc
         i6soHLvw6cVR34rEknXMRH86BJ0qcUxuR9ySchcrgxyWYl/MvN0PdI1/1ObWtss7W2Et
         uNE9tj5m/A37Xkl0Oj4B1Px+COgHAPc7BgZcZj8ER+U2aVrXfrM7+xl231/pDFIWSTEW
         v4OfNcuSWjD5YHcJRAy8QfYtll/lr8JaPl2JzR3M69AnkLMBYDrh2RidvTBlpHvLgVrW
         olQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719910438; x=1720515238;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qWzpfXbjHTEv/qVD1sp5NKs48EnXRR4pt9tF+RZkbF0=;
        b=JsBPJvdjXxzE8RYtaVmPmMs8Rgw8lXCZsMo934LbgYbHnSQWU3tcWAnityFGv+ULEn
         thEf0oebBYALvZjvklNVeDHvEBRkm+JIZBQnR/0EXEraqXsgNmKMjxgF6KhGrzHioiQY
         milRJlOckDy3u8nINqMXt7RKFXM9LnbJ2zugxKconyR0uBPDrCdt2hIyjAj3N6yrkFi6
         G7qFJdYBdaO+veQdRK4rGWbLFFYOsOWsZWbV6OpLEdL/teOdibrebb8GOVvXAraCFilU
         mpatry7qZCkMvf8oCLxZTtTdcUId0x2dJKgafrstSLUzgiZyB0kW5Tct23opu/8XzUNT
         qlvw==
X-Forwarded-Encrypted: i=1; AJvYcCX1EZjWb+XvFAPyr0GkLllIJ1l9Im+8BWRF0UaWneFFBMiu9OyZOl/xgbRAjiU1X7/AKuD4VM323IA/xtML6Yc5WOzu7hlXzpA72g==
X-Gm-Message-State: AOJu0YwXGDJZpnXcrLgvo09hkRfHaf0aZWWnDzB2qN8DkT7f1SpI/dxn
	2e5ElWWoNcPKqNTjrnxnVdvygU3iOOd9vlYEWTQLgP+bW1z1AswmcNh3RRT9IXMDMs6digkNA/l
	G
X-Google-Smtp-Source: AGHT+IHoy9x/P0ESD1Ko6db8AW/GSdVra0tvpOtwPEzNBLiXt/55nzgCXAA/x4jgwswNzWcgNtid8A==
X-Received: by 2002:a19:434e:0:b0:52c:fd43:d2f7 with SMTP id 2adb3069b0e04-52e82692e4bmr4322494e87.37.1719910437924;
        Tue, 02 Jul 2024 01:53:57 -0700 (PDT)
Received: from alex-rivos.ba.rivosinc.com (amontpellier-656-1-456-62.w92-145.abo.wanadoo.fr. [92.145.124.62])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256b097b77sm185892835e9.33.2024.07.02.01.53.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 01:53:57 -0700 (PDT)
From: Alexandre Ghiti <alexghiti@rivosinc.com>
To: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Ved Shanbhogue <ved@rivosinc.com>,
	Matt Evans <mev@rivosinc.com>,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>
Subject: [PATCH v3 3/4] riscv: Stop emitting preventive sfence.vma for new vmalloc mappings
Date: Tue,  2 Jul 2024 10:50:33 +0200
Message-Id: <20240702085034.48395-4-alexghiti@rivosinc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240702085034.48395-1-alexghiti@rivosinc.com>
References: <20240702085034.48395-1-alexghiti@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In 6.5, we removed the vmalloc fault path because that can't work (see
[1] [2]). Then in order to make sure that new page table entries were
seen by the page table walker, we had to preventively emit a sfence.vma
on all harts [3] but this solution is very costly since it relies on IPI.

And even there, we could end up in a loop of vmalloc faults if a vmalloc
allocation is done in the IPI path (for example if it is traced, see
[4]), which could result in a kernel stack overflow.

Those preventive sfence.vma needed to be emitted because:

- if the uarch caches invalid entries, the new mapping may not be
  observed by the page table walker and an invalidation may be needed.
- if the uarch does not cache invalid entries, a reordered access
  could "miss" the new mapping and traps: in that case, we would actually
  only need to retry the access, no sfence.vma is required.

So this patch removes those preventive sfence.vma and actually handles
the possible (and unlikely) exceptions. And since the kernel stacks
mappings lie in the vmalloc area, this handling must be done very early
when the trap is taken, at the very beginning of handle_exception: this
also rules out the vmalloc allocations in the fault path.

Link: https://lore.kernel.org/linux-riscv/20230531093817.665799-1-bjorn@kernel.org/ [1]
Link: https://lore.kernel.org/linux-riscv/20230801090927.2018653-1-dylan@andestech.com [2]
Link: https://lore.kernel.org/linux-riscv/20230725132246.817726-1-alexghiti@rivosinc.com/ [3]
Link: https://lore.kernel.org/lkml/20200508144043.13893-1-joro@8bytes.org/ [4]
Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
---
 arch/riscv/include/asm/cacheflush.h  | 18 +++++-
 arch/riscv/include/asm/thread_info.h |  5 ++
 arch/riscv/kernel/asm-offsets.c      |  5 ++
 arch/riscv/kernel/entry.S            | 84 ++++++++++++++++++++++++++++
 arch/riscv/mm/init.c                 |  2 +
 5 files changed, 113 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/cacheflush.h b/arch/riscv/include/asm/cacheflush.h
index ce79c558a4c8..8de73f91bfa3 100644
--- a/arch/riscv/include/asm/cacheflush.h
+++ b/arch/riscv/include/asm/cacheflush.h
@@ -46,7 +46,23 @@ do {							\
 } while (0)
 
 #ifdef CONFIG_64BIT
-#define flush_cache_vmap(start, end)		flush_tlb_kernel_range(start, end)
+extern u64 new_vmalloc[NR_CPUS / sizeof(u64) + 1];
+extern char _end[];
+#define flush_cache_vmap flush_cache_vmap
+static inline void flush_cache_vmap(unsigned long start, unsigned long end)
+{
+	if (is_vmalloc_or_module_addr((void *)start)) {
+		int i;
+
+		/*
+		 * We don't care if concurrently a cpu resets this value since
+		 * the only place this can happen is in handle_exception() where
+		 * an sfence.vma is emitted.
+		 */
+		for (i = 0; i < ARRAY_SIZE(new_vmalloc); ++i)
+			new_vmalloc[i] = -1ULL;
+	}
+}
 #define flush_cache_vmap_early(start, end)	local_flush_tlb_kernel_range(start, end)
 #endif
 
diff --git a/arch/riscv/include/asm/thread_info.h b/arch/riscv/include/asm/thread_info.h
index 5d473343634b..32631acdcdd4 100644
--- a/arch/riscv/include/asm/thread_info.h
+++ b/arch/riscv/include/asm/thread_info.h
@@ -60,6 +60,11 @@ struct thread_info {
 	void			*scs_base;
 	void			*scs_sp;
 #endif
+	/*
+	 * Used in handle_exception() to save a0, a1 and a2 before knowing if we
+	 * can access the kernel stack.
+	 */
+	unsigned long		a0, a1, a2;
 };
 
 #ifdef CONFIG_SHADOW_CALL_STACK
diff --git a/arch/riscv/kernel/asm-offsets.c b/arch/riscv/kernel/asm-offsets.c
index b09ca5f944f7..29c0734f2972 100644
--- a/arch/riscv/kernel/asm-offsets.c
+++ b/arch/riscv/kernel/asm-offsets.c
@@ -36,6 +36,8 @@ void asm_offsets(void)
 	OFFSET(TASK_THREAD_S9, task_struct, thread.s[9]);
 	OFFSET(TASK_THREAD_S10, task_struct, thread.s[10]);
 	OFFSET(TASK_THREAD_S11, task_struct, thread.s[11]);
+
+	OFFSET(TASK_TI_CPU, task_struct, thread_info.cpu);
 	OFFSET(TASK_TI_FLAGS, task_struct, thread_info.flags);
 	OFFSET(TASK_TI_PREEMPT_COUNT, task_struct, thread_info.preempt_count);
 	OFFSET(TASK_TI_KERNEL_SP, task_struct, thread_info.kernel_sp);
@@ -43,6 +45,9 @@ void asm_offsets(void)
 #ifdef CONFIG_SHADOW_CALL_STACK
 	OFFSET(TASK_TI_SCS_SP, task_struct, thread_info.scs_sp);
 #endif
+	OFFSET(TASK_TI_A0, task_struct, thread_info.a0);
+	OFFSET(TASK_TI_A1, task_struct, thread_info.a1);
+	OFFSET(TASK_TI_A2, task_struct, thread_info.a2);
 
 	OFFSET(TASK_TI_CPU_NUM, task_struct, thread_info.cpu);
 	OFFSET(TASK_THREAD_F0,  task_struct, thread.fstate.f[0]);
diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index 68a24cf9481a..822311266a12 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -19,6 +19,78 @@
 
 	.section .irqentry.text, "ax"
 
+.macro new_vmalloc_check
+	REG_S 	a0, TASK_TI_A0(tp)
+	REG_S 	a1, TASK_TI_A1(tp)
+	REG_S	a2, TASK_TI_A2(tp)
+
+	csrr 	a0, CSR_CAUSE
+	/* Exclude IRQs */
+	blt  	a0, zero, _new_vmalloc_restore_context
+	/* Only check new_vmalloc if we are in page/protection fault */
+	li   	a1, EXC_LOAD_PAGE_FAULT
+	beq  	a0, a1, _new_vmalloc_kernel_address
+	li   	a1, EXC_STORE_PAGE_FAULT
+	beq  	a0, a1, _new_vmalloc_kernel_address
+	li   	a1, EXC_INST_PAGE_FAULT
+	bne  	a0, a1, _new_vmalloc_restore_context
+
+_new_vmalloc_kernel_address:
+	/* Is it a kernel address? */
+	csrr 	a0, CSR_TVAL
+	bge 	a0, zero, _new_vmalloc_restore_context
+
+	/* Check if a new vmalloc mapping appeared that could explain the trap */
+
+	/*
+	 * Computes:
+	 * a0 = &new_vmalloc[BIT_WORD(cpu)]
+	 * a1 = BIT_MASK(cpu)
+	 */
+	REG_L 	a2, TASK_TI_CPU(tp)
+	/*
+	 * Compute the new_vmalloc element position:
+	 * (cpu / 64) * 8 = (cpu >> 6) << 3
+	 */
+	srli	a1, a2, 6
+	slli	a1, a1, 3
+	la	a0, new_vmalloc
+	add	a0, a0, a1
+	/*
+	 * Compute the bit position in the new_vmalloc element:
+	 * bit_pos = cpu % 64 = cpu - (cpu / 64) * 64 = cpu - (cpu >> 6) << 6
+	 * 	   = cpu - ((cpu >> 6) << 3) << 3
+	 */
+	slli	a1, a1, 3
+	sub	a1, a2, a1
+	/* Compute the "get mask": 1 << bit_pos */
+	li	a2, 1
+	sll	a1, a2, a1
+
+	/* Check the value of new_vmalloc for this cpu */
+	REG_L	a2, 0(a0)
+	and	a2, a2, a1
+	beq	a2, zero, _new_vmalloc_restore_context
+
+	/* Atomically reset the current cpu bit in new_vmalloc */
+	amoxor.w	a0, a1, (a0)
+
+	/* Only emit a sfence.vma if the uarch caches invalid entries */
+	ALTERNATIVE("sfence.vma", "nop", 0, RISCV_ISA_EXT_SVVPTC, 1)
+
+	REG_L	a0, TASK_TI_A0(tp)
+	REG_L	a1, TASK_TI_A1(tp)
+	REG_L	a2, TASK_TI_A2(tp)
+	csrw	CSR_SCRATCH, x0
+	sret
+
+_new_vmalloc_restore_context:
+	REG_L	a0, TASK_TI_A0(tp)
+	REG_L 	a1, TASK_TI_A1(tp)
+	REG_L 	a2, TASK_TI_A2(tp)
+.endm
+
+
 SYM_CODE_START(handle_exception)
 	/*
 	 * If coming from userspace, preserve the user thread pointer and load
@@ -30,6 +102,18 @@ SYM_CODE_START(handle_exception)
 
 .Lrestore_kernel_tpsp:
 	csrr tp, CSR_SCRATCH
+
+	/*
+	 * The RISC-V kernel does not eagerly emit a sfence.vma after each
+	 * new vmalloc mapping, which may result in exceptions:
+	 * - if the uarch caches invalid entries, the new mapping would not be
+	 *   observed by the page table walker and an invalidation is needed.
+	 * - if the uarch does not cache invalid entries, a reordered access
+	 *   could "miss" the new mapping and traps: in that case, we only need
+	 *   to retry the access, no sfence.vma is required.
+	 */
+	new_vmalloc_check
+
 	REG_S sp, TASK_TI_KERNEL_SP(tp)
 
 #ifdef CONFIG_VMAP_STACK
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index e3405e4b99af..2367a156c33b 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -36,6 +36,8 @@
 
 #include "../kernel/head.h"
 
+u64 new_vmalloc[NR_CPUS / sizeof(u64) + 1];
+
 struct kernel_mapping kernel_map __ro_after_init;
 EXPORT_SYMBOL(kernel_map);
 #ifdef CONFIG_XIP_KERNEL
-- 
2.39.2


