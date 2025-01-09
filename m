Return-Path: <devicetree+bounces-137087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B1BA07755
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:28:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 072831650C5
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:28:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C75A218AB0;
	Thu,  9 Jan 2025 13:28:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="Ot+a3Kg4"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-zteg10011401.me.com (pv50p00im-zteg10011401.me.com [17.58.6.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D58A3218AA7
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 13:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736429295; cv=none; b=FYKx0cIQvIjrYuDe3p7VY0jjNE54ZEcajcIZVncIrSjO8gcZBJ6vpm9u+bPHPdIwpvHZXEunbRkxnv2EOyRBA0f56f2JWoCSVM1y63Z9WbePhRBwoPxZ/bd7aanNRy7WqzKS60Vu2CnpxrIO2umKREw/qk3ny8vHwlBXvUEnVHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736429295; c=relaxed/simple;
	bh=uSgl6tmpjcKrpfU+/rRT4WEOic2miN6oQ63t67Qe7qc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XyLoyR7qEAA5kko9SqxldHHiQ8JH9SWqo2VjyDHNYPezTLNRVKuIx1JSmafrBDPZbBan2NBEiOPTB8TpDEkXAMhm1mTuHO6acbv4rOuzQ4L78UD2ZYr9TeCtrGTfS8bt0QsJM8pGInt+1WVNc1dc2roQwUoUVbiwcCEQ2l1p6N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=Ot+a3Kg4; arc=none smtp.client-ip=17.58.6.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736429293;
	bh=lxh3lTkHEDaNLjOBBiXkDjAykRGLwhRpR2ibcxXXYlY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=Ot+a3Kg40Ce1n953u8pFd4eVZiE5D4zWXNwCip+izENcICL1VHEzp87CxpmatdCQl
	 phKvPAeM6EiWOOTCrfZeB64FcmCY/c45INsaRfWT5nnN1hRsdFrGOicvM+rmdtOCm+
	 6Fkld2yBehuHBjEoSCqrI6zwVPJDKhz9jmGcOpgnU5/fQwGp3gzyrcy2GAU+Q87BC4
	 NZFe/lUaSpfdEflnQ3JSydZ8cV6nD3xkO7ntNx2ZM2yH2rN8VtdXP7WVCkoIqbXNEW
	 8qpaOP+SqD4GgeenHeFMhw3tNJ8RzTbU5NznCBD32fHy4zaQ/MReTE/kLuy16KDTaa
	 0KKz1Vv/CXogQ==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-zteg10011401.me.com (Postfix) with ESMTPSA id 57BFA34BAA94;
	Thu,  9 Jan 2025 13:28:08 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Thu, 09 Jan 2025 21:26:53 +0800
Subject: [PATCH v4 02/14] of: Do not expose of_alias_scan() and correct its
 comments
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250109-of_core_fix-v4-2-db8a72415b8c@quicinc.com>
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
X-Proofpoint-GUID: 94Z9K7bOSa_MFRxgzsJ8FlMdjPif0lRD
X-Proofpoint-ORIG-GUID: 94Z9K7bOSa_MFRxgzsJ8FlMdjPif0lRD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-09_05,2025-01-09_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 adultscore=0
 suspectscore=0 mlxlogscore=999 clxscore=1015 malwarescore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501090108
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

From: Zijun Hu <quic_zijuhu@quicinc.com>

For of_alias_scan():
- Do not expose it since it has no external callers.
- Correct its comments shown below:
  1) Replace /* with /** to start comments since it is not a API.
  2) Delete return value descriptions since it is a void function.

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/of/base.c       | 5 ++---
 drivers/of/of_private.h | 2 ++
 drivers/of/pdt.c        | 2 ++
 include/linux/of.h      | 1 -
 4 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 969b99838655534915882abe358814d505c6f748..5485307e2a3a3d3a216d271c60bdfc346dd38460 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1806,14 +1806,13 @@ static void of_alias_add(struct alias_prop *ap, struct device_node *np,
 		 ap->alias, ap->stem, ap->id, np);
 }
 
-/**
+/*
  * of_alias_scan - Scan all properties of the 'aliases' node
  * @dt_alloc:	An allocator that provides a virtual address to memory
  *		for storing the resulting tree
  *
  * The function scans all the properties of the 'aliases' node and populates
- * the global lookup table with the properties.  It returns the
- * number of alias properties found, or an error code in case of failure.
+ * the global lookup table with the properties.
  */
 void of_alias_scan(void * (*dt_alloc)(u64 size, u64 align))
 {
diff --git a/drivers/of/of_private.h b/drivers/of/of_private.h
index ea5a0951ec5e107bab265ab5f6c043e2bfb15ecc..3433ccd330e84fd3a4b54638e0e922069757c8f0 100644
--- a/drivers/of/of_private.h
+++ b/drivers/of/of_private.h
@@ -119,6 +119,8 @@ extern void *__unflatten_device_tree(const void *blob,
 			      void *(*dt_alloc)(u64 size, u64 align),
 			      bool detached);
 
+void of_alias_scan(void * (*dt_alloc)(u64 size, u64 align));
+
 /**
  * General utilities for working with live trees.
  *
diff --git a/drivers/of/pdt.c b/drivers/of/pdt.c
index 7eda43c66c916198b1c2d8fc5043fcb1edaede7a..cb0cb374b21ff89323e11f34bd767b183e7a401e 100644
--- a/drivers/of/pdt.c
+++ b/drivers/of/pdt.c
@@ -19,6 +19,8 @@
 #include <linux/of.h>
 #include <linux/of_pdt.h>
 
+#include "of_private.h"
+
 static struct of_pdt_ops *of_pdt_prom_ops __initdata;
 
 #if defined(CONFIG_SPARC)
diff --git a/include/linux/of.h b/include/linux/of.h
index f921786cb8ac782286ed5ff4425a35668204d050..d451c46132b01efe6d4e0b6cf83a3e2084bb3ec6 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -397,7 +397,6 @@ extern int of_phandle_iterator_args(struct of_phandle_iterator *it,
 				    uint32_t *args,
 				    int size);
 
-extern void of_alias_scan(void * (*dt_alloc)(u64 size, u64 align));
 extern int of_alias_get_id(const struct device_node *np, const char *stem);
 extern int of_alias_get_highest_id(const char *stem);
 

-- 
2.34.1


