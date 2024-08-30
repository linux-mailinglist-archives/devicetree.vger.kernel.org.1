Return-Path: <devicetree+bounces-98221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C50B965533
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 04:20:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BDC8AB22844
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 02:20:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2878B4D8AD;
	Fri, 30 Aug 2024 02:19:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E880D54673
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.249.212.255
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724984396; cv=none; b=P4RXv95gGhjxZjHcEtFPBwtAaugONCt7Ttg5cDJWuArEaVUdamyX9H+LbFof2uuD4fY70QGnbdQKYxvZGw/K3Mijzgqs5niZEtDWWRZeT02gi2DdvujZrs2OFF8KABuA1aeXionx3FzFjwFoeW3SncXetnSdh+k3NIP8mQZR6fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724984396; c=relaxed/simple;
	bh=kRI+HYHMKXG9yi0GwexpAov2hStXHwLTVMFALpfyjkM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=b8Hgc+7KSS0GoaW07s6UW3o7zLpZtVm8njJ11x+YZB4MBGqoOUSOZuz7NDH8e1hXSTWPyfaqhY1LcJb1mbfeuIz84+5L66I+w+GlpDHmTcThFsH5ctdv7zW+28HIyxGf/3s4PHtjHQA/cOVTZ0fxpJzz/Eqpa9x5GUhXTzsnPUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=45.249.212.255
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.19.163.48])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4Ww1zl5z5Zz18MvL;
	Fri, 30 Aug 2024 10:18:59 +0800 (CST)
Received: from kwepemf500003.china.huawei.com (unknown [7.202.181.241])
	by mail.maildlp.com (Postfix) with ESMTPS id 2EC1C18005F;
	Fri, 30 Aug 2024 10:19:50 +0800 (CST)
Received: from huawei.com (10.175.112.208) by kwepemf500003.china.huawei.com
 (7.202.181.241) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Fri, 30 Aug
 2024 10:19:49 +0800
From: Zhang Zekun <zhangzekun11@huawei.com>
To: <robh@kernel.org>, <saravanak@google.com>, <devicetree@vger.kernel.org>,
	<zhangzekun11@huawei.com>
Subject: [PATCH 1/3] of: device: Do some clean up with use of __free()
Date: Fri, 30 Aug 2024 10:06:24 +0800
Message-ID: <20240830020626.115933-2-zhangzekun11@huawei.com>
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
 drivers/of/device.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/of/device.c b/drivers/of/device.c
index edf3be197265..7a71ef2aa16e 100644
--- a/drivers/of/device.c
+++ b/drivers/of/device.c
@@ -35,7 +35,7 @@ EXPORT_SYMBOL(of_match_device);
 static void
 of_dma_set_restricted_buffer(struct device *dev, struct device_node *np)
 {
-	struct device_node *node, *of_node = dev->of_node;
+	struct device_node *of_node = dev->of_node;
 	int count, i;
 
 	if (!IS_ENABLED(CONFIG_DMA_RESTRICTED_POOL))
@@ -54,17 +54,16 @@ of_dma_set_restricted_buffer(struct device *dev, struct device_node *np)
 	}
 
 	for (i = 0; i < count; i++) {
-		node = of_parse_phandle(of_node, "memory-region", i);
+		struct device_node *node __free(device_node) =
+			of_parse_phandle(of_node, "memory-region", i);
 		/*
 		 * There might be multiple memory regions, but only one
 		 * restricted-dma-pool region is allowed.
 		 */
 		if (of_device_is_compatible(node, "restricted-dma-pool") &&
 		    of_device_is_available(node)) {
-			of_node_put(node);
 			break;
 		}
-		of_node_put(node);
 	}
 
 	/*
-- 
2.17.1


