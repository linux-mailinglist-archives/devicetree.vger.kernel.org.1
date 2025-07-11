Return-Path: <devicetree+bounces-195619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8F0B024F5
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 21:49:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9BBCB5C3481
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 19:49:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 637172F5462;
	Fri, 11 Jul 2025 19:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="QxbGvkub"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D132F532E
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 19:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752263201; cv=none; b=o4LYRox41PS9qE5+RVdBRKK1PHE97R1gCLzKNfnILG/mYEADewv9/32dXydyTi8u57j+t7PAJGfuAZORvapTFO0zzgOSdU+TetsUauqhX//7coHsDzKJDje6J1hgYvzh2UH5fO+qIJvPDBeWSNzC+tqPQZY2rTee5Q59puEuvlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752263201; c=relaxed/simple;
	bh=81XzqmtIK3R70Ndhoy+hkyCDJLiPRMLBjcUZcF1lYxA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Btx7DY/qS5yErZgDdXoe3Vnk+4S3eO9sHDyf32A7Q2Pjo1fJiz9/zDPf6s8G9jCl11MeUDu8zpd/ZNNm0ZGO8KepSXUS4XD7oRKyUsKy+sD3AAyZjYMlSptJRuETfWDAhHRqsl0KOTlpUim8sCFSe9q05x1MBeE4OQ8B/3+fpVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=QxbGvkub; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7490702fc7cso1625487b3a.1
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1752263198; x=1752867998; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k6HnUvt7E9ZR93PM/Gyja5rS+Mx2C6I8XGI70UUGCh4=;
        b=QxbGvkubeio3SAnPWeGDSEk6XWIkWeeBDWUyGMHzSmb/Pv5oX9XCBAnVAqDG4w6kU8
         yllpF28txJwNPfQO9v7P7fvnDApyweZcHEISQt6p596bMz52AmsjmpQYHfjpy/MKZCtE
         P9recUQKMdhO+V7RJ5qZcN3I6y/NSdBOHvdgX5p+SNtKxswV7ri8814vufHwH5YgVmlJ
         0445FODHvF2C2vKhXKvZceUVpHzEbJm5mUUZbwtTdPjFCKxR6LIPo05KrPXA+GTbUi8P
         3OnxYkZK+kHPJXpCrw5rZKmvvT1IR73BtNJZcYglo/eMY6dL7dKyDSiP77LfHEfgPv+V
         XA9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752263198; x=1752867998;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k6HnUvt7E9ZR93PM/Gyja5rS+Mx2C6I8XGI70UUGCh4=;
        b=mewgzDzZ3CAuFVm4oN5U7Aj9ruU9xWFSA+FJRHZO+Kpzd62+b2z8otkI0z1Vtq4Yy/
         Sq8zGMmFwo/CTZbUyT343j5robHbiTUzSjlOHXGj1OZYv9GLn2d1PMuXunJ21apVvrha
         5pV8A8z4Qar42bUhCkqfCXyXNDHmrXeaA6/GZ95jdKrfWhMcCzfKFL1pMviNvwOpROek
         kwEqH+UyfHbLOtPjS5JdUg/K/mWQ0O7USYIpshRBYDc0Dhhmd+793mVSdaos06cDf3de
         +q53DeOG8X9MHZAZoNiQvYS72l6d/uAuE0Oz7zydBPMb2/yWEOIo/wyh/12Azp8Qk8yc
         LJkA==
X-Forwarded-Encrypted: i=1; AJvYcCV6pfkKkqKk1IC8Ayzu+wCUT5VF2AaB9RI/09P+JEzzb8tTZwwRiR5eTBwc0jejIFjTHhQuCSp/FnH+@vger.kernel.org
X-Gm-Message-State: AOJu0YxXvV2LYmyI5yLokKum07AVccyVUf8vAfM4y8Y5FgThuNFvmEDH
	YGd30vRhuwtTCi1V69XV/hgAaPAH+PcFZvLx5C2tQvL9WossvKVhRpkQuA4c8qafeFA=
X-Gm-Gg: ASbGnctayogdjt7F/3SdsQrM+qi37O6+6MMEg1vc5yttAK0h3RyXOZTl4o2UPu7zN8A
	RFLlyg/tsxbs0NiSGeAxiqSxYMFk9QOX8a7wLOMT/F855KZvOlpyZY5dQvzq0wvEFELaJ7tLNDD
	7PxVvvDbVYbPb3leDQQ61tVXTSGr4q3Lq5woseR9ORAAROR42joR+oPJLzIP5dPzTMwaWgbWfVt
	ykycXuUtXHU3w0GIRLc5A30qf63eOSZ9mC0Cr0D249MBlLIPzLaAuMxhGDTi9J4DXpvCCeWVWrl
	5g1pJZNTW/dQNayOa7uXJQvFwzaeiL38FuXWdEbDwrLdBSAsHP/Vvmw/rcPMEMVIn9DjWLiZxgo
	PHwBO1EIV+91rZeL4Bo0U9sbreCZ3PNb8QLa9/cWSn/I=
X-Google-Smtp-Source: AGHT+IFCYrgPLco3146TCBfu1GMFnSe8pSiKa0xlExj1KDE2ikj6cdqma/unhsqS+GITijQv6W3rWg==
X-Received: by 2002:a05:6a00:189b:b0:74d:247f:faf1 with SMTP id d2e1a72fcca58-74f1c4e1d3cmr4335399b3a.6.1752263198496;
        Fri, 11 Jul 2025 12:46:38 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9e06995sm5840977b3a.38.2025.07.11.12.46.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 12:46:38 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Fri, 11 Jul 2025 12:46:13 -0700
Subject: [PATCH v18 08/27] riscv/mm: teach pte_mkwrite to manufacture
 shadow stack PTEs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250711-v5_user_cfi_series-v18-8-a8ee62f9f38e@rivosinc.com>
References: <20250711-v5_user_cfi_series-v18-0-a8ee62f9f38e@rivosinc.com>
In-Reply-To: <20250711-v5_user_cfi_series-v18-0-a8ee62f9f38e@rivosinc.com>
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


