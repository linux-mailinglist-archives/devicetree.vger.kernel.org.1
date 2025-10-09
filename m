Return-Path: <devicetree+bounces-224697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B04F2BC7246
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 03:59:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1301C3E4DD1
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 01:58:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 258821B4223;
	Thu,  9 Oct 2025 01:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="axp07W5U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BADB91A255C
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 01:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759975128; cv=none; b=pUfcVL6PeByFkgek/A9RCbqTi9wgzpndxObSIAR00Qr37ojGrWgA4Ff/FX6IaUjeM0P7c610MMMEXwmn9EITxS24WftUblP0Pxl2T3qle9nZiLOPXXVTQ10EscwSoqDwi100ThPn0QwwWvyADyEHa+T7zczMgReyKYjuTXeO6j0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759975128; c=relaxed/simple;
	bh=dnp0XWypO1Jm0LkDyhIDPv0l8JLiriuPVPkLklG6MQc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CR3NDfkM1qIFXUv/773ucYrzaUy2rmvX8AntJJn7Kb2Zp0q5fCrPXWb2qWGpgh8oguHbU5p1oFYCKU1Ht2CJBoZSmfxxRDRIXqjTjN7irgjHU7kf0llN+9B/Nqp4wO8MvRbJ3vFjci8O1DbJqBjKL9nD/vLW/Qk8makfPGy3elA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=axp07W5U; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-b609a32a9b6so241825a12.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 18:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1759975124; x=1760579924; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MuPyEQssKNBDDveegAkkBylsREkSVusKsPA4YXKPGPk=;
        b=axp07W5Ukzs4+Fnkb87WtayJUzpFF1dtxIU8fBV1VpmfiTJHznbxWu10LDBEc+JniS
         PwTZ2cjNsSaunGs/+Fx2FIC5PliEjIN04Be1VZF58J1INejBPAXXZhMUC+X0zUy1CEXm
         sDDcRvBant3MsDcpNk+wydfVCew8b77oFEXV/+tXOaRSTpz42hDC+6seDp1/VcdEHmQo
         a2Jozg/cbtmXpzV1oehv9FtkjGGeOAjVxoUABjDPS+WjuiI0yGanwwTRqPM7C0Sr30PU
         g0BKEUsKZkn1OeyNxLZBQQ4FESZabMRx6MFZLelWJjnB3HPXmoniIyE2BDicTdEtB1hj
         gXnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759975124; x=1760579924;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MuPyEQssKNBDDveegAkkBylsREkSVusKsPA4YXKPGPk=;
        b=XfXhjtRinItwrmMpv91cFqWXG5Sx/YA//vI+/WjtMQqeBvoccuBpjEk5nDeuVF/3KP
         cem439SOg1m3ELOCjs5aZVy5JmIzohDLu67FLClGqcUlC55gCXkswsW0uZmJIg05Q9hx
         WILplanPyt/oizMrRUuaiS8F0/6Z6wJBljG8+FzQuuAuQUpM0K0kmgRlshudvf4NQBmy
         FsLsN21N8s6MP0RPi+XgpQ7kMapY6pDkqzBfmltkWNLF1HgTVzAyB3ImaF8e8UavKXC2
         y2hXmaM4DEoFC5zqu+xDkFCAWuVlDAPj4ZmO1R/HPr8Og+B30nfZweOCjSI15BESVqyE
         vXdQ==
X-Gm-Message-State: AOJu0Ywln1ADf/CgyJVVs/JutXpp0WwO2Q45QLDjW4n5/bM9o/EMhhdS
	idn7Apu0fyQMut1tnjq8RZCg717Ys9aDsVZ5yVvZcRiqimqIDBtu7z5QpG2EfJmpuVM=
X-Gm-Gg: ASbGnctHDVuItRIR2nBNbXjYDCuYA4Miqybhj5u8s9TQHaqzWnOMy69kCtHTDfZNvZJ
	xt42ojApW2HnaipEZSCoXpJt8cn5UubaMQalRQmdRl0PC5hb4OZSC+TzjwHys+hptmzR7fFslf3
	7EnZ9RPMgnUGEyFKrEP4lke6JubDE8w+TRStTTQZI6j7zSQ3Mb4rLslVvjHW9E23w+PZ4U1H1Be
	0OCCo6pna80cv9X1aiRqYRfP3t0vCbAgrn982Dw7t8wWqXFd/AoFMRX42aybWge+bqSaiAIk+H6
	l0V5qjPPYE3dUxqJeL6wb6kTNXJpQ3DMLdcW1KTmjrLFgZyxZIGsNL01CD6ROV344Q3oJwossyt
	xhlObzeIrhFkybF/UBdLQ0x2UGfg14ih5VvNmxdt/io/0wXPqjcakFOSjFD7XPXUQVln6
X-Google-Smtp-Source: AGHT+IGRcheU2fSpI6wPrIrcXh76/ZT2qeR3VE5CvtyhdddJOl/Ib5LW5D+YkzJh3O0sYVd9k5LTng==
X-Received: by 2002:a17:903:4b2f:b0:24c:cc32:788b with SMTP id d9443c01a7336-29027216103mr72693895ad.3.1759975124530;
        Wed, 08 Oct 2025 18:58:44 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de53f9sm11033585ad.14.2025.10.08.18.58.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 18:58:44 -0700 (PDT)
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
Subject: [PATCH v2 03/18] mm: Move the fallback definitions of pXXp_get()
Date: Wed,  8 Oct 2025 18:57:39 -0700
Message-ID: <20251009015839.3460231-4-samuel.holland@sifive.com>
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

Some platforms need to fix up the values when reading or writing page
tables. Because of this, the accessors must always be used; it is not
valid to simply dereference a pXX_t pointer.

Move these definitions up by a few lines, so they will be in scope
everywhere that currently dereferences a pXX_t pointer.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v2:
 - New patch for v2

 include/linux/pgtable.h | 70 ++++++++++++++++++++---------------------
 1 file changed, 35 insertions(+), 35 deletions(-)

diff --git a/include/linux/pgtable.h b/include/linux/pgtable.h
index 25a7257052ff9..50286763b652f 100644
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


