Return-Path: <devicetree+bounces-253691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AADCD10860
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 05:05:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C6A40302EF5E
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 04:05:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7571926561D;
	Mon, 12 Jan 2026 04:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="ZPcvrGlT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49236.qiye.163.com (mail-m49236.qiye.163.com [45.254.49.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C4918DB37
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 04:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.236
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768190723; cv=none; b=tY94BiGnPrFj2q0qavnzs+NN4jNawHPRU+eh7kPxO660hcOv2EauP6bpcOUJXxRIEBkHdCkocAZbfCudXdNQwWRAfuyGP9tOiYhD1bnFMF0uDDMnt1nehIyBQ9pJKId1RBP3YtOMSDrQ8yK+7HM8GweYKGNx79fh2vjF3bUwn5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768190723; c=relaxed/simple;
	bh=gQc5ufSEzXkWkY2WxXoU4W5Szo9UR9AJOITSw/uEOM4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=XkR8AkuA0FlkN5PExnC15IMXBkpXRgn7yeSXyzbW3opSAf2KVaAAbkaag1HIxMYmpyEc2uYCxmdeKzdWShFlOXjeJHSAPoZegulkXFH7W214gAGzk4Z49WCe+wbzVbTubRy/ZPz7cHAXgBJqY+4OkZNYUyh3Y2Kk9vTRsxgLAb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=ZPcvrGlT; arc=none smtp.client-ip=45.254.49.236
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 30449dd2c;
	Mon, 12 Jan 2026 11:49:53 +0800 (GMT+08:00)
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
Subject: [PATCH 2/3] soc: rockchip: grf: Support multiple grf to be handled
Date: Mon, 12 Jan 2026 11:49:27 +0800
Message-Id: <1768189768-96333-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1768189768-96333-1-git-send-email-shawn.lin@rock-chips.com>
References: <1768189768-96333-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9bb05313fe09cckunm0fb8f84327b6ea
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkpITFZLQ0tDHRhMGUpNTk1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ZPcvrGlT5FDgGS3dgthhSL0Rn4PZ2mdAO9e3S90Lz60ybOb2smeQr4fNwv6QRQCaGruxnWJpN59Rfto1Q21BraMF8gLgQg77OroijW4BCKBrPp1n8p1Porx+U9ToVuAgJJS2PV15tfcuxp22FbA8ujfobbzkPN5FoZ4sOoEC5UU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=vjsJcfjM9BS09ZeWpjnWfggvwfFc+kDyguSteWCYeQE=;
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
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/soc/rockchip/grf.c | 59 +++++++++++++++++++++++-----------------------
 1 file changed, 30 insertions(+), 29 deletions(-)

diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
index 8974d1c..6d1c624e 100644
--- a/drivers/soc/rockchip/grf.c
+++ b/drivers/soc/rockchip/grf.c
@@ -213,40 +213,41 @@ static int __init rockchip_grf_init(void)
 {
 	const struct rockchip_grf_info *grf_info;
 	const struct of_device_id *match;
-	struct device_node *np;
+	struct device_node *np, *from_np = NULL;
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
+	while (1) {
+		np = of_find_matching_node_and_match(from_np,
+				rockchip_grf_dt_match, &match);
+		if (!np)
+			return 0;
+		if (!match || !match->data) {
+			pr_err("%s: missing grf data\n", __func__);
+			of_node_put(np);
+			return -EINVAL;
+		}
 
-	grf_info = match->data;
-
-	grf = syscon_node_to_regmap(np);
-	of_node_put(np);
-	if (IS_ERR(grf)) {
-		pr_err("%s: could not get grf syscon\n", __func__);
-		return PTR_ERR(grf);
-	}
+		grf_info = match->data;
 
-	for (i = 0; i < grf_info->num_values; i++) {
-		const struct rockchip_grf_value *val = &grf_info->values[i];
-
-		pr_debug("%s: adjusting %s in %#6x to %#10x\n", __func__,
-			val->desc, val->reg, val->val);
-		ret = regmap_write(grf, val->reg, val->val);
-		if (ret < 0)
-			pr_err("%s: write to %#6x failed with %d\n",
-			       __func__, val->reg, ret);
+		grf = syscon_node_to_regmap(np);
+		of_node_put(np);
+		if (IS_ERR(grf)) {
+			pr_err("%s: could not get grf syscon\n", __func__);
+			return PTR_ERR(grf);
+		}
+
+		for (i = 0; i < grf_info->num_values; i++) {
+			const struct rockchip_grf_value *val = &grf_info->values[i];
+
+			pr_info("%s: adjusting %s in %#6x to %#10x\n", __func__,
+				val->desc, val->reg, val->val);
+			ret = regmap_write(grf, val->reg, val->val);
+			if (ret < 0)
+				pr_err("%s: write to %#6x failed with %d\n",
+					__func__, val->reg, ret);
+		}
+		from_np = np;
 	}
-
-	return 0;
 }
 postcore_initcall(rockchip_grf_init);
-- 
2.7.4


