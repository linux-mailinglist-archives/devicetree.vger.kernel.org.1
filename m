Return-Path: <devicetree+bounces-201163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 663E7B17991
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 01:22:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BEF05A67B2
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 23:22:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D611C2857E6;
	Thu, 31 Jul 2025 23:19:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="3VJh4WLB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590D62853F8
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 23:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754003985; cv=none; b=K2PhDE78ro/iTNfzTT0oKjTaKRzn0x5DPfBEj16Mo7Fpx1ra3KdD/rgnYLeZ2s4//v7hSkLavHVe0LQKx5pVWTqFhRM/MXyUENFeMOVuyjR1JmItcOtHbM5Pc+kQUQQQNnr1wyBwNV35pE/M/FtFbaE4s9nv5DTsZ9JuCof9coo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754003985; c=relaxed/simple;
	bh=81XzqmtIK3R70Ndhoy+hkyCDJLiPRMLBjcUZcF1lYxA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ktU6TOW/KrJ0laW3aVbehL+sC8XtByP2pZunmy8rQH3p1wXFUgulYbKye+9milR0rMSaNKevgSS1UX7QAwmlxFX/7Gl1q9HX7+O3tmkBJXk5XrW4eAMvHraLrxxL2eL5c2eqZ87zDZP+xmII4nV9S12RaBTn/6zg6Zgh7qTgqgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=3VJh4WLB; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-31f3fe66ebaso2184722a91.0
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 16:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1754003982; x=1754608782; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k6HnUvt7E9ZR93PM/Gyja5rS+Mx2C6I8XGI70UUGCh4=;
        b=3VJh4WLBWk9sBV9lFBG/wnF8MJ2jJbwPaeW1zgZONcdZM6LRFqdz3f/lxkLSCqkkJW
         vO1g1d5XjFriJED7M/iBidoUcTOBR/gckMa0ra2xwpcVSAUNaSlSTeLZ+7rqdCcZ69uV
         +VIIGFtV9PMPgJR+i2Lge2AbAFVLRfzf5fLuaAcHYPti8vdUyZT7S5U0sDPKbMkVeiHL
         ShGzMnqfq1B60nSwQAl7EzMVJ4Hds1hmzIrFhJ6wa3weBhMFg3ws03NkpO7CgF2kXP1B
         D8rrNB7Z/wcDQWLqFf7ZFgjfbOVaKJJ1uoZh9Q7gm8AUbMTOtNHFo9glOvnxN4iYSUmP
         16xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754003982; x=1754608782;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k6HnUvt7E9ZR93PM/Gyja5rS+Mx2C6I8XGI70UUGCh4=;
        b=b8IiL100dkAx7U8TbLEuHZyvqg1sFevzBIfsdIB/Fqh7JeunM3oqWJR3lVPAklNP9b
         Vz72Pi1wWHAWAqRj/L7hVTguRpK33UPgfnwxKuQDdCdbvFXlL5ZARhm8rWbIrzcqL+uE
         NybTrRKge8UHSvB+HVJF8/Y9p9xhRqIvTkp8OslRGD4S+TkMxNObrHfaCeiqxLGyDPPI
         KyJqbY9fSO1rs+fjpwTGd4s44xFFmHvR5P6I3dsZiDxEsCyNlP5EUe8rBNsj3OT/nVGS
         8uHoBv6QI6IEqdAsR2lv9k+6E6W/dQy7GwnegUZSLWjUG9wiJRA77tDurLM599BFsADL
         5jhw==
X-Forwarded-Encrypted: i=1; AJvYcCXWrIjILms0rOf29cPJi/U/qOvZovIrA+hRmfQzhB5Hnl8ocDpUmp4UW1gDXf+EL/2SZxNK33ZTssUz@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6oa1HnUCN14fQhLYmJRN5ifwEjpiwWzqYV2z3BIkWv0xnRggb
	38XvzglYAA/pHAY9jSIUBhO8R07lFkeDXnX+X4cL+e2d738XwFCUSwuKJagMYxxtRSA=
X-Gm-Gg: ASbGncsuNirhpiMQETEnYnt6vFU5s1Y9901NfKQBejXv6ublkZsvPp4vi/lpn3uflfa
	AUTqKNd6lmh8je/oJhAp7pRCen94iXu2MdHRmgm14mbQwUBaoPr84m1IB/zRL5jBmIRNM9kyxWA
	MI8+qtWtwRuuMFacPI+dokTPrIHInQ8hwR7IhKCnSwSvpIzY5zAe0uEMMIRNU7GrgNK+JceH/zW
	BjBnT2dW0kLBrQxCEsZ5XEdD/Z/A7m4jG4iY7HCCxQ2kKc/8KG2+uAHBjZrlkVEkhigJdLX5psO
	f+4DXQJ+XvG7gdq+l7VI6jVXZrYHy2gGAMfoaRrdJ+xeITtKUQowMvc/3yDVkyRKjW/jfbKyuZM
	iO2vg3Dj21k+SHIHDBvZKpQ1CbDj0+Feo
X-Google-Smtp-Source: AGHT+IFK5NdFXAB7IoKpdbqOrLQWep91KhtVBkahQPqZIs3AVxChdKclTwDK0V60c+zsRWOqPN/wCA==
X-Received: by 2002:a17:90b:17c1:b0:31e:a3e9:fda5 with SMTP id 98e67ed59e1d1-320da626cf1mr5388757a91.17.1754003982599;
        Thu, 31 Jul 2025 16:19:42 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31f63da8fcfsm5773085a91.7.2025.07.31.16.19.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Jul 2025 16:19:42 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Thu, 31 Jul 2025 16:19:18 -0700
Subject: [PATCH v19 08/27] riscv/mm: teach pte_mkwrite to manufacture
 shadow stack PTEs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250731-v5_user_cfi_series-v19-8-09b468d7beab@rivosinc.com>
References: <20250731-v5_user_cfi_series-v19-0-09b468d7beab@rivosinc.com>
In-Reply-To: <20250731-v5_user_cfi_series-v19-0-09b468d7beab@rivosinc.com>
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

pte_mkwrite creates PTEs with WRITE encodings for underlying arch.
Underlying arch can have two types of writeable mappings. One that can be
written using regular store instructions. Another one that can only be
written using specialized store instructions (like shadow stack stores).
pte_mkwrite can select write PTE encoding based on VMA range (i.e.
VM_SHADOW_STACK)

Reviewed-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Reviewed-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/include/asm/pgtable.h |  7 +++++++
 arch/riscv/mm/pgtable.c          | 16 ++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 792cb9792e8f..2b14c4c08607 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -426,6 +426,10 @@ static inline pte_t pte_wrprotect(pte_t pte)
 
 /* static inline pte_t pte_mkread(pte_t pte) */
 
+struct vm_area_struct;
+pte_t pte_mkwrite(pte_t pte, struct vm_area_struct *vma);
+#define pte_mkwrite pte_mkwrite
+
 static inline pte_t pte_mkwrite_novma(pte_t pte)
 {
 	return __pte(pte_val(pte) | _PAGE_WRITE);
@@ -776,6 +780,9 @@ static inline pmd_t pmd_mkyoung(pmd_t pmd)
 	return pte_pmd(pte_mkyoung(pmd_pte(pmd)));
 }
 
+pmd_t pmd_mkwrite(pmd_t pmd, struct vm_area_struct *vma);
+#define pmd_mkwrite pmd_mkwrite
+
 static inline pmd_t pmd_mkwrite_novma(pmd_t pmd)
 {
 	return pte_pmd(pte_mkwrite_novma(pmd_pte(pmd)));
diff --git a/arch/riscv/mm/pgtable.c b/arch/riscv/mm/pgtable.c
index 8b6c0a112a8d..17a4bd05a02f 100644
--- a/arch/riscv/mm/pgtable.c
+++ b/arch/riscv/mm/pgtable.c
@@ -165,3 +165,19 @@ pud_t pudp_invalidate(struct vm_area_struct *vma, unsigned long address,
 	return old;
 }
 #endif /* CONFIG_TRANSPARENT_HUGEPAGE */
+
+pte_t pte_mkwrite(pte_t pte, struct vm_area_struct *vma)
+{
+	if (vma->vm_flags & VM_SHADOW_STACK)
+		return pte_mkwrite_shstk(pte);
+
+	return pte_mkwrite_novma(pte);
+}
+
+pmd_t pmd_mkwrite(pmd_t pmd, struct vm_area_struct *vma)
+{
+	if (vma->vm_flags & VM_SHADOW_STACK)
+		return pmd_mkwrite_shstk(pmd);
+
+	return pmd_mkwrite_novma(pmd);
+}

-- 
2.43.0


