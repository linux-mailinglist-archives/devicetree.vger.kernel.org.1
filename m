Return-Path: <devicetree+bounces-237884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C2AC4C5558F
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 02:53:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 856D734A33D
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 01:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1E3A2DF71E;
	Thu, 13 Nov 2025 01:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="kxvJLmVG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7612DBF75
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762998434; cv=none; b=VqQDkU88uplfx51y10pV8FvGGWSa3nNs2Bf569rSlQOW3yFmgjLPo+CN6E92fJrApH+Y5TOolxyOlj5VqxPM5rEF6LnYBOIsnik7pcEOWfqwELyB9nLRhjzh2dVhpGkV3u3lBF0ee4jbicdNs35YJAfTtG8GxEFyZxJXOFntuEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762998434; c=relaxed/simple;
	bh=+C06/zSjfGX1udawurUHHB8xzM56WaF73/3egno5ghs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OdzGn8+SsooJtGvcpVPpqhFMB+/XiuN8NAOTEP+1wAQyRwI7c/GsFg888tZxH1OalEsZqfF5mT0tfXVqex/4UCXtzUHqcSprNmAOWFkt7X5hjVvNQq42QX2+IT5SqkW/PjvBIncvngtcgnZ/a2sO5IyESi3Bcw1N3fCHCXDupas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=kxvJLmVG; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2953ad5517dso3382895ad.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:47:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1762998431; x=1763603231; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fpe1iExYP0zyH90A/cjYKaPPTKIVrHTbjuAaN9Ted2E=;
        b=kxvJLmVGMWRqcvcrzMoM9K30KzD+FDPR0W5XPhoiULzT72RMz8HO91Ney/r3Q52mBi
         NPcIRtB83emaSt6QfUJcJM/IDnRQubmgN6EV6IH17ozUQo5aSsBXVwkQ2GKgSR5vDn9O
         MMPTJ/nr6UnqHLgLc2FYLpESGJBK8l8KzNQK84UlyGbaXl+3UovLm/1vLAk35dvtADaC
         lYIfBGn1yC6X93zpFT2FedtMbAdHPfkIN6qGGBXsiyJ9cjD2Y6SZJv71Z2TZMsf+6TQS
         U+6apNTOUQE8fPYCbV0cJRTnZRfsewm8gX2gc7Om7W5GYKn887j1Ax32J5lLn7HYk+6S
         BR+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762998431; x=1763603231;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fpe1iExYP0zyH90A/cjYKaPPTKIVrHTbjuAaN9Ted2E=;
        b=uR0Ch/apMpymy/ZlE6lvTDkeeMu61itYufOappJ6RmSw7PXb+Dyhi/AvBSTMtP168l
         dk0qnaeO8NS0OVtaXcUmq6MTQKvm7zkKr+H8+z3aLB6BD8bQlIH3eJmuCi/oCfziAYP6
         INvk42pLQ4a1fK0MDfGfF0b50oLbDzwaJ6nsN4oeP8yCRyvBHZvSWjprfmtHBzQ7KfGS
         UQdz+V1v1eNZToCcRVLnDsgkLrenFYs+ex7oh/7y4BVaV1ZA4G91X6pXFmhi84W96Yle
         xPrTRD7RBt6j3sW6x51C7RHh7gzjsuZvUhmTkrujxraFvre/tS8r/mhKvhwrUvYRaM1L
         2P/w==
X-Gm-Message-State: AOJu0YyAE2ehlYKWCDVk1zZL+IDNvMhi3qIHp0eWCUD0xz4dPtGRwXW8
	3XjnUyW02mTzOlKKOtH8L1RfmMe3PWhf2Um5aezMoWrDU5HiZPBmdJIO1ASHD2ODqtk=
X-Gm-Gg: ASbGncs57S5SFpDdsCiFjoKxzMLMuua9l6A126GQ+w35tKNzjUHUWa9F/F9+llNz1IM
	gsKX3hYF1ApncbiF+U0GFGHGL4fWa7V4NIzKlVJcUGu9RqPr7IvkFWRnexqoIL5AuKZb4icNVkK
	cwkPYpkd7EqU0D9BfcFJVX62H5ZNbjpFDjQu+R2t2F6bIrndlYCYFSLX+fh6VcL2RZT9spva2br
	iwTPyf6UqOBxlhsMnF+mP5eOlclE8Q6dm8e07DlT1bkYEGkil3bSLxDIH6r5eAEK5EU21Erv5qj
	HZ8CWRLDpl+AqWlmWnDwgP+B/9BQ2DCHGZR2h0faI4Va716H+Nd7hDGW+1/H+x1SDBiC5FklV/B
	XJtlBMXYpO8Y8O+TP+W/wRbOdZHdz6mdwNSjbNUY09fAewq0fyL9PSeVS/GoSXklVU2GoI/jtWc
	mLYhnjfQ/QLL/KHacxp7hYGQ==
X-Google-Smtp-Source: AGHT+IHfQlkxOaBsnfDtOhaN9Eg9wG5LhwHH/6CgE2hK5xO5V/1h7VmoyWUWgcNESoHw3XrIzaUDgw==
X-Received: by 2002:a17:902:ebc7:b0:298:481c:cbd4 with SMTP id d9443c01a7336-2984eda4101mr66654135ad.26.1762998431452;
        Wed, 12 Nov 2025 17:47:11 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2ccae8sm4986485ad.98.2025.11.12.17.47.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 17:47:11 -0800 (PST)
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
Subject: [PATCH v3 08/22] mm: Allow page table accessors to be non-idempotent
Date: Wed, 12 Nov 2025 17:45:21 -0800
Message-ID: <20251113014656.2605447-9-samuel.holland@sifive.com>
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

Currently, some functions such as pte_offset_map() are passed both
pointers to hardware page tables, and pointers to previously-read PMD
entries on the stack. To ensure correctness in the first case, these
functions must use the page table accessor function (pmdp_get()) to
dereference the supplied pointer. However, this means pmdp_get() is
called twice in the second case. This double call must be avoided if
pmdp_get() applies some non-idempotent transformation to the value.

Avoid the double transformation by calling set_pmd() on the stack
variables where necessary to keep set_pmd()/pmdp_get() calls balanced.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

(no changes since v2)

Changes in v2:
 - New patch for v2

 kernel/events/core.c  | 2 ++
 mm/gup.c              | 3 +++
 mm/khugepaged.c       | 6 ++++--
 mm/page_table_check.c | 3 +++
 mm/pgtable-generic.c  | 2 ++
 5 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/kernel/events/core.c b/kernel/events/core.c
index fa4f9165bd94..7969b060bf2d 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -8154,6 +8154,8 @@ static u64 perf_get_pgtable_size(struct mm_struct *mm, unsigned long addr)
 	if (pmd_leaf(pmd))
 		return pmd_leaf_size(pmd);
 
+	/* transform pmd as if &pmd pointed to a hardware page table */
+	set_pmd(&pmd, pmd);
 	ptep = pte_offset_map(&pmd, addr);
 	if (!ptep)
 		goto again;
diff --git a/mm/gup.c b/mm/gup.c
index 549f9e868311..aba61704049e 100644
--- a/mm/gup.c
+++ b/mm/gup.c
@@ -2844,7 +2844,10 @@ static int gup_fast_pte_range(pmd_t pmd, pmd_t *pmdp, unsigned long addr,
 	int ret = 0;
 	pte_t *ptep, *ptem;
 
+	/* transform pmd as if &pmd pointed to a hardware page table */
+	set_pmd(&pmd, pmd);
 	ptem = ptep = pte_offset_map(&pmd, addr);
+	pmd = pmdp_get(&pmd);
 	if (!ptep)
 		return 0;
 	do {
diff --git a/mm/khugepaged.c b/mm/khugepaged.c
index 1bff8ade751a..ab1f68a7bc83 100644
--- a/mm/khugepaged.c
+++ b/mm/khugepaged.c
@@ -1724,7 +1724,7 @@ static void retract_page_tables(struct address_space *mapping, pgoff_t pgoff)
 		struct mmu_notifier_range range;
 		struct mm_struct *mm;
 		unsigned long addr;
-		pmd_t *pmd, pgt_pmd;
+		pmd_t *pmd, pgt_pmd, pmdval;
 		spinlock_t *pml;
 		spinlock_t *ptl;
 		bool success = false;
@@ -1777,7 +1777,9 @@ static void retract_page_tables(struct address_space *mapping, pgoff_t pgoff)
 		 */
 		if (check_pmd_state(pmd) != SCAN_SUCCEED)
 			goto drop_pml;
-		ptl = pte_lockptr(mm, pmd);
+		/* pte_lockptr() needs a value, not a pointer to a page table */
+		pmdval = pmdp_get(pmd);
+		ptl = pte_lockptr(mm, &pmdval);
 		if (ptl != pml)
 			spin_lock_nested(ptl, SINGLE_DEPTH_NESTING);
 
diff --git a/mm/page_table_check.c b/mm/page_table_check.c
index 31f4c39d20ef..77d6688db0de 100644
--- a/mm/page_table_check.c
+++ b/mm/page_table_check.c
@@ -260,7 +260,10 @@ void __page_table_check_pte_clear_range(struct mm_struct *mm,
 		return;
 
 	if (!pmd_bad(pmd) && !pmd_leaf(pmd)) {
+		/* transform pmd as if &pmd pointed to a hardware page table */
+		set_pmd(&pmd, pmd);
 		pte_t *ptep = pte_offset_map(&pmd, addr);
+		pmd = pmdp_get(&pmd);
 		unsigned long i;
 
 		if (WARN_ON(!ptep))
diff --git a/mm/pgtable-generic.c b/mm/pgtable-generic.c
index 63a573306bfa..6602deb002f1 100644
--- a/mm/pgtable-generic.c
+++ b/mm/pgtable-generic.c
@@ -299,6 +299,8 @@ pte_t *___pte_offset_map(pmd_t *pmd, unsigned long addr, pmd_t *pmdvalp)
 		pmd_clear_bad(pmd);
 		goto nomap;
 	}
+	/* transform pmdval as if &pmdval pointed to a hardware page table */
+	set_pmd(&pmdval, pmdval);
 	return __pte_map(&pmdval, addr);
 nomap:
 	rcu_read_unlock();
-- 
2.47.2


