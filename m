Return-Path: <devicetree+bounces-275942-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBBTGcCdt2l/TgEAu9opvQ
	(envelope-from <devicetree+bounces-275942-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:05:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B14C294F3F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:05:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 76AD93005982
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 06:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 274F1347532;
	Mon, 16 Mar 2026 06:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VrI/sDBo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEEFB346A15
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 06:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773641150; cv=none; b=XeWOQQ5VPFqKxth4T4rfiP4VwcYMq51RO1t+FbZ6u0I7qv0oOp1pPjCOI+l/ekXFqm6uWWXH/cbaKwnSygAxWmK7s5Y1uRe+9x4gMtolikg6YdC73drizVwnGBdktdEqx48rS+TjyiGCOnBjoWH3lyxA40ZK5UJVfsIXqt1VqpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773641150; c=relaxed/simple;
	bh=xUKfLweTvWOn86qKV/CgPDqf3LJ5NmrIDHCvlTx0hCE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=U087Bg/9+WAdddb4LSLAeBjrUTAXFHb92mGs3IqBIKO+KQ3DktzirlOB/Hj/oMcyH3iACLU2LG1Bu5I96wL6JtaCX1NFNJ/QVcDSpluY2RZqz0XYzF0+kck0HRy4ZyHC8PqvNF9bOzX9hsIYIN845MF4UnpEKTTga+flRQuifCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VrI/sDBo; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-82a124f3a5bso2048443b3a.0
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 23:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773641148; x=1774245948; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HQag27lfnL4r4x+dLynVrrgTLbk7YwnU84xBzCA2Pic=;
        b=VrI/sDBoU611E6P07NGvYkAEHZR+L8qZFsIR3Y443otV0TPQ/DKabh653mP659bQl/
         yAliCejpgyzkjwKSRBssyXl/2HKUQMlewDQOUFggGixcfkyMj/Ff+1D7UBFC2D4n3+GK
         fWMMCLHUjuRJANnGnsau4srScXwe4CMv1xey8uSbKlb9UWKn4oKpBFIQgkwlfmoDyIYo
         0p2gj6pCAyVVc+VsHSCuAbwcsGxvE6qc2wItLqPKfqva0QosqcKZvoGkUw9JifnSNBFN
         fLtMNpG9vMnUB0931UhEtRPrFaGF22Web1v1uGF1V2xXbUJJ4F0CJTQKHquqnVGP/k7j
         ZUZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773641148; x=1774245948;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HQag27lfnL4r4x+dLynVrrgTLbk7YwnU84xBzCA2Pic=;
        b=fj4DO9Qe/TxzJW3g9E3dYOxH37f6gre5SLc+8zVpudFcZ7JPXaGdKpdNkIXrD9FrcF
         fvVpOEhYEc6zeGSvfWZtTwFAXpBH9qpMTcADdikXE3IENbTL2OkYFeWQmO9x3RWxsdcH
         xjTUYt6L7/WJG+xQgt2GMtmCEgzJDj16Pat+LrhryoNSyhHpm+trowx53MHKhiKycrkH
         LFXuv49xtIEsQF5Rd8UxXHSM1K6EG424lpEt9VZ0h93qBE4GEGxcBZCQZPIu0FguQzec
         b+sTYPUzOUchGS+m2KceXrIpkpEgPj4+nDNVP2x2cS6paRtXALbqaW0pBw1Znhja/kNG
         Zlng==
X-Forwarded-Encrypted: i=1; AJvYcCVylVGnZ0hV+l8YFXArhlJLp+IIdJX3Rwv/8fd8i062fvR/uXeIA9PmqlUuE4WpytuY1o+dX20TxrFX@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9dmpPXEOAZexFpBFy4g608rikQQkfknS0cSrU++UX52BVzT9e
	Q99fMjXs0bdJdX+xBUzYnuwv4WmEZCpB+iIWuN19JnY8E9usk/n+p1jl
X-Gm-Gg: ATEYQzwv4bkI7pLmDjd3lvw33kog0YqqJ9VR4gzsOoED4WyozZ+VKy+DJt+9YICID/e
	qiZsAYubFDKB5iRt3waVAuDF1K7IpTbK4lMZE4d2FVR17EtjKp9uhEyJgkN6Po/56srOx6fA9fm
	eyASxwtO4vUZrvaEGBW+GCaCO+i7SQsDoJkqf3HLUMhnLgdpCAXfeN5gDx/g/oStvtMy23Px1pV
	xBqcl3XdaxmtMksd4sHz+nMQtk6Td2typ+QVOGVHJMNbEVnVA2isBVacIwUbkrIbWU1zeSwk1IC
	9bDQZXoB4Lf+AXD7lpEFQoPZdulUKMnKLWzHGOjtTTFvET8VdrmIFviAZ0EMdscn/8oFciARN2c
	3k11ts10/ln8JfWlHpy6EAb/klzKgvuKWz9H/aCaYF3QiNlOWV1xVT4VGjNw0f6EFSmdLcJ+hy5
	AYYKjsIy1xvC3m5N/uWnYfAOvD
X-Received: by 2002:a05:6a00:a0b:b0:829:9130:e699 with SMTP id d2e1a72fcca58-82a19907d1amr10824035b3a.52.1773641147891;
        Sun, 15 Mar 2026 23:05:47 -0700 (PDT)
Received: from m91p.airy.home ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a07393098sm12525226b3a.62.2026.03.15.23.05.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 23:05:46 -0700 (PDT)
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
Subject: [RFC PATCH v2 3/3] riscv: errata: sifive: Add an "errata" to simulate Svpbmt on cores without
Date: Sun, 15 Mar 2026 23:03:28 -0700
Message-Id: <20260316060328.1173634-4-ganboing@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260316060328.1173634-1-ganboing@gmail.com>
References: <20260316060328.1173634-1-ganboing@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275942-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 0B14C294F3F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On some platforms with pre-Svpbmt Sifive cores, they map the system
memory twice in physical address space, one as cached (through the
front port), and the other as uncached (through the system port), to
enable drivers working with non-cache-coherent devices. Drivers can map
the DMA buffers uncached through the uncached alias, and don't have to
flush caches explicitly. It eases the driver programming. For complex
device drivers, such as the GPU, this is a must have, as DMA pages can
be mmap'ed to user space, and the userspace can't do caches flushes due
to the lack of Zicbom on these older cores.

Introduce a Sifive "errata" to model such setup with a customized
version of Svpbmt, "XPbmtUC", where a single, artificial bit in the PTE
is used for cache/uncache control (UC), effectively offsetting the PPN
by power-of-2. I.e.,

Starfive JH7110 (Sifive U74):
           [0x0,   0x40000000) Low MMIO
    [0x40000000, 0x2_40000000) Cached Mem
  [0x4_40000000, 0x6_40000000) Uncached Mem UC+
  [0x9_00000000, 0x9_d0000000) High MMIO

Using PTE bit 32 (PPN bit 34) as UC (uncache) control perfectly matches
the memory map of the SoC.

Other SoCs like ESWIN EIC770X is not directly compatible to this model,
as the uncached regions are not power-of-2 offseted, and the offsets are
different between Dies in the dual-die version (EIC7702). The firmware,
however, could use G-stage page table to transparently re-map, and make
the address space suitable for XPbmtUC scheme to be applied:

             [0x0,     0x20000000) Core Internal
      [0x20000000,     0x40000000) Core Internal (Die 1)
      [0x40000000,     0x60000000) Low MMIO
      [0x60000000,     0x80000000) Low MMIO (Die 1)
      [0x80000000,  0x10_80000000) Cached Mem
   [0x20_00000000,  0x30_00000000) Cached Mem (Die 1)
   [0x80_00000000,  0xa0_00000000) High MMIO
   [0xa0_00000000,  0xc0_00000000) High MMIO (Die 1)
   [0xc0_00000000,  0xd0_00000000) Uncached Mem <----------.
   [0xe0_00000000,  0xf0_00000000) Uncached Mem (Die 1) <--+--.
 with firmware/hypervisor re-mapping:                      |  |
 ------------------------------------                      |  |
  [0x100_80000000, 0x110_80000000) Mem UC+ ----------------'  |
  [0x120_00000000, 0x130_00000000) Mem UC+ (Die 1) -----------'

Such firmware capability is detected at boot time by sbi ecalls. The
firmware will provide us the UC bit position if re-map is in effect.

Note: currently this feature is gated by JH7110 and EIC770X SoCs to
avoid unnecessary sbi ecalls. There's also no IO bit in such XPbmtUC
scheme, as it's assumed that the PMA (hard-wired on these SoCs) will
convey the strongly-ordered, non-idempotent attribute of MMIO regions.

Signed-off-by: Bo Gan <ganboing@gmail.com>
---
 arch/riscv/Kconfig.errata                    | 13 ++++
 arch/riscv/errata/sifive/errata.c            | 72 ++++++++++++++++++++
 arch/riscv/include/asm/errata_list.h         | 19 +++++-
 arch/riscv/include/asm/errata_list_vendors.h |  3 +-
 arch/riscv/include/asm/pgtable-64.h          |  9 ++-
 5 files changed, 112 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/Kconfig.errata b/arch/riscv/Kconfig.errata
index 3c945d086c7d0..0722dc8df4a9e 100644
--- a/arch/riscv/Kconfig.errata
+++ b/arch/riscv/Kconfig.errata
@@ -76,6 +76,19 @@ config ERRATA_SIFIVE_CIP_1200
 
 	  If you don't know what to do here, say "Y".
 
+config ERRATA_SIFIVE_XPBMTUC
+	bool "Support XPbmtUC (customized uncache bit)"
+	depends on ERRATA_SIFIVE && 64BIT && MMU
+	default y
+	select DMA_DIRECT_REMAP
+	help
+	  This will detect and enable the XPbmtUC, where a bit in PTE
+	  is chosen as the UC (uncache) control bit to emulate Svpbmt
+	  on supported SoCs. For SoCs with non-cache-coherent devices,
+	  enabling XPbmtUC allows drivers to map DMA buffers uncached.
+
+	  If you don't know what to do here, say "Y".
+
 config ERRATA_STARFIVE_JH7100
 	bool "StarFive JH7100 support"
 	depends on ARCH_STARFIVE
diff --git a/arch/riscv/errata/sifive/errata.c b/arch/riscv/errata/sifive/errata.c
index f26c997e04e59..fd804e53cfcaa 100644
--- a/arch/riscv/errata/sifive/errata.c
+++ b/arch/riscv/errata/sifive/errata.c
@@ -8,11 +8,37 @@
 #include <linux/module.h>
 #include <linux/string.h>
 #include <linux/bug.h>
+#include <linux/of.h>
 #include <asm/text-patching.h>
 #include <asm/alternative.h>
 #include <asm/vendorid_list.h>
 #include <asm/errata_list.h>
 #include <asm/vendor_extensions.h>
+#include <asm/cacheflush.h>
+#include <asm/sbi.h>
+
+#define SIFIVE_SBI_EXT_SIFIVE		0x09000489
+#define SIFIVE_SBI_EXT_XPBMTUC_PRESENT	0x50425543 // PBUC
+
+#ifdef CONFIG_ERRATA_SIFIVE_XPBMTUC
+
+u64 riscv_xpbmtuc_mask;
+EXPORT_SYMBOL(riscv_xpbmtuc_mask);
+
+static const struct {
+	const char *machine;
+	int xpbmtuc_bit;
+} xpbmtuc_platforms[] = {
+	{
+		.machine = "starfive,jh7110",
+		.xpbmtuc_bit = 32
+	},
+	{
+		.machine = "eswin,eic7700",
+		.xpbmtuc_bit = -1 // detect
+	},
+};
+#endif
 
 struct errata_info_t {
 	char name[32];
@@ -51,6 +77,46 @@ static bool errata_cip_1200_check_func(unsigned long  arch_id, unsigned long imp
 	return true;
 }
 
+#ifdef CONFIG_ERRATA_SIFIVE_XPBMTUC
+static void detect_xpbmtuc(void)
+{
+	int riscv_xpbmtuc_bit = -1, i;
+	struct sbiret ret;
+
+	for (i = 0; i < ARRAY_SIZE(xpbmtuc_platforms); i++) {
+		if (!of_machine_is_compatible(xpbmtuc_platforms[i].machine))
+			continue;
+
+		riscv_xpbmtuc_bit = xpbmtuc_platforms[i].xpbmtuc_bit;
+		if (riscv_xpbmtuc_bit >= 0)
+			break;
+
+		ret = sbi_ecall(SIFIVE_SBI_EXT_SIFIVE,
+				SIFIVE_SBI_EXT_XPBMTUC_PRESENT,
+				0, 0, 0, 0, 0, 0);
+		riscv_xpbmtuc_bit = ret.error ? -1 : ret.value;
+		break;
+	}
+	if (riscv_xpbmtuc_bit < 0)
+		return;
+
+	riscv_xpbmtuc_mask = 1UL << riscv_xpbmtuc_bit;
+	pr_info("Using XPbmtUC bit %d\n", riscv_xpbmtuc_bit);
+}
+
+static bool errata_xpbmtuc_check_func(unsigned long arch_id, unsigned long impid)
+{
+	return riscv_xpbmtuc_mask != 0;
+}
+#else
+static void detect_xpbmtuc(void) { }
+
+static bool errata_xpbmtuc_check_func(unsigned long arch_id, unsigned long impid)
+{
+	return false;
+}
+#endif
+
 static struct errata_info_t errata_list[ERRATA_SIFIVE_NUMBER] = {
 	{
 		.name = "cip-453",
@@ -60,6 +126,10 @@ static struct errata_info_t errata_list[ERRATA_SIFIVE_NUMBER] = {
 		.name = "cip-1200",
 		.check_func = errata_cip_1200_check_func
 	},
+	{
+		.name = "xpbmtuc",
+		.check_func = errata_xpbmtuc_check_func
+	},
 };
 
 static u32 __init_or_module sifive_errata_probe(unsigned long archid,
@@ -88,6 +158,8 @@ void sifive_errata_patch_func(struct alt_entry *begin, struct alt_entry *end,
 
 	if (stage == RISCV_ALTERNATIVES_EARLY_BOOT)
 		return;
+	else if (stage == RISCV_ALTERNATIVES_BOOT)
+		detect_xpbmtuc();
 
 	cpu_req_errata = sifive_errata_probe(archid, impid);
 
diff --git a/arch/riscv/include/asm/errata_list.h b/arch/riscv/include/asm/errata_list.h
index 6694b5ccdcf85..a05086f05a0cf 100644
--- a/arch/riscv/include/asm/errata_list.h
+++ b/arch/riscv/include/asm/errata_list.h
@@ -53,18 +53,33 @@ asm(ALTERNATIVE(	\
 	: /* no inputs */	\
 	: "memory")
 
+#ifdef CONFIG_64BIT
+#define ALT_PAGE_CUST_BIT(_bit)						\
+asm(ALTERNATIVE("li %0, 0\t\nnop",					\
+		"1: auipc %0, %%pcrel_hi(riscv_xpbmtuc_mask)\t\n"	\
+		      "ld %0, %%pcrel_lo(1b)(%0)", SIFIVE_VENDOR_ID,	\
+			ERRATA_SIFIVE_XPBMTUC,				\
+			CONFIG_ERRATA_SIFIVE_XPBMTUC)			\
+		: "=r"(_bit))
+#endif
+
 /*
  * _val is marked as "will be overwritten", so need to set it to 0
  * in the default case.
  */
 #define ALT_SVPBMT_SHIFT 61
 #define ALT_THEAD_MAE_SHIFT 59
+#define HAS_XPBMTUC_PAGE_NOCACHE	CONFIG_ERRATA_SIFIVE_XPBMTUC
+#define HAS_XPBMTUC_PAGE_MTMASK		CONFIG_ERRATA_SIFIVE_XPBMTUC
 #define ALT_SVPBMT(_val, prot)						\
-asm(ALTERNATIVE_2("li %0, 0\t\nnop",					\
+asm(ALTERNATIVE_3("li %0, 0\t\nnop",					\
 		  "li %0, %1\t\nslli %0,%0,%3", 0,			\
 			RISCV_ISA_EXT_SVPBMT, CONFIG_RISCV_ISA_SVPBMT,	\
 		  "li %0, %2\t\nslli %0,%0,%4", THEAD_VENDOR_ID,	\
-			ERRATA_THEAD_MAE, CONFIG_ERRATA_THEAD_MAE)	\
+			ERRATA_THEAD_MAE, CONFIG_ERRATA_THEAD_MAE,	\
+		  "1: auipc %0, %%pcrel_hi(riscv_xpbmtuc_mask)\t\n"	\
+			"ld %0, %%pcrel_lo(1b)(%0)", SIFIVE_VENDOR_ID,	\
+			ERRATA_SIFIVE_XPBMTUC, HAS_XPBMTUC##prot)	\
 		: "=r"(_val)						\
 		: "I"(prot##_SVPBMT >> ALT_SVPBMT_SHIFT),		\
 		  "I"(prot##_THEAD >> ALT_THEAD_MAE_SHIFT),		\
diff --git a/arch/riscv/include/asm/errata_list_vendors.h b/arch/riscv/include/asm/errata_list_vendors.h
index ec7eba3734371..b2bf8d7a52c30 100644
--- a/arch/riscv/include/asm/errata_list_vendors.h
+++ b/arch/riscv/include/asm/errata_list_vendors.h
@@ -11,7 +11,8 @@
 #ifdef CONFIG_ERRATA_SIFIVE
 #define	ERRATA_SIFIVE_CIP_453 0
 #define	ERRATA_SIFIVE_CIP_1200 1
-#define	ERRATA_SIFIVE_NUMBER 2
+#define	ERRATA_SIFIVE_XPBMTUC 2
+#define	ERRATA_SIFIVE_NUMBER 3
 #endif
 
 #ifdef CONFIG_ERRATA_THEAD
diff --git a/arch/riscv/include/asm/pgtable-64.h b/arch/riscv/include/asm/pgtable-64.h
index 6e789fa58514c..7f47a361d8003 100644
--- a/arch/riscv/include/asm/pgtable-64.h
+++ b/arch/riscv/include/asm/pgtable-64.h
@@ -76,7 +76,14 @@ typedef struct {
  * | 63 | 62 61 | 60 54 | 53  10 | 9             8 | 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0
  *   N      MT     RSV    PFN      reserved for SW   D   A   G   U   X   W   R   V
  */
-#define _PAGE_PFN_MASK  GENMASK(53, 10)
+static inline u64 riscv_pfn_mask(void)
+{
+	u64 cust_bit;
+
+	ALT_PAGE_CUST_BIT(cust_bit);
+	return GENMASK(53, 10) ^ cust_bit;
+}
+#define _PAGE_PFN_MASK  riscv_pfn_mask()
 
 /*
  * [63] Svnapot definitions:
-- 
2.34.1


