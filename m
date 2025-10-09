Return-Path: <devicetree+bounces-224707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE0FBC7264
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 03:59:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 72C1434D16E
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 01:59:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE89B1F3B85;
	Thu,  9 Oct 2025 01:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="igWKcsjb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA411E0DD8
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 01:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759975143; cv=none; b=QWYj/9MtNUjsJbEpdE0aevE5yVXAzx+wHFsU8nr6kxl4LO6r8Ht2V2IDhp6/KT6Zkn5E9/MOPtbedfpWz80aPlLLZt149F2YWGFVYSmarB5YoMozPkhC6590l6zFDkc9FU7TzDRbr3c2WdTkOVSVMGRJ4hw+N+oowbHs6vEdMZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759975143; c=relaxed/simple;
	bh=wRFMYBpHaprmwMkBGjqFZnnNTBugi5w/9MhAu1OLS08=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pW1HGEer6uyH1J6iHn64Yijgo7rhkkRyPx1HzkDBNx2RvhYMP2CdPS8WSG2BlkocEdTF0XBBmTWl4wBjM/14rDREzhLO8aICbzciPAQDhpgA6FOUvAJH4roEclSi7HQ8TEUFWxE937e2nm5X4f/qasdwXcT3WwMtR/lBf75xnLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=igWKcsjb; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-279e2554b5fso4018195ad.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 18:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1759975136; x=1760579936; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qox8adEL3NVTIaNLXzvlCmJaaMYPBhbok62G/+ufmI4=;
        b=igWKcsjb8N7t/SSLA/p6iDgW71ioBFxl4RCf6dR/q4WQEBKMjuUFTUqA1zaASGmQxF
         NwoB4GzAQrqD3TsBlkAQTkcNaFasIj4sOSMn1yaXY9swKCJtIBzVNhDLesy1BcL4vmSA
         JzpHOIw4hmaoNf3Vq54r3F6YAj8Mw0oSD6g5kJVPEFnRg9A/81S38EjiY3v8P6x9sn2U
         r64PS8P0V1tN2Tmn/jIUPnXIWz+RXMm7VQKKXJIhWONbAdDJsSq+vV6taVJ7zLfDutEY
         uakRfqbo1zvU0lJ9R7b4WCXTSyWc7vyTRkxyoYlSPXkd7uc1TxE7IldWwo1VBN7GdeTm
         pkhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759975136; x=1760579936;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qox8adEL3NVTIaNLXzvlCmJaaMYPBhbok62G/+ufmI4=;
        b=ODFXm8VuBJnU0vsLEAe//ZHlIJmb5yCu0qqk3EmyvD90ReMPfS05LDhHMo0VRWVm9a
         s4QLegIccdjZJbH963z1EG4u9/yn2RFiGQVdZpNuvU1vuUzxGiybSNk5uY+DDqYGC5CQ
         RjKXD2xphMZe9vZRDjHiHl/YemdhSAJT8yFHaW3p8THIE18upZFvB/4jDUwdVsqDekJf
         YzFhvXOOFs8pvvXszCxa5j2iTMIQ9v+hvRV+MDY1ZcvpluTRWcGA1YALHHvqp4fyp4s/
         GAhpd5HjwC6pjIQkO2dMSJGfdsf9znZG+whO6azO5sf28xdqKWW/sCGJXWFShPg9e6GL
         t/pQ==
X-Gm-Message-State: AOJu0YwqAsdKK7pZnAqEASom4VNxVQefKe3YRaJ1/oc3+Cts4XeZAb8x
	O/UmeBVArO4xIbaEaxqNmjqDEI37O+Mop3oOxtVM5RDiegBE9SG2G5t2Nc4WTStUjPI=
X-Gm-Gg: ASbGncvgpQ8LTilrAAOBR47WY5INfbzmDHWHd37nKNSM18EpMonP4VyAy0rfpFnwPmZ
	kg4vcYeAJAMT/6dLDgSIv/kk+Ezd75bj+8NzoorjcEW+VZ4CK0QzQK90G2CqyLeYUhrkbnh3IS6
	NXB2qxfER4yJGt+Yxp+X+I0+BJRum+/8/RI9F8BIFFXy5UuBGywNYiwR7PmhETsbQQjpLFTvB8y
	Vjrl/7mUyeJfsqckday72QKlyKFI3JzDSTwF2aOUaDTl+Pmb+eoTXeCWVSQq3GsyzBVIXIPOlC/
	bG/Uo6MQU5n+kEt0XdAZzPY4ZZJV35As2u5MWKKknO5CuiENI8Dugf2j3yvpzN4o/lSRpDjTdc4
	RZ/VqKXo22E/Jk19zX7++pCmG66oal9xO89PMbXkkLltXKlImBNxUQs0SRCt56JfZxN18
X-Google-Smtp-Source: AGHT+IHbkVL7EPb5KjicSw4KSoOokG99J04JG0lwtTo3UaOYe/evftUmF2hr4J/jh5vQhBOg6irmTg==
X-Received: by 2002:a17:903:1a03:b0:267:44e6:11d6 with SMTP id d9443c01a7336-29027e5d1efmr77364885ad.6.1759975135842;
        Wed, 08 Oct 2025 18:58:55 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034de53f9sm11033585ad.14.2025.10.08.18.58.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 18:58:55 -0700 (PDT)
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
Subject: [PATCH v2 12/18] riscv: mm: Expose all page table bits to assembly code
Date: Wed,  8 Oct 2025 18:57:48 -0700
Message-ID: <20251009015839.3460231-13-samuel.holland@sifive.com>
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

pgtable-32.h and pgtable-64.h are not usable by assembly code files, so
move all page table field definitions to pgtable-bits.h. This allows
handling more complex PTE transformations in out-of-line assembly code.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

(no changes since v1)

 arch/riscv/include/asm/pgtable-32.h   | 11 -------
 arch/riscv/include/asm/pgtable-64.h   | 30 -------------------
 arch/riscv/include/asm/pgtable-bits.h | 42 +++++++++++++++++++++++++--
 3 files changed, 40 insertions(+), 43 deletions(-)

diff --git a/arch/riscv/include/asm/pgtable-32.h b/arch/riscv/include/asm/pgtable-32.h
index 90ef35a7c1a52..eb556ab95732d 100644
--- a/arch/riscv/include/asm/pgtable-32.h
+++ b/arch/riscv/include/asm/pgtable-32.h
@@ -17,17 +17,6 @@
 
 #define MAX_POSSIBLE_PHYSMEM_BITS 34
 
-/*
- * rv32 PTE format:
- * | XLEN-1  10 | 9             8 | 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0
- *       PFN      reserved for SW   D   A   G   U   X   W   R   V
- */
-#define _PAGE_PFN_MASK  GENMASK(31, 10)
-
-#define _PAGE_NOCACHE		0
-#define _PAGE_IO		0
-#define _PAGE_MTMASK		0
-
 #define ALT_FIXUP_MT(_val)
 #define ALT_UNFIX_MT(_val)
 
diff --git a/arch/riscv/include/asm/pgtable-64.h b/arch/riscv/include/asm/pgtable-64.h
index 5531752b608e4..60c2615e46724 100644
--- a/arch/riscv/include/asm/pgtable-64.h
+++ b/arch/riscv/include/asm/pgtable-64.h
@@ -68,20 +68,6 @@ typedef struct {
 #define __pmd(x)        ((pmd_t) { (x) })
 #define PTRS_PER_PMD    (PAGE_SIZE / sizeof(pmd_t))
 
-/*
- * rv64 PTE format:
- * | 63 | 62 61 | 60 54 | 53  10 | 9             8 | 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0
- *   N      MT     RSV    PFN      reserved for SW   D   A   G   U   X   W   R   V
- */
-#define _PAGE_PFN_MASK  GENMASK(53, 10)
-
-/*
- * [63] Svnapot definitions:
- * 0 Svnapot disabled
- * 1 Svnapot enabled
- */
-#define _PAGE_NAPOT_SHIFT	63
-#define _PAGE_NAPOT		BIT(_PAGE_NAPOT_SHIFT)
 /*
  * Only 64KB (order 4) napot ptes supported.
  */
@@ -111,18 +97,6 @@ enum napot_cont_order {
 
 #if defined(CONFIG_RISCV_ISA_SVPBMT) || defined(CONFIG_ERRATA_THEAD_MAE)
 
-/*
- * [62:61] Svpbmt Memory Type definitions:
- *
- *  00 - PMA    Normal Cacheable, No change to implied PMA memory type
- *  01 - NC     Non-cacheable, idempotent, weakly-ordered Main Memory
- *  10 - IO     Non-cacheable, non-idempotent, strongly-ordered I/O memory
- *  11 - Rsvd   Reserved for future standard use
- */
-#define _PAGE_NOCACHE		(1UL << 61)
-#define _PAGE_IO		(2UL << 61)
-#define _PAGE_MTMASK		(3UL << 61)
-
 /*
  * ALT_FIXUP_MT
  *
@@ -174,10 +148,6 @@ enum napot_cont_order {
 
 #else
 
-#define _PAGE_NOCACHE		0
-#define _PAGE_IO		0
-#define _PAGE_MTMASK		0
-
 #define ALT_FIXUP_MT(_val)
 
 #endif /* CONFIG_RISCV_ISA_SVPBMT || CONFIG_ERRATA_THEAD_MAE */
diff --git a/arch/riscv/include/asm/pgtable-bits.h b/arch/riscv/include/asm/pgtable-bits.h
index 179bd4afece46..18c50cbd78bf5 100644
--- a/arch/riscv/include/asm/pgtable-bits.h
+++ b/arch/riscv/include/asm/pgtable-bits.h
@@ -6,6 +6,16 @@
 #ifndef _ASM_RISCV_PGTABLE_BITS_H
 #define _ASM_RISCV_PGTABLE_BITS_H
 
+/*
+ * rv32 PTE format:
+ * | XLEN-1  10 | 9             8 | 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0
+ *       PFN      reserved for SW   D   A   G   U   X   W   R   V
+ *
+ * rv64 PTE format:
+ * | 63 | 62 61 | 60 54 | 53 10 | 9             8 | 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0
+ *   N      MT     RSV     PFN    reserved for SW   D   A   G   U   X   W   R   V
+ */
+
 #define _PAGE_ACCESSED_OFFSET 6
 
 #define _PAGE_PRESENT   (1 << 0)
@@ -21,6 +31,36 @@
 #define _PAGE_SPECIAL   (1 << 8)    /* RSW: 0x1 */
 #define _PAGE_TABLE     _PAGE_PRESENT
 
+#define _PAGE_PFN_SHIFT		10
+#ifdef CONFIG_64BIT
+#define _PAGE_PFN_MASK		GENMASK(53, 10)
+#else
+#define _PAGE_PFN_MASK		GENMASK(31, 10)
+#endif /* CONFIG_64BIT */
+
+#if defined(CONFIG_RISCV_ISA_SVPBMT) || defined(CONFIG_ERRATA_THEAD_MAE)
+/*
+ * [62:61] Svpbmt Memory Type definitions:
+ *
+ *  00 - PMA    Normal Cacheable, No change to implied PMA memory type
+ *  01 - NC     Non-cacheable, idempotent, weakly-ordered Main Memory
+ *  10 - IO     Non-cacheable, non-idempotent, strongly-ordered I/O memory
+ *  11 - Rsvd   Reserved for future standard use
+ */
+#define _PAGE_NOCACHE		(UL(1) << 61)
+#define _PAGE_IO		(UL(2) << 61)
+#define _PAGE_MTMASK		(UL(3) << 61)
+#else
+#define _PAGE_NOCACHE		0
+#define _PAGE_IO		0
+#define _PAGE_MTMASK		0
+#endif /* CONFIG_RISCV_ISA_SVPBMT || CONFIG_ERRATA_THEAD_MAE */
+
+#ifdef CONFIG_RISCV_ISA_SVNAPOT
+#define _PAGE_NAPOT_SHIFT	63
+#define _PAGE_NAPOT		BIT(_PAGE_NAPOT_SHIFT)
+#endif /* CONFIG_RISCV_ISA_SVNAPOT */
+
 /*
  * _PAGE_PROT_NONE is set on not-present pages (and ignored by the hardware) to
  * distinguish them from swapped out pages
@@ -30,8 +70,6 @@
 /* Used for swap PTEs only. */
 #define _PAGE_SWP_EXCLUSIVE _PAGE_ACCESSED
 
-#define _PAGE_PFN_SHIFT 10
-
 /*
  * when all of R/W/X are zero, the PTE is a pointer to the next level
  * of the page table; otherwise, it is a leaf PTE.
-- 
2.47.2


