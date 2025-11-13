Return-Path: <devicetree+bounces-237886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD8DC55553
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 02:50:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E33D3B2C24
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 01:50:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A5902E5B1B;
	Thu, 13 Nov 2025 01:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="h9BbaI20"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C4B2E06D2
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762998437; cv=none; b=M/iD3TvyVO/i6l4E2NULfQdXJYSzpD4Lo9osQDI8M69bKJi2WXxF5WmXPOMb0HF0jJBR8O0Wrksvx/9fBowVnVKtcW5Wi4LnpjfjRvGXooRenZNmbRWvEs8Miva9mvaVwP9NIKXKh+8DvTNVSzuhvJR0mS3833ypLY6mvjI52tE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762998437; c=relaxed/simple;
	bh=86DWhTWxpA+Wn6OoSODTxcACeGJ6z7eq0QJodNfrB5g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bJQ9JY9LcnGsAysVVoRVkM2/NST765R0RYQ3AEdFkBZuWmT5O0A81yDVKLrYv+Fg+ewt2TZD9eX6u+Toro/vbhpnt9weFd8sSFOe3966m5kx5lkRGoyHXLh1SGnt5Iy1ESKwwz2B5XAngItd67rLOO4LymSLkJziFRprDfrRpJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=h9BbaI20; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-b99bfb451e5so177199a12.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:47:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1762998434; x=1763603234; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=onXS1ZyyTIk7E4Phjch+Gs0PpMpoB1JPFOZexalawi0=;
        b=h9BbaI20ErXz7k96wyZ4jxSnKtn+lcez+ImlndUqs1usZiu6F8k8KatSou3fHsfogG
         DnDBnkpxDkAQyVm3OgdOcv5LoG8lk+UUNUFVEC4XeXzaIZ3R7Xf+DeZwckgAJlXfXGbl
         DQUrQiMYg6qj0f9bUwiFfizAB+GaF2uxnLlgH19UxvGUlh82R/GSOJjmtb5obCd4m1v9
         KlqwiayULydoNS+fRpE+dd3oRC6getLmEu95kpOVtXAjAzbLPKNte7ZEM013EUeM2WE4
         QuSIAPTGdtAspfZiFku+a55vi67F3qNeXDiSnte56gBCiiJ9RyD9ulxobPP4Ayeili1j
         2ncQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762998434; x=1763603234;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=onXS1ZyyTIk7E4Phjch+Gs0PpMpoB1JPFOZexalawi0=;
        b=muYilmujA0i/9LUpORQUBpQubtxLFhZ6ESWkdYkwnwEYvfIpYcGK/AMLN1R2KS+A0Q
         scklpC5Kc3f9g8XJPcP0LOMAr3uwQEBg/p2JM13Tb50SPRLmc5/eZuHkjlOWi6ccdoQs
         bzr5EdcJeUj089tJzfi4Kl0DtHma9ilZryuU9yMQqOwA/0MiURN5sy2PiWC9lAI9G/U/
         AHRLBaL3vBFXJ/XwDA5JpfC3na5Agg0gZOe/Jl330ufuuHpWLUeeFxPair0hAobDHwv3
         +jVCqNf9yrhvVON0jYe8wRInP+Ay9d2e0CXqomOr5hpaIvTEqh5Oy659JdIsFgtNvJSk
         RIww==
X-Gm-Message-State: AOJu0YytvwX3KVtFsRcvBXVySdcEDzsqI1d0cQvaAsQvI7cpZb3g+BqB
	O2ISHQggaJTJKXtRZAV/WuCsXC/I/pPW72QEEa4K7va4QqHWldrrdhr+kD7tuI9wL3k=
X-Gm-Gg: ASbGncu0WhhsKj7HvHM1++N9L0xRw2O27GeYlztSKtW3OOigc4dyEpFsTWAKen5EgqF
	y9qaPCQk6hcBEuEAY9iMqV2jLMUrI1M/TjTAEimssTxcFijc6pv0AxVgr70mLXC28CFK0b+lFov
	+F305DQwdn6BC3bolukrPkDWwZ7b4WlmYY39A+zHXlxWUsqZbLFbys/TxJc6hUtSYPB2XSY0Ehc
	x1P5FSuh/3sZxR9tKsiOlVsRIX1jTz7zL1co2S8XFHFij4ZcSX/sylTU4s1oZ0pk/pLIW8+ay7h
	ruvttBpErEC7ogxHW4MNUC2A7KzqyCPDpJi48c/KIq+UnkOoXPBhRc8wlNSjb+7Lj0v505v+Rud
	juwm+7X6+A/WsfMXlYc1j3KPOXE+bOWpMQ+et+ICctfxSsILt6UJukfpm+8i+Q7/JDwMQE787p1
	WljVoLLqnNdeA0vM1XjSMLmw==
X-Google-Smtp-Source: AGHT+IEPUQpGJSnlpoH1wKnMxfvk73znW6zYh27mDLEJKnxaxWn+hw/P1W+C7Nu+pbcglz2Jny/U/g==
X-Received: by 2002:a17:902:cccf:b0:297:f8d9:aad7 with SMTP id d9443c01a7336-2984ede5755mr62262705ad.50.1762998434336;
        Wed, 12 Nov 2025 17:47:14 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2ccae8sm4986485ad.98.2025.11.12.17.47.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 17:47:14 -0800 (PST)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>,
	linux-riscv@lists.infradead.org,
	Andrew Morton <akpm@linux-foundation.org>,
	David Hildenbrand <david@redhat.com>,
	linux-mm@kvack.org
Cc: devicetree@vger.kernel.org,
	Suren Baghdasaryan <surenb@google.com>,
	linux-kernel@vger.kernel.org,
	Mike Rapoport <rppt@kernel.org>,
	Michal Hocko <mhocko@suse.com>,
	Conor Dooley <conor@kernel.org>,
	Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>,
	Vlastimil Babka <vbabka@suse.cz>,
	"Liam R . Howlett" <Liam.Howlett@oracle.com>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v3 10/22] riscv: mm: Always use page table accessor functions
Date: Wed, 12 Nov 2025 17:45:23 -0800
Message-ID: <20251113014656.2605447-11-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251113014656.2605447-1-samuel.holland@sifive.com>
References: <20251113014656.2605447-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use the semantically appropriate accessor function instead of a raw
pointer dereference. This will become important once these functions
start transforming the PTE value on some platforms.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

(no changes since v2)

Changes in v2:
 - New patch for v2

 arch/riscv/include/asm/pgtable.h |  8 ++--
 arch/riscv/kvm/gstage.c          |  6 +--
 arch/riscv/mm/init.c             | 68 +++++++++++++++++---------------
 arch/riscv/mm/pgtable.c          |  9 +++--
 4 files changed, 49 insertions(+), 42 deletions(-)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 5a08eb5fe99f..acfd48f92010 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -952,7 +952,7 @@ static inline pud_t pudp_huge_get_and_clear(struct mm_struct *mm,
 #ifdef CONFIG_SMP
 	pud_t pud = __pud(xchg(&pudp->pud, 0));
 #else
-	pud_t pud = *pudp;
+	pud_t pud = pudp_get(pudp);
 
 	pud_clear(pudp);
 #endif
@@ -1129,13 +1129,15 @@ extern unsigned long empty_zero_page[PAGE_SIZE / sizeof(unsigned long)];
  */
 #define set_p4d_safe(p4dp, p4d) \
 ({ \
-	WARN_ON_ONCE(p4d_present(*p4dp) && !p4d_same(*p4dp, p4d)); \
+	p4d_t old = p4dp_get(p4dp); \
+	WARN_ON_ONCE(p4d_present(old) && !p4d_same(old, p4d)); \
 	set_p4d(p4dp, p4d); \
 })
 
 #define set_pgd_safe(pgdp, pgd) \
 ({ \
-	WARN_ON_ONCE(pgd_present(*pgdp) && !pgd_same(*pgdp, pgd)); \
+	pgd_t old = pgdp_get(pgdp); \
+	WARN_ON_ONCE(pgd_present(old) && !pgd_same(old, pgd)); \
 	set_pgd(pgdp, pgd); \
 })
 #endif /* !__ASSEMBLER__ */
diff --git a/arch/riscv/kvm/gstage.c b/arch/riscv/kvm/gstage.c
index b67d60d722c2..297744e2ab5d 100644
--- a/arch/riscv/kvm/gstage.c
+++ b/arch/riscv/kvm/gstage.c
@@ -154,7 +154,7 @@ int kvm_riscv_gstage_set_pte(struct kvm_gstage *gstage,
 		ptep = &next_ptep[gstage_pte_index(map->addr, current_level)];
 	}
 
-	if (pte_val(*ptep) != pte_val(map->pte)) {
+	if (pte_val(ptep_get(ptep)) != pte_val(map->pte)) {
 		set_pte(ptep, map->pte);
 		if (gstage_pte_leaf(ptep))
 			gstage_tlb_flush(gstage, current_level, map->addr);
@@ -241,12 +241,12 @@ void kvm_riscv_gstage_op_pte(struct kvm_gstage *gstage, gpa_t addr,
 		if (op == GSTAGE_OP_CLEAR)
 			put_page(virt_to_page(next_ptep));
 	} else {
-		old_pte = *ptep;
+		old_pte = ptep_get(ptep);
 		if (op == GSTAGE_OP_CLEAR)
 			set_pte(ptep, __pte(0));
 		else if (op == GSTAGE_OP_WP)
 			set_pte(ptep, __pte(pte_val(ptep_get(ptep)) & ~_PAGE_WRITE));
-		if (pte_val(*ptep) != pte_val(old_pte))
+		if (pte_val(ptep_get(ptep)) != pte_val(old_pte))
 			gstage_tlb_flush(gstage, ptep_level, addr);
 	}
 }
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index d85efe74a4b6..ac686c1b2f85 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -459,8 +459,8 @@ static void __meminit create_pte_mapping(pte_t *ptep, uintptr_t va, phys_addr_t
 
 	BUG_ON(sz != PAGE_SIZE);
 
-	if (pte_none(ptep[pte_idx]))
-		ptep[pte_idx] = pfn_pte(PFN_DOWN(pa), prot);
+	if (pte_none(ptep_get(ptep + pte_idx)))
+		set_pte(ptep + pte_idx, pfn_pte(PFN_DOWN(pa), prot));
 }
 
 #ifndef __PAGETABLE_PMD_FOLDED
@@ -542,18 +542,19 @@ static void __meminit create_pmd_mapping(pmd_t *pmdp,
 	uintptr_t pmd_idx = pmd_index(va);
 
 	if (sz == PMD_SIZE) {
-		if (pmd_none(pmdp[pmd_idx]))
-			pmdp[pmd_idx] = pfn_pmd(PFN_DOWN(pa), prot);
+		if (pmd_none(pmdp_get(pmdp + pmd_idx)))
+			set_pmd(pmdp + pmd_idx, pfn_pmd(PFN_DOWN(pa), prot));
 		return;
 	}
 
-	if (pmd_none(pmdp[pmd_idx])) {
+	if (pmd_none(pmdp_get(pmdp + pmd_idx))) {
 		pte_phys = pt_ops.alloc_pte(va);
-		pmdp[pmd_idx] = pfn_pmd(PFN_DOWN(pte_phys), PAGE_TABLE);
+		set_pmd(pmdp + pmd_idx,
+			pfn_pmd(PFN_DOWN(pte_phys), PAGE_TABLE));
 		ptep = pt_ops.get_pte_virt(pte_phys);
 		memset(ptep, 0, PAGE_SIZE);
 	} else {
-		pte_phys = PFN_PHYS(_pmd_pfn(pmdp[pmd_idx]));
+		pte_phys = PFN_PHYS(_pmd_pfn(pmdp_get(pmdp + pmd_idx)));
 		ptep = pt_ops.get_pte_virt(pte_phys);
 	}
 
@@ -644,18 +645,19 @@ static void __meminit create_pud_mapping(pud_t *pudp, uintptr_t va, phys_addr_t
 	uintptr_t pud_index = pud_index(va);
 
 	if (sz == PUD_SIZE) {
-		if (pud_val(pudp[pud_index]) == 0)
-			pudp[pud_index] = pfn_pud(PFN_DOWN(pa), prot);
+		if (pud_val(pudp_get(pudp + pud_index)) == 0)
+			set_pud(pudp + pud_index, pfn_pud(PFN_DOWN(pa), prot));
 		return;
 	}
 
-	if (pud_val(pudp[pud_index]) == 0) {
+	if (pud_val(pudp_get(pudp + pud_index)) == 0) {
 		next_phys = pt_ops.alloc_pmd(va);
-		pudp[pud_index] = pfn_pud(PFN_DOWN(next_phys), PAGE_TABLE);
+		set_pud(pudp + pud_index,
+			pfn_pud(PFN_DOWN(next_phys), PAGE_TABLE));
 		nextp = pt_ops.get_pmd_virt(next_phys);
 		memset(nextp, 0, PAGE_SIZE);
 	} else {
-		next_phys = PFN_PHYS(_pud_pfn(pudp[pud_index]));
+		next_phys = PFN_PHYS(_pud_pfn(pudp_get(pudp + pud_index)));
 		nextp = pt_ops.get_pmd_virt(next_phys);
 	}
 
@@ -670,18 +672,19 @@ static void __meminit create_p4d_mapping(p4d_t *p4dp, uintptr_t va, phys_addr_t
 	uintptr_t p4d_index = p4d_index(va);
 
 	if (sz == P4D_SIZE) {
-		if (p4d_val(p4dp[p4d_index]) == 0)
-			p4dp[p4d_index] = pfn_p4d(PFN_DOWN(pa), prot);
+		if (p4d_val(p4dp_get(p4dp + p4d_index)) == 0)
+			set_p4d(p4dp + p4d_index, pfn_p4d(PFN_DOWN(pa), prot));
 		return;
 	}
 
-	if (p4d_val(p4dp[p4d_index]) == 0) {
+	if (p4d_val(p4dp_get(p4dp + p4d_index)) == 0) {
 		next_phys = pt_ops.alloc_pud(va);
-		p4dp[p4d_index] = pfn_p4d(PFN_DOWN(next_phys), PAGE_TABLE);
+		set_p4d(p4dp + p4d_index,
+			pfn_p4d(PFN_DOWN(next_phys), PAGE_TABLE));
 		nextp = pt_ops.get_pud_virt(next_phys);
 		memset(nextp, 0, PAGE_SIZE);
 	} else {
-		next_phys = PFN_PHYS(_p4d_pfn(p4dp[p4d_index]));
+		next_phys = PFN_PHYS(_p4d_pfn(p4dp_get(p4dp + p4d_index)));
 		nextp = pt_ops.get_pud_virt(next_phys);
 	}
 
@@ -727,18 +730,19 @@ void __meminit create_pgd_mapping(pgd_t *pgdp, uintptr_t va, phys_addr_t pa, phy
 	uintptr_t pgd_idx = pgd_index(va);
 
 	if (sz == PGDIR_SIZE) {
-		if (pgd_val(pgdp[pgd_idx]) == 0)
-			pgdp[pgd_idx] = pfn_pgd(PFN_DOWN(pa), prot);
+		if (pgd_val(pgdp_get(pgdp + pgd_idx)) == 0)
+			set_pgd(pgdp + pgd_idx, pfn_pgd(PFN_DOWN(pa), prot));
 		return;
 	}
 
-	if (pgd_val(pgdp[pgd_idx]) == 0) {
+	if (pgd_val(pgdp_get(pgdp + pgd_idx)) == 0) {
 		next_phys = alloc_pgd_next(va);
-		pgdp[pgd_idx] = pfn_pgd(PFN_DOWN(next_phys), PAGE_TABLE);
+		set_pgd(pgdp + pgd_idx,
+			pfn_pgd(PFN_DOWN(next_phys), PAGE_TABLE));
 		nextp = get_pgd_next_virt(next_phys);
 		memset(nextp, 0, PAGE_SIZE);
 	} else {
-		next_phys = PFN_PHYS(_pgd_pfn(pgdp[pgd_idx]));
+		next_phys = PFN_PHYS(_pgd_pfn(pgdp_get(pgdp + pgd_idx)));
 		nextp = get_pgd_next_virt(next_phys);
 	}
 
@@ -1574,14 +1578,14 @@ struct execmem_info __init *execmem_arch_setup(void)
 #ifdef CONFIG_MEMORY_HOTPLUG
 static void __meminit free_pte_table(pte_t *pte_start, pmd_t *pmd)
 {
-	struct page *page = pmd_page(*pmd);
+	struct page *page = pmd_page(pmdp_get(pmd));
 	struct ptdesc *ptdesc = page_ptdesc(page);
 	pte_t *pte;
 	int i;
 
 	for (i = 0; i < PTRS_PER_PTE; i++) {
 		pte = pte_start + i;
-		if (!pte_none(*pte))
+		if (!pte_none(ptep_get(pte)))
 			return;
 	}
 
@@ -1595,14 +1599,14 @@ static void __meminit free_pte_table(pte_t *pte_start, pmd_t *pmd)
 
 static void __meminit free_pmd_table(pmd_t *pmd_start, pud_t *pud, bool is_vmemmap)
 {
-	struct page *page = pud_page(*pud);
+	struct page *page = pud_page(pudp_get(pud));
 	struct ptdesc *ptdesc = page_ptdesc(page);
 	pmd_t *pmd;
 	int i;
 
 	for (i = 0; i < PTRS_PER_PMD; i++) {
 		pmd = pmd_start + i;
-		if (!pmd_none(*pmd))
+		if (!pmd_none(pmdp_get(pmd)))
 			return;
 	}
 
@@ -1617,13 +1621,13 @@ static void __meminit free_pmd_table(pmd_t *pmd_start, pud_t *pud, bool is_vmemm
 
 static void __meminit free_pud_table(pud_t *pud_start, p4d_t *p4d)
 {
-	struct page *page = p4d_page(*p4d);
+	struct page *page = p4d_page(p4dp_get(p4d));
 	pud_t *pud;
 	int i;
 
 	for (i = 0; i < PTRS_PER_PUD; i++) {
 		pud = pud_start + i;
-		if (!pud_none(*pud))
+		if (!pud_none(pudp_get(pud)))
 			return;
 	}
 
@@ -1668,7 +1672,7 @@ static void __meminit remove_pte_mapping(pte_t *pte_base, unsigned long addr, un
 
 		ptep = pte_base + pte_index(addr);
 		pte = ptep_get(ptep);
-		if (!pte_present(*ptep))
+		if (!pte_present(ptep_get(ptep)))
 			continue;
 
 		pte_clear(&init_mm, addr, ptep);
@@ -1698,7 +1702,7 @@ static void __meminit remove_pmd_mapping(pmd_t *pmd_base, unsigned long addr, un
 			continue;
 		}
 
-		pte_base = (pte_t *)pmd_page_vaddr(*pmdp);
+		pte_base = (pte_t *)pmd_page_vaddr(pmdp_get(pmdp));
 		remove_pte_mapping(pte_base, addr, next, is_vmemmap, altmap);
 		free_pte_table(pte_base, pmdp);
 	}
@@ -1777,10 +1781,10 @@ static void __meminit remove_pgd_mapping(unsigned long va, unsigned long end, bo
 		next = pgd_addr_end(addr, end);
 		pgd = pgd_offset_k(addr);
 
-		if (!pgd_present(*pgd))
+		if (!pgd_present(pgdp_get(pgd)))
 			continue;
 
-		if (pgd_leaf(*pgd))
+		if (pgd_leaf(pgdp_get(pgd)))
 			continue;
 
 		p4d_base = p4d_offset(pgd, 0);
diff --git a/arch/riscv/mm/pgtable.c b/arch/riscv/mm/pgtable.c
index 8b6c0a112a8d..c4b85a828797 100644
--- a/arch/riscv/mm/pgtable.c
+++ b/arch/riscv/mm/pgtable.c
@@ -95,8 +95,8 @@ int pud_free_pmd_page(pud_t *pud, unsigned long addr)
 	flush_tlb_kernel_range(addr, addr + PUD_SIZE);
 
 	for (i = 0; i < PTRS_PER_PMD; i++) {
-		if (!pmd_none(pmd[i])) {
-			pte_t *pte = (pte_t *)pmd_page_vaddr(pmd[i]);
+		if (!pmd_none(pmdp_get(pmd + i))) {
+			pte_t *pte = (pte_t *)pmd_page_vaddr(pmdp_get(pmd + i));
 
 			pte_free_kernel(NULL, pte);
 		}
@@ -158,8 +158,9 @@ pmd_t pmdp_collapse_flush(struct vm_area_struct *vma,
 pud_t pudp_invalidate(struct vm_area_struct *vma, unsigned long address,
 		      pud_t *pudp)
 {
-	VM_WARN_ON_ONCE(!pud_present(*pudp));
-	pud_t old = pudp_establish(vma, address, pudp, pud_mkinvalid(*pudp));
+	VM_WARN_ON_ONCE(!pud_present(pudp_get(pudp)));
+	pud_t old = pudp_establish(vma, address, pudp,
+				   pud_mkinvalid(pudp_get(pudp)));
 
 	flush_pud_tlb_range(vma, address, address + HPAGE_PUD_SIZE);
 	return old;
-- 
2.47.2


