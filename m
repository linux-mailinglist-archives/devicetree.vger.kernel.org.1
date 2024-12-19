Return-Path: <devicetree+bounces-132557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A25D9F772C
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 09:22:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 461B8188D133
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 08:22:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C48032185B9;
	Thu, 19 Dec 2024 08:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="ksEiO8Bt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m127100.qiye.163.com (mail-m127100.qiye.163.com [115.236.127.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B18217732;
	Thu, 19 Dec 2024 08:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.127.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734596523; cv=none; b=eEKgES+DHR5SqFr1nQHydZQ/Il/J760xYjk8s0jw2nbADN1NJAOsapNOn3+YWZW2z4y5O0bw87+Ktz8MXKdbHasn699QlS+1EXTTWKBrVmrRmiraYlJN67AaT3+cv2RwCSpCTip3vYG4YnMqFY3gmZq1HPv5gMIjBOzO8yWZR10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734596523; c=relaxed/simple;
	bh=5WZMbzucycT2iQWf4jeVBNrU5yTiaa83Bw/6j5Y+m0o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VMEIWRHQcr9/NX1UHhcJAM5R7loYqdhO34G9QQ8Qby8HldKSHARzWhIIlnCOsDrKr32y2/PC0fCb+43qKSSTDSGjuCe5+kq2q96hspURnBwtFOf+Wef4Oz/8ooA/Cd8atVOMBdz1SbmQUhYtQEM7zDp285DPvUeEKg+4DKcDny0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=ksEiO8Bt; arc=none smtp.client-ip=115.236.127.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 633dd662;
	Thu, 19 Dec 2024 16:06:35 +0800 (GMT+08:00)
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
Subject: [PATCH v3 08/15] drm/rockchip: analogix_dp: Add support to get panel from the DP AUX bus
Date: Thu, 19 Dec 2024 16:05:57 +0800
Message-Id: <20241219080604.1423600-9-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241219080604.1423600-1-damon.ding@rock-chips.com>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk5KHVZDTk0dTx0YS09NT09WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93ddf44db903a3kunm633dd662
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ngw6Tww5PTIQFBUvTD9JDDdP
	AwEwCgxVSlVKTEhPTkJOTkJMSENMVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKQktJNwY+
DKIM-Signature:a=rsa-sha256;
	b=ksEiO8Bt2qlwc+zz0EMIiHFIC2oTlD6NzrTgpa9TRsx2YJxwROd76sMmx7L4t1iKCLFQR8hbO0Hm0lsCiwJAYvbABPy+Lv47lUJWQaZz3z+QMQTilbB6EmRq/85T31qH/e03FK4J2Wnz4t3LFPH4rumNoz34+EN5p3ELs8Tepr0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=WkISH5ds2k+lYCOjJ9cf6bOYdtfmQgu7bQ7OmEgofvU=;
	h=date:mime-version:subject:message-id:from;

The rockchip_dp_of_panel_on_aux_bus() helps to check whether the DT
configurations related to the DP AUX bus are correct or not.

If failed to get the panel from the platform bus, it is good to try
the DP AUX bus. Then, the probing process will continue until it enters
the analogix_dp_bind(), where devm_of_dp_aux_populate_bus() is called
after &analogix_dp_device.aux has been initialized.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 24 +++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index ba5263f85ee2..60c902abf40b 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -317,6 +317,24 @@ static const struct drm_encoder_helper_funcs rockchip_dp_encoder_helper_funcs =
 	.atomic_check = rockchip_dp_drm_encoder_atomic_check,
 };
 
+static bool rockchip_dp_of_panel_on_aux_bus(const struct device_node *np)
+{
+	struct device_node *bus_node, *panel_node;
+
+	bus_node = of_get_child_by_name(np, "aux-bus");
+	if (!bus_node)
+		return false;
+
+	panel_node = of_get_child_by_name(bus_node, "panel");
+	of_node_put(bus_node);
+	if (!panel_node)
+		return false;
+
+	of_node_put(panel_node);
+
+	return true;
+}
+
 static int rockchip_dp_of_probe(struct rockchip_dp_device *dp)
 {
 	struct device *dev = dp->dev;
@@ -435,8 +453,10 @@ static int rockchip_dp_probe(struct platform_device *pdev)
 		return -ENODEV;
 
 	ret = drm_of_find_panel_or_bridge(dev->of_node, 1, 0, &panel, NULL);
-	if (ret < 0)
-		return ret;
+	if (ret < 0) {
+		if (!rockchip_dp_of_panel_on_aux_bus(dev->of_node))
+			return ret;
+	}
 
 	dp = devm_kzalloc(dev, sizeof(*dp), GFP_KERNEL);
 	if (!dp)
-- 
2.34.1


