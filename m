Return-Path: <devicetree+bounces-123663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD519D5A0F
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 08:35:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4347B282810
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 07:35:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60FBC170854;
	Fri, 22 Nov 2024 07:35:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49198.qiye.163.com (mail-m49198.qiye.163.com [45.254.49.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C661465A0
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 07:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732260928; cv=none; b=USgQGNLSGR3kx4Zc+hegMbWbr8EMHGjcUnav/sKb4Z2Vp3MvJnBNeFtqNzdUhdIl7TkPbcWFqrbl6SZnXpat1IGShNBRmNunwme6atNUA/bObxn5SxVZxPQ9EY9cm5SCXN9OJqooB6R5DBjbYwdHukq3hkuf9wTVKfKj5Sm0TLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732260928; c=relaxed/simple;
	bh=2lyAFtM/NXX7ptxWn1aoHTThoZPVaN08k3AXxU3AM3Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eAnXJlqi7yfktxTRj/OC3X5cCLO/7n8fozlUWcDeURo0Hzstax+RzNnXrtk6jFJxTcPSFEfkRDMsf/B2zW1/YTsydTae6K3OHKKlmmceLeQvZLslz8/KICeiSixj4o4CLy7xl6JYwHTnzOIClVc1Zalj4tMZSnaDoigw4UzprDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c04:2930::1])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3848de85;
	Fri, 22 Nov 2024 15:30:13 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Michael Zimmermann <sigmaepsilon92@gmail.com>
Subject: [PATCH 2/2] phy: rockchip: naneng-combphy: fix phy reset
Date: Fri, 22 Nov 2024 15:30:06 +0800
Message-Id: <20241122073006.99309-2-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241122073006.99309-1-amadeus@jmu.edu.cn>
References: <20241122073006.99309-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDSxpPVkpMGksZSx1IH0pPSVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtPQUlCSEtBQUpZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	tVSktLVUtZBg++
X-HM-Tid: 0a9352c74bac03a2kunm3848de85
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PhQ6Sgw5LjIsHT9LPi8sTyIp
	Pz4wCTRVSlVKTEhJSU1LTUpPS0lPVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS09BSUJIS0FBSllXWQgBWUFKT0pPNwY+

Currently, the USB port via combophy on the RK3528/RK3588 SoC is broken.

  usb usb8-port1: Cannot enable. Maybe the USB cable is bad?

This is due to the combphy of RK3528/RK3588 SoC has multiple resets, but
only "phy resets" need assert and deassert, "apb resets" don't need.
So change the driver to only match the phy resets, which is also what
the vendor kernel does.

Fixes: 7160820d742a ("phy: rockchip: add naneng combo phy for RK3568")
Cc: FUKAUMI Naoki <naoki@radxa.com>
Cc: Michael Zimmermann <sigmaepsilon92@gmail.com>
Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 0a9989e41237..2eb3329ca23f 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -309,7 +309,7 @@ static int rockchip_combphy_parse_dt(struct device *dev, struct rockchip_combphy
 
 	priv->ext_refclk = device_property_present(dev, "rockchip,ext-refclk");
 
-	priv->phy_rst = devm_reset_control_array_get_exclusive(dev);
+	priv->phy_rst = devm_reset_control_get(dev, "phy");
 	if (IS_ERR(priv->phy_rst))
 		return dev_err_probe(dev, PTR_ERR(priv->phy_rst), "failed to get phy reset\n");
 
-- 
2.25.1


