Return-Path: <devicetree+bounces-119498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D99629BE98A
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 13:35:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 98ED328477D
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 12:35:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B1BC1E0DB1;
	Wed,  6 Nov 2024 12:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="fyO7NeNG"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A88D41DFDB3;
	Wed,  6 Nov 2024 12:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730896491; cv=none; b=RQs6as0qemcYj8AxxFCXuRwOTiu776P1m1WW8NDbPN1HKgjrblHON/4wX7YiYBK+9o9Kvicze95vojbkO4b8shHB42Fb/3jQOFlV5l8sm22H/y8osvq9+G/EpcvnEgoXKshLwcREmO+CSyGoQC/7zdgaNJ8QM4JkQk2LG4Hs0Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730896491; c=relaxed/simple;
	bh=n8L7xtvhWJiyWrDaQZfl3Xa6d/4gObpifADLJmqtseQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=B7Rp9P3rA75H9DFMToU3Wq7yC8n1t/uhh4p74AsftRpsXrKXYDJC33NnpDCpYjUlA4cqorhipCX/GP2xU9PYz2XwhTMNLeP1D0EwRC9JVsOxmsPLNIp5AuzMqaMcqJt9Z+lPwtwLx4yPP8/Yp/3hIvOXz0l4mOzuK6wafkkHgHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=fyO7NeNG; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=7/ZEDihFIX308g1CuDZfXMZzFY8GhxEmWOvERKr2jmM=; b=fyO7NeNG3WGSWqFqO6oJtRxoLu
	fIM3XUWdLsZxUx79QefhPrTgjZ77DG/kHQoVJzkJl/qFxEfmHxu22SI23BPpkcnRuZIj576uF7kmw
	fPPCrsBv65rn4er54LJx0lZVvKN8BCk0EDgA4JLHnKZ2FRB6P39KV52AdDAVhNTbdaBQlwvDVVUN4
	0eI9kMb8aPkpcl6ae9hcuE7Gk4+36eve0XOjyzZChN4NvdTEbJolVVEY3vN4OcUGDLhXpI8Eo/LRC
	ifI9ar3CvOxQtehiFUncrwLpuSp1a7Y/PVDWtYK/TSaJIjXhjumdnsZRySZJBMLQcxtWdLbgCxA4F
	9vzsHHVA==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t8fEq-00076s-9k; Wed, 06 Nov 2024 13:34:20 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	quentin.schulz@cherry.de,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH 3/3] drm/rockchip: Add MIPI DSI2 glue driver for RK3588
Date: Wed,  6 Nov 2024 13:33:04 +0100
Message-ID: <20241106123304.422854-4-heiko@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241106123304.422854-1-heiko@sntech.de>
References: <20241106123304.422854-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Heiko Stuebner <heiko.stuebner@cherry.de>

This adds the glue code for the MIPI DSI2 bridge on Rockchip SoCs and
enables its use on the RK3588.

Right now the DSI2 controller is always paired with a DC-phy based on a
Samsung IP, so the interface values are set statically for now.
This stays true for the upcoming RK3576 as well.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 drivers/gpu/drm/rockchip/Kconfig              |  10 +
 drivers/gpu/drm/rockchip/Makefile             |   1 +
 .../gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c  | 524 ++++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |   2 +
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |   1 +
 5 files changed, 538 insertions(+)
 create mode 100644 drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 448fadd4ba15..99d4b260de85 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -10,6 +10,7 @@ config DRM_ROCKCHIP
 	select DRM_DW_HDMI if ROCKCHIP_DW_HDMI
 	select DRM_DW_HDMI_QP if ROCKCHIP_DW_HDMI_QP
 	select DRM_DW_MIPI_DSI if ROCKCHIP_DW_MIPI_DSI
+	select DRM_DW_MIPI_DSI2 if ROCKCHIP_DW_MIPI_DSI2
 	select GENERIC_PHY if ROCKCHIP_DW_MIPI_DSI
 	select GENERIC_PHY_MIPI_DPHY if ROCKCHIP_DW_MIPI_DSI
 	select SND_SOC_HDMI_CODEC if ROCKCHIP_CDN_DP && SND_SOC
@@ -81,6 +82,15 @@ config ROCKCHIP_DW_MIPI_DSI
 	  enable MIPI DSI on RK3288 or RK3399 based SoC, you should
 	  select this option.
 
+config ROCKCHIP_DW_MIPI_DSI2
+	bool "Rockchip specific extensions for Synopsys DW MIPI DSI"
+	select GENERIC_PHY_MIPI_DPHY
+	help
+	  This selects support for Rockchip SoC specific extensions
+	  for the Synopsys DesignWare dsi driver. If you want to
+	  enable MIPI DSI on RK3288 or RK3399 based SoC, you should
+	  select this option.
+
 config ROCKCHIP_INNO_HDMI
 	bool "Rockchip specific extensions for Innosilicon HDMI"
 	select DRM_DISPLAY_HDMI_HELPER
diff --git a/drivers/gpu/drm/rockchip/Makefile b/drivers/gpu/drm/rockchip/Makefile
index 3eab662a5a1d..2b867cebbc12 100644
--- a/drivers/gpu/drm/rockchip/Makefile
+++ b/drivers/gpu/drm/rockchip/Makefile
@@ -13,6 +13,7 @@ rockchipdrm-$(CONFIG_ROCKCHIP_CDN_DP) += cdn-dp-core.o cdn-dp-reg.o
 rockchipdrm-$(CONFIG_ROCKCHIP_DW_HDMI) += dw_hdmi-rockchip.o
 rockchipdrm-$(CONFIG_ROCKCHIP_DW_HDMI_QP) += dw_hdmi_qp-rockchip.o
 rockchipdrm-$(CONFIG_ROCKCHIP_DW_MIPI_DSI) += dw-mipi-dsi-rockchip.o
+rockchipdrm-$(CONFIG_ROCKCHIP_DW_MIPI_DSI2) += dw-mipi-dsi2-rockchip.o
 rockchipdrm-$(CONFIG_ROCKCHIP_INNO_HDMI) += inno_hdmi.o
 rockchipdrm-$(CONFIG_ROCKCHIP_LVDS) += rockchip_lvds.o
 rockchipdrm-$(CONFIG_ROCKCHIP_RGB) += rockchip_rgb.o
diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c
new file mode 100644
index 000000000000..42a7a80e2138
--- /dev/null
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c
@@ -0,0 +1,524 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2024 Rockchip Electronics Co.Ltd
+ * Author:
+ *      Guochun Huang <hero.huang@rock-chips.com>
+ *      Heiko Stuebner <heiko.stuebner@cherry.de>
+ */
+
+#include <linux/clk.h>
+#include <linux/component.h>
+#include <linux/gpio.h>
+#include <linux/iopoll.h>
+#include <linux/math64.h>
+#include <linux/media-bus-format.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/of_gpio.h>
+#include <linux/of_platform.h>
+#include <linux/pm_runtime.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/reset.h>
+#include <linux/mfd/syscon.h>
+#include <linux/phy/phy.h>
+
+#include <drm/bridge/dw_mipi_dsi2.h>
+
+#include <drm/display/drm_dsc.h>
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_crtc.h>
+#include <drm/drm_crtc_helper.h>
+#include <drm/drm_mipi_dsi.h>
+#include <drm/drm_of.h>
+#include <drm/drm_panel.h>
+#include <video/mipi_display.h>
+#include <video/videomode.h>
+#include <drm/drm_connector.h>
+#include <drm/drm_probe_helper.h>
+#include <drm/drm_simple_kms_helper.h>
+
+#include <uapi/linux/videodev2.h>
+
+#include "rockchip_drm_drv.h"
+#include "rockchip_drm_vop.h"
+
+#define PSEC_PER_SEC			1000000000000LL
+
+struct dsigrf_reg {
+	u16 offset;
+	u16 lsb;
+	u16 msb;
+};
+
+enum grf_reg_fields {
+	TXREQCLKHS_EN,
+	GATING_EN,
+	IPI_SHUTDN,
+	IPI_COLORM,
+	IPI_COLOR_DEPTH,
+	IPI_FORMAT,
+	MAX_FIELDS,
+};
+
+#define IPI_DEPTH_5_6_5_BITS		0x02
+#define IPI_DEPTH_6_BITS		0x03
+#define IPI_DEPTH_8_BITS		0x05
+#define IPI_DEPTH_10_BITS		0x06
+
+struct rockchip_dw_dsi2_chip_data {
+	u32 reg;
+	const struct dsigrf_reg *grf_regs;
+	unsigned long long max_bit_rate_per_lane;
+};
+
+struct dw_mipi_dsi2_rockchip {
+	struct device *dev;
+	struct rockchip_encoder encoder;
+	void __iomem *base;
+	struct clk *pclk;
+	struct clk *sys_clk;
+
+	unsigned int lane_mbps; /* per lane */
+	u32 format;
+
+	struct regmap *grf_regmap;
+	struct phy *phy;
+	union phy_configure_opts phy_opts;
+
+	struct dw_mipi_dsi2 *dmd;
+	struct dw_mipi_dsi2_plat_data pdata;
+	const struct rockchip_dw_dsi2_chip_data *cdata;
+};
+
+static inline struct dw_mipi_dsi2_rockchip *to_dsi2(struct drm_encoder *encoder)
+{
+	struct rockchip_encoder *rkencoder = to_rockchip_encoder(encoder);
+
+	return container_of(rkencoder, struct dw_mipi_dsi2_rockchip, encoder);
+}
+
+static void grf_field_write(struct dw_mipi_dsi2_rockchip *dsi2, enum grf_reg_fields index,
+			    unsigned int val)
+{
+	const struct dsigrf_reg *field = &dsi2->cdata->grf_regs[index];
+
+	if (!field)
+		return;
+
+	regmap_write(dsi2->grf_regmap, field->offset,
+		     (val << field->lsb) | (GENMASK(field->msb, field->lsb) << 16));
+}
+
+static int dw_mipi_dsi2_phy_init(void *priv_data)
+{
+	return 0;
+}
+
+static void dw_mipi_dsi2_phy_power_on(void *priv_data)
+{
+	struct dw_mipi_dsi2_rockchip *dsi2 = priv_data;
+	int ret;
+
+	ret = phy_set_mode(dsi2->phy, PHY_MODE_MIPI_DPHY);
+	if (ret) {
+		dev_err(dsi2->dev, "Failed to set phy mode: %d\n", ret);
+		return;
+	}
+
+	phy_configure(dsi2->phy, &dsi2->phy_opts);
+	phy_power_on(dsi2->phy);
+}
+
+static void dw_mipi_dsi2_phy_power_off(void *priv_data)
+{
+	struct dw_mipi_dsi2_rockchip *dsi2 = priv_data;
+
+	phy_power_off(dsi2->phy);
+}
+
+static int
+dw_mipi_dsi2_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
+			   unsigned long mode_flags, u32 lanes, u32 format,
+			   unsigned int *lane_mbps)
+{
+	struct dw_mipi_dsi2_rockchip *dsi2 = priv_data;
+	u64 max_lane_rate, target_phyclk;
+	unsigned int lane_rate_kbps;
+	int bpp;
+
+	max_lane_rate = dsi2->cdata->max_bit_rate_per_lane;
+
+	dsi2->format = format;
+	bpp = mipi_dsi_pixel_format_to_bpp(format);
+	if (bpp < 0) {
+		dev_err(dsi2->dev, "failed to get bpp for pixel format %d\n", format);
+		return bpp;
+	}
+
+	lane_rate_kbps = mode->clock * bpp / lanes;
+
+	/*
+	 * Set BW a little larger only in video burst mode in
+	 * consideration of the protocol overhead and HS mode
+	 * switching to BLLP mode, take 1 / 0.9, since Mbps must
+	 * big than bandwidth of RGB
+	 */
+	if (mode_flags & MIPI_DSI_MODE_VIDEO_BURST)
+		lane_rate_kbps = (lane_rate_kbps * 10) / 9;
+
+	if (lane_rate_kbps > max_lane_rate) {
+		dev_err(dsi2->dev, "DPHY clock frequency is out of range\n");
+		return -ERANGE;
+	}
+
+	dsi2->lane_mbps = lane_rate_kbps / 1000;
+	*lane_mbps = dsi2->lane_mbps;
+
+	if (dsi2->phy) {
+		target_phyclk = DIV_ROUND_CLOSEST_ULL(lane_rate_kbps * lanes * 1000, bpp);
+		phy_mipi_dphy_get_default_config(target_phyclk, bpp, lanes,
+						 &dsi2->phy_opts.mipi_dphy);
+	}
+
+	return 0;
+}
+
+static void dw_mipi_dsi2_phy_get_iface(void *priv_data, struct dw_mipi_dsi2_phy_iface *iface)
+{
+	/* PPI width is fixed to 16 bits in DCPHY */
+	iface->ppi_width = 16;
+	iface->phy_type = DW_MIPI_DSI2_DPHY;
+}
+
+static int
+dw_mipi_dsi2_phy_get_timing(void *priv_data, unsigned int lane_mbps,
+			    struct dw_mipi_dsi2_phy_timing *timing)
+{
+	struct dw_mipi_dsi2_rockchip *dsi2 = priv_data;
+	struct phy_configure_opts_mipi_dphy *cfg = &dsi2->phy_opts.mipi_dphy;
+	unsigned long long tmp, ui;
+	unsigned long long hstx_clk;
+
+	hstx_clk = DIV_ROUND_CLOSEST_ULL(dsi2->lane_mbps * USEC_PER_SEC, 16);
+
+	ui = ALIGN(PSEC_PER_SEC, hstx_clk);
+	do_div(ui, hstx_clk);
+
+	/* PHY_LP2HS_TIME = (TLPX + THS-PREPARE + THS-ZERO) / Tphy_hstx_clk */
+	tmp = cfg->lpx + cfg->hs_prepare + cfg->hs_zero;
+	tmp = DIV_ROUND_CLOSEST_ULL(tmp << 16, ui);
+	timing->data_lp2hs = tmp;
+
+	/* PHY_HS2LP_TIME = (THS-TRAIL + THS-EXIT) / Tphy_hstx_clk */
+	tmp = cfg->hs_trail + cfg->hs_exit;
+	tmp = DIV_ROUND_CLOSEST_ULL(tmp << 16, ui);
+	timing->data_hs2lp = tmp;
+
+	return 0;
+}
+
+static const struct dw_mipi_dsi2_phy_ops dw_mipi_dsi2_rockchip_phy_ops = {
+	.init = dw_mipi_dsi2_phy_init,
+	.power_on = dw_mipi_dsi2_phy_power_on,
+	.power_off = dw_mipi_dsi2_phy_power_off,
+	.get_interface = dw_mipi_dsi2_phy_get_iface,
+	.get_lane_mbps = dw_mipi_dsi2_get_lane_mbps,
+	.get_timing = dw_mipi_dsi2_phy_get_timing,
+};
+
+static void dw_mipi_dsi2_encoder_atomic_enable(struct drm_encoder *encoder,
+					       struct drm_atomic_state *state)
+{
+	struct dw_mipi_dsi2_rockchip *dsi2 = to_dsi2(encoder);
+	u32 color_depth;
+
+	switch (dsi2->format) {
+	case MIPI_DSI_FMT_RGB666:
+	case MIPI_DSI_FMT_RGB666_PACKED:
+		color_depth = IPI_DEPTH_6_BITS;
+		break;
+	case MIPI_DSI_FMT_RGB565:
+		color_depth = IPI_DEPTH_5_6_5_BITS;
+		break;
+	case MIPI_DSI_FMT_RGB888:
+		color_depth = IPI_DEPTH_8_BITS;
+		break;
+	default:
+		/* Should've been caught by atomic_check */
+		WARN_ON(1);
+		return;
+	}
+
+	grf_field_write(dsi2, IPI_COLOR_DEPTH, color_depth);
+}
+
+static int
+dw_mipi_dsi2_encoder_atomic_check(struct drm_encoder *encoder,
+				  struct drm_crtc_state *crtc_state,
+				  struct drm_connector_state *conn_state)
+{
+	struct rockchip_crtc_state *s = to_rockchip_crtc_state(crtc_state);
+	struct dw_mipi_dsi2_rockchip *dsi2 = to_dsi2(encoder);
+	struct drm_connector *connector = conn_state->connector;
+	struct drm_display_info *info = &connector->display_info;
+
+	switch (dsi2->format) {
+	case MIPI_DSI_FMT_RGB666:
+	case MIPI_DSI_FMT_RGB666_PACKED:
+		s->output_mode = ROCKCHIP_OUT_MODE_P666;
+		break;
+	case MIPI_DSI_FMT_RGB565:
+		s->output_mode = ROCKCHIP_OUT_MODE_P565;
+		break;
+	case MIPI_DSI_FMT_RGB888:
+		s->output_mode = ROCKCHIP_OUT_MODE_P888;
+		break;
+	default:
+		WARN_ON(1);
+		return -EINVAL;
+	}
+
+	if (info->num_bus_formats)
+		s->bus_format = info->bus_formats[0];
+	else
+		s->bus_format = MEDIA_BUS_FMT_RGB888_1X24;
+
+	s->output_type = DRM_MODE_CONNECTOR_DSI;
+	s->bus_flags = info->bus_flags;
+	s->color_space = V4L2_COLORSPACE_DEFAULT;
+
+	return 0;
+}
+
+static const struct drm_encoder_helper_funcs
+dw_mipi_dsi2_encoder_helper_funcs = {
+	.atomic_enable = dw_mipi_dsi2_encoder_atomic_enable,
+	.atomic_check = dw_mipi_dsi2_encoder_atomic_check,
+};
+
+static int rockchip_dsi2_drm_create_encoder(struct dw_mipi_dsi2_rockchip *dsi2,
+					    struct drm_device *drm_dev)
+{
+	struct drm_encoder *encoder = &dsi2->encoder.encoder;
+	int ret;
+
+	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev,
+							     dsi2->dev->of_node);
+
+	ret = drm_simple_encoder_init(drm_dev, encoder, DRM_MODE_ENCODER_DSI);
+	if (ret) {
+		dev_err(dsi2->dev, "Failed to initialize encoder with drm\n");
+		return ret;
+	}
+
+	drm_encoder_helper_add(encoder, &dw_mipi_dsi2_encoder_helper_funcs);
+
+	return 0;
+}
+
+static int dw_mipi_dsi2_rockchip_bind(struct device *dev, struct device *master,
+				      void *data)
+{
+	struct dw_mipi_dsi2_rockchip *dsi2 = dev_get_drvdata(dev);
+	struct drm_device *drm_dev = data;
+	int ret;
+
+	ret = rockchip_dsi2_drm_create_encoder(dsi2, drm_dev);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to create drm encoder\n");
+
+	rockchip_drm_encoder_set_crtc_endpoint_id(&dsi2->encoder,
+						  dev->of_node, 0, 0);
+
+	ret = dw_mipi_dsi2_bind(dsi2->dmd, &dsi2->encoder.encoder);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to bind\n");
+
+	return 0;
+}
+
+static void dw_mipi_dsi2_rockchip_unbind(struct device *dev, struct device *master,
+					 void *data)
+{
+	struct dw_mipi_dsi2_rockchip *dsi2 = dev_get_drvdata(dev);
+
+	dw_mipi_dsi2_unbind(dsi2->dmd);
+}
+
+static const struct component_ops dw_mipi_dsi2_rockchip_ops = {
+	.bind	= dw_mipi_dsi2_rockchip_bind,
+	.unbind	= dw_mipi_dsi2_rockchip_unbind,
+};
+
+static int dw_mipi_dsi2_rockchip_host_attach(void *priv_data,
+					     struct mipi_dsi_device *device)
+{
+	struct dw_mipi_dsi2_rockchip *dsi2 = priv_data;
+	int ret;
+
+	ret = component_add(dsi2->dev, &dw_mipi_dsi2_rockchip_ops);
+	if (ret)
+		return dev_err_probe(dsi2->dev, ret, "Failed to register component\n");
+
+	return 0;
+}
+
+static int dw_mipi_dsi2_rockchip_host_detach(void *priv_data,
+					     struct mipi_dsi_device *device)
+{
+	struct dw_mipi_dsi2_rockchip *dsi2 = priv_data;
+
+	component_del(dsi2->dev, &dw_mipi_dsi2_rockchip_ops);
+
+	return 0;
+}
+
+static const struct dw_mipi_dsi2_host_ops dw_mipi_dsi2_rockchip_host_ops = {
+	.attach = dw_mipi_dsi2_rockchip_host_attach,
+	.detach = dw_mipi_dsi2_rockchip_host_detach,
+};
+
+static __maybe_unused int dw_mipi_dsi2_runtime_suspend(struct device *dev)
+{
+	struct dw_mipi_dsi2_rockchip *dsi2 = dev_get_drvdata(dev);
+
+	clk_disable_unprepare(dsi2->pclk);
+	clk_disable_unprepare(dsi2->sys_clk);
+
+	return 0;
+}
+
+static __maybe_unused int dw_mipi_dsi2_runtime_resume(struct device *dev)
+{
+	struct dw_mipi_dsi2_rockchip *dsi2 = dev_get_drvdata(dev);
+
+	clk_prepare_enable(dsi2->pclk);
+	clk_prepare_enable(dsi2->sys_clk);
+
+	return 0;
+}
+
+static const struct dev_pm_ops dw_mipi_dsi2_rockchip_pm_ops = {
+	SET_RUNTIME_PM_OPS(dw_mipi_dsi2_runtime_suspend,
+			   dw_mipi_dsi2_runtime_resume, NULL)
+};
+
+static int dw_mipi_dsi2_rockchip_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	const struct rockchip_dw_dsi2_chip_data *cdata =
+						of_device_get_match_data(dev);
+	struct dw_mipi_dsi2_rockchip *dsi2;
+	struct resource *res;
+	int i;
+
+	dsi2 = devm_kzalloc(dev, sizeof(*dsi2), GFP_KERNEL);
+	if (!dsi2)
+		return -ENOMEM;
+
+	dsi2->base = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
+	if (IS_ERR(dsi2->base))
+		return dev_err_probe(dev, PTR_ERR(dsi2->base), "Unable to get dsi registers\n");
+
+	i = 0;
+	while (cdata[i].reg) {
+		if (cdata[i].reg == res->start) {
+			dsi2->cdata = &cdata[i];
+			break;
+		}
+
+		i++;
+	}
+
+	if (!dsi2->cdata)
+		return dev_err_probe(dev, -EINVAL, "No dsi-config for %s node\n", np->name);
+
+	dsi2->pclk = devm_clk_get(dev, "pclk");
+	if (IS_ERR(dsi2->pclk))
+		return dev_err_probe(dev, PTR_ERR(dsi2->pclk), "Unable to get pclk\n");
+
+	dsi2->sys_clk = devm_clk_get(dev, "sys");
+	if (IS_ERR(dsi2->sys_clk))
+		return dev_err_probe(dev, PTR_ERR(dsi2->sys_clk), "Unable to get sys_clk\n");
+
+	dsi2->grf_regmap = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,grf");
+	if (IS_ERR(dsi2->grf_regmap))
+		return dev_err_probe(dsi2->dev, PTR_ERR(dsi2->grf_regmap), "Unable to get grf\n");
+
+	dsi2->phy = devm_phy_optional_get(dev, "dcphy");
+	if (IS_ERR(dsi2->phy))
+		return dev_err_probe(dev, PTR_ERR(dsi2->phy), "failed to get mipi phy\n");
+
+	dsi2->dev = dev;
+	dsi2->pdata.base = dsi2->base;
+	dsi2->pdata.max_data_lanes = 4;
+	dsi2->pdata.phy_ops = &dw_mipi_dsi2_rockchip_phy_ops;
+	dsi2->pdata.host_ops = &dw_mipi_dsi2_rockchip_host_ops;
+	dsi2->pdata.priv_data = dsi2;
+	platform_set_drvdata(pdev, dsi2);
+
+	dsi2->dmd = dw_mipi_dsi2_probe(pdev, &dsi2->pdata);
+	if (IS_ERR(dsi2->dmd))
+		return dev_err_probe(dev, PTR_ERR(dsi2->dmd), "Failed to probe dw_mipi_dsi2\n");
+
+	return 0;
+}
+
+static void dw_mipi_dsi2_rockchip_remove(struct platform_device *pdev)
+{
+	struct dw_mipi_dsi2_rockchip *dsi2 = platform_get_drvdata(pdev);
+
+	dw_mipi_dsi2_remove(dsi2->dmd);
+}
+
+static const struct dsigrf_reg rk3588_dsi0_grf_reg_fields[MAX_FIELDS] = {
+	[TXREQCLKHS_EN]		= { 0x0000, 11, 11 },
+	[GATING_EN]		= { 0x0000, 10, 10 },
+	[IPI_SHUTDN]		= { 0x0000,  9,  9 },
+	[IPI_COLORM]		= { 0x0000,  8,  8 },
+	[IPI_COLOR_DEPTH]	= { 0x0000,  4,  7 },
+	[IPI_FORMAT]		= { 0x0000,  0,  3 },
+};
+
+static const struct dsigrf_reg rk3588_dsi1_grf_reg_fields[MAX_FIELDS] = {
+	[TXREQCLKHS_EN]		= { 0x0004, 11, 11 },
+	[GATING_EN]		= { 0x0004, 10, 10 },
+	[IPI_SHUTDN]		= { 0x0004,  9,  9 },
+	[IPI_COLORM]		= { 0x0004,  8,  8 },
+	[IPI_COLOR_DEPTH]	= { 0x0004,  4,  7 },
+	[IPI_FORMAT]		= { 0x0004,  0,  3 },
+};
+
+static const struct rockchip_dw_dsi2_chip_data rk3588_chip_data[] = {
+	{
+		.reg = 0xfde20000,
+		.grf_regs = rk3588_dsi0_grf_reg_fields,
+		.max_bit_rate_per_lane = 4500000ULL,
+	},
+	{
+		.reg = 0xfde30000,
+		.grf_regs = rk3588_dsi1_grf_reg_fields,
+		.max_bit_rate_per_lane = 4500000ULL,
+	}
+};
+
+static const struct of_device_id dw_mipi_dsi2_rockchip_dt_ids[] = {
+	{
+		.compatible = "rockchip,rk3588-mipi-dsi2",
+		.data = &rk3588_chip_data,
+	},
+	{}
+};
+MODULE_DEVICE_TABLE(of, dw_mipi_dsi2_rockchip_dt_ids);
+
+struct platform_driver dw_mipi_dsi2_rockchip_driver = {
+	.probe	= dw_mipi_dsi2_rockchip_probe,
+	.remove = dw_mipi_dsi2_rockchip_remove,
+	.driver = {
+		.of_match_table = dw_mipi_dsi2_rockchip_dt_ids,
+		.pm = &dw_mipi_dsi2_rockchip_pm_ops,
+		.name = "dw-mipi-dsi2",
+	},
+};
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index ddf0be331c0a..5327ce035003 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -511,6 +511,8 @@ static int __init rockchip_drm_init(void)
 				CONFIG_ROCKCHIP_DW_HDMI_QP);
 	ADD_ROCKCHIP_SUB_DRIVER(dw_mipi_dsi_rockchip_driver,
 				CONFIG_ROCKCHIP_DW_MIPI_DSI);
+	ADD_ROCKCHIP_SUB_DRIVER(dw_mipi_dsi2_rockchip_driver,
+				CONFIG_ROCKCHIP_DW_MIPI_DSI2);
 	ADD_ROCKCHIP_SUB_DRIVER(inno_hdmi_driver, CONFIG_ROCKCHIP_INNO_HDMI);
 	ADD_ROCKCHIP_SUB_DRIVER(rk3066_hdmi_driver,
 				CONFIG_ROCKCHIP_RK3066_HDMI);
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
index 24b4ce5ceaf1..9c9d38a06cdf 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
@@ -90,6 +90,7 @@ extern struct platform_driver cdn_dp_driver;
 extern struct platform_driver dw_hdmi_rockchip_pltfm_driver;
 extern struct platform_driver dw_hdmi_qp_rockchip_pltfm_driver;
 extern struct platform_driver dw_mipi_dsi_rockchip_driver;
+extern struct platform_driver dw_mipi_dsi2_rockchip_driver;
 extern struct platform_driver inno_hdmi_driver;
 extern struct platform_driver rockchip_dp_driver;
 extern struct platform_driver rockchip_lvds_driver;
-- 
2.45.2


