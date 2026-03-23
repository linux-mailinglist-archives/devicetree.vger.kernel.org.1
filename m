Return-Path: <devicetree+bounces-279011-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMipL7sSwWnVQQQAu9opvQ
	(envelope-from <devicetree+bounces-279011-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 11:15:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C71422EFD47
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 11:15:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 807163017013
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 10:09:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ED1438B12E;
	Mon, 23 Mar 2026 10:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="FUCRWglD"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0EE38AC94
	for <devicetree@vger.kernel.org>; Mon, 23 Mar 2026 10:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774260557; cv=none; b=RIsScmy6VVhoJx8FWg1E98lfW8Y7qqSsISIdeNiZssMeUaUILGcIRFOzkfCmCXZ39n/BvK53AdPfw+IEOROH4ZKFKuVe7a2sFgL1S0ISe+K7BSqrd7qW0oNL/spiT+9ZyeBw/PC3JitqNuGnfmWdgsBNCky6/PfxsbFiFRy7Hyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774260557; c=relaxed/simple;
	bh=lIpGm9w9sQdb12Ur9F4Sb3EiTSGgkied7VvY4NFy6No=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=aEDpK2ewAuzGnSYfhNrg/rrOizyXePFKEL3EF6Y5KasSyVCLCyFSdAEKxLtpLnoVJtY+MhRffzScNh38cfkDYs3Pv6LNPjobsW12zfz5NOAjJspxjmKG1KoRjBrs4H6sICAAOqVcfkXk2wilX/lMsVzqbywLVqv93cIZcTjAPtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=FUCRWglD; arc=none smtp.client-ip=210.118.77.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20260323100913euoutp0204b531cdb0acc4f5138289bbc999d112~fcJLLkR_P2543425434euoutp02z
	for <devicetree@vger.kernel.org>; Mon, 23 Mar 2026 10:09:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20260323100913euoutp0204b531cdb0acc4f5138289bbc999d112~fcJLLkR_P2543425434euoutp02z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1774260554;
	bh=XnpG/ghmAqbS6QKwZNF5IxO0PeBEQO07aIL3Tp2D5sY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FUCRWglDvcz6v+kCemIlvGSD7pNISs5yAxcT2r7ya/G7VI7UyRLCBkT9zC3UULCMV
	 Eem7IL2mnlBxEZ1z7lF7vcs2tzmJS2nw5Xp9z3VjP2Dd6YVmFtQFTPo0NBiSqS5TpR
	 zQbp6vhU7+W0tyRiJ6+JtoAl7UXpqOmsXNsxauzc=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20260323100912eucas1p1f13cc5bfc49a119c7f1e0d6bd754d42c~fcJJeUWMb0541705417eucas1p1O;
	Mon, 23 Mar 2026 10:09:12 +0000 (GMT)
Received: from AMDC4653.digital.local (unknown [106.120.51.32]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20260323100911eusmtip2884e9a5ebc23eed9d8cea4e2a5e97500~fcJI7eMUO0421504215eusmtip2T;
	Mon, 23 Mar 2026 10:09:11 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-mm@kvack.org, iommu@lists.linux.dev
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Oreoluwa Babatunde
	<oreoluwa.babatunde@oss.qualcomm.com>, Saravana Kannan
	<saravanak@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Robin
	Murphy <robin.murphy@arm.com>
Subject: [PATCH v2 6/7] of: reserved_mem: clarify fdt_scan_reserved_mem*()
 functions
Date: Mon, 23 Mar 2026 11:09:00 +0100
Message-Id: <20260323100901.4079171-7-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260323100901.4079171-1-m.szyprowski@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20260323100912eucas1p1f13cc5bfc49a119c7f1e0d6bd754d42c
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20260323100912eucas1p1f13cc5bfc49a119c7f1e0d6bd754d42c
X-EPHeader: CA
X-CMS-RootMailID: 20260323100912eucas1p1f13cc5bfc49a119c7f1e0d6bd754d42c
References: <20260323100901.4079171-1-m.szyprowski@samsung.com>
	<CGME20260323100912eucas1p1f13cc5bfc49a119c7f1e0d6bd754d42c@eucas1p1.samsung.com>
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[samsung.com:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279011-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.szyprowski@samsung.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,samsung.com:dkim,samsung.com:email,samsung.com:mid]
X-Rspamd-Queue-Id: C71422EFD47
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Rename fdt_scan_reserved_mem_reg_nodes() to fdt_scan_reserved_mem_late()
to clearly show how it differs from fdt_scan_reserved_mem() and update
description of both functions.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/of/fdt.c             |  2 +-
 drivers/of/of_private.h      |  2 +-
 drivers/of/of_reserved_mem.c | 24 +++++++++++++++---------
 3 files changed, 17 insertions(+), 11 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 331646d667b9..43a0944ca462 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -1274,7 +1274,7 @@ void __init unflatten_device_tree(void)
 	void *fdt = initial_boot_params;
 
 	/* Save the statically-placed regions in the reserved_mem array */
-	fdt_scan_reserved_mem_reg_nodes();
+	fdt_scan_reserved_mem_late();
 
 	/* Populate an empty root node when bootloader doesn't provide one */
 	if (!fdt) {
diff --git a/drivers/of/of_private.h b/drivers/of/of_private.h
index df0bb00349e0..0ae16da066e2 100644
--- a/drivers/of/of_private.h
+++ b/drivers/of/of_private.h
@@ -186,7 +186,7 @@ static inline struct device_node *__of_get_dma_parent(const struct device_node *
 #endif
 
 int fdt_scan_reserved_mem(void);
-void __init fdt_scan_reserved_mem_reg_nodes(void);
+void __init fdt_scan_reserved_mem_late(void);
 
 bool of_fdt_device_is_available(const void *blob, unsigned long node);
 
diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index dceaf19f31fb..801451d034fa 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -265,16 +265,15 @@ static void __init __rmem_check_for_overlap(void)
 }
 
 /**
- * fdt_scan_reserved_mem_reg_nodes() - Store info for the "reg" defined
- * reserved memory regions.
+ * fdt_scan_reserved_mem_late() - Scan FDT and initialize remaining reserved
+ * memory regions.
  *
- * This function is used to scan through the DT and store the
- * information for the reserved memory regions that are defined using
- * the "reg" property. The region node number, name, base address, and
- * size are all stored in the reserved_mem array by calling the
- * fdt_reserved_mem_save_node() function.
+ * This function is used to scan again through the DT and initialize the
+ * "static" reserved memory regions, that are defined using the "reg"
+ * property. Each such region is then initialized with its specific init
+ * function and stored in the global reserved_mem array.
  */
-void __init fdt_scan_reserved_mem_reg_nodes(void)
+void __init fdt_scan_reserved_mem_late(void)
 {
 	const void *fdt = initial_boot_params;
 	phys_addr_t base, size;
@@ -328,7 +327,14 @@ void __init fdt_scan_reserved_mem_reg_nodes(void)
 static int __init __reserved_mem_alloc_size(unsigned long node, const char *uname);
 
 /*
- * fdt_scan_reserved_mem() - scan a single FDT node for reserved memory
+ * fdt_scan_reserved_mem() - reserve and allocate memory occupied by
+ * reserved memory regions.
+ *
+ * This function is used to scan through the FDT and mark memory occupied
+ * by all static (defined by the "reg" property) reserved memory regions.
+ * Then memory for all dynamic regions (defined by size & alignment) is
+ * allocated, a region specific init function is called and region information
+ * is stored in the reserved_mem array.
  */
 int __init fdt_scan_reserved_mem(void)
 {
-- 
2.34.1


