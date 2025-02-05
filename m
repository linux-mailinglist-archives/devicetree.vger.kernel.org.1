Return-Path: <devicetree+bounces-143105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B5EA2812C
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 02:29:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B2FB3A423B
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 01:28:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3CD022FDF1;
	Wed,  5 Feb 2025 01:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="ZgVw+BFA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9215D22F3A3
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 01:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738718558; cv=none; b=gzCNlJpvdvJK9PmAKIPYrfF+hSiuuf/00i4eD1nVelTlwCJnqOfjtStRqlID42qB2T7CE0QmH2nwbzkbrt567aeagZJ1bGA2PW+bFBrB7OvJ7V+pwUrOmF/Evm0ohYOAdQgQoozeLvteK1ndSqQJO8gEUOI28X3xAbUzkM4Kmaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738718558; c=relaxed/simple;
	bh=zWvCMjEUr0fm2YGOtkO5JQMRJ3MfHFejTQpY2YYRpeI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=B0YKcPDFsYQoXzZ+ViQ3tpnOHc5oUDLIR//BZl+pTr/c2E8AaoCLvNm+dlXUjJclbd6WbANFavbmVKS5D0NXNxaRdj5PuNkQT6QcdPj+YIev1Wf3AelWzO/6Cam7RzXJRXU0BOznjegGNdcYR6wDJSgDVgoi+U4wCW4tvJSRHa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=ZgVw+BFA; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-2f9d3d0f55dso1324744a91.1
        for <devicetree@vger.kernel.org>; Tue, 04 Feb 2025 17:22:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738718556; x=1739323356; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=opxHamP1ejpgUrZttGLg4zwDHWHLF3xPs1/Qb/08WRM=;
        b=ZgVw+BFAnlyTMYkemAUbxMmlJ3W8pzO7nMaFYtBJIbDKcF0YNeyT8CNRudOWbyllBT
         EGFrm0LsSwUYwAY3z4PtvT+AVowCGzhEJxqke4+pdhgTTWqfFlGLlykCMgaJVbw/MNsE
         jad3GBg4NdIg8Tm0xwPLozm+E8HI8y//sRz05hy2lYUEQL1TMTGGpKIDANd/SsWkOb7p
         vnGGP/IiTAlf6GvSJ5US5YM1OkUYmFe9NQc5V4lSCJQ7G6vc8y+KYPSQ0DaRTV9E6ztz
         WCwmIQ7Q06PpuryqJtZkwZB0jXukMIeJLgQLJMgV5lYV3HbX4LZuUct1T2uqDeyp7P2H
         jv5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738718556; x=1739323356;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=opxHamP1ejpgUrZttGLg4zwDHWHLF3xPs1/Qb/08WRM=;
        b=UsdetIZ4CGZ4+Gqk3TUIMq2cCatFcd1s61cMjr7kx5fmY1vkMM0RerHdt007rHq0ga
         Pl/nMpOJ3kN2lEQjze6jQY8Whfn37udUYvzTdfSbePcHvghyqK+G3mEHrCvQIfviPQ2q
         rvziCY1i8Jv/Kk+ajgdi9NloWVUN0wb0G0SHuUDWoHHpmFaJd2jrlOrTWhguDUQ0FYPL
         YcfjXTm3zBbvOQFyEHQELGqtSP8+nCCM/ieMi5T2ZFW7MB9lmpPwLEUew3wtby91bBdU
         OpRZgj+ZWdsi7WL41E5fh+/iSYp9seLuuo+PxpicFXLiPuc6x4SXIx7qxR+RBWKy1rto
         AJ3A==
X-Forwarded-Encrypted: i=1; AJvYcCXlkXAxoPfS8BtI2y3SdBpvHvY1K7r1n9+OBFSOVGNKfQfz6FD9R1gqfEOLSkQjlOmAxJCMmNty55/k@vger.kernel.org
X-Gm-Message-State: AOJu0YyhjV6Dzgogal0PzhLeoO761qb8mY8sLwSsIIKCfrh03MZGl70W
	SBM2sICfOfkJ+HBidyIBL3p8eaacG3cJSDWuWVnLLE/rSGs6IAuZqDR+C/ULSRs=
X-Gm-Gg: ASbGnctXfUrPJvQSSyKnT5kAUmf2Qgr277cNydxGj4NLTenQswvG02KXIzeZFI9+wev
	FKOOKlU6qum/Bm8JPNjMGEyWPHp8Q3pYS0TM1PSf+DfvnD3i0j6SAg0k2oGxiD18FDbfeP/KK60
	pgKlyfRn4FKlGufd5I7VK08TOiPxWQ+iDCY6o40CeuCe5WBuLBbr35Cc48fu93eCPKSuItYwMsE
	vARqt5qDGrtRVmJKo7w0Vn6P67UGCnvtrFLx4p7aO04ByX2dkwDuqS+lF6b/e4tHykgQkUUW20g
	SXx75ar513swiVE/FKLmK4TXzA==
X-Google-Smtp-Source: AGHT+IF7aU3deMwt8hgfhlcc0/P4Onueg0OBpQL+amjmp/PRJZc8dKL/Qrb5rJ/l7MtlZbqHel59Ag==
X-Received: by 2002:a05:6a00:6018:b0:724:bf30:3030 with SMTP id d2e1a72fcca58-73034fbc86bmr1933458b3a.0.1738718555911;
        Tue, 04 Feb 2025 17:22:35 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72fe69cec0fsm11457202b3a.137.2025.02.04.17.22.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Feb 2025 17:22:35 -0800 (PST)
From: Deepak Gupta <debug@rivosinc.com>
Date: Tue, 04 Feb 2025 17:22:09 -0800
Subject: [PATCH v9 22/26] riscv: kernel command line option to opt out of
 user cfi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250204-v5_user_cfi_series-v9-22-b37a49c5205c@rivosinc.com>
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

This commit adds a kernel command line option using which user cfi can be
disabled.

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/kernel/usercfi.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/riscv/kernel/usercfi.c b/arch/riscv/kernel/usercfi.c
index 6e561256bfaf..be08e5bb6e62 100644
--- a/arch/riscv/kernel/usercfi.c
+++ b/arch/riscv/kernel/usercfi.c
@@ -17,6 +17,8 @@
 #include <asm/csr.h>
 #include <asm/usercfi.h>
 
+bool disable_riscv_usercfi;
+
 #define SHSTK_ENTRY_SIZE sizeof(void *)
 
 bool is_shstk_enabled(struct task_struct *task)
@@ -390,6 +392,9 @@ int arch_set_shadow_stack_status(struct task_struct *t, unsigned long status)
 	unsigned long size = 0, addr = 0;
 	bool enable_shstk = false;
 
+	if (disable_riscv_usercfi)
+		return 0;
+
 	if (!cpu_supports_shadow_stack())
 		return -EINVAL;
 
@@ -469,6 +474,9 @@ int arch_set_indir_br_lp_status(struct task_struct *t, unsigned long status)
 {
 	bool enable_indir_lp = false;
 
+	if (disable_riscv_usercfi)
+		return 0;
+
 	if (!cpu_supports_indirect_br_lp_instr())
 		return -EINVAL;
 
@@ -501,3 +509,16 @@ int arch_lock_indir_br_lp_status(struct task_struct *task,
 
 	return 0;
 }
+
+static int __init setup_global_riscv_enable(char *str)
+{
+	if (strcmp(str, "true") == 0)
+		disable_riscv_usercfi = true;
+
+	pr_info("Setting riscv usercfi to be %s\n",
+		(disable_riscv_usercfi ? "disabled" : "enabled"));
+
+	return 1;
+}
+
+__setup("disable_riscv_usercfi=", setup_global_riscv_enable);

-- 
2.34.1


