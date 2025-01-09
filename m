Return-Path: <devicetree+bounces-136889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DA7A06C25
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 04:29:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 059A03A78D8
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 03:29:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B591B187561;
	Thu,  9 Jan 2025 03:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="SCnACFms"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m121142.qiye.163.com (mail-m121142.qiye.163.com [115.236.121.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10965172BB9;
	Thu,  9 Jan 2025 03:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.121.142
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736393302; cv=none; b=gsB9Kwp0haWAL6Ake+DvJzWZdf6UthN4m1HlNWlnunNNYuPDs0Kamwejt5o5/f7fsCjIIn6mQbOaIZEqZMu5YJeI2uK3WW3Jbg4aFUwiNgLJVgKg/Q9tlhRZzDT8VpQASr9RJOiV4utjPZq+YKqF7NU54q4t3wGrpwae0BbXUwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736393302; c=relaxed/simple;
	bh=PJmPewR3pt5hNVR5lPa20cBU8XGEzuzpLOLNSjW2Sas=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=F2a8GFP87bDtY07piPfpV+JGsT3p2IgHX1YW8sRyc+ow9f3RoC0CQ38u5fdTDWeJgHIs5AZX2Sv7pWc8TPrHSjI46qL/TjchTSgQGWOVzz3Pn/uT6h4g8Fg1ApJ0V47sHXY1pZ+q0ACjSsS3/AGgBL0OpqwTt4BPKcCkq3j8x50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=SCnACFms; arc=none smtp.client-ip=115.236.121.142
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 82c01a46;
	Thu, 9 Jan 2025 11:28:10 +0800 (GMT+08:00)
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
	dmitry.baryshkov@linaro.org,
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
Subject: [PATCH v5 07/20] drm/rockchip: analogix_dp: Expand device data to support multiple edp display
Date: Thu,  9 Jan 2025 11:27:12 +0800
Message-Id: <20250109032725.1102465-8-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250109032725.1102465-1-damon.ding@rock-chips.com>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxlLTlZCThoYGElLHUJOGE9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a94491af38f03a3kunm82c01a46
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ohg6Exw6TzIcDxQDLANRTBAv
	NS4aCxFVSlVKTEhNSEJISUJJSENPVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJTUxDNwY+
DKIM-Signature:a=rsa-sha256;
	b=SCnACFms8F41DPlRyE3gbrBfH6f4f4iVOtFo4VRHgB3jVY7EBdsJL9dezdd2QeE2SCUSdlGSfsVxnnmP5ABz4r7VcmV68z6ogUDBbYAXNwXyE63xKk1E11KjtD2j/Vqc6V1O0Av60pUqfow9B/n0IuV6iBSQBhFLzlpjKbB7rGg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Opp8/1o2GzjehPnlr1xNOYU9LgkvnWOfJwemdFwvWbU=;
	h=date:mime-version:subject:message-id:from;

There are two main modifications: one is expanding struct
rockchip_dp_chip_data to an array, and the other is adding
&rockchip_dp_chip_data.reg to separate different edp devices.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 41 +++++++++++++++----
 1 file changed, 34 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index eef1ff0f3a13..0957d3c5d31d 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -56,6 +56,7 @@ struct rockchip_grf_reg_field {
 struct rockchip_dp_chip_data {
 	const struct rockchip_grf_reg_field lcdc_sel;
 	u32	chip_type;
+	u32	reg;
 };
 
 struct rockchip_dp_device {
@@ -397,6 +398,8 @@ static int rockchip_dp_probe(struct platform_device *pdev)
 	const struct rockchip_dp_chip_data *dp_data;
 	struct drm_panel *panel = NULL;
 	struct rockchip_dp_device *dp;
+	struct resource *res;
+	int i;
 	int ret;
 
 	dp_data = of_device_get_match_data(dev);
@@ -411,9 +414,25 @@ static int rockchip_dp_probe(struct platform_device *pdev)
 	if (!dp)
 		return -ENOMEM;
 
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+
+	i = 0;
+	while (dp_data[i].reg) {
+		if (dp_data[i].reg == res->start) {
+			dp->data = &dp_data[i];
+			break;
+		}
+
+		i++;
+	}
+
+	if (!dp->data) {
+		dev_err(dev, "no chip-data for %s node\n", dev->of_node->name);
+		return -ENODEV;
+	}
+
 	dp->dev = dev;
 	dp->adp = ERR_PTR(-ENODEV);
-	dp->data = dp_data;
 	dp->plat_data.panel = panel;
 	dp->plat_data.dev_type = dp->data->chip_type;
 	dp->plat_data.power_on = rockchip_dp_poweron;
@@ -465,14 +484,22 @@ static int rockchip_dp_resume(struct device *dev)
 static DEFINE_RUNTIME_DEV_PM_OPS(rockchip_dp_pm_ops, rockchip_dp_suspend,
 		rockchip_dp_resume, NULL);
 
-static const struct rockchip_dp_chip_data rk3399_edp = {
-	.lcdc_sel = GRF_REG_FIELD(0x6250, 5, 5),
-	.chip_type = RK3399_EDP,
+static const struct rockchip_dp_chip_data rk3399_edp[] = {
+	{
+		.lcdc_sel = GRF_REG_FIELD(0x6250, 5, 5),
+		.chip_type = RK3399_EDP,
+		.reg = 0xff970000,
+	},
+	{ /* sentinel */ }
 };
 
-static const struct rockchip_dp_chip_data rk3288_dp = {
-	.lcdc_sel = GRF_REG_FIELD(0x025c, 5, 5),
-	.chip_type = RK3288_DP,
+static const struct rockchip_dp_chip_data rk3288_dp[] = {
+	{
+		.lcdc_sel = GRF_REG_FIELD(0x025c, 5, 5),
+		.chip_type = RK3288_DP,
+		.reg = 0xff970000,
+	},
+	{ /* sentinel */ }
 };
 
 static const struct of_device_id rockchip_dp_dt_ids[] = {
-- 
2.34.1


