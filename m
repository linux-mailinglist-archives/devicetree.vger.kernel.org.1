Return-Path: <devicetree+bounces-170214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 71ADBA9A361
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 09:23:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6599F1947C67
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 07:23:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5465E20C46A;
	Thu, 24 Apr 2025 07:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="nbOHAEA9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85CFE20AF62
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 07:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745479250; cv=none; b=FaEuewuCKlI7lQbDoAhBaIxp8P1rDebfIRfrQ+SnfGvS/LpNi1+DY+mzhcvmYbWZns+H00iDuGHejKjLrPDojzioc3pj5HcXDtrfKp2PMbi2Wrn4Ax+S+0JE+UgLNGKpbypat1NpxeOu0a/SObGZZkPCkrEv7gxPI3rZnpyZDVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745479250; c=relaxed/simple;
	bh=v0FhAahB+duYIk/hRzzymYIP6H63IhRuqMQn8myLUBo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UjuUVtGYa65YwJInsrIsQYeq1Onm8kaKbAmbOy0PX0mdKeEh16Hh6k6udqtQceVzBlaQQfer1ee3AOS5siZMXGP1epRJczCkSdJVlpwXosFiCQOa/Pk/vucaQyF2QRX14KWiYg6m7UzkXvq7pVmnE9/4EGVGh/149usnDuNcQ78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=nbOHAEA9; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-224341bbc1dso7698175ad.3
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 00:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1745479248; x=1746084048; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6ylYFmVRjBQGzrdqcn0JjhMraiDjYmLqBMrzaQkDTLs=;
        b=nbOHAEA9kkVtcPzENpnOz33i8q1/SegniPIQzU+Ufn1Fpui+DtmjOysVTgCeYPdhBx
         3gdzkjlIxOwo923bG539rY1GhStgMGqr4SQCDpF088c2nTUffyuub6zreme9KF7rWq38
         eBdd2F8lPnXw9fmTF8M2rdv1tgfn55SQEpJLT5w9lEs3+bph7ymts3gITcvA8eMGga0/
         lpTbYCaA2AIU7RaIJPn7h590oxgC7Uczh6IrCNSmidSARNPRzZ5UZrLh58Rh4TF2a7Sw
         +PkEDRa1fONdHbk7gNy4jIJgyVCmcM6CzQ42cEdZt2lLdmDQhwWU+7YhV7cn7fhD6FMb
         kv/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745479248; x=1746084048;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6ylYFmVRjBQGzrdqcn0JjhMraiDjYmLqBMrzaQkDTLs=;
        b=LZn1bK9FYi+AXO5xfASxvYXZrsUR8QhLR/ToPNStDKc2m84qwxTrxe93MQKLDlZlzy
         CuABYnWkRXng3UggTEIr0icpa+0n19Wz0i0lA1PLM5yLJ6d3DHWkrcK4LyzT++eBBnGG
         H+nWuqKy2pPHoW5wh/3A/SrY0FW9/P8XYXn6faW/Ob7PrgG8/E6jRhXqXiUmlkaqqpEP
         ItsqLjB87F1Gs6QoMt3VcPIWaA43swHK5diynzFSx5MW19xE0YvlFztP0SW/u8fKbLAU
         7uP7oI2a1Hft8Gh3nbZCQfDEovRANT1i7nDnkKW1KcDme+AYppj8lAdgrtlTEw6STL5q
         a2+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXUd0wbciToIKp6hzqIo1QzU4ZQa+zVLHoB8pIdM+0ZRJCpa9+Mb3JU+0W+k3ZoKAr1yG/LRcFE4Oja@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/NVAjZTtunNG9cDXLio+z1uW9M6EwMKfIrduXWQ1xTSfGuNt8
	PgvyLDFTn6jtTZY8Jl/ZPbx4GoGN1iLm+PHNmmvz2qur4GZnUR04wZ6roDIlmlg=
X-Gm-Gg: ASbGnct2h2DnLk6d/gwW5bFU+AbOjxfdgacEPzbd4CobHmoyTwYKu3mSvOXLCiyL1a3
	wtjw4wszEqbhAlpzIia0zjZZODjXH1D1DTj/GDAvKTrVlEMvfi+POB5d9Biamh+5dyj8vxSFH+D
	nZjTES2LI4zI5GOvrKgAT2wLQcOECz9QnTPAeisK2XQJdEdFiHrmiOmABzYD//fuGbawUCbVPDs
	i72/2x8l1ULPAJpocSN7rg4L62Y+IrKLQ04ZmVu2mFqEJCj6YDfKYZT9IEJEUQZnIL1NMDzudNQ
	ML4Cp4CP3CyEsYVv8euB5HCLSk67bnciOrAnaeUukkIlVMRyUYKHSJ5DGMAMEg==
X-Google-Smtp-Source: AGHT+IGjkr4vqGGtTUfWepy4/KRfgzZh10ROLBoP0JZSEZsJlQI5sONvd9/5VHsjRNPTvbU04z+xfg==
X-Received: by 2002:a17:902:f608:b0:223:3396:15e8 with SMTP id d9443c01a7336-22db3c0ec76mr25062265ad.22.1745479247872;
        Thu, 24 Apr 2025 00:20:47 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db52163d6sm6240765ad.214.2025.04.24.00.20.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 00:20:47 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Thu, 24 Apr 2025 00:20:23 -0700
Subject: [PATCH v13 08/28] riscv mmu: teach pte_mkwrite to manufacture
 shadow stack PTEs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250424-v5_user_cfi_series-v13-8-971437de586a@rivosinc.com>
References: <20250424-v5_user_cfi_series-v13-0-971437de586a@rivosinc.com>
In-Reply-To: <20250424-v5_user_cfi_series-v13-0-971437de586a@rivosinc.com>
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
 arch/riscv/mm/pgtable.c          | 17 +++++++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index ede43185ffdf..ccd2fa34afb8 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -416,6 +416,10 @@ static inline pte_t pte_wrprotect(pte_t pte)
 
 /* static inline pte_t pte_mkread(pte_t pte) */
 
+struct vm_area_struct;
+pte_t pte_mkwrite(pte_t pte, struct vm_area_struct *vma);
+#define pte_mkwrite pte_mkwrite
+
 static inline pte_t pte_mkwrite_novma(pte_t pte)
 {
 	return __pte(pte_val(pte) | _PAGE_WRITE);
@@ -749,6 +753,9 @@ static inline pmd_t pmd_mkyoung(pmd_t pmd)
 	return pte_pmd(pte_mkyoung(pmd_pte(pmd)));
 }
 
+pmd_t pmd_mkwrite(pmd_t pmd, struct vm_area_struct *vma);
+#define pmd_mkwrite pmd_mkwrite
+
 static inline pmd_t pmd_mkwrite_novma(pmd_t pmd)
 {
 	return pte_pmd(pte_mkwrite_novma(pmd_pte(pmd)));
diff --git a/arch/riscv/mm/pgtable.c b/arch/riscv/mm/pgtable.c
index 4ae67324f992..be5d38546bb3 100644
--- a/arch/riscv/mm/pgtable.c
+++ b/arch/riscv/mm/pgtable.c
@@ -155,3 +155,20 @@ pmd_t pmdp_collapse_flush(struct vm_area_struct *vma,
 	return pmd;
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
+

-- 
2.43.0


