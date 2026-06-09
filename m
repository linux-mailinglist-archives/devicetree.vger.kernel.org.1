Return-Path: <devicetree+bounces-309030-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KQHYIl8RKGqm9QIAu9opvQ
	(envelope-from <devicetree+bounces-309030-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 15:13:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 849A26606CB
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 15:13:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bytedance.com header.s=google header.b=WMJUs+q7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309030-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309030-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=bytedance.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4826E302BB9C
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 13:01:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC5A841B361;
	Tue,  9 Jun 2026 13:01:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E7F81724
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 13:01:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781010099; cv=none; b=IeXdikgMsmMnQ+Xk58BT92KJ8vjELslafmJXQDt1N5Ozx+Y2aTG4tYnrDREawAcctqtM74SxNoDo7d+Roe1W6anD3y4oqVO7OFn+UIAzT4RFbgyargfYBy/mI9/FHKsBx9JnwJp2xJJaw0I5rWJmYOeYwO9wPljXp19c3cTOECk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781010099; c=relaxed/simple;
	bh=Nlerjuv8zYT6mH29QAsKXwKO76Dvq+OY7opxSWH52kI=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=k+8O54mt4CVPaCDYnfPDjFqG29iNdcDYkzwL8cacr0t+zMCYm7nZCMgSVQy9Xj9TD3oVydw4zuwDYOV8wOISYC2MpDdT04G7THjAY71TPi4zBZdIxpildk823cmWnjDSAcnNeGUIFvBEgAgo+BjilT6GLctg5o5IgsMQoflnRr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=WMJUs+q7; arc=none smtp.client-ip=209.85.216.52
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-36bb3551f6eso4838585a91.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 06:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1781010097; x=1781614897; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3mY4IoCKia/XuJ/oNtOCFVHCKeBb5u4W4dO0pcbEY+A=;
        b=WMJUs+q7eYra+/kQCmf9rWbLuj6sqdCMhvXGPkrGCp8EkgBJn30M6a56hPt8APfspY
         XsZvQ0z3bb2jDQuFb4NeAAGi1xxoP4z1slew9bNA6cWEvq8GjSwkmq0rT8Lx86kE974w
         Me1KnEVoAlPmCEUtnnF9qQwVrlQE6qO6EzcPUwgymLUfCUCqIMVP4USM58T69T++BRYY
         TK3Juws8TanWV47b5cqAfMkdUHRULApOZN7syumv2OxfJpTEdwUk3bI9R2eib0A55FxD
         2vd32EbOIqM68CZRz0697IGmBI7+MZ8QKabA89lJrwY+nh3sim648ipgC1JTfBk0Oyqx
         JH/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781010097; x=1781614897;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3mY4IoCKia/XuJ/oNtOCFVHCKeBb5u4W4dO0pcbEY+A=;
        b=mv6zvJFs39aYEiASu5IaBVfPjGfhSm1/jyu+hbfQgQPfh8jCyahLxmIcDHvpOuq6IW
         5bvzgvDWDc0xBT7fmnt8tR6H6gHz5J6FkOAxQX1wryGtRD0agrh1cqErWbEPgHDCq8qx
         Wm4IU92/gRLmwK3nWQnfiAUkAur5rdqmTULkg3mYf5b+dpaTZnbjf+Zlf+HiJLSDe/N6
         DbCeYJetDuQd7GhJDwO0DDuYHFsB3I9zhlXZWNv2Y3xxQdy3vAVZ3rMzu1HJipCzdVM+
         jbgu87fqz/FBU1EDBLEAlCijJZYioVaIuMYE1XlUQDLOCnrKtIrEQS6MyMHrtPVm26t3
         l4Jg==
X-Forwarded-Encrypted: i=1; AFNElJ9ph3iOFOMJd+anI86C6vhMtXAh8ASPzdJLaF0KgsXsDN1KWK9WwFu+X5TYDfrgDBYZlwiQxZYFq+AN@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn/off/GyusEbbqlOakJoS+HuI6AEWSbkQ29EGDlzxp4+OqlLH
	6xoXXzrdVq0XOK06DjdLMZYDkKfEcw1bovG1uVyXZC/VYAg7BXW4GTLAFzZzJ5Gox9w=
X-Gm-Gg: Acq92OHifRYCSuk11loiDeppxhlV6cC4V9tUKPcboQHomLg5Iqy8t9SEejquon/KGae
	3CvNQXQI+HcheEb2sWOr9iwDXCs0a6Ot5EPogyPIWyuxohl1+lUJ6TKtFuFeJnYaADcZO0r9qpG
	+FmEqiRocc1/qD+DBz1m9YBmLZQLCllfvKLx1Vj8N4h6EhnoC0MGgsWRjEEcTW0asNFqmvvA0cd
	G9mt9bRbYkJo4IKAx361VNFC8QZ69I0GIa6scVQNSdQ4xf/E6X/NxrLG2425ymnI4kHx4v27KPW
	Vuk/Y6mbghbfKp1F6wdApEEk0Uu3hDT41pk+z18UcPsQSahNICSdSVcT1v9YrR+F91AX4rMDhf5
	iSsvR0GIkcQ0P5W4rnw/v4GBRrL7TdHU0TluI4b+N+v7wyrAmLGWxhw8KWYAK67amT+7makexcD
	aV3eZe1ht8D6HR5d2xam1EgZRiwe+Xy14+cGH3p9Fww4BU/v/ow4Qny8v3+c0Re0bYRFA=
X-Received: by 2002:a17:90b:6c3:b0:36d:b9c5:e8f6 with SMTP id 98e67ed59e1d1-370f0481909mr22489848a91.19.1781010094844;
        Tue, 09 Jun 2026 06:01:34 -0700 (PDT)
Received: from L6YN4KR4K9.bytedance.net ([139.177.225.240])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36f6bf8284dsm23267889a91.4.2026.06.09.06.01.24
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Tue, 09 Jun 2026 06:01:34 -0700 (PDT)
From: Yunhui Cui <cuiyunhui@bytedance.com>
To: akpm@linux-foundation.org,
	alex@ghiti.fr,
	andrew+kernel@donnellan.id.au,
	aou@eecs.berkeley.edu,
	apatel@ventanamicro.com,
	apopple@nvidia.com,
	atishp@rivosinc.com,
	baolin.wang@linux.alibaba.com,
	cleger@rivosinc.com,
	conor+dt@kernel.org,
	cuiyunhui@bytedance.com,
	debug@rivosinc.com,
	devicetree@vger.kernel.org,
	guodong@riscstar.com,
	hui.wang@canonical.com,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	liu.xuemei1@zte.com.cn,
	namcao@linutronix.de,
	nick.hu@sifive.com,
	palmer@dabbelt.com,
	pincheng.plct@isrc.iscas.ac.cn,
	pjw@kernel.org,
	qingwei.hu@bytedance.com,
	ritesh.list@gmail.com,
	rmclure@linux.ibm.com,
	robh@kernel.org,
	wangruikang@iscas.ac.cn,
	zhangchunyan@iscas.ac.cn,
	zong.li@sifive.com
Subject: [PATCH v3 3/3] riscv: preserve A/D and soft-dirty state across PTE updates
Date: Tue,  9 Jun 2026 21:00:20 +0800
Message-Id: <20260609130021.99899-4-cuiyunhui@bytedance.com>
X-Mailer: git-send-email 2.39.2 (Apple Git-143)
In-Reply-To: <20260609130021.99899-1-cuiyunhui@bytedance.com>
References: <20260609130021.99899-1-cuiyunhui@bytedance.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bytedance.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[bytedance.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[cuiyunhui@bytedance.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-309030-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:akpm@linux-foundation.org,m:alex@ghiti.fr,m:andrew+kernel@donnellan.id.au,m:aou@eecs.berkeley.edu,m:apatel@ventanamicro.com,m:apopple@nvidia.com,m:atishp@rivosinc.com,m:baolin.wang@linux.alibaba.com,m:cleger@rivosinc.com,m:conor+dt@kernel.org,m:cuiyunhui@bytedance.com,m:debug@rivosinc.com,m:devicetree@vger.kernel.org,m:guodong@riscstar.com,m:hui.wang@canonical.com,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:liu.xuemei1@zte.com.cn,m:namcao@linutronix.de,m:nick.hu@sifive.com,m:palmer@dabbelt.com,m:pincheng.plct@isrc.iscas.ac.cn,m:pjw@kernel.org,m:qingwei.hu@bytedance.com,m:ritesh.list@gmail.com,m:rmclure@linux.ibm.com,m:robh@kernel.org,m:wangruikang@iscas.ac.cn,m:zhangchunyan@iscas.ac.cn,m:zong.li@sifive.com,m:andrew@donnellan.id.au,m:conor@kernel.org,m:krzk@kernel.org,m:riteshlist@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linux-foundation.org,ghiti.fr,donnellan.id.au,eecs.berkeley.edu,ventanamicro.com,nvidia.com,rivosinc.com,linux.alibaba.com,kernel.org,bytedance.com,vger.kernel.org,riscstar.com,canonical.com,lists.infradead.org,zte.com.cn,linutronix.de,sifive.com,dabbelt.com,isrc.iscas.ac.cn,gmail.com,linux.ibm.com,iscas.ac.cn];
	DKIM_TRACE(0.00)[bytedance.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[31];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cuiyunhui@bytedance.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,kernel,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,bytedance.com:dkim,bytedance.com:email,bytedance.com:mid,bytedance.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 849A26606CB

Use cmpxchg-based PTE updates so software permission changes do not lose
concurrent A/D updates from hardware. Preserve soft-dirty state as well,
since RISC-V marks PTEs dirty and soft-dirty together.

Signed-off-by: Yunhui Cui <cuiyunhui@bytedance.com>
Reviewed-by: Qingwei Hu <qingwei.hu@bytedance.com>
---
 arch/riscv/include/asm/pgtable.h | 27 +++++++++----
 arch/riscv/mm/pgtable.c          | 68 ++++++++++++++++++++++++++------
 2 files changed, 77 insertions(+), 18 deletions(-)

diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index 5d5756bda82e3..02286b48dc471 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -678,15 +678,21 @@ static inline pte_t ptep_get_and_clear(struct mm_struct *mm,
 static inline void ptep_set_wrprotect(struct mm_struct *mm,
 				      unsigned long address, pte_t *ptep)
 {
-	pte_t read_pte = READ_ONCE(*ptep);
+	pte_t old_pte;
+	pte_t pte;
 	/*
 	 * ptep_set_wrprotect can be called for shadow stack ranges too.
 	 * shadow stack memory is XWR = 010 and thus clearing _PAGE_WRITE will lead to
 	 * encoding 000b which is wrong encoding with V = 1. This should lead to page fault
 	 * but we dont want this wrong configuration to be set in page tables.
 	 */
-	atomic_long_set((atomic_long_t *)ptep,
-			((pte_val(read_pte) & ~(unsigned long)_PAGE_WRITE) | _PAGE_READ));
+	pte = READ_ONCE(*ptep);
+	do {
+		old_pte = pte;
+		pte = pte_wrprotect(pte);
+		pte_val(pte) = cmpxchg_relaxed(&pte_val(*ptep), pte_val(old_pte),
+					       pte_val(pte));
+	} while (pte_val(pte) != pte_val(old_pte));
 }
 
 #define __HAVE_ARCH_PTEP_CLEAR_YOUNG_FLUSH
@@ -742,14 +748,14 @@ static inline pgprot_t pgprot_writecombine(pgprot_t _prot)
 #define pgprot_dmacoherent pgprot_writecombine
 
 /*
- * Both Svade and Svadu control the hardware behavior when the PTE A/D bits need to be set. By
- * default the M-mode firmware enables the hardware updating scheme when only Svadu is present in
- * DT.
+ * Both Svade and Svadu control the hardware behavior when the PTE A/D bits
+ * need to be set. The core MM code only cares whether hardware updating of
+ * the accessed/dirty state is currently active.
  */
 #define arch_has_hw_pte_young arch_has_hw_pte_young
 static inline bool arch_has_hw_pte_young(void)
 {
-	return riscv_has_extension_unlikely(RISCV_ISA_EXT_SVADU);
+	return riscv_has_hw_pte_ad_updating();
 }
 
 /*
@@ -1040,6 +1046,13 @@ static inline void pmdp_set_wrprotect(struct mm_struct *mm,
 	ptep_set_wrprotect(mm, address, (pte_t *)pmdp);
 }
 
+#define __HAVE_ARCH_PUDP_SET_WRPROTECT
+static inline void pudp_set_wrprotect(struct mm_struct *mm,
+				      unsigned long address, pud_t *pudp)
+{
+	ptep_set_wrprotect(mm, address, (pte_t *)pudp);
+}
+
 #define pmdp_establish pmdp_establish
 static inline pmd_t pmdp_establish(struct vm_area_struct *vma,
 				unsigned long address, pmd_t *pmdp, pmd_t pmd)
diff --git a/arch/riscv/mm/pgtable.c b/arch/riscv/mm/pgtable.c
index 9c4427d0b1874..98eed19ea70de 100644
--- a/arch/riscv/mm/pgtable.c
+++ b/arch/riscv/mm/pgtable.c
@@ -5,23 +5,55 @@
 #include <linux/kernel.h>
 #include <linux/pgtable.h>
 
+#define RISCV_PTE_ACCESS_FLAG_MASK	(_PAGE_READ | _PAGE_WRITE | _PAGE_EXEC | \
+					 _PAGE_ACCESSED | _PAGE_DIRTY | \
+					 _PAGE_SOFT_DIRTY)
+
+static inline unsigned long riscv_pte_access_flags(unsigned long cur,
+						   unsigned long entry)
+{
+	unsigned long pteval;
+	unsigned long preserved_flags;
+
+	preserved_flags = _PAGE_ACCESSED | _PAGE_DIRTY | _PAGE_SOFT_DIRTY;
+	pteval = cur & ~RISCV_PTE_ACCESS_FLAG_MASK;
+	pteval |= entry & (RISCV_PTE_ACCESS_FLAG_MASK & ~preserved_flags);
+	pteval |= (cur | entry) & preserved_flags;
+
+	return pteval;
+}
+
 int ptep_set_access_flags(struct vm_area_struct *vma,
 			  unsigned long address, pte_t *ptep,
 			  pte_t entry, int dirty)
 {
+	unsigned long old_pteval;
+	unsigned long new_pteval;
+	unsigned long prev_pteval;
+	bool changed;
+
+	old_pteval = pte_val(ptep_get(ptep));
+	do {
+		new_pteval = riscv_pte_access_flags(old_pteval, pte_val(entry));
+		if (new_pteval == old_pteval)
+			break;
+
+		prev_pteval = cmpxchg_relaxed(&pte_val(*ptep), old_pteval,
+					      new_pteval);
+		if (prev_pteval == old_pteval)
+			break;
+
+		old_pteval = prev_pteval;
+	} while (1);
+
+	changed = old_pteval != new_pteval;
 	if (riscv_has_extension_unlikely(RISCV_ISA_EXT_SVVPTC)) {
-		if (!pte_same(ptep_get(ptep), entry)) {
-			__set_pte_at(vma->vm_mm, ptep, entry);
-			/* Here only not svadu is impacted */
+		if (changed)
 			flush_tlb_page(vma, address);
-			return true;
-		}
 
-		return false;
+		return changed;
 	}
 
-	if (!pte_same(ptep_get(ptep), entry))
-		__set_pte_at(vma->vm_mm, ptep, entry);
 	/*
 	 * update_mmu_cache will unconditionally execute, handling both
 	 * the case that the PTE changed and the spurious fault case.
@@ -32,9 +64,23 @@ int ptep_set_access_flags(struct vm_area_struct *vma,
 bool ptep_test_and_clear_young(struct vm_area_struct *vma,
 		unsigned long address, pte_t *ptep)
 {
-	if (!pte_young(ptep_get(ptep)))
-		return false;
-	return test_and_clear_bit(_PAGE_ACCESSED_OFFSET, &pte_val(*ptep));
+	unsigned long old_pteval;
+	unsigned long new_pteval;
+	unsigned long prev_pteval;
+
+	old_pteval = pte_val(ptep_get(ptep));
+	do {
+		if (!(old_pteval & _PAGE_ACCESSED))
+			return false;
+
+		new_pteval = pte_val(pte_mkold(__pte(old_pteval)));
+		prev_pteval = cmpxchg_relaxed(&pte_val(*ptep), old_pteval,
+					      new_pteval);
+		if (prev_pteval == old_pteval)
+			return true;
+
+		old_pteval = prev_pteval;
+	} while (1);
 }
 EXPORT_SYMBOL_GPL(ptep_test_and_clear_young);
 
-- 
2.39.5


