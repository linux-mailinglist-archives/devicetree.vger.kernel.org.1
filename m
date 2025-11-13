Return-Path: <devicetree+bounces-237877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E8347C5551A
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 02:48:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 096324E1A2B
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 01:48:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D39A92D0615;
	Thu, 13 Nov 2025 01:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="m2cOb9ge"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F647298CD5
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762998422; cv=none; b=twMR3eSg6u4Ja6nRWbtIW5be68bsQ3/j2fXqzw43PfLNGkFtIb4Tr5iCw4P9upz5gWQFiPh0mfO4UrOnyISgT/Lo/pQNM9shkUqENhS7nbs0VEwEygbTlrDrWzJRsuqeNmfmnZ0SkqHxzkx6m4K64bJtTPX+NgvFN1bHRFZQX5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762998422; c=relaxed/simple;
	bh=1EDzMrT2p5RjNDiZ7EGuCfhBKoian8SUlheWdpdCA0c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pAlUEKZr+mgCwL3jS0AP6YPx9slBWSQfroerH4wq0Au0mXzJR+eF3EiOgj+icpUJacsvM972k8s6OPK8X+XiXQoFXiRjJuqnsPhlAsLPQanam49EPlpUrONZiO54o4zreIqWSjonr1ly7ZOoGOrS7Ei4hbjv+++aWfk+pxf676Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=m2cOb9ge; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-b99bfb451e5so177137a12.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:47:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1762998420; x=1763603220; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YdtMIGVZlv4MisNDb9tnVG+/irsKPLGgILycxKzmm5k=;
        b=m2cOb9gewcYeRe0uSWNX8VnNbQwSoYr2Vu+NjMWOCbHdhApXR8kNsQ93P9BR6I0OtP
         +HSZnsXUGClf/ze19w1y0BT7pdeFhS855REK1RJOZX9EPtPS7RiOZuMu11YFM6TTbXUW
         5Xb020+nO5doMsVt51Kp0vPw0PoIQ+3KNDmghP+9/EJNHEvtgkd40ljJ0Sx1RfFZUe+b
         c2EmRDPshXKSCNLN2OKmHwOTvcTXYd5GaJ+Sa2itSk5dDcjJJP97o6tYInOzLwsg6MqF
         mG49GN3hIouo6UtnuVWjO/HupFnx+rPandxe+0MKR7V6iLpxv30BWmeTWVRd0LLj7jkN
         54VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762998420; x=1763603220;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YdtMIGVZlv4MisNDb9tnVG+/irsKPLGgILycxKzmm5k=;
        b=NkSmLpYLmetq2j05Cgs0H4G5FNQC20D4lUkxn0Gl2g9dlvSyeZrZRhwa6xC8H5mfrM
         pRMdZ38vsDJ8TAGrHiq8P0P8QVPhqqD2UXM6lxag7gn3ZokOCN71iD+Oe/r0qM+6gygV
         EKFU06gF6MQJV5P8ruNas75xoaJJoaAEbwe78DMsEuVG8s4hsr4+2epDDcbGJW1ZuLk5
         E7Br2aI82ZljgreOB78JdXMzE6S2+TW5v/UlIGac4xcoigmSc+phXmlmqING0pMj2DyP
         HomVnNbi0TCF0Y6g0676S0Z48rrGr2Ou2pvPeYTa6j76t6vCPxrAapMosibS+SH94jX+
         rbag==
X-Gm-Message-State: AOJu0YwnDyfCxFlHiD6jNgESDTbummWb2eRvStfQcMSO9IgchLfK7SsE
	2jch7zk8PnkkhppBg5hMgf1ELY7DUHc7RxUVBuztuqNjVF5p4aaBL62eyEPNxAIKOHc=
X-Gm-Gg: ASbGnctUnN5IWhU3HhannPqPT0W2wdgOYlZ/W7AIfAeVWeqAfYZdHioLAJNlIiL38r4
	h8eGRsrFXBxcXShuzMrWX9SZVynnlz0D2WQHiHPRG7zgjBcU44FJdd0n00ACoJ14glM1jZnGSSo
	A1xGFB1FzO5KkKLucy2ypY+5AO3TFiSmE6fp3wiuK1u1jHHHe5li4enjZ8rT5ZG6F87CyzGIu5e
	WF0IiHaPQMo7zC8CPYFZYmpqaO48iCMF3KMFlDygUbmNk4r5bVz4DJh4PqY4keWSn7j/QdJ95+U
	TL9G9+TRD2ihQtpPoxYrmIir68VB0JwawLTY3EmLi/bJCNy5Lug4p39wNrVFyiXvvqmWkAWWDVA
	p6STo0h1+tqFL+TucImHtHPaAPNcTzOi45lh7S4POh6qxKZARV00RkwwQAnOwrNOW+sW32WjGZX
	eGbAVlUV7LgQ4Bd4NNJYNG9A==
X-Google-Smtp-Source: AGHT+IFYjWF2Je2zdGG5G71XUhLWD4KFs37feNtxzRSLtVmw8LZxUlSD+Pjrpw1Q7n3dWJ2wHP2y9w==
X-Received: by 2002:a17:903:3c64:b0:295:3e80:9aa4 with SMTP id d9443c01a7336-2984ed46fcamr62445305ad.22.1762998420290;
        Wed, 12 Nov 2025 17:47:00 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2ccae8sm4986485ad.98.2025.11.12.17.46.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 17:47:00 -0800 (PST)
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
	Dev Jain <dev.jain@arm.com>,
	Lance Yang <lance.yang@linux.dev>,
	SeongJae Park <sj@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v3 01/22] mm/ptdump: replace READ_ONCE() with standard page table accessors
Date: Wed, 12 Nov 2025 17:45:14 -0800
Message-ID: <20251113014656.2605447-2-samuel.holland@sifive.com>
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

Replace READ_ONCE() with standard page table accessors i.e pxdp_get()
which anyways default into READ_ONCE() in cases where platform does not
override.  Also convert ptep_get_lockless() into ptep_get() as well.

Link: https://lkml.kernel.org/r/20251001042502.1400726-1-anshuman.khandual@arm.com
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
Reviewed-by: Dev Jain <dev.jain@arm.com>
Acked-by: Lance Yang <lance.yang@linux.dev>
Acked-by: SeongJae Park <sj@kernel.org>
Acked-by: David Hildenbrand <david@redhat.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v3:
 - Replace patch with cherry-pick from linux-next

Changes in v2:
 - New patch for v2 (taken from LKML)

 mm/ptdump.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/mm/ptdump.c b/mm/ptdump.c
index b600c7f864b8..973020000096 100644
--- a/mm/ptdump.c
+++ b/mm/ptdump.c
@@ -31,7 +31,7 @@ static int ptdump_pgd_entry(pgd_t *pgd, unsigned long addr,
 			    unsigned long next, struct mm_walk *walk)
 {
 	struct ptdump_state *st = walk->private;
-	pgd_t val = READ_ONCE(*pgd);
+	pgd_t val = pgdp_get(pgd);
 
 #if CONFIG_PGTABLE_LEVELS > 4 && \
 		(defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KASAN_SW_TAGS))
@@ -54,7 +54,7 @@ static int ptdump_p4d_entry(p4d_t *p4d, unsigned long addr,
 			    unsigned long next, struct mm_walk *walk)
 {
 	struct ptdump_state *st = walk->private;
-	p4d_t val = READ_ONCE(*p4d);
+	p4d_t val = p4dp_get(p4d);
 
 #if CONFIG_PGTABLE_LEVELS > 3 && \
 		(defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KASAN_SW_TAGS))
@@ -77,7 +77,7 @@ static int ptdump_pud_entry(pud_t *pud, unsigned long addr,
 			    unsigned long next, struct mm_walk *walk)
 {
 	struct ptdump_state *st = walk->private;
-	pud_t val = READ_ONCE(*pud);
+	pud_t val = pudp_get(pud);
 
 #if CONFIG_PGTABLE_LEVELS > 2 && \
 		(defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KASAN_SW_TAGS))
@@ -100,7 +100,7 @@ static int ptdump_pmd_entry(pmd_t *pmd, unsigned long addr,
 			    unsigned long next, struct mm_walk *walk)
 {
 	struct ptdump_state *st = walk->private;
-	pmd_t val = READ_ONCE(*pmd);
+	pmd_t val = pmdp_get(pmd);
 
 #if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KASAN_SW_TAGS)
 	if (pmd_page(val) == virt_to_page(lm_alias(kasan_early_shadow_pte)))
@@ -121,7 +121,7 @@ static int ptdump_pte_entry(pte_t *pte, unsigned long addr,
 			    unsigned long next, struct mm_walk *walk)
 {
 	struct ptdump_state *st = walk->private;
-	pte_t val = ptep_get_lockless(pte);
+	pte_t val = ptep_get(pte);
 
 	if (st->effective_prot_pte)
 		st->effective_prot_pte(st, val);
-- 
2.47.2


