Return-Path: <devicetree+bounces-135222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A0AA00328
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 04:30:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EE217188409E
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 03:30:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9B8F1537C6;
	Fri,  3 Jan 2025 03:30:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49198.qiye.163.com (mail-m49198.qiye.163.com [45.254.49.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 908232E401
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 03:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735875036; cv=none; b=J1bQ1abqAAsq8l5lJ27UO6EgVKYcss/VJiHS2Vf/+UDs+RUsrqik2mVhSj46YLXj87KO4RaxlTbuv4NpIMkQ2Y2eld1NSSnffnk1KSjvsoGPCtPIMIcYg4SUvZtlEz+J7+Ggq2cYBZSOyoD+ZV/lu8ys5UdShMe+Qa39Okg9nwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735875036; c=relaxed/simple;
	bh=XA2rk13zNwqu9qb8XiY2lQeOb0nLvcdSFdsz5y/3xSU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gh5wsIkGIuMIbTKXRtfOBEC5M4Q9yzuOdddSAx/9YFdGBf22Uo1hC7wpwS0y3kGWmyK8392bQvvc1J7b7yWDb/t/OSdLvmX2rS/xCiwa3g6HCxGw8a/eEQmkmuF1Y9y/z5PzYte+Spntt+paaGdBb8K69Lup+h1KlD2YuElV5FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from amadeus-Vostro-3710.lan (unknown [119.122.213.157])
	by smtp.qiye.163.com (Hmail) with ESMTP id 791e1b01;
	Fri, 3 Jan 2025 11:30:22 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: jonas@kwiboo.se
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	kishon@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	p.zabel@pengutronix.de,
	robh@kernel.org,
	vkoul@kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: rk3568: add reset-names for combphy
Date: Fri,  3 Jan 2025 11:30:16 +0800
Message-Id: <20250103033016.79544-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <688c8fb6-68f7-45f1-98fc-8b3252b3ecbf@kwiboo.se>
References: <688c8fb6-68f7-45f1-98fc-8b3252b3ecbf@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCQ0sdVkxCGR1KSxhCGh5PQ1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSFVKTkxZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0tVSktLVU
	tZBg++
X-HM-Tid: 0a942a36cf0d03a2kunm791e1b01
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NAw6Ezo5HTISIS0VPy5ODTA9
	KhVPFDVVSlVKTEhOQ0xOS0lIQ0hPVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	QlVKSUlVSUpIVUpOTFlXWQgBWUFKS0tMNwY+

Hi,
> The other patch in this series:
> arm64: dts: rockchip: rk3568: add reset-names for combphy
> is missing in v6.13-rc5, which will break pcie2 of rk3568
> because the phy driver has changed.

I don't know why the dts patch hasn't been merged into the mainline yet.
Maybe the merge window is different. Can you test the following patch?

```
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -325,6 +325,10 @@ static int rockchip_combphy_parse_dt(struct device *dev, struct rockchip_combphy
 	priv->ext_refclk = device_property_present(dev, "rockchip,ext-refclk");
 
 	priv->phy_rst = devm_reset_control_get(dev, "phy");
+	/* fallback to old behaviour */
+	if (IS_ERR_OR_NULL(priv->phy_rst))
+		priv->phy_rst = devm_reset_control_array_get_exclusive(dev);
+
 	if (IS_ERR(priv->phy_rst))
 		return dev_err_probe(dev, PTR_ERR(priv->phy_rst), "failed to get phy reset\n");
 
```

Thanks,
Chukun

-- 
2.25.1


