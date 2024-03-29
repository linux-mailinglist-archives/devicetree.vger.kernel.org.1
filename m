Return-Path: <devicetree+bounces-54446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4BA8912B9
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 05:49:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22EE81F21B71
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 04:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8306F4AEDB;
	Fri, 29 Mar 2024 04:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Xran6/H7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA8B47F7C
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 04:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711687595; cv=none; b=frnAuTSJNruvF3PS5p0wNlZ8l9MpRGjpNX2t6RQjJIFKtz/iAjBWqqRVl7UKjJTX9uM22to4/gkfPAP0d9qYxnnpAbeqItdS6YdKBT227wGQmwh/4JF1cTXLCX8N/i6ptQVNiTY+GjRMzJYtu9lKu3FR+GzdkGRrczid200j170=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711687595; c=relaxed/simple;
	bh=zXTnxyxO0ctOFR9gaQSVUW0dd5k2RT6RVsNcVPVdqq8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GKA4oFOHc/WLDs5jg59Nw2s8sG6yp6yFEIAYBfB0lr7/VDVJEEHbppYN8uIOEAV5W7lXDMGZgugz8/Cp8a5wLnzsYiqmqXuvCTzRb0DVsXstqXk+PTburHgDK8Tu+S30lK07EKXw1XfTGcP6NAiHnIHJV2xO1+bnd9wbiG/J7fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Xran6/H7; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6e6d0bf038fso780407a34.0
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 21:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1711687591; x=1712292391; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vWiplIlW31qhAH9G0EN+9lbe2UL6EQeHM69L+wLLGcE=;
        b=Xran6/H73PTBCLLSUFuX7k1EhTAMff8a0Kqz4nzwR48blxCTz2YUNAcaklVt/+UXJT
         wMebZ0l0Pf4yLTu0LGTjtP1RuoISH36IxWC5cGpBpi/w1a/jSnkOIyQ25b+ROuH9YZnk
         aZhcxMZYZJPcbxhUZzm7ZpmCXF8KgXQvPK1/ClzxFYki1qDdoJVf6IxypcANiukvO+5Q
         fNU0AmXwfdc3SFJPknj4BxeQLxPS0+RWb9NRYXlCechKa/9B3iLr9xNTC0AQveGgl216
         4prZ6IIuIHpdpOSV9/Qhi7L+7luxa9tCdYtpZ4GEK0lZfcVh6iBbwKZkEjrL4q0GWVBq
         fiAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711687591; x=1712292391;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vWiplIlW31qhAH9G0EN+9lbe2UL6EQeHM69L+wLLGcE=;
        b=SRME9bzwsN2deSXK31DamcO4s5VO2Qj1sD1/eNlIbn/EfKIFsV8uH8rLUOU5ua23va
         4tAazaFb6oiEXdhKhYwpWA6MCg7chmiZY0/FAktcgiabUOtHdBmudFMOIsswBhPMtrO9
         vJMVRWlII09pRHQP+k72Kn2+j+OIxdjdoYOz5N48Ysu5Qy8kUV0XhS204wpCo8hE/nyj
         i8lw2bFkWBDjVz5rtfAK9PiVUyGOdfPHmBKrbA1qJcutZv+n5o+hMdOtgcEWxOCe1r7x
         Apxh6qUPCL94uL1isYbGnivB6p+byVlzOXvhbHtJ7dRtStxJ8y2MUSIPCCRSJJNozZHZ
         gS9A==
X-Forwarded-Encrypted: i=1; AJvYcCV+luq7ySeny+sm/X+d04/nkbwaeOmD6Emzm4CNJTBOEEWKintxEG19SGLvok2u5S5P0A93n6l1KdEQCy75Bf4EmAzrIFZH6cNNRA==
X-Gm-Message-State: AOJu0Yxfro3M4kkTWZVfFr0DvrFPhGH7wQwrZglH0YKZXzKsUs8w3NMK
	XPOZG5ofioeJRXkNRkyI8GfQqlifELZAmN/d5Tq5qscnz327sREREUPEnbgs0JY=
X-Google-Smtp-Source: AGHT+IG2q899R9JGeS5nozXHnh9Ry9gbEzktPA3yoTFDILtnZi8qjOW1iZz6YGnMIm2Gd0G3acAhqg==
X-Received: by 2002:a05:6871:76e5:b0:220:e608:89c with SMTP id od37-20020a05687176e500b00220e608089cmr680595oac.28.1711687591158;
        Thu, 28 Mar 2024 21:46:31 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id i18-20020aa78b52000000b006ea7e972947sm2217120pfd.130.2024.03.28.21.46.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 21:46:30 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
To: paul.walmsley@sifive.com,
	rick.p.edgecombe@intel.com,
	broonie@kernel.org,
	Szabolcs.Nagy@arm.com,
	kito.cheng@sifive.com,
	keescook@chromium.org,
	ajones@ventanamicro.com,
	conor.dooley@microchip.com,
	cleger@rivosinc.com,
	atishp@atishpatra.org,
	alex@ghiti.fr,
	bjorn@rivosinc.com,
	alexghiti@rivosinc.com,
	samuel.holland@sifive.com,
	palmer@sifive.com,
	conor@kernel.org,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mm@kvack.org,
	linux-arch@vger.kernel.org,
	linux-kselftest@vger.kernel.org
Cc: corbet@lwn.net,
	tech-j-ext@lists.risc-v.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	oleg@redhat.com,
	akpm@linux-foundation.org,
	arnd@arndb.de,
	ebiederm@xmission.com,
	Liam.Howlett@oracle.com,
	vbabka@suse.cz,
	lstoakes@gmail.com,
	shuah@kernel.org,
	brauner@kernel.org,
	debug@rivosinc.com,
	andy.chiu@sifive.com,
	jerry.shih@sifive.com,
	hankuan.chen@sifive.com,
	greentime.hu@sifive.com,
	evan@rivosinc.com,
	xiao.w.wang@intel.com,
	charlie@rivosinc.com,
	apatel@ventanamicro.com,
	mchitale@ventanamicro.com,
	dbarboza@ventanamicro.com,
	sameo@rivosinc.com,
	shikemeng@huaweicloud.com,
	willy@infradead.org,
	vincent.chen@sifive.com,
	guoren@kernel.org,
	samitolvanen@google.com,
	songshuaishuai@tinylab.org,
	gerg@kernel.org,
	heiko@sntech.de,
	bhe@redhat.com,
	jeeheng.sia@starfivetech.com,
	cyy@cyyself.name,
	maskray@google.com,
	ancientmodern4@gmail.com,
	mathis.salmen@matsal.de,
	cuiyunhui@bytedance.com,
	bgray@linux.ibm.com,
	mpe@ellerman.id.au,
	baruch@tkos.co.il,
	alx@kernel.org,
	david@redhat.com,
	catalin.marinas@arm.com,
	revest@chromium.org,
	josh@joshtriplett.org,
	shr@devkernel.io,
	deller@gmx.de,
	omosnace@redhat.com,
	ojeda@kernel.org,
	jhubbard@nvidia.com
Subject: [PATCH v2 14/27] riscv/shstk: If needed allocate a new shadow stack on clone
Date: Thu, 28 Mar 2024 21:44:46 -0700
Message-Id: <20240329044459.3990638-15-debug@rivosinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240329044459.3990638-1-debug@rivosinc.com>
References: <20240329044459.3990638-1-debug@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Userspace specifies VM_CLONE to share address space and spawn new thread.
`clone` allow userspace to specify a new stack for new thread. However
there is no way to specify new shadow stack base address without changing
API. This patch allocates a new shadow stack whenever VM_CLONE is given.

In case of VM_FORK, parent is suspended until child finishes and thus can
child use parent shadow stack. In case of !VM_CLONE, COW kicks in because
entire address space is copied from parent to child.

`clone3` is extensible and can provide mechanisms using which shadow stack
as an input parameter can be provided. This is not settled yet and being
extensively discussed on mailing list. Once that's settled, this commit
will adapt to that.

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/include/asm/usercfi.h |  39 ++++++++++
 arch/riscv/kernel/process.c      |  12 +++
 arch/riscv/kernel/usercfi.c      | 121 +++++++++++++++++++++++++++++++
 3 files changed, 172 insertions(+)

diff --git a/arch/riscv/include/asm/usercfi.h b/arch/riscv/include/asm/usercfi.h
index 4fa201b4fc4e..b47574a7a8c9 100644
--- a/arch/riscv/include/asm/usercfi.h
+++ b/arch/riscv/include/asm/usercfi.h
@@ -8,6 +8,9 @@
 #ifndef __ASSEMBLY__
 #include <linux/types.h>
 
+struct task_struct;
+struct kernel_clone_args;
+
 #ifdef CONFIG_RISCV_USER_CFI
 struct cfi_status {
 	unsigned long ubcfi_en : 1; /* Enable for backward cfi. */
@@ -17,6 +20,42 @@ struct cfi_status {
 	unsigned long shdw_stk_size; /* size of shadow stack */
 };
 
+unsigned long shstk_alloc_thread_stack(struct task_struct *tsk,
+							const struct kernel_clone_args *args);
+void shstk_release(struct task_struct *tsk);
+void set_shstk_base(struct task_struct *task, unsigned long shstk_addr, unsigned long size);
+void set_active_shstk(struct task_struct *task, unsigned long shstk_addr);
+bool is_shstk_enabled(struct task_struct *task);
+
+#else
+
+static inline unsigned long shstk_alloc_thread_stack(struct task_struct *tsk,
+					   const struct kernel_clone_args *args)
+{
+	return 0;
+}
+
+static inline void shstk_release(struct task_struct *tsk)
+{
+
+}
+
+static inline void set_shstk_base(struct task_struct *task, unsigned long shstk_addr,
+								unsigned long size)
+{
+
+}
+
+static inline void set_active_shstk(struct task_struct *task, unsigned long shstk_addr)
+{
+
+}
+
+static inline bool is_shstk_enabled(struct task_struct *task)
+{
+	return false;
+}
+
 #endif /* CONFIG_RISCV_USER_CFI */
 
 #endif /* __ASSEMBLY__ */
diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index d864eef5a10d..9551017d16db 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -26,6 +26,7 @@
 #include <asm/cpuidle.h>
 #include <asm/vector.h>
 #include <asm/cpufeature.h>
+#include <asm/usercfi.h>
 
 register unsigned long gp_in_global __asm__("gp");
 
@@ -197,6 +198,9 @@ int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
 
 void exit_thread(struct task_struct *tsk)
 {
+	if (IS_ENABLED(CONFIG_RISCV_USER_CFI))
+		shstk_release(tsk);
+
 	return;
 }
 
@@ -205,6 +209,7 @@ int copy_thread(struct task_struct *p, const struct kernel_clone_args *args)
 	unsigned long clone_flags = args->flags;
 	unsigned long usp = args->stack;
 	unsigned long tls = args->tls;
+	unsigned long ssp = 0;
 	struct pt_regs *childregs = task_pt_regs(p);
 
 	memset(&p->thread.s, 0, sizeof(p->thread.s));
@@ -220,11 +225,18 @@ int copy_thread(struct task_struct *p, const struct kernel_clone_args *args)
 		p->thread.s[0] = (unsigned long)args->fn;
 		p->thread.s[1] = (unsigned long)args->fn_arg;
 	} else {
+		/* allocate new shadow stack if needed. In case of CLONE_VM we have to */
+		ssp = shstk_alloc_thread_stack(p, args);
+		if (IS_ERR_VALUE(ssp))
+			return PTR_ERR((void *)ssp);
+
 		*childregs = *(current_pt_regs());
 		/* Turn off status.VS */
 		riscv_v_vstate_off(childregs);
 		if (usp) /* User fork */
 			childregs->sp = usp;
+		if (ssp) /* if needed, set new ssp */
+			set_active_shstk(p, ssp);
 		if (clone_flags & CLONE_SETTLS)
 			childregs->tp = tls;
 		childregs->a0 = 0; /* Return value of fork() */
diff --git a/arch/riscv/kernel/usercfi.c b/arch/riscv/kernel/usercfi.c
index c4ed0d4e33d6..11ef7ab925c9 100644
--- a/arch/riscv/kernel/usercfi.c
+++ b/arch/riscv/kernel/usercfi.c
@@ -19,6 +19,41 @@
 
 #define SHSTK_ENTRY_SIZE sizeof(void *)
 
+bool is_shstk_enabled(struct task_struct *task)
+{
+	return task->thread_info.user_cfi_state.ubcfi_en ? true : false;
+}
+
+void set_shstk_base(struct task_struct *task, unsigned long shstk_addr, unsigned long size)
+{
+	task->thread_info.user_cfi_state.shdw_stk_base = shstk_addr;
+	task->thread_info.user_cfi_state.shdw_stk_size = size;
+}
+
+unsigned long get_shstk_base(struct task_struct *task, unsigned long *size)
+{
+	if (size)
+		*size = task->thread_info.user_cfi_state.shdw_stk_size;
+	return task->thread_info.user_cfi_state.shdw_stk_base;
+}
+
+void set_active_shstk(struct task_struct *task, unsigned long shstk_addr)
+{
+	task->thread_info.user_cfi_state.user_shdw_stk = shstk_addr;
+}
+
+/*
+ * If size is 0, then to be compatible with regular stack we want it to be as big as
+ * regular stack. Else PAGE_ALIGN it and return back
+ */
+static unsigned long calc_shstk_size(unsigned long size)
+{
+	if (size)
+		return PAGE_ALIGN(size);
+
+	return PAGE_ALIGN(min_t(unsigned long long, rlimit(RLIMIT_STACK), SZ_4G));
+}
+
 /*
  * Writes on shadow stack can either be `sspush` or `ssamoswap`. `sspush` can happen
  * implicitly on current shadow stack pointed to by CSR_SSP. `ssamoswap` takes pointer to
@@ -147,3 +182,89 @@ SYSCALL_DEFINE3(map_shadow_stack, unsigned long, addr, unsigned long, size, unsi
 
 	return allocate_shadow_stack(addr, aligned_size, size, set_tok);
 }
+
+/*
+ * This gets called during clone/clone3/fork. And is needed to allocate a shadow stack for
+ * cases where CLONE_VM is specified and thus a different stack is specified by user. We
+ * thus need a separate shadow stack too. How does separate shadow stack is specified by
+ * user is still being debated. Once that's settled, remove this part of the comment.
+ * This function simply returns 0 if shadow stack are not supported or if separate shadow
+ * stack allocation is not needed (like in case of !CLONE_VM)
+ */
+unsigned long shstk_alloc_thread_stack(struct task_struct *tsk,
+					   const struct kernel_clone_args *args)
+{
+	unsigned long addr, size;
+
+	/* If shadow stack is not supported, return 0 */
+	if (!cpu_supports_shadow_stack())
+		return 0;
+
+	/*
+	 * If shadow stack is not enabled on the new thread, skip any
+	 * switch to a new shadow stack.
+	 */
+	if (is_shstk_enabled(tsk))
+		return 0;
+
+	/*
+	 * For CLONE_VFORK the child will share the parents shadow stack.
+	 * Set base = 0 and size = 0, this is special means to track this state
+	 * so the freeing logic run for child knows to leave it alone.
+	 */
+	if (args->flags & CLONE_VFORK) {
+		set_shstk_base(tsk, 0, 0);
+		return 0;
+	}
+
+	/*
+	 * For !CLONE_VM the child will use a copy of the parents shadow
+	 * stack.
+	 */
+	if (!(args->flags & CLONE_VM))
+		return 0;
+
+	/*
+	 * reaching here means, CLONE_VM was specified and thus a separate shadow
+	 * stack is needed for new cloned thread. Note: below allocation is happening
+	 * using current mm.
+	 */
+	size = calc_shstk_size(args->stack_size);
+	addr = allocate_shadow_stack(0, size, 0, false);
+	if (IS_ERR_VALUE(addr))
+		return addr;
+
+	set_shstk_base(tsk, addr, size);
+
+	return addr + size;
+}
+
+void shstk_release(struct task_struct *tsk)
+{
+	unsigned long base = 0, size = 0;
+	/* If shadow stack is not supported or not enabled, nothing to release */
+	if (!cpu_supports_shadow_stack() ||
+		!is_shstk_enabled(tsk))
+		return;
+
+	/*
+	 * When fork() with CLONE_VM fails, the child (tsk) already has a
+	 * shadow stack allocated, and exit_thread() calls this function to
+	 * free it.  In this case the parent (current) and the child share
+	 * the same mm struct. Move forward only when they're same.
+	 */
+	if (!tsk->mm || tsk->mm != current->mm)
+		return;
+
+	/*
+	 * We know shadow stack is enabled but if base is NULL, then
+	 * this task is not managing its own shadow stack (CLONE_VFORK). So
+	 * skip freeing it.
+	 */
+	base = get_shstk_base(tsk, &size);
+	if (!base)
+		return;
+
+	vm_munmap(base, size);
+	set_shstk_base(tsk, 0, 0);
+}
-- 
2.43.2


