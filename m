Return-Path: <devicetree+bounces-250794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D46CEBDF5
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:49:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4C7E03011ED5
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:49:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F0C831A54A;
	Wed, 31 Dec 2025 11:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=seu.edu.cn header.i=@seu.edu.cn header.b="S+FmIO16"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com [101.71.155.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FBB921C17D;
	Wed, 31 Dec 2025 11:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767181778; cv=none; b=AoZcNce5iN/jHvKcGPksXBlN8FKJJ3+MlzCX2lW1ki1F6lU8V7COuYLXPrplM4q26lGujA6pNeFN4om2NzHirGa8crqMRnZLh6On2C31eIc7K7E5COAgma2nFbRNaEyt3c4TrR4KzC3L7u7YRZQFfGQLmWD3rzYe/aGKrdXATAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767181778; c=relaxed/simple;
	bh=JtIDEh+U7FBzvlr4Ew3QJe0zq+06qIDduY8rerJ04Q8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=cr38281kTSbEJhyfuECFRNGQAsZI8biMWVRu/Gj9hlnRCYRVz7iBEd/dLXGl3wG/dDkXs/bFdighlybyRyTXCC1pDMJeYW67eBXMSM9vefm8V9VSFv1s8jWOtIa64OS0LCCkcARmGpwoQ1JfH+yXodjFmCgB6UWHxe5kc5bZaEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=seu.edu.cn; spf=pass smtp.mailfrom=seu.edu.cn; dkim=pass (1024-bit key) header.d=seu.edu.cn header.i=@seu.edu.cn header.b=S+FmIO16; arc=none smtp.client-ip=101.71.155.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=seu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=seu.edu.cn
Received: from LAPTOP-N070L597.localdomain (unknown [222.191.246.242])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2f2875533;
	Wed, 31 Dec 2025 19:49:29 +0800 (GMT+08:00)
From: Zilin Guan <zilin@seu.edu.cn>
To: robh@kernel.org
Cc: saravanak@google.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zilin Guan <zilin@seu.edu.cn>,
	Jianhao Xu <jianhao.xu@seu.edu.cn>
Subject: [PATCH v2] of: unittest: Fix memory leak in unittest_data_add()
Date: Wed, 31 Dec 2025 11:49:15 +0000
Message-Id: <20251231114915.234638-1-zilin@seu.edu.cn>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9b743ddb7703a1kunm037019731a1313
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDSkJDVk9DGEtKHkJPSEpNSFYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJSUlVSkJKVUlPTVVJT0lZV1kWGg8SFR0UWUFZT0tIVUpLSUhOQ0NVSktLVU
	tZBg++
DKIM-Signature: a=rsa-sha256;
	b=S+FmIO163XKSFT3dNN7xnxB18AjNO17oxpCI65w5fB4tK1RrSW5UJZD35Zl/tz5mql+eF3oybJuVtb+EpJbBX2PV175Kge8gZoM5PiroTkGxtQAb0HT5FX0MaMtAhkbbhpZBQmpq06A34w48dRWRe4/JRWWzVRQu/73kEuGfwyA=; s=default; c=relaxed/relaxed; d=seu.edu.cn; v=1;
	bh=7ALPqZ6nTOQfyCzixN8L15HXpEyuZqa7IeClQcSH8PQ=;
	h=date:mime-version:subject:message-id:from;

In unittest_data_add(), if of_resolve_phandles() fails, the allocated
unittest_data is not freed, leading to a memory leak.

Fix this by using scope-based cleanup helper __free(kfree) for automatic
resource cleanup. This ensures unittest_data is automatically freed when
it goes out of scope in error paths.

For the success path, use retain_and_null_ptr() to transfer ownership
of the memory to the device tree and prevent double freeing.

Fixes: 2eb46da2a760 ("of/selftest: Use the resolver to fixup phandles")
Suggested-by: Rob Herring <robh@kernel.org>
Co-developed-by: Jianhao Xu <jianhao.xu@seu.edu.cn>
Signed-off-by: Jianhao Xu <jianhao.xu@seu.edu.cn>
Signed-off-by: Zilin Guan <zilin@seu.edu.cn>
---
Changes in v2:
- using scope-based cleanup helper __free(kfree) for automatic resource cleanup.

 drivers/of/unittest.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
index 388e9ec2cccf..3b773aaf9d05 100644
--- a/drivers/of/unittest.c
+++ b/drivers/of/unittest.c
@@ -1985,7 +1985,6 @@ static void attach_node_and_children(struct device_node *np)
  */
 static int __init unittest_data_add(void)
 {
-	void *unittest_data;
 	void *unittest_data_align;
 	struct device_node *unittest_data_node = NULL, *np;
 	/*
@@ -2004,7 +2003,7 @@ static int __init unittest_data_add(void)
 	}
 
 	/* creating copy */
-	unittest_data = kmalloc(size + FDT_ALIGN_SIZE, GFP_KERNEL);
+	void *unittest_data __free(kfree) = kmalloc(size + FDT_ALIGN_SIZE, GFP_KERNEL);
 	if (!unittest_data)
 		return -ENOMEM;
 
@@ -2014,12 +2013,10 @@ static int __init unittest_data_add(void)
 	ret = of_fdt_unflatten_tree(unittest_data_align, NULL, &unittest_data_node);
 	if (!ret) {
 		pr_warn("%s: unflatten testcases tree failed\n", __func__);
-		kfree(unittest_data);
 		return -ENODATA;
 	}
 	if (!unittest_data_node) {
 		pr_warn("%s: testcases tree is empty\n", __func__);
-		kfree(unittest_data);
 		return -ENODATA;
 	}
 
@@ -2038,7 +2035,6 @@ static int __init unittest_data_add(void)
 	/* attach the sub-tree to live tree */
 	if (!of_root) {
 		pr_warn("%s: no live tree to attach sub-tree\n", __func__);
-		kfree(unittest_data);
 		rc = -ENODEV;
 		goto unlock;
 	}
@@ -2059,6 +2055,8 @@ static int __init unittest_data_add(void)
 	EXPECT_END(KERN_INFO,
 		   "Duplicate name in testcase-data, renamed to \"duplicate-name#1\"");
 
+	retain_and_null_ptr(unittest_data);
+
 unlock:
 	of_overlay_mutex_unlock();
 
-- 
2.34.1


