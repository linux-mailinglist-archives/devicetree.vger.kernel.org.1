Return-Path: <devicetree+bounces-237888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 416C6C5559E
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 02:53:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 84FEF348A65
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 01:50:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D34E22EA754;
	Thu, 13 Nov 2025 01:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="MQb4IhZz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E682E8894
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762998439; cv=none; b=toEunkg2h+RGtlgyHpwryvdngYL/7cBpvvA97EzFlYT+cfWMv5lLEJ+ChS0gMNYTTz6AO8e1HbX1FZUWF3bhrb/BVmFXT3004/k1iaNVqoJhzK28htMNH1NyaBEDZNo4wM+rlmUU5+iZj3hjoy59y20hTdkk3DN+OaRFIl94Ewc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762998439; c=relaxed/simple;
	bh=2MK06TEO5Wl8HoHuiJTTbGxXMQ4dUctY6WDGRltXzFY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hGSTHHV38CdxJxnyxCgB9NAHO1DAMVCa7ND5zAOKKd492pOHJr2EoMJAGVXC4RnXt9XA1au6f5k0zWOWqD+4Y4L1ckAKZL77HFd59YrjkAL/BgKlg1YuO0ZGPKYSoNXDtzfO2Rq+3L3fLVJPNqctT+Z/E0QGoODZiNXxE7t1A84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=MQb4IhZz; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-29586626fbeso2737105ad.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:47:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1762998437; x=1763603237; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O4yUqe5I7KDh5tDtHE97viYfWgw9C/nYwzFH0pWC45k=;
        b=MQb4IhZz1O7SHym6wa76DjZHzL1F4V+Az/eoICPsccnt01kKfzK23egfxJF1hOzlBG
         PWbKVo134XxEUCLU/vz1b30BgJ7rF0pXlf90tEzpCMAxj8hsKZEnM0ftaVBTSoDjnBCQ
         EYq8LYDOIZzjDVTNudG+MMdndXhfVMqS8MUN2QphPyU/UfImfqCIuCgwHaLT4PYaAnxh
         /KfTT+rL1VOXVYttFLBzCaNaGbuFJn8ltE5j63p41/HmQ3ePTx0j/+MRQDT+5wqdsXMq
         bac+ijfzLOcTKB4EixGleYdO1YN+uqLSHROl1dC/Y7F43TZy1GxTFNAmsRDDpzwGz/Wf
         gJVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762998437; x=1763603237;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=O4yUqe5I7KDh5tDtHE97viYfWgw9C/nYwzFH0pWC45k=;
        b=Qt8IZYpXGNsUMNBp+3Dim1bER6CBDaW5AfPMxs41sbpx6WpCvGgj08JPXTEj1qizrw
         twjZvPOGYFwTrBnG1y7SA9lqtrqegMJCGNT9Y7brzAmdPudVBh+TtldOGwhRNO+iW8Sj
         jgJkCZt7owG3bSPN0fdo/hcQUXzHczcW6vl+0BrvFdkopgcT1OF9gBcWCFJ0lm3k5oHx
         d3CCpFnW7BSvOeYGTmzfOJ52YW3iYPvwRgSuZF3xZBNV0JkOgn7MeCX1sT/mkr8hPGjZ
         wdaAyhBxyoOBl/1aq+VL4E9u+SYk7RTJOikiShZnIHybMXojS9kEp1fJ93Mb7D+xtIzf
         IVqw==
X-Gm-Message-State: AOJu0Yypcv0eSlvl2LFm8r34hlHcJ1n/Weh4pZponAGqTNMv09uLpNAc
	Alxwbbtzp5I3gZyZdxhYsqUP1PP38G5Q1EbuGXT6ry8EDrQ15HzFQhQMGViLqYqcaLg=
X-Gm-Gg: ASbGnctnU3IwN63DYurpV30YvKyHEUSGwjt7w4DPIcq7GxFVBQR04p9/K/Bxd7ZmHeB
	Gj6dEZ/NO/53ziA5oUb9oYgUGwV9ck3yWKPZgOwlRenFdAvATTVkEPf4lUxMktk0sR1BfEvGUYR
	3u819ZXCrpfmFoJJT1Pir3L0Kc17QnSS+WMNyZPmq0MVL2/hMeBBXoUkbDvaCocBN943cH4JvlJ
	OnhkdTH1a75C3+plaRXrPlCuSO35gOdAS0Evow3O4G4ZA+q4w8bOZhYaFg84sPDLJ9IWrqHBbY4
	VDhPFOHmVITKPgLNfhrHh9AdDdOXUL7vZl9RxrwBLvDhUjw7//fb990hhqvOS+oW1MV0aI0I8vs
	+28v1lZrDplk67n+wirlGtRKDnmhx6gOxz39bTyj85zAqo9X2v0Rs34mN0o+Bi81XZF9C4gHDES
	anl9vbvyXXidUb3HKEcF2XCg==
X-Google-Smtp-Source: AGHT+IEA5LZxSWMzNWQDrd0LMkvyoxWg+oEw41rcCZaseACh+qy8KkMElZZ7w0AL6ikNL4f+5tupBA==
X-Received: by 2002:a17:902:da4b:b0:297:c0f0:42b3 with SMTP id d9443c01a7336-2984ed4b960mr68446245ad.25.1762998437335;
        Wed, 12 Nov 2025 17:47:17 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2ccae8sm4986485ad.98.2025.11.12.17.47.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 17:47:17 -0800 (PST)
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
	Samuel Holland <samuel.holland@sifive.com>,
	Alexandre Ghiti <alexghiti@rivosinc.com>
Subject: [PATCH v3 12/22] riscv: mm: Deduplicate _PAGE_CHG_MASK definition
Date: Wed, 12 Nov 2025 17:45:25 -0800
Message-ID: <20251113014656.2605447-13-samuel.holland@sifive.com>
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
index 00f3369570a8..fa6c87015c48 100644
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
index 5532f8515450..093f0f41fd23 100644
--- a/arch/riscv/include/asm/pgtable-64.h
+++ b/arch/riscv/include/asm/pgtable-64.h
@@ -66,7 +66,6 @@ typedef struct {
 
 #define pmd_val(x)      ((x).pmd)
 #define __pmd(x)        ((pmd_t) { (x) })
-
 #define PTRS_PER_PMD    (PAGE_SIZE / sizeof(pmd_t))
 
 #define MAX_POSSIBLE_PHYSMEM_BITS 56
@@ -168,12 +167,6 @@ static inline u64 riscv_page_io(void)
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
index acfd48f92010..ba2fb1d475a3 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -207,6 +207,12 @@ extern struct pt_alloc_ops pt_ops __meminitdata;
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


