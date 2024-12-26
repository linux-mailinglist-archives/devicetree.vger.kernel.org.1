Return-Path: <devicetree+bounces-134052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7199FC90F
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 07:36:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A7334162E34
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 06:36:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A9D91C5481;
	Thu, 26 Dec 2024 06:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Im+/rkMw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m127171.xmail.ntesmail.com (mail-m127171.xmail.ntesmail.com [115.236.127.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6762170826;
	Thu, 26 Dec 2024 06:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.127.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735194842; cv=none; b=pFg/jkzBzByysjDmu0DDRo9l2OfLQWIiJ9Dpg0aW5gVqMN8mYTcJl+ztgphASaZM+8QRJOGgmj0HJItvYXrfIpoN++H4X51qOB8hxy2FSHKf0FLeZJorSd4DTW2N9HF/ks3JMF4aJHuQzUITSijIuNDSRo/BgGYpLXMOh2kLMVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735194842; c=relaxed/simple;
	bh=8s8+1mjzcyXlElnv/XeKAcFk+jwpV/1M2SqQvF9clOY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kMlu3zgaiMPlNGU8VInZO49fm7PXybdB22vfc8fwGmpHXY5tKxKKFxHEnsGVHLnQZRA6vviltpPqdXBj+TbYIBXpmcAFjmmsHUf8FOy8Q4wfCe2f5MrbVsoGi83PykiQ8O1dDFYEXMXWpEt8nqc1DxRHyk9dqSB0W9ZYUSRDMho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Im+/rkMw; arc=none smtp.client-ip=115.236.127.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6dc5118e;
	Thu, 26 Dec 2024 14:33:49 +0800 (GMT+08:00)
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
Subject: [PATCH v4 12/17] drm/rockchip: analogix_dp: Add support to get panel from the DP AUX bus
Date: Thu, 26 Dec 2024 14:33:08 +0800
Message-Id: <20241226063313.3267515-13-damon.ding@rock-chips.com>
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
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk5CH1ZDHh9DQx8fHkkeSk1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9401abe3b803a3kunm6dc5118e
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mhw6EQw5HTIRDExJGTlPKjMw
	GDYaCz9VSlVKTEhOSkJPQ0hKTUlPVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFIQ0lJNwY+
DKIM-Signature:a=rsa-sha256;
	b=Im+/rkMwRqQik7N1xnDlc4CKYx78M8oNhVh2V/CQE7F4tuib4NbnVTWykp6Rp2XhkI15Wx1QW+XyowRmwZbO5lyc4Z5EtZn5LCjtn8D4g/zNgDay7irHNAjAf6AfdLkd3rmkRzpvqEFc02hqERg9YnD+Gn41KerB+m9FdNtyHMw=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Os1l8vXNpaWFvpC0USZiZpP04fKmY9GbZF77YM2zyNE=;
	h=date:mime-version:subject:message-id:from;

Move drm_of_find_panel_or_bridge() a little later and combine it with
component_add() into a new function rockchip_dp_link_panel(). The function
will serve as done_probing() callback of devm_of_dp_aux_populate_bus(),
aiding to support for obtaining the eDP panel via the DP AUX bus.

If failed to get the panel from the DP AUX bus, it will then try the other
way to get panel information through the platform bus.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v4:
- Use done_probing() to call drm_of_find_panel_or_bridge() and
  component_add() when getting panel from the DP AUX bus
---
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 48 +++++++++++++++----
 1 file changed, 39 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 256a0fd715e9..5381fb19e763 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -21,6 +21,7 @@
 #include <video/of_videomode.h>
 #include <video/videomode.h>
 
+#include <drm/display/drm_dp_aux_bus.h>
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
@@ -91,6 +92,11 @@ static struct rockchip_dp_device *pdata_encoder_to_dp(struct analogix_dp_plat_da
 	return container_of(plat_data, struct rockchip_dp_device, plat_data);
 }
 
+static struct analogix_dp_plat_data *aux_to_pdata(struct drm_dp_aux *aux)
+{
+	return container_of(aux, struct analogix_dp_plat_data, aux);
+}
+
 static int rockchip_grf_write(struct regmap *grf, u32 reg, u32 mask, u32 val)
 {
 	return regmap_write(grf, reg, (mask << 16) | (val & mask));
@@ -431,11 +437,28 @@ static const struct component_ops rockchip_dp_component_ops = {
 	.unbind = rockchip_dp_unbind,
 };
 
+static int rockchip_dp_link_panel(struct drm_dp_aux *aux)
+{
+	struct analogix_dp_plat_data *plat_data = aux_to_pdata(aux);
+	struct rockchip_dp_device *dp = pdata_encoder_to_dp(plat_data);
+	int ret;
+
+	ret = drm_of_find_panel_or_bridge(dp->dev->of_node, 1, 0, &plat_data->panel, NULL);
+	if (ret)
+		return ret;
+
+	ret = component_add(dp->dev, &rockchip_dp_component_ops);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
 static int rockchip_dp_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
+	struct drm_dp_aux *aux;
 	const struct rockchip_dp_chip_data *dp_data;
-	struct drm_panel *panel = NULL;
 	struct rockchip_dp_device *dp;
 	struct resource *res;
 	int i;
@@ -445,10 +468,6 @@ static int rockchip_dp_probe(struct platform_device *pdev)
 	if (!dp_data)
 		return -ENODEV;
 
-	ret = drm_of_find_panel_or_bridge(dev->of_node, 1, 0, &panel, NULL);
-	if (ret < 0)
-		return ret;
-
 	dp = devm_kzalloc(dev, sizeof(*dp), GFP_KERNEL);
 	if (!dp)
 		return -ENOMEM;
@@ -472,7 +491,6 @@ static int rockchip_dp_probe(struct platform_device *pdev)
 
 	dp->dev = dev;
 	dp->adp = ERR_PTR(-ENODEV);
-	dp->plat_data.panel = panel;
 	dp->plat_data.dev_type = dp->data->chip_type;
 	dp->plat_data.power_on = rockchip_dp_poweron;
 	dp->plat_data.power_off = rockchip_dp_powerdown;
@@ -488,9 +506,21 @@ static int rockchip_dp_probe(struct platform_device *pdev)
 	if (IS_ERR(dp->adp))
 		return PTR_ERR(dp->adp);
 
-	ret = component_add(dev, &rockchip_dp_component_ops);
-	if (ret)
-		return ret;
+	aux = &dp->plat_data.aux;
+	aux->dev = dp->dev;
+	drm_dp_aux_init(aux);
+
+	ret = devm_of_dp_aux_populate_bus(aux, rockchip_dp_link_panel);
+	if (ret) {
+		if (ret != -ENODEV) {
+			DRM_DEV_ERROR(dev, "failed to populate aux bus : %d\n", ret);
+			return ret;
+		}
+
+		ret = rockchip_dp_link_panel(aux);
+		if (ret)
+			return ret;
+	}
 
 	return 0;
 }
-- 
2.34.1


