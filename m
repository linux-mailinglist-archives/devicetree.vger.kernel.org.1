Return-Path: <devicetree+bounces-98219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2460965531
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 04:19:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C977284559
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 02:19:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3FF77A13A;
	Fri, 30 Aug 2024 02:19:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628C02EAEA
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.249.212.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724984395; cv=none; b=bbQ90xbX8H/q6lqqEMaOti6DgmEqmMjKNxHK4tI8VcTe5ZhKW5KuHCM5dyEzMt9SlPQJTAflKL7AT5lFa53XbhfbIwGsyctoyoRWE/uWQuOiWUpqCCjpd0Ft5BQw57cqJA8O6sTIv3EIDz4pgPCHTz4FpB6Nf0zYwuPjuavzgu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724984395; c=relaxed/simple;
	bh=1IxVtiVj9eqgh/z6bCT6cUvbUUIZlfzVFbiw4w13xQo=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WX/e5rA97UpZ8zfLUXvSVcTuXnfdmPI70jnW7bjkFaO8ffSf/6zbCibPSU4pZatucZYs/e8esfU46P4Ks/4QLk8wkl4+wN8y6poyT7SAZRPJlIO4rcqJR+F4Zq/1tZ5G5rjcw0SCU0hxkfMJ3APJafLyAEPjrWAUtKUQ9P1xFDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=45.249.212.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.19.163.48])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4Ww1zm4G0TzyQQG;
	Fri, 30 Aug 2024 10:19:00 +0800 (CST)
Received: from kwepemf500003.china.huawei.com (unknown [7.202.181.241])
	by mail.maildlp.com (Postfix) with ESMTPS id 39EAE18005F;
	Fri, 30 Aug 2024 10:19:51 +0800 (CST)
Received: from huawei.com (10.175.112.208) by kwepemf500003.china.huawei.com
 (7.202.181.241) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Fri, 30 Aug
 2024 10:19:50 +0800
From: Zhang Zekun <zhangzekun11@huawei.com>
To: <robh@kernel.org>, <saravanak@google.com>, <devicetree@vger.kernel.org>,
	<zhangzekun11@huawei.com>
Subject: [PATCH 3/3] of: property: Do some clean up with use of __free()
Date: Fri, 30 Aug 2024 10:06:26 +0800
Message-ID: <20240830020626.115933-4-zhangzekun11@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240830020626.115933-1-zhangzekun11@huawei.com>
References: <20240830020626.115933-1-zhangzekun11@huawei.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemf500003.china.huawei.com (7.202.181.241)

__free() provides a scoped of_node_put() functionality to put the
device_node automatically, and we don't need to call of_node_put()
directly. Let's simplify the code a bit with the use of __free().

Signed-off-by: Zhang Zekun <zhangzekun11@huawei.com>
---
 drivers/of/property.c | 28 ++++++++--------------------
 1 file changed, 8 insertions(+), 20 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 164d77cb9445..940324225c34 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -773,16 +773,11 @@ EXPORT_SYMBOL(of_graph_get_port_parent);
 struct device_node *of_graph_get_remote_port_parent(
 			       const struct device_node *node)
 {
-	struct device_node *np, *pp;
-
 	/* Get remote endpoint node. */
-	np = of_graph_get_remote_endpoint(node);
-
-	pp = of_graph_get_port_parent(np);
+	struct device_node *np __free(device_node) =
+		of_graph_get_remote_endpoint(node);
 
-	of_node_put(np);
-
-	return pp;
+	return of_graph_get_port_parent(np);
 }
 EXPORT_SYMBOL(of_graph_get_remote_port_parent);
 
@@ -1064,19 +1059,15 @@ static void of_link_to_phandle(struct device_node *con_np,
 			      struct device_node *sup_np,
 			      u8 flags)
 {
-	struct device_node *tmp_np = of_node_get(sup_np);
+	struct device_node *tmp_np __free(device_node) = of_node_get(sup_np);
 
 	/* Check that sup_np and its ancestors are available. */
 	while (tmp_np) {
-		if (of_fwnode_handle(tmp_np)->dev) {
-			of_node_put(tmp_np);
+		if (of_fwnode_handle(tmp_np)->dev)
 			break;
-		}
 
-		if (!of_device_is_available(tmp_np)) {
-			of_node_put(tmp_np);
+		if (!of_device_is_available(tmp_np))
 			return;
-		}
 
 		tmp_np = of_get_next_parent(tmp_np);
 	}
@@ -1440,16 +1431,13 @@ static int of_link_property(struct device_node *con_np, const char *prop_name)
 		}
 
 		while ((phandle = s->parse_prop(con_np, prop_name, i))) {
-			struct device_node *con_dev_np;
+			struct device_node *con_dev_np __free(device_node) =
+				s->get_con_dev ? s->get_con_dev(con_np) : of_node_get(con_np);
 
-			con_dev_np = s->get_con_dev
-					? s->get_con_dev(con_np)
-					: of_node_get(con_np);
 			matched = true;
 			i++;
 			of_link_to_phandle(con_dev_np, phandle, s->fwlink_flags);
 			of_node_put(phandle);
-			of_node_put(con_dev_np);
 		}
 		s++;
 	}
-- 
2.17.1


