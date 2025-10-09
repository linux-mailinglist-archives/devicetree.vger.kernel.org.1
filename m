Return-Path: <devicetree+bounces-224699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F22DCBC723C
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 03:59:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DCC6319E2C82
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 01:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B0B41D9A5F;
	Thu,  9 Oct 2025 01:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="l+05RqgV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 817EF1C5F27
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 01:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759975132; cv=none; b=iLRFhtga077bR+Q7smXIFKS3K0iA76gILXM4OuXbBHhQ/96yKlzOiwIL3zOFMnlnTnypXZudQuD3EMb8N1hl52JVSraUzQ8lL1PycdbKuX2TZsoyJQSoLZ4u4sYpjmQf0980DVSmkHz8z9LB23UGu7gfTLfU8F73RlR+6Rdx1j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759975132; c=relaxed/simple;
	bh=JToLDcRZxGaoKV6Cshpomz9lhG2Xncz3Z1ANpC9FVg8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=J+7jPteQ5BxMiZh1Vo3Pl0fc5dIwAl+54Wsh0FxUBVdon11IgXFSn4jPsmEMEguaABxt3w4gUqeobVKIY8nw648Iy3ibkdjMNCU164CdISRhICTSX9sLjXUCy0hR/tMOJj69mmi3LLeUIS1rCzdvPL7FNxZNO3O2XWfKg0Y1PpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=l+05RqgV; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-330469eb750so629382a91.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 18:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1759975128; x=1760579928; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Q8oT6hoS6cxQomKzX1vfx1V3ZAPioXY327lRhg5E1A=;
        b=l+05RqgVIwIXv+OUSag/0TRBfDG2yYKZ3XHL1eg4seC/XgfS4J+gsJ0OcI8VJwjTsi
         uqa+reGh9TWXfq0Hq1UF/5bXpzuIrHV6d7n1SHw2ozkfR6W4MUW99e2O0AAYColoTjYy
         /T5rW6bm9EHyBg76iCw3lr/ngf2c7nk0qgTXqlDmQlmgHeAxyx8EEk6jEsOiRyN6aimI
         dk4VVjg++bymaroZiXPrcYkJNjutdCbKyrMGyAQGiKLgekIV55OQQg7PyRczalXcYSaV
         DeHK9q2eftatI+LM5PEVZxnx+b4kPom2hT2kgl6pSzCWhebHUuOO8eNZRwwFS5sm3SwF
         mc3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759975128; x=1760579928;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Q8oT6hoS6cxQomKzX1vfx1V3ZAPioXY327lRhg5E1A=;
        b=lV/kbi3IxJlwGEDcBv+1g/M48GQjXnuSO9wklbBM+TQ9Uben6y1WMM39L8TQ8YZEoS
         Ac+v0A+lwlUSsZiK2XLmVD4DiLbKBWzSdcfIo5qTvbyA5sDaft6/X74Pb52NKTBxSgAG
         1m8h7y3IfmTyM96gRe3jSNA6wtLDJTvDsWe/eUOz37mEKzQorB6kFzViLH1Sy04JMP6y
         pXqitTOM+5WXG2TF9xvIQadndF26SXHaSTAJFliq4Cs9SaMA8BUGgT2mOEoy4mGkwlKH
         /mX1tBclDUJK4qZvUH2gE6ZhYpA9VB8CHGsKoV7i3hZABJ15aiA2eaHDUfouao8J/AXH
         bBEA==
X-Gm-Message-State: AOJu0YzmTtTiUaM6QACCjR+Ng24d14e35KIyfwVRyhw+MTB9Ph016sA2
	/nHgT9wNRLmfkMICbaroU91YOa8/yutslpkAGoHPze6fVrmeOZtFziLichIy4tpCSgCMPQBeuTD
	DggGZ
X-Gm-Gg: ASbGnctBZAghx6FYIuKewbxZB0/I+G4jUggJIXA5tkkUSTK+6IcJAuaUPTDofYWVwqu
	5Wor6laFMI6JWRcDbS7OQzPs0CMgeiUyyQrOf53TsnoGV40lR7kHidj5J/gT6xSMSgBBK38Mx4A
	BRczQGQjGubvMXbj+2o9F1g+yI8JHQ/Y/5GXEsVQIUwRKxg5wMQa6x02gyvz+UXISDH7h0cE73r
	OoXk7TBIu4oPyhEGsHwapCOYdBY/0QBvcTvu8xQULFH4DcPNFz2/58porkjnEqTX8roSbal5Ptd
	0RwOXWA3qZEqq3BPR7F1cSo/plkDnDzihxE3grCQiIZQC8kr70wibUSSl0MN3qmMtYBpSiJpD+D
	CQV7a9xpHf5BnFEGg5x9LA6YPJshUgexDaAcQbVsPNgICnJyfQVxDTxM/wivaLZ7kFpVcZ7jc19
	4ytuw=
X-Google-Smtp-Source: AGHT+IHLtMfpsASWG7S0cjFNRLXUMrAvJHuz2m4ALPRQp+i8q8lJn/YDkN/bQbSK1wXLrkajg3vnmg==
X-Received: by 2002:a17:903:11cf:b0:269:63ea:6d4e with SMTP id d9443c01a7336-290272c1aa5mr61891525ad.37.1759975128385;
        Wed, 08 Oct 2025 18:58:48 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de53f9sm11033585ad.14.2025.10.08.18.58.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 18:58:48 -0700 (PDT)
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
Subject: [PATCH v2 06/18] riscv: hibernate: Replace open-coded pXXp_get()
Date: Wed,  8 Oct 2025 18:57:42 -0700
Message-ID: <20251009015839.3460231-7-samuel.holland@sifive.com>
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

Use the semantically appropriate accessor function instead of open
coding the implementation. This will become important once these
functions start transforming the PTE value on some platforms.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v2:
 - New patch for v2

 arch/riscv/kernel/hibernate.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/riscv/kernel/hibernate.c b/arch/riscv/kernel/hibernate.c
index 671b686c01587..2a9bc9d9e776e 100644
--- a/arch/riscv/kernel/hibernate.c
+++ b/arch/riscv/kernel/hibernate.c
@@ -171,7 +171,7 @@ static int temp_pgtable_map_pte(pmd_t *dst_pmdp, pmd_t *src_pmdp, unsigned long
 	pte_t *src_ptep;
 	pte_t *dst_ptep;
 
-	if (pmd_none(READ_ONCE(*dst_pmdp))) {
+	if (pmd_none(pmdp_get(dst_pmdp))) {
 		dst_ptep = (pte_t *)get_safe_page(GFP_ATOMIC);
 		if (!dst_ptep)
 			return -ENOMEM;
@@ -183,7 +183,7 @@ static int temp_pgtable_map_pte(pmd_t *dst_pmdp, pmd_t *src_pmdp, unsigned long
 	src_ptep = pte_offset_kernel(src_pmdp, start);
 
 	do {
-		pte_t pte = READ_ONCE(*src_ptep);
+		pte_t pte = ptep_get(src_ptep);
 
 		if (pte_present(pte))
 			set_pte(dst_ptep, __pte(pte_val(pte) | pgprot_val(prot)));
@@ -200,7 +200,7 @@ static int temp_pgtable_map_pmd(pud_t *dst_pudp, pud_t *src_pudp, unsigned long
 	pmd_t *src_pmdp;
 	pmd_t *dst_pmdp;
 
-	if (pud_none(READ_ONCE(*dst_pudp))) {
+	if (pud_none(pudp_get(dst_pudp))) {
 		dst_pmdp = (pmd_t *)get_safe_page(GFP_ATOMIC);
 		if (!dst_pmdp)
 			return -ENOMEM;
@@ -212,7 +212,7 @@ static int temp_pgtable_map_pmd(pud_t *dst_pudp, pud_t *src_pudp, unsigned long
 	src_pmdp = pmd_offset(src_pudp, start);
 
 	do {
-		pmd_t pmd = READ_ONCE(*src_pmdp);
+		pmd_t pmd = pmdp_get(src_pmdp);
 
 		next = pmd_addr_end(start, end);
 
@@ -239,7 +239,7 @@ static int temp_pgtable_map_pud(p4d_t *dst_p4dp, p4d_t *src_p4dp, unsigned long
 	pud_t *dst_pudp;
 	pud_t *src_pudp;
 
-	if (p4d_none(READ_ONCE(*dst_p4dp))) {
+	if (p4d_none(p4dp_get(dst_p4dp))) {
 		dst_pudp = (pud_t *)get_safe_page(GFP_ATOMIC);
 		if (!dst_pudp)
 			return -ENOMEM;
@@ -251,7 +251,7 @@ static int temp_pgtable_map_pud(p4d_t *dst_p4dp, p4d_t *src_p4dp, unsigned long
 	src_pudp = pud_offset(src_p4dp, start);
 
 	do {
-		pud_t pud = READ_ONCE(*src_pudp);
+		pud_t pud = pudp_get(src_pudp);
 
 		next = pud_addr_end(start, end);
 
@@ -278,7 +278,7 @@ static int temp_pgtable_map_p4d(pgd_t *dst_pgdp, pgd_t *src_pgdp, unsigned long
 	p4d_t *dst_p4dp;
 	p4d_t *src_p4dp;
 
-	if (pgd_none(READ_ONCE(*dst_pgdp))) {
+	if (pgd_none(pgdp_get(dst_pgdp))) {
 		dst_p4dp = (p4d_t *)get_safe_page(GFP_ATOMIC);
 		if (!dst_p4dp)
 			return -ENOMEM;
@@ -290,7 +290,7 @@ static int temp_pgtable_map_p4d(pgd_t *dst_pgdp, pgd_t *src_pgdp, unsigned long
 	src_p4dp = p4d_offset(src_pgdp, start);
 
 	do {
-		p4d_t p4d = READ_ONCE(*src_p4dp);
+		p4d_t p4d = p4dp_get(src_p4dp);
 
 		next = p4d_addr_end(start, end);
 
@@ -317,7 +317,7 @@ static int temp_pgtable_mapping(pgd_t *pgdp, unsigned long start, unsigned long
 	unsigned long ret;
 
 	do {
-		pgd_t pgd = READ_ONCE(*src_pgdp);
+		pgd_t pgd = pgdp_get(src_pgdp);
 
 		next = pgd_addr_end(start, end);
 
-- 
2.47.2


