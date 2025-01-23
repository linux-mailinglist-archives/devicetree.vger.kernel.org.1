Return-Path: <devicetree+bounces-140525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB5BA1A215
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 11:44:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2694F16DA0B
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 10:44:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3864820E02F;
	Thu, 23 Jan 2025 10:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="NhV2Rj6S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155106.qiye.163.com (mail-m155106.qiye.163.com [101.71.155.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB3620E024;
	Thu, 23 Jan 2025 10:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737629025; cv=none; b=ufBlrdo6SavWEo23r218BT/Mg8L9T8u7foIyCRh+Euw+6LlmjbxojqVPH22ZUVs05yfEQqbYm3zHPE+9GST7Qp85FeWDTdA0/J3C5AE7QWqK0X3Sd7WjzBAB71X/oCbD2rZJ1MssIQwSxnjc7kXUJWPNYUGL4+CTwoPNKZP4jLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737629025; c=relaxed/simple;
	bh=aM5Tpa+HW9FAMr/c+EYH0tWrsMgqPgvWHmDnIpPo4g0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LytmzOLQsFvMyICXoKtIqwNd4OOEl0j/CnOTmr87t04vtte/8oZET7h6ThZ/CZrSiPJoFK8uiRngZtgGMAQqTLQe4HS/k8d/htEXVPyaD7nlYU0UE8czOKx+h8H19RryI/pzsTzC5WpS5LO1EoNgtF55vutdbuyghlI6LZbyutI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=NhV2Rj6S; arc=none smtp.client-ip=101.71.155.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 9818ae5f;
	Thu, 23 Jan 2025 18:08:06 +0800 (GMT+08:00)
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
Subject: [PATCH v6 04/14] drm/bridge: analogix_dp: Add support for phy configuration.
Date: Thu, 23 Jan 2025 18:07:37 +0800
Message-Id: <20250123100747.1841357-5-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250123100747.1841357-1-damon.ding@rock-chips.com>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUMaHlZDHkJCH0waSkxMTh5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
X-HM-Tid: 0a9492a2223d03a3kunm9818ae5f
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PDI6Ejo5MTIVAiwcNCo5FDxD
	Vk4KFChVSlVKTEhMTUlNQ0NDTkNIVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFOSUhJNwY+
DKIM-Signature:a=rsa-sha256;
	b=NhV2Rj6SWhpflWIekhLVcdFCepm77X7ACa295ZM6I0JXXTtvQJ5Rl97lB+ZteizL7EEnWoStLMsvh/NItstCI9eAQ6qw4KdVO2nwUhIDSM895B07s1ohR15D7bsKkbrhIFkQ4RfZ85TtftDn1AOnHzAZ1hgG8U0h9LBBCcB6u2E=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=EZmWqkUhrvBKd4va88UKmvyrBTmGH5reiTDu//3lJn0=;
	h=date:mime-version:subject:message-id:from;

Add support to configurate link rate, lane count, voltage swing and
pre-emphasis with phy_configure(). It is helpful in application scenarios
where analogix controller is mixed with the phy of other vendors.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

---

Changes in v2:
- remove needless assignments for phy_configure()
- remove unnecessary changes for phy_power_on()/phy_power_off()

Changes in v4:
- remove unnecessary &phy_configure_opts_dp.lanes assignments in
  analogix_dp_set_link_bandwidth()
- remove needless &phy_configure_opts_dp.lanes and
  &phy_configure_opts_dp.link_rate assignments in
  analogix_dp_set_lane_link_training()

Changes in v5:
- include <drm/drm_print.h> for dev_err()
- use drm_err() instead of dev_err()

Changes in v6:
- Pass 'dp' in drm_...() rather than 'dp->drm_dev'
---
 .../drm/bridge/analogix/analogix_dp_core.c    |  1 +
 .../drm/bridge/analogix/analogix_dp_core.h    |  1 +
 .../gpu/drm/bridge/analogix/analogix_dp_reg.c | 52 +++++++++++++++++++
 3 files changed, 54 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index bfa88409a7ff..b05f5b9f5258 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1692,6 +1692,7 @@ int analogix_dp_resume(struct analogix_dp_device *dp)
 	if (dp->plat_data->power_on)
 		dp->plat_data->power_on(dp->plat_data);
 
+	phy_set_mode(dp->phy, PHY_MODE_DP);
 	phy_power_on(dp->phy);
 
 	analogix_dp_init_dp(dp);
diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
index 774d11574b09..4d36907aa371 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
@@ -11,6 +11,7 @@
 
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_crtc.h>
+#include <drm/drm_print.h>
 
 #define DP_TIMEOUT_LOOP_COUNT 100
 #define MAX_CR_LOOP 5
diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
index 3afc73c858c4..041733131b35 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
@@ -11,6 +11,7 @@
 #include <linux/gpio/consumer.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
+#include <linux/phy/phy.h>
 
 #include <drm/bridge/analogix_dp.h>
 
@@ -513,10 +514,24 @@ void analogix_dp_enable_sw_function(struct analogix_dp_device *dp)
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
+		phy_cfg.dp.link_rate =
+			drm_dp_bw_code_to_link_rate(dp->link_train.link_rate) / 100;
+		phy_cfg.dp.set_rate = true;
+		ret = phy_configure(dp->phy, &phy_cfg);
+		if (ret && ret != -EOPNOTSUPP) {
+			drm_err(dp, "%s: phy_configure() failed: %d\n", __func__, ret);
+			return;
+		}
+	}
 }
 
 void analogix_dp_get_link_bandwidth(struct analogix_dp_device *dp, u32 *bwtype)
@@ -530,9 +545,22 @@ void analogix_dp_get_link_bandwidth(struct analogix_dp_device *dp, u32 *bwtype)
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
+			drm_err(dp, "%s: phy_configure() failed: %d\n", __func__, ret);
+			return;
+		}
+	}
 }
 
 void analogix_dp_get_lane_count(struct analogix_dp_device *dp, u32 *count)
@@ -546,10 +574,34 @@ void analogix_dp_get_lane_count(struct analogix_dp_device *dp, u32 *count)
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
+		phy_cfg.dp.set_voltages = true;
+		ret = phy_configure(dp->phy, &phy_cfg);
+		if (ret && ret != -EOPNOTSUPP) {
+			drm_err(dp, "%s: phy_configure() failed: %d\n", __func__, ret);
+			return;
+		}
+	}
 }
 
 u32 analogix_dp_get_lane_link_training(struct analogix_dp_device *dp, u8 lane)
-- 
2.34.1


