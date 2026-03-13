Return-Path: <devicetree+bounces-275020-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sOs9F/bOs2n2awAAu9opvQ
	(envelope-from <devicetree+bounces-275020-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:46:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A3427FED4
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:46:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1690830238ED
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:46:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A55D01F3B85;
	Fri, 13 Mar 2026 08:46:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GUAMswji"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7E826CE2C
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773391587; cv=none; b=kngjE8n+buKfCXv98nw6AQ8ouEg1tEvvCu1HaIAJOgkPct4IetP0xNEdVNndmRnil5MH8EwmkRBG9S8VfgQkCRxXempMsIFiZ3q9Xtj9iOQqvdeo+A17fp6zyr+1zsiaAqZpsKfAVfMIg4ReiD+nDvuOQaiRKG6A+PXmEk5mKok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773391587; c=relaxed/simple;
	bh=GUe+2nQ2Kbl10odGosdxNHIcJenfjHM9m2Nc9/ZmDe0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qLi6BaqAe+1WV5A1iEJwdnIg9s43tSUM/qUu1etfDewRdAIYSUudKa+JOubjl/9YarHEsptDkLFHebZL8CvxanwN8KgQFaU8SM7BhbNnpOf3tE9VqnGN/9ZAU28EWPYryP86nNlv1RA7E0oZ0bjQFGGIJHrtAbzpOB07B3I8sMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GUAMswji; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-89a06bc2f1bso34252986d6.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773391585; x=1773996385; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nBaSA4PPgKGdLClMsOczDD6vsUzPlduQ3XSws58AOJE=;
        b=GUAMswjiLp7MOx21LEhi1lJDRybNc8cnX3avvBKJWMcAFTNKZ7I44BkqXryCcpSeLJ
         +DbdrngLEShzxSL4zhtN3oG1yLqqA3AmatGT/5W2maBsZIUw3BfuSg6g+3lFZjnqy9IM
         3xvuI+OUDfP4Z8CEzeJGUFjhu/FQ9cAJMQtP6xnqdLt55v9NfBqcdWc+l1vFvKi80E9r
         0D4UfzM2ici0AIerPge7bF2ZP+PqC78a9Cjkoq917Jkqxra6ahbIJU6XBNSyhtP91Sqf
         kTdTXOjTivNcxxLI4DW4TRQvbhJKZVwh12nNEhBYH9Bs28l+rv15pXI0Kg0SdpvxQ9J2
         Q/eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773391585; x=1773996385;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nBaSA4PPgKGdLClMsOczDD6vsUzPlduQ3XSws58AOJE=;
        b=YpmDncblUoLukKBXzfAtKgwQMiWDWgofBAcF78EJLg+SjQlpuV4dDzHh5PkzLn8Gj+
         TXgDHcDvz0t/694E2iJ+TXOmsFIPgLZFJ9v+wpGTEPNYYHwyTrNbLUBxZ6hW0C9NBOUk
         6ikq+z8N3aGqoP08dOjhVZXAyRjVGgzm/uxaiZ7LBPijEC2b1glNuTVWYwH9FChuQY1f
         0Av8cMDDE/G8L8/PS+tPoAaCSN9TU/ZqmTAj3DnqOFgQxIA9nBqMQxkkkbIBhhEzFZ3X
         XEFHwvuB4FoWlZZ+Vm+B4mhi4rlpRzrREB4ejXNtDs7kPmSKDRmgsI+cb/t7b8kyUe5V
         qRnQ==
X-Forwarded-Encrypted: i=1; AJvYcCWSDaVmlMElKtMhFCzI9zbXQdGFDZUvaGidnIqYv73mzbVImKYA7bNENn6u6kEhKwfVrKJeNth1A/TJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwzefWzu95KInSBLnwAFEtFcBIDAWowVE+A0XY8owmh4X/yeRxz
	lB2mRXVUm6CGbelXll8mScQ5uGAQQoQfYyyPKCYjUKEpw9S86ET1uLlc
X-Gm-Gg: ATEYQzw6RmwtEQSivJGfip4gxDkaQqZclRrNYzSEb3Zwb1Ps6ZO8Hg/gedrCtOF20Ue
	eQy284qhLETbTHnZRQH5Qvd0tuK0TQbIrzBeJUvFWK9amCjW9LSuvxw6w7ZMJ6lAxJQtf1XFYOn
	fSjAgUQ4m86wbp8e7HLeSbAc17/stgWBVY2Q7IcRSC0Jkbg+5IvKfl9y1HnG1wLFIV8FNS+vujm
	N2IzSpxW8cK4PA/pdH5r4w3bJ9+r9CFgJ0Fx6+RZkXgUFF8TOITUliaBFzcDwJdhzoXFgOPoBx8
	YKnhC5O01zsNFh2uQeFEeQp66Tk8LPaFREg20KIOe8QT6Of/oeT6e3t9kTedDd0YHCA6R3wes5A
	FcBsRTmeFOGulrPJ0bSdwFxh/gVfpOhfTxyyx40gtbNl0TZglmEeIiPCp/31mdBNl2G0fdAafcC
	kPeNX98g/VyGTamU96LiPW9hlH
X-Received: by 2002:a05:6214:27ca:b0:89a:2fe7:91cd with SMTP id 6a1803df08f44-89a82032d29mr38700396d6.56.1773391585091;
        Fri, 13 Mar 2026 01:46:25 -0700 (PDT)
Received: from m91p.airy.home ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a65beb131sm50142206d6.13.2026.03.13.01.46.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 01:46:24 -0700 (PDT)
From: Bo Gan <ganboing@gmail.com>
To: linux-riscv@lists.infradead.org,
	samuel.holland@sifive.com,
	david@redhat.com,
	palmer@dabbelt.com,
	pjw@kernel.org,
	gaohan@iscas.ac.cn,
	me@ziyao.cc
Cc: lizhi2@eswincomputing.com,
	hal.feng@starfivetech.com,
	marcel@ziswiler.com,
	conor@kernel.org,
	kernel@esmil.dk,
	devicetree@vger.kernel.org
Subject: [RFC PATCH 1/6] riscv: Add a custom, simplified version of Svpbmt "XPbmtUC"
Date: Fri, 13 Mar 2026 01:44:02 -0700
Message-Id: <20260313084407.29669-2-ganboing@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260313084407.29669-1-ganboing@gmail.com>
References: <20260313084407.29669-1-ganboing@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275020-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 04A3427FED4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On platforms that doesn't support Svpbmt or XTheadMae, SoC vendors
sometimes map the system memory twice in physical address space, one
as cached, and the other as uncached. Through the uncached window,
device drivers will be able to map DMA buffer for noncoherent devices.
Such setup is usually found in SoC with pre-Svpbmt Sifive cores.
Make use of such feature by modeling it as "XPbmtUC", a customized
version of Svpbmt, where a single bit in PTE is used for UC control.
There's no IO bit with such scheme, as it's assumed that the PMA
(usually hard-wired on these SoCs) will properly convey the strongly-
ordered, non-idempotent attribute of the MMIO region.

The enablement of such position of "XPbmtUC" is controlled by the
device-tree property "riscv,xpbmt-uncache-bit".

Example:

Starfive JH7110 (Sifive U74):
           [0x0,   0x40000000) Low MMIO
    [0x40000000, 0x2_40000000) Cached Mem
  [0x4_40000000, 0x6_40000000) Uncached Mem UC+
  [0x9_00000000, 0x9_d0000000) High MMIO

Device-tree:
  riscv,xpbmt-uncache-bit = <32>;

Use PTE bit 32 (PPN bit 34) as UC (uncache) control to perfectly
match the memory map of the SoC.

ESWIN EIC770X (Sifive U84/P550):
           [0x0,    0x20000000) Core Internal
    [0x20000000,    0x40000000) Core Internal (Die 1)
    [0x40000000,    0x60000000) Low MMIO
    [0x60000000,    0x80000000) Low MMIO (Die 1)
    [0x80000000, 0x10_80000000) Cached Mem
 [0x20_00000000, 0x30_00000000) Cached Mem (Die 1)
 [0x80_00000000, 0xa0_00000000) High MMIO
 [0xa0_00000000, 0xc0_00000000) High MMIO (Die 1)
 [0xc0_00000000, 0xd0_00000000) Uncached Mem
 [0xe0_00000000, 0xf0_00000000) Uncached Mem (Die 1)

EIC770X is not directly compatible to this model, as the uncached
regions are offsetted, and the offset is different among the Dies
in the dual-die version (EIC7702). so we expect the firmware to
provide a thin layer of hypervisor to transparently re-map:

    [0x80000000,  0x10_80000000) Cached Mem
 [0x20_00000000,  0x30_00000000) Cached Mem (Die 1)
 [0xc0_00000000,  0xd0_00000000) Uncached Mem <----------.
 [0xe0_00000000,  0xf0_00000000) Uncached Mem (Die 1) <--+--.
[0x100_80000000, 0x110_80000000) Mem UC+ ----------------'  |
[0x120_00000000, 0x130_00000000) Mem UC+ (Die 1) -----------'

With that, the firmware/bootloader can set the following at boot:
  riscv,xpbmt-uncache-bit = <38>;

Signed-off-by: Bo Gan <ganboing@gmail.com>
---
 arch/riscv/Kconfig                  | 12 ++++++++++++
 arch/riscv/include/asm/hwcap.h      |  1 +
 arch/riscv/include/asm/pgtable-64.h |  8 ++++++++
 arch/riscv/kernel/cpufeature.c      |  8 ++++++++
 arch/riscv/mm/pgtable.c             |  7 +++++++
 5 files changed, 36 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 6b39f37f769a2..f2b4da6a3deb1 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -893,6 +893,18 @@ config TOOLCHAIN_NEEDS_OLD_ISA_SPEC
 	  versions of clang and GCC to be passed to GAS, which has the same result
 	  as passing zicsr and zifencei to -march.
 
+config RISCV_ISA_XPBMTUC
+	bool "Support XPbmtUC (customized pbmt uncache bit)"
+	depends on 64BIT && MMU
+	depends on RISCV_ALTERNATIVE
+	default n
+	select DMA_DIRECT_REMAP
+	help
+	  Add support for "riscv,xpbmt-uncache-bit" device-tree property.
+	  The bit denotes the bit in PTE that marks the page as uncached.
+
+	  If you don't know what to do here, say N.
+
 config FPU
 	bool "FPU support"
 	default y
diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 4369a23385413..6baa6566cf4cc 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -111,6 +111,7 @@
 #define RISCV_ISA_EXT_ZILSD		102
 #define RISCV_ISA_EXT_ZCLSD		103
 
+#define RISCV_ISA_EXT_XPBMTUC		126
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
 #define RISCV_ISA_EXT_MAX		128
diff --git a/arch/riscv/include/asm/pgtable-64.h b/arch/riscv/include/asm/pgtable-64.h
index 6e789fa58514c..1a6d04884111d 100644
--- a/arch/riscv/include/asm/pgtable-64.h
+++ b/arch/riscv/include/asm/pgtable-64.h
@@ -140,6 +140,14 @@ enum napot_cont_order {
 #define _PAGE_IO_THEAD		((1UL << 63) | (1UL << 60))
 #define _PAGE_MTMASK_THEAD	(_PAGE_PMA_THEAD | _PAGE_IO_THEAD | (1UL << 59))
 
+#ifdef CONFIG_RISCV_ISA_XPBMTUC
+extern int riscv_xpbmtuc_bit;
+extern u64 riscv_xpbmtuc_mask;
+#endif
+
+#define XPBMTUC_HAS_PAGE_NOCACHE CONFIG_RISCV_ISA_XPBMTUC
+#define XPBMTUC_HAS_PAGE_MTMASK  CONFIG_RISCV_ISA_XPBMTUC
+
 static inline u64 riscv_page_mtmask(void)
 {
 	u64 val;
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index fa591aff9d335..faec169004b4a 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -1118,6 +1118,14 @@ void __init riscv_fill_hwcap(void)
 		riscv_v_setup_vsize();
 	}
 
+#ifdef CONFIG_RISCV_ISA_XPBMTUC
+	if (!of_property_read_u32(of_root, "riscv,xpbmt-uncache-bit",
+				  &riscv_xpbmtuc_bit)) {
+		riscv_xpbmtuc_mask = 1UL << riscv_xpbmtuc_bit;
+		set_bit(RISCV_ISA_EXT_XPBMTUC, riscv_isa);
+		pr_info("Using XPbmtUC bit=%d\n", riscv_xpbmtuc_bit);
+	}
+#endif
 	memset(print_str, 0, sizeof(print_str));
 	for (i = 0, j = 0; i < NUM_ALPHA_EXTS; i++)
 		if (riscv_isa[0] & BIT_MASK(i))
diff --git a/arch/riscv/mm/pgtable.c b/arch/riscv/mm/pgtable.c
index 807c0a0de1827..4ca442bc8595d 100644
--- a/arch/riscv/mm/pgtable.c
+++ b/arch/riscv/mm/pgtable.c
@@ -5,6 +5,13 @@
 #include <linux/kernel.h>
 #include <linux/pgtable.h>
 
+#ifdef CONFIG_RISCV_ISA_XPBMTUC
+int riscv_xpbmtuc_bit;
+
+u64 riscv_xpbmtuc_mask;
+EXPORT_SYMBOL(riscv_xpbmtuc_mask);
+#endif
+
 int ptep_set_access_flags(struct vm_area_struct *vma,
 			  unsigned long address, pte_t *ptep,
 			  pte_t entry, int dirty)
-- 
2.34.1


