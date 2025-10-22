Return-Path: <devicetree+bounces-229998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0B8BFE8D9
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 01:32:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 80B791A04805
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 23:32:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 382D130505E;
	Wed, 22 Oct 2025 23:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b="F96YopPf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF9130C37B
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 23:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761175800; cv=none; b=ciSlPY76ROAkAPu2M7gt5IWtg8+7djRDDFZi85T8wTks0sKBEw6AIY52dI7SdN05lUm4/uQ5gs6FvxYt0G5flp6X2useVh2ege0JWs11uNnwbf3IPC4fng1MNAfuL+SCGTZtwnknJh7RF7zQMBdGq2JjgcqxPSGPdhKIrKgx0C4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761175800; c=relaxed/simple;
	bh=hYnrlxG2aSy5XgBcW07Fd+5qY0pd1xI872KUOKzj6JI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XFoPZTL/6vtLRBE570dAaujz86M/YjdnQHbHJ5dOvkghyCblk2N2hDmt1Th8ObXkxgdkLNTLmcAWVfNH3L3lYlrRdUmfPP/J1Sg3tKJM20c2pZc1sf7m5Ls6xZlLO18eTsl4PJEQmmCt8GPhN3wNRIKq/dp0+guxibKPVDSE/Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b=F96YopPf; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-7a26b04bfc8so213997b3a.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc.com; s=google; t=1761175795; x=1761780595; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aU5JHaPOPUGgukhD3bad891ElerIE5ocm+VeTPJz1C8=;
        b=F96YopPfnyI5qIm5U5k4h/r+ABsuT5800lgjUUtKEFDH6w2uM2t8T/8Iv+Sp+PIXPI
         GPM12XlrqM15lOihlDnXNL+WIxe+uga9oKGNtmwPx/jkucsN7StbbJdbUCfI1lPlQoRT
         ckeWhbK3WaqwbdB+Rx8I9Y11bbMv8DYIz2n4M15Vu639U0lCadht9kNIaoRtuHYQbOiS
         Cu+6xdVdEhc4VAYNM5ngDS5lHXfewdWG/sf0jW85YSJa1sPEWs2WB/FsJqOmNWutt44j
         YyPaPN0NoDHOAKO+gx2AdJbZuZqe4WX1ddkgobIjIQxDMBORj9NbbHtzAtmNKU9uuTqi
         Uirg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761175795; x=1761780595;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aU5JHaPOPUGgukhD3bad891ElerIE5ocm+VeTPJz1C8=;
        b=DxSxSHC69qVHTITx66ioLn790qtUVAcpuupqiOyf76Q4XnlF6PsbkgN1uFlZcyttKr
         jQYgihzrCCe/Kjlgjo6LJRVphaL+JsgAyZMGWR7dCSBDrj0SihyQowjXcQmr+CncfadV
         QUOxWB2/mbH9bZPeNKXXz8ujNJnpFPcFb5ZFQFPkw0Tsg5TIk0xgRgY7IqD5hDeD4lN8
         5Q15xJEU58wbSrL1f0orjGFrlrnTf28nAMnqyMrrsZKrjvnL2MpubDqL2lggJ/FC36LT
         k+8BcoMa5vz0IuRKFX0hch04+buumgP7AKmh35CTF5xGU4VfGG/Xu8f0lw/1801VPEEF
         sFSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvpn4Yr2SdxaCQWh/OVYsyKLmeA7glAgHyf0eB10MzHqDC70TUilXjH2L2Vwjv3LTfoGnNrCUNauKq@vger.kernel.org
X-Gm-Message-State: AOJu0Yxop5NW2X2/PC3ocv0nLvs/NRWryqTvhoYRe7asscCOjB95KDJT
	/J/PhS0qBaV9qiqEToDNXun135xGeAZwn/Oh2cVr7AsO2hJNq9KHRPTZK5yd+s4ejP4=
X-Gm-Gg: ASbGncuSASZjery74t1kSVP2VtNsnkbD7EZqzhRngHt5hGqkzzkXzzlEapsdForiCn5
	IjDjgUU1WZywBhhcYpqqzT/rvy+Am/5lvxalPmVESb82Kz9dyNvaKmpiCCHfjW/Jh2YGJwtFoXb
	vQ0paUOWFaUO8rbJHpcw4IenZQC/VyBOFLn80sEMG4016d22lADpjYZTHFnBFS/8itd22jFjZC4
	T6sP75jSKFvZYvqNgHWK79p51keD6m0o+33nlWax2LASOaxSxTPtMteqhKcQrXhVLljNjrD4bUX
	iYwV4UOUH2XCsRnsjdGTYfuET0a+55wIw00+Jz3zEhC9yMhChqdqXrECf9EEITq0Z8FBGU03u/h
	L0MH1zpCYfiCNzaBnjQ3e5Bo/LfSyoS5eWhQEbd4l/U8b3QpXmva8B/IHOGNfq8K5Qvw1yR4OyB
	xec8KoxWw5wA==
X-Google-Smtp-Source: AGHT+IFYp0ny70CA4NAOgoFbnGMlXPyOpppEdL0vT/v/zgXSwVQA4g/6+fINYUYu1VCsjkOYj2gtog==
X-Received: by 2002:a05:6a21:8881:b0:33a:86cd:1553 with SMTP id adf61e73a8af0-33a86dc7f16mr6439638637.12.1761175795311;
        Wed, 22 Oct 2025 16:29:55 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a274dc12b2sm392646b3a.67.2025.10.22.16.29.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 16:29:54 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Wed, 22 Oct 2025 16:29:34 -0700
Subject: [PATCH v22 08/28] riscv/mm: teach pte_mkwrite to manufacture
 shadow stack PTEs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251022-v5_user_cfi_series-v22-8-fdaa7e4022aa@rivosinc.com>
References: <20251022-v5_user_cfi_series-v22-0-fdaa7e4022aa@rivosinc.com>
In-Reply-To: <20251022-v5_user_cfi_series-v22-0-fdaa7e4022aa@rivosinc.com>
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
index e4eb4657e1b6..b03e8f85221f 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -420,6 +420,10 @@ static inline pte_t pte_wrprotect(pte_t pte)
 
 /* static inline pte_t pte_mkread(pte_t pte) */
 
+struct vm_area_struct;
+pte_t pte_mkwrite(pte_t pte, struct vm_area_struct *vma);
+#define pte_mkwrite pte_mkwrite
+
 static inline pte_t pte_mkwrite_novma(pte_t pte)
 {
 	return __pte(pte_val(pte) | _PAGE_WRITE);
@@ -765,6 +769,9 @@ static inline pmd_t pmd_mkyoung(pmd_t pmd)
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


