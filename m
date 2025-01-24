Return-Path: <devicetree+bounces-140826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86AC2A1B957
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 16:33:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E0A73B14A2
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 15:27:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3DC2158536;
	Fri, 24 Jan 2025 15:20:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD22216F8E9;
	Fri, 24 Jan 2025 15:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.176.79.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737732045; cv=none; b=pAifAc2W3jgepBBTgv6HRg8squUyy14cVimGQrjb0y6Bv0HEsQeHxQVN4FmzFRlNRb35MkRavojpDybXGbTpCTKsgRavWYazAKOr8kl9W94VuWjOIjUIf0AvFLb8hO65QZBtK6U307bIACsEOPPQTaTnURhpH05qCve08PPsSzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737732045; c=relaxed/simple;
	bh=1QhZJozMQ+Bs01fIeKj7ZMrgYBSvuYu0QrsIYynDvcg=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FXs4zRVF5xpyOWjvk4eB8GSG1RHAWyc1s7j2Dw9QXeRGfISfWuGsbjHnl1ON3J0rqXt0LdrbHHr+rrRvuytfJ29bCvRxQ4IW/heGSe21EtyxxPyNMZlrOG/vHulkqtykXiGACmRvyqAjZxuJvPV8jVIE+5Id3n9wZKAA4KD1eoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=185.176.79.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.18.186.231])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4YfhMS2KNSz6K9BR;
	Fri, 24 Jan 2025 23:20:20 +0800 (CST)
Received: from frapeml500003.china.huawei.com (unknown [7.182.85.28])
	by mail.maildlp.com (Postfix) with ESMTPS id 28F9B140D1D;
	Fri, 24 Jan 2025 23:20:42 +0800 (CST)
Received: from a2303103017.china.huawei.com (10.195.34.97) by
 frapeml500003.china.huawei.com (7.182.85.28) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 24 Jan 2025 16:20:41 +0100
From: Alireza Sanaee <alireza.sanaee@huawei.com>
To: <robh@kernel.org>, <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <jonathan.cameron@Huawei.com>,
	<linux-arm-kernel@lists.infradead.org>,
	<shameerali.kolothum.thodi@huawei.com>, <zhao1.liu@intel.com>,
	<yangyicong@hisilicon.com>, <rrendec@redhat.com>, <catalin.marinas@arm.com>
Subject: [RFC PATCH v1 1/1] base/of/cacheinfo: support l1 entry in dt
Date: Fri, 24 Jan 2025 15:20:08 +0000
Message-ID: <20250124152008.313-2-alireza.sanaee@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250124152008.313-1-alireza.sanaee@huawei.com>
References: <20250124152008.313-1-alireza.sanaee@huawei.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: lhrpeml100001.china.huawei.com (7.191.160.183) To
 frapeml500003.china.huawei.com (7.182.85.28)

This commit simply assumes that CPU node entries may point to a cache
node that basically act as a l1-cache and there are some CPU nodes
without describing any caches but a next-level-cache property that
points to l1-cache.

Signed-off-by: Alireza Sanaee <alireza.sanaee@huawei.com>
---
 drivers/base/cacheinfo.c | 54 +++++++++++++++++++++++++++-------------
 1 file changed, 37 insertions(+), 17 deletions(-)

diff --git a/drivers/base/cacheinfo.c b/drivers/base/cacheinfo.c
index cf0d455209d7..d119228fc392 100644
--- a/drivers/base/cacheinfo.c
+++ b/drivers/base/cacheinfo.c
@@ -83,7 +83,31 @@ bool last_level_cache_is_shared(unsigned int cpu_x, unsigned int cpu_y)
 
 #ifdef CONFIG_OF
 
-static bool of_check_cache_nodes(struct device_node *np);
+static bool of_check_cache_node(struct device_node *np) {
+	if (of_property_present(np, "cache-size")   ||
+	    of_property_present(np, "i-cache-size") ||
+	    of_property_present(np, "d-cache-size") ||
+	    of_property_present(np, "cache-unified"))
+		return true;
+	return false;
+}
+
+static bool of_check_cache_nodes(struct device_node *np)
+{
+	if (of_property_present(np, "cache-size")   ||
+	    of_property_present(np, "i-cache-size") ||
+	    of_property_present(np, "d-cache-size") ||
+	    of_property_present(np, "cache-unified"))
+		return true;
+
+	struct device_node *next __free(device_node) = of_find_next_cache_node(np);
+	if (next) {
+		return true;
+	}
+
+	return false;
+}
+
 
 /* OF properties to query for a given cache type */
 struct cache_type_info {
@@ -218,11 +242,23 @@ static int cache_setup_of_node(unsigned int cpu)
 	while (index < cache_leaves(cpu)) {
 		this_leaf = per_cpu_cacheinfo_idx(cpu, index);
 		if (this_leaf->level != 1) {
+			/* Always go one level down for level > 1 */
 			struct device_node *prev __free(device_node) = np;
 			np = of_find_next_cache_node(np);
 			if (!np)
 				break;
+		} else {
+			/* For level 1, check compatibility */
+			if (!of_device_is_compatible(np, "cache") &&
+			    !of_check_cache_node(np)) {
+				struct device_node *prev __free(device_node) = np;
+				np = of_find_next_cache_node(np);
+				if (!np)
+					break;
+				continue; /* Skip to next index without processing */
+			}
 		}
+
 		cache_of_set_props(this_leaf, np);
 		this_leaf->fw_token = np;
 		index++;
@@ -234,22 +270,6 @@ static int cache_setup_of_node(unsigned int cpu)
 	return 0;
 }
 
-static bool of_check_cache_nodes(struct device_node *np)
-{
-	if (of_property_present(np, "cache-size")   ||
-	    of_property_present(np, "i-cache-size") ||
-	    of_property_present(np, "d-cache-size") ||
-	    of_property_present(np, "cache-unified"))
-		return true;
-
-	struct device_node *next __free(device_node) = of_find_next_cache_node(np);
-	if (next) {
-		return true;
-	}
-
-	return false;
-}
-
 static int of_count_cache_leaves(struct device_node *np)
 {
 	unsigned int leaves = 0;
-- 
2.34.1


