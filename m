Return-Path: <devicetree+bounces-182852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAEEACE358
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 19:23:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A59916ADEF
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 17:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0942125C829;
	Wed,  4 Jun 2025 17:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="L+1SMaHO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C47225C6FA
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 17:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749057444; cv=none; b=XFgXmFYyd0QYwwawv5L0kqcYm3KRFJxVAas3WJ10QGfGTafaT3dXtOnacMTsDiXotyPMyf6T4oyAoEUMBNwqOBOgyietT/hCHv7dhMSWRrrdUXx485JoTcdYwpydWemIuFZOhYkIPCkrNBaEcl1sa2YcfmyCmYTi/G1xdSdpkas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749057444; c=relaxed/simple;
	bh=fgM4DxuXyswQwWUgiwSMnk3UHniH160971fZistB2MI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CVcxqZE+UXXAmqZTXNfWLxgjVrXZ7AzX/lvtV5zEWkCNtB87iL1AS9YeBiHOyECrjfh+xe7B8WItBkffAn8ygNLuGBF3qQn88Ng/ewqe4UL7gF9/MnxKtG2JiX0S57XcYlrAKlFIN7lMrk9AgZDglt3fphrCrV31OKPtVQhERyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=L+1SMaHO; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-306b6ae4fb2so94847a91.3
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 10:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1749057442; x=1749662242; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SRVZyg5TbDWDMLZOF7W+PGgxfQ2OnZA5ElwRPiEh+VA=;
        b=L+1SMaHODCxnvmlahNikNorEY6bciEEt2Ss5zp0b2e4hLFYE4aUUft/iHb70MFLm78
         7poYccMrlUa5ytAqah7Hte3OAgVfLWqeUJLVLYULTQpmnPSPZJYbVlgX4YCx2xyzv4mp
         3DgvVzW5YrxoJ6XK62fIS7pZPoXC5QOurbjEi9GQ/Zv15r/SwVQAQh8NAzsnNehMpPVG
         RIu0OJYbEoJwv0X0vyTm+Dxo4vhDhL4pXaohQEaZ2YR4OREEa1D2LmzKrjf7ULqUhjNj
         J6SOKpnnjJ+V3z1lCMfm0uG/FkBlzHsqUesGZwt4HKobmwdR9fQnzLokxKT0HHCPuAiR
         ddHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749057442; x=1749662242;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SRVZyg5TbDWDMLZOF7W+PGgxfQ2OnZA5ElwRPiEh+VA=;
        b=PLjGyzVS+8hMiemOO9dbetVTndIrShq8xpL4xr+3mKwotI+RPSyIkHwOzYuCbfqHgp
         ZovEyF28fRnUBxFzHjJp5Ly2VxwZGiaNhgCqJwfa7ZsuWqV7EOxkkdsAp0uktLUErFU0
         GT7lSCmtXn2+/la9FX6Yc7kS5FofrUkb2eXHZ+tiR4sQFsQ5n4aGowP8Rhvk+bmv/Htf
         y1DWtF4CsxsoYGXaW2pCwPXJV2V59rO3vPNeBwXUqHmuKS/0ox+AcZRrAUxisIPebS++
         QW2g+MBvAQeSoIsEIfgA/SXvCb5cQTGFn5vVzPh1bQSQVqyvbNENBvNMFhabH+r5KY92
         A04w==
X-Forwarded-Encrypted: i=1; AJvYcCXtU9Br6UswlfZNLfz+DkzpizV8mINQqj5mjkGwQG2PEqu1fjDPLdOMTeqXFVDgAoz+UsmfAM2D5upS@vger.kernel.org
X-Gm-Message-State: AOJu0YzN4UsO8v8VYPQzny9LYuBtMn/JARKhMw/lzaBaqKkAo7fLiSDa
	eO8LPsOACpUuaL/RYvai4hBV9bA1rV6YqokQRNNQeMA8SMCSD/lQyjtLDatRUZeydr0=
X-Gm-Gg: ASbGnctMeRsQBuzKICHpTyja0WukAsRavD6G0kyxajYMq4ZUij3Ek6E0aEOkX6dosjZ
	Yxzk6JvWXtNS48WnPEXy2fmc/sD5cLzKsc6EXQMdbtxixwi0bq+6jFGvo9MboX4CLFxR0TkR+J8
	n2oZXM44enDstN6G7sVz1ghCZ1F7d53BuX7qrEICnCPgPfdYCp0ydVWK7T85nQrkTUyVNHkeXBL
	GGfbQ5W+dzyUQUadR92u/fw2nckDny9Nx99jrdF9Y1XpX2S6Ku76XAo/t7I4gejgwxv5UUGjaOe
	QadlY6uIkRr+QZXd/WsKudEcXFdh9AByRB5yiPIUoYFpLa8pCsTLFyH+KIWvN5DHOIkEwQyu
X-Google-Smtp-Source: AGHT+IFgYucDp6wdab3oCQsMca+Xxo8mGVq4ki4MbG38XP6NlR55ZVWpB4I4rykVbZOBh8FR63avfw==
X-Received: by 2002:a17:90b:264c:b0:312:1d2d:18e1 with SMTP id 98e67ed59e1d1-3130cd97a86mr4309387a91.22.1749057441661;
        Wed, 04 Jun 2025 10:17:21 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3124e2e9c9fsm9178972a91.30.2025.06.04.10.17.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 10:17:21 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Wed, 04 Jun 2025 10:15:46 -0700
Subject: [PATCH v17 22/27] riscv: enable kernel access to shadow stack
 memory via FWFT sbi call
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250604-v5_user_cfi_series-v17-22-4565c2cf869f@rivosinc.com>
References: <20250604-v5_user_cfi_series-v17-0-4565c2cf869f@rivosinc.com>
In-Reply-To: <20250604-v5_user_cfi_series-v17-0-4565c2cf869f@rivosinc.com>
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
 Benno Lossin <benno.lossin@proton.me>, 
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
 Trevor Gross <tmgross@umich.edu>
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

Kernel will have to perform shadow stack operations on user shadow stack.
Like during signal delivery and sigreturn, shadow stack token must be
created and validated respectively. Thus shadow stack access for kernel
must be enabled.

In future when kernel shadow stacks are enabled for linux kernel, it must
be enabled as early as possible for better coverage and prevent imbalance
between regular stack and shadow stack. After `relocate_enable_mmu` has
been done, this is as early as possible it can enabled.

Reviewed-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/kernel/asm-offsets.c |  6 ++++++
 arch/riscv/kernel/head.S        | 27 +++++++++++++++++++++++++++
 2 files changed, 33 insertions(+)

diff --git a/arch/riscv/kernel/asm-offsets.c b/arch/riscv/kernel/asm-offsets.c
index f33945432f8f..91738394f834 100644
--- a/arch/riscv/kernel/asm-offsets.c
+++ b/arch/riscv/kernel/asm-offsets.c
@@ -514,4 +514,10 @@ void asm_offsets(void)
 	DEFINE(FREGS_A6,	    offsetof(struct __arch_ftrace_regs, a6));
 	DEFINE(FREGS_A7,	    offsetof(struct __arch_ftrace_regs, a7));
 #endif
+#ifdef CONFIG_RISCV_SBI
+	DEFINE(SBI_EXT_FWFT, SBI_EXT_FWFT);
+	DEFINE(SBI_EXT_FWFT_SET, SBI_EXT_FWFT_SET);
+	DEFINE(SBI_FWFT_SHADOW_STACK, SBI_FWFT_SHADOW_STACK);
+	DEFINE(SBI_FWFT_SET_FLAG_LOCK, SBI_FWFT_SET_FLAG_LOCK);
+#endif
 }
diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 356d5397b2a2..7eae9a172351 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -15,6 +15,7 @@
 #include <asm/image.h>
 #include <asm/scs.h>
 #include <asm/xip_fixup.h>
+#include <asm/usercfi.h>
 #include "efi-header.S"
 
 __HEAD
@@ -164,6 +165,19 @@ secondary_start_sbi:
 	call relocate_enable_mmu
 #endif
 	call .Lsetup_trap_vector
+#if defined(CONFIG_RISCV_SBI) && defined(CONFIG_RISCV_USER_CFI)
+	li a7, SBI_EXT_FWFT
+	li a6, SBI_EXT_FWFT_SET
+	li a0, SBI_FWFT_SHADOW_STACK
+	li a1, 1 /* enable supervisor to access shadow stack access */
+	li a2, SBI_FWFT_SET_FLAG_LOCK
+	ecall
+	beqz a0, 1f
+	la a1, riscv_nousercfi
+	li a0, CMDLINE_DISABLE_RISCV_USERCFI_BCFI
+	REG_S a0, (a1)
+1:
+#endif
 	scs_load_current
 	call smp_callin
 #endif /* CONFIG_SMP */
@@ -320,6 +334,19 @@ SYM_CODE_START(_start_kernel)
 	la tp, init_task
 	la sp, init_thread_union + THREAD_SIZE
 	addi sp, sp, -PT_SIZE_ON_STACK
+#if defined(CONFIG_RISCV_SBI) && defined(CONFIG_RISCV_USER_CFI)
+	li a7, SBI_EXT_FWFT
+	li a6, SBI_EXT_FWFT_SET
+	li a0, SBI_FWFT_SHADOW_STACK
+	li a1, 1 /* enable supervisor to access shadow stack access */
+	li a2, SBI_FWFT_SET_FLAG_LOCK
+	ecall
+	beqz a0, 1f
+	la a1, riscv_nousercfi
+	li a0, CMDLINE_DISABLE_RISCV_USERCFI_BCFI
+	REG_S a0, (a1)
+1:
+#endif
 	scs_load_current
 
 #ifdef CONFIG_KASAN

-- 
2.43.0


