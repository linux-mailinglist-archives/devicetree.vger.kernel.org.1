Return-Path: <devicetree+bounces-157700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 150CBA61EDA
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 22:44:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DCFDB1887D72
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 21:44:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50FEF211710;
	Fri, 14 Mar 2025 21:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="AU/jD2AZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF35F20E6F7
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 21:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741988409; cv=none; b=KhYk7wW1oqG/xGxZe08leoX8wUdHJApysBTOlK9F2DoHbm16RSY1R3AOso25A97B8FkihsA+9VoArzOso0iVavMvVzKTXULivCPA5ElHCEwDUmzMf0KtNLmDr2avLIy+BK0Nbem6r4LHDkAbc2vbmKAQui5nZ3MuvFjukm9AdrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741988409; c=relaxed/simple;
	bh=OwGed6BN+zk+AezI5N+o+ZmHPF/GQJg6YyKMaoNYFXU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=M/Z5iXAQXeZl0uSbm2Ck3gd6QZIfSsR9Ly2TMPd/1+SvbF+VJCbcoSpzShF2ja5yLU28H21Lt6JJJ1XEQEZOsUgEKl3e3s/MnP0oI3kjm4UsfFOjBiHyEpq13kRCC8st90VFsduiq/kxJGX3PKXgDYNydGDa9h1mb64vYpCbGcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=AU/jD2AZ; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-223959039f4so55902435ad.3
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 14:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1741988406; x=1742593206; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Qy+LghJ4/M4JzYV3TrsgP9mTB2OIgCnt82uf+yKrnE=;
        b=AU/jD2AZlnYd/uDrGyDfZwsZqk+jQJcQrcQmK4gdRDOtZf/FlflfRYqP5BkF/LByto
         E9dSNUQIZnHTgOFVUHK4iNg4mQXFy55q8HiI0wJXYqwrG2D7tMvkWWhI2e+T3PDUo9kP
         5M2bhuhWKitoGlFK4NTTPtFmbOQJZV6Fphlbxn5q6ev1WXqTpOb42f/dNB7M2teMUTXb
         q1IaHjOJx1Ppjg7TtLkyQv3jrc4vlQ1eiUchE0v9ClpuhAzVKfnzuwUujQFDWP2Gfaio
         KxItGotixrJJQVwdMCrqn0bSX0fqvVV6HztC2OiA9Jv+izq85s47CHf6czJh/RE7OHI2
         NyeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741988406; x=1742593206;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2Qy+LghJ4/M4JzYV3TrsgP9mTB2OIgCnt82uf+yKrnE=;
        b=fzc+OAh9XJTKjVNL6mVCHd3b7VjGHs7ZtT+wYGmgSSzsX5EFXvGySsBZNejeZ69z0b
         4aUKey0sdBjUlnoVr7kUQTtaEONfM1usnp+W5jfUlNY4+v2u259aNScfqhybMUVtTS41
         kNPVNGIFyvWGRs0vwqHefRsZmEBx2IjwQ6uQFGZLGm4U3UqSqZ37u07Ul3Qmif7Ytr6E
         eDOp7lp0JPhdSFb8LhFGzvNAmNMtUAm03w0JaO//wu4XArbztULjKPVkF4S1KQNPXNTs
         F71las9eCHUqODEtLN2gIuCIpOkDdHLntLghbrRRlTnNLF1aQDXtObnkpPVY4gooPUmm
         SFnw==
X-Forwarded-Encrypted: i=1; AJvYcCWoTvkmNJGlqc4K5KIN8fmS4xNxmw3j47LoSWToeuaJGZCvEhiZtIpb51srqsYIG7YLB6p1f9riIrGB@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2VEzugBjjpOXal8UbnkTJf4zEXHco9RE6evtdHk2gCLPY6Tun
	JJqJEb1o2qAyuw5+x4pv+IbcHo+6K/u4w0jaPsXGypnJH7XNLC/DoeKe45TtZgU=
X-Gm-Gg: ASbGncvaUXD3IR++I1AM9teF1gz7pzMtbp1FWIZR911R5G+qFc/+uMrwIHgldk9XQS9
	DpkYwUfKXNEYuJoo71hUfFTXRFRA9nWEfnxfXj0oPMykVmQkN/c9nwblRFVLjvd2HzLgYD/TCMU
	GiinFTEZ2epgG2+njTaTBs2B1tmpenO3HvHqCTbbH/FlCINeTJSeS7ehzwmbDSQBSoGwn+2yvpS
	+pFcrtTM4j4fB+VdGol+8OgNokpR1BbICmN3NqD7jYfZGRwNX/eOW3peuDzgwQU9bKGst9NN5nd
	diJCtnbWrwPSvG7B4Qea7bbtjkLEX1YsCntbohLxbUipxwxiR+BzGc1axsB7QvlUqA==
X-Google-Smtp-Source: AGHT+IFZGoCstNHVFobdYDMcxqcukAL5Q469eJyWCBWchEfbvVnOKA7zPff+GIgC5IBMZVr9zGx+qg==
X-Received: by 2002:a17:903:40cb:b0:224:a74:28cd with SMTP id d9443c01a7336-225e0ab5216mr53565875ad.31.1741988406346;
        Fri, 14 Mar 2025 14:40:06 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c68a6e09sm33368855ad.55.2025.03.14.14.40.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 14:40:06 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Fri, 14 Mar 2025 14:39:34 -0700
Subject: [PATCH v12 15/28] riscv/traps: Introduce software check exception
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250314-v5_user_cfi_series-v12-15-e51202b53138@rivosinc.com>
References: <20250314-v5_user_cfi_series-v12-0-e51202b53138@rivosinc.com>
In-Reply-To: <20250314-v5_user_cfi_series-v12-0-e51202b53138@rivosinc.com>
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
 Jann Horn <jannh@google.com>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-mm@kvack.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 alistair.francis@wdc.com, richard.henderson@linaro.org, jim.shu@sifive.com, 
 andybnac@gmail.com, kito.cheng@sifive.com, charlie@rivosinc.com, 
 atishp@rivosinc.com, evan@rivosinc.com, cleger@rivosinc.com, 
 alexghiti@rivosinc.com, samitolvanen@google.com, broonie@kernel.org, 
 rick.p.edgecombe@intel.com, Zong Li <zong.li@sifive.com>, 
 Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.14.0

zicfiss / zicfilp introduces a new exception to priv isa `software check
exception` with cause code = 18. This patch implements software check
exception.

Additionally it implements a cfi violation handler which checks for code
in xtval. If xtval=2, it means that sw check exception happened because of
an indirect branch not landing on 4 byte aligned PC or not landing on
`lpad` instruction or label value embedded in `lpad` not matching label
value setup in `x7`. If xtval=3, it means that sw check exception happened
because of mismatch between link register (x1 or x5) and top of shadow
stack (on execution of `sspopchk`).

In case of cfi violation, SIGSEGV is raised with code=SEGV_CPERR.
SEGV_CPERR was introduced by x86 shadow stack patches.

Reviewed-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/include/asm/asm-prototypes.h |  1 +
 arch/riscv/include/asm/entry-common.h   |  2 ++
 arch/riscv/kernel/entry.S               |  3 +++
 arch/riscv/kernel/traps.c               | 43 +++++++++++++++++++++++++++++++++
 4 files changed, 49 insertions(+)

diff --git a/arch/riscv/include/asm/asm-prototypes.h b/arch/riscv/include/asm/asm-prototypes.h
index cd627ec289f1..5a27cefd7805 100644
--- a/arch/riscv/include/asm/asm-prototypes.h
+++ b/arch/riscv/include/asm/asm-prototypes.h
@@ -51,6 +51,7 @@ DECLARE_DO_ERROR_INFO(do_trap_ecall_u);
 DECLARE_DO_ERROR_INFO(do_trap_ecall_s);
 DECLARE_DO_ERROR_INFO(do_trap_ecall_m);
 DECLARE_DO_ERROR_INFO(do_trap_break);
+DECLARE_DO_ERROR_INFO(do_trap_software_check);
 
 asmlinkage void handle_bad_stack(struct pt_regs *regs);
 asmlinkage void do_page_fault(struct pt_regs *regs);
diff --git a/arch/riscv/include/asm/entry-common.h b/arch/riscv/include/asm/entry-common.h
index b28ccc6cdeea..34ed149af5d1 100644
--- a/arch/riscv/include/asm/entry-common.h
+++ b/arch/riscv/include/asm/entry-common.h
@@ -40,4 +40,6 @@ static inline int handle_misaligned_store(struct pt_regs *regs)
 }
 #endif
 
+bool handle_user_cfi_violation(struct pt_regs *regs);
+
 #endif /* _ASM_RISCV_ENTRY_COMMON_H */
diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
index 00494b54ff4a..9c00cac3f6f2 100644
--- a/arch/riscv/kernel/entry.S
+++ b/arch/riscv/kernel/entry.S
@@ -472,6 +472,9 @@ SYM_DATA_START_LOCAL(excp_vect_table)
 	RISCV_PTR do_page_fault   /* load page fault */
 	RISCV_PTR do_trap_unknown
 	RISCV_PTR do_page_fault   /* store page fault */
+	RISCV_PTR do_trap_unknown /* cause=16 */
+	RISCV_PTR do_trap_unknown /* cause=17 */
+	RISCV_PTR do_trap_software_check /* cause=18 is sw check exception */
 SYM_DATA_END_LABEL(excp_vect_table, SYM_L_LOCAL, excp_vect_table_end)
 
 #ifndef CONFIG_MMU
diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index 8ff8e8b36524..3f7709f4595a 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -354,6 +354,49 @@ void do_trap_ecall_u(struct pt_regs *regs)
 
 }
 
+#define CFI_TVAL_FCFI_CODE	2
+#define CFI_TVAL_BCFI_CODE	3
+/* handle cfi violations */
+bool handle_user_cfi_violation(struct pt_regs *regs)
+{
+	bool ret = false;
+	unsigned long tval = csr_read(CSR_TVAL);
+
+	if ((tval == CFI_TVAL_FCFI_CODE && cpu_supports_indirect_br_lp_instr()) ||
+	    (tval == CFI_TVAL_BCFI_CODE && cpu_supports_shadow_stack())) {
+		do_trap_error(regs, SIGSEGV, SEGV_CPERR, regs->epc,
+			      "Oops - control flow violation");
+		ret = true;
+	}
+
+	return ret;
+}
+
+/*
+ * software check exception is defined with risc-v cfi spec. Software check
+ * exception is raised when:-
+ * a) An indirect branch doesn't land on 4 byte aligned PC or `lpad`
+ *    instruction or `label` value programmed in `lpad` instr doesn't
+ *    match with value setup in `x7`. reported code in `xtval` is 2.
+ * b) `sspopchk` instruction finds a mismatch between top of shadow stack (ssp)
+ *    and x1/x5. reported code in `xtval` is 3.
+ */
+asmlinkage __visible __trap_section void do_trap_software_check(struct pt_regs *regs)
+{
+	if (user_mode(regs)) {
+		irqentry_enter_from_user_mode(regs);
+
+		/* not a cfi violation, then merge into flow of unknown trap handler */
+		if (!handle_user_cfi_violation(regs))
+			do_trap_unknown(regs);
+
+		irqentry_exit_to_user_mode(regs);
+	} else {
+		/* sw check exception coming from kernel is a bug in kernel */
+		die(regs, "Kernel BUG");
+	}
+}
+
 #ifdef CONFIG_MMU
 asmlinkage __visible noinstr void do_page_fault(struct pt_regs *regs)
 {

-- 
2.34.1


