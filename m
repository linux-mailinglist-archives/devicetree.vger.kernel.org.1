Return-Path: <devicetree+bounces-224702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1E5BC725E
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 03:59:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 250FD4EFDD7
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 01:59:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7ABB1E1A33;
	Thu,  9 Oct 2025 01:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="dy8UtTad"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097AB1DA60D
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 01:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759975138; cv=none; b=Zgk7eNzeN9j1GgyRmVzT15MwwipQ3nCZnIvBdo+kRE7SO2VCknN/PrSFmmd2B0SntTVkxpJFtNmlYm3k5qaZgKblLYh12dhx6D/chXiGX765ETs/ZjyQ9OaWWrFwENbxIIasgfbSBCcJgSDeL4He3qlyGyRGjU5gUcsTJ3BCr8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759975138; c=relaxed/simple;
	bh=qz9bk1u6iDBGKd2foT2PRUb6ijZpGxNdXBiAeqzx1Zo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uyhbtoYtC7BFPVSQS2xL+uL2Zs7eUNFk9qb1bbSHc0aWeb34ixa/88r8gxwrW/uU/Jvl6Sbkun0AiQq+C1QP5sWn13LLoyPE7JmyrXZ4AaTpu/AGlhwlAuBNk1LQW9Vlq9XIRBRXo2U6w6xFSFyukk1aPcWEdoNEnVeif1Fb6pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=dy8UtTad; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2697899a202so11015275ad.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 18:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1759975132; x=1760579932; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RQzFW213rLwxUVwSIOmReg2LsoZscZFNSwvkZCWkhKs=;
        b=dy8UtTadLbxKLPOkThV/2iI4OIwYV9uaEmmJYJ8JSZeA/aHQ5Ez9q5cFy3OWHH90fR
         Ub/jzRHJtxtY/nenRydA8wGBL/rJj2ro2guu9bvyniLebceLGaTG3tegB82Aig4C+IEY
         C/9ibKMpDLrE9sHRUKRWu9U/IVPlEMZqZ92Nfj8/lnnym6LhBhJr7AJrNkEdCV9w2zxy
         GPUwpGGFj7pHYtL5vqgOJ/e0UvxhkN5cXVExvfH8Taqcp23DKPsfnFEjQM4qCl/krO4G
         xKrs+SgNTaTmcm2Zdxk6qts6ofzsNb0w8/zsr/SqqyZuEGslU/gNWYxAFGfRQB5PjWNJ
         tC1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759975132; x=1760579932;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RQzFW213rLwxUVwSIOmReg2LsoZscZFNSwvkZCWkhKs=;
        b=FTK90V2E7bCnu/XEMa9h4JR85vOVPYMK67xivHWcakZ2IUsZks8tGlIOIibyNtkIyr
         +S1+v+9q3TE7tZGGGOAuVCUFWrwrn6KE7aBnN3Z1iSCda+0zSHdonC0UKcOYxIP7v+RO
         CEFxLuc9CFL6wVzNRuH6JDVVhqsus6OPGCgA+vUWb6hJtdMNnEETIqCb2CLD6vjLA98B
         rb4cERqHoQ1yHYA/8CeL3EnXJRiqCIlQVe4L+/U2cSDwvfDn2CDcDx1Nd+pCa1tHXW3b
         o07LfhU+QldrZKENBhgMpW0wRsEu17FBVj1a8mjzvcV5KrEnC9E47rIKBB0w23y32BM0
         y3lw==
X-Gm-Message-State: AOJu0YytAWL8W8aYQS+Aiqk4bMZjeZYEXfR8kV20KtAuPIVpvVC7Y+ze
	runuI5R8zH1HUfhDXuBN7wikmqSb2bIt9+W3+FJnTXXHm9oGkh060UWnm+HyTzfvA98BNT7bHlt
	Lblct
X-Gm-Gg: ASbGncvlwhZ1ZP/YmaZTEOBrey1HfG8p7gbxuenkGskTy8+RSTDdaEIUdwaY2IOpuz9
	6vi28fLouf9o5Rcosr6JHG3CdLj3b8w+kFsIBgcPyPGcTWMNV+BmunkTH0gYK9GcDGsVJ6ctuOw
	ssqODgnOpnxzljVSbvSoN4NYUkNgnR6/XOFjcFb/R33EdV6jGRU8D0T8x9g7RcqLcmP3ZiR3pwV
	SIRSjZkG4JwJJ6esRMp7XMpTiebuxKuncQ7TqMvVs3kGzrpzp4py+ULzqkG+96RFbxPEss4T/kg
	noNED5X5ev1u4fGfPgZJSMIwCnazTC+wz4lEFKmm2XDV20dFfOPR2EYiCk9LgMCh+kUOVsLv/Rp
	Q+Wr1g3pAjYWCnuhFUNEki0G73zU5s+4H/hfAEMkLzadctUhBmyOX9sP7XsyrdF5GjtdA
X-Google-Smtp-Source: AGHT+IFM9Uy17P2+rIA5+/u+UBcAfOioBDn47CFCZ3Wn+HT4qk9AYA0AUJYNGbTh1SkHtKAVK04UZA==
X-Received: by 2002:a17:902:f788:b0:274:506d:7fcc with SMTP id d9443c01a7336-28ec9c0c7e1mr134257655ad.6.1759975132141;
        Wed, 08 Oct 2025 18:58:52 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de53f9sm11033585ad.14.2025.10.08.18.58.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 18:58:51 -0700 (PDT)
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
	Samuel Holland <samuel.holland@sifive.com>,
	Alexandre Ghiti <alexghiti@rivosinc.com>
Subject: [PATCH v2 09/18] riscv: mm: Deduplicate _PAGE_CHG_MASK definition
Date: Wed,  8 Oct 2025 18:57:45 -0700
Message-ID: <20251009015839.3460231-10-samuel.holland@sifive.com>
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

The two existing definitions are equivalent because _PAGE_MTMASK is
defined as 0 on riscv32.

Reviewed-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

(no changes since v1)

 arch/riscv/include/asm/pgtable-32.h | 5 -----
 arch/riscv/include/asm/pgtable-64.h | 7 -------
 arch/riscv/include/asm/pgtable.h    | 6 ++++++
 3 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/arch/riscv/include/asm/pgtable-32.h b/arch/riscv/include/asm/pgtable-32.h
index 00f3369570a83..fa6c87015c480 100644
--- a/arch/riscv/include/asm/pgtable-32.h
+++ b/arch/riscv/include/asm/pgtable-32.h
@@ -28,11 +28,6 @@
 #define _PAGE_IO		0
 #define _PAGE_MTMASK		0
 
-/* Set of bits to preserve across pte_modify() */
-#define _PAGE_CHG_MASK  (~(unsigned long)(_PAGE_PRESENT | _PAGE_READ |	\
-					  _PAGE_WRITE | _PAGE_EXEC |	\
-					  _PAGE_USER | _PAGE_GLOBAL))
-
 static const __maybe_unused int pgtable_l4_enabled;
 static const __maybe_unused int pgtable_l5_enabled;
 
diff --git a/arch/riscv/include/asm/pgtable-64.h b/arch/riscv/include/asm/pgtable-64.h
index 7eb23c24310f9..d17382c0fbe59 100644
--- a/arch/riscv/include/asm/pgtable-64.h
+++ b/arch/riscv/include/asm/pgtable-64.h
@@ -66,7 +66,6 @@ typedef struct {
 
 #define pmd_val(x)      ((x).pmd)
 #define __pmd(x)        ((pmd_t) { (x) })
-
 #define PTRS_PER_PMD    (PAGE_SIZE / sizeof(pmd_t))
 
 /*
@@ -166,12 +165,6 @@ static inline u64 riscv_page_io(void)
 #define _PAGE_IO		riscv_page_io()
 #define _PAGE_MTMASK		riscv_page_mtmask()
 
-/* Set of bits to preserve across pte_modify() */
-#define _PAGE_CHG_MASK  (~(unsigned long)(_PAGE_PRESENT | _PAGE_READ |	\
-					  _PAGE_WRITE | _PAGE_EXEC |	\
-					  _PAGE_USER | _PAGE_GLOBAL |	\
-					  _PAGE_MTMASK))
-
 static inline int pud_present(pud_t pud)
 {
 	return (pud_val(pud) & _PAGE_PRESENT);
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 2bc89e36406da..61de71a8ba978 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -206,6 +206,12 @@ extern struct pt_alloc_ops pt_ops __meminitdata;
 #define _PAGE_IOREMAP	((_PAGE_KERNEL & ~_PAGE_MTMASK) | _PAGE_IO)
 #define PAGE_KERNEL_IO		__pgprot(_PAGE_IOREMAP)
 
+/* Set of bits to preserve across pte_modify() */
+#define _PAGE_CHG_MASK  (~(unsigned long)(_PAGE_PRESENT | _PAGE_READ |	\
+					  _PAGE_WRITE | _PAGE_EXEC |	\
+					  _PAGE_USER | _PAGE_GLOBAL |	\
+					  _PAGE_MTMASK))
+
 extern pgd_t swapper_pg_dir[];
 extern pgd_t trampoline_pg_dir[];
 extern pgd_t early_pg_dir[];
-- 
2.47.2


