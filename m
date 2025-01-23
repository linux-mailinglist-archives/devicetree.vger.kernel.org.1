Return-Path: <devicetree+bounces-140500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA40AA1A182
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 11:08:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0069B16B2D6
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 10:08:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A761720DD7D;
	Thu, 23 Jan 2025 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="LUqhcaxb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m19731104.qiye.163.com (mail-m19731104.qiye.163.com [220.197.31.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B36920C48A;
	Thu, 23 Jan 2025 10:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737626896; cv=none; b=PTuxsPuNDFeHrtq3zzY8lk5jrO2CliAwrCxLAXo5Df6fXDoW+o+eNiOIqTHPzie71F4ykTllyisqOZRgkhYSnZA3ldHQZxIMjvH2emWxfWlrlZDC6HUDXp+CKU4A3uGgz671pOJVmDn2k8CTStLwSk81bzUv4THSTNaTHXMV11w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737626896; c=relaxed/simple;
	bh=L/nrhoWsDQ+7usgejNqyFhmoZY2erAbOScVuSRn99vg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=INY87OgLpEGeKCai7CIC1cJFb7vxvunhZkj5Vj4mlOZtyORvAmHNk/xpgW/dGrD6R0ph9uzGVLKH/4TECrmIBCtB3iJyVEQh6hX+LrrH0tuWniYbUvbzWmOS/BKTD2vTw3eoSzCt2Fhst1aN1cjmLGajmO06MyiNRCeZYqfKQIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=LUqhcaxb; arc=none smtp.client-ip=220.197.31.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 9818ae52;
	Thu, 23 Jan 2025 18:08:02 +0800 (GMT+08:00)
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
Subject: [PATCH v6 02/14] drm/rockchip: analogix_dp: Use formalized struct definition for grf field
Date: Thu, 23 Jan 2025 18:07:35 +0800
Message-Id: <20250123100747.1841357-3-damon.ding@rock-chips.com>
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
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhkYGVZPHUMYQ01IH0saQhpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9492a2139d03a3kunm9818ae52
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mkk6Pio6LjIQDiwaNCowFDoS
	LjdPFCpVSlVKTEhMTUlNQ0NPTEtDVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFPTk9PNwY+
DKIM-Signature:a=rsa-sha256;
	b=LUqhcaxbUMKInpM+eePxcbG39CHXsADDtXbWV5Um6GWwWsyh6rBZg2FHQxx94qOznDpJZ9l18F6iinKr8k18z/YR13bbdCE6QKzHghX+uVi1cA+xwmE/282eXxazD8J0Cx650oE9o68kpF/BAIMaKnxzQ76ZE0u/2xifXJYPpDI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=Ze1MXnVg38016se3HUI1omMmPdGIWHiMBvKPC69oRFw=;
	h=date:mime-version:subject:message-id:from;

The formalized struct definition will makes grf field operations more
concise and easier to extend.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v2:
- Initialize struct rockchip_dp_chip_data rk3399_edp/rk3288_dp in order
  of its members

Changes in v6:
- Pass 'dp' in drm_...() rather than 'dp->drm_dev'
---
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 77 +++++++++++--------
 1 file changed, 45 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index dd33d7540e4b..648ea608cdf3 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -32,26 +32,29 @@
 
 #include "rockchip_drm_drv.h"
 
-#define RK3288_GRF_SOC_CON6		0x25c
-#define RK3288_EDP_LCDC_SEL		BIT(5)
-#define RK3399_GRF_SOC_CON20		0x6250
-#define RK3399_EDP_LCDC_SEL		BIT(5)
-
-#define HIWORD_UPDATE(val, mask)	(val | (mask) << 16)
-
 #define PSR_WAIT_LINE_FLAG_TIMEOUT_MS	100
 
+#define GRF_REG_FIELD(_reg, _lsb, _msb) {	\
+				.reg = _reg,	\
+				.lsb = _lsb,	\
+				.msb = _msb,	\
+				.valid = true,	\
+				}
+
+struct rockchip_grf_reg_field {
+	u32 reg;
+	u32 lsb;
+	u32 msb;
+	bool valid;
+};
+
 /**
  * struct rockchip_dp_chip_data - splite the grf setting of kind of chips
- * @lcdsel_grf_reg: grf register offset of lcdc select
- * @lcdsel_big: reg value of selecting vop big for eDP
- * @lcdsel_lit: reg value of selecting vop little for eDP
+ * @lcdc_sel: grf register field of lcdc_sel
  * @chip_type: specific chip type
  */
 struct rockchip_dp_chip_data {
-	u32	lcdsel_grf_reg;
-	u32	lcdsel_big;
-	u32	lcdsel_lit;
+	const struct rockchip_grf_reg_field lcdc_sel;
 	u32	chip_type;
 };
 
@@ -84,6 +87,26 @@ static struct rockchip_dp_device *pdata_encoder_to_dp(struct analogix_dp_plat_da
 	return container_of(plat_data, struct rockchip_dp_device, plat_data);
 }
 
+static int rockchip_grf_write(struct regmap *grf, u32 reg, u32 mask, u32 val)
+{
+	return regmap_write(grf, reg, (mask << 16) | (val & mask));
+}
+
+static int rockchip_grf_field_write(struct regmap *grf,
+				    const struct rockchip_grf_reg_field *field,
+				    u32 val)
+{
+	u32 mask;
+
+	if (!field->valid)
+		return 0;
+
+	mask = GENMASK(field->msb, field->lsb);
+	val <<= field->lsb;
+
+	return rockchip_grf_write(grf, field->reg, mask, val);
+}
+
 static int rockchip_dp_pre_init(struct rockchip_dp_device *dp)
 {
 	reset_control_assert(dp->rst);
@@ -182,7 +205,6 @@ static void rockchip_dp_drm_encoder_enable(struct drm_encoder *encoder,
 	struct drm_crtc *crtc;
 	struct drm_crtc_state *old_crtc_state;
 	int ret;
-	u32 val;
 
 	crtc = rockchip_dp_drm_get_new_crtc(encoder, state);
 	if (!crtc)
@@ -193,24 +215,19 @@ static void rockchip_dp_drm_encoder_enable(struct drm_encoder *encoder,
 	if (old_crtc_state && old_crtc_state->self_refresh_active)
 		return;
 
-	ret = drm_of_encoder_active_endpoint_id(dp->dev->of_node, encoder);
-	if (ret < 0)
-		return;
-
-	if (ret)
-		val = dp->data->lcdsel_lit;
-	else
-		val = dp->data->lcdsel_big;
-
-	drm_dbg_core(dp, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");
-
 	ret = clk_prepare_enable(dp->grfclk);
 	if (ret < 0) {
 		drm_err(dp, "failed to enable grfclk %d\n", ret);
 		return;
 	}
 
-	ret = regmap_write(dp->grf, dp->data->lcdsel_grf_reg, val);
+	ret = drm_of_encoder_active_endpoint_id(dp->dev->of_node, encoder);
+	if (ret < 0)
+		return;
+
+	drm_dbg_core(dp, "vop %s output to dp\n", (ret) ? "LIT" : "BIG");
+
+	ret = rockchip_grf_field_write(dp->grf, &dp->data->lcdc_sel, ret);
 	if (ret != 0)
 		drm_err(dp, "Could not write to GRF: %d\n", ret);
 
@@ -449,16 +466,12 @@ static DEFINE_RUNTIME_DEV_PM_OPS(rockchip_dp_pm_ops, rockchip_dp_suspend,
 		rockchip_dp_resume, NULL);
 
 static const struct rockchip_dp_chip_data rk3399_edp = {
-	.lcdsel_grf_reg = RK3399_GRF_SOC_CON20,
-	.lcdsel_big = HIWORD_UPDATE(0, RK3399_EDP_LCDC_SEL),
-	.lcdsel_lit = HIWORD_UPDATE(RK3399_EDP_LCDC_SEL, RK3399_EDP_LCDC_SEL),
+	.lcdc_sel = GRF_REG_FIELD(0x6250, 5, 5),
 	.chip_type = RK3399_EDP,
 };
 
 static const struct rockchip_dp_chip_data rk3288_dp = {
-	.lcdsel_grf_reg = RK3288_GRF_SOC_CON6,
-	.lcdsel_big = HIWORD_UPDATE(0, RK3288_EDP_LCDC_SEL),
-	.lcdsel_lit = HIWORD_UPDATE(RK3288_EDP_LCDC_SEL, RK3288_EDP_LCDC_SEL),
+	.lcdc_sel = GRF_REG_FIELD(0x025c, 5, 5),
 	.chip_type = RK3288_DP,
 };
 
-- 
2.34.1


