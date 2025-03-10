Return-Path: <devicetree+bounces-156215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A17CA598D2
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 16:01:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DFB1816CF51
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 15:00:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C3A523E343;
	Mon, 10 Mar 2025 14:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="O8fbsLvd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04DB323E329
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 14:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741618413; cv=none; b=DdRgegwLtF81/x7AtAPtndVqB32r7NdqUIGUUypdvgaYGVuCt4hYUoMdnL/dOyk0hIaeIF9ivR4ZrEYtq+o4fadueIkHvOa38iBSY+lnVGY0Zbjxrau2BbuhHNOi7zHLvpWNNpr63SvODQPbdMhV9+XCKxUCTMTi5rlBJKpZlLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741618413; c=relaxed/simple;
	bh=Eua84f2QnuJ0+u1eEfH6+3KRo1p7kHINzNbKNk8bPkI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Bmx/e5Usht1Dlk9zi11RqNVduSN57QdrGs274EWFhMlh+SQ4VWMlwt0OEKeHPizHETuHzN6U/2fcehhSu7hsBpvYsxfRfYOy5D9xZqdjayXXgZ84HM+kqi54C2EbuKezXkpIb0+eQAfCR5qB13irrdCC/8x564199NHznGAZQ4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=O8fbsLvd; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-223fd89d036so84683405ad.1
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 07:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1741618411; x=1742223211; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9LN1OOVFFK55bIQe9Bj7KSCICvDpdODqLxcVYOIQy28=;
        b=O8fbsLvdnD8UIpI0UlJYiIL1lmGzpKtFjWwms4QoY9YaH3g/9k1ytjjnEo0uM2m9Yy
         W2+Y6867Upup1zQj5IAU2dgH03j17eT/1zaY4BVmuJM23jmrrJXgehS3ICvbG7LfdfIZ
         QP2E02aEVi+J+ESa6fcPFwgqfT1ZxOVBUvlgBG8sImxddE4P/II57EuZQZcClr/HMaRD
         oSwMqUtUIZGhXodE0rBBd8Kx7q8fN3Z95Lo63cCYt1ivb9PhTmekIeiV6/dPI7mm1Uk7
         12q7qlXE1j2tlsZ93G7j8IaJlk3TYZY8BGZDhnhxsag4zLwfdFjZDxV1TEZUwFAQzL9p
         YXig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741618411; x=1742223211;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9LN1OOVFFK55bIQe9Bj7KSCICvDpdODqLxcVYOIQy28=;
        b=sPp+CkxRImEKxXcJziJN2FA9AyzW9dFRDWLwiuwPyTC/7Fbzce0J/t+ZbuqtF2YkNg
         /8jGIAHz6gIG3vBedkaAB+AcE+Irjw3ummJarUsJyLr4FgLae8tBA3KGaMJNe5pr7bpj
         B3+M29OOFxK2cuGyEydTIuS/LK3tL5ywC20lfGj/xOyg8wCyw2W8EOb+eP5gLlgGPiOC
         mYuurllnyzB8Bb29vLudldwoKZBq5itq9fqK4ToDkDX+4Bqijt9q1KUsn3dHEQ/ebIZm
         fAU1sKVYFjmKqsYLBi2jGILrbuRN6f9JisWwZ9nCKi94xZlpbLBqJPBJ0tlg3ez/Ubuh
         8lCA==
X-Forwarded-Encrypted: i=1; AJvYcCVuJFQQyYXtv25zo5JrOuWhTdNjU0igUqG8vhrd0NiCVNYl1A51qGCR3ecRUrxU1OGWbrDu6lIAvOrX@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk7ll4S/8gVdujOlqEK1cSR+c8tRGjBZTVPSzrq0qufv3KCCVy
	WFoE489cMB1vw6IXkeCmQalJQlth+giY2LFFi6BLDzeet5GkLw/lYLWx89xxij4=
X-Gm-Gg: ASbGncvIskAZdRSKHh2E+RA4VuD9x2NEOF15Fpag2AtqiJJMiung4a6eKItpJMC1nKG
	oaB0WmqeACwwwEm8fSTtgJDHp/43m+Uz4EG007leNgDBxL4uyfGhBDjhnkbs6v0hnRPmw3Rj3Uf
	qq297+jyCx8x9vDddDAaXr0W/uw3k6VswP5vHHQcz7qq+jVogHD76wVIMPWTeLmxTYqKx8zdsbn
	3KinnaaiIUgsZQcG0e6tVYuPBaD/dPoLPgZz3VMGAYgipqnvihmujxaUCxwZCgwypY2ARmWt6q8
	T2QJoMko5axejqVlRZUGVS75N9tQTK0Z56fILlZ1qzQa6nhZKdgAYr8=
X-Google-Smtp-Source: AGHT+IG9tC1WaMP/xC1ABIbEOt50ns/8+sJ1nYsKd4Gr0OatbIpLJiaEKJdeufsJkmLrEp7EYv+TbQ==
X-Received: by 2002:a05:6a00:928b:b0:736:5dc6:a14b with SMTP id d2e1a72fcca58-736aaa1ace3mr21470128b3a.13.1741618411393;
        Mon, 10 Mar 2025 07:53:31 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-736d11d4600sm2890275b3a.116.2025.03.10.07.53.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 07:53:31 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Mon, 10 Mar 2025 07:52:46 -0700
Subject: [PATCH v11 24/27] riscv: create a config for shadow stack and
 landing pad instr support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250310-v5_user_cfi_series-v11-24-86b36cbfb910@rivosinc.com>
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
index 7612c52e9b1e..0a2e50f056e8 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -250,6 +250,26 @@ config ARCH_HAS_BROKEN_DWARF5
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
2.34.1


