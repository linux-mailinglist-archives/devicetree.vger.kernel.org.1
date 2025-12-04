Return-Path: <devicetree+bounces-244465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F127CA53DE
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 21:13:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F4753175503
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 20:12:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 531D834BA5A;
	Thu,  4 Dec 2025 20:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b="M9M46Yg7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F0F34B676
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 20:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764878664; cv=none; b=B4ynBFRFcP1160mZaXticsx8yA2fvriDEquHD+PGp7QEb/O0dLPg+8op5HjVCHIXh0whWaWn8Ia1RDijQIPYCRj3Xlf3UGHsZS+xS32DKX+kBsrpNs5575RSAQZUD84ql9qCNs8VoxeymLb7lHfr9pvnTaC/+JYjlkDzs+ToHCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764878664; c=relaxed/simple;
	bh=DJZ2aJIoeyTvFOiDWAJGj4EuG7hZunP7odYpwBb+3MA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CCzUfNmFNev6pCNblxZcN+9Xc/PbFKBN8R9MW/1hod5zVoUaNp2BAxRcYJPvBr0FXOBTtbaQV1ItFVrDOt56aPbANSJkDX2+PDJQhmnnQewCQJodOa+5MCToA5SftNgvErScmkqXaYqHz3dXYpoGQj6NDoQf3v8pXo0gdZQMb34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b=M9M46Yg7; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2953e415b27so15403065ad.2
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 12:04:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc.com; s=google; t=1764878657; x=1765483457; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BhzOXQIeKPGphLxrrOEUt0Oa58R/DXqd+aRrNPmfj+E=;
        b=M9M46Yg7dqCFRbT/CsSjyAedvInlMXiwV3ScungFVtySwoPDka5xuAgtAyhTtZIosi
         Zl6XUSigSQu1ATv0AcQUiO5PqlM/ZTSdI1HnLfF8PaLOTZSlKKu22kLv0kpLkuSZ4X0T
         d6YKAZr1/ObWxdF59Y2hvCG98mIzcVPwTIpSgOzXL83g8NXv8DdNk+zB6zsPYoXsItMg
         hUcsKSfGhOL660HHLRrDfD6RXmx68LQ+VPyUB4Sj8/Qm2qNZBJYKMpUg0Ysh8Xm4dWqO
         EYFXB1JTqHaYM5rVM1H5FzL3pm6YdFW9eCyAyTIUrQ/qYMU+tEGjps5QPlNF0aa6njIi
         K1lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764878657; x=1765483457;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BhzOXQIeKPGphLxrrOEUt0Oa58R/DXqd+aRrNPmfj+E=;
        b=g2ZPXcet5/CNYflLXIEErx/ELdcNNbTsfMnEjJK8KPawwUgMgyVECa43RXhQm5IzO8
         divxUnmcpXtwIPUAFFAGm77irgGAB+x7Wb0Y7b6K5O9F8dRXGEcEl06f7crS6BYUsUv0
         WJ+zp0fae9QdyGU94sh8HCcN4PcI9JxjNPe8V4D95JUQ6rBO6xURouOsH2HXGdR9jqWF
         4w1oeEFo6+IM4u19OARwaMoN7rzQhL/pMRY1fnvPULnjno64lgM0K+N6VnAeqYdGoMR5
         mBI4tWW30R84DFbqKGIHZvNI55+giChUTLnU4KwfkLe/s6nOe3h3IsADgiiSVh22Liuh
         XpXA==
X-Forwarded-Encrypted: i=1; AJvYcCXB2GwEE47PmHFFyyAesNMJGrWprxKEnGANFSno8Y+jaRPbLLNi/V/0UC5BM/Z4NIdhE1lK23o03z+U@vger.kernel.org
X-Gm-Message-State: AOJu0YzA7DrhnBBnCAfuua63FA69cBMEmkqC8M4j9ah8JZQv1LfM2EQK
	dqNMwkB1LyAKBmjcwt/kgqovx8mLmFHfQ0B6XYARnl9iflhOQrdW90ptNVUDK/ACX0M9Zq7KpZT
	UgeYm
X-Gm-Gg: ASbGnctkItL6K2aAqbZUx4a+4SBm0y9z49dLbxt9OoEdJ8z/x9QV0rmH60nkmjkH51e
	TEi6tQzgQ9HBMz9VKrgOHYmawQlSUTDRunj5C+PpEI9mepXOf0vIuAAc26OwWhpJUf/H8shHgWk
	FYJ+Mqr0h5eyO4Q8iEBM7A4GKmq1F4C4umwi9di9HBdSCc58C7xvt3BwElCbFLSFu9Xax4Nte03
	PeVe/aiY3p9OIOQY9W6ZdHTmmsEryz/gU5VK9sHM5NDLPko13syp9ivkYPxryGQCFhhlfkxR8HN
	Wc+bGrDvi0YZ2fLEbhFQBLDWqA0dQ0kt6dg9GH81EoNX13SM8FaQDJ0K2I7pT2kJOr/pRU5RKF8
	6AvzG7HIFPkJuuygVHfPLyR7A0gruWgkpch2NFU3Y9V6SWcL733MpqqEztGDdv6um15o3OYprSP
	R32hewBSnImPP4p+I7zTtc
X-Google-Smtp-Source: AGHT+IGFh0sV8K3YM30SGR/TeRRCbuWQKSsLII8uaKG0pjWDWdO9phApXXsMABddoI0pDrEfs2joRg==
X-Received: by 2002:a05:7022:608e:b0:11b:c1ab:bdd4 with SMTP id a92af1059eb24-11df64af432mr3149166c88.38.1764878656793;
        Thu, 04 Dec 2025 12:04:16 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11df76e2eefsm10417454c88.6.2025.12.04.12.04.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 12:04:16 -0800 (PST)
From: Deepak Gupta <debug@rivosinc.com>
Date: Thu, 04 Dec 2025 12:03:58 -0800
Subject: [PATCH v24 09/28] riscv/mm: write protect and shadow stack
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251204-v5_user_cfi_series-v24-9-ada7a3ba14dc@rivosinc.com>
References: <20251204-v5_user_cfi_series-v24-0-ada7a3ba14dc@rivosinc.com>
In-Reply-To: <20251204-v5_user_cfi_series-v24-0-ada7a3ba14dc@rivosinc.com>
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
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
 Trevor Gross <tmgross@umich.edu>, Benno Lossin <lossin@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-mm@kvack.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 alistair.francis@wdc.com, richard.henderson@linaro.org, jim.shu@sifive.com, 
 andybnac@gmail.com, kito.cheng@sifive.com, charlie@rivosinc.com, 
 atishp@rivosinc.com, evan@rivosinc.com, cleger@rivosinc.com, 
 alexghiti@rivosinc.com, samitolvanen@google.com, broonie@kernel.org, 
 rick.p.edgecombe@intel.com, rust-for-linux@vger.kernel.org, 
 Zong Li <zong.li@sifive.com>, 
 Andreas Korb <andreas.korb@aisec.fraunhofer.de>, 
 Valentin Haudiquet <valentin.haudiquet@canonical.com>, 
 Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764878635; l=2600;
 i=debug@rivosinc.com; s=20251023; h=from:subject:message-id;
 bh=DJZ2aJIoeyTvFOiDWAJGj4EuG7hZunP7odYpwBb+3MA=;
 b=V44PsHIMigORyGMx65St1otJQpXcs/c8txcdP6sR8t3hFePxiBSJJTUudJDieXaQDuwFWIgx0
 Fsn4n/4NJ/rDp/0y8KXbf/bVJBdFeXiZH1dd2WqsJ6zjcjREaYj7YBZ
X-Developer-Key: i=debug@rivosinc.com; a=ed25519;
 pk=O37GQv1thBhZToXyQKdecPDhtWVbEDRQ0RIndijvpjk=

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
Tested-by: Andreas Korb <andreas.korb@aisec.fraunhofer.de>
Tested-by: Valentin Haudiquet <valentin.haudiquet@canonical.com>
Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/include/asm/pgtable.h | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index b03e8f85221f..df4a04b64944 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -415,7 +415,7 @@ static inline int pte_special(pte_t pte)
 
 static inline pte_t pte_wrprotect(pte_t pte)
 {
-	return __pte(pte_val(pte) & ~(_PAGE_WRITE));
+	return __pte((pte_val(pte) & ~(_PAGE_WRITE)) | (_PAGE_READ));
 }
 
 /* static inline pte_t pte_mkread(pte_t pte) */
@@ -611,7 +611,15 @@ static inline pte_t ptep_get_and_clear(struct mm_struct *mm,
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
2.45.0


