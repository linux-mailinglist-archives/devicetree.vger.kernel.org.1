Return-Path: <devicetree+bounces-237881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3D3C55574
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 02:52:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 80C3B34F30D
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 01:49:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 616E92D6E58;
	Thu, 13 Nov 2025 01:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="nXV6M/5G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544D42D595B
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762998430; cv=none; b=OXIMVMpxpI8BsVeRDbZrWIIGCzJtfm1lP8TSh+rrKqw9WAkx9zKMXTUFxCQHE9EtBqwNVXtysJRWqUGMeyB+oF2Ivr1kbEVFFU1svgeyq3Tt1n/Bmw7KbzA1YdOHLFqbolQ/LaBjnzG5vemsMPPefciPdD1DVG/1TuZaZeMS/+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762998430; c=relaxed/simple;
	bh=41A8tN6rl++qotcHaVWp474wXnOzdy2HP/mfIQAnWzg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DwkCtWzUtgP+h9sZJWi7shJjM4JxJNEL+ZycYjkPIlu6/9MU2bpBI71WoUwYzD40ljp83rebYKb6RiO41yQ5EFUXF2oGoRW+NuEuFi9//B4zVy/RSH1bzmDi193o0zhSg4MTOEg1vWTEKcj556AMAA1Fr4Shlt/ZIhp00XRfHko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=nXV6M/5G; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-29558061c68so3642295ad.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:47:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1762998427; x=1763603227; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VLUmTi++1HGkiLtqpPoIfkvNz5bT2yFaPhtAlSBbrkg=;
        b=nXV6M/5GiiTv/+TiOqJ0WSQwyw7vtitOEypvu5o/9/oOA+Lnedhdg7diU93xJZ5KtV
         9+zxCrmBdfMq6FioKn4gT5Ql3RkU9EUwXicLCADW6s/FIxqTu8k9gmV4LAA3F8Hf8TTf
         pJNNsTeH59vjvyJEfKWQLSL9uMYXfLYMHXUDaMiUUuLL3DoHSwKwwjqfX9lQjToS9uXV
         uE/lR5I3cvreYXG8sNDbsLZyZFa56miBYnN5fV6C5lJLZgOTwdnvNLmjzzRi5k7u9TvM
         lZBYsmCCTpvyG911gKuL9cbGBKHg0689k2k5aMWPNEfZinqAmJnmaG+P3WdchB2qv9B7
         LJAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762998427; x=1763603227;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VLUmTi++1HGkiLtqpPoIfkvNz5bT2yFaPhtAlSBbrkg=;
        b=aImW9UdHImTufhzaPkjTAXoCimx9l2YYJmPaoMJCFasgwI0gVSM9H4KKZQPLcyVF/5
         nuXBMbCr9t7UQbLFhAPf4PquExBc3pUeua1T9dJDHTAUgrkDoUa+trDhZFmFewPW0P39
         GgdjbE5pPezgXd5F3rJHx3c9OH3IA7vcm/wE1dO5ZkHFCVA1oYLCxvyagE04oULpe1/4
         V9Q+b+yfTrkF2E2CpFCrzs1geVE4qQCDnf+9wgqPb6pq702gIk4Z6GJ4ivlFtVZl2lfx
         wCW+wYb/B1F32CrsC9VvhaVsV1QrBwaQ/89l9EttLCHhToXcFcrP0ZSDK6zgjeL3cO/0
         X8RA==
X-Gm-Message-State: AOJu0YxrZkfDjs2itXEvIeaO/vODH61X5zLaNXDizI1kIlVdm+1Iy2k/
	T8Le6mhquE7JhsKQEjm+Xr39EzZ0j8iSFLkK80DMOGEdbOC12X3cHUacpv6M3zwuHP0=
X-Gm-Gg: ASbGnctBWFe4C+P1XUMkNb5+EPfaq1X/RHcjKQj9ZcroUC9OvYsK0y4b/vqjcybmWCK
	9XxcNqAU7pRWt4kvxycCddCf5JMWdDa4ZXhGVqy0iakFWGkg0albf2JRWVTTJYL2b4caImx/eMF
	9sCFTtEpLey/8ZgcPlI1TFi7Qnts2SOBF27S4QvS/Ng47UO3iFpee/mOpNDVDPpa4wB2FwDfdpr
	NTj06xDxHSbvOKtQ6JH7uDaDH/A5yicgYdJ3rf3gq8XcNtqNLcBV4z7nTBCHQSi/ZyMlYu9ytCm
	rvpHYehFH353BtI3Qd3QiTbcrBAxELJkGc7dGE8nP70JCq0y93mqlV3Wky7z0BTeSKX12RXoPHJ
	iXAhimay03QLQ1p0RfkWJkgK+tgvtfaXzVo8h5dDvqqk7Gt55m+K04qeVecxJlX0eSMDqX4phha
	DiEGKTVNj8Vxh1g4trHIb3Gg==
X-Google-Smtp-Source: AGHT+IGHyS+mDyrQaZDGXxDAQVdZw9gnQRb0FUGE5S/L7D9yFzt8E/UzPtcwSd6KHOBX5fl5Cq42AQ==
X-Received: by 2002:a17:902:e5c3:b0:298:3545:81e2 with SMTP id d9443c01a7336-2984ed359e1mr63898395ad.22.1762998426605;
        Wed, 12 Nov 2025 17:47:06 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2ccae8sm4986485ad.98.2025.11.12.17.47.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 17:47:06 -0800 (PST)
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
Subject: [PATCH v3 05/22] mm: Move the fallback definitions of pXXp_get()
Date: Wed, 12 Nov 2025 17:45:18 -0800
Message-ID: <20251113014656.2605447-6-samuel.holland@sifive.com>
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

Some platforms need to fix up the values when reading or writing page
tables. Because of this, the accessors must always be used; it is not
valid to simply dereference a pXX_t pointer.

Move these definitions up by a few lines, so they will be in scope
everywhere that currently dereferences a pXX_t pointer.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

(no changes since v2)

Changes in v2:
 - New patch for v2

 include/linux/pgtable.h | 70 ++++++++++++++++++++---------------------
 1 file changed, 35 insertions(+), 35 deletions(-)

diff --git a/include/linux/pgtable.h b/include/linux/pgtable.h
index 32e8457ad535..ca8c99cdc1cc 100644
--- a/include/linux/pgtable.h
+++ b/include/linux/pgtable.h
@@ -90,6 +90,41 @@ static inline unsigned long pud_index(unsigned long address)
 #define pgd_index(a)  (((a) >> PGDIR_SHIFT) & (PTRS_PER_PGD - 1))
 #endif
 
+#ifndef ptep_get
+static inline pte_t ptep_get(pte_t *ptep)
+{
+	return READ_ONCE(*ptep);
+}
+#endif
+
+#ifndef pmdp_get
+static inline pmd_t pmdp_get(pmd_t *pmdp)
+{
+	return READ_ONCE(*pmdp);
+}
+#endif
+
+#ifndef pudp_get
+static inline pud_t pudp_get(pud_t *pudp)
+{
+	return READ_ONCE(*pudp);
+}
+#endif
+
+#ifndef p4dp_get
+static inline p4d_t p4dp_get(p4d_t *p4dp)
+{
+	return READ_ONCE(*p4dp);
+}
+#endif
+
+#ifndef pgdp_get
+static inline pgd_t pgdp_get(pgd_t *pgdp)
+{
+	return READ_ONCE(*pgdp);
+}
+#endif
+
 #ifndef kernel_pte_init
 static inline void kernel_pte_init(void *addr)
 {
@@ -334,41 +369,6 @@ static inline int pudp_set_access_flags(struct vm_area_struct *vma,
 #endif /* CONFIG_TRANSPARENT_HUGEPAGE */
 #endif
 
-#ifndef ptep_get
-static inline pte_t ptep_get(pte_t *ptep)
-{
-	return READ_ONCE(*ptep);
-}
-#endif
-
-#ifndef pmdp_get
-static inline pmd_t pmdp_get(pmd_t *pmdp)
-{
-	return READ_ONCE(*pmdp);
-}
-#endif
-
-#ifndef pudp_get
-static inline pud_t pudp_get(pud_t *pudp)
-{
-	return READ_ONCE(*pudp);
-}
-#endif
-
-#ifndef p4dp_get
-static inline p4d_t p4dp_get(p4d_t *p4dp)
-{
-	return READ_ONCE(*p4dp);
-}
-#endif
-
-#ifndef pgdp_get
-static inline pgd_t pgdp_get(pgd_t *pgdp)
-{
-	return READ_ONCE(*pgdp);
-}
-#endif
-
 #ifndef __HAVE_ARCH_PTEP_TEST_AND_CLEAR_YOUNG
 static inline int ptep_test_and_clear_young(struct vm_area_struct *vma,
 					    unsigned long address,
-- 
2.47.2


