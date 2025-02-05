Return-Path: <devicetree+bounces-143086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EED8BA280B9
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 02:22:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B947918874B8
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 01:22:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A269E228CBE;
	Wed,  5 Feb 2025 01:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="3dVCkvUs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92BAC2288EA
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 01:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738718522; cv=none; b=m5sKfG8d6KiF7BMDgwUXZzMaHCXmvfxPAg6Scfn5dlA8C0MFv3VNlBihYnTgymFHMeP8YaBwRjh0f2vGFuRQbMtL+Dbhwm1kh9lQgZTz8j3ie9MrX00h8/Z9p6wXKvI8fNelicKtpkQ0II0cpGPq+BzvjcaVqsPpWNO4GbiLIkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738718522; c=relaxed/simple;
	bh=9eYOB+FPPITAFaneWtrFy7yOS2i1pAgXZA5NwOcJ/Ss=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=If+LsAUBuYsXB+uHAphSe4KhsFVJGSKjZr3tsmqNu51OtOhgyfvL6mjB5A2Ob2Fl0HfryuLAr4Gu9mZVO4d27nkvUnX70uHuzfupBTsyBBBGf3aFb/m1KwjRmVSlZNc9vrZW7Rlk9gN0WS8VEYwiaHyKBD8ANmvD6B+6EtqnFj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=3dVCkvUs; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2161eb95317so110996355ad.1
        for <devicetree@vger.kernel.org>; Tue, 04 Feb 2025 17:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738718520; x=1739323320; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8tcFAXVAWiQrY6HWFsnaHkFz6kw+io7jzixAAtP9lAg=;
        b=3dVCkvUsyytb1Wtg+PbOcGoDQK89i364uF/x3kqivFFr6TgH/hA5NhMfVxad1zKHzA
         PPGXU+YTRZGwcp73NglZ2z1cw2kDStTY2UcTc1RPF6CjC/yt8g82Tb3k5CVpmEDbf4Iz
         UfefP871FMTwo19hdX8CN6B2HIehZZIr3GD81OCEju7uF4AsEjYKZLihi4RxkeD7EaHK
         4639dZ7v8vNMklW1InBHtspBpMfr8mH4/8Pji1QxczKJN1xph18c1x8jW5iE+XlWmcUP
         f/njKk8PfY7w0z2/nxoWAufNdDImxYla6vENhQDI4+sSDfmTcaowyYXZ33nm9FdirK0K
         iq/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738718520; x=1739323320;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8tcFAXVAWiQrY6HWFsnaHkFz6kw+io7jzixAAtP9lAg=;
        b=dm0d2YvAb7y5dOo8eyk9XP/JfKgXr7LtgxaaV69DwTB2WWgGReCDv2kMrS+2OrcbuH
         6tPovtjwGaI7tQB+dr4aT+RhzP1fbJ5gh7gF8YjnPNHP+C9cuBe8dhgRBy4gKeapR6Uj
         go7OFlojrLpK+IK0FAgjheAjIYNQrpIOpCuMAZpgzbjBNHA08RyFujhUEW1QgeDLS1/8
         bSUdsjeNdRRgxP91VtABBeeZ8MgRqRrMe8QFpPGP8U+5z7O+iFN+dUYnyFkrwJFU17mM
         aDpUnfPBXD9Sq4TgCE/fr8lSK9xsed4hKS0gtW9LcDTV4ItkBBeD1ZQz4i76eDdV3E6u
         kKww==
X-Forwarded-Encrypted: i=1; AJvYcCVSWGaqr4mWdT3cltjgzflfrHu8hsg2lTAQRoDOjY7/4ngYqmC+WJ19QIfgYOjnmILNf2X18V5W1hG+@vger.kernel.org
X-Gm-Message-State: AOJu0YzRW5ULMy2HdP2YERK7LvO64oWe+5okp1vRuCUiA4vZMpBhY3ly
	QAdQUetZuTw7H6GqmN8LgfBTHj6po3Vx+D0CTgaWK999SSDkRVYZbl5Q2AOYt2s=
X-Gm-Gg: ASbGncuUbCs0+g1SuVxtXdN4T4WZREyM5t5X9OekAhx7APlcHPBy4vWy/MBIZqAsrEM
	s8Xsh3Ui2zw7MCgAEjSc6H9MMrZ5Y4EW74qnWOjQ4Hd1RzOVX32ybDbLmS/A7D3hUFarukNxpIZ
	NSsIaEHhkZeK16ZVAPkm/z9FRf0ZVZoa5KLDwEPRN2fYLUdF5zCNaqeV5IFvg/U/JG6kpFsojtR
	Tte+wV0EcxSFiUEey4c1qZDGphCGEPAA7zUqnBJ20etPZIXCB1Dc1kmc0D9CYABxQjEZp+voNQm
	yx1gqdjBvA+3rMWXab7cUaIL0A==
X-Google-Smtp-Source: AGHT+IGcLpXN7H1Vb3ytJk/GwyCBkowKecTGXsuuIYbq2cDK4TUx8xLv1sxd9tib0WLuvG/ZPY9AqQ==
X-Received: by 2002:a05:6a00:acc:b0:725:f18a:da52 with SMTP id d2e1a72fcca58-730350e50c2mr1616706b3a.4.1738718519861;
        Tue, 04 Feb 2025 17:21:59 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72fe69cec0fsm11457202b3a.137.2025.02.04.17.21.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Feb 2025 17:21:59 -0800 (PST)
From: Deepak Gupta <debug@rivosinc.com>
Date: Tue, 04 Feb 2025 17:21:50 -0800
Subject: [PATCH v9 03/26] riscv: zicfiss / zicfilp enumeration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250204-v5_user_cfi_series-v9-3-b37a49c5205c@rivosinc.com>
References: <20250204-v5_user_cfi_series-v9-0-b37a49c5205c@rivosinc.com>
In-Reply-To: <20250204-v5_user_cfi_series-v9-0-b37a49c5205c@rivosinc.com>
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
 arch/riscv/kernel/cpufeature.c      |  2 ++
 4 files changed, 18 insertions(+)

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
index c6ba750536c3..e72de12e5b99 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -333,6 +333,8 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_SUPERSET_VALIDATE(zicboz, RISCV_ISA_EXT_ZICBOZ, riscv_xlinuxenvcfg_exts,
 					  riscv_ext_zicboz_validate),
 	__RISCV_ISA_EXT_DATA(ziccrse, RISCV_ISA_EXT_ZICCRSE),
+	__RISCV_ISA_EXT_SUPERSET(zicfilp, RISCV_ISA_EXT_ZICFILP, riscv_xlinuxenvcfg_exts),
+	__RISCV_ISA_EXT_SUPERSET(zicfiss, RISCV_ISA_EXT_ZICFISS, riscv_xlinuxenvcfg_exts),
 	__RISCV_ISA_EXT_DATA(zicntr, RISCV_ISA_EXT_ZICNTR),
 	__RISCV_ISA_EXT_DATA(zicond, RISCV_ISA_EXT_ZICOND),
 	__RISCV_ISA_EXT_DATA(zicsr, RISCV_ISA_EXT_ZICSR),

-- 
2.34.1


