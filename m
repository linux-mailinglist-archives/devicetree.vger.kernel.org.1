Return-Path: <devicetree+bounces-304935-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHgcOCovHWqtWAkAu9opvQ
	(envelope-from <devicetree+bounces-304935-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 09:05:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B84E61AA42
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 09:05:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 045F330EDAEF
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 06:57:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AF81383C9D;
	Mon,  1 Jun 2026 06:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="W1jocCCO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m1973181.qiye.163.com (mail-m1973181.qiye.163.com [220.197.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FA61383C97;
	Mon,  1 Jun 2026 06:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780297000; cv=none; b=cHv8lLZtYpW1ycgFbVXkFsxaJbL1XTzpY7VPEiZA4Xx45VExsteHmCGkErb07fbQx0k9eOO7RTKH5oJ4wsfu5FoDN0Oa6sNbiwGBZjv6Xgf3AfBbhlNpcm9JgNJXjZCVVv3rPOvo7ctsKQi0O3KqMkXz4Dir4n756plQaqekF3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780297000; c=relaxed/simple;
	bh=ixP9bbtfLm9n7b7rZTtXkiyTh2jKzvPSeDG46z1FnrA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NDjhaKBSrCrw92ANAZSjDobljJW73Gmqe2kYpUmTlpyAYMkjRrMRpl02+iqwoJzkGGQ9DGt4AKUuucNro6WOKxUlRAf2sK57tr4YTkhrxm6DKtwIqIzhmksJaWsN7nhOg+N4ER75+phXQM6vaNBFIRIpv4bQVatFVoTBvLSXw60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=W1jocCCO; arc=none smtp.client-ip=220.197.31.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 408ded0a3;
	Mon, 1 Jun 2026 14:51:16 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	nicolas.frattaroli@collabora.com,
	cristian.ciocaltea@collabora.com,
	sebastian.reichel@collabora.com,
	dmitry.baryshkov@oss.qualcomm.com,
	luca.ceresoli@bootlin.com,
	dianders@chromium.org,
	m.szyprowski@samsung.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v10 09/11] drm/bridge: analogix_dp: Rename and simplify is_rockchip()
Date: Mon,  1 Jun 2026 14:50:58 +0800
Message-Id: <20260601065100.1103873-10-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260601065100.1103873-1-damon.ding@rock-chips.com>
References: <20260601065100.1103873-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9e81f3738003a8kunm111da268257e71
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCThlKVktLGUkeTkxIHh5MSFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=W1jocCCOnlGYN7PqD5J/jIAztLvgHD663bjdcbd+TJPS6F3kvZ7glVAwZ60FG46aJ/iAZpQ+X/IuqHcxo/tWcT/+lXjSHFvGC3T5KIQkx7qT1b4HLojekkLA6MEcwShM0pWSFrHlN6H8dTSez4oL2rA6SKnGqGkS7Cp8pcz7HAA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=LOMeAIx+KSl1dkBA7xVs1jEHQ7IWNjTCWlPoHezWkhE=;
	h=date:mime-version:subject:message-id:from;
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-304935-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[30];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damon.ding@rock-chips.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,collabora.com,oss.qualcomm.com,bootlin.com,chromium.org,samsung.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,rock-chips.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,bootlin.com:email,rock-chips.com:email,rock-chips.com:mid,rock-chips.com:dkim]
X-Rspamd-Queue-Id: 3B84E61AA42
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Rename inline helper is_rockchip() to analogix_dp_is_rockchip()
to follow driver namespace convention consistently across code.

Replace chained equality comparisons with switch-case layout
to improve readability and simplify adding new SoC entries later.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
Suggested-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

---

Changes in v3:
- Add Reviewed-by tag.

Changes in v4:
- Modify the commit msg.
---
 .../gpu/drm/bridge/analogix/analogix_dp_core.c |  2 +-
 .../gpu/drm/bridge/analogix/analogix_dp_reg.c  | 18 +++++++++---------
 include/drm/bridge/analogix_dp.h               | 11 +++++++++--
 3 files changed, 19 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 8cf6b73bceac..116de3bd83a3 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -870,7 +870,7 @@ static int analogix_dp_bridge_atomic_check(struct drm_bridge *bridge,
 	struct drm_display_info *di = &conn_state->connector->display_info;
 	u32 mask = BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) | BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422);
 
-	if (is_rockchip(dp->plat_data->dev_type)) {
+	if (analogix_dp_is_rockchip(dp->plat_data->dev_type)) {
 		if ((di->color_formats & mask)) {
 			DRM_DEBUG_KMS("Swapping display color format from YUV to RGB\n");
 			di->color_formats &= ~mask;
diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
index 38fd8d5014d2..6207ded7ffd5 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
@@ -72,7 +72,7 @@ void analogix_dp_init_analog_param(struct analogix_dp_device *dp)
 	reg = SEL_24M | TX_DVDD_BIT_1_0625V;
 	writel(reg, dp->reg_base + ANALOGIX_DP_ANALOG_CTL_2);
 
-	if (dp->plat_data && is_rockchip(dp->plat_data->dev_type)) {
+	if (dp->plat_data && analogix_dp_is_rockchip(dp->plat_data->dev_type)) {
 		reg = REF_CLK_24M;
 		if (dp->plat_data->dev_type == RK3288_DP)
 			reg ^= REF_CLK_MASK;
@@ -123,7 +123,7 @@ void analogix_dp_reset(struct analogix_dp_device *dp)
 	analogix_dp_stop_video(dp);
 	analogix_dp_enable_video_mute(dp, 0);
 
-	if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
+	if (dp->plat_data && analogix_dp_is_rockchip(dp->plat_data->dev_type))
 		reg = RK_VID_CAP_FUNC_EN_N | RK_VID_FIFO_FUNC_EN_N |
 			SW_FUNC_EN_N;
 	else
@@ -233,7 +233,7 @@ void analogix_dp_set_pll_power_down(struct analogix_dp_device *dp, bool enable)
 	u32 mask = DP_PLL_PD;
 	u32 pd_addr = ANALOGIX_DP_PLL_CTL;
 
-	if (dp->plat_data && is_rockchip(dp->plat_data->dev_type)) {
+	if (dp->plat_data && analogix_dp_is_rockchip(dp->plat_data->dev_type)) {
 		pd_addr = ANALOGIX_DP_PD;
 		mask = RK_PLL_PD;
 	}
@@ -254,12 +254,12 @@ void analogix_dp_set_analog_power_down(struct analogix_dp_device *dp,
 	u32 phy_pd_addr = ANALOGIX_DP_PHY_PD;
 	u32 mask;
 
-	if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
+	if (dp->plat_data && analogix_dp_is_rockchip(dp->plat_data->dev_type))
 		phy_pd_addr = ANALOGIX_DP_PD;
 
 	switch (block) {
 	case AUX_BLOCK:
-		if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
+		if (dp->plat_data && analogix_dp_is_rockchip(dp->plat_data->dev_type))
 			mask = RK_AUX_PD;
 		else
 			mask = AUX_PD;
@@ -317,7 +317,7 @@ void analogix_dp_set_analog_power_down(struct analogix_dp_device *dp,
 		 * to power off everything instead of DP_PHY_PD in
 		 * Rockchip
 		 */
-		if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
+		if (dp->plat_data && analogix_dp_is_rockchip(dp->plat_data->dev_type))
 			mask = DP_INC_BG;
 		else
 			mask = DP_PHY_PD;
@@ -329,7 +329,7 @@ void analogix_dp_set_analog_power_down(struct analogix_dp_device *dp,
 			reg &= ~mask;
 
 		writel(reg, dp->reg_base + phy_pd_addr);
-		if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
+		if (dp->plat_data && analogix_dp_is_rockchip(dp->plat_data->dev_type))
 			usleep_range(10, 15);
 		break;
 	case POWER_ALL:
@@ -465,7 +465,7 @@ void analogix_dp_init_aux(struct analogix_dp_device *dp)
 	analogix_dp_reset_aux(dp);
 
 	/* AUX_BIT_PERIOD_EXPECTED_DELAY doesn't apply to Rockchip IP */
-	if (dp->plat_data && is_rockchip(dp->plat_data->dev_type))
+	if (dp->plat_data && analogix_dp_is_rockchip(dp->plat_data->dev_type))
 		reg = 0;
 	else
 		reg = AUX_BIT_PERIOD_EXPECTED_DELAY(3);
@@ -837,7 +837,7 @@ void analogix_dp_config_video_slave_mode(struct analogix_dp_device *dp)
 	u32 reg;
 
 	reg = readl(dp->reg_base + ANALOGIX_DP_FUNC_EN_1);
-	if (dp->plat_data && is_rockchip(dp->plat_data->dev_type)) {
+	if (dp->plat_data && analogix_dp_is_rockchip(dp->plat_data->dev_type)) {
 		reg &= ~(RK_VID_CAP_FUNC_EN_N | RK_VID_FIFO_FUNC_EN_N);
 	} else {
 		reg &= ~(MASTER_VID_FUNC_EN_N | SLAVE_VID_FUNC_EN_N);
diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index 854af692229b..7b670dd769e9 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -19,9 +19,16 @@ enum analogix_dp_devtype {
 	RK3588_EDP,
 };
 
-static inline bool is_rockchip(enum analogix_dp_devtype type)
+static inline bool analogix_dp_is_rockchip(enum analogix_dp_devtype type)
 {
-	return type == RK3288_DP || type == RK3399_EDP || type == RK3588_EDP;
+	switch (type) {
+	case RK3288_DP:
+	case RK3399_EDP:
+	case RK3588_EDP:
+		return true;
+	default:
+		return false;
+	}
 }
 
 struct analogix_dp_plat_data {
-- 
2.34.1


