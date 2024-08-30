Return-Path: <devicetree+bounces-98220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D815965532
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 04:20:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC57A284650
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 02:19:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5C8E7BB14;
	Fri, 30 Aug 2024 02:19:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com [45.249.212.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D656C4D8AD
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.249.212.32
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724984395; cv=none; b=gLvf8DHln+v2ZRRtMuoYnG/NKjDYED/8cHfS5+pEjL1SIzMNP9Qb1Swn+lb05BJnlQhA7gmB7o0fO26oa7GdNMdsu/QH3B9Y/HxECawwdMZ87l/AqNDD/Evy+mZuABN3BpLUX6ZqojdJGqJf4+Igpv/KwU1XBbdmvK6kseCnr7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724984395; c=relaxed/simple;
	bh=VL8pbYcmitDfVEEVRt/WT6TB6kSpLOjYeEJPKit01FI=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ZXE+Diq5S7Icz0rPvfTc8k2g5VpGm1XzI3fIPdn/IUbf/WZZf0LmMqTO/93rykxCGcjzZlQIoOiGrHghCsnghqcKGwbm6L9rUibbUvJyhwqt1EM5vhD0rlIdCz3eI/BD3Migyii0kfBUMc7jtlT62juVB8i6F8Mei+XB1X1hdhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=45.249.212.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.19.88.234])
	by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4Ww1yR2VhQz1xwcc;
	Fri, 30 Aug 2024 10:17:51 +0800 (CST)
Received: from kwepemf500003.china.huawei.com (unknown [7.202.181.241])
	by mail.maildlp.com (Postfix) with ESMTPS id A54031402C6;
	Fri, 30 Aug 2024 10:19:49 +0800 (CST)
Received: from huawei.com (10.175.112.208) by kwepemf500003.china.huawei.com
 (7.202.181.241) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Fri, 30 Aug
 2024 10:19:49 +0800
From: Zhang Zekun <zhangzekun11@huawei.com>
To: <robh@kernel.org>, <saravanak@google.com>, <devicetree@vger.kernel.org>,
	<zhangzekun11@huawei.com>
Subject: [PATCH 0/3] Do some cleanup with use of __free()
Date: Fri, 30 Aug 2024 10:06:23 +0800
Message-ID: <20240830020626.115933-1-zhangzekun11@huawei.com>
X-Mailer: git-send-email 2.17.1
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
device_node automatically. Let's simplify the code a bit with use of
__free().

Zhang Zekun (3):
  of: device: Do some clean up with use of __free()
  of: irq: Do some clean up with use of __free()
  of: property: Do some clean up with use of __free()

 drivers/of/device.c   |  7 +++----
 drivers/of/irq.c      | 15 +++++----------
 drivers/of/property.c | 28 ++++++++--------------------
 3 files changed, 16 insertions(+), 34 deletions(-)

-- 
2.17.1


