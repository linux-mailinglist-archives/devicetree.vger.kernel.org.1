Return-Path: <devicetree+bounces-224698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 377B3BC7258
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 03:59:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EDB2D3E5768
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 01:59:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE1F71B423B;
	Thu,  9 Oct 2025 01:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="aZ/d4XlC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 818CB1C84A2
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 01:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759975132; cv=none; b=o2wdBlh6omalNcAYFLTv8LkM9T86YxNpSSvyiGbyWvMcLHqjyKUptP/CB4cMKTyaaYO+1vFm/B6fVi5YD9tQU5CSSxxR80PN7TMjs1ojpk4aPYJuo+99ocEs1P3PzyJ766GWC86hpLAykyNLN0VRoXyelOe7Buz3uKI8T2+W+68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759975132; c=relaxed/simple;
	bh=IqUA0dv+AH6dHyrRvZgGbgT7I6zVi/nodo8FrJqLt3Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fMfm1ykfE2l7LiED72zTCaBo1yU6SJBclcFVseueBtHPAvWQYFecKFV2OCWvWhkS/0XKi/g+SVbkC4A3IX72AU5F3ZhItBjUnFF26gLZoVzWDvI1SMs0TGWTvK/2SKHTQbLV16f+eX2iOJ+1Ael93JA5qoQ1DgPtrtUKm4CmSE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=aZ/d4XlC; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b609a32a9b6so241847a12.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 18:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1759975127; x=1760579927; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lp2v9w2qTrkESoVDLPmv+GpD3nzqMphlK45S5OJoAnI=;
        b=aZ/d4XlCK3S3gjAVMIDj21Vyr8OO1/0MsQ509KBmUJFecwBNY87YtD9vOLYz2+SLYK
         mi+sW3ibbSqkV8JH+aUh5xFPzu9V5Pvb1T8SBi3iEcIX09+4wxOJ98+aOgVV5A6Pn4tE
         eKsMqHB5S/inPEQU1qnPwrhLXbV8I+AjAJSQm2437jpgMLmo91fH+ANHb7LGKYTkvcZD
         gNeEgd2D9Z5qMArC1tVG6JUFXgseLDW1TFsoLalzZeZcmir4mIwQvi1tHxBMMXPzacbZ
         7/AYI5UPAr5JtmcpvvWAt6fhGCepTIZ1HkxYmDMlNIRbq08OSxD7kdK6iXiyxbvg6/MG
         7aPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759975127; x=1760579927;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lp2v9w2qTrkESoVDLPmv+GpD3nzqMphlK45S5OJoAnI=;
        b=N/FJk63CXVcmEHsdUtz9SQv+FfEYeJeTqTkDpXztFQukPGnlzuqOM+1rMk+hwQiaED
         A9C8vs8DWUkpV9rDcWS3fORDA1s4soJ8SAcss4mVY9WL2/g4sh2o/uNWRza7BaxQcAOl
         uNd+WWwiLxr1suZkykknh3jOJ4H2b8Z8H5pXRz9JQnwr8g+TXVRIhZp9SOd6ABXL7I3a
         tofLc/ituZreNSNj85oHM3RZLFGjA61OsPVJIrgKmoFpE0u9LyAjMahU84voOw+IxGzU
         OHfk0pN4KnVD4tgll35oDHd9AWusaWA62YTGHsKryhlHYTJIXuemNBdgKSPNhXW/Gn4K
         3lNg==
X-Gm-Message-State: AOJu0YwYbsy/zFIGNrQtbc6RSkBlb+E5vV7q9v9Ceh2Ht+f2NlY5W7FN
	Yw8XFSFCyCXwtKhIVC8usKXOl5wQnTOX/l4bv97KoOTVy4QeGhMfkT/MBqWx5+RJJhI=
X-Gm-Gg: ASbGncuKUx8EFpjk74DGoKSJeet9b8iVfsNDJA7MvGjAJ+9gjsNJR+d4hd76v4KYsM7
	9Fa3+FB/KP9KMDUzscGbcpwGeCE+Sqfrrhv7pdelpjspHYpE6yJzBxkHTxDUXEi3Bp7XFCnhe3g
	A09I+ROe+nYOgVTXud2YljnTrVz013FnXmn+1otWKev3R4pT3S01ETyQSkbi+ExOhCEPd3AszlN
	rU1pq46JjYI5eNI/e9IXmzU9fBZbwXSMziVSIF56EkB1avqLu8axzx8lQwo49VIcSksMbQTPYbx
	9INCI4sMHv2wRjAPC7tHsJyc4nHixu6BKl3red0J9FmDz+MHLCih0bRBqrV5VRbH7TMHqaRd4nI
	MQUXfQJaevIC59o13mIy8pFxj28D+w/h6hbrEVR2tJHj4DIRJvUZxdo1bFm5CDL8hs/O+QjV7ID
	Ut0u4=
X-Google-Smtp-Source: AGHT+IE+agqXEhLEONLyA5d2qyFrvAw1S+1pygAwMmWTwUwpcKU01+ZnN2Cp743AX1wJ7euQQmxe/A==
X-Received: by 2002:a17:903:2292:b0:24c:bc02:788b with SMTP id d9443c01a7336-290272e3debmr85255285ad.44.1759975127215;
        Wed, 08 Oct 2025 18:58:47 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de53f9sm11033585ad.14.2025.10.08.18.58.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 18:58:46 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>,
	linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mm@kvack.org,
	Conor Dooley <conor@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Andrew Morton <akpm@linux-foundation.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v2 05/18] mm: Allow page table accessors to be non-idempotent
Date: Wed,  8 Oct 2025 18:57:41 -0700
Message-ID: <20251009015839.3460231-6-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251009015839.3460231-1-samuel.holland@sifive.com>
References: <20251009015839.3460231-1-samuel.holland@sifive.com>
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

Changes in v2:
 - New patch for v2

 kernel/events/core.c  | 2 ++
 mm/gup.c              | 3 +++
 mm/khugepaged.c       | 6 ++++--
 mm/page_table_check.c | 3 +++
 mm/pgtable-generic.c  | 2 ++
 5 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/kernel/events/core.c b/kernel/events/core.c
index 952ba4e3d8815..d75be3d9e0405 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -8142,6 +8142,8 @@ static u64 perf_get_pgtable_size(struct mm_struct *mm, unsigned long addr)
 	if (pmd_leaf(pmd))
 		return pmd_leaf_size(pmd);
 
+	/* transform pmd as if &pmd pointed to a hardware page table */
+	set_pmd(&pmd, pmd);
 	ptep = pte_offset_map(&pmd, addr);
 	if (!ptep)
 		goto again;
diff --git a/mm/gup.c b/mm/gup.c
index f5676a3aa525d..34d1b59bd59c1 100644
--- a/mm/gup.c
+++ b/mm/gup.c
@@ -2865,7 +2865,10 @@ static int gup_fast_pte_range(pmd_t pmd, pmd_t *pmdp, unsigned long addr,
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
index acc620158696e..d8c22ef8406bd 100644
--- a/mm/khugepaged.c
+++ b/mm/khugepaged.c
@@ -1731,7 +1731,7 @@ static void retract_page_tables(struct address_space *mapping, pgoff_t pgoff)
 		struct mmu_notifier_range range;
 		struct mm_struct *mm;
 		unsigned long addr;
-		pmd_t *pmd, pgt_pmd;
+		pmd_t *pmd, pgt_pmd, pmdval;
 		spinlock_t *pml;
 		spinlock_t *ptl;
 		bool success = false;
@@ -1784,7 +1784,9 @@ static void retract_page_tables(struct address_space *mapping, pgoff_t pgoff)
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
index 31f4c39d20ef9..77d6688db0de9 100644
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
index 63a573306bfa2..6602deb002f10 100644
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


