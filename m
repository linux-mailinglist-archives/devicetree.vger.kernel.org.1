Return-Path: <devicetree+bounces-138504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A8887A10A9D
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 16:23:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C45E318809E6
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 15:23:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2C3D18A6AE;
	Tue, 14 Jan 2025 15:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="eIDxP5dU"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-ztdg10012101.me.com (pv50p00im-ztdg10012101.me.com [17.58.6.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781411684B0
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 15:23:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736868213; cv=none; b=cG26xmVFhv/d9pMDJf08K4BOb++QXSlIX2VMRcFA82P4YsR+ROpZvYQ24xrQn99CHiOwooJN6bmTHFxDHB9akyUZLt2mTLaY/dDr/V5C074bsN04rXJMeBBBAln0gBMxdc3ODyVLcIIB0nB6OFIP2phBqy/0sjHGe8XCT09UKeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736868213; c=relaxed/simple;
	bh=gz5s1QtsfKgeehMSFPhvpgRfk+bXZQWZDCzTvwFrmu4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WUl4O0vQgX4Y7cEdpYYZB4xrrmSMMJx8ghJRb1dILZrhMX6njzLp2EDHSKrjWCRGl01Akss5zizUYGw4TbvBbLGWbEgY2fZIQvrmwSy0Ch1V5tgrmGU+BKp/GjNfTyRxzzbGL3U9B93NxO1NpxPFOKca6mH5v3cQOt0iw+UGHNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=eIDxP5dU; arc=none smtp.client-ip=17.58.6.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736868212;
	bh=p5Ba7m9NpuPunhmxtnF03uYrWxzvSd/IuBBmZiBExS4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=eIDxP5dUnhHhh6AmThRumUQcWs7WYDW9o/8PQr2WArQ2APwNMBJ2iRxb6y+grA78D
	 M7tnrKYhiXGT71H+CLfR0Tyd6Nlxq2l/fDCqOQ4WAlXC/ZfHwSxqJ0GFlRrzQDeNWH
	 8HhOZW0f7hzzHD3baclUwRNUMl1s+4xBohzB+DDZtujFvnUwXNN6jG+w6qk5bIcSvZ
	 Q4QZwVCsqyanXTwx3OA/7xrOIYnmRrDrRTsviIHhDUrVLz5FN1Qt+UYLBhksaUCiNQ
	 jzDOg0UmjB+0byiaP1o1P3JGIe9OCq25qxgfFzgEi8ZVjI5U7iAEsc6tWVoMOyxeel
	 lUW+Di5zx2c4w==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-ztdg10012101.me.com (Postfix) with ESMTPSA id 0648B740161;
	Tue, 14 Jan 2025 15:23:28 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Tue, 14 Jan 2025 23:23:03 +0800
Subject: [PATCH v5 1/3] of: Do not expose of_alias_scan() and correct its
 comments
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250114-of_core_fix-v5-1-b8bafd00a86f@quicinc.com>
References: <20250114-of_core_fix-v5-0-b8bafd00a86f@quicinc.com>
In-Reply-To: <20250114-of_core_fix-v5-0-b8bafd00a86f@quicinc.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
 Oreoluwa Babatunde <quic_obabatun@quicinc.com>
Cc: Zijun Hu <zijun_hu@icloud.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: 8iJy_wW0rr9MzQXGwblMF2ohORT0Dliz
X-Proofpoint-GUID: 8iJy_wW0rr9MzQXGwblMF2ohORT0Dliz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-14_05,2025-01-13_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxlogscore=999
 phishscore=0 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 mlxscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501140121
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8

From: Zijun Hu <quic_zijuhu@quicinc.com>

of_alias_scan() has no external callers and returns void.
Do not expose it and delete return value descriptions in its comments.

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/of/base.c       | 3 +--
 drivers/of/of_private.h | 2 ++
 drivers/of/pdt.c        | 2 ++
 include/linux/of.h      | 1 -
 4 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 969b99838655534915882abe358814d505c6f748..f4ab4086b80f62c4d9ce428cdde042d0ed4febe2 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1812,8 +1812,7 @@ static void of_alias_add(struct alias_prop *ap, struct device_node *np,
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
index 58819222279a5319c5f6be30d156b24f920c5481..f3e1193c8ded4899f39677a76da073e2266a1b9a 100644
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
index 0cdd58ff0a4190724309ba1eddbac51b188b6136..eaf0e2a2b75cbe4769a77f68965298c84d57e62c 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -398,7 +398,6 @@ extern int of_phandle_iterator_args(struct of_phandle_iterator *it,
 				    uint32_t *args,
 				    int size);
 
-extern void of_alias_scan(void * (*dt_alloc)(u64 size, u64 align));
 extern int of_alias_get_id(const struct device_node *np, const char *stem);
 extern int of_alias_get_highest_id(const char *stem);
 

-- 
2.34.1


