Return-Path: <devicetree+bounces-109219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 89213995A48
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 00:39:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 417932865D6
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:39:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96112219C8B;
	Tue,  8 Oct 2024 22:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="cpXBcNSZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E73C42194A6
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 22:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728427083; cv=none; b=mCAy8skO9DOgKueKSTucY31eeeGX3Mfpe/qF0AD0OKJOcLNC8TbhZCO0ek5L+7RfJ6SSpAGlCYh7p2b0v3hew6wOk6H/5WmRXYV455FiAc3W3p+wB+R0Vho2CjG8Fba4uw/CG8ROx2dPrZsgBIGHpeeYF+CAShw2kXIdj1pFhMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728427083; c=relaxed/simple;
	bh=qlKCxnrGkFINaFbY55w2g1E1gZCtfCAJp/VKL4faW0M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T5JX1gNufYOeQWhcrZKdfwxJVXNWKzh2ZCsevYKAoB+GEFXrwXpKugvr6kPKvr4fWpWYOP1lcLVLJPbQA2IQpEGpfnxdagVUEy+oD1xj+jzXEhPrQLhSgur/RS9w5UjJbqq6Vrqzh5VgR2TMGlr9bw3zo8dS3jwJ7HKAmVQE2TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=cpXBcNSZ; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-71df7632055so3374124b3a.3
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 15:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1728427081; x=1729031881; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aVxR1oWgZ2k5hHFq9uLsQO1od960zXed/8DpSx7GGdM=;
        b=cpXBcNSZaP0BMvkJW0slOL2kq2mvGLpvhzSLDKssKWgbN3ZdL/yDj8y87LgcVvst8v
         ID+z4M10spb2qNWQqe1PcK6tPdqgGf9jXw3LURj9J0rVfNEE4V3eMf895jgaODcPVOAZ
         8mtD6uuwbMyXsy0vYUPQ7toym8lCKVuCOCGeiAlN21+1csb7I6CMor4OA9H2aFCfeEC1
         gGgxbsdML6PaGCJJaNp3ptX42HePG8GINUUmVGxMN5onB+7F9Q+QUdNwPgrKILmG3aeg
         UMfmq3ogNZbO8O85pCDdgp4/Y5ZsR9x80HSs6Zu9TN0tWhKn4xZOLEifzBpX2xTQA/iL
         lKRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728427081; x=1729031881;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aVxR1oWgZ2k5hHFq9uLsQO1od960zXed/8DpSx7GGdM=;
        b=kAjqHbNsdxSPYa7QY4XXzozCSEl6ISwwyyhU5zYFsVTQJEvIrLwzVqdCb7KwQTxwie
         3pqIiso4y6bBejvyq42/4vlCSpZIKbzw5IVjXA6UpjnqwdOkPBGIZMtYr79i194TI3je
         igCV57s2BeyEG6y/EvgxyZQeTuEwhvvRBO67Dxzzhq6OchQR1A3c8HjZYUUWFl7Yq0F6
         OfNPz86Pjb9OmhVhYhBH/OXgfOnWqpkubB1k0S3G6q3xtM347PnU8b+UBmEd5nZ8c0hm
         HdhBmLHW1OpKwOZNurCdJAycYZVfjEQYngxwAt9wANHWMZkAJLx/zBL/beuBfhoUu8JN
         SGzw==
X-Forwarded-Encrypted: i=1; AJvYcCWiXCbF0eslapSx9A5798EecxoyeC2vNA9e0VK9Z5tE4vI16/yT4joHv9EEZKnhitmoD2ZLr/sUMmra@vger.kernel.org
X-Gm-Message-State: AOJu0YxhtzTZVY6bAM31uuVH5fbEStFyNUL2Dmn+c2eZfFdh8v5PtBTQ
	60RJQqZBT+2MXpEBzxtULYbfNcvz/X4WqLoms0v7BsAmI6YW4AO3GHXNGJKUPqQ=
X-Google-Smtp-Source: AGHT+IE/RTGphmtify7ZaBGz4r8U96xtkLO6P3lDZmR5UXWHj3NjFx9egQQunrEc3RZFFoV8wwYuqg==
X-Received: by 2002:a05:6a20:929d:b0:1d7:5a8:379d with SMTP id adf61e73a8af0-1d8a3bff07bmr624695637.15.1728427081301;
        Tue, 08 Oct 2024 15:38:01 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71df0ccc4b2sm6591270b3a.45.2024.10.08.15.37.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 15:38:00 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Tue, 08 Oct 2024 15:36:47 -0700
Subject: [PATCH v6 05/33] riscv: Call riscv_user_isa_enable() only on the
 boot hart
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241008-v5_user_cfi_series-v6-5-60d9fe073f37@rivosinc.com>
References: <20241008-v5_user_cfi_series-v6-0-60d9fe073f37@rivosinc.com>
In-Reply-To: <20241008-v5_user_cfi_series-v6-0-60d9fe073f37@rivosinc.com>
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
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-mm@kvack.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 alistair.francis@wdc.com, richard.henderson@linaro.org, jim.shu@sifive.com, 
 andybnac@gmail.com, kito.cheng@sifive.com, charlie@rivosinc.com, 
 atishp@rivosinc.com, evan@rivosinc.com, cleger@rivosinc.com, 
 alexghiti@rivosinc.com, samitolvanen@google.com, broonie@kernel.org, 
 rick.p.edgecombe@intel.com, Deepak Gupta <debug@rivosinc.com>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Andrew Jones <ajones@ventanamicro.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.0

From: Samuel Holland <samuel.holland@sifive.com>

Now that the [ms]envcfg CSR value is maintained per thread, not per
hart, riscv_user_isa_enable() only needs to be called once during boot,
to set the value for the init task. This also allows it to be marked as
__init.

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Deepak Gupta <debug@rivosinc.com>
Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---
 arch/riscv/include/asm/cpufeature.h | 2 +-
 arch/riscv/kernel/cpufeature.c      | 4 ++--
 arch/riscv/kernel/smpboot.c         | 2 --
 3 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/include/asm/cpufeature.h b/arch/riscv/include/asm/cpufeature.h
index 45f9c1171a48..ce9a995730c1 100644
--- a/arch/riscv/include/asm/cpufeature.h
+++ b/arch/riscv/include/asm/cpufeature.h
@@ -31,7 +31,7 @@ DECLARE_PER_CPU(struct riscv_cpuinfo, riscv_cpuinfo);
 /* Per-cpu ISA extensions. */
 extern struct riscv_isainfo hart_isa[NR_CPUS];
 
-void riscv_user_isa_enable(void);
+void __init riscv_user_isa_enable(void);
 
 #define _RISCV_ISA_EXT_DATA(_name, _id, _subset_exts, _subset_exts_size, _validate) {	\
 	.name = #_name,									\
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 27bafc5dd62d..b3a057c36996 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -920,12 +920,12 @@ unsigned long riscv_get_elf_hwcap(void)
 	return hwcap;
 }
 
-void riscv_user_isa_enable(void)
+void __init riscv_user_isa_enable(void)
 {
 	if (riscv_has_extension_unlikely(RISCV_ISA_EXT_ZICBOZ))
 		current->thread.envcfg |= ENVCFG_CBZE;
 	else if (any_cpu_has_zicboz)
-		pr_warn_once("Zicboz disabled as it is unavailable on some harts\n");
+		pr_warn("Zicboz disabled as it is unavailable on some harts\n");
 }
 
 #ifdef CONFIG_RISCV_ALTERNATIVE
diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
index 0f8f1c95ac38..e36d20205bd7 100644
--- a/arch/riscv/kernel/smpboot.c
+++ b/arch/riscv/kernel/smpboot.c
@@ -233,8 +233,6 @@ asmlinkage __visible void smp_callin(void)
 	numa_add_cpu(curr_cpuid);
 	set_cpu_online(curr_cpuid, true);
 
-	riscv_user_isa_enable();
-
 	/*
 	 * Remote cache and TLB flushes are ignored while the CPU is offline,
 	 * so flush them both right now just in case.

-- 
2.45.0


