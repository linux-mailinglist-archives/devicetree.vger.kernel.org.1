Return-Path: <devicetree+bounces-250394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 40907CE8D76
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 07:59:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 36DFE300D656
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 06:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AE23272801;
	Tue, 30 Dec 2025 06:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=seu.edu.cn header.i=@seu.edu.cn header.b="TGTQxTMA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49198.qiye.163.com (mail-m49198.qiye.163.com [45.254.49.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4007224244;
	Tue, 30 Dec 2025 06:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767077949; cv=none; b=qbybEUgWefmezhy8Ylq1FLNuoipI9twHNXZiLDZwv7evizbHU9dcV1vBNM+yaS66zcjl3/DKHVGfTbN3B83MkoJopPG2sy+PFDVuyTqwCCzMVDKxsaeHiv7nADpBZK5Emp4IPE4tT8DnPEVAfLBPpL3A7xbRjrq7hoR4aF1REM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767077949; c=relaxed/simple;
	bh=w1h8v/z4z3+9EBo3LgPYYpc2Swjc04j/TzFM9/HSBjw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ZL8SPU/4O1Qn+f2A8Ix2g+vIBflMhWRGbBPzhWEqZjJdUBq3hkCpl+lFE3aMr+wsls8QAeJHvyqA7h/mj3qSQLXgPvh+ztacTdWnyD070MRSr29JAip4a032SfTiyO4u+GI4ZIfvIjgYhqCi5MNDN+OsPQEyGwVq66hqj32hhOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=seu.edu.cn; spf=pass smtp.mailfrom=seu.edu.cn; dkim=pass (1024-bit key) header.d=seu.edu.cn header.i=@seu.edu.cn header.b=TGTQxTMA; arc=none smtp.client-ip=45.254.49.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=seu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=seu.edu.cn
Received: from LAPTOP-N070L597.localdomain (unknown [58.241.16.34])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2efefd8d2;
	Tue, 30 Dec 2025 14:59:01 +0800 (GMT+08:00)
From: Zilin Guan <zilin@seu.edu.cn>
To: robh@kernel.org
Cc: saravanak@google.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zilin Guan <zilin@seu.edu.cn>,
	Jianhao Xu <jianhao.xu@seu.edu.cn>
Subject: [PATCH] of: unittest: Fix memory leak in unittest_data_add()
Date: Tue, 30 Dec 2025 06:58:59 +0000
Message-Id: <20251230065859.1046756-1-zilin@seu.edu.cn>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9b6e0d904d03a1kunm6c27310e14f037
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDQhoeVklNTElJH08eQhkYTFYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlOQ1VJT0pVSk1VSE9ZV1kWGg8SFR0UWUFZT0tIVUpLSUJDQ0xVSktLVUtZBg
	++
DKIM-Signature: a=rsa-sha256;
	b=TGTQxTMAXwaRoMthGKgwh6Th2tcWuY5DQZ4tGrdl8wo86BZQ33oMT759UufJAJUXasmFGlZqeLXNNQaOZHctRixmltrowsRT8V/m+S8fKoHBi3w3dziWL277mm9eS9zkwH4IDFKKiZjd0IA0udqyVo1NWwva/oyWjS/breXQl/c=; s=default; c=relaxed/relaxed; d=seu.edu.cn; v=1;
	bh=vCSKKY3zO4yn5wNete+HlvOCHUe5om8mhTN5jjM1B8U=;
	h=date:mime-version:subject:message-id:from;

In unittest_data_add(), if of_resolve_phandles() fails, the allocated
unittest_data is not freed, leading to a memory leak.

Fix this by freeing unittest_data in the error handling path before
returning.

Fixes: 2eb46da2a760 ("of/selftest: Use the resolver to fixup phandles")
Co-developed-by: Jianhao Xu <jianhao.xu@seu.edu.cn>
Signed-off-by: Jianhao Xu <jianhao.xu@seu.edu.cn>
Signed-off-by: Zilin Guan <zilin@seu.edu.cn>
---
 drivers/of/unittest.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
index 388e9ec2cccf..8622a8ac1814 100644
--- a/drivers/of/unittest.c
+++ b/drivers/of/unittest.c
@@ -2031,6 +2031,7 @@ static int __init unittest_data_add(void)
 	rc = of_resolve_phandles(unittest_data_node);
 	if (rc) {
 		pr_err("%s: Failed to resolve phandles (rc=%i)\n", __func__, rc);
+		kfree(unittest_data);
 		rc = -EINVAL;
 		goto unlock;
 	}
-- 
2.34.1


