Return-Path: <devicetree+bounces-157694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 14085A61EAC
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 22:42:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DB0AD1896259
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 21:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 814F120AF83;
	Fri, 14 Mar 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="YiIpxgzH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FC62080CE
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 21:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741988393; cv=none; b=rDJs9Kng9h76FdVp9ZcfZqCS2Y3ZAm+Ln8PTHZ43FfCp3eKGK1moGEbarNmcCRU42w4s/QSKwnDXJ+Q4Og331BGtG4pYyC6N/RDJimVf+9xn9X0et8ruynnzQF6CLcKp60gu4z4z8yx6jYdF7fqzRWfCR6Y4Lmzq2ig5/MCGVSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741988393; c=relaxed/simple;
	bh=7zfZLJ7M+OWrE8KdRCq6y8BDi4FBVzklOgBAPWj0EFo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gMnd3N5Kk3Dew7ivCGikw1ETDODcGJiJ16W4P5euvha4n9tLTYsojonHcpIdpEhWplQhNroUhpmtd1y1F89P6oArJMsTLjdFYJQdMw9Kl4wjAsNNNE8WxEIFVNjKiBL6xI/oOQEjwSb1SmXA8yp+AX1jaoKL0hj8U8GD7vkDtmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=YiIpxgzH; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2232aead377so57922205ad.0
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 14:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1741988390; x=1742593190; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0XcHZdxwrXOxfjvym0f4ldwiX/cDoifADRl7Uwkj6t8=;
        b=YiIpxgzHWrddDU0fM95rJJoaG8rMVye8XwTyr7omjfn+ZXGm4Z4mnbpuSy78fVXVSf
         C8tuyp/+YRzYF9DUfmmeIhzGixZ3qEzYAvk21Ws9s0BG8P6yh+pcWn4/LNjUzScys6Qq
         54BI3znm6I9PK+Oom1NCn4H3sQlFjCv8te/Xy26h/Hu4XSw13I/YbL0RL/gDR8QPAag7
         l6i78Oh8WJOtsGYoJNeW7yXDtruFCjI/7X7FlhwwoHIBeukGUm9I9X/ZC0WBejj4hq+f
         VoSdeGVrCh4LdI5jMq7P7BcmiPV7bcl1zCo77okDRpawPOZ688k/4xrtYopi83bzBl5D
         eXmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741988390; x=1742593190;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0XcHZdxwrXOxfjvym0f4ldwiX/cDoifADRl7Uwkj6t8=;
        b=oWHbvepEUhklPFYNPikYDfgwcMjf8IOML2BwueHHlBYjj31cSgOu0z9SIKMeSE8tYH
         JN6rBSHc4yuZAZV4wEIxB29RfU3PCIh1e4KbN0JvUenApZaB4DI8uNSSbgNlos18jgIa
         KBu9VQvXejXDWmLNgAVHMeEGe9ahtT7lAr0EzfFIKRarvQebczeU7Fty/mGKz7QmqhNK
         vB0Er1DcLprP3ZE0ZrvsfokNrN9j7cxD8RUO3uoqli26Ux9epa2bQAduTk/0fATU5RZH
         uqs8dQ9eUf1CpKGLCZp1lWgbzCl+rjsCeS9FavbjUvkfinH+nOtFAdp1Noh/4NCrannr
         DaNA==
X-Forwarded-Encrypted: i=1; AJvYcCVwWVtLMhilpXog3oyTNDzJnZJX9FJt6PFNbuRmynOE7T+dmrr27VxTWjeOW4ajsbVOAGSw36yxCe8k@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5/qwg+D7x7bnEq8ZAtAJFf2+WtGJAYpujSUKXqk9Ce8DLO35P
	sSMtE62dRt2Dm+Z+PjSDoYWO/jjKm3bVBJxiRzesMa4QTrRg82HxxUvj4avg2WA=
X-Gm-Gg: ASbGnctIYOpdW7oDrLa2ZFrUKhgtxHv7nMu5eEPAnRMNirpUt9WcG04hezz3sHroWuf
	2F1qo+egu1SQzgP3wHq6BJNqWy4httxJV0eDo+9OEQ4Xyq37pPo0XrSVwkvRHOF5Z66pVvLhgCd
	7ywzUFN4Uec4oSnKPvhjX71M757BA/1r2QzOJxq2sN2tR2O1NRxcFbIJq4PL9RmXzkYCFSGtayO
	bfrKrgLLzdnZsx3YCpIhREk3W0jNrme/1Hxc76TFoEI/L2oJP7fGPzBT15SZxJVsN5ZHpVx1wXo
	EBn4WLj3c78WPHKYmINFx7TjJwHHHJ2O4KrA06F3ksGddX+ErdsGv7A=
X-Google-Smtp-Source: AGHT+IFpAfWeI9aPllc1CwqYl/66ArnIXE3uKAZ+LvLNawWnKsDtpPp8xhAGnGFewoMM9kaYyptgHA==
X-Received: by 2002:a17:903:2b0f:b0:220:e655:d77 with SMTP id d9443c01a7336-225e0aee8bemr51023205ad.36.1741988390643;
        Fri, 14 Mar 2025 14:39:50 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c68a6e09sm33368855ad.55.2025.03.14.14.39.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 14:39:50 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Fri, 14 Mar 2025 14:39:28 -0700
Subject: [PATCH v12 09/28] riscv mmu: write protect and shadow stack
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250314-v5_user_cfi_series-v12-9-e51202b53138@rivosinc.com>
References: <20250314-v5_user_cfi_series-v12-0-e51202b53138@rivosinc.com>
In-Reply-To: <20250314-v5_user_cfi_series-v12-0-e51202b53138@rivosinc.com>
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
 rick.p.edgecombe@intel.com, Zong Li <zong.li@sifive.com>, 
 Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.14.0

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
index ccd2fa34afb8..54707686f042 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -411,7 +411,7 @@ static inline int pte_devmap(pte_t pte)
 
 static inline pte_t pte_wrprotect(pte_t pte)
 {
-	return __pte(pte_val(pte) & ~(_PAGE_WRITE));
+	return __pte((pte_val(pte) & ~(_PAGE_WRITE)) | (_PAGE_READ));
 }
 
 /* static inline pte_t pte_mkread(pte_t pte) */
@@ -612,7 +612,15 @@ static inline pte_t ptep_get_and_clear(struct mm_struct *mm,
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
2.34.1


