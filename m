Return-Path: <devicetree+bounces-51791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D20088070E
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 23:00:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE0CD1F22EC4
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 22:00:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F2DC5FEF2;
	Tue, 19 Mar 2024 21:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="TKQkzW47"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7A74EB5D
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 21:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710885566; cv=none; b=U//EweyKbsk/9LOuL00xxS6PezVFKYGiINCqOxJ+Pqfk6bVfGI+u3NvKWSvTi2epinJHgI+a0fv+QpqKdyj3qQFjxbjmWGhJZVp8lAsij2NHCWC/uqPxufeFQppIAqhi2VlTkn52xNAGrU6tlC3lKeWKr4xLFauTrvwVYeBxHLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710885566; c=relaxed/simple;
	bh=p8ZwaHGgzvhLBCO4DSAd729Yfm2+NvPHNFvbnQChbv4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iCgooYPH4coIB1onMa6lik8ziUcVg7tLiBgkhx8T0os0U4QsswfDUfwtRabFXr5UUfkv3Tyqcw5sOVmSZcso9kq0aRyfcbFU9mWaUL70A7ynYHS5C/ssoL1bBF3WndADxIkVv7HhlIWWVyoHluHgvmde556vO4GYPKk1Yge+AWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=TKQkzW47; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-6e6f4ad4c57so4154914b3a.2
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 14:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1710885563; x=1711490363; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dz0gWVnpXPU7ElrUaImwHtbiCroEAM5Xe/I2DTavV7g=;
        b=TKQkzW47GJQSS1O2YS4H90zXlR8WVNwfZBbajSA/7oW3BH576BE59nu8rbUk8xM6Hw
         OYOLXP93QE7e4do9d+tzoS4LPFeAUiVky3yv5QXyKY9gEGar1tx+wYGxDGDI45HHmPqw
         RapbM36gYwKQfjJ43DYlGiQVMKf/0mrTWk4TihRnp4A3N2OKD7tMtWUT9zR0LlhvldCA
         IH+fCvaGOVnkcagZthv6Gu4RqpwWWlxqABrYleUBaaL0AawrVGAwKELss1ZZ2k2p5KWc
         Ozv7GknNb+GhLefgAOn1JMjweQka4D8Cu2y34gWAVuwTwIpqdQbhkqDT1crBNUWFUkOe
         nelA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710885563; x=1711490363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dz0gWVnpXPU7ElrUaImwHtbiCroEAM5Xe/I2DTavV7g=;
        b=q2yS5Q/M7CSPwa3rssHbMIZCYdADPbzCZNqUTPSMmG6Q2wZvg3uK7KsNIaRP1Tsq8L
         p/cfB7qEG3njOc4u11YtyUhkmfa256szQRm5kbcMd/wNgBWgTZl8DUqT/RhpOSC0Su5f
         xyQvSo4eSWSeL5PIJcOY8PbTJvhc1rBR5jn0xUzL8KVRsaFyAh3pIVI1tJTr1dkPksjf
         TNplTWGcLkVbAe6ui36/ra4px/mFD5pVxr8H2YpA48yIk+pgC4oEjf7gzigQuI5tEuCa
         Y0pZURbT6sWC7IZ7YizvoODgk41zRtlh5ionM4352IYNFg0pxNnTthwIxwulzBwpb/rv
         conQ==
X-Gm-Message-State: AOJu0Yxm+BiLp1flcJQiqf2YPZT0Vn80nBnuiKP96HUulszlkIh6LJKW
	w6TUVZ7TCchgn9UACrHNM5YO8JWb3PlkP4hYDCI4NBrLg8+a/V4Suj+5Yv1wdH4=
X-Google-Smtp-Source: AGHT+IEXM30Lrne9ss/C/7W/K1gxYQD71hKRIdntgbmHeEfv/1G3LVtA8crJjeRdhBQq5PV/uA1LDA==
X-Received: by 2002:a05:6a00:1482:b0:6e7:2379:dd18 with SMTP id v2-20020a056a00148200b006e72379dd18mr4524923pfu.0.1710885563216;
        Tue, 19 Mar 2024 14:59:23 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id z25-20020aa785d9000000b006e6c61b264bsm10273892pfn.32.2024.03.19.14.59.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 14:59:22 -0700 (PDT)
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
	Andrew Jones <ajones@ventanamicro.com>,
	Guo Ren <guoren@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Paul Walmsley <paul.walmsley@sifive.com>
Subject: [RFC PATCH 5/9] riscv: Split per-CPU and per-thread envcfg bits
Date: Tue, 19 Mar 2024 14:58:31 -0700
Message-ID: <20240319215915.832127-6-samuel.holland@sifive.com>
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

Some envcfg bits need to be controlled on a per-thread basis, such as
the pointer masking mode. However, the envcfg CSR value cannot simply be
stored in struct thread_struct, because some hardware may implement a
different subset of envcfg CSR bits is across CPUs. As a result, we need
to combine the per-CPU and per-thread bits whenever we switch threads.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

 arch/riscv/include/asm/cpufeature.h |  2 ++
 arch/riscv/include/asm/processor.h  |  1 +
 arch/riscv/include/asm/switch_to.h  | 12 ++++++++++++
 arch/riscv/kernel/cpufeature.c      |  4 +++-
 4 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/cpufeature.h b/arch/riscv/include/asm/cpufeature.h
index 0bd11862b760..b1ad8d0b4599 100644
--- a/arch/riscv/include/asm/cpufeature.h
+++ b/arch/riscv/include/asm/cpufeature.h
@@ -33,6 +33,8 @@ DECLARE_PER_CPU(long, misaligned_access_speed);
 /* Per-cpu ISA extensions. */
 extern struct riscv_isainfo hart_isa[NR_CPUS];
 
+DECLARE_PER_CPU(unsigned long, riscv_cpu_envcfg);
+
 void riscv_user_isa_enable(void);
 
 #ifdef CONFIG_RISCV_MISALIGNED
diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
index a8509cc31ab2..06b87402a4d8 100644
--- a/arch/riscv/include/asm/processor.h
+++ b/arch/riscv/include/asm/processor.h
@@ -118,6 +118,7 @@ struct thread_struct {
 	unsigned long s[12];	/* s[0]: frame pointer */
 	struct __riscv_d_ext_state fstate;
 	unsigned long bad_cause;
+	unsigned long envcfg;
 	u32 riscv_v_flags;
 	u32 vstate_ctrl;
 	struct __riscv_v_ext_state vstate;
diff --git a/arch/riscv/include/asm/switch_to.h b/arch/riscv/include/asm/switch_to.h
index 7efdb0584d47..256a354a5c4a 100644
--- a/arch/riscv/include/asm/switch_to.h
+++ b/arch/riscv/include/asm/switch_to.h
@@ -69,6 +69,17 @@ static __always_inline bool has_fpu(void) { return false; }
 #define __switch_to_fpu(__prev, __next) do { } while (0)
 #endif
 
+static inline void sync_envcfg(struct task_struct *task)
+{
+	csr_write(CSR_ENVCFG, this_cpu_read(riscv_cpu_envcfg) | task->thread.envcfg);
+}
+
+static inline void __switch_to_envcfg(struct task_struct *next)
+{
+	if (riscv_cpu_has_extension_unlikely(smp_processor_id(), RISCV_ISA_EXT_XLINUXENVCFG))
+		sync_envcfg(next);
+}
+
 extern struct task_struct *__switch_to(struct task_struct *,
 				       struct task_struct *);
 
@@ -80,6 +91,7 @@ do {							\
 		__switch_to_fpu(__prev, __next);	\
 	if (has_vector())					\
 		__switch_to_vector(__prev, __next);	\
+	__switch_to_envcfg(__next);			\
 	((last) = __switch_to(__prev, __next));		\
 } while (0)
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index d1846aab1f78..32aaaf41f8a8 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -44,6 +44,8 @@ static DECLARE_BITMAP(riscv_isa, RISCV_ISA_EXT_MAX) __read_mostly;
 /* Per-cpu ISA extensions. */
 struct riscv_isainfo hart_isa[NR_CPUS];
 
+DEFINE_PER_CPU(unsigned long, riscv_cpu_envcfg);
+
 /* Performance information */
 DEFINE_PER_CPU(long, misaligned_access_speed);
 
@@ -978,7 +980,7 @@ arch_initcall(check_unaligned_access_all_cpus);
 void riscv_user_isa_enable(void)
 {
 	if (riscv_cpu_has_extension_unlikely(smp_processor_id(), RISCV_ISA_EXT_ZICBOZ))
-		csr_set(CSR_ENVCFG, ENVCFG_CBZE);
+		this_cpu_or(riscv_cpu_envcfg, ENVCFG_CBZE);
 }
 
 #ifdef CONFIG_RISCV_ALTERNATIVE
-- 
2.43.1


