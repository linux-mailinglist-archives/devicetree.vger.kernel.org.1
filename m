Return-Path: <devicetree+bounces-237878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2F9C5555C
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 02:51:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 56DAE34E3AA
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 01:48:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51DF02D249A;
	Thu, 13 Nov 2025 01:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="kI8E//OL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D21D2C3266
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762998425; cv=none; b=nmq58RvfZ2D4Y2+70lO8pmW+0DjEjWhWOOEoazwV5BgZh/glSRShQRzqFgYDPv3sIqfGrnN8IQpSlLwd6xNH2ZB/Z79ESxNMRBWX4GbOIDM0zXCzWTZpzpIzyuDV4KRIJ70ZM0CE9punR6gn89GPscOYcOdjJ/epzTnqK1HV8LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762998425; c=relaxed/simple;
	bh=ZJRXoNK6NlJYUiv4dcbkBDt1UpeLKJVItB0z0KLWp0g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qRPk4+fc7RnpDyA4NVZ5WlUh2uW5e0fRxWXcrBiChP4Ptj0eb99vzD3csudnmKG9DUAwzk/HX22Le2ODMX1K1o0Q42x94yu/eFQHqwKt1p/2z/GEnMY+eZFOpHZw+IaPUvWlhomzkfiPA6HePCQNITUXP1Q/xasDUIcnamLdA30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=kI8E//OL; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-29586626fbeso2735415ad.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1762998422; x=1763603222; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XK0WcjEaQwvPVjRkMLc2/R9gHzLJpbaLIGkWXKqwGcI=;
        b=kI8E//OLYgprPYYAWxaK/iZYHGJCDlRfu52jqs0FA4ZGHGM6//6lALhgIZpElHy4NV
         WvQRHk8ucHkaGjLWPC58687Ei27tca/f0w36pusrfm0rncfkFfMoQiC6rAP1tXeH7xq4
         e5JEks5JYEGxFAX+8E4mCNJjbrQjUneK0c8jmXTnrldfI47IprGVhWslj+eR0H03S1wd
         MneX7Q6Y56xEqdYCZmnB8JltUrv4T1UCm8rbj7uFF+ctRwtzUHMp3BSIXkJnWpACKlYB
         g6EVXS7v6dvrxiaw375lE3auJwTMO2R4tGsm1mCLMQkfwGnAsXlKWkX/UZ9EOd9OdBZn
         p4+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762998422; x=1763603222;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XK0WcjEaQwvPVjRkMLc2/R9gHzLJpbaLIGkWXKqwGcI=;
        b=YMkhg+Xt560hT/JtpTrl/HCXUt/ChoWGUdW6Haa6pCPQubbhgqoJLuLqVbPy8eAB4r
         iLdKcEDGFYVi4/ysH2916gGhj0KJ1sgB+gwfqsIzFv8yNouhUyLXhW276nS0+8HILK9L
         x1BYw+POLkDkxMkwxP6jxKUwBYkifS3ucylwjE5qvE7VDDip1AmNNDr7kV1ci5p4NgWL
         WBsylcABt2Q7nGJ7YuwTfMM3EBY7MX+lEBc89jSZNJ0qHkEcaDLzfFs7UGlJeGMvoySz
         yn3zLD218eLx1K2EVF4p7JZJMY7BfHrhxKuVAyfo2ohyUCiWn4oxBQyulUtjjm9PWNpL
         CRNQ==
X-Gm-Message-State: AOJu0Yx1EMBteD77buHk5zd7FM/APgIPuoLbuQCLPnW0e6OtLiblxbPF
	PpMzNiy3tIZ/0ttsIH+IuFNb9N19QAF0qGj2W79hgtRMUNi97/74NJeXSBnG8FwKHnw=
X-Gm-Gg: ASbGncsBXUXJGC32zgCyyqNldIhQGNmNDHIS43NFcl+fizJjw8HykDNa/yol24POeMD
	7SxQW8D8bwNWYFH4+cXeLxdpI9uQ0ZqqZqJURDO3/gDWHnFAb4f5qkeY8jaFed2yfvYgOq51v5B
	TCOtZrfXHB1sPzYgOFqRgEw83xQH8VbhsGoawcfFJOwfYeD49r38uixXcPNKlSUSHRU4wCHXKJJ
	yjgTvSLYKHXjDbtR68c7m+QbBW3wt2e+Nlk9TeH7p6a6EEbIBv87faUMOZLxeJClCa83U8sj1OG
	k0b0LPa7Xue9mioIRzBeFagYJve+RsFlOpqGxCSlGq3EDfiRiTcuPgnZDbbmsvV8ULMV68NZc5N
	EPT6tQOgDL8s5EWUkbS9Oi+H0xX5M0QJoMHuu1ExXjCDPNAq03cwmnZ9XQ+rP07UvYHC7S+B47Q
	shiXy3xML8P2ekp2WbRgWINw==
X-Google-Smtp-Source: AGHT+IGdLwQpJ+C02LpNGU1KZK8FopHeRZPwq9hf7+jq0mst5qCQq34alBPH74+bRQy7F+ajxgP+5A==
X-Received: by 2002:a17:902:dac3:b0:27e:ec72:f67 with SMTP id d9443c01a7336-2984ed27ec5mr64198655ad.6.1762998421878;
        Wed, 12 Nov 2025 17:47:01 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2ccae8sm4986485ad.98.2025.11.12.17.47.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 17:47:01 -0800 (PST)
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
	Anshuman Khandual <anshuman.khandual@arm.com>,
	Lance Yang <lance.yang@linux.dev>,
	Wei Yang <richard.weiyang@gmail.com>,
	Dev Jain <dev.jain@arm.com>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v3 02/22] mm: replace READ_ONCE() with standard page table accessors
Date: Wed, 12 Nov 2025 17:45:15 -0800
Message-ID: <20251113014656.2605447-3-samuel.holland@sifive.com>
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

From: Anshuman Khandual <anshuman.khandual@arm.com>

Replace all READ_ONCE() with a standard page table accessors i.e
pxdp_get() that defaults into READ_ONCE() in cases where platform does not
override.

Link: https://lkml.kernel.org/r/20251007063100.2396936-1-anshuman.khandual@arm.com
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
Acked-by: David Hildenbrand <david@redhat.com>
Reviewed-by: Lance Yang <lance.yang@linux.dev>
Reviewed-by: Wei Yang <richard.weiyang@gmail.com>
Cc: Dev Jain <dev.jain@arm.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v3:
 - New patch for v3 (cherry-picked from linux-next)

 mm/gup.c            | 10 +++++-----
 mm/hmm.c            |  2 +-
 mm/memory.c         |  4 ++--
 mm/mprotect.c       |  2 +-
 mm/sparse-vmemmap.c |  2 +-
 mm/vmscan.c         |  2 +-
 6 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/mm/gup.c b/mm/gup.c
index a8ba5112e4d0..b46112d36f7e 100644
--- a/mm/gup.c
+++ b/mm/gup.c
@@ -950,7 +950,7 @@ static struct page *follow_pud_mask(struct vm_area_struct *vma,
 	struct mm_struct *mm = vma->vm_mm;
 
 	pudp = pud_offset(p4dp, address);
-	pud = READ_ONCE(*pudp);
+	pud = pudp_get(pudp);
 	if (!pud_present(pud))
 		return no_page_table(vma, flags, address);
 	if (pud_leaf(pud)) {
@@ -975,7 +975,7 @@ static struct page *follow_p4d_mask(struct vm_area_struct *vma,
 	p4d_t *p4dp, p4d;
 
 	p4dp = p4d_offset(pgdp, address);
-	p4d = READ_ONCE(*p4dp);
+	p4d = p4dp_get(p4dp);
 	BUILD_BUG_ON(p4d_leaf(p4d));
 
 	if (!p4d_present(p4d) || p4d_bad(p4d))
@@ -3060,7 +3060,7 @@ static int gup_fast_pud_range(p4d_t *p4dp, p4d_t p4d, unsigned long addr,
 
 	pudp = pud_offset_lockless(p4dp, p4d, addr);
 	do {
-		pud_t pud = READ_ONCE(*pudp);
+		pud_t pud = pudp_get(pudp);
 
 		next = pud_addr_end(addr, end);
 		if (unlikely(!pud_present(pud)))
@@ -3086,7 +3086,7 @@ static int gup_fast_p4d_range(pgd_t *pgdp, pgd_t pgd, unsigned long addr,
 
 	p4dp = p4d_offset_lockless(pgdp, pgd, addr);
 	do {
-		p4d_t p4d = READ_ONCE(*p4dp);
+		p4d_t p4d = p4dp_get(p4dp);
 
 		next = p4d_addr_end(addr, end);
 		if (!p4d_present(p4d))
@@ -3108,7 +3108,7 @@ static void gup_fast_pgd_range(unsigned long addr, unsigned long end,
 
 	pgdp = pgd_offset(current->mm, addr);
 	do {
-		pgd_t pgd = READ_ONCE(*pgdp);
+		pgd_t pgd = pgdp_get(pgdp);
 
 		next = pgd_addr_end(addr, end);
 		if (pgd_none(pgd))
diff --git a/mm/hmm.c b/mm/hmm.c
index 87562914670a..a56081d67ad6 100644
--- a/mm/hmm.c
+++ b/mm/hmm.c
@@ -491,7 +491,7 @@ static int hmm_vma_walk_pud(pud_t *pudp, unsigned long start, unsigned long end,
 	/* Normally we don't want to split the huge page */
 	walk->action = ACTION_CONTINUE;
 
-	pud = READ_ONCE(*pudp);
+	pud = pudp_get(pudp);
 	if (!pud_present(pud)) {
 		spin_unlock(ptl);
 		return hmm_vma_walk_hole(start, end, -1, walk);
diff --git a/mm/memory.c b/mm/memory.c
index b59ae7ce42eb..0c295e2fe8e8 100644
--- a/mm/memory.c
+++ b/mm/memory.c
@@ -6690,12 +6690,12 @@ int follow_pfnmap_start(struct follow_pfnmap_args *args)
 		goto out;
 
 	p4dp = p4d_offset(pgdp, address);
-	p4d = READ_ONCE(*p4dp);
+	p4d = p4dp_get(p4dp);
 	if (p4d_none(p4d) || unlikely(p4d_bad(p4d)))
 		goto out;
 
 	pudp = pud_offset(p4dp, address);
-	pud = READ_ONCE(*pudp);
+	pud = pudp_get(pudp);
 	if (pud_none(pud))
 		goto out;
 	if (pud_leaf(pud)) {
diff --git a/mm/mprotect.c b/mm/mprotect.c
index 113b48985834..988c366137d5 100644
--- a/mm/mprotect.c
+++ b/mm/mprotect.c
@@ -599,7 +599,7 @@ static inline long change_pud_range(struct mmu_gather *tlb,
 			break;
 		}
 
-		pud = READ_ONCE(*pudp);
+		pud = pudp_get(pudp);
 		if (pud_none(pud))
 			continue;
 
diff --git a/mm/sparse-vmemmap.c b/mm/sparse-vmemmap.c
index dbd8daccade2..37522d6cb398 100644
--- a/mm/sparse-vmemmap.c
+++ b/mm/sparse-vmemmap.c
@@ -439,7 +439,7 @@ int __meminit vmemmap_populate_hugepages(unsigned long start, unsigned long end,
 			return -ENOMEM;
 
 		pmd = pmd_offset(pud, addr);
-		if (pmd_none(READ_ONCE(*pmd))) {
+		if (pmd_none(pmdp_get(pmd))) {
 			void *p;
 
 			p = vmemmap_alloc_block_buf(PMD_SIZE, node, altmap);
diff --git a/mm/vmscan.c b/mm/vmscan.c
index b2fc8b626d3d..2239de111fa6 100644
--- a/mm/vmscan.c
+++ b/mm/vmscan.c
@@ -3773,7 +3773,7 @@ static int walk_pud_range(p4d_t *p4d, unsigned long start, unsigned long end,
 	pud = pud_offset(p4d, start & P4D_MASK);
 restart:
 	for (i = pud_index(start), addr = start; addr != end; i++, addr = next) {
-		pud_t val = READ_ONCE(pud[i]);
+		pud_t val = pudp_get(pud + i);
 
 		next = pud_addr_end(addr, end);
 
-- 
2.47.2


