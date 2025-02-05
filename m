Return-Path: <devicetree+bounces-143091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D793A280DC
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 02:24:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 08065161625
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 01:24:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F92322ACFA;
	Wed,  5 Feb 2025 01:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="GYWuKvhE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB4022A7F6
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 01:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738718533; cv=none; b=XJ3c22Ddv47/kYNwBbhhtVrK1QzIa8S/N475c1AfzzZnwN7avh+7WT/1rcJuhS+v4bd0VfmuCcBKavK5DwjyWXVQhPsn97e4Ep6ZUP970NPEt9c3emnB0vaVAz9JVgwioP459k0Pj0/uHGxjZbd89qx66hW6vwbpBsUhYbqQYC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738718533; c=relaxed/simple;
	bh=HOQqOSPO+MhBbccjb2UbKqhOT3MYkxspDNQyPTpGYhw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FG5WTv6tlizHL3K/Rg3pZ369+kgBkKK5Xm+OgTYNqGZMdxqCHEuUXkR/BXn7+chDL+5q0LYyeOHgFzl3wc+BN2bEghT0JbFe3YGCgNaSVAgxgLx7yPuKQpWkDH4HsYfkOLEav8wYaam8NQiF1leVKZzWKNASZdC2BjR4+wHpfmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=GYWuKvhE; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2f9d9f14a74so1154080a91.0
        for <devicetree@vger.kernel.org>; Tue, 04 Feb 2025 17:22:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738718529; x=1739323329; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WPde6NcIQ47rHbegQG8dPMP+orPth983zEAPX8ktkAY=;
        b=GYWuKvhE5q6kewHJL2AeIOOIlbys8wkXYWo16hj7BUaqIY03Eod2piqVd+ZsLyjuEG
         XTQuQDJNVQEvwS3RSPWMFVbeXUlX6w00Akc0c7wVcGs1nJGa9I+bb68IYVacK3klMqvn
         oVgAnQAn0gurFpjdq1MdlYYFsKO2XkzLxSZStYgbzgnHL3y4OsgjQf6EK2Atv86K/Agd
         30AICNnrIODMm1QtigZ0R29NyARO978AdDG72LXvUUWmEhhsZ1Y2OMQagb59O/jXGgVn
         dVGloyM0+1Gez+hSN62xGySydNKbomuA1jzk88uHevbjfgy38d2qsq4ftKq202byhT9d
         s4eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738718529; x=1739323329;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WPde6NcIQ47rHbegQG8dPMP+orPth983zEAPX8ktkAY=;
        b=UC9nuOU4bvyg1eoYdM1qhUvohpF0zicJkBwpjXH3QECRGrYesfy0TcBGRqKmo4Ww+U
         FAFvPYoel9BHtYvFGyywHnJSc2OFNVRpCzN/o9J+OeIVX/EC3PCe7fARvanZQGOT8rq7
         9fcmXBJImQnIyx5JabTodEF8IURw9cWpreJ9KBgkrHHS4H3BCwXvTWlheTPRKL5A2iH3
         Swat7beg3DmRU+TKGX98KGfGjW3hA3BCGsPVE6SlmrVBcmbIqLUGHGaTNRBpuNh6kAH2
         fm9pNhe8GWYo6pQ226imF1i+CtYJhyNFYmuoIY/FHsMaKNj3yVzcuJWlr3r32kv2Htpx
         AvWw==
X-Forwarded-Encrypted: i=1; AJvYcCU006s7SyzY2yZ6dkyodCMGS7n0pVHN0K+vwMU1fmjG5bJqYKxZ8AtJLuLg/tbeOC45SLJVSGBStArL@vger.kernel.org
X-Gm-Message-State: AOJu0YwcHzdis8nF+O1IGpfV0o2YAIv0xH0QgulRu+Dfcnwr/N5nPoVL
	02Ou/FeTC2L2TqN5XEBeoRaGUC01sEXa5EQyLEbeVN2pqbv2al3AE0mvOwZsLr8=
X-Gm-Gg: ASbGncsSl2ya+lE+wd/BiBHRTQ0JRXnknMHMKEMuJEuuL7gYCOBLXCmYXeS0KFydckj
	vnigyHnkYAidxy8Rr0pqCjDMZtpRxlJOxJevpIwBFHNQghkVeYUrgezeZglyAMLArzfEFj4YXlo
	0FsPrg7JCFH8H3Wuz6mXjR2N6CarhWssEDkYlI2ehdmTYcrhnpbmxLia3BaKSmJR1qhqS4EME0G
	0oD5pxu1mDB7OVD3hC/0zqHBhRVecx+36D9Rq2cvGOdHXG4Yxc6YE1P7ffvWT8IYZM6geYmOfGj
	MOws6Qh1e7SY7uggp8c0YlUt3w==
X-Google-Smtp-Source: AGHT+IEPr/jAZdU1BeAv0MTLO4+mRSsOemI+fwwJ0UmsHYAhZKBwL5jRXw2/FSsvJQ9vrjQzGW+zkw==
X-Received: by 2002:a05:6a00:35cb:b0:72d:8fa2:9999 with SMTP id d2e1a72fcca58-73035140b35mr1685541b3a.11.1738718529305;
        Tue, 04 Feb 2025 17:22:09 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72fe69cec0fsm11457202b3a.137.2025.02.04.17.22.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Feb 2025 17:22:08 -0800 (PST)
From: Deepak Gupta <debug@rivosinc.com>
Date: Tue, 04 Feb 2025 17:21:55 -0800
Subject: [PATCH v9 08/26] riscv mmu: teach pte_mkwrite to manufacture
 shadow stack PTEs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250204-v5_user_cfi_series-v9-8-b37a49c5205c@rivosinc.com>
References: <20250204-v5_user_cfi_series-v9-0-b37a49c5205c@rivosinc.com>
In-Reply-To: <20250204-v5_user_cfi_series-v9-0-b37a49c5205c@rivosinc.com>
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

pte_mkwrite creates PTEs with WRITE encodings for underlying arch.
Underlying arch can have two types of writeable mappings. One that can be
written using regular store instructions. Another one that can only be
written using specialized store instructions (like shadow stack stores).
pte_mkwrite can select write PTE encoding based on VMA range (i.e.
VM_SHADOW_STACK)

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
Reviewed-by: Alexandre Ghiti <alexghiti@rivosinc.com>
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
2.34.1


