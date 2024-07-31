Return-Path: <devicetree+bounces-89705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FA99427DC
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 09:27:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B1CB288062
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 07:27:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53A621A7216;
	Wed, 31 Jul 2024 07:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="S99/7hoK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2BB1A7200
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 07:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722410835; cv=none; b=DKeajmJ+5VZwUgYywW9umi89jL+4Y0T8dlaN3Ca4+JOa7f6WOJEe3Lcp9F456I1gbQg84Ok0FmbTFuExuzRfXw545CzGTG4jwCyBE+t3sorf619XMxQNRg81PfZmvoAY1OGKgmaOXpuF/80KlPm+udnlaHnWRqZXyzcg6TyYGLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722410835; c=relaxed/simple;
	bh=PM3qZIK2R6ejug8bxbLxnvL8qnPjz/KUKBSXPZaeUUw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JIJir4ccu8CF9xFylzP+SsN+BJUmzORYcQwiVGELAdDYYj6VO/85ttaQL8RdTgNA0Se5EvP3M+6ypP59duRqSKdpQzPG0AQbaFiA1cbORpDSZagwwJ9+pVgJcplC2DVJl93W8jzVCcC/SiocmuZQyk0sg9krRGmZ6iJbFrcYoW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=S99/7hoK; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-42816ca797fso30104825e9.2
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 00:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1722410832; x=1723015632; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c+0f3E3q4VF2oUdETZhba5ndpciNr7WJjXKRA7n65fw=;
        b=S99/7hoKyLtGZ0dHCLw59PiW7YjrBO38ZaVIOw+SXCQ8BU0wUWllePTZ+UJ83CAclT
         Qdqwiex3y5VDlYRG4/SyauVCt06eJ/BzvhCXzuA90aELlQ0VgrHwqVBOXcqt1eez3o1Q
         s8/BZDZeiulhQ/LPrpQwr3AChufvKFrAe8Hox3WGFkW/HJOnTVewDsvmPGnvwbvnlODX
         Yo1LKvR+yddfgipp8wcdWy1VYxrb/+GGQ4QNJSh5OyUh1MhYrAzk6Kohc0/3Y/kOEzfL
         DQ37kTqWcTaMr1Ar/CKYnkEufvtxUpDd1metmYx+O9k+UAUa4TmIhVkmqtru1yVm1EKg
         gqWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722410832; x=1723015632;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c+0f3E3q4VF2oUdETZhba5ndpciNr7WJjXKRA7n65fw=;
        b=hHRwG8ClStkfWg5hictUTQEFC5Re0D70kcB1TUCcgMEeWIjzCTDVogdknw/wMMYbX/
         knYmsQxakjbDOok3Qt8E6NsCd40ExLAwoPndu8n7RJ7HxcYvGyyogN1bKA6C2j1IZbrW
         A+6DWND7HVJN9vo4eiG6rSzlrjwRN7jk3M9daPLVd+ZDS0KjXZhFVxqkkLqRrXcZmxti
         2ni/g6+C48q3qq7X6ZyrlNtibUe+QeJ5LJbfkCNxBXCCI3OAbzx/p1CZPBefkYwTizJm
         l8SLxLUz5mOXYy26XtnRj9ZWDH5DwgNONoaQt3DGkhcC4e9oX4829RevBdu2WXaGcoRx
         0c/w==
X-Forwarded-Encrypted: i=1; AJvYcCUUdq0FACr0ONqLMwLcFpd/sIcU34/seQ5yjMmEK9o6FOaxbLPqOA0jOFwUqmuoQl8vBIZ+M04bJewR4wqQb5QkGn1FMXqGiwHxew==
X-Gm-Message-State: AOJu0YyBx0ZS79YfrYGmTsXNzYpbbf6uP82iGPNrORPDeEXxn+i1g8+K
	H/VMzHaO9oL1XNICwvxLYocvZ+RNHKPiaENmK1k92m56LhThMHG7b1Wkm7ntWgw=
X-Google-Smtp-Source: AGHT+IF+zhrAE8xWu8482bc/xbqgEfe8Vh5QY9YSloK+qT0j5XnJu7tISiM0orNkpBJdFYpMo1Fyfg==
X-Received: by 2002:a05:600c:4593:b0:426:6d1a:d497 with SMTP id 5b1f17b1804b1-42811d8c5b5mr82139885e9.12.1722410831634;
        Wed, 31 Jul 2024 00:27:11 -0700 (PDT)
Received: from alex-rivos.home (amontpellier-656-1-456-62.w92-145.abo.wanadoo.fr. [92.145.124.62])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36b367d95c7sm16218977f8f.37.2024.07.31.00.27.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 00:27:11 -0700 (PDT)
From: Alexandre Ghiti <alexghiti@rivosinc.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Andrea Parri <parri.andrea@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Will Deacon <will@kernel.org>,
	Waiman Long <longman@redhat.com>,
	Boqun Feng <boqun.feng@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Leonardo Bras <leobras@redhat.com>,
	Guo Ren <guoren@kernel.org>,
	linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-arch@vger.kernel.org
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>
Subject: [PATCH v4 03/13] riscv: Implement cmpxchg32/64() using Zacas
Date: Wed, 31 Jul 2024 09:23:55 +0200
Message-Id: <20240731072405.197046-4-alexghiti@rivosinc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240731072405.197046-1-alexghiti@rivosinc.com>
References: <20240731072405.197046-1-alexghiti@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds runtime support for Zacas in cmpxchg operations.

Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
---
 arch/riscv/Kconfig               | 16 +++++++++++
 arch/riscv/Makefile              |  3 ++
 arch/riscv/include/asm/cmpxchg.h | 48 +++++++++++++++++++++-----------
 3 files changed, 50 insertions(+), 17 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 0f3cd7c3a436..d955c64d50c2 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -613,6 +613,22 @@ config RISCV_ISA_ZAWRS
 	  use of these instructions in the kernel when the Zawrs extension is
 	  detected at boot.
 
+config TOOLCHAIN_HAS_ZACAS
+	bool
+	default y
+	depends on !64BIT || $(cc-option,-mabi=lp64 -march=rv64ima_zacas)
+	depends on !32BIT || $(cc-option,-mabi=ilp32 -march=rv32ima_zacas)
+	depends on AS_HAS_OPTION_ARCH
+
+config RISCV_ISA_ZACAS
+	bool "Zacas extension support for atomic CAS"
+	depends on TOOLCHAIN_HAS_ZACAS
+	depends on RISCV_ALTERNATIVE
+	default y
+	help
+	  Enable the use of the Zacas ISA-extension to implement kernel atomic
+	  cmpxchg operations when it is detected at boot.
+
 	  If you don't know what to do here, say Y.
 
 config TOOLCHAIN_HAS_ZBB
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 6fe682139d2e..f1788131d5fe 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -82,6 +82,9 @@ else
 riscv-march-$(CONFIG_TOOLCHAIN_NEEDS_EXPLICIT_ZICSR_ZIFENCEI) := $(riscv-march-y)_zicsr_zifencei
 endif
 
+# Check if the toolchain supports Zacas
+riscv-march-$(CONFIG_TOOLCHAIN_HAS_ZACAS) := $(riscv-march-y)_zacas
+
 # Remove F,D,V from isa string for all. Keep extensions between "fd" and "v" by
 # matching non-v and non-multi-letter extensions out with the filter ([^v_]*)
 KBUILD_CFLAGS += -march=$(shell echo $(riscv-march-y) | sed -E 's/(rv32ima|rv64ima)fd([^v_]*)v?/\1\2/')
diff --git a/arch/riscv/include/asm/cmpxchg.h b/arch/riscv/include/asm/cmpxchg.h
index 9ba497ea18a5..c626fe0d08ae 100644
--- a/arch/riscv/include/asm/cmpxchg.h
+++ b/arch/riscv/include/asm/cmpxchg.h
@@ -12,6 +12,7 @@
 #include <asm/fence.h>
 #include <asm/hwcap.h>
 #include <asm/insn-def.h>
+#include <asm/cpufeature-macros.h>
 
 #define __arch_xchg_masked(sc_sfx, prepend, append, r, p, n)		\
 ({									\
@@ -137,24 +138,37 @@
 	r = (__typeof__(*(p)))((__retx & __mask) >> __s);		\
 })
 
-#define __arch_cmpxchg(lr_sfx, sc_sfx, prepend, append, r, p, co, o, n)	\
+#define __arch_cmpxchg(lr_sfx, sc_cas_sfx, prepend, append, r, p, co, o, n)	\
 ({									\
-	register unsigned int __rc;					\
+	if (IS_ENABLED(CONFIG_RISCV_ISA_ZACAS) &&			\
+	    riscv_has_extension_unlikely(RISCV_ISA_EXT_ZACAS)) {	\
+		r = o;							\
 									\
-	__asm__ __volatile__ (						\
-		prepend							\
-		"0:	lr" lr_sfx " %0, %2\n"				\
-		"	bne  %0, %z3, 1f\n"				\
-		"	sc" sc_sfx " %1, %z4, %2\n"			\
-		"	bnez %1, 0b\n"					\
-		append							\
-		"1:\n"							\
-		: "=&r" (r), "=&r" (__rc), "+A" (*(p))			\
-		: "rJ" (co o), "rJ" (n)					\
-		: "memory");						\
+		__asm__ __volatile__ (					\
+			prepend						\
+			"	amocas" sc_cas_sfx " %0, %z2, %1\n"	\
+			append						\
+			: "+&r" (r), "+A" (*(p))			\
+			: "rJ" (n)					\
+			: "memory");					\
+	} else {							\
+		register unsigned int __rc;				\
+									\
+		__asm__ __volatile__ (					\
+			prepend						\
+			"0:	lr" lr_sfx " %0, %2\n"			\
+			"	bne  %0, %z3, 1f\n"			\
+			"	sc" sc_cas_sfx " %1, %z4, %2\n"		\
+			"	bnez %1, 0b\n"				\
+			append						\
+			"1:\n"						\
+			: "=&r" (r), "=&r" (__rc), "+A" (*(p))		\
+			: "rJ" (co o), "rJ" (n)				\
+			: "memory");					\
+	}								\
 })
 
-#define _arch_cmpxchg(ptr, old, new, sc_sfx, prepend, append)		\
+#define _arch_cmpxchg(ptr, old, new, sc_cas_sfx, prepend, append)	\
 ({									\
 	__typeof__(ptr) __ptr = (ptr);					\
 	__typeof__(*(__ptr)) __old = (old);				\
@@ -164,15 +178,15 @@
 	switch (sizeof(*__ptr)) {					\
 	case 1:								\
 	case 2:								\
-		__arch_cmpxchg_masked(sc_sfx, prepend, append,		\
+		__arch_cmpxchg_masked(sc_cas_sfx, prepend, append,	\
 					__ret, __ptr, __old, __new);	\
 		break;							\
 	case 4:								\
-		__arch_cmpxchg(".w", ".w" sc_sfx, prepend, append,	\
+		__arch_cmpxchg(".w", ".w" sc_cas_sfx, prepend, append,	\
 				__ret, __ptr, (long), __old, __new);	\
 		break;							\
 	case 8:								\
-		__arch_cmpxchg(".d", ".d" sc_sfx, prepend, append,	\
+		__arch_cmpxchg(".d", ".d" sc_cas_sfx, prepend, append,	\
 				__ret, __ptr, /**/, __old, __new);	\
 		break;							\
 	default:							\
-- 
2.39.2


