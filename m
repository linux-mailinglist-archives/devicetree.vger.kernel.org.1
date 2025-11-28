Return-Path: <devicetree+bounces-242902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4393FC91028
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 08:14:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B24384E7396
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 07:14:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 977692D94BD;
	Fri, 28 Nov 2025 07:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="umjIAeWJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast1.qq.com (smtpbguseast1.qq.com [54.204.34.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77322D6E67;
	Fri, 28 Nov 2025 07:13:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.129
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764314029; cv=none; b=NmmHSRgcFfcxWv6CU18vO7mwU/x9yVvhIKDn790/2HAi2RCFvLQfAwY7cn9yRZZh3kYz2K+Ods6RldBRoxf3phgXDXrFevP1mX0eJyZp35zBGm7OLN294hhuacd0/iULBYJ9EueH6f8iezvCiY28KKeVSIV7sznuIlcVMpoGtQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764314029; c=relaxed/simple;
	bh=XqwFJKKGSF/A+veq+3NwtTC/uUIoZoJY8eUi10dvx7M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=CwQIWmX5GuJHDMKLB2VXAWsraWo1abtfB/voWOJ87KZPRzr9vgg/D89yDp4SYNWR6g0gv/ZcuZqGhUHyBUZPtkb7yG2wd/afWJlyKA3bytZIMzA3AEWGmfy1YsvTj4yiWU3U7sugeeqMBwmFh2h1YNNs+QWSLS04Q/coo5khjQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=umjIAeWJ; arc=none smtp.client-ip=54.204.34.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1764314016;
	bh=bU/9WUN/59AwNz4ANd+6SuKrCznrmNWalFyjyHF+iy4=;
	h=From:To:Subject:Date:Message-Id;
	b=umjIAeWJn6ebjtRdBNCSevWwHZuARyGM/xpN0ytDhQyLS3QWmepVGMcZcpX89rvpT
	 3EpxYGiH3rgvaMpvWzVRNo19D4CGy3dodNoqDGbXqiMeifUw5JzxU5xnr94S6iCqPx
	 wX4nz5cQ1J9WrZIO/q0M7dZm+YogelV6cup97cSQ=
X-QQ-mid: zesmtpsz7t1764314012t7986102a
X-QQ-Originating-IP: fQ38+bagafd/aNZJRKe4NdW9zDnds+/df0ZWXL1qErc=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 28 Nov 2025 15:13:30 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 5273393561638931469
From: Chaoyi Chen <kernel@airkyi.com>
To: Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: [PATCH v2 2/2] iommu/rockchip: Use devm_clk_bulk_get_all() to get multiple iface clock
Date: Fri, 28 Nov 2025 15:13:22 +0800
Message-Id: <20251128071322.92-3-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251128071322.92-1-kernel@airkyi.com>
References: <20251128071322.92-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: M58CI+QHpTskHy8BRZuj/91KW4IzwRNnXz6pUDMTnWo1Wlq/oUPxh8vp
	CofL+olcz7XhfRv1YwbUvZPm+INHoOT2EB9zacr8O5q1YoGQtaikuSDk04k47xU2KeRbRD5
	140LfLsAv5o+yE3jhHsrY2Uj8aD6glznMOhqqDsloej01MF+b7/2XtuE0zxdXLMAol+ZLNz
	XRVogQd+332wFeKGGDrVmLQyV8n5sSgMPkZQwCJ7Zw/0t+tLsoQitqaj/gs3g9ZpOO5w9B1
	E/f7iCvwsVylIuYDHl78kkOX6D6py/nXB6zlTgRCh9orHyNMHe4K3tBT3NiAPsr/9+OYOq7
	3gCORD5hzb4ELQlXZscpmKEltPVB19WzX1+CtpsB25RZEVdU8OZ3CgmtBeVbr0Mv2ubRuYR
	f0DF4CZe4P+TkdgfUeX2e+Vu3zP1GJSikLQ3eftOM7YKmyVN82oc3xpiLZ58ONhZmDrhWvI
	ZlDoMKb5t0h10X+ppCKevmIhS3oaN4PMNF8i1V/c3Y2mJToDbZA58kRxLRk3BrCb4T4l6ui
	LBKlPJPIBm/UR8IsN5a0ySsKl+0rrP/ZSSqThgDK1bxzNq7UctQaxIgSePHnxx+aQ+DM+9+
	IOjR63mlETakocluucEcVc9QRk/dituI7Qy6ZEhXzI/71fK/04iSFQfbMzF3hhmdiY+Gjgh
	U2wqVzXZYb4rpmAWzrU7ZYDKNlB2gCE57foOmdoLMUbiEJxppmziLfwoRtIQxXxq3vWciCs
	8OMjPSVCO0TTA8+wuJZwDUuyNnKlXnndlHeXNnkb8iSfy78erpY+Yt8fVabjDUjpoOH3Ju2
	fu9vU2cGZl04TkDudPedd4aZYmCjAoSK5X8ujo/zpKh4OKPWOlxPc1TZrSeoV7uOdcIqRPK
	z7+F2WTIMC1A4VPtCKtm88Wqre3yv6ReuBNa5L0PM7JJjVcC4DWwV7bSAKESAqyXey1MkOu
	RU1cbfO/QAMGjwZhYGwLCWu07npLL3eGBx0HYwOYjbQonq63Ht1asMeLoscDS4URoJFA=
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

The iommu found on RK3576 NPU and RK3576 RKVDEC contain 4 clock.

Just use devm_clk_bulk_get_all() to get all the clocks and use them.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---

Changes in v2:
- Change comment.

 drivers/iommu/rockchip-iommu.c | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 0861dd469bd8..76f71fb679f8 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -93,11 +93,6 @@ struct rk_iommu_domain {
 	struct iommu_domain domain;
 };
 
-/* list of clocks required by IOMMU */
-static const char * const rk_iommu_clocks[] = {
-	"aclk", "iface",
-};
-
 struct rk_iommu_ops {
 	phys_addr_t (*pt_address)(u32 dte);
 	u32 (*mk_dtentries)(dma_addr_t pt_dma);
@@ -1236,25 +1231,18 @@ static int rk_iommu_probe(struct platform_device *pdev)
 	iommu->reset_disabled = device_property_read_bool(dev,
 					"rockchip,disable-mmu-reset");
 
-	iommu->num_clocks = ARRAY_SIZE(rk_iommu_clocks);
-	iommu->clocks = devm_kcalloc(iommu->dev, iommu->num_clocks,
-				     sizeof(*iommu->clocks), GFP_KERNEL);
-	if (!iommu->clocks)
-		return -ENOMEM;
-
-	for (i = 0; i < iommu->num_clocks; ++i)
-		iommu->clocks[i].id = rk_iommu_clocks[i];
-
 	/*
 	 * iommu clocks should be present for all new devices and devicetrees
 	 * but there are older devicetrees without clocks out in the wild.
 	 * So clocks as optional for the time being.
 	 */
-	err = devm_clk_bulk_get(iommu->dev, iommu->num_clocks, iommu->clocks);
+	err = devm_clk_bulk_get_all(dev, &iommu->clocks);
 	if (err == -ENOENT)
 		iommu->num_clocks = 0;
-	else if (err)
+	else if (err < 0)
 		return err;
+	else
+		iommu->num_clocks = err;
 
 	err = clk_bulk_prepare(iommu->num_clocks, iommu->clocks);
 	if (err)
-- 
2.51.1


