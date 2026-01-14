Return-Path: <devicetree+bounces-254779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F4013D1BFEB
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 02:52:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 000C7300BECD
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 01:52:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 604A125D1E6;
	Wed, 14 Jan 2026 01:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Bo6gJ6UP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m19731110.qiye.163.com (mail-m19731110.qiye.163.com [220.197.31.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0235D34CDD
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 01:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768355565; cv=none; b=ZPHubNFYSydZb/xg69F6u5h2vYOQJMc+k5CshtpRDo1kW9zO3r/M/lotxVeT3d68OJbAEclHRe8z4756iUHWUzVgCKLGsIOMjlN6s7xPkaPgqMPpOVETi7WVNZOiI+WgL1eXAgTFnLDGmbVtpaRfW1vaBwnwTY9QkwH38mRy+IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768355565; c=relaxed/simple;
	bh=wwcs1YuqQecnrJ6uxapBeAilsGLQ68coX6oSEKifZ+M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=CJKUUjnKYMUTJ4nvgXNEYg/fChh9oX0j+1JVUIeLef5t6jNikb6dXq0AG4Dt65cnG69/fDhY3EAeq/jTDBOb5Sj0RN+cwWI83D6LuE1KjWz2FZBBQlYP/c1NKRAwnKOcG6QWdnhfDkHicXu+JxJLEpI3D1/7JcCdbCKln9G/OFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Bo6gJ6UP; arc=none smtp.client-ip=220.197.31.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 308c2b3e9;
	Wed, 14 Jan 2026 09:47:23 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Marco Schirrmeister <mschirrmeister@gmail.com>,
	John Clark <inindev@gmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 2/3] soc: rockchip: grf: Support multiple grf to be handled
Date: Wed, 14 Jan 2026 09:46:53 +0800
Message-Id: <1768355214-198361-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1768355214-198361-1-git-send-email-shawn.lin@rock-chips.com>
References: <1768355214-198361-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9bba2fa76609cckunmdcf78111428405
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh4ZGVZMSRofGkpMQkoZGR5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Bo6gJ6UP+aroGg71HX3gNPL6uKgW+pgE3mLCXEWo5Sq8mCvmsixK35igTrJ3SrlQTOcNpfN0PnyPnTBFN/PKZNpt745l5gKJ8t2AucoTMvXMVQsIiqWml0cVdC54BjvLy7PWCBQ4wa75z2AX75PjnIeW5P10mH2zMBbI0iK5/Z0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=3xUbJj4puPZbf84wXiwA6TTTx2yy6iVP7+wotNupy8M=;
	h=date:mime-version:subject:message-id:from;
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Currently, only the first matched node will be handled. This leads
to jtag switching broken for RK3576, as rk3576-sys-grf is found before
rk3576-ioc-grf. Change the code to scan all the possible node to fix
the problem.

Fixes: e1aaecacfa13 ("soc: rockchip: grf: Add rk3576 default GRF values")
Cc: Detlev Casanova <detlev.casanova@collabora.com>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Tested-by: Marco Schirrmeister <mschirrmeister@gmail.com>
---

Changes in v3:
- remove of_node_put() (Heiko)

Changes in v2:
- use for_each_matching_node_and_match(Heiko)

 drivers/soc/rockchip/grf.c | 55 +++++++++++++++++++++++-----------------------
 1 file changed, 27 insertions(+), 28 deletions(-)

diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
index 8974d1c..04937c4 100644
--- a/drivers/soc/rockchip/grf.c
+++ b/drivers/soc/rockchip/grf.c
@@ -217,34 +217,33 @@ static int __init rockchip_grf_init(void)
 	struct regmap *grf;
 	int ret, i;
 
-	np = of_find_matching_node_and_match(NULL, rockchip_grf_dt_match,
-					     &match);
-	if (!np)
-		return -ENODEV;
-	if (!match || !match->data) {
-		pr_err("%s: missing grf data\n", __func__);
-		of_node_put(np);
-		return -EINVAL;
-	}
-
-	grf_info = match->data;
-
-	grf = syscon_node_to_regmap(np);
-	of_node_put(np);
-	if (IS_ERR(grf)) {
-		pr_err("%s: could not get grf syscon\n", __func__);
-		return PTR_ERR(grf);
-	}
-
-	for (i = 0; i < grf_info->num_values; i++) {
-		const struct rockchip_grf_value *val = &grf_info->values[i];
-
-		pr_debug("%s: adjusting %s in %#6x to %#10x\n", __func__,
-			val->desc, val->reg, val->val);
-		ret = regmap_write(grf, val->reg, val->val);
-		if (ret < 0)
-			pr_err("%s: write to %#6x failed with %d\n",
-			       __func__, val->reg, ret);
+	for_each_matching_node_and_match(np, rockchip_grf_dt_match, &match) {
+		if (!of_device_is_available(np))
+			continue;
+		if (!match || !match->data) {
+			pr_err("%s: missing grf data\n", __func__);
+			of_node_put(np);
+			return -EINVAL;
+		}
+
+		grf_info = match->data;
+
+		grf = syscon_node_to_regmap(np);
+		if (IS_ERR(grf)) {
+			pr_err("%s: could not get grf syscon\n", __func__);
+			return PTR_ERR(grf);
+		}
+
+		for (i = 0; i < grf_info->num_values; i++) {
+			const struct rockchip_grf_value *val = &grf_info->values[i];
+
+			pr_debug("%s: adjusting %s in %#6x to %#10x\n", __func__,
+				val->desc, val->reg, val->val);
+			ret = regmap_write(grf, val->reg, val->val);
+			if (ret < 0)
+				pr_err("%s: write to %#6x failed with %d\n",
+					__func__, val->reg, ret);
+		}
 	}
 
 	return 0;
-- 
2.7.4


