Return-Path: <devicetree+bounces-95727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A5595AF2D
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 09:23:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CA911B25A85
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 07:23:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B78117D377;
	Thu, 22 Aug 2024 07:19:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5FAB1684AE
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 07:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.249.212.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724311148; cv=none; b=lGdZ0Dsky13G0p8vA05O4R9B69Ro8WG1kFQhUoQ803WeyvEU75LT1wW+t6iIKAE3F1qAmq+5GUj6E5lXbAgQg/9llPuZEL8nbK9Ez4xHOIlgbZlAZDoNkYXB5l108Dyfk5zfz43mv7XR22qaIO2FKWuFSn3DiKAdE3UCVhV6xHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724311148; c=relaxed/simple;
	bh=Xays7bld+bCbbiXsEDuwx1Ur7OWw3FT7eghZQVYCbwI=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=REmbwcGwAZWCzG48MWEpiElxjlPD4kbTraFYZw9pUIK09vTZc0OepcYG0Eg0i1wjYVql009ZNNCrkCR8sOnA3LQ3Zqm0pcTzKsni4J5JIrwG5RZ3KZE1oZAstYQuqnubUj5k0eAq4HH/ZgyqfDLCezVQFFFZIhKqRbSxH5GyBaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=45.249.212.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.19.163.48])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4WqDzH0MffzhY3M;
	Thu, 22 Aug 2024 15:16:59 +0800 (CST)
Received: from kwepemh500013.china.huawei.com (unknown [7.202.181.146])
	by mail.maildlp.com (Postfix) with ESMTPS id 06A6F18009B;
	Thu, 22 Aug 2024 15:19:00 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemh500013.china.huawei.com
 (7.202.181.146) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Thu, 22 Aug
 2024 15:18:59 +0800
From: Jinjie Ruan <ruanjinjie@huawei.com>
To: <robh@kernel.org>, <saravanak@google.com>, <devicetree@vger.kernel.org>
CC: <ruanjinjie@huawei.com>
Subject: [PATCH -next] of: resolver: Simplify with scoped for each OF child loop
Date: Thu, 22 Aug 2024 15:26:29 +0800
Message-ID: <20240822072629.3549426-1-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 kwepemh500013.china.huawei.com (7.202.181.146)

Use scoped for_each_child_of_node_scoped() when iterating over device
nodes to make code a bit simpler.

Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>
---
 drivers/of/resolver.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/of/resolver.c b/drivers/of/resolver.c
index 2780928764a4..5cf96776dd7d 100644
--- a/drivers/of/resolver.c
+++ b/drivers/of/resolver.c
@@ -150,7 +150,7 @@ static int node_name_cmp(const struct device_node *dn1,
 static int adjust_local_phandle_references(struct device_node *local_fixups,
 		struct device_node *overlay, int phandle_delta)
 {
-	struct device_node *child, *overlay_child;
+	struct device_node *overlay_child;
 	struct property *prop_fix, *prop;
 	int err, i, count;
 	unsigned int off;
@@ -194,7 +194,7 @@ static int adjust_local_phandle_references(struct device_node *local_fixups,
 	 * The roots of the subtrees are the overlay's __local_fixups__ node
 	 * and the overlay's root node.
 	 */
-	for_each_child_of_node(local_fixups, child) {
+	for_each_child_of_node_scoped(local_fixups, child) {
 
 		for_each_child_of_node(overlay, overlay_child)
 			if (!node_name_cmp(child, overlay_child)) {
@@ -202,17 +202,13 @@ static int adjust_local_phandle_references(struct device_node *local_fixups,
 				break;
 			}
 
-		if (!overlay_child) {
-			of_node_put(child);
+		if (!overlay_child)
 			return -EINVAL;
-		}
 
 		err = adjust_local_phandle_references(child, overlay_child,
 				phandle_delta);
-		if (err) {
-			of_node_put(child);
+		if (err)
 			return err;
-		}
 	}
 
 	return 0;
-- 
2.34.1


