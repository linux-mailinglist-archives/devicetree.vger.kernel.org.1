Return-Path: <devicetree+bounces-125024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5DC9DA89A
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 14:36:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C399A16255D
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 13:36:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B97CE1FCF62;
	Wed, 27 Nov 2024 13:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="MfS8IAMZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m127214.xmail.ntesmail.com (mail-m127214.xmail.ntesmail.com [115.236.127.214])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CAB5B1FB;
	Wed, 27 Nov 2024 13:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.236.127.214
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732714559; cv=none; b=JrVhkHoyrx/8exxREND/Xjzdz+Ldl1N9aihH85O+AMAqQbJDdjlX5XuvWFO2hiiCMlxtC5l9Bm3pfZoM+o8r1AYOqV4dK/NpxcqgOayPYbjwh6enIdSAlhaaVg45l0Gqx7RzREN35NqWeaA44GPZ5uBQXx7+BbXgrww4sxjqgMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732714559; c=relaxed/simple;
	bh=85mc0DRSKbj9k/YU/qbkb42L3fakNBPl43aMnUu3/0o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lPbeNps0qNnqjGeCQVNsByh1b3rCC6cxsktJYwpIna26aZCahcNx7lMK2U5iix5UQS8pI+q9MVNLCLcBYCibW77YEo/AO91AWwh4u8KuCYWKMKIvKPtxm+HEwXWOtAZ7zDgxuFfYMIvCRjt6nbcGuQY6b3awfipU1VI35qY0PA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=MfS8IAMZ; arc=none smtp.client-ip=115.236.127.214
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3f86cdad;
	Wed, 27 Nov 2024 15:53:05 +0800 (GMT+08:00)
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
Subject: [PATCH v1 06/10] drm/bridge: analogix_dp: Add support for phy configuration.
Date: Wed, 27 Nov 2024 15:51:53 +0800
Message-Id: <20241127075157.856029-7-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241127075157.856029-1-damon.ding@rock-chips.com>
References: <20241127075157.856029-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxkeTlYaGB9NH0sfQ0pMSE1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a936c9c08b303a3kunm3f86cdad
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OhQ6Dio*AzIdAS8rL04fNU0Y
	CQEwFElVSlVKTEhJTUJIQkNMSE5DVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFNSUlJNwY+
DKIM-Signature:a=rsa-sha256;
	b=MfS8IAMZ8kS6KX/ep3mSwFCkq0O0c2s/q9cRg5bLNGzJPuBcWjewFPNTd3n/tFq+WteUwtXBDE/NbFEFDd/Lt+pn3Tmbd6+qWOvsi9dTYDtwm8+sOVGUXJE6+gHhBFKBg6H91kVMieAQl7WabR+AHe/6evnnp0u143bAJjArzgI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=+ShHpIyldNVWbRaSLe+XrdPn+Q/pvuzFs88v8b7jIdU=;
	h=date:mime-version:subject:message-id:from;

Add support to configurate link rate, lane count, voltage swing and
pre-emphasis with phy_configure(). It is helpful in application scenarios
where analogix controller is mixed with the phy of other vendors.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 .../drm/bridge/analogix/analogix_dp_core.c    |  4 +-
 .../drm/bridge/analogix/analogix_dp_core.h    |  2 +
 .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 90 +++++++++++++++++++
 3 files changed, 94 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 6f10d88a34c5..7624ed13cdbf 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1672,7 +1672,7 @@ EXPORT_SYMBOL_GPL(analogix_dp_probe);
 
 int analogix_dp_suspend(struct analogix_dp_device *dp)
 {
-	phy_power_off(dp->phy);
+	analogix_dp_phy_power_off(dp);
 
 	if (dp->plat_data->power_off)
 		dp->plat_data->power_off(dp->plat_data);
@@ -1696,7 +1696,7 @@ int analogix_dp_resume(struct analogix_dp_device *dp)
 	if (dp->plat_data->power_on)
 		dp->plat_data->power_on(dp->plat_data);
 
-	phy_power_on(dp->phy);
+	analogix_dp_phy_power_on(dp);
 
 	analogix_dp_init_dp(dp);
 
diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
index 774d11574b09..a76079d61768 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
@@ -232,5 +232,7 @@ int analogix_dp_send_psr_spd(struct analogix_dp_device *dp,
 			     struct dp_sdp *vsc, bool blocking);
 ssize_t analogix_dp_transfer(struct analogix_dp_device *dp,
 			     struct drm_dp_aux_msg *msg);
+void analogix_dp_phy_power_on(struct analogix_dp_device *dp);
+void analogix_dp_phy_power_off(struct analogix_dp_device *dp);
 
 #endif /* _ANALOGIX_DP_CORE_H */
diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
index 3afc73c858c4..809bb0c72d18 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
@@ -11,6 +11,7 @@
 #include <linux/gpio/consumer.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
+#include <linux/phy/phy.h>
 
 #include <drm/bridge/analogix_dp.h>
 
@@ -513,10 +514,27 @@ void analogix_dp_enable_sw_function(struct analogix_dp_device *dp)
 void analogix_dp_set_link_bandwidth(struct analogix_dp_device *dp, u32 bwtype)
 {
 	u32 reg;
+	int ret;
 
 	reg = bwtype;
 	if ((bwtype == DP_LINK_BW_2_7) || (bwtype == DP_LINK_BW_1_62))
 		writel(reg, dp->reg_base + ANALOGIX_DP_LINK_BW_SET);
+
+	if (dp->phy) {
+		union phy_configure_opts phy_cfg = {0};
+
+		phy_cfg.dp.lanes = dp->link_train.lane_count;
+		phy_cfg.dp.link_rate =
+			drm_dp_bw_code_to_link_rate(dp->link_train.link_rate) / 100;
+		phy_cfg.dp.set_lanes = false;
+		phy_cfg.dp.set_rate = true;
+		phy_cfg.dp.set_voltages = false;
+		ret = phy_configure(dp->phy, &phy_cfg);
+		if (ret && ret != -EOPNOTSUPP) {
+			dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
+			return;
+		}
+	}
 }
 
 void analogix_dp_get_link_bandwidth(struct analogix_dp_device *dp, u32 *bwtype)
@@ -530,9 +548,24 @@ void analogix_dp_get_link_bandwidth(struct analogix_dp_device *dp, u32 *bwtype)
 void analogix_dp_set_lane_count(struct analogix_dp_device *dp, u32 count)
 {
 	u32 reg;
+	int ret;
 
 	reg = count;
 	writel(reg, dp->reg_base + ANALOGIX_DP_LANE_COUNT_SET);
+
+	if (dp->phy) {
+		union phy_configure_opts phy_cfg = {0};
+
+		phy_cfg.dp.lanes = dp->link_train.lane_count;
+		phy_cfg.dp.set_lanes = true;
+		phy_cfg.dp.set_rate = false;
+		phy_cfg.dp.set_voltages = false;
+		ret = phy_configure(dp->phy, &phy_cfg);
+		if (ret && ret != -EOPNOTSUPP) {
+			dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
+			return;
+		}
+	}
 }
 
 void analogix_dp_get_lane_count(struct analogix_dp_device *dp, u32 *count)
@@ -546,10 +579,39 @@ void analogix_dp_get_lane_count(struct analogix_dp_device *dp, u32 *count)
 void analogix_dp_set_lane_link_training(struct analogix_dp_device *dp)
 {
 	u8 lane;
+	int ret;
 
 	for (lane = 0; lane < dp->link_train.lane_count; lane++)
 		writel(dp->link_train.training_lane[lane],
 		       dp->reg_base + ANALOGIX_DP_LN0_LINK_TRAINING_CTL + 4 * lane);
+
+	if (dp->phy) {
+		union phy_configure_opts phy_cfg = {0};
+
+		for (lane = 0; lane < dp->link_train.lane_count; lane++) {
+			u8 training_lane = dp->link_train.training_lane[lane];
+			u8 vs, pe;
+
+			vs = (training_lane & DP_TRAIN_VOLTAGE_SWING_MASK) >>
+			     DP_TRAIN_VOLTAGE_SWING_SHIFT;
+			pe = (training_lane & DP_TRAIN_PRE_EMPHASIS_MASK) >>
+			     DP_TRAIN_PRE_EMPHASIS_SHIFT;
+			phy_cfg.dp.voltage[lane] = vs;
+			phy_cfg.dp.pre[lane] = pe;
+		}
+
+		phy_cfg.dp.lanes = dp->link_train.lane_count;
+		phy_cfg.dp.link_rate =
+			drm_dp_bw_code_to_link_rate(dp->link_train.link_rate) / 100;
+		phy_cfg.dp.set_lanes = false;
+		phy_cfg.dp.set_rate = false;
+		phy_cfg.dp.set_voltages = true;
+		ret = phy_configure(dp->phy, &phy_cfg);
+		if (ret && ret != -EOPNOTSUPP) {
+			dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
+			return;
+		}
+	}
 }
 
 u32 analogix_dp_get_lane_link_training(struct analogix_dp_device *dp, u8 lane)
@@ -1053,3 +1115,31 @@ ssize_t analogix_dp_transfer(struct analogix_dp_device *dp,
 
 	return -EREMOTEIO;
 }
+
+void analogix_dp_phy_power_on(struct analogix_dp_device *dp)
+{
+	int ret;
+
+	ret = phy_set_mode(dp->phy, PHY_MODE_DP);
+	if (ret) {
+		dev_err(dp->dev, "%s: phy_set_mode() failed: %d\n", __func__, ret);
+		return;
+	}
+
+	ret = phy_power_on(dp->phy);
+	if (ret) {
+		dev_err(dp->dev, "%s: phy_power_on() failed: %d\n", __func__, ret);
+		return;
+	}
+}
+
+void analogix_dp_phy_power_off(struct analogix_dp_device *dp)
+{
+	int ret;
+
+	ret = phy_power_off(dp->phy);
+	if (ret) {
+		dev_err(dp->dev, "%s: phy_power_off() failed: %d\n", __func__, ret);
+		return;
+	}
+}
-- 
2.34.1


