Return-Path: <devicetree+bounces-109668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B60D99789D
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 00:41:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 914B61F23E00
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 22:41:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF7661E47A1;
	Wed,  9 Oct 2024 22:41:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="MLftyGd0"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466961E32CC;
	Wed,  9 Oct 2024 22:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728513676; cv=none; b=bDaUdnz+0OAYuowSne0LeU/UsOojFiQKVyGe17RTJ6POIjLYsJhhkLVob0sqsLr9gNKFG2IfjSN20hCUowM8uYv6H0jz0DytL+OT9Z5IR/ggxUelxejEVpTBFXf3OEd/K+TO0BXAovLFsPTSMn1jKdT5MSV30nIv3cZMnFTqa9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728513676; c=relaxed/simple;
	bh=Tjbahn100daRNDbgy3i0tn21GW9/0/teihJwt/40cKM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XHWLg9d8DBN7BIYDMqITOSJ7GqCimb8FyTz+7cn9iExHYARNwxlas1cCnZB5c/V6LDKxGjedt3hKeujgaaAcIAyyxszTyWWSOqmBFZxX80ginRbjG9mXS/4w9runlBFHh1dSU2iNo3DBvjVn3Es5N7I+Oc2KZTZr/D4ldKv3iws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=MLftyGd0; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1728513671;
	bh=Tjbahn100daRNDbgy3i0tn21GW9/0/teihJwt/40cKM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=MLftyGd0NpEhQkJYR25OvxSBR9E0tFEQmTqiAXDcb76Njfh7qt+kfxXUUKQ8rZAai
	 uo49BeQsoPzray2ih1Cy3APlB6pW+V+VNly0u10/+2NGyqyUXDV/AInDTbqXqUctpo
	 0dyPhsG/dTAtwXyygrChYjv8WqPYJ1/IcuGWnrq7i0882TQfv1JoCTxd/k8Il+Gud5
	 liJHuXCx1OlQPkzTVf1hmESyuZbZxZQ/UVnlqAwMxFIoWG82xdTyhN4kbVuM2HMdc8
	 0PNpwmW2C5GFTjrtkr0IBGOjzKwkZxGGQ9LngVWRZHXeOpjdp3uAGVzvASlRqS8JCh
	 g5swDxGKlspSA==
Received: from localhost (unknown [IPv6:2001:861:8b81:d330:d4b:52bf:3fe7:c311])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3DAC217E0EAE;
	Thu, 10 Oct 2024 00:41:11 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 10 Oct 2024 01:40:51 +0300
Subject: [PATCH v9 3/3] drm/rockchip: Add basic RK3588 HDMI output support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241010-b4-rk3588-bridge-upstream-v9-3-68c47dde0410@collabora.com>
References: <20241010-b4-rk3588-bridge-upstream-v9-0-68c47dde0410@collabora.com>
In-Reply-To: <20241010-b4-rk3588-bridge-upstream-v9-0-68c47dde0410@collabora.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Simona Vetter <simona@ffwll.ch>, 
 Simona Vetter <simona.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@collabora.com, 
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>, 
 Algea Cao <algea.cao@rock-chips.com>
X-Mailer: b4 0.14.1

The RK3588 SoC family integrates the newer Synopsys DesignWare HDMI 2.1
Quad-Pixel (QP) TX controller IP and a HDMI/eDP TX Combo PHY based on a
Samsung IP block.

Add just the basic support for now, i.e. RGB output up to 4K@60Hz,
without audio, CEC or any of the HDMI 2.1 specific features.

Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
Tested-by: Heiko Stuebner <heiko@sntech.de>
Reviewed-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/Kconfig               |   9 +
 drivers/gpu/drm/rockchip/Makefile              |   1 +
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 424 +++++++++++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c    |   2 +
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h    |   1 +
 5 files changed, 437 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 23c49e91f1cc..448fadd4ba15 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -8,6 +8,7 @@ config DRM_ROCKCHIP
 	select VIDEOMODE_HELPERS
 	select DRM_ANALOGIX_DP if ROCKCHIP_ANALOGIX_DP
 	select DRM_DW_HDMI if ROCKCHIP_DW_HDMI
+	select DRM_DW_HDMI_QP if ROCKCHIP_DW_HDMI_QP
 	select DRM_DW_MIPI_DSI if ROCKCHIP_DW_MIPI_DSI
 	select GENERIC_PHY if ROCKCHIP_DW_MIPI_DSI
 	select GENERIC_PHY_MIPI_DPHY if ROCKCHIP_DW_MIPI_DSI
@@ -63,6 +64,14 @@ config ROCKCHIP_DW_HDMI
 	  enable HDMI on RK3288 or RK3399 based SoC, you should select
 	  this option.
 
+config ROCKCHIP_DW_HDMI_QP
+	bool "Rockchip specific extensions for Synopsys DW HDMI QP"
+	select DRM_BRIDGE_CONNECTOR
+	help
+	  This selects support for Rockchip SoC specific extensions
+	  for the Synopsys DesignWare HDMI QP driver. If you want to
+	  enable HDMI on RK3588 based SoC, you should select this option.
+
 config ROCKCHIP_DW_MIPI_DSI
 	bool "Rockchip specific extensions for Synopsys DW MIPI DSI"
 	select GENERIC_PHY_MIPI_DPHY
diff --git a/drivers/gpu/drm/rockchip/Makefile b/drivers/gpu/drm/rockchip/Makefile
index 3ff7b21c0414..3eab662a5a1d 100644
--- a/drivers/gpu/drm/rockchip/Makefile
+++ b/drivers/gpu/drm/rockchip/Makefile
@@ -11,6 +11,7 @@ rockchipdrm-$(CONFIG_ROCKCHIP_VOP) += rockchip_drm_vop.o rockchip_vop_reg.o
 rockchipdrm-$(CONFIG_ROCKCHIP_ANALOGIX_DP) += analogix_dp-rockchip.o
 rockchipdrm-$(CONFIG_ROCKCHIP_CDN_DP) += cdn-dp-core.o cdn-dp-reg.o
 rockchipdrm-$(CONFIG_ROCKCHIP_DW_HDMI) += dw_hdmi-rockchip.o
+rockchipdrm-$(CONFIG_ROCKCHIP_DW_HDMI_QP) += dw_hdmi_qp-rockchip.o
 rockchipdrm-$(CONFIG_ROCKCHIP_DW_MIPI_DSI) += dw-mipi-dsi-rockchip.o
 rockchipdrm-$(CONFIG_ROCKCHIP_INNO_HDMI) += inno_hdmi.o
 rockchipdrm-$(CONFIG_ROCKCHIP_LVDS) += rockchip_lvds.o
diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
new file mode 100644
index 000000000000..a5dc927d8fdc
--- /dev/null
+++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
@@ -0,0 +1,424 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2021-2022 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2024 Collabora Ltd.
+ *
+ * Author: Algea Cao <algea.cao@rock-chips.com>
+ * Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/gpio/consumer.h>
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/phy/phy.h>
+#include <linux/regmap.h>
+#include <linux/workqueue.h>
+
+#include <drm/bridge/dw_hdmi_qp.h>
+#include <drm/display/drm_hdmi_helper.h>
+#include <drm/drm_bridge_connector.h>
+#include <drm/drm_of.h>
+#include <drm/drm_probe_helper.h>
+#include <drm/drm_simple_kms_helper.h>
+
+#include "rockchip_drm_drv.h"
+
+#define RK3588_GRF_SOC_CON2		0x0308
+#define RK3588_HDMI0_HPD_INT_MSK	BIT(13)
+#define RK3588_HDMI0_HPD_INT_CLR	BIT(12)
+#define RK3588_GRF_SOC_CON7		0x031c
+#define RK3588_SET_HPD_PATH_MASK	GENMASK(13, 12)
+#define RK3588_GRF_SOC_STATUS1		0x0384
+#define RK3588_HDMI0_LEVEL_INT		BIT(16)
+#define RK3588_GRF_VO1_CON3		0x000c
+#define RK3588_SCLIN_MASK		BIT(9)
+#define RK3588_SDAIN_MASK		BIT(10)
+#define RK3588_MODE_MASK		BIT(11)
+#define RK3588_I2S_SEL_MASK		BIT(13)
+#define RK3588_GRF_VO1_CON9		0x0024
+#define RK3588_HDMI0_GRANT_SEL		BIT(10)
+
+#define HIWORD_UPDATE(val, mask)	((val) | (mask) << 16)
+#define HOTPLUG_DEBOUNCE_MS		150
+
+struct rockchip_hdmi_qp {
+	struct device *dev;
+	struct regmap *regmap;
+	struct regmap *vo_regmap;
+	struct rockchip_encoder encoder;
+	struct clk *ref_clk;
+	struct dw_hdmi_qp *hdmi;
+	struct phy *phy;
+	struct gpio_desc *enable_gpio;
+	struct delayed_work hpd_work;
+};
+
+static struct rockchip_hdmi_qp *to_rockchip_hdmi_qp(struct drm_encoder *encoder)
+{
+	struct rockchip_encoder *rkencoder = to_rockchip_encoder(encoder);
+
+	return container_of(rkencoder, struct rockchip_hdmi_qp, encoder);
+}
+
+static void dw_hdmi_qp_rockchip_encoder_enable(struct drm_encoder *encoder)
+{
+	struct rockchip_hdmi_qp *hdmi = to_rockchip_hdmi_qp(encoder);
+	struct drm_crtc *crtc = encoder->crtc;
+	unsigned long long rate;
+
+	/* Unconditionally switch to TMDS as FRL is not yet supported */
+	gpiod_set_value(hdmi->enable_gpio, 1);
+
+	if (crtc && crtc->state) {
+		rate = drm_hdmi_compute_mode_clock(&crtc->state->adjusted_mode,
+						   8, HDMI_COLORSPACE_RGB);
+		clk_set_rate(hdmi->ref_clk, rate);
+		/*
+		 * FIXME: Temporary workaround to pass pixel clock rate
+		 * to the PHY driver until phy_configure_opts_hdmi
+		 * becomes available in the PHY API. See also the related
+		 * comment in rk_hdptx_phy_power_on() from
+		 * drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+		 */
+		phy_set_bus_width(hdmi->phy, rate / 100);
+	}
+}
+
+static int
+dw_hdmi_qp_rockchip_encoder_atomic_check(struct drm_encoder *encoder,
+					 struct drm_crtc_state *crtc_state,
+					 struct drm_connector_state *conn_state)
+{
+	struct rockchip_crtc_state *s = to_rockchip_crtc_state(crtc_state);
+
+	s->output_mode = ROCKCHIP_OUT_MODE_AAAA;
+	s->output_type = DRM_MODE_CONNECTOR_HDMIA;
+
+	return 0;
+}
+
+static const struct
+drm_encoder_helper_funcs dw_hdmi_qp_rockchip_encoder_helper_funcs = {
+	.enable		= dw_hdmi_qp_rockchip_encoder_enable,
+	.atomic_check	= dw_hdmi_qp_rockchip_encoder_atomic_check,
+};
+
+static int dw_hdmi_qp_rk3588_phy_init(struct dw_hdmi_qp *dw_hdmi, void *data)
+{
+	struct rockchip_hdmi_qp *hdmi = (struct rockchip_hdmi_qp *)data;
+
+	return phy_power_on(hdmi->phy);
+}
+
+static void dw_hdmi_qp_rk3588_phy_disable(struct dw_hdmi_qp *dw_hdmi,
+					  void *data)
+{
+	struct rockchip_hdmi_qp *hdmi = (struct rockchip_hdmi_qp *)data;
+
+	phy_power_off(hdmi->phy);
+}
+
+static enum drm_connector_status
+dw_hdmi_qp_rk3588_read_hpd(struct dw_hdmi_qp *dw_hdmi, void *data)
+{
+	struct rockchip_hdmi_qp *hdmi = (struct rockchip_hdmi_qp *)data;
+	u32 val;
+
+	regmap_read(hdmi->regmap, RK3588_GRF_SOC_STATUS1, &val);
+
+	return val & RK3588_HDMI0_LEVEL_INT ?
+		connector_status_connected : connector_status_disconnected;
+}
+
+static void dw_hdmi_qp_rk3588_setup_hpd(struct dw_hdmi_qp *dw_hdmi, void *data)
+{
+	struct rockchip_hdmi_qp *hdmi = (struct rockchip_hdmi_qp *)data;
+
+	regmap_write(hdmi->regmap,
+		     RK3588_GRF_SOC_CON2,
+		     HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_CLR,
+				   RK3588_HDMI0_HPD_INT_CLR |
+				   RK3588_HDMI0_HPD_INT_MSK));
+}
+
+static const struct dw_hdmi_qp_phy_ops rk3588_hdmi_phy_ops = {
+	.init		= dw_hdmi_qp_rk3588_phy_init,
+	.disable	= dw_hdmi_qp_rk3588_phy_disable,
+	.read_hpd	= dw_hdmi_qp_rk3588_read_hpd,
+	.setup_hpd	= dw_hdmi_qp_rk3588_setup_hpd,
+};
+
+static void dw_hdmi_qp_rk3588_hpd_work(struct work_struct *work)
+{
+	struct rockchip_hdmi_qp *hdmi = container_of(work,
+						     struct rockchip_hdmi_qp,
+						     hpd_work.work);
+	struct drm_device *drm = hdmi->encoder.encoder.dev;
+	bool changed;
+
+	if (drm) {
+		changed = drm_helper_hpd_irq_event(drm);
+		if (changed)
+			drm_dbg(hdmi, "connector status changed\n");
+	}
+}
+
+static irqreturn_t dw_hdmi_qp_rk3588_hardirq(int irq, void *dev_id)
+{
+	struct rockchip_hdmi_qp *hdmi = dev_id;
+	u32 intr_stat, val;
+
+	regmap_read(hdmi->regmap, RK3588_GRF_SOC_STATUS1, &intr_stat);
+
+	if (intr_stat) {
+		val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_MSK,
+				    RK3588_HDMI0_HPD_INT_MSK);
+		regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
+		return IRQ_WAKE_THREAD;
+	}
+
+	return IRQ_NONE;
+}
+
+static irqreturn_t dw_hdmi_qp_rk3588_irq(int irq, void *dev_id)
+{
+	struct rockchip_hdmi_qp *hdmi = dev_id;
+	u32 intr_stat, val;
+
+	regmap_read(hdmi->regmap, RK3588_GRF_SOC_STATUS1, &intr_stat);
+	if (!intr_stat)
+		return IRQ_NONE;
+
+	val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_CLR,
+			    RK3588_HDMI0_HPD_INT_CLR);
+	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
+
+	mod_delayed_work(system_wq, &hdmi->hpd_work,
+			 msecs_to_jiffies(HOTPLUG_DEBOUNCE_MS));
+
+	val |= HIWORD_UPDATE(0, RK3588_HDMI0_HPD_INT_MSK);
+	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
+
+	return IRQ_HANDLED;
+}
+
+static const struct of_device_id dw_hdmi_qp_rockchip_dt_ids[] = {
+	{ .compatible = "rockchip,rk3588-dw-hdmi-qp",
+	  .data = &rk3588_hdmi_phy_ops },
+	{},
+};
+MODULE_DEVICE_TABLE(of, dw_hdmi_qp_rockchip_dt_ids);
+
+static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
+				    void *data)
+{
+	static const char * const clk_names[] = {
+		"pclk", "earc", "aud", "hdp", "hclk_vo1",
+		"ref" /* keep "ref" last */
+	};
+	struct platform_device *pdev = to_platform_device(dev);
+	struct dw_hdmi_qp_plat_data plat_data;
+	struct drm_device *drm = data;
+	struct drm_connector *connector;
+	struct drm_encoder *encoder;
+	struct rockchip_hdmi_qp *hdmi;
+	struct clk *clk;
+	int ret, irq, i;
+	u32 val;
+
+	if (!pdev->dev.of_node)
+		return -ENODEV;
+
+	hdmi = devm_kzalloc(&pdev->dev, sizeof(*hdmi), GFP_KERNEL);
+	if (!hdmi)
+		return -ENOMEM;
+
+	plat_data.phy_ops = of_device_get_match_data(dev);
+	if (!plat_data.phy_ops)
+		return -ENODEV;
+
+	plat_data.phy_data = hdmi;
+	hdmi->dev = &pdev->dev;
+
+	encoder = &hdmi->encoder.encoder;
+	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);
+
+	rockchip_drm_encoder_set_crtc_endpoint_id(&hdmi->encoder,
+						  dev->of_node, 0, 0);
+	/*
+	 * If we failed to find the CRTC(s) which this encoder is
+	 * supposed to be connected to, it's because the CRTC has
+	 * not been registered yet.  Defer probing, and hope that
+	 * the required CRTC is added later.
+	 */
+	if (encoder->possible_crtcs == 0)
+		return -EPROBE_DEFER;
+
+	hdmi->regmap = syscon_regmap_lookup_by_phandle(dev->of_node,
+						       "rockchip,grf");
+	if (IS_ERR(hdmi->regmap)) {
+		drm_err(hdmi, "Unable to get rockchip,grf\n");
+		return PTR_ERR(hdmi->regmap);
+	}
+
+	hdmi->vo_regmap = syscon_regmap_lookup_by_phandle(dev->of_node,
+							  "rockchip,vo-grf");
+	if (IS_ERR(hdmi->vo_regmap)) {
+		drm_err(hdmi, "Unable to get rockchip,vo-grf\n");
+		return PTR_ERR(hdmi->vo_regmap);
+	}
+
+	for (i = 0; i < ARRAY_SIZE(clk_names); i++) {
+		clk = devm_clk_get_enabled(hdmi->dev, clk_names[i]);
+
+		if (IS_ERR(clk)) {
+			ret = PTR_ERR(clk);
+			if (ret != -EPROBE_DEFER)
+				drm_err(hdmi, "Failed to get %s clock: %d\n",
+					clk_names[i], ret);
+			return ret;
+		}
+	}
+	hdmi->ref_clk = clk;
+
+	hdmi->enable_gpio = devm_gpiod_get_optional(hdmi->dev, "enable",
+						    GPIOD_OUT_HIGH);
+	if (IS_ERR(hdmi->enable_gpio)) {
+		ret = PTR_ERR(hdmi->enable_gpio);
+		drm_err(hdmi, "Failed to request enable GPIO: %d\n", ret);
+		return ret;
+	}
+
+	hdmi->phy = devm_of_phy_get_by_index(dev, dev->of_node, 0);
+	if (IS_ERR(hdmi->phy)) {
+		ret = PTR_ERR(hdmi->phy);
+		if (ret != -EPROBE_DEFER)
+			drm_err(hdmi, "failed to get phy: %d\n", ret);
+		return ret;
+	}
+
+	val = HIWORD_UPDATE(RK3588_SCLIN_MASK, RK3588_SCLIN_MASK) |
+	      HIWORD_UPDATE(RK3588_SDAIN_MASK, RK3588_SDAIN_MASK) |
+	      HIWORD_UPDATE(RK3588_MODE_MASK, RK3588_MODE_MASK) |
+	      HIWORD_UPDATE(RK3588_I2S_SEL_MASK, RK3588_I2S_SEL_MASK);
+	regmap_write(hdmi->vo_regmap, RK3588_GRF_VO1_CON3, val);
+
+	val = HIWORD_UPDATE(RK3588_SET_HPD_PATH_MASK,
+			    RK3588_SET_HPD_PATH_MASK);
+	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON7, val);
+
+	val = HIWORD_UPDATE(RK3588_HDMI0_GRANT_SEL,
+			    RK3588_HDMI0_GRANT_SEL);
+	regmap_write(hdmi->vo_regmap, RK3588_GRF_VO1_CON9, val);
+
+	val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_MSK, RK3588_HDMI0_HPD_INT_MSK);
+	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
+
+	INIT_DELAYED_WORK(&hdmi->hpd_work, dw_hdmi_qp_rk3588_hpd_work);
+
+	plat_data.main_irq = platform_get_irq_byname(pdev, "main");
+	if (plat_data.main_irq < 0)
+		return plat_data.main_irq;
+
+	irq = platform_get_irq_byname(pdev, "hpd");
+	if (irq < 0)
+		return irq;
+
+	ret = devm_request_threaded_irq(hdmi->dev, irq,
+					dw_hdmi_qp_rk3588_hardirq,
+					dw_hdmi_qp_rk3588_irq,
+					IRQF_SHARED, "dw-hdmi-qp-hpd",
+					hdmi);
+	if (ret)
+		return ret;
+
+	drm_encoder_helper_add(encoder, &dw_hdmi_qp_rockchip_encoder_helper_funcs);
+	drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_TMDS);
+
+	platform_set_drvdata(pdev, hdmi);
+
+	hdmi->hdmi = dw_hdmi_qp_bind(pdev, encoder, &plat_data);
+	if (IS_ERR(hdmi->hdmi)) {
+		ret = PTR_ERR(hdmi->hdmi);
+		drm_encoder_cleanup(encoder);
+		return ret;
+	}
+
+	connector = drm_bridge_connector_init(drm, encoder);
+	if (IS_ERR(connector)) {
+		ret = PTR_ERR(connector);
+		drm_err(hdmi, "failed to init bridge connector: %d\n", ret);
+		return ret;
+	}
+
+	return drm_connector_attach_encoder(connector, encoder);
+}
+
+static void dw_hdmi_qp_rockchip_unbind(struct device *dev,
+				       struct device *master,
+				       void *data)
+{
+	struct rockchip_hdmi_qp *hdmi = dev_get_drvdata(dev);
+
+	cancel_delayed_work_sync(&hdmi->hpd_work);
+
+	drm_encoder_cleanup(&hdmi->encoder.encoder);
+}
+
+static const struct component_ops dw_hdmi_qp_rockchip_ops = {
+	.bind	= dw_hdmi_qp_rockchip_bind,
+	.unbind	= dw_hdmi_qp_rockchip_unbind,
+};
+
+static int dw_hdmi_qp_rockchip_probe(struct platform_device *pdev)
+{
+	return component_add(&pdev->dev, &dw_hdmi_qp_rockchip_ops);
+}
+
+static void dw_hdmi_qp_rockchip_remove(struct platform_device *pdev)
+{
+	component_del(&pdev->dev, &dw_hdmi_qp_rockchip_ops);
+}
+
+static int __maybe_unused dw_hdmi_qp_rockchip_resume(struct device *dev)
+{
+	struct rockchip_hdmi_qp *hdmi = dev_get_drvdata(dev);
+	u32 val;
+
+	val = HIWORD_UPDATE(RK3588_SCLIN_MASK, RK3588_SCLIN_MASK) |
+	      HIWORD_UPDATE(RK3588_SDAIN_MASK, RK3588_SDAIN_MASK) |
+	      HIWORD_UPDATE(RK3588_MODE_MASK, RK3588_MODE_MASK) |
+	      HIWORD_UPDATE(RK3588_I2S_SEL_MASK, RK3588_I2S_SEL_MASK);
+	regmap_write(hdmi->vo_regmap, RK3588_GRF_VO1_CON3, val);
+
+	val = HIWORD_UPDATE(RK3588_SET_HPD_PATH_MASK,
+			    RK3588_SET_HPD_PATH_MASK);
+	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON7, val);
+
+	val = HIWORD_UPDATE(RK3588_HDMI0_GRANT_SEL,
+			    RK3588_HDMI0_GRANT_SEL);
+	regmap_write(hdmi->vo_regmap, RK3588_GRF_VO1_CON9, val);
+
+	dw_hdmi_qp_resume(dev, hdmi->hdmi);
+
+	if (hdmi->encoder.encoder.dev)
+		drm_helper_hpd_irq_event(hdmi->encoder.encoder.dev);
+
+	return 0;
+}
+
+static const struct dev_pm_ops dw_hdmi_qp_rockchip_pm = {
+	SET_SYSTEM_SLEEP_PM_OPS(NULL, dw_hdmi_qp_rockchip_resume)
+};
+
+struct platform_driver dw_hdmi_qp_rockchip_pltfm_driver = {
+	.probe  = dw_hdmi_qp_rockchip_probe,
+	.remove_new = dw_hdmi_qp_rockchip_remove,
+	.driver = {
+		.name = "dwhdmiqp-rockchip",
+		.pm = &dw_hdmi_qp_rockchip_pm,
+		.of_match_table = dw_hdmi_qp_rockchip_dt_ids,
+	},
+};
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index 11e5d10de4d7..ddf0be331c0a 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -507,6 +507,8 @@ static int __init rockchip_drm_init(void)
 	ADD_ROCKCHIP_SUB_DRIVER(cdn_dp_driver, CONFIG_ROCKCHIP_CDN_DP);
 	ADD_ROCKCHIP_SUB_DRIVER(dw_hdmi_rockchip_pltfm_driver,
 				CONFIG_ROCKCHIP_DW_HDMI);
+	ADD_ROCKCHIP_SUB_DRIVER(dw_hdmi_qp_rockchip_pltfm_driver,
+				CONFIG_ROCKCHIP_DW_HDMI_QP);
 	ADD_ROCKCHIP_SUB_DRIVER(dw_mipi_dsi_rockchip_driver,
 				CONFIG_ROCKCHIP_DW_MIPI_DSI);
 	ADD_ROCKCHIP_SUB_DRIVER(inno_hdmi_driver, CONFIG_ROCKCHIP_INNO_HDMI);
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
index 8d566fcd80a2..24b4ce5ceaf1 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
@@ -88,6 +88,7 @@ int rockchip_drm_encoder_set_crtc_endpoint_id(struct rockchip_encoder *rencoder,
 int rockchip_drm_endpoint_is_subdriver(struct device_node *ep);
 extern struct platform_driver cdn_dp_driver;
 extern struct platform_driver dw_hdmi_rockchip_pltfm_driver;
+extern struct platform_driver dw_hdmi_qp_rockchip_pltfm_driver;
 extern struct platform_driver dw_mipi_dsi_rockchip_driver;
 extern struct platform_driver inno_hdmi_driver;
 extern struct platform_driver rockchip_dp_driver;

-- 
2.46.1


