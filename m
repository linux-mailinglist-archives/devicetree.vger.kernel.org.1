Return-Path: <devicetree+bounces-62974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C228B34F0
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 12:08:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C33891F21F0F
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 10:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 931C71428F8;
	Fri, 26 Apr 2024 10:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="kOoY92y3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9845B13F42F
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 10:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714126106; cv=none; b=e789AUjmurzXFCZLYIdNp5QlwrOmFrmRvHYi3IjSIQIwopBnPuGtSmOkEiGuMCbj/BQw1QF09sh6DYYzF4h6MJEBmFVzmuJaKS/tlZfFqreZd2ri8x91hRdWujwSCmWeiD0pgIyYRvp/jpUbHVW9yL9V3NjZvV79fQAsR7JE7IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714126106; c=relaxed/simple;
	bh=UG3w3CKx71vwz4rgaPNoTq+O5tD0e6A5tdxXCt37LE0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-type; b=EDlmCEgjBWHi5eFMXJ9dxcKw1lz43LP7+WWG4UB5bdx1VT66AGVPlAxRDQoG9gFv7XexCZ6dOSVJPhqOMNAE8NHOvv3p4iIn9JAyDU+gxh01rX20wBbKNNLCBRcI9eYEG1WJBHqYtg/BWiVGnKtWXWKXEt1Q3mCxGlot6yZeXfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=kOoY92y3; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-516d4d80d00so2629270e87.0
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 03:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1714126103; x=1714730903; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gDRrILn2Yb0nV2jBuOcECI8z5zE7jmWeMbNRJOqe+pg=;
        b=kOoY92y34yED7cte7JWOxm7GbBam7xj1NsRsggj5qbllbYSAWPMn0ROLcXI3bpDXQY
         iYNuFrrmj+SqQAgyheQgCInej+brZtPTQdwHor5sLaH9yCDvCnORjh6N+eQboea8nqX0
         AgOFWENcKxC12DAedruN4qlBKfV+qTvfD7R6UIz3n6MuGqjg4uezjq7OQd0RAesRL8KD
         Ws/Nk/uH83tG1/MSoiRfILf/1A60CwH2cZGhC5N9qzOV7i/gxcHnEWGi0BEjIf4C9xj7
         83ufxPn0W+gn2WIlmKb7Tew+A+lP1ip2NRdFn/APsGkWUlURrVS/wDTiKnMtvx0Sbvct
         hE4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714126103; x=1714730903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gDRrILn2Yb0nV2jBuOcECI8z5zE7jmWeMbNRJOqe+pg=;
        b=Fu1aVOQmrQ/pGn/PC+oaQj6ew93CpCjpvu7l4yDWtDt+/87AoNExK3lwOyacaHkhI3
         ztUbgHFqqoSOM3CDp6bnHDDaxH/bEOpWiVzUsRw4SCW6Nj0ILF2cuIvPj1VJHxAwMVlx
         jK4gR9kmTWrJ0dqV14iL/DYgprs5Jg3hjy6GmfwHeTHR085vvnTH/+ZfCLHfU6eATY9Y
         9GnT5p6t5b0eng35Fm8OgqJxiLIRNReJ7AJdcs+q86+jjyEdT95qLuzENBZwqV+4cB7Z
         pBQXAhHATsHHbbj5WIRjxIdtUoeLr4ovNmOjPruCg05Gu72N+Xi7V5Tg1eOKwzeP2tLL
         34/w==
X-Forwarded-Encrypted: i=1; AJvYcCXxaZh7cr52NDFSeaBbeHogHPXWslbhxLZxMSEdP0bMLeFWti54gee7rZk5dGKi82hXu6vf033xJ1Z4Q02Sd5aibIwKuDA1oWTnkA==
X-Gm-Message-State: AOJu0Yyj/ATwG7LXCqEG9j25TltEEUabGto/anEGoq3q1oeViwOju4h4
	Kiyf9vrbyxoCVSwQkF2iJsAqtXFOaBIVlquBQZzf1AP/yd3ijbCB5/24dIb0z4c=
X-Google-Smtp-Source: AGHT+IHaD1VcRg+G2d6oDu3yQ2MU2lFuL72a9rslNopWREUEuF0Qk9e1stsspq4ExuKqi3Q2okHOQA==
X-Received: by 2002:ac2:5dd4:0:b0:51c:b95c:910c with SMTP id x20-20020ac25dd4000000b0051cb95c910cmr991564lfq.29.1714126102613;
        Fri, 26 Apr 2024 03:08:22 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id iv19-20020a05600c549300b004186c58a9b5sm30019533wmb.44.2024.04.26.03.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 03:08:22 -0700 (PDT)
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
Subject: [PATCH v3 1/6] riscv: Provide a definition for 'pause'
Date: Fri, 26 Apr 2024 12:08:21 +0200
Message-ID: <20240426100820.14762-9-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240426100820.14762-8-ajones@ventanamicro.com>
References: <20240426100820.14762-8-ajones@ventanamicro.com>
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


