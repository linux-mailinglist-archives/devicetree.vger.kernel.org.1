Return-Path: <devicetree+bounces-99989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BD396BB93
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 14:06:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E88C7B296F8
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 12:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FF5B1D54EF;
	Wed,  4 Sep 2024 12:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="mrqcO3xP"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.3])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA3FE1D67A6
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 12:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.3
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725451419; cv=none; b=XzsohXmSuNy5Xfuqiglu56os2IWG7O88UHwZ0QnvIO8JoiIGXVk95zF3FxNZN7L9BJDsO6b7tLj1CaA4yW3Yk9ZZtdLmRnEB0BIMuU3fR+fGgNMyBKwcAO7byKrbkDQFZms/GGNcEpZXgWXbEuf9V9nPGcxvVvlOI2fx6/7FXyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725451419; c=relaxed/simple;
	bh=1nqpOn6ZZ1ck03/WIYpAdN9nTmOs1sNFbKTvp4YTqUg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PlfufWQJ22aOwUnZcoquI3wn3G4aOsMmPXtQu6LD/7zcS/ZKnXDEbo9Ym1EHs9ykePZuI+KrQuUP71xJogxPnqtVERPtcGeLOqLb0kmD7b1bYQCPRGQ5uqofOSdLlcp55X6cWmkMiV+4YJMlcqVq9cMqAtbND6DJUQ84sQtMHrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=mrqcO3xP; arc=none smtp.client-ip=117.135.210.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=gyXpX
	xr28azt3SRcim7y8VxaL3v4Bz5ABarOYDhJNXg=; b=mrqcO3xPppGCEhTuaX6dG
	xmOgsFPgt4swoZj0VEe/gUSudi03eM9aLxh7VbToi73KAQWyifv2Qh84+F0tBdwF
	0A7S84U8ngd5qrNZ3ZjAMdN6b2U+G3lg0slLNucKvuu/MH2DjYNOcDjCD3ZtP9cS
	mlDXQ1SiM/sZox5kPcmJRU=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g3-0 (Coremail) with SMTP id _____wA3HxFgTNhmiRMZCA--.50872S6;
	Wed, 04 Sep 2024 20:02:48 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: detlev.casanova@collabora.com
Cc: sjoerd@collabora.com,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	hjc@rock-chips.com,
	cristian.ciocaltea@collabora.com,
	mripard@kernel.org,
	dri-devel@lists.freedesktop.org,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 04/11] drm/rockchip: vop2: Add platform specific callback
Date: Wed,  4 Sep 2024 20:02:31 +0800
Message-Id: <20240904120238.3856782-5-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240904120238.3856782-1-andyshrk@163.com>
References: <20240904120238.3856782-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wA3HxFgTNhmiRMZCA--.50872S6
X-Coremail-Antispam: 1Uf129KBjvAXoWDtFWfuFy3JFyfAw4ktr13urg_yoWfWw1xZo
	W7uF1Yqr4Iqw1rKa9rWr17Xay7W3y8Can7Cr17XFnxZ39xX3yjkF92q3ZrtF17Jr15Cay5
	Aws5t3WrZa1fXFs7n29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7v73VFW2AGmfu7bjvjm3
	AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUIvPfDUUUU
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMwxQXmXAnoegJgAAsL

From: Andy Yan <andy.yan@rock-chips.com>

The VOP interface mux, overlay, background delay cycle configuration
of different SOC are much different. Add platform specific callback
ops to let the core driver look cleaner and more refined.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v2:
- Add platform specific callback

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 1083 +-----------------
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  159 +++
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c |  940 +++++++++++++++
 3 files changed, 1119 insertions(+), 1063 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 2fef6b76abd0..6a7982ad3550 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -33,7 +33,6 @@
 #include <drm/drm_vblank.h>
 
 #include <uapi/linux/videodev2.h>
-#include <dt-bindings/soc/rockchip,vop2.h>
 
 #include "rockchip_drm_gem.h"
 #include "rockchip_drm_vop2.h"
@@ -102,143 +101,6 @@ enum vop2_afbc_format {
 	VOP2_AFBC_FMT_INVALID = -1,
 };
 
-union vop2_alpha_ctrl {
-	u32 val;
-	struct {
-		/* [0:1] */
-		u32 color_mode:1;
-		u32 alpha_mode:1;
-		/* [2:3] */
-		u32 blend_mode:2;
-		u32 alpha_cal_mode:1;
-		/* [5:7] */
-		u32 factor_mode:3;
-		/* [8:9] */
-		u32 alpha_en:1;
-		u32 src_dst_swap:1;
-		u32 reserved:6;
-		/* [16:23] */
-		u32 glb_alpha:8;
-	} bits;
-};
-
-struct vop2_alpha {
-	union vop2_alpha_ctrl src_color_ctrl;
-	union vop2_alpha_ctrl dst_color_ctrl;
-	union vop2_alpha_ctrl src_alpha_ctrl;
-	union vop2_alpha_ctrl dst_alpha_ctrl;
-};
-
-struct vop2_alpha_config {
-	bool src_premulti_en;
-	bool dst_premulti_en;
-	bool src_pixel_alpha_en;
-	bool dst_pixel_alpha_en;
-	u16 src_glb_alpha_value;
-	u16 dst_glb_alpha_value;
-};
-
-struct vop2_win {
-	struct vop2 *vop2;
-	struct drm_plane base;
-	const struct vop2_win_data *data;
-	struct regmap_field *reg[VOP2_WIN_MAX_REG];
-
-	/**
-	 * @win_id: graphic window id, a cluster may be split into two
-	 * graphics windows.
-	 */
-	u8 win_id;
-	u8 delay;
-	u32 offset;
-
-	enum drm_plane_type type;
-};
-
-struct vop2_video_port {
-	struct drm_crtc crtc;
-	struct vop2 *vop2;
-	struct clk *dclk;
-	unsigned int id;
-	const struct vop2_video_port_data *data;
-
-	struct completion dsp_hold_completion;
-
-	/**
-	 * @win_mask: Bitmask of windows attached to the video port;
-	 */
-	u32 win_mask;
-
-	struct vop2_win *primary_plane;
-	struct drm_pending_vblank_event *event;
-
-	unsigned int nlayers;
-};
-
-struct vop2 {
-	struct device *dev;
-	struct drm_device *drm;
-	struct vop2_video_port vps[ROCKCHIP_MAX_CRTC];
-
-	const struct vop2_data *data;
-	/*
-	 * Number of windows that are registered as plane, may be less than the
-	 * total number of hardware windows.
-	 */
-	u32 registered_num_wins;
-
-	struct resource *res;
-	void __iomem *regs;
-	struct regmap *map;
-
-	struct regmap *sys_grf;
-	struct regmap *vop_grf;
-	struct regmap *vo1_grf;
-	struct regmap *sys_pmu;
-
-	/* physical map length of vop2 register */
-	u32 len;
-
-	void __iomem *lut_regs;
-
-	/* protects crtc enable/disable */
-	struct mutex vop2_lock;
-
-	int irq;
-
-	/*
-	 * Some global resources are shared between all video ports(crtcs), so
-	 * we need a ref counter here.
-	 */
-	unsigned int enable_count;
-	struct clk *hclk;
-	struct clk *aclk;
-	struct clk *pclk;
-
-	/* optional internal rgb encoder */
-	struct rockchip_rgb *rgb;
-
-	/* must be put at the end of the struct */
-	struct vop2_win win[];
-};
-
-#define vop2_output_if_is_hdmi(x)	((x) == ROCKCHIP_VOP2_EP_HDMI0 || \
-					 (x) == ROCKCHIP_VOP2_EP_HDMI1)
-
-#define vop2_output_if_is_dp(x)		((x) == ROCKCHIP_VOP2_EP_DP0 || \
-					 (x) == ROCKCHIP_VOP2_EP_DP1)
-
-#define vop2_output_if_is_edp(x)	((x) == ROCKCHIP_VOP2_EP_EDP0 || \
-					 (x) == ROCKCHIP_VOP2_EP_EDP1)
-
-#define vop2_output_if_is_mipi(x)	((x) == ROCKCHIP_VOP2_EP_MIPI0 || \
-					 (x) == ROCKCHIP_VOP2_EP_MIPI1)
-
-#define vop2_output_if_is_lvds(x)	((x) == ROCKCHIP_VOP2_EP_LVDS0 || \
-					 (x) == ROCKCHIP_VOP2_EP_LVDS1)
-
-#define vop2_output_if_is_dpi(x)	((x) == ROCKCHIP_VOP2_EP_RGB0)
-
 
 /*
  * bus-format types.
@@ -272,15 +134,6 @@ static DRM_ENUM_NAME_FN(drm_get_bus_format_name, drm_bus_format_enum_list)
 
 static const struct regmap_config vop2_regmap_config;
 
-static struct vop2_video_port *to_vop2_video_port(struct drm_crtc *crtc)
-{
-	return container_of(crtc, struct vop2_video_port, crtc);
-}
-
-static struct vop2_win *to_vop2_win(struct drm_plane *p)
-{
-	return container_of(p, struct vop2_win, base);
-}
 
 static void vop2_lock(struct vop2 *vop2)
 {
@@ -292,35 +145,6 @@ static void vop2_unlock(struct vop2 *vop2)
 	mutex_unlock(&vop2->vop2_lock);
 }
 
-static void vop2_writel(struct vop2 *vop2, u32 offset, u32 v)
-{
-	regmap_write(vop2->map, offset, v);
-}
-
-static void vop2_vp_write(struct vop2_video_port *vp, u32 offset, u32 v)
-{
-	regmap_write(vp->vop2->map, vp->data->offset + offset, v);
-}
-
-static u32 vop2_readl(struct vop2 *vop2, u32 offset)
-{
-	u32 val;
-
-	regmap_read(vop2->map, offset, &val);
-
-	return val;
-}
-
-static void vop2_win_write(const struct vop2_win *win, unsigned int reg, u32 v)
-{
-	regmap_field_write(win->reg[reg], v);
-}
-
-static bool vop2_cluster_window(const struct vop2_win *win)
-{
-	return win->data->feature & WIN_FEATURE_CLUSTER;
-}
-
 /*
  * Note:
  * The write mask function is documented but missing on rk3566/8, writes
@@ -1556,6 +1380,7 @@ static void vop2_dither_setup(struct drm_crtc *crtc, u32 *dsp_ctrl)
 static void vop2_post_config(struct drm_crtc *crtc)
 {
 	struct vop2_video_port *vp = to_vop2_video_port(crtc);
+	struct vop2 *vop2 = vp->vop2;
 	struct drm_display_mode *mode = &crtc->state->adjusted_mode;
 	u16 vtotal = mode->crtc_vtotal;
 	u16 hdisplay = mode->crtc_hdisplay;
@@ -1566,18 +1391,10 @@ static void vop2_post_config(struct drm_crtc *crtc)
 	u32 top_margin = 100, bottom_margin = 100;
 	u16 hsize = hdisplay * (left_margin + right_margin) / 200;
 	u16 vsize = vdisplay * (top_margin + bottom_margin) / 200;
-	u16 hsync_len = mode->crtc_hsync_end - mode->crtc_hsync_start;
 	u16 hact_end, vact_end;
 	u32 val;
-	u32 bg_dly;
-	u32 pre_scan_dly;
-
-	bg_dly = vp->data->pre_scan_max_dly[3];
-	vop2_writel(vp->vop2, RK3568_VP_BG_MIX_CTRL(vp->id),
-		    FIELD_PREP(RK3568_VP_BG_MIX_CTRL__BG_DLY, bg_dly));
 
-	pre_scan_dly = ((bg_dly + (hdisplay >> 1) - 1) << 16) | hsync_len;
-	vop2_vp_write(vp, RK3568_VP_PRE_SCAN_HTIMING, pre_scan_dly);
+	vop2->ops->setup_bg_dly(vp);
 
 	vsize = rounddown(vsize, 2);
 	hsize = rounddown(hsize, 2);
@@ -1613,347 +1430,6 @@ static void vop2_post_config(struct drm_crtc *crtc)
 	vop2_vp_write(vp, RK3568_VP_DSP_BG, 0);
 }
 
-static unsigned long rk3568_set_intf_mux(struct vop2_video_port *vp, int id, u32 polflags)
-{
-	struct vop2 *vop2 = vp->vop2;
-	struct drm_crtc *crtc = &vp->crtc;
-	u32 die, dip;
-
-	die = vop2_readl(vop2, RK3568_DSP_IF_EN);
-	dip = vop2_readl(vop2, RK3568_DSP_IF_POL);
-
-	switch (id) {
-	case ROCKCHIP_VOP2_EP_RGB0:
-		die &= ~RK3568_SYS_DSP_INFACE_EN_RGB_MUX;
-		die |= RK3568_SYS_DSP_INFACE_EN_RGB |
-			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_RGB_MUX, vp->id);
-		dip &= ~RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL;
-		dip |= FIELD_PREP(RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL, polflags);
-		if (polflags & POLFLAG_DCLK_INV)
-			regmap_write(vop2->sys_grf, RK3568_GRF_VO_CON1, BIT(3 + 16) | BIT(3));
-		else
-			regmap_write(vop2->sys_grf, RK3568_GRF_VO_CON1, BIT(3 + 16));
-		break;
-	case ROCKCHIP_VOP2_EP_HDMI0:
-		die &= ~RK3568_SYS_DSP_INFACE_EN_HDMI_MUX;
-		die |= RK3568_SYS_DSP_INFACE_EN_HDMI |
-			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_HDMI_MUX, vp->id);
-		dip &= ~RK3568_DSP_IF_POL__HDMI_PIN_POL;
-		dip |= FIELD_PREP(RK3568_DSP_IF_POL__HDMI_PIN_POL, polflags);
-		break;
-	case ROCKCHIP_VOP2_EP_EDP0:
-		die &= ~RK3568_SYS_DSP_INFACE_EN_EDP_MUX;
-		die |= RK3568_SYS_DSP_INFACE_EN_EDP |
-			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_EDP_MUX, vp->id);
-		dip &= ~RK3568_DSP_IF_POL__EDP_PIN_POL;
-		dip |= FIELD_PREP(RK3568_DSP_IF_POL__EDP_PIN_POL, polflags);
-		break;
-	case ROCKCHIP_VOP2_EP_MIPI0:
-		die &= ~RK3568_SYS_DSP_INFACE_EN_MIPI0_MUX;
-		die |= RK3568_SYS_DSP_INFACE_EN_MIPI0 |
-			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_MIPI0_MUX, vp->id);
-		dip &= ~RK3568_DSP_IF_POL__MIPI_PIN_POL;
-		dip |= FIELD_PREP(RK3568_DSP_IF_POL__MIPI_PIN_POL, polflags);
-		break;
-	case ROCKCHIP_VOP2_EP_MIPI1:
-		die &= ~RK3568_SYS_DSP_INFACE_EN_MIPI1_MUX;
-		die |= RK3568_SYS_DSP_INFACE_EN_MIPI1 |
-			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_MIPI1_MUX, vp->id);
-		dip &= ~RK3568_DSP_IF_POL__MIPI_PIN_POL;
-		dip |= FIELD_PREP(RK3568_DSP_IF_POL__MIPI_PIN_POL, polflags);
-		break;
-	case ROCKCHIP_VOP2_EP_LVDS0:
-		die &= ~RK3568_SYS_DSP_INFACE_EN_LVDS0_MUX;
-		die |= RK3568_SYS_DSP_INFACE_EN_LVDS0 |
-			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_LVDS0_MUX, vp->id);
-		dip &= ~RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL;
-		dip |= FIELD_PREP(RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL, polflags);
-		break;
-	case ROCKCHIP_VOP2_EP_LVDS1:
-		die &= ~RK3568_SYS_DSP_INFACE_EN_LVDS1_MUX;
-		die |= RK3568_SYS_DSP_INFACE_EN_LVDS1 |
-			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_LVDS1_MUX, vp->id);
-		dip &= ~RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL;
-		dip |= FIELD_PREP(RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL, polflags);
-		break;
-	default:
-		drm_err(vop2->drm, "Invalid interface id %d on vp%d\n", id, vp->id);
-		return 0;
-	}
-
-	dip |= RK3568_DSP_IF_POL__CFG_DONE_IMD;
-
-	vop2_writel(vop2, RK3568_DSP_IF_EN, die);
-	vop2_writel(vop2, RK3568_DSP_IF_POL, dip);
-
-	return crtc->state->adjusted_mode.crtc_clock  * 1000LL;
-}
-
-/*
- * calc the dclk on rk3588
- * the available div of dclk is 1, 2, 4
- */
-static unsigned long rk3588_calc_dclk(unsigned long child_clk, unsigned long max_dclk)
-{
-	if (child_clk * 4 <= max_dclk)
-		return child_clk * 4;
-	else if (child_clk * 2 <= max_dclk)
-		return child_clk * 2;
-	else if (child_clk <= max_dclk)
-		return child_clk;
-	else
-		return 0;
-}
-
-/*
- * 4 pixclk/cycle on rk3588
- * RGB/eDP/HDMI: if_pixclk >= dclk_core
- * DP: dp_pixclk = dclk_out <= dclk_core
- * DSI: mipi_pixclk <= dclk_out <= dclk_core
- */
-static unsigned long rk3588_calc_cru_cfg(struct vop2_video_port *vp, int id,
-					 int *dclk_core_div, int *dclk_out_div,
-					 int *if_pixclk_div, int *if_dclk_div)
-{
-	struct vop2 *vop2 = vp->vop2;
-	struct drm_crtc *crtc = &vp->crtc;
-	struct drm_display_mode *adjusted_mode = &crtc->state->adjusted_mode;
-	struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(crtc->state);
-	int output_mode = vcstate->output_mode;
-	unsigned long v_pixclk = adjusted_mode->crtc_clock * 1000LL; /* video timing pixclk */
-	unsigned long dclk_core_rate = v_pixclk >> 2;
-	unsigned long dclk_rate = v_pixclk;
-	unsigned long dclk_out_rate;
-	unsigned long if_pixclk_rate;
-	int K = 1;
-
-	if (vop2_output_if_is_hdmi(id)) {
-		/*
-		 * K = 2: dclk_core = if_pixclk_rate > if_dclk_rate
-		 * K = 1: dclk_core = hdmie_edp_dclk > if_pixclk_rate
-		 */
-		if (output_mode == ROCKCHIP_OUT_MODE_YUV420) {
-			dclk_rate = dclk_rate >> 1;
-			K = 2;
-		}
-
-		if_pixclk_rate = (dclk_core_rate << 1) / K;
-		/*
-		 * if_dclk_rate = dclk_core_rate / K;
-		 * *if_pixclk_div = dclk_rate / if_pixclk_rate;
-		 * *if_dclk_div = dclk_rate / if_dclk_rate;
-		 */
-		*if_pixclk_div = 2;
-		*if_dclk_div = 4;
-	} else if (vop2_output_if_is_edp(id)) {
-		/*
-		 * edp_pixclk = edp_dclk > dclk_core
-		 */
-		if_pixclk_rate = v_pixclk / K;
-		dclk_rate = if_pixclk_rate * K;
-		/*
-		 * *if_pixclk_div = dclk_rate / if_pixclk_rate;
-		 * *if_dclk_div = *if_pixclk_div;
-		 */
-		*if_pixclk_div = K;
-		*if_dclk_div = K;
-	} else if (vop2_output_if_is_dp(id)) {
-		if (output_mode == ROCKCHIP_OUT_MODE_YUV420)
-			dclk_out_rate = v_pixclk >> 3;
-		else
-			dclk_out_rate = v_pixclk >> 2;
-
-		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000);
-		if (!dclk_rate) {
-			drm_err(vop2->drm, "DP dclk_out_rate out of range, dclk_out_rate: %ld KHZ\n",
-				dclk_out_rate);
-			return 0;
-		}
-		*dclk_out_div = dclk_rate / dclk_out_rate;
-	} else if (vop2_output_if_is_mipi(id)) {
-		if_pixclk_rate = dclk_core_rate / K;
-		/*
-		 * dclk_core = dclk_out * K = if_pixclk * K = v_pixclk / 4
-		 */
-		dclk_out_rate = if_pixclk_rate;
-		/*
-		 * dclk_rate = N * dclk_core_rate N = (1,2,4 ),
-		 * we get a little factor here
-		 */
-		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000);
-		if (!dclk_rate) {
-			drm_err(vop2->drm, "MIPI dclk out of range, dclk_out_rate: %ld KHZ\n",
-				dclk_out_rate);
-			return 0;
-		}
-		*dclk_out_div = dclk_rate / dclk_out_rate;
-		/*
-		 * mipi pixclk == dclk_out
-		 */
-		*if_pixclk_div = 1;
-	} else if (vop2_output_if_is_dpi(id)) {
-		dclk_rate = v_pixclk;
-	}
-
-	*dclk_core_div = dclk_rate / dclk_core_rate;
-	*if_pixclk_div = ilog2(*if_pixclk_div);
-	*if_dclk_div = ilog2(*if_dclk_div);
-	*dclk_core_div = ilog2(*dclk_core_div);
-	*dclk_out_div = ilog2(*dclk_out_div);
-
-	drm_dbg(vop2->drm, "dclk: %ld, pixclk_div: %d, dclk_div: %d\n",
-		dclk_rate, *if_pixclk_div, *if_dclk_div);
-
-	return dclk_rate;
-}
-
-/*
- * MIPI port mux on rk3588:
- * 0: Video Port2
- * 1: Video Port3
- * 3: Video Port 1(MIPI1 only)
- */
-static u32 rk3588_get_mipi_port_mux(int vp_id)
-{
-	if (vp_id == 1)
-		return 3;
-	else if (vp_id == 3)
-		return 1;
-	else
-		return 0;
-}
-
-static u32 rk3588_get_hdmi_pol(u32 flags)
-{
-	u32 val;
-
-	val = (flags & DRM_MODE_FLAG_NHSYNC) ? BIT(HSYNC_POSITIVE) : 0;
-	val |= (flags & DRM_MODE_FLAG_NVSYNC) ? BIT(VSYNC_POSITIVE) : 0;
-
-	return val;
-}
-
-static unsigned long rk3588_set_intf_mux(struct vop2_video_port *vp, int id, u32 polflags)
-{
-	struct vop2 *vop2 = vp->vop2;
-	int dclk_core_div, dclk_out_div, if_pixclk_div, if_dclk_div;
-	unsigned long clock;
-	u32 die, dip, div, vp_clk_div, val;
-
-	clock = rk3588_calc_cru_cfg(vp, id, &dclk_core_div, &dclk_out_div,
-				    &if_pixclk_div, &if_dclk_div);
-	if (!clock)
-		return 0;
-
-	vp_clk_div = FIELD_PREP(RK3588_VP_CLK_CTRL__DCLK_CORE_DIV, dclk_core_div);
-	vp_clk_div |= FIELD_PREP(RK3588_VP_CLK_CTRL__DCLK_OUT_DIV, dclk_out_div);
-
-	die = vop2_readl(vop2, RK3568_DSP_IF_EN);
-	dip = vop2_readl(vop2, RK3568_DSP_IF_POL);
-	div = vop2_readl(vop2, RK3568_DSP_IF_CTRL);
-
-	switch (id) {
-	case ROCKCHIP_VOP2_EP_HDMI0:
-		div &= ~RK3588_DSP_IF_EDP_HDMI0_DCLK_DIV;
-		div &= ~RK3588_DSP_IF_EDP_HDMI0_PCLK_DIV;
-		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_DCLK_DIV, if_dclk_div);
-		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_PCLK_DIV, if_pixclk_div);
-		die &= ~RK3588_SYS_DSP_INFACE_EN_EDP_HDMI0_MUX;
-		die |= RK3588_SYS_DSP_INFACE_EN_HDMI0 |
-			    FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_EDP_HDMI0_MUX, vp->id);
-		val = rk3588_get_hdmi_pol(polflags);
-		regmap_write(vop2->vop_grf, RK3588_GRF_VOP_CON2, HIWORD_UPDATE(1, 1, 1));
-		regmap_write(vop2->vo1_grf, RK3588_GRF_VO1_CON0, HIWORD_UPDATE(val, 6, 5));
-		break;
-	case ROCKCHIP_VOP2_EP_HDMI1:
-		div &= ~RK3588_DSP_IF_EDP_HDMI1_DCLK_DIV;
-		div &= ~RK3588_DSP_IF_EDP_HDMI1_PCLK_DIV;
-		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI1_DCLK_DIV, if_dclk_div);
-		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI1_PCLK_DIV, if_pixclk_div);
-		die &= ~RK3588_SYS_DSP_INFACE_EN_EDP_HDMI1_MUX;
-		die |= RK3588_SYS_DSP_INFACE_EN_HDMI1 |
-			    FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_EDP_HDMI1_MUX, vp->id);
-		val = rk3588_get_hdmi_pol(polflags);
-		regmap_write(vop2->vop_grf, RK3588_GRF_VOP_CON2, HIWORD_UPDATE(1, 4, 4));
-		regmap_write(vop2->vo1_grf, RK3588_GRF_VO1_CON0, HIWORD_UPDATE(val, 8, 7));
-		break;
-	case ROCKCHIP_VOP2_EP_EDP0:
-		div &= ~RK3588_DSP_IF_EDP_HDMI0_DCLK_DIV;
-		div &= ~RK3588_DSP_IF_EDP_HDMI0_PCLK_DIV;
-		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_DCLK_DIV, if_dclk_div);
-		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_PCLK_DIV, if_pixclk_div);
-		die &= ~RK3588_SYS_DSP_INFACE_EN_EDP_HDMI0_MUX;
-		die |= RK3588_SYS_DSP_INFACE_EN_EDP0 |
-			   FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_EDP_HDMI0_MUX, vp->id);
-		regmap_write(vop2->vop_grf, RK3588_GRF_VOP_CON2, HIWORD_UPDATE(1, 0, 0));
-		break;
-	case ROCKCHIP_VOP2_EP_EDP1:
-		div &= ~RK3588_DSP_IF_EDP_HDMI1_DCLK_DIV;
-		div &= ~RK3588_DSP_IF_EDP_HDMI1_PCLK_DIV;
-		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_DCLK_DIV, if_dclk_div);
-		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_PCLK_DIV, if_pixclk_div);
-		die &= ~RK3588_SYS_DSP_INFACE_EN_EDP_HDMI1_MUX;
-		die |= RK3588_SYS_DSP_INFACE_EN_EDP1 |
-			   FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_EDP_HDMI1_MUX, vp->id);
-		regmap_write(vop2->vop_grf, RK3588_GRF_VOP_CON2, HIWORD_UPDATE(1, 3, 3));
-		break;
-	case ROCKCHIP_VOP2_EP_MIPI0:
-		div &= ~RK3588_DSP_IF_MIPI0_PCLK_DIV;
-		div |= FIELD_PREP(RK3588_DSP_IF_MIPI0_PCLK_DIV, if_pixclk_div);
-		die &= ~RK3588_SYS_DSP_INFACE_EN_MIPI0_MUX;
-		val = rk3588_get_mipi_port_mux(vp->id);
-		die |= RK3588_SYS_DSP_INFACE_EN_MIPI0 |
-			   FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_MIPI0_MUX, !!val);
-		break;
-	case ROCKCHIP_VOP2_EP_MIPI1:
-		div &= ~RK3588_DSP_IF_MIPI1_PCLK_DIV;
-		div |= FIELD_PREP(RK3588_DSP_IF_MIPI1_PCLK_DIV, if_pixclk_div);
-		die &= ~RK3588_SYS_DSP_INFACE_EN_MIPI1_MUX;
-		val = rk3588_get_mipi_port_mux(vp->id);
-		die |= RK3588_SYS_DSP_INFACE_EN_MIPI1 |
-			   FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_MIPI1_MUX, val);
-		break;
-	case ROCKCHIP_VOP2_EP_DP0:
-		die &= ~RK3588_SYS_DSP_INFACE_EN_DP0_MUX;
-		die |= RK3588_SYS_DSP_INFACE_EN_DP0 |
-			   FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_DP0_MUX, vp->id);
-		dip &= ~RK3588_DSP_IF_POL__DP0_PIN_POL;
-		dip |= FIELD_PREP(RK3588_DSP_IF_POL__DP0_PIN_POL, polflags);
-		break;
-	case ROCKCHIP_VOP2_EP_DP1:
-		die &= ~RK3588_SYS_DSP_INFACE_EN_MIPI1_MUX;
-		die |= RK3588_SYS_DSP_INFACE_EN_MIPI1 |
-			   FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_MIPI1_MUX, vp->id);
-		dip &= ~RK3588_DSP_IF_POL__DP1_PIN_POL;
-		dip |= FIELD_PREP(RK3588_DSP_IF_POL__DP1_PIN_POL, polflags);
-		break;
-	default:
-		drm_err(vop2->drm, "Invalid interface id %d on vp%d\n", id, vp->id);
-		return 0;
-	}
-
-	dip |= RK3568_DSP_IF_POL__CFG_DONE_IMD;
-
-	vop2_vp_write(vp, RK3588_VP_CLK_CTRL, vp_clk_div);
-	vop2_writel(vop2, RK3568_DSP_IF_EN, die);
-	vop2_writel(vop2, RK3568_DSP_IF_CTRL, div);
-	vop2_writel(vop2, RK3568_DSP_IF_POL, dip);
-
-	return clock;
-}
-
-static unsigned long vop2_set_intf_mux(struct vop2_video_port *vp, int ep_id, u32 polflags)
-{
-	struct vop2 *vop2 = vp->vop2;
-
-	if (vop2->data->soc_id == 3566 || vop2->data->soc_id == 3568)
-		return rk3568_set_intf_mux(vp, ep_id, polflags);
-	else if (vop2->data->soc_id == 3588)
-		return rk3588_set_intf_mux(vp, ep_id, polflags);
-	else
-		return 0;
-}
-
 static int us_to_vertical_line(struct drm_display_mode *mode, int us)
 {
 	return us * mode->clock / mode->htotal / 1000;
@@ -2026,7 +1502,7 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 		 * process multi(1/2/4/8) pixels per cycle, so the dclk feed by the
 		 * system cru may be the 1/2 or 1/4 of mode->clock.
 		 */
-		clock = vop2_set_intf_mux(vp, rkencoder->crtc_endpoint_id, polflags);
+		clock = vop2->ops->setup_intf_mux(vp, rkencoder->crtc_endpoint_id, polflags);
 	}
 
 	if (!clock) {
@@ -2121,409 +1597,13 @@ static int vop2_crtc_atomic_check(struct drm_crtc *crtc,
 	return 0;
 }
 
-static bool is_opaque(u16 alpha)
-{
-	return (alpha >> 8) == 0xff;
-}
-
-static void vop2_parse_alpha(struct vop2_alpha_config *alpha_config,
-			     struct vop2_alpha *alpha)
-{
-	int src_glb_alpha_en = is_opaque(alpha_config->src_glb_alpha_value) ? 0 : 1;
-	int dst_glb_alpha_en = is_opaque(alpha_config->dst_glb_alpha_value) ? 0 : 1;
-	int src_color_mode = alpha_config->src_premulti_en ?
-				ALPHA_SRC_PRE_MUL : ALPHA_SRC_NO_PRE_MUL;
-	int dst_color_mode = alpha_config->dst_premulti_en ?
-				ALPHA_SRC_PRE_MUL : ALPHA_SRC_NO_PRE_MUL;
-
-	alpha->src_color_ctrl.val = 0;
-	alpha->dst_color_ctrl.val = 0;
-	alpha->src_alpha_ctrl.val = 0;
-	alpha->dst_alpha_ctrl.val = 0;
-
-	if (!alpha_config->src_pixel_alpha_en)
-		alpha->src_color_ctrl.bits.blend_mode = ALPHA_GLOBAL;
-	else if (alpha_config->src_pixel_alpha_en && !src_glb_alpha_en)
-		alpha->src_color_ctrl.bits.blend_mode = ALPHA_PER_PIX;
-	else
-		alpha->src_color_ctrl.bits.blend_mode = ALPHA_PER_PIX_GLOBAL;
-
-	alpha->src_color_ctrl.bits.alpha_en = 1;
-
-	if (alpha->src_color_ctrl.bits.blend_mode == ALPHA_GLOBAL) {
-		alpha->src_color_ctrl.bits.color_mode = src_color_mode;
-		alpha->src_color_ctrl.bits.factor_mode = SRC_FAC_ALPHA_SRC_GLOBAL;
-	} else if (alpha->src_color_ctrl.bits.blend_mode == ALPHA_PER_PIX) {
-		alpha->src_color_ctrl.bits.color_mode = src_color_mode;
-		alpha->src_color_ctrl.bits.factor_mode = SRC_FAC_ALPHA_ONE;
-	} else {
-		alpha->src_color_ctrl.bits.color_mode = ALPHA_SRC_PRE_MUL;
-		alpha->src_color_ctrl.bits.factor_mode = SRC_FAC_ALPHA_SRC_GLOBAL;
-	}
-	alpha->src_color_ctrl.bits.glb_alpha = alpha_config->src_glb_alpha_value >> 8;
-	alpha->src_color_ctrl.bits.alpha_mode = ALPHA_STRAIGHT;
-	alpha->src_color_ctrl.bits.alpha_cal_mode = ALPHA_SATURATION;
-
-	alpha->dst_color_ctrl.bits.alpha_mode = ALPHA_STRAIGHT;
-	alpha->dst_color_ctrl.bits.alpha_cal_mode = ALPHA_SATURATION;
-	alpha->dst_color_ctrl.bits.blend_mode = ALPHA_GLOBAL;
-	alpha->dst_color_ctrl.bits.glb_alpha = alpha_config->dst_glb_alpha_value >> 8;
-	alpha->dst_color_ctrl.bits.color_mode = dst_color_mode;
-	alpha->dst_color_ctrl.bits.factor_mode = ALPHA_SRC_INVERSE;
-
-	alpha->src_alpha_ctrl.bits.alpha_mode = ALPHA_STRAIGHT;
-	alpha->src_alpha_ctrl.bits.blend_mode = alpha->src_color_ctrl.bits.blend_mode;
-	alpha->src_alpha_ctrl.bits.alpha_cal_mode = ALPHA_SATURATION;
-	alpha->src_alpha_ctrl.bits.factor_mode = ALPHA_ONE;
-
-	alpha->dst_alpha_ctrl.bits.alpha_mode = ALPHA_STRAIGHT;
-	if (alpha_config->dst_pixel_alpha_en && !dst_glb_alpha_en)
-		alpha->dst_alpha_ctrl.bits.blend_mode = ALPHA_PER_PIX;
-	else
-		alpha->dst_alpha_ctrl.bits.blend_mode = ALPHA_PER_PIX_GLOBAL;
-	alpha->dst_alpha_ctrl.bits.alpha_cal_mode = ALPHA_NO_SATURATION;
-	alpha->dst_alpha_ctrl.bits.factor_mode = ALPHA_SRC_INVERSE;
-}
-
-static int vop2_find_start_mixer_id_for_vp(struct vop2 *vop2, u8 port_id)
-{
-	struct vop2_video_port *vp;
-	int used_layer = 0;
-	int i;
-
-	for (i = 0; i < port_id; i++) {
-		vp = &vop2->vps[i];
-		used_layer += hweight32(vp->win_mask);
-	}
-
-	return used_layer;
-}
-
-static void vop2_setup_cluster_alpha(struct vop2 *vop2, struct vop2_win *main_win)
-{
-	u32 offset = (main_win->data->phys_id * 0x10);
-	struct vop2_alpha_config alpha_config;
-	struct vop2_alpha alpha;
-	struct drm_plane_state *bottom_win_pstate;
-	bool src_pixel_alpha_en = false;
-	u16 src_glb_alpha_val, dst_glb_alpha_val;
-	bool premulti_en = false;
-	bool swap = false;
-
-	/* At one win mode, win0 is dst/bottom win, and win1 is a all zero src/top win */
-	bottom_win_pstate = main_win->base.state;
-	src_glb_alpha_val = 0;
-	dst_glb_alpha_val = main_win->base.state->alpha;
-
-	if (!bottom_win_pstate->fb)
-		return;
-
-	alpha_config.src_premulti_en = premulti_en;
-	alpha_config.dst_premulti_en = false;
-	alpha_config.src_pixel_alpha_en = src_pixel_alpha_en;
-	alpha_config.dst_pixel_alpha_en = true; /* alpha value need transfer to next mix */
-	alpha_config.src_glb_alpha_value = src_glb_alpha_val;
-	alpha_config.dst_glb_alpha_value = dst_glb_alpha_val;
-	vop2_parse_alpha(&alpha_config, &alpha);
-
-	alpha.src_color_ctrl.bits.src_dst_swap = swap;
-	vop2_writel(vop2, RK3568_CLUSTER0_MIX_SRC_COLOR_CTRL + offset,
-		    alpha.src_color_ctrl.val);
-	vop2_writel(vop2, RK3568_CLUSTER0_MIX_DST_COLOR_CTRL + offset,
-		    alpha.dst_color_ctrl.val);
-	vop2_writel(vop2, RK3568_CLUSTER0_MIX_SRC_ALPHA_CTRL + offset,
-		    alpha.src_alpha_ctrl.val);
-	vop2_writel(vop2, RK3568_CLUSTER0_MIX_DST_ALPHA_CTRL + offset,
-		    alpha.dst_alpha_ctrl.val);
-}
-
-static void vop2_setup_alpha(struct vop2_video_port *vp)
-{
-	struct vop2 *vop2 = vp->vop2;
-	struct drm_framebuffer *fb;
-	struct vop2_alpha_config alpha_config;
-	struct vop2_alpha alpha;
-	struct drm_plane *plane;
-	int pixel_alpha_en;
-	int premulti_en, gpremulti_en = 0;
-	int mixer_id;
-	u32 offset;
-	bool bottom_layer_alpha_en = false;
-	u32 dst_global_alpha = DRM_BLEND_ALPHA_OPAQUE;
-
-	mixer_id = vop2_find_start_mixer_id_for_vp(vop2, vp->id);
-	alpha_config.dst_pixel_alpha_en = true; /* alpha value need transfer to next mix */
-
-	drm_atomic_crtc_for_each_plane(plane, &vp->crtc) {
-		struct vop2_win *win = to_vop2_win(plane);
-
-		if (plane->state->normalized_zpos == 0 &&
-		    !is_opaque(plane->state->alpha) &&
-		    !vop2_cluster_window(win)) {
-			/*
-			 * If bottom layer have global alpha effect [except cluster layer,
-			 * because cluster have deal with bottom layer global alpha value
-			 * at cluster mix], bottom layer mix need deal with global alpha.
-			 */
-			bottom_layer_alpha_en = true;
-			dst_global_alpha = plane->state->alpha;
-		}
-	}
-
-	drm_atomic_crtc_for_each_plane(plane, &vp->crtc) {
-		struct vop2_win *win = to_vop2_win(plane);
-		int zpos = plane->state->normalized_zpos;
-
-		if (plane->state->pixel_blend_mode == DRM_MODE_BLEND_PREMULTI)
-			premulti_en = 1;
-		else
-			premulti_en = 0;
-
-		plane = &win->base;
-		fb = plane->state->fb;
-
-		pixel_alpha_en = fb->format->has_alpha;
-
-		alpha_config.src_premulti_en = premulti_en;
-
-		if (bottom_layer_alpha_en && zpos == 1) {
-			gpremulti_en = premulti_en;
-			/* Cd = Cs + (1 - As) * Cd * Agd */
-			alpha_config.dst_premulti_en = false;
-			alpha_config.src_pixel_alpha_en = pixel_alpha_en;
-			alpha_config.src_glb_alpha_value = plane->state->alpha;
-			alpha_config.dst_glb_alpha_value = dst_global_alpha;
-		} else if (vop2_cluster_window(win)) {
-			/* Mix output data only have pixel alpha */
-			alpha_config.dst_premulti_en = true;
-			alpha_config.src_pixel_alpha_en = true;
-			alpha_config.src_glb_alpha_value = DRM_BLEND_ALPHA_OPAQUE;
-			alpha_config.dst_glb_alpha_value = DRM_BLEND_ALPHA_OPAQUE;
-		} else {
-			/* Cd = Cs + (1 - As) * Cd */
-			alpha_config.dst_premulti_en = true;
-			alpha_config.src_pixel_alpha_en = pixel_alpha_en;
-			alpha_config.src_glb_alpha_value = plane->state->alpha;
-			alpha_config.dst_glb_alpha_value = DRM_BLEND_ALPHA_OPAQUE;
-		}
-
-		vop2_parse_alpha(&alpha_config, &alpha);
-
-		offset = (mixer_id + zpos - 1) * 0x10;
-		vop2_writel(vop2, RK3568_MIX0_SRC_COLOR_CTRL + offset,
-			    alpha.src_color_ctrl.val);
-		vop2_writel(vop2, RK3568_MIX0_DST_COLOR_CTRL + offset,
-			    alpha.dst_color_ctrl.val);
-		vop2_writel(vop2, RK3568_MIX0_SRC_ALPHA_CTRL + offset,
-			    alpha.src_alpha_ctrl.val);
-		vop2_writel(vop2, RK3568_MIX0_DST_ALPHA_CTRL + offset,
-			    alpha.dst_alpha_ctrl.val);
-	}
-
-	if (vp->id == 0) {
-		if (bottom_layer_alpha_en) {
-			/* Transfer pixel alpha to hdr mix */
-			alpha_config.src_premulti_en = gpremulti_en;
-			alpha_config.dst_premulti_en = true;
-			alpha_config.src_pixel_alpha_en = true;
-			alpha_config.src_glb_alpha_value = DRM_BLEND_ALPHA_OPAQUE;
-			alpha_config.dst_glb_alpha_value = DRM_BLEND_ALPHA_OPAQUE;
-			vop2_parse_alpha(&alpha_config, &alpha);
-
-			vop2_writel(vop2, RK3568_HDR0_SRC_COLOR_CTRL,
-				    alpha.src_color_ctrl.val);
-			vop2_writel(vop2, RK3568_HDR0_DST_COLOR_CTRL,
-				    alpha.dst_color_ctrl.val);
-			vop2_writel(vop2, RK3568_HDR0_SRC_ALPHA_CTRL,
-				    alpha.src_alpha_ctrl.val);
-			vop2_writel(vop2, RK3568_HDR0_DST_ALPHA_CTRL,
-				    alpha.dst_alpha_ctrl.val);
-		} else {
-			vop2_writel(vop2, RK3568_HDR0_SRC_COLOR_CTRL, 0);
-		}
-	}
-}
-
-static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
-{
-	struct vop2 *vop2 = vp->vop2;
-	struct drm_plane *plane;
-	u32 layer_sel = 0;
-	u32 port_sel;
-	unsigned int nlayer, ofs;
-	u32 ovl_ctrl;
-	int i;
-	struct vop2_video_port *vp0 = &vop2->vps[0];
-	struct vop2_video_port *vp1 = &vop2->vps[1];
-	struct vop2_video_port *vp2 = &vop2->vps[2];
-	struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(vp->crtc.state);
-
-	ovl_ctrl = vop2_readl(vop2, RK3568_OVL_CTRL);
-	ovl_ctrl |= RK3568_OVL_CTRL__LAYERSEL_REGDONE_IMD;
-	if (vcstate->yuv_overlay)
-		ovl_ctrl |= RK3568_OVL_CTRL__YUV_MODE(vp->id);
-	else
-		ovl_ctrl &= ~RK3568_OVL_CTRL__YUV_MODE(vp->id);
-
-	vop2_writel(vop2, RK3568_OVL_CTRL, ovl_ctrl);
-
-	port_sel = vop2_readl(vop2, RK3568_OVL_PORT_SEL);
-	port_sel &= RK3568_OVL_PORT_SEL__SEL_PORT;
-
-	if (vp0->nlayers)
-		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT0_MUX,
-				     vp0->nlayers - 1);
-	else
-		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT0_MUX, 8);
-
-	if (vp1->nlayers)
-		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT1_MUX,
-				     (vp0->nlayers + vp1->nlayers - 1));
-	else
-		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT1_MUX, 8);
-
-	if (vp2->nlayers)
-		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT2_MUX,
-			(vp2->nlayers + vp1->nlayers + vp0->nlayers - 1));
-	else
-		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT2_MUX, 8);
-
-	layer_sel = vop2_readl(vop2, RK3568_OVL_LAYER_SEL);
-
-	ofs = 0;
-	for (i = 0; i < vp->id; i++)
-		ofs += vop2->vps[i].nlayers;
-
-	nlayer = 0;
-	drm_atomic_crtc_for_each_plane(plane, &vp->crtc) {
-		struct vop2_win *win = to_vop2_win(plane);
-
-		switch (win->data->phys_id) {
-		case ROCKCHIP_VOP2_CLUSTER0:
-			port_sel &= ~RK3568_OVL_PORT_SEL__CLUSTER0;
-			port_sel |= FIELD_PREP(RK3568_OVL_PORT_SEL__CLUSTER0, vp->id);
-			break;
-		case ROCKCHIP_VOP2_CLUSTER1:
-			port_sel &= ~RK3568_OVL_PORT_SEL__CLUSTER1;
-			port_sel |= FIELD_PREP(RK3568_OVL_PORT_SEL__CLUSTER1, vp->id);
-			break;
-		case ROCKCHIP_VOP2_CLUSTER2:
-			port_sel &= ~RK3588_OVL_PORT_SEL__CLUSTER2;
-			port_sel |= FIELD_PREP(RK3588_OVL_PORT_SEL__CLUSTER2, vp->id);
-			break;
-		case ROCKCHIP_VOP2_CLUSTER3:
-			port_sel &= ~RK3588_OVL_PORT_SEL__CLUSTER3;
-			port_sel |= FIELD_PREP(RK3588_OVL_PORT_SEL__CLUSTER3, vp->id);
-			break;
-		case ROCKCHIP_VOP2_ESMART0:
-			port_sel &= ~RK3568_OVL_PORT_SEL__ESMART0;
-			port_sel |= FIELD_PREP(RK3568_OVL_PORT_SEL__ESMART0, vp->id);
-			break;
-		case ROCKCHIP_VOP2_ESMART1:
-			port_sel &= ~RK3568_OVL_PORT_SEL__ESMART1;
-			port_sel |= FIELD_PREP(RK3568_OVL_PORT_SEL__ESMART1, vp->id);
-			break;
-		case ROCKCHIP_VOP2_ESMART2:
-			port_sel &= ~RK3588_OVL_PORT_SEL__ESMART2;
-			port_sel |= FIELD_PREP(RK3588_OVL_PORT_SEL__ESMART2, vp->id);
-			break;
-		case ROCKCHIP_VOP2_ESMART3:
-			port_sel &= ~RK3588_OVL_PORT_SEL__ESMART3;
-			port_sel |= FIELD_PREP(RK3588_OVL_PORT_SEL__ESMART3, vp->id);
-			break;
-		case ROCKCHIP_VOP2_SMART0:
-			port_sel &= ~RK3568_OVL_PORT_SEL__SMART0;
-			port_sel |= FIELD_PREP(RK3568_OVL_PORT_SEL__SMART0, vp->id);
-			break;
-		case ROCKCHIP_VOP2_SMART1:
-			port_sel &= ~RK3568_OVL_PORT_SEL__SMART1;
-			port_sel |= FIELD_PREP(RK3568_OVL_PORT_SEL__SMART1, vp->id);
-			break;
-		}
-
-		layer_sel &= ~RK3568_OVL_LAYER_SEL__LAYER(plane->state->normalized_zpos + ofs,
-							  0x7);
-		layer_sel |= RK3568_OVL_LAYER_SEL__LAYER(plane->state->normalized_zpos + ofs,
-							 win->data->layer_sel_id[vp->id]);
-		nlayer++;
-	}
-
-	/* configure unused layers to 0x5 (reserved) */
-	for (; nlayer < vp->nlayers; nlayer++) {
-		layer_sel &= ~RK3568_OVL_LAYER_SEL__LAYER(nlayer + ofs, 0x7);
-		layer_sel |= RK3568_OVL_LAYER_SEL__LAYER(nlayer + ofs, 5);
-	}
-
-	vop2_writel(vop2, RK3568_OVL_LAYER_SEL, layer_sel);
-	vop2_writel(vop2, RK3568_OVL_PORT_SEL, port_sel);
-}
-
-static void vop2_setup_dly_for_windows(struct vop2 *vop2)
-{
-	struct vop2_win *win;
-	int i = 0;
-	u32 cdly = 0, sdly = 0;
-
-	for (i = 0; i < vop2->data->win_size; i++) {
-		u32 dly;
-
-		win = &vop2->win[i];
-		dly = win->delay;
-
-		switch (win->data->phys_id) {
-		case ROCKCHIP_VOP2_CLUSTER0:
-			cdly |= FIELD_PREP(RK3568_CLUSTER_DLY_NUM__CLUSTER0_0, dly);
-			cdly |= FIELD_PREP(RK3568_CLUSTER_DLY_NUM__CLUSTER0_1, dly);
-			break;
-		case ROCKCHIP_VOP2_CLUSTER1:
-			cdly |= FIELD_PREP(RK3568_CLUSTER_DLY_NUM__CLUSTER1_0, dly);
-			cdly |= FIELD_PREP(RK3568_CLUSTER_DLY_NUM__CLUSTER1_1, dly);
-			break;
-		case ROCKCHIP_VOP2_ESMART0:
-			sdly |= FIELD_PREP(RK3568_SMART_DLY_NUM__ESMART0, dly);
-			break;
-		case ROCKCHIP_VOP2_ESMART1:
-			sdly |= FIELD_PREP(RK3568_SMART_DLY_NUM__ESMART1, dly);
-			break;
-		case ROCKCHIP_VOP2_SMART0:
-			sdly |= FIELD_PREP(RK3568_SMART_DLY_NUM__SMART0, dly);
-			break;
-		case ROCKCHIP_VOP2_SMART1:
-			sdly |= FIELD_PREP(RK3568_SMART_DLY_NUM__SMART1, dly);
-			break;
-		}
-	}
-
-	vop2_writel(vop2, RK3568_CLUSTER_DLY_NUM, cdly);
-	vop2_writel(vop2, RK3568_SMART_DLY_NUM, sdly);
-}
-
 static void vop2_crtc_atomic_begin(struct drm_crtc *crtc,
 				   struct drm_atomic_state *state)
 {
 	struct vop2_video_port *vp = to_vop2_video_port(crtc);
 	struct vop2 *vop2 = vp->vop2;
-	struct drm_plane *plane;
 
-	vp->win_mask = 0;
-
-	drm_atomic_crtc_for_each_plane(plane, crtc) {
-		struct vop2_win *win = to_vop2_win(plane);
-
-		win->delay = win->data->dly[VOP2_DLY_MODE_DEFAULT];
-
-		vp->win_mask |= BIT(win->data->phys_id);
-
-		if (vop2_cluster_window(win))
-			vop2_setup_cluster_alpha(vop2, win);
-	}
-
-	if (!vp->win_mask)
-		return;
-
-	vop2_setup_layer_mixer(vp);
-	vop2_setup_alpha(vp);
-	vop2_setup_dly_for_windows(vop2);
+	vop2->ops->setup_overlay(vp);
 }
 
 static void vop2_crtc_atomic_flush(struct drm_crtc *crtc,
@@ -3116,174 +2196,50 @@ static int vop2_find_rgb_encoder(struct vop2 *vop2)
 	return -ENOENT;
 }
 
-static struct reg_field vop2_cluster_regs[VOP2_WIN_MAX_REG] = {
-	[VOP2_WIN_ENABLE] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 0, 0),
-	[VOP2_WIN_FORMAT] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 1, 5),
-	[VOP2_WIN_RB_SWAP] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 14, 14),
-	[VOP2_WIN_DITHER_UP] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 18, 18),
-	[VOP2_WIN_ACT_INFO] = REG_FIELD(RK3568_CLUSTER_WIN_ACT_INFO, 0, 31),
-	[VOP2_WIN_DSP_INFO] = REG_FIELD(RK3568_CLUSTER_WIN_DSP_INFO, 0, 31),
-	[VOP2_WIN_DSP_ST] = REG_FIELD(RK3568_CLUSTER_WIN_DSP_ST, 0, 31),
-	[VOP2_WIN_YRGB_MST] = REG_FIELD(RK3568_CLUSTER_WIN_YRGB_MST, 0, 31),
-	[VOP2_WIN_UV_MST] = REG_FIELD(RK3568_CLUSTER_WIN_CBR_MST, 0, 31),
-	[VOP2_WIN_YUV_CLIP] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 19, 19),
-	[VOP2_WIN_YRGB_VIR] = REG_FIELD(RK3568_CLUSTER_WIN_VIR, 0, 15),
-	[VOP2_WIN_UV_VIR] = REG_FIELD(RK3568_CLUSTER_WIN_VIR, 16, 31),
-	[VOP2_WIN_Y2R_EN] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 8, 8),
-	[VOP2_WIN_R2Y_EN] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 9, 9),
-	[VOP2_WIN_CSC_MODE] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 10, 11),
-
-	/* Scale */
-	[VOP2_WIN_SCALE_YRGB_X] = REG_FIELD(RK3568_CLUSTER_WIN_SCL_FACTOR_YRGB, 0, 15),
-	[VOP2_WIN_SCALE_YRGB_Y] = REG_FIELD(RK3568_CLUSTER_WIN_SCL_FACTOR_YRGB, 16, 31),
-	[VOP2_WIN_YRGB_VER_SCL_MODE] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL1, 14, 15),
-	[VOP2_WIN_YRGB_HOR_SCL_MODE] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL1, 12, 13),
-	[VOP2_WIN_BIC_COE_SEL] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL1, 2, 3),
-	[VOP2_WIN_VSD_YRGB_GT2] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL1, 28, 28),
-	[VOP2_WIN_VSD_YRGB_GT4] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL1, 29, 29),
-
-	/* cluster regs */
-	[VOP2_WIN_AFBC_ENABLE] = REG_FIELD(RK3568_CLUSTER_CTRL, 1, 1),
-	[VOP2_WIN_CLUSTER_ENABLE] = REG_FIELD(RK3568_CLUSTER_CTRL, 0, 0),
-	[VOP2_WIN_CLUSTER_LB_MODE] = REG_FIELD(RK3568_CLUSTER_CTRL, 4, 7),
-
-	/* afbc regs */
-	[VOP2_WIN_AFBC_FORMAT] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_CTRL, 2, 6),
-	[VOP2_WIN_AFBC_RB_SWAP] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_CTRL, 9, 9),
-	[VOP2_WIN_AFBC_UV_SWAP] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_CTRL, 10, 10),
-	[VOP2_WIN_AFBC_AUTO_GATING_EN] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_OUTPUT_CTRL, 4, 4),
-	[VOP2_WIN_AFBC_HALF_BLOCK_EN] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_CTRL, 7, 7),
-	[VOP2_WIN_AFBC_BLOCK_SPLIT_EN] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_CTRL, 8, 8),
-	[VOP2_WIN_AFBC_HDR_PTR] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_HDR_PTR, 0, 31),
-	[VOP2_WIN_AFBC_PIC_SIZE] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_PIC_SIZE, 0, 31),
-	[VOP2_WIN_AFBC_PIC_VIR_WIDTH] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_VIR_WIDTH, 0, 15),
-	[VOP2_WIN_AFBC_TILE_NUM] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_VIR_WIDTH, 16, 31),
-	[VOP2_WIN_AFBC_PIC_OFFSET] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_PIC_OFFSET, 0, 31),
-	[VOP2_WIN_AFBC_DSP_OFFSET] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_DSP_OFFSET, 0, 31),
-	[VOP2_WIN_AFBC_TRANSFORM_OFFSET] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_TRANSFORM_OFFSET, 0, 31),
-	[VOP2_WIN_AFBC_ROTATE_90] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_ROTATE_MODE, 0, 0),
-	[VOP2_WIN_AFBC_ROTATE_270] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_ROTATE_MODE, 1, 1),
-	[VOP2_WIN_XMIRROR] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_ROTATE_MODE, 2, 2),
-	[VOP2_WIN_YMIRROR] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_ROTATE_MODE, 3, 3),
-	[VOP2_WIN_UV_SWAP] = { .reg = 0xffffffff },
-	[VOP2_WIN_COLOR_KEY] = { .reg = 0xffffffff },
-	[VOP2_WIN_COLOR_KEY_EN] = { .reg = 0xffffffff },
-	[VOP2_WIN_SCALE_CBCR_X] = { .reg = 0xffffffff },
-	[VOP2_WIN_SCALE_CBCR_Y] = { .reg = 0xffffffff },
-	[VOP2_WIN_YRGB_HSCL_FILTER_MODE] = { .reg = 0xffffffff },
-	[VOP2_WIN_YRGB_VSCL_FILTER_MODE] = { .reg = 0xffffffff },
-	[VOP2_WIN_CBCR_VER_SCL_MODE] = { .reg = 0xffffffff },
-	[VOP2_WIN_CBCR_HSCL_FILTER_MODE] = { .reg = 0xffffffff },
-	[VOP2_WIN_CBCR_HOR_SCL_MODE] = { .reg = 0xffffffff },
-	[VOP2_WIN_CBCR_VSCL_FILTER_MODE] = { .reg = 0xffffffff },
-	[VOP2_WIN_VSD_CBCR_GT2] = { .reg = 0xffffffff },
-	[VOP2_WIN_VSD_CBCR_GT4] = { .reg = 0xffffffff },
-};
-
 static int vop2_cluster_init(struct vop2_win *win)
 {
 	struct vop2 *vop2 = win->vop2;
 	struct reg_field *cluster_regs;
 	int ret, i;
 
-	cluster_regs = kmemdup(vop2_cluster_regs, sizeof(vop2_cluster_regs),
+	cluster_regs = kmemdup(vop2->data->cluster_reg,
+			       sizeof(struct reg_field) * vop2->data->nr_cluster_regs,
 			       GFP_KERNEL);
 	if (!cluster_regs)
 		return -ENOMEM;
 
-	for (i = 0; i < ARRAY_SIZE(vop2_cluster_regs); i++)
+	for (i = 0; i < vop2->data->nr_cluster_regs; i++)
 		if (cluster_regs[i].reg != 0xffffffff)
 			cluster_regs[i].reg += win->offset;
 
 	ret = devm_regmap_field_bulk_alloc(vop2->dev, vop2->map, win->reg,
 					   cluster_regs,
-					   ARRAY_SIZE(vop2_cluster_regs));
-
+					   vop2->data->nr_cluster_regs);
 	kfree(cluster_regs);
 
 	return ret;
 };
 
-static struct reg_field vop2_esmart_regs[VOP2_WIN_MAX_REG] = {
-	[VOP2_WIN_ENABLE] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 0, 0),
-	[VOP2_WIN_FORMAT] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 1, 5),
-	[VOP2_WIN_DITHER_UP] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 12, 12),
-	[VOP2_WIN_RB_SWAP] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 14, 14),
-	[VOP2_WIN_UV_SWAP] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 16, 16),
-	[VOP2_WIN_ACT_INFO] = REG_FIELD(RK3568_SMART_REGION0_ACT_INFO, 0, 31),
-	[VOP2_WIN_DSP_INFO] = REG_FIELD(RK3568_SMART_REGION0_DSP_INFO, 0, 31),
-	[VOP2_WIN_DSP_ST] = REG_FIELD(RK3568_SMART_REGION0_DSP_ST, 0, 28),
-	[VOP2_WIN_YRGB_MST] = REG_FIELD(RK3568_SMART_REGION0_YRGB_MST, 0, 31),
-	[VOP2_WIN_UV_MST] = REG_FIELD(RK3568_SMART_REGION0_CBR_MST, 0, 31),
-	[VOP2_WIN_YUV_CLIP] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 17, 17),
-	[VOP2_WIN_YRGB_VIR] = REG_FIELD(RK3568_SMART_REGION0_VIR, 0, 15),
-	[VOP2_WIN_UV_VIR] = REG_FIELD(RK3568_SMART_REGION0_VIR, 16, 31),
-	[VOP2_WIN_Y2R_EN] = REG_FIELD(RK3568_SMART_CTRL0, 0, 0),
-	[VOP2_WIN_R2Y_EN] = REG_FIELD(RK3568_SMART_CTRL0, 1, 1),
-	[VOP2_WIN_CSC_MODE] = REG_FIELD(RK3568_SMART_CTRL0, 2, 3),
-	[VOP2_WIN_YMIRROR] = REG_FIELD(RK3568_SMART_CTRL1, 31, 31),
-	[VOP2_WIN_COLOR_KEY] = REG_FIELD(RK3568_SMART_COLOR_KEY_CTRL, 0, 29),
-	[VOP2_WIN_COLOR_KEY_EN] = REG_FIELD(RK3568_SMART_COLOR_KEY_CTRL, 31, 31),
-
-	/* Scale */
-	[VOP2_WIN_SCALE_YRGB_X] = REG_FIELD(RK3568_SMART_REGION0_SCL_FACTOR_YRGB, 0, 15),
-	[VOP2_WIN_SCALE_YRGB_Y] = REG_FIELD(RK3568_SMART_REGION0_SCL_FACTOR_YRGB, 16, 31),
-	[VOP2_WIN_SCALE_CBCR_X] = REG_FIELD(RK3568_SMART_REGION0_SCL_FACTOR_CBR, 0, 15),
-	[VOP2_WIN_SCALE_CBCR_Y] = REG_FIELD(RK3568_SMART_REGION0_SCL_FACTOR_CBR, 16, 31),
-	[VOP2_WIN_YRGB_HOR_SCL_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 0, 1),
-	[VOP2_WIN_YRGB_HSCL_FILTER_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 2, 3),
-	[VOP2_WIN_YRGB_VER_SCL_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 4, 5),
-	[VOP2_WIN_YRGB_VSCL_FILTER_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 6, 7),
-	[VOP2_WIN_CBCR_HOR_SCL_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 8, 9),
-	[VOP2_WIN_CBCR_HSCL_FILTER_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 10, 11),
-	[VOP2_WIN_CBCR_VER_SCL_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 12, 13),
-	[VOP2_WIN_CBCR_VSCL_FILTER_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 14, 15),
-	[VOP2_WIN_BIC_COE_SEL] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 16, 17),
-	[VOP2_WIN_VSD_YRGB_GT2] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 8, 8),
-	[VOP2_WIN_VSD_YRGB_GT4] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 9, 9),
-	[VOP2_WIN_VSD_CBCR_GT2] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 10, 10),
-	[VOP2_WIN_VSD_CBCR_GT4] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 11, 11),
-	[VOP2_WIN_XMIRROR] = { .reg = 0xffffffff },
-	[VOP2_WIN_CLUSTER_ENABLE] = { .reg = 0xffffffff },
-	[VOP2_WIN_AFBC_ENABLE] = { .reg = 0xffffffff },
-	[VOP2_WIN_CLUSTER_LB_MODE] = { .reg = 0xffffffff },
-	[VOP2_WIN_AFBC_FORMAT] = { .reg = 0xffffffff },
-	[VOP2_WIN_AFBC_RB_SWAP] = { .reg = 0xffffffff },
-	[VOP2_WIN_AFBC_UV_SWAP] = { .reg = 0xffffffff },
-	[VOP2_WIN_AFBC_AUTO_GATING_EN] = { .reg = 0xffffffff },
-	[VOP2_WIN_AFBC_BLOCK_SPLIT_EN] = { .reg = 0xffffffff },
-	[VOP2_WIN_AFBC_PIC_VIR_WIDTH] = { .reg = 0xffffffff },
-	[VOP2_WIN_AFBC_TILE_NUM] = { .reg = 0xffffffff },
-	[VOP2_WIN_AFBC_PIC_OFFSET] = { .reg = 0xffffffff },
-	[VOP2_WIN_AFBC_PIC_SIZE] = { .reg = 0xffffffff },
-	[VOP2_WIN_AFBC_DSP_OFFSET] = { .reg = 0xffffffff },
-	[VOP2_WIN_AFBC_TRANSFORM_OFFSET] = { .reg = 0xffffffff },
-	[VOP2_WIN_AFBC_HDR_PTR] = { .reg = 0xffffffff },
-	[VOP2_WIN_AFBC_HALF_BLOCK_EN] = { .reg = 0xffffffff },
-	[VOP2_WIN_AFBC_ROTATE_270] = { .reg = 0xffffffff },
-	[VOP2_WIN_AFBC_ROTATE_90] = { .reg = 0xffffffff },
-};
-
 static int vop2_esmart_init(struct vop2_win *win)
 {
 	struct vop2 *vop2 = win->vop2;
-	struct reg_field *esmart_regs;
+	struct reg_field *smart_regs;
 	int ret, i;
 
-	esmart_regs = kmemdup(vop2_esmart_regs, sizeof(vop2_esmart_regs),
-			      GFP_KERNEL);
-	if (!esmart_regs)
+	smart_regs = kmemdup(vop2->data->smart_reg,
+			     sizeof(struct reg_field) * vop2->data->nr_smart_regs,
+			     GFP_KERNEL);
+	if (!smart_regs)
 		return -ENOMEM;
 
-	for (i = 0; i < ARRAY_SIZE(vop2_esmart_regs); i++)
-		if (esmart_regs[i].reg != 0xffffffff)
-			esmart_regs[i].reg += win->offset;
+	for (i = 0; i < vop2->data->nr_smart_regs; i++)
+		if (smart_regs[i].reg != 0xffffffff)
+			smart_regs[i].reg += win->offset;
 
 	ret = devm_regmap_field_bulk_alloc(vop2->dev, vop2->map, win->reg,
-					   esmart_regs,
-					   ARRAY_SIZE(vop2_esmart_regs));
-
-	kfree(esmart_regs);
+					   smart_regs,
+					   vop2->data->nr_smart_regs);
+	kfree(smart_regs);
 
 	return ret;
 };
@@ -3363,6 +2319,7 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
 
 	vop2->dev = dev;
 	vop2->data = vop2_data;
+	vop2->ops = vop2_data->ops;
 	vop2->drm = drm;
 
 	dev_set_drvdata(dev, vop2);
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
index aa4318a91554..9b269f6e576e 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
@@ -9,6 +9,7 @@
 
 #include <linux/regmap.h>
 #include <drm/drm_modes.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include "rockchip_drm_drv.h"
 #include "rockchip_drm_vop.h"
 
@@ -58,6 +59,23 @@ enum vop2_scale_down_mode {
 #define VOP2_PD_DSC_4K		BIT(6)
 #define VOP2_PD_ESMART		BIT(7)
 
+#define vop2_output_if_is_hdmi(x)	((x) == ROCKCHIP_VOP2_EP_HDMI0 || \
+					 (x) == ROCKCHIP_VOP2_EP_HDMI1)
+
+#define vop2_output_if_is_dp(x)		((x) == ROCKCHIP_VOP2_EP_DP0 || \
+					 (x) == ROCKCHIP_VOP2_EP_DP1)
+
+#define vop2_output_if_is_edp(x)	((x) == ROCKCHIP_VOP2_EP_EDP0 || \
+					 (x) == ROCKCHIP_VOP2_EP_EDP1)
+
+#define vop2_output_if_is_mipi(x)	((x) == ROCKCHIP_VOP2_EP_MIPI0 || \
+					 (x) == ROCKCHIP_VOP2_EP_MIPI1)
+
+#define vop2_output_if_is_lvds(x)	((x) == ROCKCHIP_VOP2_EP_LVDS0 || \
+					 (x) == ROCKCHIP_VOP2_EP_LVDS1)
+
+#define vop2_output_if_is_dpi(x)	((x) == ROCKCHIP_VOP2_EP_RGB0)
+
 enum vop2_win_regs {
 	VOP2_WIN_ENABLE,
 	VOP2_WIN_FORMAT,
@@ -155,6 +173,23 @@ struct vop2_win_data {
 	const u8 dly[VOP2_DLY_MODE_MAX];
 };
 
+struct vop2_win {
+	struct vop2 *vop2;
+	struct drm_plane base;
+	const struct vop2_win_data *data;
+	struct regmap_field *reg[VOP2_WIN_MAX_REG];
+
+	/**
+	 * @win_id: graphic window id, a cluster may be split into two
+	 * graphics windows.
+	 */
+	u8 win_id;
+	u8 delay;
+	u32 offset;
+
+	enum drm_plane_type type;
+};
+
 struct vop2_video_port_data {
 	unsigned int id;
 	u32 feature;
@@ -165,20 +200,105 @@ struct vop2_video_port_data {
 	unsigned int offset;
 };
 
+struct vop2_video_port {
+	struct drm_crtc crtc;
+	struct vop2 *vop2;
+	struct clk *dclk;
+	unsigned int id;
+	const struct vop2_video_port_data *data;
+
+	struct completion dsp_hold_completion;
+
+	/**
+	 * @win_mask: Bitmask of windows attached to the video port;
+	 */
+	u32 win_mask;
+
+	struct vop2_win *primary_plane;
+	struct drm_pending_vblank_event *event;
+
+	unsigned int nlayers;
+};
+
+/**
+ * struct vop2_ops - helper operations for vop2 hardware
+ *
+ * These hooks are used by the common part of the vop2 driver to
+ * implement the proper behaviour of different variants.
+ */
+struct vop2_ops {
+	unsigned long (*setup_intf_mux)(struct vop2_video_port *vp, int ep_id, u32 polflags);
+	void (*setup_bg_dly)(struct vop2_video_port *vp);
+	void (*setup_overlay)(struct vop2_video_port *vp);
+};
+
 struct vop2_data {
 	u8 nr_vps;
 	u64 feature;
+	const struct vop2_ops *ops;
 	const struct vop2_win_data *win;
 	const struct vop2_video_port_data *vp;
+	const struct reg_field *cluster_reg;
+	const struct reg_field *smart_reg;
 	const struct vop2_regs_dump *regs_dump;
 	struct vop_rect max_input;
 	struct vop_rect max_output;
 
+	unsigned int nr_cluster_regs;
+	unsigned int nr_smart_regs;
 	unsigned int win_size;
 	unsigned int regs_dump_size;
 	unsigned int soc_id;
 };
 
+struct vop2 {
+	struct device *dev;
+	struct drm_device *drm;
+	struct vop2_video_port vps[ROCKCHIP_MAX_CRTC];
+
+	const struct vop2_data *data;
+	const struct vop2_ops *ops;
+	/*
+	 * Number of windows that are registered as plane, may be less than the
+	 * total number of hardware windows.
+	 */
+	u32 registered_num_wins;
+
+	struct resource *res;
+	void __iomem *regs;
+	struct regmap *map;
+
+	struct regmap *sys_grf;
+	struct regmap *vop_grf;
+	struct regmap *vo1_grf;
+	struct regmap *sys_pmu;
+
+	/* physical map length of vop2 register */
+	u32 len;
+
+	void __iomem *lut_regs;
+
+	/* protects crtc enable/disable */
+	struct mutex vop2_lock;
+
+	int irq;
+
+	/*
+	 * Some global resources are shared between all video ports(crtcs), so
+	 * we need a ref counter here.
+	 */
+	unsigned int enable_count;
+	struct clk *hclk;
+	struct clk *aclk;
+	struct clk *pclk;
+
+	/* optional internal rgb encoder */
+	struct rockchip_rgb *rgb;
+
+	/* must be put at the end of the struct */
+	struct vop2_win win[];
+};
+
 /* interrupt define */
 #define FS_NEW_INTR			BIT(4)
 #define ADDR_SAME_INTR			BIT(5)
@@ -546,4 +666,43 @@ enum vop2_layer_phy_id {
 
 extern const struct component_ops vop2_component_ops;
 
+static inline void vop2_writel(struct vop2 *vop2, u32 offset, u32 v)
+{
+	regmap_write(vop2->map, offset, v);
+}
+
+static inline void vop2_vp_write(struct vop2_video_port *vp, u32 offset, u32 v)
+{
+	regmap_write(vp->vop2->map, vp->data->offset + offset, v);
+}
+
+static inline u32 vop2_readl(struct vop2 *vop2, u32 offset)
+{
+	u32 val;
+
+	regmap_read(vop2->map, offset, &val);
+
+	return val;
+}
+
+static inline void vop2_win_write(const struct vop2_win *win, unsigned int reg, u32 v)
+{
+	regmap_field_write(win->reg[reg], v);
+}
+
+static inline bool vop2_cluster_window(const struct vop2_win *win)
+{
+	return win->data->feature & WIN_FEATURE_CLUSTER;
+}
+
+static inline struct vop2_video_port *to_vop2_video_port(struct drm_crtc *crtc)
+{
+	return container_of(crtc, struct vop2_video_port, crtc);
+}
+
+static inline struct vop2_win *to_vop2_win(struct drm_plane *p)
+{
+	return container_of(p, struct vop2_win, base);
+}
+
 #endif /* _ROCKCHIP_DRM_VOP2_H */
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
index 2978c5f9b93a..b44fff0d4cb7 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
@@ -9,12 +9,50 @@
 #include <linux/mod_devicetable.h>
 #include <linux/platform_device.h>
 #include <linux/of.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
+#include <drm/drm_framebuffer.h>
 #include <drm/drm_plane.h>
 #include <drm/drm_print.h>
 
 #include "rockchip_drm_vop2.h"
 
+union vop2_alpha_ctrl {
+	u32 val;
+	struct {
+		/* [0:1] */
+		u32 color_mode:1;
+		u32 alpha_mode:1;
+		/* [2:3] */
+		u32 blend_mode:2;
+		u32 alpha_cal_mode:1;
+		/* [5:7] */
+		u32 factor_mode:3;
+		/* [8:9] */
+		u32 alpha_en:1;
+		u32 src_dst_swap:1;
+		u32 reserved:6;
+		/* [16:23] */
+		u32 glb_alpha:8;
+	} bits;
+};
+
+struct vop2_alpha {
+	union vop2_alpha_ctrl src_color_ctrl;
+	union vop2_alpha_ctrl dst_color_ctrl;
+	union vop2_alpha_ctrl src_alpha_ctrl;
+	union vop2_alpha_ctrl dst_alpha_ctrl;
+};
+
+struct vop2_alpha_config {
+	bool src_premulti_en;
+	bool dst_premulti_en;
+	bool src_pixel_alpha_en;
+	bool dst_pixel_alpha_en;
+	u16 src_glb_alpha_value;
+	u16 dst_glb_alpha_value;
+};
+
 static const uint32_t formats_cluster[] = {
 	DRM_FORMAT_XRGB2101010,
 	DRM_FORMAT_XBGR2101010,
@@ -131,6 +169,130 @@ static const uint64_t format_modifiers_afbc[] = {
 	DRM_FORMAT_MOD_INVALID,
 };
 
+static const struct reg_field rk3568_vop_cluster_regs[VOP2_WIN_MAX_REG] = {
+	[VOP2_WIN_ENABLE] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 0, 0),
+	[VOP2_WIN_FORMAT] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 1, 5),
+	[VOP2_WIN_RB_SWAP] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 14, 14),
+	[VOP2_WIN_DITHER_UP] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 18, 18),
+	[VOP2_WIN_ACT_INFO] = REG_FIELD(RK3568_CLUSTER_WIN_ACT_INFO, 0, 31),
+	[VOP2_WIN_DSP_INFO] = REG_FIELD(RK3568_CLUSTER_WIN_DSP_INFO, 0, 31),
+	[VOP2_WIN_DSP_ST] = REG_FIELD(RK3568_CLUSTER_WIN_DSP_ST, 0, 31),
+	[VOP2_WIN_YRGB_MST] = REG_FIELD(RK3568_CLUSTER_WIN_YRGB_MST, 0, 31),
+	[VOP2_WIN_UV_MST] = REG_FIELD(RK3568_CLUSTER_WIN_CBR_MST, 0, 31),
+	[VOP2_WIN_YUV_CLIP] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 19, 19),
+	[VOP2_WIN_YRGB_VIR] = REG_FIELD(RK3568_CLUSTER_WIN_VIR, 0, 15),
+	[VOP2_WIN_UV_VIR] = REG_FIELD(RK3568_CLUSTER_WIN_VIR, 16, 31),
+	[VOP2_WIN_Y2R_EN] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 8, 8),
+	[VOP2_WIN_R2Y_EN] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 9, 9),
+	[VOP2_WIN_CSC_MODE] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL0, 10, 11),
+
+	/* Scale */
+	[VOP2_WIN_SCALE_YRGB_X] = REG_FIELD(RK3568_CLUSTER_WIN_SCL_FACTOR_YRGB, 0, 15),
+	[VOP2_WIN_SCALE_YRGB_Y] = REG_FIELD(RK3568_CLUSTER_WIN_SCL_FACTOR_YRGB, 16, 31),
+	[VOP2_WIN_YRGB_VER_SCL_MODE] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL1, 14, 15),
+	[VOP2_WIN_YRGB_HOR_SCL_MODE] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL1, 12, 13),
+	[VOP2_WIN_BIC_COE_SEL] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL1, 2, 3),
+	[VOP2_WIN_VSD_YRGB_GT2] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL1, 28, 28),
+	[VOP2_WIN_VSD_YRGB_GT4] = REG_FIELD(RK3568_CLUSTER_WIN_CTRL1, 29, 29),
+
+	/* cluster regs */
+	[VOP2_WIN_AFBC_ENABLE] = REG_FIELD(RK3568_CLUSTER_CTRL, 1, 1),
+	[VOP2_WIN_CLUSTER_ENABLE] = REG_FIELD(RK3568_CLUSTER_CTRL, 0, 0),
+	[VOP2_WIN_CLUSTER_LB_MODE] = REG_FIELD(RK3568_CLUSTER_CTRL, 4, 7),
+
+	/* afbc regs */
+	[VOP2_WIN_AFBC_FORMAT] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_CTRL, 2, 6),
+	[VOP2_WIN_AFBC_RB_SWAP] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_CTRL, 9, 9),
+	[VOP2_WIN_AFBC_UV_SWAP] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_CTRL, 10, 10),
+	[VOP2_WIN_AFBC_AUTO_GATING_EN] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_OUTPUT_CTRL, 4, 4),
+	[VOP2_WIN_AFBC_HALF_BLOCK_EN] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_CTRL, 7, 7),
+	[VOP2_WIN_AFBC_BLOCK_SPLIT_EN] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_CTRL, 8, 8),
+	[VOP2_WIN_AFBC_HDR_PTR] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_HDR_PTR, 0, 31),
+	[VOP2_WIN_AFBC_PIC_SIZE] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_PIC_SIZE, 0, 31),
+	[VOP2_WIN_AFBC_PIC_VIR_WIDTH] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_VIR_WIDTH, 0, 15),
+	[VOP2_WIN_AFBC_TILE_NUM] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_VIR_WIDTH, 16, 31),
+	[VOP2_WIN_AFBC_PIC_OFFSET] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_PIC_OFFSET, 0, 31),
+	[VOP2_WIN_AFBC_DSP_OFFSET] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_DSP_OFFSET, 0, 31),
+	[VOP2_WIN_AFBC_TRANSFORM_OFFSET] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_TRANSFORM_OFFSET, 0, 31),
+	[VOP2_WIN_AFBC_ROTATE_90] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_ROTATE_MODE, 0, 0),
+	[VOP2_WIN_AFBC_ROTATE_270] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_ROTATE_MODE, 1, 1),
+	[VOP2_WIN_XMIRROR] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_ROTATE_MODE, 2, 2),
+	[VOP2_WIN_YMIRROR] = REG_FIELD(RK3568_CLUSTER_WIN_AFBCD_ROTATE_MODE, 3, 3),
+	[VOP2_WIN_UV_SWAP] = { .reg = 0xffffffff },
+	[VOP2_WIN_COLOR_KEY] = { .reg = 0xffffffff },
+	[VOP2_WIN_COLOR_KEY_EN] = { .reg = 0xffffffff },
+	[VOP2_WIN_SCALE_CBCR_X] = { .reg = 0xffffffff },
+	[VOP2_WIN_SCALE_CBCR_Y] = { .reg = 0xffffffff },
+	[VOP2_WIN_YRGB_HSCL_FILTER_MODE] = { .reg = 0xffffffff },
+	[VOP2_WIN_YRGB_VSCL_FILTER_MODE] = { .reg = 0xffffffff },
+	[VOP2_WIN_CBCR_VER_SCL_MODE] = { .reg = 0xffffffff },
+	[VOP2_WIN_CBCR_HSCL_FILTER_MODE] = { .reg = 0xffffffff },
+	[VOP2_WIN_CBCR_HOR_SCL_MODE] = { .reg = 0xffffffff },
+	[VOP2_WIN_CBCR_VSCL_FILTER_MODE] = { .reg = 0xffffffff },
+	[VOP2_WIN_VSD_CBCR_GT2] = { .reg = 0xffffffff },
+	[VOP2_WIN_VSD_CBCR_GT4] = { .reg = 0xffffffff },
+};
+
+static const struct reg_field rk3568_vop_smart_regs[VOP2_WIN_MAX_REG] = {
+	[VOP2_WIN_ENABLE] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 0, 0),
+	[VOP2_WIN_FORMAT] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 1, 5),
+	[VOP2_WIN_DITHER_UP] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 12, 12),
+	[VOP2_WIN_RB_SWAP] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 14, 14),
+	[VOP2_WIN_UV_SWAP] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 16, 16),
+	[VOP2_WIN_ACT_INFO] = REG_FIELD(RK3568_SMART_REGION0_ACT_INFO, 0, 31),
+	[VOP2_WIN_DSP_INFO] = REG_FIELD(RK3568_SMART_REGION0_DSP_INFO, 0, 31),
+	[VOP2_WIN_DSP_ST] = REG_FIELD(RK3568_SMART_REGION0_DSP_ST, 0, 28),
+	[VOP2_WIN_YRGB_MST] = REG_FIELD(RK3568_SMART_REGION0_YRGB_MST, 0, 31),
+	[VOP2_WIN_UV_MST] = REG_FIELD(RK3568_SMART_REGION0_CBR_MST, 0, 31),
+	[VOP2_WIN_YUV_CLIP] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 17, 17),
+	[VOP2_WIN_YRGB_VIR] = REG_FIELD(RK3568_SMART_REGION0_VIR, 0, 15),
+	[VOP2_WIN_UV_VIR] = REG_FIELD(RK3568_SMART_REGION0_VIR, 16, 31),
+	[VOP2_WIN_Y2R_EN] = REG_FIELD(RK3568_SMART_CTRL0, 0, 0),
+	[VOP2_WIN_R2Y_EN] = REG_FIELD(RK3568_SMART_CTRL0, 1, 1),
+	[VOP2_WIN_CSC_MODE] = REG_FIELD(RK3568_SMART_CTRL0, 2, 3),
+	[VOP2_WIN_YMIRROR] = REG_FIELD(RK3568_SMART_CTRL1, 31, 31),
+	[VOP2_WIN_COLOR_KEY] = REG_FIELD(RK3568_SMART_COLOR_KEY_CTRL, 0, 29),
+	[VOP2_WIN_COLOR_KEY_EN] = REG_FIELD(RK3568_SMART_COLOR_KEY_CTRL, 31, 31),
+
+	/* Scale */
+	[VOP2_WIN_SCALE_YRGB_X] = REG_FIELD(RK3568_SMART_REGION0_SCL_FACTOR_YRGB, 0, 15),
+	[VOP2_WIN_SCALE_YRGB_Y] = REG_FIELD(RK3568_SMART_REGION0_SCL_FACTOR_YRGB, 16, 31),
+	[VOP2_WIN_SCALE_CBCR_X] = REG_FIELD(RK3568_SMART_REGION0_SCL_FACTOR_CBR, 0, 15),
+	[VOP2_WIN_SCALE_CBCR_Y] = REG_FIELD(RK3568_SMART_REGION0_SCL_FACTOR_CBR, 16, 31),
+	[VOP2_WIN_YRGB_HOR_SCL_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 0, 1),
+	[VOP2_WIN_YRGB_HSCL_FILTER_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 2, 3),
+	[VOP2_WIN_YRGB_VER_SCL_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 4, 5),
+	[VOP2_WIN_YRGB_VSCL_FILTER_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 6, 7),
+	[VOP2_WIN_CBCR_HOR_SCL_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 8, 9),
+	[VOP2_WIN_CBCR_HSCL_FILTER_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 10, 11),
+	[VOP2_WIN_CBCR_VER_SCL_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 12, 13),
+	[VOP2_WIN_CBCR_VSCL_FILTER_MODE] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 14, 15),
+	[VOP2_WIN_BIC_COE_SEL] = REG_FIELD(RK3568_SMART_REGION0_SCL_CTRL, 16, 17),
+	[VOP2_WIN_VSD_YRGB_GT2] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 8, 8),
+	[VOP2_WIN_VSD_YRGB_GT4] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 9, 9),
+	[VOP2_WIN_VSD_CBCR_GT2] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 10, 10),
+	[VOP2_WIN_VSD_CBCR_GT4] = REG_FIELD(RK3568_SMART_REGION0_CTRL, 11, 11),
+	[VOP2_WIN_XMIRROR] = { .reg = 0xffffffff },
+	[VOP2_WIN_CLUSTER_ENABLE] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_ENABLE] = { .reg = 0xffffffff },
+	[VOP2_WIN_CLUSTER_LB_MODE] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_FORMAT] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_RB_SWAP] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_UV_SWAP] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_AUTO_GATING_EN] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_BLOCK_SPLIT_EN] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_PIC_VIR_WIDTH] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_TILE_NUM] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_PIC_OFFSET] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_PIC_SIZE] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_DSP_OFFSET] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_TRANSFORM_OFFSET] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_HDR_PTR] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_HALF_BLOCK_EN] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_ROTATE_270] = { .reg = 0xffffffff },
+	[VOP2_WIN_AFBC_ROTATE_90] = { .reg = 0xffffffff },
+};
+
 static const struct vop2_video_port_data rk3568_vop_video_ports[] = {
 	{
 		.id = 0,
@@ -624,6 +786,769 @@ static const struct vop2_regs_dump rk3588_regs_dump[] = {
 	},
 };
 
+static unsigned long rk3568_set_intf_mux(struct vop2_video_port *vp, int id, u32 polflags)
+{
+	struct vop2 *vop2 = vp->vop2;
+	struct drm_crtc *crtc = &vp->crtc;
+	u32 die, dip;
+
+	die = vop2_readl(vop2, RK3568_DSP_IF_EN);
+	dip = vop2_readl(vop2, RK3568_DSP_IF_POL);
+
+	switch (id) {
+	case ROCKCHIP_VOP2_EP_RGB0:
+		die &= ~RK3568_SYS_DSP_INFACE_EN_RGB_MUX;
+		die |= RK3568_SYS_DSP_INFACE_EN_RGB |
+			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_RGB_MUX, vp->id);
+		dip &= ~RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL;
+		dip |= FIELD_PREP(RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL, polflags);
+		if (polflags & POLFLAG_DCLK_INV)
+			regmap_write(vop2->sys_grf, RK3568_GRF_VO_CON1, BIT(3 + 16) | BIT(3));
+		else
+			regmap_write(vop2->sys_grf, RK3568_GRF_VO_CON1, BIT(3 + 16));
+		break;
+	case ROCKCHIP_VOP2_EP_HDMI0:
+		die &= ~RK3568_SYS_DSP_INFACE_EN_HDMI_MUX;
+		die |= RK3568_SYS_DSP_INFACE_EN_HDMI |
+			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_HDMI_MUX, vp->id);
+		dip &= ~RK3568_DSP_IF_POL__HDMI_PIN_POL;
+		dip |= FIELD_PREP(RK3568_DSP_IF_POL__HDMI_PIN_POL, polflags);
+		break;
+	case ROCKCHIP_VOP2_EP_EDP0:
+		die &= ~RK3568_SYS_DSP_INFACE_EN_EDP_MUX;
+		die |= RK3568_SYS_DSP_INFACE_EN_EDP |
+			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_EDP_MUX, vp->id);
+		dip &= ~RK3568_DSP_IF_POL__EDP_PIN_POL;
+		dip |= FIELD_PREP(RK3568_DSP_IF_POL__EDP_PIN_POL, polflags);
+		break;
+	case ROCKCHIP_VOP2_EP_MIPI0:
+		die &= ~RK3568_SYS_DSP_INFACE_EN_MIPI0_MUX;
+		die |= RK3568_SYS_DSP_INFACE_EN_MIPI0 |
+			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_MIPI0_MUX, vp->id);
+		dip &= ~RK3568_DSP_IF_POL__MIPI_PIN_POL;
+		dip |= FIELD_PREP(RK3568_DSP_IF_POL__MIPI_PIN_POL, polflags);
+		break;
+	case ROCKCHIP_VOP2_EP_MIPI1:
+		die &= ~RK3568_SYS_DSP_INFACE_EN_MIPI1_MUX;
+		die |= RK3568_SYS_DSP_INFACE_EN_MIPI1 |
+			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_MIPI1_MUX, vp->id);
+		dip &= ~RK3568_DSP_IF_POL__MIPI_PIN_POL;
+		dip |= FIELD_PREP(RK3568_DSP_IF_POL__MIPI_PIN_POL, polflags);
+		break;
+	case ROCKCHIP_VOP2_EP_LVDS0:
+		die &= ~RK3568_SYS_DSP_INFACE_EN_LVDS0_MUX;
+		die |= RK3568_SYS_DSP_INFACE_EN_LVDS0 |
+			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_LVDS0_MUX, vp->id);
+		dip &= ~RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL;
+		dip |= FIELD_PREP(RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL, polflags);
+		break;
+	case ROCKCHIP_VOP2_EP_LVDS1:
+		die &= ~RK3568_SYS_DSP_INFACE_EN_LVDS1_MUX;
+		die |= RK3568_SYS_DSP_INFACE_EN_LVDS1 |
+			   FIELD_PREP(RK3568_SYS_DSP_INFACE_EN_LVDS1_MUX, vp->id);
+		dip &= ~RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL;
+		dip |= FIELD_PREP(RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL, polflags);
+		break;
+	default:
+		drm_err(vop2->drm, "Invalid interface id %d on vp%d\n", id, vp->id);
+		return 0;
+	}
+
+	dip |= RK3568_DSP_IF_POL__CFG_DONE_IMD;
+
+	vop2_writel(vop2, RK3568_DSP_IF_EN, die);
+	vop2_writel(vop2, RK3568_DSP_IF_POL, dip);
+
+	return crtc->state->adjusted_mode.crtc_clock  * 1000LL;
+}
+
+/*
+ * calc the dclk on rk3588
+ * the available div of dclk is 1, 2, 4
+ */
+static unsigned long rk3588_calc_dclk(unsigned long child_clk, unsigned long max_dclk)
+{
+	if (child_clk * 4 <= max_dclk)
+		return child_clk * 4;
+	else if (child_clk * 2 <= max_dclk)
+		return child_clk * 2;
+	else if (child_clk <= max_dclk)
+		return child_clk;
+	else
+		return 0;
+}
+
+/*
+ * 4 pixclk/cycle on rk3588
+ * RGB/eDP/HDMI: if_pixclk >= dclk_core
+ * DP: dp_pixclk = dclk_out <= dclk_core
+ * DSI: mipi_pixclk <= dclk_out <= dclk_core
+ */
+static unsigned long rk3588_calc_cru_cfg(struct vop2_video_port *vp, int id,
+					 int *dclk_core_div, int *dclk_out_div,
+					 int *if_pixclk_div, int *if_dclk_div)
+{
+	struct vop2 *vop2 = vp->vop2;
+	struct drm_crtc *crtc = &vp->crtc;
+	struct drm_display_mode *adjusted_mode = &crtc->state->adjusted_mode;
+	struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(crtc->state);
+	int output_mode = vcstate->output_mode;
+	unsigned long v_pixclk = adjusted_mode->crtc_clock * 1000LL; /* video timing pixclk */
+	unsigned long dclk_core_rate = v_pixclk >> 2;
+	unsigned long dclk_rate = v_pixclk;
+	unsigned long dclk_out_rate;
+	unsigned long if_pixclk_rate;
+	int K = 1;
+
+	if (vop2_output_if_is_hdmi(id)) {
+		/*
+		 * K = 2: dclk_core = if_pixclk_rate > if_dclk_rate
+		 * K = 1: dclk_core = hdmie_edp_dclk > if_pixclk_rate
+		 */
+		if (output_mode == ROCKCHIP_OUT_MODE_YUV420) {
+			dclk_rate = dclk_rate >> 1;
+			K = 2;
+		}
+
+		if_pixclk_rate = (dclk_core_rate << 1) / K;
+		/*
+		 * if_dclk_rate = dclk_core_rate / K;
+		 * *if_pixclk_div = dclk_rate / if_pixclk_rate;
+		 * *if_dclk_div = dclk_rate / if_dclk_rate;
+		 */
+		*if_pixclk_div = 2;
+		*if_dclk_div = 4;
+	} else if (vop2_output_if_is_edp(id)) {
+		/*
+		 * edp_pixclk = edp_dclk > dclk_core
+		 */
+		if_pixclk_rate = v_pixclk / K;
+		dclk_rate = if_pixclk_rate * K;
+		/*
+		 * *if_pixclk_div = dclk_rate / if_pixclk_rate;
+		 * *if_dclk_div = *if_pixclk_div;
+		 */
+		*if_pixclk_div = K;
+		*if_dclk_div = K;
+	} else if (vop2_output_if_is_dp(id)) {
+		if (output_mode == ROCKCHIP_OUT_MODE_YUV420)
+			dclk_out_rate = v_pixclk >> 3;
+		else
+			dclk_out_rate = v_pixclk >> 2;
+
+		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000);
+		if (!dclk_rate) {
+			drm_err(vop2->drm, "DP dclk_out_rate out of range, dclk_out_rate: %ld KHZ\n",
+				dclk_out_rate);
+			return 0;
+		}
+		*dclk_out_div = dclk_rate / dclk_out_rate;
+	} else if (vop2_output_if_is_mipi(id)) {
+		if_pixclk_rate = dclk_core_rate / K;
+		/*
+		 * dclk_core = dclk_out * K = if_pixclk * K = v_pixclk / 4
+		 */
+		dclk_out_rate = if_pixclk_rate;
+		/*
+		 * dclk_rate = N * dclk_core_rate N = (1,2,4 ),
+		 * we get a little factor here
+		 */
+		dclk_rate = rk3588_calc_dclk(dclk_out_rate, 600000);
+		if (!dclk_rate) {
+			drm_err(vop2->drm, "MIPI dclk out of range, dclk_out_rate: %ld KHZ\n",
+				dclk_out_rate);
+			return 0;
+		}
+		*dclk_out_div = dclk_rate / dclk_out_rate;
+		/*
+		 * mipi pixclk == dclk_out
+		 */
+		*if_pixclk_div = 1;
+	} else if (vop2_output_if_is_dpi(id)) {
+		dclk_rate = v_pixclk;
+	}
+
+	*dclk_core_div = dclk_rate / dclk_core_rate;
+	*if_pixclk_div = ilog2(*if_pixclk_div);
+	*if_dclk_div = ilog2(*if_dclk_div);
+	*dclk_core_div = ilog2(*dclk_core_div);
+	*dclk_out_div = ilog2(*dclk_out_div);
+
+	drm_dbg(vop2->drm, "dclk: %ld, pixclk_div: %d, dclk_div: %d\n",
+		dclk_rate, *if_pixclk_div, *if_dclk_div);
+
+	return dclk_rate;
+}
+
+/*
+ * MIPI port mux on rk3588:
+ * 0: Video Port2
+ * 1: Video Port3
+ * 3: Video Port 1(MIPI1 only)
+ */
+static u32 rk3588_get_mipi_port_mux(int vp_id)
+{
+	if (vp_id == 1)
+		return 3;
+	else if (vp_id == 3)
+		return 1;
+	else
+		return 0;
+}
+
+static u32 rk3588_get_hdmi_pol(u32 flags)
+{
+	u32 val;
+
+	val = (flags & DRM_MODE_FLAG_NHSYNC) ? BIT(HSYNC_POSITIVE) : 0;
+	val |= (flags & DRM_MODE_FLAG_NVSYNC) ? BIT(VSYNC_POSITIVE) : 0;
+
+	return val;
+}
+
+static unsigned long rk3588_set_intf_mux(struct vop2_video_port *vp, int id, u32 polflags)
+{
+	struct vop2 *vop2 = vp->vop2;
+	int dclk_core_div, dclk_out_div, if_pixclk_div, if_dclk_div;
+	unsigned long clock;
+	u32 die, dip, div, vp_clk_div, val;
+
+	clock = rk3588_calc_cru_cfg(vp, id, &dclk_core_div, &dclk_out_div,
+				    &if_pixclk_div, &if_dclk_div);
+	if (!clock)
+		return 0;
+
+	vp_clk_div = FIELD_PREP(RK3588_VP_CLK_CTRL__DCLK_CORE_DIV, dclk_core_div);
+	vp_clk_div |= FIELD_PREP(RK3588_VP_CLK_CTRL__DCLK_OUT_DIV, dclk_out_div);
+
+	die = vop2_readl(vop2, RK3568_DSP_IF_EN);
+	dip = vop2_readl(vop2, RK3568_DSP_IF_POL);
+	div = vop2_readl(vop2, RK3568_DSP_IF_CTRL);
+
+	switch (id) {
+	case ROCKCHIP_VOP2_EP_HDMI0:
+		div &= ~RK3588_DSP_IF_EDP_HDMI0_DCLK_DIV;
+		div &= ~RK3588_DSP_IF_EDP_HDMI0_PCLK_DIV;
+		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_DCLK_DIV, if_dclk_div);
+		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_PCLK_DIV, if_pixclk_div);
+		die &= ~RK3588_SYS_DSP_INFACE_EN_EDP_HDMI0_MUX;
+		die |= RK3588_SYS_DSP_INFACE_EN_HDMI0 |
+			    FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_EDP_HDMI0_MUX, vp->id);
+		val = rk3588_get_hdmi_pol(polflags);
+		regmap_write(vop2->vop_grf, RK3588_GRF_VOP_CON2, HIWORD_UPDATE(1, 1, 1));
+		regmap_write(vop2->vo1_grf, RK3588_GRF_VO1_CON0, HIWORD_UPDATE(val, 6, 5));
+		break;
+	case ROCKCHIP_VOP2_EP_HDMI1:
+		div &= ~RK3588_DSP_IF_EDP_HDMI1_DCLK_DIV;
+		div &= ~RK3588_DSP_IF_EDP_HDMI1_PCLK_DIV;
+		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI1_DCLK_DIV, if_dclk_div);
+		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI1_PCLK_DIV, if_pixclk_div);
+		die &= ~RK3588_SYS_DSP_INFACE_EN_EDP_HDMI1_MUX;
+		die |= RK3588_SYS_DSP_INFACE_EN_HDMI1 |
+			    FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_EDP_HDMI1_MUX, vp->id);
+		val = rk3588_get_hdmi_pol(polflags);
+		regmap_write(vop2->vop_grf, RK3588_GRF_VOP_CON2, HIWORD_UPDATE(1, 4, 4));
+		regmap_write(vop2->vo1_grf, RK3588_GRF_VO1_CON0, HIWORD_UPDATE(val, 8, 7));
+		break;
+	case ROCKCHIP_VOP2_EP_EDP0:
+		div &= ~RK3588_DSP_IF_EDP_HDMI0_DCLK_DIV;
+		div &= ~RK3588_DSP_IF_EDP_HDMI0_PCLK_DIV;
+		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_DCLK_DIV, if_dclk_div);
+		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_PCLK_DIV, if_pixclk_div);
+		die &= ~RK3588_SYS_DSP_INFACE_EN_EDP_HDMI0_MUX;
+		die |= RK3588_SYS_DSP_INFACE_EN_EDP0 |
+			   FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_EDP_HDMI0_MUX, vp->id);
+		regmap_write(vop2->vop_grf, RK3588_GRF_VOP_CON2, HIWORD_UPDATE(1, 0, 0));
+		break;
+	case ROCKCHIP_VOP2_EP_EDP1:
+		div &= ~RK3588_DSP_IF_EDP_HDMI1_DCLK_DIV;
+		div &= ~RK3588_DSP_IF_EDP_HDMI1_PCLK_DIV;
+		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_DCLK_DIV, if_dclk_div);
+		div |= FIELD_PREP(RK3588_DSP_IF_EDP_HDMI0_PCLK_DIV, if_pixclk_div);
+		die &= ~RK3588_SYS_DSP_INFACE_EN_EDP_HDMI1_MUX;
+		die |= RK3588_SYS_DSP_INFACE_EN_EDP1 |
+			   FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_EDP_HDMI1_MUX, vp->id);
+		regmap_write(vop2->vop_grf, RK3588_GRF_VOP_CON2, HIWORD_UPDATE(1, 3, 3));
+		break;
+	case ROCKCHIP_VOP2_EP_MIPI0:
+		div &= ~RK3588_DSP_IF_MIPI0_PCLK_DIV;
+		div |= FIELD_PREP(RK3588_DSP_IF_MIPI0_PCLK_DIV, if_pixclk_div);
+		die &= ~RK3588_SYS_DSP_INFACE_EN_MIPI0_MUX;
+		val = rk3588_get_mipi_port_mux(vp->id);
+		die |= RK3588_SYS_DSP_INFACE_EN_MIPI0 |
+			   FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_MIPI0_MUX, !!val);
+		break;
+	case ROCKCHIP_VOP2_EP_MIPI1:
+		div &= ~RK3588_DSP_IF_MIPI1_PCLK_DIV;
+		div |= FIELD_PREP(RK3588_DSP_IF_MIPI1_PCLK_DIV, if_pixclk_div);
+		die &= ~RK3588_SYS_DSP_INFACE_EN_MIPI1_MUX;
+		val = rk3588_get_mipi_port_mux(vp->id);
+		die |= RK3588_SYS_DSP_INFACE_EN_MIPI1 |
+			   FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_MIPI1_MUX, val);
+		break;
+	case ROCKCHIP_VOP2_EP_DP0:
+		die &= ~RK3588_SYS_DSP_INFACE_EN_DP0_MUX;
+		die |= RK3588_SYS_DSP_INFACE_EN_DP0 |
+			   FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_DP0_MUX, vp->id);
+		dip &= ~RK3588_DSP_IF_POL__DP0_PIN_POL;
+		dip |= FIELD_PREP(RK3588_DSP_IF_POL__DP0_PIN_POL, polflags);
+		break;
+	case ROCKCHIP_VOP2_EP_DP1:
+		die &= ~RK3588_SYS_DSP_INFACE_EN_MIPI1_MUX;
+		die |= RK3588_SYS_DSP_INFACE_EN_MIPI1 |
+			   FIELD_PREP(RK3588_SYS_DSP_INFACE_EN_MIPI1_MUX, vp->id);
+		dip &= ~RK3588_DSP_IF_POL__DP1_PIN_POL;
+		dip |= FIELD_PREP(RK3588_DSP_IF_POL__DP1_PIN_POL, polflags);
+		break;
+	default:
+		drm_err(vop2->drm, "Invalid interface id %d on vp%d\n", id, vp->id);
+		return 0;
+	}
+
+	dip |= RK3568_DSP_IF_POL__CFG_DONE_IMD;
+
+	vop2_vp_write(vp, RK3588_VP_CLK_CTRL, vp_clk_div);
+	vop2_writel(vop2, RK3568_DSP_IF_EN, die);
+	vop2_writel(vop2, RK3568_DSP_IF_CTRL, div);
+	vop2_writel(vop2, RK3568_DSP_IF_POL, dip);
+
+	return clock;
+}
+
+static bool is_opaque(u16 alpha)
+{
+	return (alpha >> 8) == 0xff;
+}
+
+static void vop2_parse_alpha(struct vop2_alpha_config *alpha_config,
+			     struct vop2_alpha *alpha)
+{
+	int src_glb_alpha_en = is_opaque(alpha_config->src_glb_alpha_value) ? 0 : 1;
+	int dst_glb_alpha_en = is_opaque(alpha_config->dst_glb_alpha_value) ? 0 : 1;
+	int src_color_mode = alpha_config->src_premulti_en ?
+				ALPHA_SRC_PRE_MUL : ALPHA_SRC_NO_PRE_MUL;
+	int dst_color_mode = alpha_config->dst_premulti_en ?
+				ALPHA_SRC_PRE_MUL : ALPHA_SRC_NO_PRE_MUL;
+
+	alpha->src_color_ctrl.val = 0;
+	alpha->dst_color_ctrl.val = 0;
+	alpha->src_alpha_ctrl.val = 0;
+	alpha->dst_alpha_ctrl.val = 0;
+
+	if (!alpha_config->src_pixel_alpha_en)
+		alpha->src_color_ctrl.bits.blend_mode = ALPHA_GLOBAL;
+	else if (alpha_config->src_pixel_alpha_en && !src_glb_alpha_en)
+		alpha->src_color_ctrl.bits.blend_mode = ALPHA_PER_PIX;
+	else
+		alpha->src_color_ctrl.bits.blend_mode = ALPHA_PER_PIX_GLOBAL;
+
+	alpha->src_color_ctrl.bits.alpha_en = 1;
+
+	if (alpha->src_color_ctrl.bits.blend_mode == ALPHA_GLOBAL) {
+		alpha->src_color_ctrl.bits.color_mode = src_color_mode;
+		alpha->src_color_ctrl.bits.factor_mode = SRC_FAC_ALPHA_SRC_GLOBAL;
+	} else if (alpha->src_color_ctrl.bits.blend_mode == ALPHA_PER_PIX) {
+		alpha->src_color_ctrl.bits.color_mode = src_color_mode;
+		alpha->src_color_ctrl.bits.factor_mode = SRC_FAC_ALPHA_ONE;
+	} else {
+		alpha->src_color_ctrl.bits.color_mode = ALPHA_SRC_PRE_MUL;
+		alpha->src_color_ctrl.bits.factor_mode = SRC_FAC_ALPHA_SRC_GLOBAL;
+	}
+	alpha->src_color_ctrl.bits.glb_alpha = alpha_config->src_glb_alpha_value >> 8;
+	alpha->src_color_ctrl.bits.alpha_mode = ALPHA_STRAIGHT;
+	alpha->src_color_ctrl.bits.alpha_cal_mode = ALPHA_SATURATION;
+
+	alpha->dst_color_ctrl.bits.alpha_mode = ALPHA_STRAIGHT;
+	alpha->dst_color_ctrl.bits.alpha_cal_mode = ALPHA_SATURATION;
+	alpha->dst_color_ctrl.bits.blend_mode = ALPHA_GLOBAL;
+	alpha->dst_color_ctrl.bits.glb_alpha = alpha_config->dst_glb_alpha_value >> 8;
+	alpha->dst_color_ctrl.bits.color_mode = dst_color_mode;
+	alpha->dst_color_ctrl.bits.factor_mode = ALPHA_SRC_INVERSE;
+
+	alpha->src_alpha_ctrl.bits.alpha_mode = ALPHA_STRAIGHT;
+	alpha->src_alpha_ctrl.bits.blend_mode = alpha->src_color_ctrl.bits.blend_mode;
+	alpha->src_alpha_ctrl.bits.alpha_cal_mode = ALPHA_SATURATION;
+	alpha->src_alpha_ctrl.bits.factor_mode = ALPHA_ONE;
+
+	alpha->dst_alpha_ctrl.bits.alpha_mode = ALPHA_STRAIGHT;
+	if (alpha_config->dst_pixel_alpha_en && !dst_glb_alpha_en)
+		alpha->dst_alpha_ctrl.bits.blend_mode = ALPHA_PER_PIX;
+	else
+		alpha->dst_alpha_ctrl.bits.blend_mode = ALPHA_PER_PIX_GLOBAL;
+	alpha->dst_alpha_ctrl.bits.alpha_cal_mode = ALPHA_NO_SATURATION;
+	alpha->dst_alpha_ctrl.bits.factor_mode = ALPHA_SRC_INVERSE;
+}
+
+static int vop2_find_start_mixer_id_for_vp(struct vop2 *vop2, u8 port_id)
+{
+	struct vop2_video_port *vp;
+	int used_layer = 0;
+	int i;
+
+	for (i = 0; i < port_id; i++) {
+		vp = &vop2->vps[i];
+		used_layer += hweight32(vp->win_mask);
+	}
+
+	return used_layer;
+}
+
+static void vop2_setup_cluster_alpha(struct vop2 *vop2, struct vop2_win *main_win)
+{
+	u32 offset = (main_win->data->phys_id * 0x10);
+	struct vop2_alpha_config alpha_config;
+	struct vop2_alpha alpha;
+	struct drm_plane_state *bottom_win_pstate;
+	bool src_pixel_alpha_en = false;
+	u16 src_glb_alpha_val, dst_glb_alpha_val;
+	bool premulti_en = false;
+	bool swap = false;
+
+	/* At one win mode, win0 is dst/bottom win, and win1 is a all zero src/top win */
+	bottom_win_pstate = main_win->base.state;
+	src_glb_alpha_val = 0;
+	dst_glb_alpha_val = main_win->base.state->alpha;
+
+	if (!bottom_win_pstate->fb)
+		return;
+
+	alpha_config.src_premulti_en = premulti_en;
+	alpha_config.dst_premulti_en = false;
+	alpha_config.src_pixel_alpha_en = src_pixel_alpha_en;
+	alpha_config.dst_pixel_alpha_en = true; /* alpha value need transfer to next mix */
+	alpha_config.src_glb_alpha_value = src_glb_alpha_val;
+	alpha_config.dst_glb_alpha_value = dst_glb_alpha_val;
+	vop2_parse_alpha(&alpha_config, &alpha);
+
+	alpha.src_color_ctrl.bits.src_dst_swap = swap;
+	vop2_writel(vop2, RK3568_CLUSTER0_MIX_SRC_COLOR_CTRL + offset,
+		    alpha.src_color_ctrl.val);
+	vop2_writel(vop2, RK3568_CLUSTER0_MIX_DST_COLOR_CTRL + offset,
+		    alpha.dst_color_ctrl.val);
+	vop2_writel(vop2, RK3568_CLUSTER0_MIX_SRC_ALPHA_CTRL + offset,
+		    alpha.src_alpha_ctrl.val);
+	vop2_writel(vop2, RK3568_CLUSTER0_MIX_DST_ALPHA_CTRL + offset,
+		    alpha.dst_alpha_ctrl.val);
+}
+
+static void rk3568_vop2_setup_alpha(struct vop2_video_port *vp)
+{
+	struct vop2 *vop2 = vp->vop2;
+	struct drm_framebuffer *fb;
+	struct vop2_alpha_config alpha_config;
+	struct vop2_alpha alpha;
+	struct drm_plane *plane;
+	int pixel_alpha_en;
+	int premulti_en, gpremulti_en = 0;
+	int mixer_id;
+	u32 offset;
+	bool bottom_layer_alpha_en = false;
+	u32 dst_global_alpha = DRM_BLEND_ALPHA_OPAQUE;
+
+	mixer_id = vop2_find_start_mixer_id_for_vp(vop2, vp->id);
+	alpha_config.dst_pixel_alpha_en = true; /* alpha value need transfer to next mix */
+
+	drm_atomic_crtc_for_each_plane(plane, &vp->crtc) {
+		struct vop2_win *win = to_vop2_win(plane);
+
+		if (plane->state->normalized_zpos == 0 &&
+		    !is_opaque(plane->state->alpha) &&
+		    !vop2_cluster_window(win)) {
+			/*
+			 * If bottom layer have global alpha effect [except cluster layer,
+			 * because cluster have deal with bottom layer global alpha value
+			 * at cluster mix], bottom layer mix need deal with global alpha.
+			 */
+			bottom_layer_alpha_en = true;
+			dst_global_alpha = plane->state->alpha;
+		}
+	}
+
+	drm_atomic_crtc_for_each_plane(plane, &vp->crtc) {
+		struct vop2_win *win = to_vop2_win(plane);
+		int zpos = plane->state->normalized_zpos;
+
+		if (plane->state->pixel_blend_mode == DRM_MODE_BLEND_PREMULTI)
+			premulti_en = 1;
+		else
+			premulti_en = 0;
+
+		plane = &win->base;
+		fb = plane->state->fb;
+
+		pixel_alpha_en = fb->format->has_alpha;
+
+		alpha_config.src_premulti_en = premulti_en;
+
+		if (bottom_layer_alpha_en && zpos == 1) {
+			gpremulti_en = premulti_en;
+			/* Cd = Cs + (1 - As) * Cd * Agd */
+			alpha_config.dst_premulti_en = false;
+			alpha_config.src_pixel_alpha_en = pixel_alpha_en;
+			alpha_config.src_glb_alpha_value = plane->state->alpha;
+			alpha_config.dst_glb_alpha_value = dst_global_alpha;
+		} else if (vop2_cluster_window(win)) {
+			/* Mix output data only have pixel alpha */
+			alpha_config.dst_premulti_en = true;
+			alpha_config.src_pixel_alpha_en = true;
+			alpha_config.src_glb_alpha_value = DRM_BLEND_ALPHA_OPAQUE;
+			alpha_config.dst_glb_alpha_value = DRM_BLEND_ALPHA_OPAQUE;
+		} else {
+			/* Cd = Cs + (1 - As) * Cd */
+			alpha_config.dst_premulti_en = true;
+			alpha_config.src_pixel_alpha_en = pixel_alpha_en;
+			alpha_config.src_glb_alpha_value = plane->state->alpha;
+			alpha_config.dst_glb_alpha_value = DRM_BLEND_ALPHA_OPAQUE;
+		}
+
+		vop2_parse_alpha(&alpha_config, &alpha);
+
+		offset = (mixer_id + zpos - 1) * 0x10;
+		vop2_writel(vop2, RK3568_MIX0_SRC_COLOR_CTRL + offset,
+			    alpha.src_color_ctrl.val);
+		vop2_writel(vop2, RK3568_MIX0_DST_COLOR_CTRL + offset,
+			    alpha.dst_color_ctrl.val);
+		vop2_writel(vop2, RK3568_MIX0_SRC_ALPHA_CTRL + offset,
+			    alpha.src_alpha_ctrl.val);
+		vop2_writel(vop2, RK3568_MIX0_DST_ALPHA_CTRL + offset,
+			    alpha.dst_alpha_ctrl.val);
+	}
+
+	if (vp->id == 0) {
+		if (bottom_layer_alpha_en) {
+			/* Transfer pixel alpha to hdr mix */
+			alpha_config.src_premulti_en = gpremulti_en;
+			alpha_config.dst_premulti_en = true;
+			alpha_config.src_pixel_alpha_en = true;
+			alpha_config.src_glb_alpha_value = DRM_BLEND_ALPHA_OPAQUE;
+			alpha_config.dst_glb_alpha_value = DRM_BLEND_ALPHA_OPAQUE;
+			vop2_parse_alpha(&alpha_config, &alpha);
+
+			vop2_writel(vop2, RK3568_HDR0_SRC_COLOR_CTRL,
+				    alpha.src_color_ctrl.val);
+			vop2_writel(vop2, RK3568_HDR0_DST_COLOR_CTRL,
+				    alpha.dst_color_ctrl.val);
+			vop2_writel(vop2, RK3568_HDR0_SRC_ALPHA_CTRL,
+				    alpha.src_alpha_ctrl.val);
+			vop2_writel(vop2, RK3568_HDR0_DST_ALPHA_CTRL,
+				    alpha.dst_alpha_ctrl.val);
+		} else {
+			vop2_writel(vop2, RK3568_HDR0_SRC_COLOR_CTRL, 0);
+		}
+	}
+}
+
+static void rk3568_vop2_setup_layer_mixer(struct vop2_video_port *vp)
+{
+	struct vop2 *vop2 = vp->vop2;
+	struct drm_plane *plane;
+	u32 layer_sel = 0;
+	u32 port_sel;
+	unsigned int nlayer, ofs;
+	u32 ovl_ctrl;
+	int i;
+	struct vop2_video_port *vp0 = &vop2->vps[0];
+	struct vop2_video_port *vp1 = &vop2->vps[1];
+	struct vop2_video_port *vp2 = &vop2->vps[2];
+	struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(vp->crtc.state);
+
+	ovl_ctrl = vop2_readl(vop2, RK3568_OVL_CTRL);
+	ovl_ctrl |= RK3568_OVL_CTRL__LAYERSEL_REGDONE_IMD;
+	if (vcstate->yuv_overlay)
+		ovl_ctrl |= RK3568_OVL_CTRL__YUV_MODE(vp->id);
+	else
+		ovl_ctrl &= ~RK3568_OVL_CTRL__YUV_MODE(vp->id);
+
+	vop2_writel(vop2, RK3568_OVL_CTRL, ovl_ctrl);
+
+	port_sel = vop2_readl(vop2, RK3568_OVL_PORT_SEL);
+	port_sel &= RK3568_OVL_PORT_SEL__SEL_PORT;
+
+	if (vp0->nlayers)
+		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT0_MUX,
+				     vp0->nlayers - 1);
+	else
+		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT0_MUX, 8);
+
+	if (vp1->nlayers)
+		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT1_MUX,
+				     (vp0->nlayers + vp1->nlayers - 1));
+	else
+		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT1_MUX, 8);
+
+	if (vp2->nlayers)
+		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT2_MUX,
+			(vp2->nlayers + vp1->nlayers + vp0->nlayers - 1));
+	else
+		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT2_MUX, 8);
+
+	layer_sel = vop2_readl(vop2, RK3568_OVL_LAYER_SEL);
+
+	ofs = 0;
+	for (i = 0; i < vp->id; i++)
+		ofs += vop2->vps[i].nlayers;
+
+	nlayer = 0;
+	drm_atomic_crtc_for_each_plane(plane, &vp->crtc) {
+		struct vop2_win *win = to_vop2_win(plane);
+
+		switch (win->data->phys_id) {
+		case ROCKCHIP_VOP2_CLUSTER0:
+			port_sel &= ~RK3568_OVL_PORT_SEL__CLUSTER0;
+			port_sel |= FIELD_PREP(RK3568_OVL_PORT_SEL__CLUSTER0, vp->id);
+			break;
+		case ROCKCHIP_VOP2_CLUSTER1:
+			port_sel &= ~RK3568_OVL_PORT_SEL__CLUSTER1;
+			port_sel |= FIELD_PREP(RK3568_OVL_PORT_SEL__CLUSTER1, vp->id);
+			break;
+		case ROCKCHIP_VOP2_CLUSTER2:
+			port_sel &= ~RK3588_OVL_PORT_SEL__CLUSTER2;
+			port_sel |= FIELD_PREP(RK3588_OVL_PORT_SEL__CLUSTER2, vp->id);
+			break;
+		case ROCKCHIP_VOP2_CLUSTER3:
+			port_sel &= ~RK3588_OVL_PORT_SEL__CLUSTER3;
+			port_sel |= FIELD_PREP(RK3588_OVL_PORT_SEL__CLUSTER3, vp->id);
+			break;
+		case ROCKCHIP_VOP2_ESMART0:
+			port_sel &= ~RK3568_OVL_PORT_SEL__ESMART0;
+			port_sel |= FIELD_PREP(RK3568_OVL_PORT_SEL__ESMART0, vp->id);
+			break;
+		case ROCKCHIP_VOP2_ESMART1:
+			port_sel &= ~RK3568_OVL_PORT_SEL__ESMART1;
+			port_sel |= FIELD_PREP(RK3568_OVL_PORT_SEL__ESMART1, vp->id);
+			break;
+		case ROCKCHIP_VOP2_ESMART2:
+			port_sel &= ~RK3588_OVL_PORT_SEL__ESMART2;
+			port_sel |= FIELD_PREP(RK3588_OVL_PORT_SEL__ESMART2, vp->id);
+			break;
+		case ROCKCHIP_VOP2_ESMART3:
+			port_sel &= ~RK3588_OVL_PORT_SEL__ESMART3;
+			port_sel |= FIELD_PREP(RK3588_OVL_PORT_SEL__ESMART3, vp->id);
+			break;
+		case ROCKCHIP_VOP2_SMART0:
+			port_sel &= ~RK3568_OVL_PORT_SEL__SMART0;
+			port_sel |= FIELD_PREP(RK3568_OVL_PORT_SEL__SMART0, vp->id);
+			break;
+		case ROCKCHIP_VOP2_SMART1:
+			port_sel &= ~RK3568_OVL_PORT_SEL__SMART1;
+			port_sel |= FIELD_PREP(RK3568_OVL_PORT_SEL__SMART1, vp->id);
+			break;
+		}
+
+		layer_sel &= ~RK3568_OVL_LAYER_SEL__LAYER(plane->state->normalized_zpos + ofs,
+							  0x7);
+		layer_sel |= RK3568_OVL_LAYER_SEL__LAYER(plane->state->normalized_zpos + ofs,
+							 win->data->layer_sel_id[vp->id]);
+		nlayer++;
+	}
+
+	/* configure unused layers to 0x5 (reserved) */
+	for (; nlayer < vp->nlayers; nlayer++) {
+		layer_sel &= ~RK3568_OVL_LAYER_SEL__LAYER(nlayer + ofs, 0x7);
+		layer_sel |= RK3568_OVL_LAYER_SEL__LAYER(nlayer + ofs, 5);
+	}
+
+	vop2_writel(vop2, RK3568_OVL_LAYER_SEL, layer_sel);
+	vop2_writel(vop2, RK3568_OVL_PORT_SEL, port_sel);
+}
+
+static void rk3568_vop2_setup_dly_for_windows(struct vop2_video_port *vp)
+{
+	struct vop2 *vop2 = vp->vop2;
+	struct vop2_win *win;
+	int i = 0;
+	u32 cdly = 0, sdly = 0;
+
+	for (i = 0; i < vop2->data->win_size; i++) {
+		u32 dly;
+
+		win = &vop2->win[i];
+		dly = win->delay;
+
+		switch (win->data->phys_id) {
+		case ROCKCHIP_VOP2_CLUSTER0:
+			cdly |= FIELD_PREP(RK3568_CLUSTER_DLY_NUM__CLUSTER0_0, dly);
+			cdly |= FIELD_PREP(RK3568_CLUSTER_DLY_NUM__CLUSTER0_1, dly);
+			break;
+		case ROCKCHIP_VOP2_CLUSTER1:
+			cdly |= FIELD_PREP(RK3568_CLUSTER_DLY_NUM__CLUSTER1_0, dly);
+			cdly |= FIELD_PREP(RK3568_CLUSTER_DLY_NUM__CLUSTER1_1, dly);
+			break;
+		case ROCKCHIP_VOP2_ESMART0:
+			sdly |= FIELD_PREP(RK3568_SMART_DLY_NUM__ESMART0, dly);
+			break;
+		case ROCKCHIP_VOP2_ESMART1:
+			sdly |= FIELD_PREP(RK3568_SMART_DLY_NUM__ESMART1, dly);
+			break;
+		case ROCKCHIP_VOP2_SMART0:
+			sdly |= FIELD_PREP(RK3568_SMART_DLY_NUM__SMART0, dly);
+			break;
+		case ROCKCHIP_VOP2_SMART1:
+			sdly |= FIELD_PREP(RK3568_SMART_DLY_NUM__SMART1, dly);
+			break;
+		}
+	}
+
+	vop2_writel(vop2, RK3568_CLUSTER_DLY_NUM, cdly);
+	vop2_writel(vop2, RK3568_SMART_DLY_NUM, sdly);
+}
+
+static void rk3568_vop2_setup_overlay(struct vop2_video_port *vp)
+{
+	struct vop2 *vop2 = vp->vop2;
+	struct drm_crtc *crtc = &vp->crtc;
+	struct drm_plane *plane;
+
+	vp->win_mask = 0;
+
+	drm_atomic_crtc_for_each_plane(plane, crtc) {
+		struct vop2_win *win = to_vop2_win(plane);
+
+		win->delay = win->data->dly[VOP2_DLY_MODE_DEFAULT];
+
+		vp->win_mask |= BIT(win->data->phys_id);
+
+		if (vop2_cluster_window(win))
+			vop2_setup_cluster_alpha(vop2, win);
+	}
+
+	if (!vp->win_mask)
+		return;
+
+	rk3568_vop2_setup_layer_mixer(vp);
+	rk3568_vop2_setup_alpha(vp);
+	rk3568_vop2_setup_dly_for_windows(vp);
+}
+
+static void rk3568_vop2_setup_bg_dly(struct vop2_video_port *vp)
+{
+	struct drm_crtc *crtc = &vp->crtc;
+	struct drm_display_mode *mode = &crtc->state->adjusted_mode;
+	u16 hdisplay = mode->crtc_hdisplay;
+	u16 hsync_len = mode->crtc_hsync_end - mode->crtc_hsync_start;
+	u32 bg_dly;
+	u32 pre_scan_dly;
+
+	bg_dly = vp->data->pre_scan_max_dly[3];
+	vop2_writel(vp->vop2, RK3568_VP_BG_MIX_CTRL(vp->id),
+		    FIELD_PREP(RK3568_VP_BG_MIX_CTRL__BG_DLY, bg_dly));
+
+	pre_scan_dly = ((bg_dly + (hdisplay >> 1) - 1) << 16) | hsync_len;
+	vop2_vp_write(vp, RK3568_VP_PRE_SCAN_HTIMING, pre_scan_dly);
+}
+
+static const struct vop2_ops rk3568_vop_ops = {
+	.setup_intf_mux = rk3568_set_intf_mux,
+	.setup_bg_dly = rk3568_vop2_setup_bg_dly,
+	.setup_overlay = rk3568_vop2_setup_overlay,
+};
+
+static const struct vop2_ops rk3588_vop_ops = {
+	.setup_intf_mux = rk3588_set_intf_mux,
+	.setup_bg_dly = rk3568_vop2_setup_bg_dly,
+	.setup_overlay = rk3568_vop2_setup_overlay,
+};
+
 static const struct vop2_data rk3566_vop = {
 	.feature = VOP2_FEATURE_HAS_SYS_GRF,
 	.nr_vps = 3,
@@ -632,8 +1557,13 @@ static const struct vop2_data rk3566_vop = {
 	.vp = rk3568_vop_video_ports,
 	.win = rk3568_vop_win_data,
 	.win_size = ARRAY_SIZE(rk3568_vop_win_data),
+	.cluster_reg = rk3568_vop_cluster_regs,
+	.nr_cluster_regs = ARRAY_SIZE(rk3568_vop_cluster_regs),
+	.smart_reg = rk3568_vop_smart_regs,
+	.nr_smart_regs = ARRAY_SIZE(rk3568_vop_smart_regs),
 	.regs_dump = rk3568_regs_dump,
 	.regs_dump_size = ARRAY_SIZE(rk3568_regs_dump),
+	.ops = &rk3568_vop_ops,
 	.soc_id = 3566,
 };
 
@@ -645,8 +1575,13 @@ static const struct vop2_data rk3568_vop = {
 	.vp = rk3568_vop_video_ports,
 	.win = rk3568_vop_win_data,
 	.win_size = ARRAY_SIZE(rk3568_vop_win_data),
+	.cluster_reg = rk3568_vop_cluster_regs,
+	.nr_cluster_regs = ARRAY_SIZE(rk3568_vop_cluster_regs),
+	.smart_reg = rk3568_vop_smart_regs,
+	.nr_smart_regs = ARRAY_SIZE(rk3568_vop_smart_regs),
 	.regs_dump = rk3568_regs_dump,
 	.regs_dump_size = ARRAY_SIZE(rk3568_regs_dump),
+	.ops = &rk3568_vop_ops,
 	.soc_id = 3568,
 };
 
@@ -659,8 +1594,13 @@ static const struct vop2_data rk3588_vop = {
 	.vp = rk3588_vop_video_ports,
 	.win = rk3588_vop_win_data,
 	.win_size = ARRAY_SIZE(rk3588_vop_win_data),
+	.cluster_reg = rk3568_vop_cluster_regs,
+	.nr_cluster_regs = ARRAY_SIZE(rk3568_vop_cluster_regs),
+	.smart_reg = rk3568_vop_smart_regs,
+	.nr_smart_regs = ARRAY_SIZE(rk3568_vop_smart_regs),
 	.regs_dump = rk3588_regs_dump,
 	.regs_dump_size = ARRAY_SIZE(rk3588_regs_dump),
+	.ops = &rk3588_vop_ops,
 	.soc_id = 3588,
 };
 
-- 
2.34.1


