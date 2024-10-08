Return-Path: <devicetree+bounces-109244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB66995AE9
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 00:49:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 319A91F24074
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:49:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 225422281E1;
	Tue,  8 Oct 2024 22:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="pWfndCVk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2643C2281CE
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 22:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728427154; cv=none; b=X2RepIILzvNlqqrHckNtW7ynC6YqCPbsbNqi5BiaGqiacd57UZs2WQeR5b2B6N5UbDomSgsZ5sgHDNU2clwOuEw4nTSkSS54qf1YcgH/fnX1VqmmfYzrrFZFNfy8XxCPMgodENQ8EbsRa5MxtEZU/DlzW7geem1x/+RGyGxYEKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728427154; c=relaxed/simple;
	bh=sbdtG2ZV1d/Cv83b+G22BvmoVtAK3czP65RUzBHVS9g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MamX0p+hrAevc4S+ciP/x6efuUtoJZ1BI6wM+Fk+0ljBo2spUzVGPKEjhc9y86SLISxQOX9qfVDENxW8FoZjIbs20xqJyV1RMO4vgu2y1SiGKgJbkAhepAkLRpkV6fJy8pfcVHgr//xPjHVo9Sdwv8BuV1eOQxGZC9xWuIRfIzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=pWfndCVk; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-7db238d07b3so5196569a12.2
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 15:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1728427151; x=1729031951; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=asJrmHut1Q6UlWCCNbkBgTT2I9NUCgfcqtf1L3nHA+A=;
        b=pWfndCVkWJo0RMdO+NxE6eGymTGPj7DVd3HDy6ZyA6bU3hY9iJ5XXZ98Xi+un8s66m
         oQu+HiTa/bFNaFUXWkHBWTLl7TIofs3y0sxXwWCvzB01RfFrJR++3P7uKhrPErK/rJ/j
         FixxG0HNjROCP5uIeuafhL+ZwrCyHugqQwtRIM1Z5zIUS1KNuo5kYbWXHC0RQKe/uMc5
         6fjWSebWchlhIF7xeKpBd1l9cxW91u/YhqpI4OJS2S+Vg+IpwsRL4G5lMQ5H6tBr6hF7
         3aZUZaxEcoLlrpTY0oYVeZM/pHbNSngogRyYkYXx7CWKDYlf9fhjgIVAfX3LNFpSMQsK
         zTAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728427151; x=1729031951;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=asJrmHut1Q6UlWCCNbkBgTT2I9NUCgfcqtf1L3nHA+A=;
        b=I2UJ4lugzBzTka5kWrwAu5d/hnnnbOIbdj4OooA9TGYzecOftsJ1emv5iTXGZvK1/d
         D2O1ncbwyCokuAJuzIFRh5/T3oEDdICJJYNvaSgqxjqVi8oQb85R8MxG3gJz2NoF6CQT
         emchqUI26kf7Eg9GjCktEw92lZAROUTI3hgeQ7yeAKfpNDunA65Zh2COK6IVyFHOnk1L
         qj/TfWqQOpNN8cmpiEULzNih6CrjLSwo6xc/UldZvkxg2mdyR0AtVkVMr8w6m3dWHli/
         mIu6W7dubymZkaW8A1c84wjtp1ruymWBev2vGfK07XXQ6KiumMA/0t6QilFv0IhcRDs5
         Eb8g==
X-Forwarded-Encrypted: i=1; AJvYcCWhZcT2NrqliSUHEcDqcIfiLym2Z9OrEZSlkHoooUkMx2A/WK6wnfwTdlOM2fj3gyTWnE5K1I72WSDP@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7jZxLJQuLJixfbg2Ksi+wD/FSa5G2jPUlDxIUmQGrlMZPYHbX
	FAnovrKesZXEDCCKGlfEgWuf90vJoL/xyuUhkEaMgChDoeutzjgld+OFsG7nBbU=
X-Google-Smtp-Source: AGHT+IEDqNZ//hNrN/QcTqq3QMYiauQAdv4OvwSpudvpfbUKRWUptDxZ/4bPpZt2oZiP3IfdvQ1Z7g==
X-Received: by 2002:a05:6a21:31c8:b0:1d2:e9e8:5e78 with SMTP id adf61e73a8af0-1d8a3c1e496mr717902637.23.1728427151493;
        Tue, 08 Oct 2024 15:39:11 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71df0ccc4b2sm6591270b3a.45.2024.10.08.15.39.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 15:39:11 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Tue, 08 Oct 2024 15:37:12 -0700
Subject: [PATCH v6 30/33] riscv: create a config for shadow stack and
 landing pad instr support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241008-v5_user_cfi_series-v6-30-60d9fe073f37@rivosinc.com>
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
 rick.p.edgecombe@intel.com, Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.14.0

This patch creates a config for shadow stack support and landing pad instr
support. Shadow stack support and landing instr support can be enabled by
selecting `CONFIG_RISCV_USER_CFI`. Selecting `CONFIG_RISCV_USER_CFI` wires
up path to enumerate CPU support and if cpu support exists, kernel will
support cpu assisted user mode cfi.

If CONFIG_RISCV_USER_CFI is selected, select `ARCH_USES_HIGH_VMA_FLAGS`,
`ARCH_HAS_USER_SHADOW_STACK` and DYNAMIC_SIGFRAME for riscv.

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/Kconfig | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 808ea66b9537..1335dbe91ab9 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -245,6 +245,26 @@ config ARCH_HAS_BROKEN_DWARF5
 	# https://github.com/llvm/llvm-project/commit/7ffabb61a5569444b5ac9322e22e5471cc5e4a77
 	depends on LD_IS_LLD && LLD_VERSION < 180000
 
+config RISCV_USER_CFI
+	def_bool y
+	bool "riscv userspace control flow integrity"
+	depends on 64BIT && $(cc-option,-mabi=lp64 -march=rv64ima_zicfiss)
+	depends on RISCV_ALTERNATIVE
+	select ARCH_HAS_USER_SHADOW_STACK
+	select ARCH_USES_HIGH_VMA_FLAGS
+	select DYNAMIC_SIGFRAME
+	help
+	  Provides CPU assisted control flow integrity to userspace tasks.
+	  Control flow integrity is provided by implementing shadow stack for
+	  backward edge and indirect branch tracking for forward edge in program.
+	  Shadow stack protection is a hardware feature that detects function
+	  return address corruption. This helps mitigate ROP attacks.
+	  Indirect branch tracking enforces that all indirect branches must land
+	  on a landing pad instruction else CPU will fault. This mitigates against
+	  JOP / COP attacks. Applications must be enabled to use it, and old user-
+	  space does not get protection "for free".
+	  default y
+
 config ARCH_MMAP_RND_BITS_MIN
 	default 18 if 64BIT
 	default 8

-- 
2.45.0


