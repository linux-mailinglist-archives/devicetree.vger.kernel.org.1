Return-Path: <devicetree+bounces-172135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C90A0AA3F05
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 02:33:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 227FA1890D93
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 00:30:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 344E0256C99;
	Wed, 30 Apr 2025 00:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="L22v4ol8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBE02561DA
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 00:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745972217; cv=none; b=Wc1TLLPZQzX83gDvm3gIgEtT5d/OYc6DUQU652fGyqiTuXQtvX+Kgof9sqWPSQ15n1sU8t/egq/xnLBiOgJjTOefgRbbpfta2E2lHuyy8ZFp7Tmd9JduCvIAeiR2U1TjFeAr8pRqhQje8y6MzmiHmbxkPkeBjYwtQOczIiHVHA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745972217; c=relaxed/simple;
	bh=6epe1IklbdE30nYdZrV0ZHwki5ITawyBnbVBknH019E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bXkN5wkVFQ0aiOyJWPQWN+JyhuT6PodotEw2yVWevXV9LiI1G7AV6QP8IawFQa7T634ibLHgTxntpZKm7H6kMDkVtqaecW71X/T2zGZidgMk4ezXQMj3z5HxJxgVZoH3lLYKJrKMxj4ofTvXhngbbk/sLDh2w/MrfTEern3Jz4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=L22v4ol8; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2243803b776so111468705ad.0
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 17:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1745972214; x=1746577014; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DsODLDfRcPuDSErfbs+tzfaJx/MFrIF5cCrvvQql1Yk=;
        b=L22v4ol8y8KR7CzqC463COkzA8qSb4dl9YBn/Ju48YLVisEsN4Wk8NzMdYkiQH9wHM
         Z3lcFxqN6MUHZPc/cvJgI/a/xAbbJqN6oDl2Nq3FR05E/WbSbczHAFcYRhifIQa2u5ii
         NXtLfSkO5ocEwxI8ZciO+kb6otd++pV/hax+sCmk690uyCTvoUaXj26L2bjp4kuVemCh
         1pdHrSdtblvTVgL2Ij84crtTV3vmuM3Lv0iRiGJfIPBnSNCGzJU4e8B30tf+hUC/+Vbm
         JadZWuirlsBfKoP+wV6bSp0eihzJD0UTCh76ECgDxmD74TUKgz0KFT4JVLccE6TNg3go
         w2dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745972214; x=1746577014;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DsODLDfRcPuDSErfbs+tzfaJx/MFrIF5cCrvvQql1Yk=;
        b=qwHWxCd1TLyF2fRWUJInckSbGMPhrhoH5Sl/hHHVmhMbqAPH60HQjdLPRlJrObfU/k
         A6NLuuyLfVH8SRJlz80DOVpfr1emteRHDVn8qnb5dljUfYc9WPUYFcQS9WkBgNRROAdG
         QzvgRfjhdn9RLSsDfHUbmUuZbKMVyxZ2mjw/8fxWEP1lNUMWEKtWdGByD/fiaP9XYJ7D
         BlhYFhGKIyqQ1rZSyeK/j1XTlyI19TZvARr8IGghY/7cgqMB9i+Y19ykJ1aC2qEjCvwn
         HM7qLMvGPf4t/r+d5a7L0MB2z2rd70fuXernc362lyWDzDdN+cuOZBGguOJcVTZPZH3u
         LKMA==
X-Forwarded-Encrypted: i=1; AJvYcCXBnFMEpxl2TmGqQceauoZArT8mdrA6y8qPnRismVVyRX+KCspGu2haQANn3jtxHR2qt5j5YZa6DVcS@vger.kernel.org
X-Gm-Message-State: AOJu0Yxres6lse0NGRXJSVv9lPgDYJsNBAGlKGfTYWRq042wd90sFxfm
	EbGa5/Q5sMy9Q6ozY3FbtXkudBRlvM2fR3+Ll1hsMNXo//+9leFQnw7nhOei26w=
X-Gm-Gg: ASbGncuWneIOW78REIOLOo0NxSQPgn9v1brjUqrK5P/AndWdt+jzlDNhxrr+/GvPPXy
	J4IEEYDzlEdd+m3VGi2QCTcySF5fj+6eaKJGmo/dcrvW8EuXUrGXhlm/uA+gvc/MXOj9jeaZ5iV
	/CIigt5C5wIf9xEfyzNmEdLZzDnrSorsHFOxv7WAthMzdH5Yawu5MljRB2GjuIHmgVHqjunIWjI
	bPN3hCSZcfvqSB0MBQlNAdngsoYmzMY7++QFRT97uhOsaIVk5roaGm/0zygaFvt2yGPAU1muAPP
	/4zQtUq7PK47ojvGQiUtTpSdRMvhkzYvkjcEMRbWylgzPyJfuDA=
X-Google-Smtp-Source: AGHT+IFJTmgyX5+R2cHG56gTAhOoSWDR7FtiznejYy+qmKOCH5eDKH+EG+01nS/OcUb7Pgf8hhzsSQ==
X-Received: by 2002:a17:902:fc47:b0:21f:dbb:20a6 with SMTP id d9443c01a7336-22df35a39b4mr20572645ad.33.1745972214477;
        Tue, 29 Apr 2025 17:16:54 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db4d770d6sm109386035ad.17.2025.04.29.17.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 17:16:54 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Tue, 29 Apr 2025 17:16:26 -0700
Subject: [PATCH v14 09/27] riscv mmu: write protect and shadow stack
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250429-v5_user_cfi_series-v14-9-5239410d012a@rivosinc.com>
References: <20250429-v5_user_cfi_series-v14-0-5239410d012a@rivosinc.com>
In-Reply-To: <20250429-v5_user_cfi_series-v14-0-5239410d012a@rivosinc.com>
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

`fork` implements copy on write (COW) by making pages readonly in child
and parent both.

ptep_set_wrprotect and pte_wrprotect clears _PAGE_WRITE in PTE.
Assumption is that page is readable and on fault copy on write happens.

To implement COW on shadow stack pages, clearing up W bit makes them XWR =
000. This will result in wrong PTE setting which says no perms but V=1 and
PFN field pointing to final page. Instead desired behavior is to turn it
into a readable page, take an access (load/store) fault on sspush/sspop
(shadow stack) and then perform COW on such pages. This way regular reads
would still be allowed and not lead to COW maintaining current behavior
of COW on non-shadow stack but writeable memory.

On the other hand it doesn't interfere with existing COW for read-write
memory. Assumption is always that _PAGE_READ must have been set and thus
setting _PAGE_READ is harmless.

Reviewed-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Reviewed-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/include/asm/pgtable.h | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 60d4821627d2..4e3431ccf634 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -423,7 +423,7 @@ static inline int pte_devmap(pte_t pte)
 
 static inline pte_t pte_wrprotect(pte_t pte)
 {
-	return __pte(pte_val(pte) & ~(_PAGE_WRITE));
+	return __pte((pte_val(pte) & ~(_PAGE_WRITE)) | (_PAGE_READ));
 }
 
 /* static inline pte_t pte_mkread(pte_t pte) */
@@ -624,7 +624,15 @@ static inline pte_t ptep_get_and_clear(struct mm_struct *mm,
 static inline void ptep_set_wrprotect(struct mm_struct *mm,
 				      unsigned long address, pte_t *ptep)
 {
-	atomic_long_and(~(unsigned long)_PAGE_WRITE, (atomic_long_t *)ptep);
+	pte_t read_pte = READ_ONCE(*ptep);
+	/*
+	 * ptep_set_wrprotect can be called for shadow stack ranges too.
+	 * shadow stack memory is XWR = 010 and thus clearing _PAGE_WRITE will lead to
+	 * encoding 000b which is wrong encoding with V = 1. This should lead to page fault
+	 * but we dont want this wrong configuration to be set in page tables.
+	 */
+	atomic_long_set((atomic_long_t *)ptep,
+			((pte_val(read_pte) & ~(unsigned long)_PAGE_WRITE) | _PAGE_READ));
 }
 
 #define __HAVE_ARCH_PTEP_CLEAR_YOUNG_FLUSH

-- 
2.43.0


