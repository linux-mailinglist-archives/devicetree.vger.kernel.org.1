Return-Path: <devicetree+bounces-156194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9C0A59849
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 15:53:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5E9C1188D400
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 14:53:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8646F22D4FD;
	Mon, 10 Mar 2025 14:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="kVpphZAe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B912E22D7AC
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 14:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741618362; cv=none; b=RcjNvAtjP9SFOpP5nnW6ZZKyGSyHdJkDSaaKxzD/ZUJKryAN/+Oxdy6wj1Xc/dCeZdYZRpSruQoO0c8iM4VwhMXtW0SwryHN8jRU2RV2G1biOqeR1PcVpi41E0JEYjpi8K0bz/hkzO8vkaUxGZEw6abpktpbwYqch5fmNrZjOl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741618362; c=relaxed/simple;
	bh=IL2TK1PHTDBgYiy66N142GrBjNXRZOjcIWW8bkBi80A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oM4jivLHmcbMTwoI8ms9CGUd8J3F/ZcJ7hSjcXFigbAfIhFtU2JTuPjzKv5nssOamkUZ8IvO+zjLawxR8NOa/d/XvqumnKzbLTYndBithUsf0hQ7k5++M2q4yR/VFGSeiz2UrEr+8Ifn3etDzEv0Ic7JTqsYxmwZUrpjfTRXPmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=kVpphZAe; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-223a7065ff8so3861925ad.0
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 07:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1741618360; x=1742223160; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dbqILCM4sqAsqnZWR3n0haWRm4rdBukz3/+QEOiXjzw=;
        b=kVpphZAev7bqIGrkyCgCDSpCrJfFcDqQoamjyhxj3+qQepcJU6KLtXV9YDQ0NG/mMP
         I1HM+H7/ZdjRDeSBbEi1miuTk44mKc2eX52C6RrufXTAlCBLKuczRafLiDSm9bfJZNC7
         +YOHAvAeanrHJrGGP7jbijHCjr7v+O+Wkj+hjY2St813OVac7Fl2TefRJQWmY5koWK+l
         57riTjgfO+ugz1AdTP8tQDyeXIvfEQSBeEnCLz1pEJ1xb4HXeSNYfMRtCiXR+yNsKGpB
         DYhJ4CJiQ5NvamQzZSfMw3QrQoBiQesp0bjubDkrDmfBAgWRBJec/NYuMPmM2p+YGTe1
         KM6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741618360; x=1742223160;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dbqILCM4sqAsqnZWR3n0haWRm4rdBukz3/+QEOiXjzw=;
        b=WgnWi6NKK9XsMpW75SKTfOpIW+nfUqVFZxezP/u4uZyY4tGjbPsYG7kZdLBlHliD01
         v9jZmjks5dat8BdXfIPimIvV7ZrJVGz0GFB2Qw4iry5S9EsmURPnB0JWcH956qixIXIv
         iUF374Oi/s2WlRZr69NLPs4u05Vwu3MTZYWgYRni0WmFNQMdVlRaAx1K90tx40hxAKaO
         IEeho/DIr1SyxBWajPrja8pTvLyF7iicnV2KUDs7dip/nOiUU53zqFLsYxvujKWDQBNZ
         xaV8QRhD5DnQtSuUkjhh0FrNWuoqiMf8pO1EZM2ZA9iIs50OpZ341rI1Z5mctNp0TgX7
         S2lw==
X-Forwarded-Encrypted: i=1; AJvYcCUUgXvw0aVB5Ao0WUXtCpMBZNKW8reZLm4ozfr0ii62SYgAY9rmcSgmbOR3/muOEcr3tBygskzO4SKS@vger.kernel.org
X-Gm-Message-State: AOJu0YymfDoKoFDpWu7UnuVyrdinh7zMg1spWEp1aOi0ti7hOxwd4vpr
	CS+ZP4nDHXBBfbm6ALrsLJDyKYDMC9tPnjf6N/5xrsKD8V/yoR1/PBirBeQMmyo=
X-Gm-Gg: ASbGncv/W/PWJL4x78P20cPToHqj0Au24Kz7oNucEuTT4wswRb/v/nqEkcqRAPJYipx
	Mw0rbVQfbOIYW4sYonT0ckHrKwfBINjQHyU1KFhZ9h7QezPp2BmbCFjtOCItbFwuUsQydmJu/ZR
	7T+6e1wRoC9UBdweUBODHFbA2hELC1gOcBHY9MoAG6o1PBlRvQCLuEFGfRb69r+czAbfqDkKpRd
	wgFUVNRFUQwbPCqEg27NX/SBlOWI3Ivm/DR8394rdC/Z30eyvZipAzus6a2S0CGB0vmuOEf7Kfo
	gfhnW5jnSx5vHs0kfR0zkTWJ8Lfxf7JPcv/7CXK0usW90Ory9pPvktw=
X-Google-Smtp-Source: AGHT+IGingfz3mCoLXCx4AWjWHsD50K0dzh2NK7v+KMvVV2K5wL6QO4M0vSkH0GvDvftQkvXnd4PuQ==
X-Received: by 2002:a05:6a00:b4d:b0:730:8a0a:9f09 with SMTP id d2e1a72fcca58-736aaaaca0fmr22178030b3a.18.1741618359953;
        Mon, 10 Mar 2025 07:52:39 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-736d11d4600sm2890275b3a.116.2025.03.10.07.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 07:52:39 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Mon, 10 Mar 2025 07:52:25 -0700
Subject: [PATCH v11 03/27] riscv: zicfiss / zicfilp enumeration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250310-v5_user_cfi_series-v11-3-86b36cbfb910@rivosinc.com>
References: <20250310-v5_user_cfi_series-v11-0-86b36cbfb910@rivosinc.com>
In-Reply-To: <20250310-v5_user_cfi_series-v11-0-86b36cbfb910@rivosinc.com>
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
 rick.p.edgecombe@intel.com, Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.14.0

This patch adds support for detecting zicfiss and zicfilp. zicfiss and
zicfilp stands for unprivleged integer spec extension for shadow stack
and branch tracking on indirect branches, respectively.

This patch looks for zicfiss and zicfilp in device tree and accordinlgy
lights up bit in cpu feature bitmap. Furthermore this patch adds detection
utility functions to return whether shadow stack or landing pads are
supported by cpu.

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/include/asm/cpufeature.h | 13 +++++++++++++
 arch/riscv/include/asm/hwcap.h      |  2 ++
 arch/riscv/include/asm/processor.h  |  1 +
 arch/riscv/kernel/cpufeature.c      | 13 +++++++++++++
 4 files changed, 29 insertions(+)

diff --git a/arch/riscv/include/asm/cpufeature.h b/arch/riscv/include/asm/cpufeature.h
index 569140d6e639..69007b8100ca 100644
--- a/arch/riscv/include/asm/cpufeature.h
+++ b/arch/riscv/include/asm/cpufeature.h
@@ -12,6 +12,7 @@
 #include <linux/kconfig.h>
 #include <linux/percpu-defs.h>
 #include <linux/threads.h>
+#include <linux/smp.h>
 #include <asm/hwcap.h>
 #include <asm/cpufeature-macros.h>
 
@@ -137,4 +138,16 @@ static __always_inline bool riscv_cpu_has_extension_unlikely(int cpu, const unsi
 	return __riscv_isa_extension_available(hart_isa[cpu].isa, ext);
 }
 
+static inline bool cpu_supports_shadow_stack(void)
+{
+	return (IS_ENABLED(CONFIG_RISCV_USER_CFI) &&
+		riscv_cpu_has_extension_unlikely(smp_processor_id(), RISCV_ISA_EXT_ZICFISS));
+}
+
+static inline bool cpu_supports_indirect_br_lp_instr(void)
+{
+	return (IS_ENABLED(CONFIG_RISCV_USER_CFI) &&
+		riscv_cpu_has_extension_unlikely(smp_processor_id(), RISCV_ISA_EXT_ZICFILP));
+}
+
 #endif
diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 869da082252a..2dc4232bdb3e 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -100,6 +100,8 @@
 #define RISCV_ISA_EXT_ZICCRSE		91
 #define RISCV_ISA_EXT_SVADE		92
 #define RISCV_ISA_EXT_SVADU		93
+#define RISCV_ISA_EXT_ZICFILP		94
+#define RISCV_ISA_EXT_ZICFISS		95
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
index 5f56eb9d114a..e3aba3336e63 100644
--- a/arch/riscv/include/asm/processor.h
+++ b/arch/riscv/include/asm/processor.h
@@ -13,6 +13,7 @@
 #include <vdso/processor.h>
 
 #include <asm/ptrace.h>
+#include <asm/hwcap.h>
 
 #define arch_get_mmap_end(addr, len, flags)			\
 ({								\
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index c6ba750536c3..82065cc55822 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -150,6 +150,15 @@ static int riscv_ext_svadu_validate(const struct riscv_isa_ext_data *data,
 	return 0;
 }
 
+static int riscv_cfi_validate(const struct riscv_isa_ext_data *data,
+			      const unsigned long *isa_bitmap)
+{
+	if (!IS_ENABLED(CONFIG_RISCV_USER_CFI))
+		return -EINVAL;
+
+	return 0;
+}
+
 static const unsigned int riscv_zk_bundled_exts[] = {
 	RISCV_ISA_EXT_ZBKB,
 	RISCV_ISA_EXT_ZBKC,
@@ -333,6 +342,10 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_SUPERSET_VALIDATE(zicboz, RISCV_ISA_EXT_ZICBOZ, riscv_xlinuxenvcfg_exts,
 					  riscv_ext_zicboz_validate),
 	__RISCV_ISA_EXT_DATA(ziccrse, RISCV_ISA_EXT_ZICCRSE),
+	__RISCV_ISA_EXT_SUPERSET_VALIDATE(zicfilp, RISCV_ISA_EXT_ZICFILP, riscv_xlinuxenvcfg_exts,
+					  riscv_cfi_validate),
+	__RISCV_ISA_EXT_SUPERSET_VALIDATE(zicfiss, RISCV_ISA_EXT_ZICFISS, riscv_xlinuxenvcfg_exts,
+					  riscv_cfi_validate),
 	__RISCV_ISA_EXT_DATA(zicntr, RISCV_ISA_EXT_ZICNTR),
 	__RISCV_ISA_EXT_DATA(zicond, RISCV_ISA_EXT_ZICOND),
 	__RISCV_ISA_EXT_DATA(zicsr, RISCV_ISA_EXT_ZICSR),

-- 
2.34.1


