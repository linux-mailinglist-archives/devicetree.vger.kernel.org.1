Return-Path: <devicetree+bounces-229079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC33BF38F8
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 22:57:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D29CD4FD6E1
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 20:57:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B82C533858E;
	Mon, 20 Oct 2025 20:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b="FFvBtEYG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150E4336EE0
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 20:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760993638; cv=none; b=KKn5L60qKdbLMcHVNIgFA4bHT4d5k21T+QwdAmi0lUJSEHSTti5AffmGzpJ6h6trCSa6x5/BTTUC9ghIHbPfMjKTFaL4480zXzsThWrKXnVcdvQga3hOdzlBjRIZmTaY+ewkk67qh/dIEHeieISe1uBE/Dwu2nhklN0mcnk4Z+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760993638; c=relaxed/simple;
	bh=zG1PvbsubgVB7UstpLjRtN915FxsRLFbcnYegAn0YwA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=k5cZGdkhd9hOGawhtNRvaqyyjL9eItQKYcBlR5/H5su9fQuXRMZi22HCoRYUPvweTrTKqHiTid2gh86gFcIFH4CPGPUVsSoZmuQa2dvf1986h4idAi8cEzS+n+cpGcPAgDlLW1SKChjXMBEIcS4eEgI/5wj2K+ap9MJUbL4wOHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b=FFvBtEYG; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-7a226a0798cso2836534b3a.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 13:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc.com; s=google; t=1760993634; x=1761598434; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f9H2LPWU9+l2k2EeL07qQml9rdpRAXigNCc3vd68LC0=;
        b=FFvBtEYGIgsi6pmutftGfXsANjWJPM2JL2cdoah5lrxtP/Pv2cVGr77Ru/hfszPI+C
         e6OGmvo1gWF4jsJ/UDvPs5lDN2Yx9zXMqJ3ipw1IH0n30jnsU4TCUBlyNa2Ut6xbCB6x
         dqrGVN3TSN9wJfV8Vpk75irDizMWMUjto4poUDEtBNiU5SU6qQT9Cpa6QcWWdTW134Sp
         F8OxaOhoWMAG0ikd2jh+Ugbi4NONg3iZxMkMbee0d4JwQKakD4XzoLhwEceE11ABIljS
         DK6tFYxF1ZmQEIt8GgVulrucH5fwrJi4p81UDrOGFmJiJ3ggMqvEhMCwjyZYHN9s5op5
         iCLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760993634; x=1761598434;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f9H2LPWU9+l2k2EeL07qQml9rdpRAXigNCc3vd68LC0=;
        b=JSVG5/tPQ6E6q54V/jcs7Yb1VIShzWUsLTSt9DA9Un1QN6yrwRlqEnlX4UZu37nzIX
         91eO8xp1KrYA+I0iWKt0JqaMU/qHzsntI9DsZHdI5KJGA1IRWAuwucgz21T4dOEuWGAp
         h2ybUxnK88RAYtRGfgxUl8GZa+vXgALnG7Ra7vk7CfndMy58hrBViL+6CCnATkOMCoK7
         CUEhH5HkghALN/SwpSrfLRKaaBUhXtNSGtgR+JF1loX00gpumHJlz2y77dC95HSfjxIx
         CnljVLVz2PsXHD9glML/9lPja/Z4efR+k4rwGicZtwocU5y8ENqGz0jL6iTMzprTva9h
         Wz+g==
X-Forwarded-Encrypted: i=1; AJvYcCUFLty57LAHKbujoAmqWutm1idFSnmPtkHUmlVZ8/Ol6wx2JSShdKZtnx0e5CP3pPvh9y9hci8txOUs@vger.kernel.org
X-Gm-Message-State: AOJu0Yzt9DUXaSqT+qEp66ujPYW8zJSwkHwVVJZqmLCYic7Pci+a+QBu
	xeBrmwwKZrHyk5ksfHk5xxEMKq7vizG69q0jHgtoULUSD+hCOTXY3A2pGXhKdT8NRFE=
X-Gm-Gg: ASbGncshC+0qELhw/L68N0Jo7j5rSjljBHtg6K6uE1/H9kch4ozr0xSKSZA/LIGV/vG
	IhDO3YV61ZHcKgU4uX1WIaj0GC8u10mg5IaCSzmC0alGNYKjPJ8VoeUzlra5ziB5w+2CKMewwqn
	EqoBBiw+QFvLNdewJliONQRHxuhZE04uW65afynlYDz1noHVXUeHNTcmoFlB8iR15qg5y8plDIM
	Rm1zArW0TyS9NbS/77YcFJg0W6EKDnNtPq2hHdk3tr8LwJDoYY4zbAjbYmLWFs9isxhzIXsgA6o
	sEPfusyHuHr84EA0lUK5Dj19jJGX/Jr+9gy6RRedsvgRbhrkNQOf7pOUJa8BBM/U8ZyxMAUA4go
	IJ5l0fyHr9TYjbD5eTHcidWsl+5mT+5IJHyenW5ZdLoYYYUQNPIOF70gfcH0AKdhk75vVM9XiOJ
	Mp7NKlZsXr686xs0GAIgKF
X-Google-Smtp-Source: AGHT+IGY4EyF47I5kfM9sLiEWB0A4XrZi6suavhQ3DELNJWCbB/8MtVPQAocTammVkTvv5k+HEaGCA==
X-Received: by 2002:a05:6a20:2443:b0:303:8207:eb51 with SMTP id adf61e73a8af0-334a864aaf2mr20366099637.55.1760993634353;
        Mon, 20 Oct 2025 13:53:54 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a22ff1591dsm9453867b3a.7.2025.10.20.13.53.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 13:53:53 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Mon, 20 Oct 2025 13:53:38 -0700
Subject: [PATCH v22 09/28] riscv/mm: write protect and shadow stack
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251020-v5_user_cfi_series-v22-9-9ae5510d1c6f@rivosinc.com>
References: <20251020-v5_user_cfi_series-v22-0-9ae5510d1c6f@rivosinc.com>
In-Reply-To: <20251020-v5_user_cfi_series-v22-0-9ae5510d1c6f@rivosinc.com>
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
2.43.0


