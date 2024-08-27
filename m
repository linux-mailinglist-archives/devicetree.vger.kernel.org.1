Return-Path: <devicetree+bounces-97001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B576A96061A
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 11:46:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 50CD8B23AEE
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 09:46:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21D8119D8BC;
	Tue, 27 Aug 2024 09:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="VwOvb7Jm"
X-Original-To: devicetree@vger.kernel.org
Received: from out-184.mta1.migadu.com (out-184.mta1.migadu.com [95.215.58.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F163719DF40
	for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 09:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724751876; cv=none; b=R6rBF7Eid8124Jg7v3fCNPC1AagnGzMUqMKVbM+LYmzAG2wcJaG2Sz9MdA9AbqUiXU2XaBXg/Qw+b8Uf/erGFRF6T4ASubUr0xjR9X/nc2RKv5SCUxcn/1JLJVZ/PTg+M8TBwC6XBmvMqd8ZLROy9L0uxjZv6ViPw/NZ3IMjwOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724751876; c=relaxed/simple;
	bh=qgrAugm1rpQlY/ERueGMv3KYU9B+Bw/8sl4XuiG1TMM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gzftnDOg5NHyLSwxHKTPx0jfxn1MIsB/iSCKqEqe4Ic9FHhOMKzGfYettyfgIefjgOs4xgOEkycgCEFEHGnlVVHEuXo/qxqF8Hf6iPW7Vmr1uSothw60nIoLpD/Ir/c4E9lgshgJsu+AIGApn3iAC8Z/7bOziAW/BYJPj4rh6ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=VwOvb7Jm; arc=none smtp.client-ip=95.215.58.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1724751871;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=bY2tYcoqP1IclXATq0vpOQDMtlpZe3AUP5YkGxabc7w=;
	b=VwOvb7JmqRXgqPG/mcm+aBgK0ZZ4Qw+8y49Ofhr7t/DYJzfv7VNfppG6UPDhOYgkUk9pVv
	cgvOFU2wWTNkV6MEFiiiSc5aoseI/etlGn5vsEoiCI8GCqors9oaXxkK9Krhn9vQwHFUgU
	2hXK87cyEeu5oY4NB4PcUvuvpYDutx4=
From: Kunwu Chan <kunwu.chan@linux.dev>
To: robh@kernel.org,
	saravanak@google.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kunwu Chan <chentao@kylinos.cn>
Subject: [PATCH] of/platform: Use dev_is_platform() to identify PCI devices
Date: Tue, 27 Aug 2024 17:44:02 +0800
Message-ID: <20240827094403.166238-1-kunwu.chan@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

From: Kunwu Chan <chentao@kylinos.cn>

Use dev_is_platform() instead of checking bus type directly.

Signed-off-by: Kunwu Chan <chentao@kylinos.cn>
---
 drivers/of/platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 86be4dfb9323..3696140bae9e 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -625,7 +625,7 @@ int of_platform_device_destroy(struct device *dev, void *data)
 	of_node_clear_flag(dev->of_node, OF_POPULATED);
 	of_node_clear_flag(dev->of_node, OF_POPULATED_BUS);
 
-	if (dev->bus == &platform_bus_type)
+	if (dev_is_platform(dev))
 		platform_device_unregister(to_platform_device(dev));
 #ifdef CONFIG_ARM_AMBA
 	else if (dev->bus == &amba_bustype)
-- 
2.41.0


