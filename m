Return-Path: <devicetree+bounces-51795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAEA880715
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 23:01:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 94CEB285C3B
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 22:01:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB5C1605A5;
	Tue, 19 Mar 2024 21:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="CkeoGs0I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 986E55FB89
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 21:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710885571; cv=none; b=BVF3gYfUZh90SotHvv2IqlH3MsJ2GYNBczWzNbR6WDvBOCM374cX9BzfqeLRcQpG5PhN9O1iysNBK3PA7AJF8Sh0xY1CitHu9EdWRr2uBM2LtTjRiboMLmGVIvF5jzDqEujfoYYRchIFLtUhtTVgJicrap5YWDVeTyBpPhR4rto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710885571; c=relaxed/simple;
	bh=UGRqelT1C0GfAlbg9SB1bppukaiYNEGGzYB5mShcKm8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rBykylLx5bHxUFYxvU90qnXjCrJ0DjxG5v8qhPcbLHm+Jm6qIAAwZdaQj6sGkAep+dif/YYynuoi0J/J4IBVPR3ShlRXT9dbVEx+fpvZ6L4BXrHZz1GCWWOUzWXDA4q8EbTXbBAyeu4IGXJkxueJ/pbBagVJgVVMFpMuEDpY5eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=CkeoGs0I; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-6e6f69e850bso5015608b3a.0
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 14:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1710885567; x=1711490367; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=//J7AYtv61iHxtKJQn3MiSxiIHpG2s0TTUnDmfuJahA=;
        b=CkeoGs0IS+YlUTJLA1Uqk2y9Xm+qnqeZcVGZuOmaC9kMlT+XYwlQflZctCxcB1CChX
         7O4awixSIGRTWQjena4U87ElVWhytI6FpglgJa0dGwi2a8GzUKQI+9GPt+umM7IteiZ2
         Hm4i9apUuQ5hVAMJVofaKO2AUww5IGK+eLmxBUk7JDiH4PapLVy1hlGhpzEj36TfFRsZ
         RdMmrc1olKBI+OQmWzZYycZDnqInDzuFcofw3ik7QCz2R6nIfuZclF7LxtcFt02Pe1Wv
         v7p6Orh7OkE+ZxrsiwZM8xw2UwUDs0zZL4hGiUxXJqTTlRG8zYkKK+BfNjemkGRvaV2g
         8gMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710885567; x=1711490367;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=//J7AYtv61iHxtKJQn3MiSxiIHpG2s0TTUnDmfuJahA=;
        b=MT4tIZXiNx3sKq5XfHchgkBpf4Eh3MLdeDwgyCVXo64811G2KmPT/8cbtkOUSSrv1l
         opkuQhLGS/JeSG5t8jyTykxWSum2tRKllqLnDywZSm7TNZqvi2HJ0eLRaTjg4urG6Z2s
         pS9Jp2HmMQopCllCbqwDFRbLh6WkItJBUzOeYHDSERz0p6xAosHdK1NAOJ4GQcLWZVAl
         XRsKBiNDKA+EAr2U6iI7t11b+u+ZaOnhatM6foFELCO3+nNbkuxM0KOFth8fh70HIxwG
         zrjzk4Wh4mTijvPEA/vaYSu4IAQk1rtD8o+U6gz25Od+azg3YRDBNs0s/Zeqcv6VnUNQ
         ILYA==
X-Gm-Message-State: AOJu0Yy9759LpciwCw+DgMY2ghRXw367BN/sYXxxBGWKYdYmciVyjCkU
	2Pd3kJ4M2s0cdxn2+fAOSCubr3YxVVXBvvRHEm2Ca1S6CHvt0iVffN2FstvYR7c=
X-Google-Smtp-Source: AGHT+IFBtKPHZqAeY1IySQ3pzoH0nMl2mX+/T7GPlQacqCenBzo0xWbZizuV66Z+QSEH8NLBCD7ebQ==
X-Received: by 2002:a05:6a00:2447:b0:6e6:aae6:acfe with SMTP id d7-20020a056a00244700b006e6aae6acfemr19345714pfj.23.1710885565732;
        Tue, 19 Mar 2024 14:59:25 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id z25-20020aa785d9000000b006e6c61b264bsm10273892pfn.32.2024.03.19.14.59.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 14:59:25 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-kernel@vger.kernel.org,
	tech-j-ext@lists.risc-v.org,
	Conor Dooley <conor@kernel.org>,
	kasan-dev@googlegroups.com,
	Evgenii Stepanov <eugenis@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Greentime Hu <greentime.hu@sifive.com>
Subject: [RFC PATCH 7/9] riscv: Add support for the tagged address ABI
Date: Tue, 19 Mar 2024 14:58:33 -0700
Message-ID: <20240319215915.832127-8-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240319215915.832127-1-samuel.holland@sifive.com>
References: <20240319215915.832127-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When pointer masking is enabled for userspace, the kernel can accept
tagged pointers as arguments to some system calls. Allow this by
untagging the pointers in access_ok() and the uaccess routines. The
software untagging in the uaccess routines is required because U-mode
and S-mode have entirely separate pointer masking configurations.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

 arch/riscv/include/asm/processor.h |  1 +
 arch/riscv/include/asm/uaccess.h   | 40 +++++++++++++++++++++---
 arch/riscv/kernel/process.c        | 49 +++++++++++++++++++++++++++++-
 3 files changed, 84 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
index 64b34e839802..cdc8569b2118 100644
--- a/arch/riscv/include/asm/processor.h
+++ b/arch/riscv/include/asm/processor.h
@@ -124,6 +124,7 @@ struct thread_struct {
 	struct __riscv_v_ext_state vstate;
 	unsigned long align_ctl;
 	struct __riscv_v_ext_state kernel_vstate;
+	u8 pmlen;
 };
 
 /* Whitelist the fstate from the task_struct for hardened usercopy */
diff --git a/arch/riscv/include/asm/uaccess.h b/arch/riscv/include/asm/uaccess.h
index ec0cab9fbddd..ed282dcf9a6d 100644
--- a/arch/riscv/include/asm/uaccess.h
+++ b/arch/riscv/include/asm/uaccess.h
@@ -9,8 +9,38 @@
 #define _ASM_RISCV_UACCESS_H
 
 #include <asm/asm-extable.h>
+#include <asm/cpufeature.h>
 #include <asm/pgtable.h>		/* for TASK_SIZE */
 
+#ifdef CONFIG_RISCV_ISA_POINTER_MASKING
+static inline unsigned long __untagged_addr(unsigned long addr)
+{
+	if (riscv_has_extension_unlikely(RISCV_ISA_EXT_SxNPM)) {
+		u8 shift = current->thread.pmlen;
+
+		/*
+		 * Virtual addresses are sign-extended, while
+		 * physical addresses are zero-extended.
+		 */
+		if (IS_ENABLED(CONFIG_MMU))
+			return (long)(addr << shift) >> shift;
+		else
+			return (addr << shift) >> shift;
+	}
+
+	return addr;
+}
+
+#define untagged_addr(addr) ({					\
+	unsigned long __addr = (__force unsigned long)(addr);	\
+	(__force __typeof__(addr))__untagged_addr(__addr);	\
+})
+
+#define access_ok(addr, size) likely(__access_ok(untagged_addr(addr), size))
+#else
+#define untagged_addr(addr) addr
+#endif
+
 /*
  * User space memory access functions
  */
@@ -130,7 +160,7 @@ do {								\
  */
 #define __get_user(x, ptr)					\
 ({								\
-	const __typeof__(*(ptr)) __user *__gu_ptr = (ptr);	\
+	const __typeof__(*(ptr)) __user *__gu_ptr = untagged_addr(ptr); \
 	long __gu_err = 0;					\
 								\
 	__chk_user_ptr(__gu_ptr);				\
@@ -246,7 +276,7 @@ do {								\
  */
 #define __put_user(x, ptr)					\
 ({								\
-	__typeof__(*(ptr)) __user *__gu_ptr = (ptr);		\
+	__typeof__(*(ptr)) __user *__gu_ptr = untagged_addr(ptr); \
 	__typeof__(*__gu_ptr) __val = (x);			\
 	long __pu_err = 0;					\
 								\
@@ -293,13 +323,13 @@ unsigned long __must_check __asm_copy_from_user(void *to,
 static inline unsigned long
 raw_copy_from_user(void *to, const void __user *from, unsigned long n)
 {
-	return __asm_copy_from_user(to, from, n);
+	return __asm_copy_from_user(to, untagged_addr(from), n);
 }
 
 static inline unsigned long
 raw_copy_to_user(void __user *to, const void *from, unsigned long n)
 {
-	return __asm_copy_to_user(to, from, n);
+	return __asm_copy_to_user(untagged_addr(to), from, n);
 }
 
 extern long strncpy_from_user(char *dest, const char __user *src, long count);
@@ -314,7 +344,7 @@ unsigned long __must_check clear_user(void __user *to, unsigned long n)
 {
 	might_fault();
 	return access_ok(to, n) ?
-		__clear_user(to, n) : n;
+		__clear_user(untagged_addr(to), n) : n;
 }
 
 #define __get_kernel_nofault(dst, src, type, err_label)			\
diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index 3578e75f4aa4..36129040b7bd 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -162,6 +162,7 @@ static void flush_tagged_addr_state(void)
 		return;
 
 	current->thread.envcfg &= ~ENVCFG_PMM;
+	current->thread.pmlen = 0;
 
 	sync_envcfg(current);
 #endif
@@ -255,9 +256,14 @@ void __init arch_task_cache_init(void)
 static bool have_user_pmlen_7;
 static bool have_user_pmlen_16;
 
+/*
+ * Control the relaxed ABI allowing tagged user addresses into the kernel.
+ */
+static unsigned int tagged_addr_disabled;
+
 long set_tagged_addr_ctrl(struct task_struct *task, unsigned long arg)
 {
-	unsigned long valid_mask = PR_PMLEN_MASK;
+	unsigned long valid_mask = PR_PMLEN_MASK | PR_TAGGED_ADDR_ENABLE;
 	struct thread_info *ti = task_thread_info(task);
 	u8 pmlen;
 
@@ -288,12 +294,25 @@ long set_tagged_addr_ctrl(struct task_struct *task, unsigned long arg)
 			return -EINVAL;
 	}
 
+	/*
+	 * Do not allow the enabling of the tagged address ABI if globally
+	 * disabled via sysctl abi.tagged_addr_disabled, if pointer masking
+	 * is disabled for userspace.
+	 */
+	if (arg & PR_TAGGED_ADDR_ENABLE && (tagged_addr_disabled || !pmlen))
+		return -EINVAL;
+
 	task->thread.envcfg &= ~ENVCFG_PMM;
 	if (pmlen == 7)
 		task->thread.envcfg |= ENVCFG_PMM_PMLEN_7;
 	else if (pmlen == 16)
 		task->thread.envcfg |= ENVCFG_PMM_PMLEN_16;
 
+	if (arg & PR_TAGGED_ADDR_ENABLE)
+		task->thread.pmlen = pmlen;
+	else
+		task->thread.pmlen = 0;
+
 	if (task == current)
 		sync_envcfg(current);
 
@@ -308,6 +327,13 @@ long get_tagged_addr_ctrl(struct task_struct *task)
 	if (is_compat_thread(ti))
 		return -EINVAL;
 
+	if (task->thread.pmlen)
+		ret = PR_TAGGED_ADDR_ENABLE;
+
+	/*
+	 * The task's pmlen is only set if the tagged address ABI is enabled,
+	 * so the effective PMLEN must be extracted from envcfg.PMM.
+	 */
 	switch (task->thread.envcfg & ENVCFG_PMM) {
 	case ENVCFG_PMM_PMLEN_7:
 		ret |= FIELD_PREP(PR_PMLEN_MASK, 7);
@@ -326,6 +352,24 @@ static bool try_to_set_pmm(unsigned long value)
 	return (csr_read_clear(CSR_ENVCFG, ENVCFG_PMM) & ENVCFG_PMM) == value;
 }
 
+/*
+ * Global sysctl to disable the tagged user addresses support. This control
+ * only prevents the tagged address ABI enabling via prctl() and does not
+ * disable it for tasks that already opted in to the relaxed ABI.
+ */
+
+static struct ctl_table tagged_addr_sysctl_table[] = {
+	{
+		.procname	= "tagged_addr_disabled",
+		.mode		= 0644,
+		.data		= &tagged_addr_disabled,
+		.maxlen		= sizeof(int),
+		.proc_handler	= proc_dointvec_minmax,
+		.extra1		= SYSCTL_ZERO,
+		.extra2		= SYSCTL_ONE,
+	},
+};
+
 static int __init tagged_addr_init(void)
 {
 	if (!riscv_has_extension_unlikely(RISCV_ISA_EXT_SxNPM))
@@ -339,6 +383,9 @@ static int __init tagged_addr_init(void)
 	have_user_pmlen_7 = try_to_set_pmm(ENVCFG_PMM_PMLEN_7);
 	have_user_pmlen_16 = try_to_set_pmm(ENVCFG_PMM_PMLEN_16);
 
+	if (!register_sysctl("abi", tagged_addr_sysctl_table))
+		return -EINVAL;
+
 	return 0;
 }
 core_initcall(tagged_addr_init);
-- 
2.43.1


