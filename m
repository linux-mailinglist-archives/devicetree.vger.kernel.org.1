Return-Path: <devicetree+bounces-99990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 003B396BBB5
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 14:12:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 339061C20B4F
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 12:12:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FB781D86E6;
	Wed,  4 Sep 2024 12:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="aJhgyadG"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.2])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D501A1D86F9
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 12:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.2
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725451611; cv=none; b=SfJUQqTNBpV2Z9mmM2AcKNRHdE39BvITJQfKKJWCH/ktUpCAUfQhMnuRL75c8BrX0Q2hGC/CMneLCk1Tre2KmSVByC8yRdjmTJhANWpq6ncwd/1wjvctAtYAfcu9SpH7D1V4phImt9BGwU1jdQLfLsy/8Bz2+q0Y0qes3mb9pVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725451611; c=relaxed/simple;
	bh=QI5oRTlrW6LIjwsj+nNMD0R+ZXb/shuA7+reH0213ec=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=p2per9HnMDyx7l/JSG56BUBGx8OCnKLRe/yORcE2SKTIyZ8yPLCvbtESj6UeVC3XpyzeotikGyCDbLSaj5HW7XP7GMRUgerMneMYlSWTe+N8PWzRmPvWmyZu5HWZAalgj4nzfl9C8N0OVcRVrcsgmwm6baYsHYhlphZ15/fbSW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=aJhgyadG; arc=none smtp.client-ip=117.135.210.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=gnWpQ
	Q0es1j6wqTqNq5nsoDjbZcQfpWYlZPLSBASRj0=; b=aJhgyadGykkRLCVW/TSdn
	3oSdHLDIZlyei1DHmM7Wup8J+9lqYYZ8jnvSkUse7tGZwX6g/f0mKd12D/SUTRSn
	5hayR3SIocfUCXqSk1xEDTjuhPPkXy5lhsOi8pMW/go6RJRLy8hGsGbc0wO8JqHg
	QyDpzyYJYy/rhavoSalgjM=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g2-2 (Coremail) with SMTP id _____wC3vwgsTdhmkS0vFg--.47088S2;
	Wed, 04 Sep 2024 20:06:08 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: detlev.casanova@collabora.com
Cc: sjoerd@collabora.com,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	hjc@rock-chips.com,
	cristian.ciocaltea@collabora.com,
	mripard@kernel.org,
	dri-devel@lists.freedesktop.org,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 11/11] phy: phy-rockchip-samsung-hdptx: Don't request RST_PHY/RST_ROPLL/RST_LCPLL
Date: Wed,  4 Sep 2024 20:06:03 +0800
Message-Id: <20240904120603.3857169-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240904120238.3856782-1-andyshrk@163.com>
References: <20240904120238.3856782-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wC3vwgsTdhmkS0vFg--.47088S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Kr15Cw4xCF47Kr1rZr1DWrg_yoW8tFy5pF
	s3CF47JrWqgFn8Wa1UKFn8CFW8JF9IqF1YqFs3Z3Wxtr1xArWDuryfuF95Xr1DJrW2qayF
	kw4xtFWfu3W2vwUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UKNtsUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hFQXmWX0KX1NAAAsL

From: Andy Yan <andy.yan@rock-chips.com>

RST_PHY/RST_ROPLL/RST_LCPLL are used for debug only,
and there are not exported on rk3576.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

(no changes since v1)

 .../phy/rockchip/phy-rockchip-samsung-hdptx.c   | 17 +----------------
 1 file changed, 1 insertion(+), 16 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 946c01210ac8..f3f03914bf78 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -252,13 +252,10 @@ struct ropll_config {
 };
 
 enum rk_hdptx_reset {
-	RST_PHY = 0,
-	RST_APB,
+	RST_APB = 0,
 	RST_INIT,
 	RST_CMN,
 	RST_LANE,
-	RST_ROPLL,
-	RST_LCPLL,
 	RST_MAX
 };
 
@@ -655,11 +652,6 @@ static void rk_hdptx_phy_disable(struct rk_hdptx_phy *hdptx)
 {
 	u32 val;
 
-	/* reset phy and apb, or phy locked flag may keep 1 */
-	reset_control_assert(hdptx->rsts[RST_PHY].rstc);
-	usleep_range(20, 30);
-	reset_control_deassert(hdptx->rsts[RST_PHY].rstc);
-
 	reset_control_assert(hdptx->rsts[RST_APB].rstc);
 	usleep_range(20, 30);
 	reset_control_deassert(hdptx->rsts[RST_APB].rstc);
@@ -780,10 +772,6 @@ static int rk_hdptx_ropll_tmds_cmn_config(struct rk_hdptx_phy *hdptx,
 
 	rk_hdptx_pre_power_up(hdptx);
 
-	reset_control_assert(hdptx->rsts[RST_ROPLL].rstc);
-	usleep_range(20, 30);
-	reset_control_deassert(hdptx->rsts[RST_ROPLL].rstc);
-
 	rk_hdptx_multi_reg_write(hdptx, rk_hdtpx_common_cmn_init_seq);
 	rk_hdptx_multi_reg_write(hdptx, rk_hdtpx_tmds_cmn_init_seq);
 
@@ -958,13 +946,10 @@ static int rk_hdptx_phy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(hdptx->regmap),
 				     "Failed to init regmap\n");
 
-	hdptx->rsts[RST_PHY].id = "phy";
 	hdptx->rsts[RST_APB].id = "apb";
 	hdptx->rsts[RST_INIT].id = "init";
 	hdptx->rsts[RST_CMN].id = "cmn";
 	hdptx->rsts[RST_LANE].id = "lane";
-	hdptx->rsts[RST_ROPLL].id = "ropll";
-	hdptx->rsts[RST_LCPLL].id = "lcpll";
 
 	ret = devm_reset_control_bulk_get_exclusive(dev, RST_MAX, hdptx->rsts);
 	if (ret)
-- 
2.34.1


