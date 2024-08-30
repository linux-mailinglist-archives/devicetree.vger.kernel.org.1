Return-Path: <devicetree+bounces-98218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E55D965530
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 04:19:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DDA6E284242
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 02:19:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02D9D61FCE;
	Fri, 30 Aug 2024 02:19:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628FB381D5
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.249.212.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724984394; cv=none; b=hN8gwForbDYk2AXw1VKoeTpvJfCCbqG3KfVzpEFhmYD5+Q4nWR6ItWoNjwQUx2ob2DPXS9VIBW2dqix/khpuifBq80HxwJEft1SJ5u+jt59RedHacs4j7Ew23icI5Pr87Ln3A9X/5fw8dAdkD99TeoKDMsk007FyhfGkusG8PMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724984394; c=relaxed/simple;
	bh=Nb1L8nrznIFQ8ylKaMmt5JXAKpUh8ZG/zkSzV1xDm30=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=be81c5t7+NKSXeltre8sPCydnawI9CvWL+Juzutd+6YptW3qq8nvKlt7PryA9RTajPe4VHZyjx86DbGEPcjuXurtRIvTDBxFVUBcU2FofQP5CLI89h4ATldhO5z2VMZlmVy2kA8+AzwO3gTDMkeKC9zPdLeDbPUN7f5qnTc4BFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=45.249.212.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.19.163.48])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4Ww2063xskzyR3r;
	Fri, 30 Aug 2024 10:19:18 +0800 (CST)
Received: from kwepemf500003.china.huawei.com (unknown [7.202.181.241])
	by mail.maildlp.com (Postfix) with ESMTPS id AF0FE18005F;
	Fri, 30 Aug 2024 10:19:50 +0800 (CST)
Received: from huawei.com (10.175.112.208) by kwepemf500003.china.huawei.com
 (7.202.181.241) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Fri, 30 Aug
 2024 10:19:50 +0800
From: Zhang Zekun <zhangzekun11@huawei.com>
To: <robh@kernel.org>, <saravanak@google.com>, <devicetree@vger.kernel.org>,
	<zhangzekun11@huawei.com>
Subject: [PATCH 2/3] of: irq: Do some clean up with use of __free()
Date: Fri, 30 Aug 2024 10:06:25 +0800
Message-ID: <20240830020626.115933-3-zhangzekun11@huawei.com>
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
 drivers/of/irq.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/of/irq.c b/drivers/of/irq.c
index 36351ad6115e..3291f1ffea49 100644
--- a/drivers/of/irq.c
+++ b/drivers/of/irq.c
@@ -341,7 +341,7 @@ EXPORT_SYMBOL_GPL(of_irq_parse_raw);
  */
 int of_irq_parse_one(struct device_node *device, int index, struct of_phandle_args *out_irq)
 {
-	struct device_node *p;
+	struct device_node *p __free(device_node) = NULL;
 	const __be32 *addr;
 	u32 intsize;
 	int i, res, addr_len;
@@ -374,10 +374,8 @@ int of_irq_parse_one(struct device_node *device, int index, struct of_phandle_ar
 		return -EINVAL;
 
 	/* Get size of interrupt specifier */
-	if (of_property_read_u32(p, "#interrupt-cells", &intsize)) {
-		res = -EINVAL;
-		goto out;
-	}
+	if (of_property_read_u32(p, "#interrupt-cells", &intsize))
+		return -EINVAL;
 
 	pr_debug(" parent=%pOF, intsize=%d\n", p, intsize);
 
@@ -389,17 +387,14 @@ int of_irq_parse_one(struct device_node *device, int index, struct of_phandle_ar
 						 (index * intsize) + i,
 						 out_irq->args + i);
 		if (res)
-			goto out;
+			return res;
 	}
 
 	pr_debug(" intspec=%d\n", *out_irq->args);
 
 
 	/* Check if there are any interrupt-map translations to process */
-	res = of_irq_parse_raw(addr_buf, out_irq);
- out:
-	of_node_put(p);
-	return res;
+	return of_irq_parse_raw(addr_buf, out_irq);
 }
 EXPORT_SYMBOL_GPL(of_irq_parse_one);
 
-- 
2.17.1


