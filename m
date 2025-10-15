Return-Path: <devicetree+bounces-227263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74297BE00D4
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 20:16:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 354A23A1EA8
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 18:15:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90F2E30275F;
	Wed, 15 Oct 2025 18:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b="LXfYovAg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C5F133EAFC
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 18:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760552039; cv=none; b=WQ128x/0N5hcxcpdEumIlONeHHvAwNiUdqMwJHPflmTiFRisPWB9HKwz3x5Epj6b3ieVlmJASgBW3znGKXzq2fp4nJNRYvgpMkmeNQkIgCNIDdjGthFvyxEkyJt1IFlVp2BqWXe6jdiGy/+beefWv/FBh7lSVmHbFSaY/tB8aoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760552039; c=relaxed/simple;
	bh=lpSh/4YF4b6DV2vqO7uhXaAxm8ZQQfhDo9tNU1Zgc2g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dzVaMmqsi7wEoLhvp6LBdDQ5hEUxdQfFansJl9mybUxIepgQq51yMb2qcqdfDARE9v6/P+j/wrIozkxSr+zc5mWIMuQLCUJVPstGoWLkalQNwYyyoQB+37/ZZRpIVe21W60gXkwA3LrPIc29UcRjEj+d1lziWJaAmAXRCCosia4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b=LXfYovAg; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-b49c1c130c9so4367982a12.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 11:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc.com; s=google; t=1760552037; x=1761156837; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7ZlhaeGyn05OIbis6SfSAIFcz6IbZPi7uJh5910jbDw=;
        b=LXfYovAgo5EcGjMkiGTvfHw6RtfSy56fPRvm4zEV9G0DRUGQXtbYhDM/1gwQGCbeol
         SjKLA/jC5inuOXKwmIyzPS6UW+SPLmks7IyrRhSr9f1M1PxUnxhXZZOm68lHeVyeaHol
         gAznW9JM/RPfDyedTP5SiotpjSHa3qG833Qv+GshD6HooJHnQvifioYpJLXG9SmXvAvS
         YcT/vqq/ImlvE44xcu6lWJo3G2T4XA6h3Un0B68xqVELpCI3RZVv9YUWrvckprKXrMgI
         xluFf9h2E6Uk+tvCjAhmgPYyoFvo/RjljHh9wEy6NVGRy7bUjK+X3Pd7GYtXpKJBbKQb
         NIYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760552037; x=1761156837;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7ZlhaeGyn05OIbis6SfSAIFcz6IbZPi7uJh5910jbDw=;
        b=nKjkWj0XZXP7BG5MRfKaa+j/IenqFLpXnbKrY78vR4f3cripSW4MnOeYlV0zrwT7/h
         W1SIZp1p3WDJWTspf5QwLgd/0QZlXkgJBoQ+Sle5dkGNwRUGm/8wdFVIBTPu6c7+o3fn
         RhtaFIjNBB5Y+4K3S2ux2yi0m/q9KiaEbjnmdfG9WZNb63LF4q1fxCTnBBr/teRp0BRn
         RYIly1P4p0bYBsUsmLJDrIbxFeNRXXqVUYdwjY6kafb/YBBwmOGJFWghs9FV63c7qUnl
         nEEwMvQY6Q/EqQ/dM8z7mcqZbNn06zHG28/7gDrignuyohdHWHbQrcIHvMqk/I8bemhy
         bXjQ==
X-Forwarded-Encrypted: i=1; AJvYcCV3uJexTQKf6UiNKjyRbQlBlm+7yC0Fi3ak9sgutTnatgXTlFZet9mxqzODIm4u+0RpqAG9YV/4uHWu@vger.kernel.org
X-Gm-Message-State: AOJu0YxnC/ZRta8vmSfWOpGadnZdnfvAe/wd0g0B01rGptnSlW47V3GJ
	/SNybRDt/0uLvxzKXlkVfRMCXnHU/ipt7Cf2H58sVchvuPbxzfd3e+GIbXibVdZd1t4=
X-Gm-Gg: ASbGncub/U6AiThUtPOkc451a/x/UNtPBxzKBHMkgVIb8p9xpygmkTNwc9DXEjO5M3W
	+9+I0ZLNlCC6Q/Sz3yeKxJ/FqcAlnjZiSGYe0gIfJf1nAuJRjpI68YusjghabvR+XmUviVaPc9k
	mrbE1YRtMs5UaPb2knsD1qmnwCCx6egVJmFHTw8pHa0R7n00kNfdFah1fRBZaXiREav25nFap0K
	nHzBBVcE2zisk/TRsbSFSPpvnHv0HodYKMNBKjIUX6Mdc2nmfcHyO3W1YSn9vCFqkyBK3Pd+FAw
	KcJ3Z0Frm1Rbsxkbz7NkIWVB2TxxPxjhevtf6tKhDfF7rfRNwgclTTFWNCqMwXs7Z5cmYOe9SyJ
	DrDAUw37c/hKs/tWrUJeqUtqTAELx2ECHu2RCgOmJh32/vfIIA50=
X-Google-Smtp-Source: AGHT+IF4EsC9DuhmT7rk9ptTnU4PDviv/V93ULDr1Oe/Ycd2qKf5MIh5teSfdDkNf1OPwXT1XZ+ltw==
X-Received: by 2002:a17:902:ef10:b0:271:5bde:697e with SMTP id d9443c01a7336-29027213340mr391816915ad.3.1760552036518;
        Wed, 15 Oct 2025 11:13:56 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2909930a72esm3126625ad.21.2025.10.15.11.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 11:13:56 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Wed, 15 Oct 2025 11:13:38 -0700
Subject: [PATCH v21 06/28] riscv/mm : ensure PROT_WRITE leads to VM_READ |
 VM_WRITE
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-v5_user_cfi_series-v21-6-6a07856e90e7@rivosinc.com>
References: <20251015-v5_user_cfi_series-v21-0-6a07856e90e7@rivosinc.com>
In-Reply-To: <20251015-v5_user_cfi_series-v21-0-6a07856e90e7@rivosinc.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
 Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>, 
 x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, 
 Andrew Morton <akpm@linux-foundation.org>, 
 "Liam R. Howlett" <Liam.Howlett@oracle.com>, 
 Vlastimil Babka <vbabka@suse.cz>, 
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Christian Brauner <brauner@kernel.org>, 
 Peter Zijlstra <peterz@infradead.org>, Oleg Nesterov <oleg@redhat.com>, 
 Eric Biederman <ebiederm@xmission.com>, Kees Cook <kees@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, 
 Jann Horn <jannh@google.com>, Conor Dooley <conor+dt@kernel.org>, 
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, 
 Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
 Trevor Gross <tmgross@umich.edu>, Benno Lossin <lossin@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-mm@kvack.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 alistair.francis@wdc.com, richard.henderson@linaro.org, jim.shu@sifive.com, 
 andybnac@gmail.com, kito.cheng@sifive.com, charlie@rivosinc.com, 
 atishp@rivosinc.com, evan@rivosinc.com, cleger@rivosinc.com, 
 alexghiti@rivosinc.com, samitolvanen@google.com, broonie@kernel.org, 
 rick.p.edgecombe@intel.com, rust-for-linux@vger.kernel.org, 
 Zong Li <zong.li@sifive.com>, Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.13.0

`arch_calc_vm_prot_bits` is implemented on risc-v to return VM_READ |
VM_WRITE if PROT_WRITE is specified. Similarly `riscv_sys_mmap` is
updated to convert all incoming PROT_WRITE to (PROT_WRITE | PROT_READ).
This is to make sure that any existing apps using PROT_WRITE still work.

Earlier `protection_map[VM_WRITE]` used to pick read-write PTE encodings.
Now `protection_map[VM_WRITE]` will always pick PAGE_SHADOWSTACK PTE
encodings for shadow stack. Above changes ensure that existing apps
continue to work because underneath kernel will be picking
`protection_map[VM_WRITE|VM_READ]` PTE encodings.

Reviewed-by: Zong Li <zong.li@sifive.com>
Reviewed-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/include/asm/mman.h    | 26 ++++++++++++++++++++++++++
 arch/riscv/include/asm/pgtable.h |  1 +
 arch/riscv/kernel/sys_riscv.c    | 10 ++++++++++
 arch/riscv/mm/init.c             |  2 +-
 4 files changed, 38 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/mman.h b/arch/riscv/include/asm/mman.h
new file mode 100644
index 000000000000..0ad1d19832eb
--- /dev/null
+++ b/arch/riscv/include/asm/mman.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_MMAN_H__
+#define __ASM_MMAN_H__
+
+#include <linux/compiler.h>
+#include <linux/types.h>
+#include <linux/mm.h>
+#include <uapi/asm/mman.h>
+
+static inline unsigned long arch_calc_vm_prot_bits(unsigned long prot,
+						   unsigned long pkey __always_unused)
+{
+	unsigned long ret = 0;
+
+	/*
+	 * If PROT_WRITE was specified, force it to VM_READ | VM_WRITE.
+	 * Only VM_WRITE means shadow stack.
+	 */
+	if (prot & PROT_WRITE)
+		ret = (VM_READ | VM_WRITE);
+	return ret;
+}
+
+#define arch_calc_vm_prot_bits(prot, pkey) arch_calc_vm_prot_bits(prot, pkey)
+
+#endif /* ! __ASM_MMAN_H__ */
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 29e994a9afb6..4c4057a2550e 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -182,6 +182,7 @@ extern struct pt_alloc_ops pt_ops __meminitdata;
 #define PAGE_READ_EXEC		__pgprot(_PAGE_BASE | _PAGE_READ | _PAGE_EXEC)
 #define PAGE_WRITE_EXEC		__pgprot(_PAGE_BASE | _PAGE_READ |	\
 					 _PAGE_EXEC | _PAGE_WRITE)
+#define PAGE_SHADOWSTACK       __pgprot(_PAGE_BASE | _PAGE_WRITE)
 
 #define PAGE_COPY		PAGE_READ
 #define PAGE_COPY_EXEC		PAGE_READ_EXEC
diff --git a/arch/riscv/kernel/sys_riscv.c b/arch/riscv/kernel/sys_riscv.c
index 795b2e815ac9..22fc9b3268be 100644
--- a/arch/riscv/kernel/sys_riscv.c
+++ b/arch/riscv/kernel/sys_riscv.c
@@ -7,6 +7,7 @@
 
 #include <linux/syscalls.h>
 #include <asm/cacheflush.h>
+#include <asm-generic/mman-common.h>
 
 static long riscv_sys_mmap(unsigned long addr, unsigned long len,
 			   unsigned long prot, unsigned long flags,
@@ -16,6 +17,15 @@ static long riscv_sys_mmap(unsigned long addr, unsigned long len,
 	if (unlikely(offset & (~PAGE_MASK >> page_shift_offset)))
 		return -EINVAL;
 
+	/*
+	 * If PROT_WRITE is specified then extend that to PROT_READ
+	 * protection_map[VM_WRITE] is now going to select shadow stack encodings.
+	 * So specifying PROT_WRITE actually should select protection_map [VM_WRITE | VM_READ]
+	 * If user wants to create shadow stack then they should use `map_shadow_stack` syscall.
+	 */
+	if (unlikely((prot & PROT_WRITE) && !(prot & PROT_READ)))
+		prot |= PROT_READ;
+
 	return ksys_mmap_pgoff(addr, len, prot, flags, fd,
 			       offset >> (PAGE_SHIFT - page_shift_offset));
 }
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index d85efe74a4b6..62ab2c7de7c8 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -376,7 +376,7 @@ pgd_t early_pg_dir[PTRS_PER_PGD] __initdata __aligned(PAGE_SIZE);
 static const pgprot_t protection_map[16] = {
 	[VM_NONE]					= PAGE_NONE,
 	[VM_READ]					= PAGE_READ,
-	[VM_WRITE]					= PAGE_COPY,
+	[VM_WRITE]					= PAGE_SHADOWSTACK,
 	[VM_WRITE | VM_READ]				= PAGE_COPY,
 	[VM_EXEC]					= PAGE_EXEC,
 	[VM_EXEC | VM_READ]				= PAGE_READ_EXEC,

-- 
2.43.0


