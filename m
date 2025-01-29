Return-Path: <devicetree+bounces-141715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A1DA22217
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 17:50:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36873163B72
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 16:49:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CD3A1DF263;
	Wed, 29 Jan 2025 16:49:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A7B1DF743;
	Wed, 29 Jan 2025 16:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.176.79.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738169377; cv=none; b=JBvB83i8fh03+txoNHaiyXu4dIc5Ri/LZLK20tlHUQ8ThmofKipB5XDodfAir+THwCgsY9UTSQAk+vGVz61fBjVRGm8Nw5pG0eShtPwr2jUP/07UymbqEM3t+8RA0gICtxx1+iXgGMTnxb2gz5hPgPp67M6k3mjVeuhO/UGxNvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738169377; c=relaxed/simple;
	bh=s50vqDytlAbIEA9xXXQGjXl/DlJAWOkW1k78j5WNzQw=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kNLdYhRv1L50dC6OsTd7vZ/tLFuN7cVxZtY7V6pii9PWW6mzV0CPDv9tOH7A5vDItLNbYB4bggc+BpBnab9cYxA/Y2VOcY/RtN6f3s4i029FQKaoBQ5RF7OCoqrbQ0inLviml+ESTd1+/Rz2r5mXgxXXUAX1/TpzDyM3LDLiQbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=185.176.79.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.18.186.216])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4Yjp5N4m01z6K976;
	Thu, 30 Jan 2025 00:48:56 +0800 (CST)
Received: from frapeml500003.china.huawei.com (unknown [7.182.85.28])
	by mail.maildlp.com (Postfix) with ESMTPS id 10F5B1404FC;
	Thu, 30 Jan 2025 00:49:33 +0800 (CST)
Received: from a2303103017.china.huawei.com (10.47.69.217) by
 frapeml500003.china.huawei.com (7.182.85.28) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 Jan 2025 17:49:32 +0100
From: Alireza Sanaee <alireza.sanaee@huawei.com>
To: <robh@kernel.org>, <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
CC: <linux-kernel@vger.kernel.org>, <jonathan.cameron@Huawei.com>,
	<linux-arm-kernel@lists.infradead.org>,
	<shameerali.kolothum.thodi@huawei.com>, <zhao1.liu@intel.com>,
	<yangyicong@hisilicon.com>, <rrendec@redhat.com>, <catalin.marinas@arm.com>
Subject: [RFC PATCH v2 1/1] base/of/cacheinfo: support l1 entry in dt
Date: Wed, 29 Jan 2025 16:48:55 +0000
Message-ID: <20250129164855.676-2-alireza.sanaee@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250129164855.676-1-alireza.sanaee@huawei.com>
References: <20250129164855.676-1-alireza.sanaee@huawei.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: lhrpeml500012.china.huawei.com (7.191.174.4) To
 frapeml500003.china.huawei.com (7.182.85.28)

Existing device tree bindings do not properly describe caches shared
between SMT (Simultaneous Multithreading) threads.

For example, in a system with two CPU cores, each supporting two SMT
threads, current bindings treat each thread as an independent logical
CPU with its own L1 cache. However, in reality, these threads share
resources within a physical CPU, including caches. There are two ways to
do this, first using multiple reg entries (PowerPC) which all share the
same CPU core resources [1], which was turn down based on
discussions with Mark Rutland [2], because every node in the cpu-map should
point to a CPU node in the device tree. Second, to go with the proposed
method.

Allow CPU node entries to reference a shared L1 cache node. Some CPU
nodes may omit explicit cache descriptions and instead use a
next-level-cache property to point to the corresponding L1 cache node.

Link: https://lore.kernel.org/linux-devicetree/CAL_JsqLGEvGBQ0W_B6+5cME1UEhuKXadBB-6=GoN1tmavw9K_w@mail.gmail.com/ # [1]
Link: https://lore.kernel.org/linux-arm-kernel/Z4FYHvbVhMHrGQI4@J2N7QTR9R3/ # [2]

Signed-off-by: Alireza Sanaee <alireza.sanaee@huawei.com>
---
 drivers/base/cacheinfo.c | 50 ++++++++++++++++++++++++++--------------
 1 file changed, 33 insertions(+), 17 deletions(-)

diff --git a/drivers/base/cacheinfo.c b/drivers/base/cacheinfo.c
index cf0d455209d7..71d92157591e 100644
--- a/drivers/base/cacheinfo.c
+++ b/drivers/base/cacheinfo.c
@@ -83,7 +83,27 @@ bool last_level_cache_is_shared(unsigned int cpu_x, unsigned int cpu_y)
 
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
+	if (of_check_cache_node(np))
+		return true;
+
+	struct device_node *next __free(device_node) = of_find_next_cache_node(np);
+	if (next)
+		return true;
+
+	return false;
+}
+
 
 /* OF properties to query for a given cache type */
 struct cache_type_info {
@@ -218,11 +238,23 @@ static int cache_setup_of_node(unsigned int cpu)
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
@@ -234,22 +266,6 @@ static int cache_setup_of_node(unsigned int cpu)
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


