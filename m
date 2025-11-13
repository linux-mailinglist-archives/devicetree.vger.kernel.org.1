Return-Path: <devicetree+bounces-237891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E4CC555AD
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 02:54:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4EDB234A8CB
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 01:51:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54B242EE274;
	Thu, 13 Nov 2025 01:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="K516f/cH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911E52BE053
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 01:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762998444; cv=none; b=hhr/GRaqpoY6EKuU06tWWykSWAK5LlVYzkaiWxx3uxZFF97jv84X1nWAOH9Nag1g3hghG0Ceeo0oWzxMCcfQqcBYDS2XnCFdqca2q0TIoZH6XuoLBV5uT9v8aw41ZUfpjPw5dN7KawWEQL2Vijm6Ypk2C/hkWVragyIxyUiyXZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762998444; c=relaxed/simple;
	bh=J1/8A3IXTM9bzlcP42Q0I0NkjdkS9JJwgbBrPUlH8CY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UjFPXMKOfADB4IeUJf/Cew1RrLa8hK/emSagu2wum9byq80bZMTKAQEAa7qlMqQcw0ODu1VYPS/SPWgSfA6v3ChfHRdRCcgVJ9OZujFuBE72ORK0DdqGT6eQm4Fj85c9nSe1WA3Qclh+MUCohffrP4E00h+JOGaO7VCEzqAnyYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=K516f/cH; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-bc0d7255434so186291a12.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 17:47:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1762998442; x=1763603242; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LCfGLyHTlwnlWI3FvQiRrpmgPRI/lUHNtrwWz9sKS0g=;
        b=K516f/cHWy/Yl622VfKBus6XAOT1LXjV+84YodxD/rTcjjp1DRgU98bx84x7lX1E+3
         sz+x2y9BPBZN2+dKv+RwcSKsYK3ZHYr9Wn4usGBdnEBUHr1iFsnGXXuqdh101INphpxn
         ZPdvRH6cv09EQLdNtvYUOw+dxb+i8nzFtOcsVupJPShVt64Nulb3CCdMQvPtSn6Ww/W0
         jVTwJKkDYlr2oLa2cZKS1LJgc1LVvHSfm9tmIax0We/ackgfoamiEdQEFIsLWAR67pw3
         GAk9yos95MKYy8A02YUddNv1lM3lZQsz/+WFaViaRThePb2iuTgzlUKGIMtmkeU0B7cm
         09mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762998442; x=1763603242;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LCfGLyHTlwnlWI3FvQiRrpmgPRI/lUHNtrwWz9sKS0g=;
        b=fBjTImllrreeqqhIuCHEn8Ac0kAYOzokZVT4pW3aWgzU5fJp2a9FBshBBoEpZbrcPp
         Que8YC1XGFkaPokNhlDd6e0KqlWwjwe7dZVH5KgswQ3DiD0cSvDbucR8L7eSJu12kPvB
         PVVxZ+oyC5wxobT8niccjw4rV1uWPO4LgPTzZ5P8gKDoIaQYYi7V5fzHbHcjY9Orrah+
         LsVcf62a9qZkcuIbxvmhVAEJ3IyE5YD5wzInAQKe/zBWLV4qvfVk/waNy4NzpCgKSj92
         6Y+hj3e/LQZPRuew6fPq5vHl71ZZF65tOFhmweutZxGPAxbS/5DrZByc0kavFZZEGhru
         48YA==
X-Gm-Message-State: AOJu0YxcRjNMsLC3XMywGnkrKzGp1Nfp8fkBY4KD8IjLsCXnvk/7+Jaw
	9ltJDotwgq8bMeLeVqKjayDRV3vMJW56HVyW0Kdb3emOCub0ga+gTfaRUTy2tovYX9o=
X-Gm-Gg: ASbGncv//yQFxA6OIRLj/PRDl8FOz96HtGzYgn0zIbvXh48nBkJPTEv6N5NCOZnbteL
	ocycIZh24DQL/jD78hrtC5vIBAawUJrd5AheqyV3WsANy2f+tb6LFoJIUsFNt2pMAoIc2maQAgc
	fEOQxBK++r3rBcUFCr0djBLXIIDHEcDAhoW0uhZWiUuzG0jspbP+SYrjiiXfyyfVzJkzlt/9sZj
	U8doqG1JrP0IAOyOptVg66m75bUO+47m6oTkzOlfXhoxPEGQz3vUhPGARnriO6CKozob3/Q/KNG
	M9p9pjbvouxecyml8jOHQTFiEUSs/++kf8xsCzqHl7O1vvDmX+4XnJDJhBu4APCeiYXTgYf50u9
	KiH81OhcruPAmExnFWkXrMwNkSAtxwgepgD2nG1V0IlItIif6KXuzIhCCtpK3QNOTKfrS31o4s4
	BJkKoX29x69bA7BVZm4/564Q==
X-Google-Smtp-Source: AGHT+IFq0UAOun8d9XJx744M7CwKUVs4/xq+EwynwZ5LpaPcXyVk6iynKKn4ZFAafmUlsME9mB3yew==
X-Received: by 2002:a17:902:ef45:b0:295:738f:73fe with SMTP id d9443c01a7336-2984edec698mr65123165ad.30.1762998441862;
        Wed, 12 Nov 2025 17:47:21 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2ccae8sm4986485ad.98.2025.11.12.17.47.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 17:47:21 -0800 (PST)
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
Subject: [PATCH v3 15/22] riscv: mm: Expose all page table bits to assembly code
Date: Wed, 12 Nov 2025 17:45:28 -0800
Message-ID: <20251113014656.2605447-16-samuel.holland@sifive.com>
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
index 90ef35a7c1a5..eb556ab95732 100644
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
index aad34c754325..fa2c1dcb6f72 100644
--- a/arch/riscv/include/asm/pgtable-64.h
+++ b/arch/riscv/include/asm/pgtable-64.h
@@ -70,20 +70,6 @@ typedef struct {
 
 #define MAX_POSSIBLE_PHYSMEM_BITS 56
 
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
@@ -113,18 +99,6 @@ enum napot_cont_order {
 
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
@@ -176,10 +150,6 @@ enum napot_cont_order {
 
 #else
 
-#define _PAGE_NOCACHE		0
-#define _PAGE_IO		0
-#define _PAGE_MTMASK		0
-
 #define ALT_FIXUP_MT(_val)
 
 #endif /* CONFIG_RISCV_ISA_SVPBMT || CONFIG_ERRATA_THEAD_MAE */
diff --git a/arch/riscv/include/asm/pgtable-bits.h b/arch/riscv/include/asm/pgtable-bits.h
index 179bd4afece4..18c50cbd78bf 100644
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


