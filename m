Return-Path: <devicetree+bounces-132544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 040759F76F0
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 09:12:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CABF616DBE0
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 08:12:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A5EE2165F7;
	Thu, 19 Dec 2024 08:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="NU62ZfNr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m11886.qiye.163.com (mail-m11886.qiye.163.com [115.236.118.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E26B21A2396;
	Thu, 19 Dec 2024 08:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.118.86
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734595906; cv=none; b=rWNSkx5L1JBvfEtAFqRlaPFd1F6Ipx7Nd83RoG6pGXOcpSRuTR2Oq8yPcnj2fC1HSF9sfEpfpP4Gix1vDrLfbB3s513+ZluC6hghrgSfB/t6uUh0a6aqPo0mP7P78b2PjEYjw04BujOlrtU+9HsRCE/hDor1vC/qMU94WiFBjlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734595906; c=relaxed/simple;
	bh=dybVTpMmZb2o6gw6wTp4UHpPVU5llJyOJWSEdv/jqqQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RavNF6hbcvQ/itr/Fz0Tm4ZNdFa46Vf0eIsGSlTPDqb7BLojDSgzAakMlYEsGhoGcoXnxdjwhYy5mAo8r+jgYNPk8MAfaUxFxcO0n469lk3vdQ44F9zqHOud9fAHtukGejuMHHOG0BJeTjLO9d0z4lql/tKt9M1iCWa/b+SmWW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=NU62ZfNr; arc=none smtp.client-ip=115.236.118.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 633dd62c;
	Thu, 19 Dec 2024 16:06:26 +0800 (GMT+08:00)
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
Subject: [PATCH v3 03/15] drm/rockchip: analogix_dp: Add support for RK3588
Date: Thu, 19 Dec 2024 16:05:52 +0800
Message-Id: <20241219080604.1423600-4-damon.ding@rock-chips.com>
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
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkhNGlYZQkkaSU1NT09KTUNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93ddf42a1503a3kunm633dd62c
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pxw6DRw6HTINKhUzHzgeDUM3
	LwkwFEJVSlVKTEhPTkJOTkNDSUlDVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFMSkhPNwY+
DKIM-Signature:a=rsa-sha256;
	b=NU62ZfNrPaVwrbLj5R5nF+hmaCSN6aO7MrHWbtIBZ1FxKpUm+VqwH/JhWo/8rcTkeDeDcSSK7HEuiavGprZr2QmvUDJFXfXvpJuQPOLT5PbuJn3AmeRcySRD9WrDCr8/JnGnaXyocjqGYwcR4lu2yxxIFhye1BpzDAocJR8mFAE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Oc38nTH3vmtnkFEYyhvnErb8I0rNh94hu4ucFB4GNHI=;
	h=date:mime-version:subject:message-id:from;

RK3588 integrates the Analogix eDP 1.3 TX controller IP and the HDMI/eDP
TX Combo PHY based on a Samsung IP block. There are also two independent
eDP display interface on RK3588 Soc, so add 'u32 reg' to struct
rockchip_dp_chip_data in order to distinguish between two different eDP
devices. What's more, the reg configurations for RK3399 and RK3288 have
also been set.

The patch currently adds only the basic support, specifically RGB output
up to 4K@60Hz, without the tests for audio, PSR and other eDP 1.3 specific
features.

In additon, the above Analogix IP has always been utilized as eDP on
Rockchip platform, despite its capability to also support the DP v1.2.
Therefore, the newly added logs will contain the term 'edp' rather than
'dp'.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v2:
- Add support for the other eDP output edp1

Changes in v3:
- Fix the unexpected use of alias
- Add more details in commit message
---
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 91 +++++++++++++++++--
 include/drm/bridge/analogix_dp.h              |  3 +-
 2 files changed, 83 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index 05699615b4fc..ba5263f85ee2 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -51,11 +51,14 @@ struct rockchip_grf_reg_field {
 /**
  * struct rockchip_dp_chip_data - splite the grf setting of kind of chips
  * @lcdc_sel: grf register field of lcdc_sel
+ * @edp_mode: grf register field of edp_mode
  * @chip_type: specific chip type
  */
 struct rockchip_dp_chip_data {
 	const struct rockchip_grf_reg_field lcdc_sel;
+	const struct rockchip_grf_reg_field edp_mode;
 	u32	chip_type;
+	u32	reg;
 };
 
 struct rockchip_dp_device {
@@ -134,12 +137,21 @@ static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
 		return ret;
 	}
 
+	ret = rockchip_grf_field_write(dp->grf, &dp->data->edp_mode, 1);
+	if (ret != 0)
+		DRM_DEV_ERROR(dp->dev, "failed to set edp mode %d\n", ret);
+
 	return ret;
 }
 
 static int rockchip_dp_powerdown(struct analogix_dp_plat_data *plat_data)
 {
 	struct rockchip_dp_device *dp = pdata_encoder_to_dp(plat_data);
+	int ret;
+
+	ret = rockchip_grf_field_write(dp->grf, &dp->data->edp_mode, 0);
+	if (ret != 0)
+		DRM_DEV_ERROR(dp->dev, "failed to set edp mode %d\n", ret);
 
 	clk_disable_unprepare(dp->pclk);
 
@@ -203,6 +215,10 @@ static void rockchip_dp_drm_encoder_enable(struct drm_encoder *encoder,
 	struct rockchip_dp_device *dp = encoder_to_dp(encoder);
 	struct drm_crtc *crtc;
 	struct drm_crtc_state *old_crtc_state;
+	struct of_endpoint endpoint;
+	struct device_node *remote_port, *remote_port_parent;
+	char name[32];
+	u32 port_id;
 	int ret;
 
 	crtc = rockchip_dp_drm_get_new_crtc(encoder, state);
@@ -220,13 +236,27 @@ static void rockchip_dp_drm_encoder_enable(struct drm_encoder *encoder,
 		return;
 	}
 
-	ret = drm_of_encoder_active_endpoint_id(dp->dev->of_node, encoder);
+	ret = drm_of_encoder_active_endpoint(dp->dev->of_node, encoder, &endpoint);
 	if (ret < 0)
 		return;
 
-	DRM_DEV_DEBUG(dp->dev, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");
+	remote_port_parent = of_graph_get_remote_port_parent(endpoint.local_node);
+	if (remote_port_parent) {
+		if (of_get_child_by_name(remote_port_parent, "ports")) {
+			remote_port = of_graph_get_remote_port(endpoint.local_node);
+			of_property_read_u32(remote_port, "reg", &port_id);
+			of_node_put(remote_port);
+			sprintf(name, "%s vp%d", remote_port_parent->full_name, port_id);
+		} else {
+			sprintf(name, "%s %s",
+				remote_port_parent->full_name, endpoint.id ? "vopl" : "vopb");
+		}
+		of_node_put(remote_port_parent);
+
+		DRM_DEV_DEBUG(dp->dev, "%s output to edp\n", name);
+	}
 
-	ret = rockchip_grf_field_write(dp->grf, &dp->data->lcdc_sel, ret);
+	ret = rockchip_grf_field_write(dp->grf, &dp->data->lcdc_sel, endpoint.id);
 	if (ret != 0)
 		DRM_DEV_ERROR(dp->dev, "Could not write to GRF: %d\n", ret);
 
@@ -396,6 +426,8 @@ static int rockchip_dp_probe(struct platform_device *pdev)
 	const struct rockchip_dp_chip_data *dp_data;
 	struct drm_panel *panel = NULL;
 	struct rockchip_dp_device *dp;
+	struct resource *res;
+	int i;
 	int ret;
 
 	dp_data = of_device_get_match_data(dev);
@@ -410,9 +442,25 @@ static int rockchip_dp_probe(struct platform_device *pdev)
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
+		DRM_DEV_ERROR(dev, "no chip-data for %s node\n", dev->of_node->name);
+		return -ENODEV;
+	}
+
 	dp->dev = dev;
 	dp->adp = ERR_PTR(-ENODEV);
-	dp->data = dp_data;
 	dp->plat_data.panel = panel;
 	dp->plat_data.dev_type = dp->data->chip_type;
 	dp->plat_data.power_on = rockchip_dp_poweron;
@@ -464,19 +512,42 @@ static int rockchip_dp_resume(struct device *dev)
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
+};
+
+static const struct rockchip_dp_chip_data rk3588_edp[] = {
+	{
+		.edp_mode = GRF_REG_FIELD(0x0000, 0, 0),
+		.chip_type = RK3588_EDP,
+		.reg = 0xfdec0000,
+	},
+	{
+		.edp_mode = GRF_REG_FIELD(0x0004, 0, 0),
+		.chip_type = RK3588_EDP,
+		.reg = 0xfded0000,
+	},
+	{ /* sentinel */ }
 };
 
 static const struct of_device_id rockchip_dp_dt_ids[] = {
 	{.compatible = "rockchip,rk3288-dp", .data = &rk3288_dp },
 	{.compatible = "rockchip,rk3399-edp", .data = &rk3399_edp },
+	{.compatible = "rockchip,rk3588-edp", .data = &rk3588_edp },
 	{}
 };
 MODULE_DEVICE_TABLE(of, rockchip_dp_dt_ids);
diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index 6002c5666031..54086cb2d97d 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -15,11 +15,12 @@ enum analogix_dp_devtype {
 	EXYNOS_DP,
 	RK3288_DP,
 	RK3399_EDP,
+	RK3588_EDP,
 };
 
 static inline bool is_rockchip(enum analogix_dp_devtype type)
 {
-	return type == RK3288_DP || type == RK3399_EDP;
+	return type == RK3288_DP || type == RK3399_EDP || type == RK3588_EDP;
 }
 
 struct analogix_dp_plat_data {
-- 
2.34.1


