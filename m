Return-Path: <devicetree+bounces-237885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3DFC5553E
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 02:50:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D572C3A3488
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 01:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 350732E11D2;
	Thu, 13 Nov 2025 01:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="LFP/Xo9j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9877B2DCF69
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762998435; cv=none; b=jTWbzxvUYuJVnJblblJoJEO6rFoVcxjEw9YwHymsdOUIg+ME2IO5waO/uSYFJJJwCLtAPfDber7QrgtNMgr8s/C7sG9jcF4zxe3P08xVMMM1moIzN+hDxvdH71ybAZMawyJ/4iuyccwecpIOI91nxbXy56w1B4TXC+22+7rAPGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762998435; c=relaxed/simple;
	bh=gTvtvYKDEfGV0F0vdSkFMjg0H8V74zQ4iEre+dvdH9s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cyriL0O/swUK3NONQPuMwneHyhGUTO5Iv92hBmbpkM0iN0Vzvd5bnvkVi9OOxTqL3zFp1Rb0h6O5O74wIwM4MEDtLquqYPz/NDBXmzL+pMAHn9GFI6nDLbhr6Biz3nbvuU/tIolhTBcnAeVLZqyIgiZZuBYXkVQAl/hl9oaOZ0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=LFP/Xo9j; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2964d616df7so3357985ad.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:47:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1762998433; x=1763603233; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ZA59qppRNlQ/gH4ZwlxZVtJjkZuT0TezTthNgG0I08=;
        b=LFP/Xo9jV2BPmMa1u4Yj/sisH2pM7mF3IoPo0pV7BIQ/+mASz4aNMPeeOwAECTqHPQ
         6zRf3+bJ24Pu8+c9AXlVbDZ7D+djFEIaTRIAt0fHxPN49v5Zpv8tMWJivg5pzVTKRAjc
         9Q5cZcNWGrpacLUrSWqSZgy7YJ0lXTHpTJ7rjF0qaIkNQAXyVTxLnCVXk5yp+VGdBpfx
         rdRyH6xNREkiPHo8b+SFSoBzHliyeSV52FFY59ScFApq8bw9C4Wkikv0d2HxSJoY6yzA
         YuPuAk+XPHUuBhy6MiRTJyfiW4iHuXhVS8WiVeiuZKqNpVMta27kkoAWNHB4yitVZM4u
         TcnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762998433; x=1763603233;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4ZA59qppRNlQ/gH4ZwlxZVtJjkZuT0TezTthNgG0I08=;
        b=ITYfEobfdxn5DghPGh5dtLmvBGe2jyFyH4cQ8cYipsGNIhP/2NuhmPqxTdofSoDrFM
         kUPKI+nrY+EfgTtUXk4gImPbw0TYpBC77efMSmVY1XLZYvhw5Iv3ZAvCnFz/0yTEyLEw
         68Kzeko8WUh2hQn9hnCwU7Wh7bbNY+Ny8yaO9FygAKNXWnRs2RCmfXJfrRJRe0zemQzC
         S0cQXjaAb4LDdEmL6yRBsfBRwc6KXb8w/yntGglG+wvcn6feq+PliU1W5uTH2Iv6+LFy
         ov7ro2cNPLjIzkm15CHITiiuONlbTe+3939Oe5nueUM7j9KWHxr11FKzgCT+rh/7zKwF
         F2Jw==
X-Gm-Message-State: AOJu0Yw3HmpkSf8UeU54C2YJ7zOq3/pj2YjBMwzB4AYRYj4QbKniRKnH
	8nGoQEV2F/b68qqaky00rTR1BfwFml+JiBOQfgEK3bPkFfLR8E5IPF51zdNpEOVRCRA=
X-Gm-Gg: ASbGncvQUtOIoM9kskOEOxM83uLGX8+6PlT3xmC54ZVXPQSFgDJDfyt8Z4KvLRibDzs
	B0b2Mu3HN+xDekSL7/UVGgVfX1nxGZTsfYvk1taB1pE2g8Y6gTUAOU11hctXIUbBVAKEk8RlKxV
	6TohQm4F1dkqyzigjQ+r/wirntk0yZKZhmfCKpcp921F66QQWlvSoAXlv8UdjpOz8pDjJvgyeM+
	ti8bGqwyP09hBRVFjkyAh8JAK2uG4AJO9QJ8q8T8vJNM0cP5e8dO1/lzOS69DTouE4TEtl8g5eq
	HV8ye3INiWQmOdIjoNoUB2Mf06iR34r3d2KYRU99odGvxO6aqOWU1puavzIfQtUmJA392eIEIxm
	vuwRmRgXglh/CXw4Qf7gm3jIXEYsEOuhusq+UYdMVBqRPV5WtGA7OI2R/9Ec4eiUI5YkYhyjUYp
	Fvl6CxRwaCC9E+v3FgBeW1QmSrGMQDD8vn
X-Google-Smtp-Source: AGHT+IEls7n+vPL3afsY1HaiLuKxeTZ1hxOSzGPwxU5ZDyX/ao4U4NfMKSzGsMG6BjM8vErLRKhy9g==
X-Received: by 2002:a17:902:ccd1:b0:295:7806:1d7b with SMTP id d9443c01a7336-2984eddee65mr65789335ad.45.1762998432890;
        Wed, 12 Nov 2025 17:47:12 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2ccae8sm4986485ad.98.2025.11.12.17.47.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 17:47:12 -0800 (PST)
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
Subject: [PATCH v3 09/22] riscv: hibernate: Replace open-coded pXXp_get()
Date: Wed, 12 Nov 2025 17:45:22 -0800
Message-ID: <20251113014656.2605447-10-samuel.holland@sifive.com>
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

Use the semantically appropriate accessor function instead of open
coding the implementation. This will become important once these
functions start transforming the PTE value on some platforms.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

(no changes since v2)

Changes in v2:
 - New patch for v2

 arch/riscv/kernel/hibernate.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/riscv/kernel/hibernate.c b/arch/riscv/kernel/hibernate.c
index 671b686c0158..2a9bc9d9e776 100644
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


