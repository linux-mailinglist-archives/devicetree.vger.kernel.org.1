Return-Path: <devicetree+bounces-60923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 701208AAFC3
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 15:53:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 282DA28243A
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 13:53:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FD1512BF1C;
	Fri, 19 Apr 2024 13:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="JpKVYnXS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C143083A14
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 13:53:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713534808; cv=none; b=jJkM/VUKYCkVFWL41s08ECiPsuipoHPK/3imHVwTNEOry6g2DlGKuPf9cMEg52J/NcNDCC32W6wfYatWhdbd3rFZpiFPVeJt6n31GRB5Cc6BByTkfydc+ZJ4bISAWOoOOQ8a0CsUkflSR9RJFHaMUqszIqvjWaxcPK8K5PiC8wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713534808; c=relaxed/simple;
	bh=UG3w3CKx71vwz4rgaPNoTq+O5tD0e6A5tdxXCt37LE0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-type; b=EJdBfdZcjkNu+FOUVMWqFgauobqce6tD1uOed12Jcd3LFaMEYIKKf3QDodafw7APcCaSh0Z0poKTW5VPEaQ8Fvc965GtzbCK18i4vnnS35aAaWWrm/f31X6+CPbq61PiBA8qQOoAME2ajdM/nBsLa9w+uyN0DypTWapZydmh8ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=JpKVYnXS; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a52582ecde4so191501266b.0
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 06:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1713534805; x=1714139605; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gDRrILn2Yb0nV2jBuOcECI8z5zE7jmWeMbNRJOqe+pg=;
        b=JpKVYnXSI+MZGL/NwygPUcjmcq3IQrjId6fDtN75yszZdzq7zACjW6mXmDh/TLx0QC
         NEd9IiXanLJ4X4ndHA6WwquEvZcmQYEx9p4xHG0W4NLYIuU96KnrjiMt5p+hjNXXAVmY
         jhwwIGy9nNOyScZURcEzTNgbdWJpYTpxz5d3mC1Va8uR2Jwr36rxYk9gToPP0l84N/iy
         R1W8Y6pLR1dAOB/TWd1Btp0nUeMqoG0Py0/KEzA5isCPhovUe2NFzNJ6s7zL/L3V4wGK
         GKKNFhSrgrw0AxqvRl9tjvzROXmVv3qu7C6Ag+7cLOpwsDVTg38d9qlQJP2dpHEx1DUO
         LLUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713534805; x=1714139605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gDRrILn2Yb0nV2jBuOcECI8z5zE7jmWeMbNRJOqe+pg=;
        b=EThy833V0TwNwQ9j02im1TQ94+pMJ2VWDoBCGTnwdUhGvutqQhvKwv52pjX5+lWeKz
         IoAOzpmSSLGBsd9dhXejQtlwWZS6fvqCbzfDgikJTbMLCwq+SWupTpvnZyp49tK8gkl3
         KyWi9fFvdOBmVy4ifiirCCmvZeoVFPNvPZ6Z6y8qLwjxDMfYqRWhmeulbotxnbfemxCX
         Xr3w3pJDB4uVy9TZ5ffQv73qOZKau8cXFZ5WFpwF/sapdZ3JXNiOdpzgDMWHkDGUozQp
         OlhDhxn8E+3n78YRGRy0x/rIkLDEsPy8thjcxiDMr8OWwZwpnGtmJCTb2akgVonyZr1F
         mYEg==
X-Forwarded-Encrypted: i=1; AJvYcCVniVHF0olK/nCBZdBK4hhPLJRIxDrfnvMlrLo+RsKrgOu0Bf1JBHODH28ksTo2zSxVTLlKrmYSoeaD+aSgXp6Hl0FzNCFksz24lg==
X-Gm-Message-State: AOJu0YycAx3fzM9Rn0dby11sYsKguAOUXgBiKnGK5AtfGOBspqSRTAEN
	MSS73Pb+iJT0ABmoBoAvY70pGF5oYWi8zjdMC3atEnjV+IaVA1Ydu0lWXs54igs=
X-Google-Smtp-Source: AGHT+IFARVA4xqpRTy/M8TR2k0UEp7aiefGEX5Dkgqk03Yuv7B5CSdipP6x4sWl7IEmqFu/rmB4pkQ==
X-Received: by 2002:a17:906:a24c:b0:a55:59e6:13f5 with SMTP id bi12-20020a170906a24c00b00a5559e613f5mr1771899ejb.26.1713534804765;
        Fri, 19 Apr 2024 06:53:24 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id f20-20020a17090624d400b00a5575cde7cdsm1948711ejb.220.2024.04.19.06.53.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 06:53:24 -0700 (PDT)
From: Andrew Jones <ajones@ventanamicro.com>
To: linux-riscv@lists.infradead.org,
	kvm-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	conor.dooley@microchip.com,
	anup@brainfault.org,
	atishp@atishpatra.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	christoph.muellner@vrull.eu,
	heiko@sntech.de,
	charlie@rivosinc.com,
	David.Laight@ACULAB.COM,
	parri.andrea@gmail.com,
	luxu.kernel@bytedance.com
Subject: [PATCH v2 1/6] riscv: Provide a definition for 'pause'
Date: Fri, 19 Apr 2024 15:53:23 +0200
Message-ID: <20240419135321.70781-9-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240419135321.70781-8-ajones@ventanamicro.com>
References: <20240419135321.70781-8-ajones@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit

If we're going to provide the encoding for 'pause' in cpu_relax()
anyway, then we can drop the toolchain checks and just always use
it. The advantage of doing this is that other code that need
pause don't need to also define it (yes, another use is coming).
Add the definition to insn-def.h since it's an instruction
definition and also because insn-def.h doesn't include much, so
it's safe to include from asm/vdso/processor.h without concern for
circular dependencies.

Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/riscv/Kconfig                      | 7 -------
 arch/riscv/Makefile                     | 3 ---
 arch/riscv/include/asm/insn-def.h       | 2 ++
 arch/riscv/include/asm/vdso/processor.h | 8 ++------
 4 files changed, 4 insertions(+), 16 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index be09c8836d56..7427d8088337 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -639,13 +639,6 @@ config RISCV_ISA_ZICBOZ
 
 	   If you don't know what to do here, say Y.
 
-config TOOLCHAIN_HAS_ZIHINTPAUSE
-	bool
-	default y
-	depends on !64BIT || $(cc-option,-mabi=lp64 -march=rv64ima_zihintpause)
-	depends on !32BIT || $(cc-option,-mabi=ilp32 -march=rv32ima_zihintpause)
-	depends on LLD_VERSION >= 150000 || LD_VERSION >= 23600
-
 config TOOLCHAIN_NEEDS_EXPLICIT_ZICSR_ZIFENCEI
 	def_bool y
 	# https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=aed44286efa8ae8717a77d94b51ac3614e2ca6dc
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 252d63942f34..f1792ac03335 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -75,9 +75,6 @@ else
 riscv-march-$(CONFIG_TOOLCHAIN_NEEDS_EXPLICIT_ZICSR_ZIFENCEI) := $(riscv-march-y)_zicsr_zifencei
 endif
 
-# Check if the toolchain supports Zihintpause extension
-riscv-march-$(CONFIG_TOOLCHAIN_HAS_ZIHINTPAUSE) := $(riscv-march-y)_zihintpause
-
 # Remove F,D,V from isa string for all. Keep extensions between "fd" and "v" by
 # matching non-v and non-multi-letter extensions out with the filter ([^v_]*)
 KBUILD_CFLAGS += -march=$(shell echo $(riscv-march-y) | sed -E 's/(rv32ima|rv64ima)fd([^v_]*)v?/\1\2/')
diff --git a/arch/riscv/include/asm/insn-def.h b/arch/riscv/include/asm/insn-def.h
index e27179b26086..64dffaa21bfa 100644
--- a/arch/riscv/include/asm/insn-def.h
+++ b/arch/riscv/include/asm/insn-def.h
@@ -196,4 +196,6 @@
 	INSN_I(OPCODE_MISC_MEM, FUNC3(2), __RD(0),		\
 	       RS1(base), SIMM12(4))
 
+#define RISCV_PAUSE	".4byte 0x100000f"
+
 #endif /* __ASM_INSN_DEF_H */
diff --git a/arch/riscv/include/asm/vdso/processor.h b/arch/riscv/include/asm/vdso/processor.h
index 96b65a5396df..8f383f05a290 100644
--- a/arch/riscv/include/asm/vdso/processor.h
+++ b/arch/riscv/include/asm/vdso/processor.h
@@ -5,6 +5,7 @@
 #ifndef __ASSEMBLY__
 
 #include <asm/barrier.h>
+#include <asm/insn-def.h>
 
 static inline void cpu_relax(void)
 {
@@ -14,16 +15,11 @@ static inline void cpu_relax(void)
 	__asm__ __volatile__ ("div %0, %0, zero" : "=r" (dummy));
 #endif
 
-#ifdef CONFIG_TOOLCHAIN_HAS_ZIHINTPAUSE
 	/*
 	 * Reduce instruction retirement.
 	 * This assumes the PC changes.
 	 */
-	__asm__ __volatile__ ("pause");
-#else
-	/* Encoding of the pause instruction */
-	__asm__ __volatile__ (".4byte 0x100000F");
-#endif
+	__asm__ __volatile__ (RISCV_PAUSE);
 	barrier();
 }
 
-- 
2.44.0


