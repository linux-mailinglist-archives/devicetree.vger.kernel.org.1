Return-Path: <devicetree+bounces-137093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C023A07765
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:30:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4926D3A869F
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E348221A430;
	Thu,  9 Jan 2025 13:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="h5V5IXt3"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-zteg10011401.me.com (pv50p00im-zteg10011401.me.com [17.58.6.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A3E8218EB2
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 13:28:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736429330; cv=none; b=FdscGDs9M6/7O27lsZhFAez4+WppoajZQVWxyGpI9pUkkgjbroXdfikpWWR365jSZNZxAUytLEIUZa0GU54zvHL8TVzienVlcVCZRiAZ+RbX/zP6nG0Qqi0q86ELENnSFggNJFgjpH1RoiF3QcA0ixdYWVg4mwddTdbJ+IOP8F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736429330; c=relaxed/simple;
	bh=psQUOW6Ky/zN+kinWs20f1Lj9NsDSxPYQ+WCCxrQ7HA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KhVPUqXBb/2TAX7OsVy9yErkwzILNeu6QCvVVTQRGKLvsqI3M13tWRrpIPe+DS1ATiII1L8mbF5mYtMY4HGHWAI0bIeMiB0ATxdUK9busj4wettcQegaz6MyyFvUv3MsN3F+LyW8f6V60IeTWinSiPibSSqQ5jZNB2nlA7Klzvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=h5V5IXt3; arc=none smtp.client-ip=17.58.6.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736429329;
	bh=s5OvC1NKLXgRIdO4zIttIC5hFiXGsvYigo7n737f4Yk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=h5V5IXt3jMd8+oDdujuzctfDgE/Tr/coNG13SZ3GKkVm6XcGjcP2OrjitQG7iY96k
	 jaASLIjWOWaZiK1wzP6XlP/j8ymz58FCjoz9vkwYkr8t725mN3ymabMnL65buCTmG8
	 NOzI3tLZh37kjYeGXBPfbPRNqs23fhkV4AI70Az0G7YIDwFVmFq2zjQX3IDvI7LZhn
	 nsRi90etZlmeoIreN2QKVytq2YH6gFsx5rVrX1/PHVu5JMBqzHBUg8mmE+2jjAwFBp
	 H6Avz3JI/ajr2EWOiBUGRNpL2vqwwG6R4WOpbhm3X9+WevPAujaMgZ8HxGp269smP4
	 BmN+GRMwMgsQA==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-zteg10011401.me.com (Postfix) with ESMTPSA id 508CE34BAAB2;
	Thu,  9 Jan 2025 13:28:43 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Thu, 09 Jan 2025 21:26:59 +0800
Subject: [PATCH v4 08/14] of: Remove a duplicated code block
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250109-of_core_fix-v4-8-db8a72415b8c@quicinc.com>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
In-Reply-To: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
 Maxime Ripard <mripard@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 Grant Likely <grant.likely@secretlab.ca>, Marc Zyngier <maz@kernel.org>, 
 Andreas Herrmann <andreas.herrmann@calxeda.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Mike Rapoport <rppt@kernel.org>, 
 Oreoluwa Babatunde <quic_obabatun@quicinc.com>
Cc: Zijun Hu <zijun_hu@icloud.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: nhLpPXVM_wlM-AtjEAkHZJP050pA2sQ5
X-Proofpoint-ORIG-GUID: nhLpPXVM_wlM-AtjEAkHZJP050pA2sQ5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-09_05,2025-01-09_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 adultscore=0
 suspectscore=0 mlxlogscore=999 clxscore=1015 malwarescore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501090108
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

From: Zijun Hu <quic_zijuhu@quicinc.com>

address.c has a same code block with fdt_address.c.

Remove a copy by moving the duplicated code block into of_private.h.

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/of/address.c     | 21 +++------------------
 drivers/of/fdt_address.c | 21 ++++-----------------
 drivers/of/of_private.h  | 18 ++++++++++++++++++
 3 files changed, 25 insertions(+), 35 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index c5b925ac469f16b8ae4b8275b60210a2d583ff83..6c40f96a19610c19d9594a9605fd9a2fa2c97cd4 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -16,25 +16,10 @@
 #include <linux/string.h>
 #include <linux/dma-direct.h> /* for bus_dma_region */
 
-#include "of_private.h"
-
-/* Max address size we deal with */
-#define OF_MAX_ADDR_CELLS	4
-#define OF_CHECK_ADDR_COUNT(na)	((na) > 0 && (na) <= OF_MAX_ADDR_CELLS)
-#define OF_CHECK_COUNTS(na, ns)	(OF_CHECK_ADDR_COUNT(na) && (ns) > 0)
+/* Uncomment me to enable of_dump_addr() debugging output */
+// #define DEBUG
 
-/* Debug utility */
-#ifdef DEBUG
-static void of_dump_addr(const char *s, const __be32 *addr, int na)
-{
-	pr_debug("%s", s);
-	while (na--)
-		pr_cont(" %08x", be32_to_cpu(*(addr++)));
-	pr_cont("\n");
-}
-#else
-static void of_dump_addr(const char *s, const __be32 *addr, int na) { }
-#endif
+#include "of_private.h"
 
 /* Callbacks for bus specific translators */
 struct of_bus {
diff --git a/drivers/of/fdt_address.c b/drivers/of/fdt_address.c
index 1e5311f6f1858b59b99f650bcafa55a8d11225f9..f358d2c807540e79fdd72a7e9a5328bccd88476d 100644
--- a/drivers/of/fdt_address.c
+++ b/drivers/of/fdt_address.c
@@ -17,23 +17,10 @@
 #include <linux/of_fdt.h>
 #include <linux/sizes.h>
 
-/* Max address size we deal with */
-#define OF_MAX_ADDR_CELLS	4
-#define OF_CHECK_COUNTS(na, ns)	((na) > 0 && (na) <= OF_MAX_ADDR_CELLS && \
-			(ns) > 0)
-
-/* Debug utility */
-#ifdef DEBUG
-static void __init of_dump_addr(const char *s, const __be32 *addr, int na)
-{
-	pr_debug("%s", s);
-	while(na--)
-		pr_cont(" %08x", be32_to_cpu(*(addr++)));
-	pr_cont("\n");
-}
-#else
-static void __init of_dump_addr(const char *s, const __be32 *addr, int na) { }
-#endif
+/* Uncomment me to enable of_dump_addr() debugging output */
+// #define DEBUG
+
+#include "of_private.h"
 
 /* Callbacks for bus specific translators */
 struct of_bus {
diff --git a/drivers/of/of_private.h b/drivers/of/of_private.h
index 3433ccd330e84fd3a4b54638e0e922069757c8f0..f3e1193c8ded4899f39677a76da073e2266a1b9a 100644
--- a/drivers/of/of_private.h
+++ b/drivers/of/of_private.h
@@ -190,4 +190,22 @@ void __init fdt_scan_reserved_mem_reg_nodes(void);
 
 bool of_fdt_device_is_available(const void *blob, unsigned long node);
 
+/* Max address size we deal with */
+#define OF_MAX_ADDR_CELLS	4
+#define OF_CHECK_ADDR_COUNT(na)	((na) > 0 && (na) <= OF_MAX_ADDR_CELLS)
+#define OF_CHECK_COUNTS(na, ns)	(OF_CHECK_ADDR_COUNT(na) && (ns) > 0)
+
+/* Debug utility */
+#ifdef DEBUG
+static void __maybe_unused of_dump_addr(const char *s, const __be32 *addr, int na)
+{
+	pr_debug("%s", s);
+	while (na--)
+		pr_cont(" %08x", be32_to_cpu(*(addr++)));
+	pr_cont("\n");
+}
+#else
+static void __maybe_unused of_dump_addr(const char *s, const __be32 *addr, int na) { }
+#endif
+
 #endif /* _LINUX_OF_PRIVATE_H */

-- 
2.34.1


