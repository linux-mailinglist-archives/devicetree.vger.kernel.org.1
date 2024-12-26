Return-Path: <devicetree+bounces-134064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E87BA9FC95D
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 08:09:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BDDD1606FF
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 07:09:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74D2114C5AF;
	Thu, 26 Dec 2024 07:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="HbGIaXZW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m3288.qiye.163.com (mail-m3288.qiye.163.com [220.197.32.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72B7C145B21;
	Thu, 26 Dec 2024 07:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735196954; cv=none; b=QQ1Qjki6AUMikO1xzloKrTE4gTFC+sBNQhg5FCrpwgEJ+vlDiwUkpaGPQ7CVb+vDoLAngAalY3cvO0t1IEqo0JSpSgE/ZPfWwwUlYqAuke4SpyAdytOPTbkkjLw728bHw5cO2nrlc6wCX6CrG3A+gmTOz2cDR6kbN2pmHi+XQ3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735196954; c=relaxed/simple;
	bh=xlcgfDsyzM0bGXqw2WEfBW7/9PoJcWdEk5UxU2WZ10o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pnYC+WmHHJ/XdsKjfFLpU/5c/Ey2jcJ4MYvv+d5tAadM001fa+bqZOGAUQ53lHVPJ2UKiPhWiDHA898gXSRDR/eNJRPjlA+hDlA9VxNlmxlnXBh3UtoYzET7N0Jy8ixPSvrl2YA99KTJ97DHiXgNu5az1U7gn4bHsBm5oGbQLnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=HbGIaXZW; arc=none smtp.client-ip=220.197.32.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6dc5114c;
	Thu, 26 Dec 2024 14:33:36 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	rfoss@kernel.org,
	vkoul@kernel.org,
	sebastian.reichel@collabora.com,
	cristian.ciocaltea@collabora.com,
	l.stach@pengutronix.de,
	andy.yan@rock-chips.com,
	hjc@rock-chips.com,
	algea.cao@rock-chips.com,
	kever.yang@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v4 05/17] phy: phy-rockchip-samsung-hdptx: Supplement some register names with their full version
Date: Thu, 26 Dec 2024 14:33:01 +0800
Message-Id: <20241226063313.3267515-6-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241226063313.3267515-1-damon.ding@rock-chips.com>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkNDH1YfH0JLGk4dS01NQxlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a9401abaf0803a3kunm6dc5114c
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Oj46Mww6PDIQGEw*CTgSKwIT
	OS0wCjNVSlVKTEhOSkJPQ0pMQkxPVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSkJLNwY+
DKIM-Signature:a=rsa-sha256;
	b=HbGIaXZW06stzlj+Ni7SUzkq1VhQUqI3/3LVn/k11K6VGeZyPoSEHXN+n+UiCywKUicGXA0emSkWZ6ylAAdnuzOXt9qJMGT9mMw2oFxhgLm7otY+1CuK4o2jsanhRPNo20c9/gstOd002zkJuj17xsaV+ZKWSrfIl1FL6C2Xxu0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=85pejLq/1YmqyG5JXSXXrTjiBT8M9DCsqBYEKaF85uA=;
	h=date:mime-version:subject:message-id:from;

Complete the register names of CMN_REG(0081) and CMN_REG(0087) to their
full version, and it can help to better match the datasheet.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 0fecbb1df6fb..2f3c69c7ee31 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -82,14 +82,14 @@
 #define ROPLL_SSC_EN			BIT(0)
 /* CMN_REG(0081) */
 #define OVRD_PLL_CD_CLK_EN		BIT(8)
-#define PLL_CD_HSCLK_EAST_EN		BIT(0)
+#define ANA_PLL_CD_HSCLK_EAST_EN	BIT(0)
 /* CMN_REG(0086) */
 #define PLL_PCG_POSTDIV_SEL_MASK	GENMASK(7, 4)
 #define PLL_PCG_CLK_SEL_MASK		GENMASK(3, 1)
 #define PLL_PCG_CLK_EN			BIT(0)
 /* CMN_REG(0087) */
-#define PLL_FRL_MODE_EN			BIT(3)
-#define PLL_TX_HS_CLK_EN		BIT(2)
+#define ANA_PLL_FRL_MODE_EN		BIT(3)
+#define ANA_PLL_TX_HS_CLK_EN		BIT(2)
 /* CMN_REG(0089) */
 #define LCPLL_ALONE_MODE		BIT(1)
 /* CMN_REG(0097) */
-- 
2.34.1


