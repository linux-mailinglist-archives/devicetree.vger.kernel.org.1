Return-Path: <devicetree+bounces-132545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAA39F76F2
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 09:12:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96E62162E1F
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 08:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82760217674;
	Thu, 19 Dec 2024 08:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="kCrAdR65"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49207.qiye.163.com (mail-m49207.qiye.163.com [45.254.49.207])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E419B217672;
	Thu, 19 Dec 2024 08:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.207
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734595914; cv=none; b=EFnNaW9chDx5gC7g4+cdE2Lz1dJjS3w0ehOzYJlWT0CNKoGs/lbrfYRjJel1U5yp0asNyWTRjW8nnFlGjcYY8sTQTc8sRgGIyAJlQi+KmCob9sQzbx5lESF45XYfjBpF6K90aOsEAAKBaiimfd3p+c/IkuGeVJ35YFF+MdEGka4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734595914; c=relaxed/simple;
	bh=SAeeRt9nfXT4+x4Ry4uhieP25OfvOFVy/Z38zGydqWg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZSvTJ+87dxsl4WRZmScPpNwzvO5gTaUiK+ItsJFYs0GcxxFyu29LcLOAWN7FzCCmd7JouGlFQv7CSTDhDU3k3pHm8NbfzqM3Ol/xSarOTkRnEVJkGYa6bMmOi8K/2Dk4pJGAlnATrjzXf04sCJ2ROsxh8A+6ZgHIFrQflzVlPkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=kCrAdR65; arc=none smtp.client-ip=45.254.49.207
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 633dd65a;
	Thu, 19 Dec 2024 16:06:33 +0800 (GMT+08:00)
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
Subject: [PATCH v3 07/15] drm/bridge: analogix_dp: Add support for phy configuration.
Date: Thu, 19 Dec 2024 16:05:56 +0800
Message-Id: <20241219080604.1423600-8-damon.ding@rock-chips.com>
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
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxpNTFYaT0weHhhLQ0kYSUpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCS0
	NVSktLVUpCWQY+
X-HM-Tid: 0a93ddf4471403a3kunm633dd65a
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NQg6Szo*NTIQFBUYDzoZDDZP
	LEIKC1FVSlVKTEhPTkJOTkJOTkNNVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFPT0hPNwY+
DKIM-Signature:a=rsa-sha256;
	b=kCrAdR65Yk9K+gJ+81sj23knsaOZCf2fqtlsG9tWODO1cOuBDUx9QsBawCEXc2/PlkokuknmHM5rc8tMIAAWmUtzUtEQAvHeKDOSzc1FDDgEIITgkW7Io9sqgG6X9Fj6Qr5Gn5py2OamDOTLQN9PByLDmJ8pd6LcgeVpcrhJRkw=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=fLnJTP9Scjrv+H234l17f44byuYhFDRw9PdboVjk7gw=;
	h=date:mime-version:subject:message-id:from;

Add support to configurate link rate, lane count, voltage swing and
pre-emphasis with phy_configure(). It is helpful in application scenarios
where analogix controller is mixed with the phy of other vendors.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v2:
- remove needless assignments for phy_configure()
- remove unnecessary changes for phy_power_on()/phy_power_off()
---
 .../drm/bridge/analogix/analogix_dp_core.c    |  1 +
 .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 56 +++++++++++++++++++
 2 files changed, 57 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 6f10d88a34c5..9429c50cc1bc 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1696,6 +1696,7 @@ int analogix_dp_resume(struct analogix_dp_device *dp)
 	if (dp->plat_data->power_on)
 		dp->plat_data->power_on(dp->plat_data);
 
+	phy_set_mode(dp->phy, PHY_MODE_DP);
 	phy_power_on(dp->phy);
 
 	analogix_dp_init_dp(dp);
diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
index 3afc73c858c4..613ce504bea6 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
@@ -11,6 +11,7 @@
 #include <linux/gpio/consumer.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
+#include <linux/phy/phy.h>
 
 #include <drm/bridge/analogix_dp.h>
 
@@ -513,10 +514,25 @@ void analogix_dp_enable_sw_function(struct analogix_dp_device *dp)
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
+		phy_cfg.dp.set_rate = true;
+		ret = phy_configure(dp->phy, &phy_cfg);
+		if (ret && ret != -EOPNOTSUPP) {
+			dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
+			return;
+		}
+	}
 }
 
 void analogix_dp_get_link_bandwidth(struct analogix_dp_device *dp, u32 *bwtype)
@@ -530,9 +546,22 @@ void analogix_dp_get_link_bandwidth(struct analogix_dp_device *dp, u32 *bwtype)
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
+		ret = phy_configure(dp->phy, &phy_cfg);
+		if (ret && ret != -EOPNOTSUPP) {
+			dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
+			return;
+		}
+	}
 }
 
 void analogix_dp_get_lane_count(struct analogix_dp_device *dp, u32 *count)
@@ -546,10 +575,37 @@ void analogix_dp_get_lane_count(struct analogix_dp_device *dp, u32 *count)
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
+		phy_cfg.dp.set_voltages = true;
+		ret = phy_configure(dp->phy, &phy_cfg);
+		if (ret && ret != -EOPNOTSUPP) {
+			dev_err(dp->dev, "%s: phy_configure() failed: %d\n", __func__, ret);
+			return;
+		}
+	}
 }
 
 u32 analogix_dp_get_lane_link_training(struct analogix_dp_device *dp, u8 lane)
-- 
2.34.1


