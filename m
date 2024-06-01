Return-Path: <devicetree+bounces-71480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0729D8D7021
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2024 15:16:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 85C931F21D45
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2024 13:16:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7F741552EA;
	Sat,  1 Jun 2024 13:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="FyN2F3Ah"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF180154C0E;
	Sat,  1 Jun 2024 13:13:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717247599; cv=none; b=DEqzC36fx196QGAci7/hQ2KYIvq4jAsyOWb2hOk/UAAr5X7Dkj+ibeQfO6PUxQ+6LV8/5FmNE65JwYRhVBcJN7oMWVEnKv+nDc19aYmiTI/ZCJMWWdg9fjRNtfGuqkDNuLYL2YLi98+1buOt0GQroTBj1tSkTI4Y8hKR+zTgAls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717247599; c=relaxed/simple;
	bh=dHkP8AoXM9OeuHhfm4CkLokGlK4S7/NMp/ySjSWfBTA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d04PSiWDYw4qAzd2LQe218ytltBqWZxGm+EvxlqggAWm6Z6WKe/xazHWm1IxP9A9YYSro/bLdmZ0zXprMvN8l0n0/N0alFxIQSW4iz7kvZ/hS05A7LT3YpFbE5snAaXbZ25rTx7FEyIHJvyXM5Z0j2nM5BVa+Cmz1KpspTwuqTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=FyN2F3Ah; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717247596;
	bh=dHkP8AoXM9OeuHhfm4CkLokGlK4S7/NMp/ySjSWfBTA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=FyN2F3AheUN0awtYaBAGablhrLpOTf6AVSlsDFHla87av/hL+KkdItp4nYjj6Hq7M
	 gTUJ1JRde3N9aWehPv64QVSzBMGfLMflb5TKfGDytOPfJGdDNJBJ2cE3K+mQSQAKbL
	 wr7hgsgfYZoMADL2BPTdE9hK6xC8x4DSfCz65x2NMYUKn+X71ZqcDIogl8j30FKvNf
	 CcheRkYg6gRVrHvWR1bqZasujpwk3YOeJKCKNIzJzGyeDqkQHF3YttG7XiDDxkyv1S
	 xZvUiVL3zYJxr1Qzwzj/JHEQveo1S07zrvaI0G+X7FgCv6IMlXFWHyUo/oIZRD9jn5
	 tUKt9wGRRtiDA==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id BD7B037821EC;
	Sat,  1 Jun 2024 13:13:15 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 01 Jun 2024 16:12:36 +0300
Subject: [PATCH 14/14] drm/rockchip: dw_hdmi: Add basic RK3588 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240601-b4-rk3588-bridge-upstream-v1-14-f6203753232b@collabora.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
In-Reply-To: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@collabora.com, 
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>, 
 Algea Cao <algea.cao@rock-chips.com>
X-Mailer: b4 0.14-dev-f7c49

The RK3588 SoC family integrates the newer Synopsys DesignWare HDMI 2.1
Quad-Pixel (QP) TX controller IP and a HDMI/eDP TX Combo PHY based on a
Samsung IP block.

Add just the basic support for now, i.e. RGB output up to 4K@60Hz,
without audio, CEC or any of the HDMI 2.1 specific features.

Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 261 +++++++++++++++++++++++++++-
 1 file changed, 253 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index ca6728a43159..48a777fe4214 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -29,8 +29,8 @@
 
 #define RK3288_GRF_SOC_CON6		0x025C
 #define RK3288_HDMI_LCDC_SEL		BIT(4)
-#define RK3328_GRF_SOC_CON2		0x0408
 
+#define RK3328_GRF_SOC_CON2		0x0408
 #define RK3328_HDMI_SDAIN_MSK		BIT(11)
 #define RK3328_HDMI_SCLIN_MSK		BIT(10)
 #define RK3328_HDMI_HPD_IOE		BIT(2)
@@ -54,6 +54,21 @@
 #define RK3568_HDMI_SDAIN_MSK		BIT(15)
 #define RK3568_HDMI_SCLIN_MSK		BIT(14)
 
+#define RK3588_GRF_SOC_CON2		0x0308
+#define RK3588_HDMI0_HPD_INT_MSK	BIT(13)
+#define RK3588_HDMI0_HPD_INT_CLR	BIT(12)
+#define RK3588_GRF_SOC_CON7		0x031c
+#define RK3588_SET_HPD_PATH_MASK	(0x3 << 12)
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
 #define HIWORD_UPDATE(val, mask)	(val | (mask) << 16)
 
 /**
@@ -71,6 +86,7 @@ struct rockchip_hdmi_chip_data {
 struct rockchip_hdmi {
 	struct device *dev;
 	struct regmap *regmap;
+	struct regmap *vo1_regmap;
 	struct rockchip_encoder encoder;
 	const struct rockchip_hdmi_chip_data *chip_data;
 	const struct dw_hdmi_plat_data *plat_data;
@@ -78,6 +94,10 @@ struct rockchip_hdmi {
 	struct clk *grf_clk;
 	struct dw_hdmi *hdmi;
 	struct phy *phy;
+
+	bool is_hdmi_qp;
+	struct gpio_desc *qp_enable_gpio;
+	struct delayed_work qp_hpd_work;
 };
 
 static struct rockchip_hdmi *to_rockchip_hdmi(struct drm_encoder *encoder)
@@ -206,8 +226,12 @@ static const struct dw_hdmi_phy_config rockchip_phy_config[] = {
 
 static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
 {
+	static const char * const qp_clk_names[] = {
+		"pclk", "hdp", "earc", "aud", "hclk_vo1",
+	};
 	struct device_node *np = hdmi->dev->of_node;
-	int ret;
+	struct clk *qp_clk;
+	int ret, i;
 
 	hdmi->regmap = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
 	if (IS_ERR(hdmi->regmap)) {
@@ -234,6 +258,34 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
 		return ret;
 	}
 
+	if (hdmi->is_hdmi_qp) {
+		hdmi->vo1_regmap = syscon_regmap_lookup_by_phandle(np, "rockchip,vo1_grf");
+		if (IS_ERR(hdmi->vo1_regmap)) {
+			drm_err(hdmi, "Unable to get rockchip,vo1_grf\n");
+			return PTR_ERR(hdmi->vo1_regmap);
+		}
+
+		for (i = 0; i < ARRAY_SIZE(qp_clk_names); i++) {
+			qp_clk = devm_clk_get_optional_enabled(hdmi->dev, qp_clk_names[i]);
+
+			if (IS_ERR(qp_clk)) {
+				ret = PTR_ERR(qp_clk);
+				if (ret != -EPROBE_DEFER)
+					drm_err(hdmi, "failed to get %s clock: %d\n",
+						qp_clk_names[i], ret);
+				return ret;
+			}
+		}
+
+		hdmi->qp_enable_gpio = devm_gpiod_get_optional(hdmi->dev, "enable",
+							       GPIOD_OUT_HIGH);
+		if (IS_ERR(hdmi->qp_enable_gpio)) {
+			ret = PTR_ERR(hdmi->qp_enable_gpio);
+			drm_err(hdmi, "failed to request enable GPIO: %d\n", ret);
+			return ret;
+		}
+	}
+
 	ret = devm_regulator_get_enable(hdmi->dev, "avdd-0v9");
 	if (ret)
 		return ret;
@@ -303,8 +355,32 @@ static void dw_hdmi_rockchip_encoder_mode_set(struct drm_encoder *encoder,
 static void dw_hdmi_rockchip_encoder_enable(struct drm_encoder *encoder)
 {
 	struct rockchip_hdmi *hdmi = to_rockchip_hdmi(encoder);
+	struct drm_crtc *crtc = encoder->crtc;
 	u32 val;
-	int ret;
+	int ret, rate;
+
+	if (hdmi->is_hdmi_qp) {
+		/* Unconditionally switch to TMDS as FRL is not yet supported */
+		gpiod_set_value(hdmi->qp_enable_gpio, 1);
+
+		if (crtc && crtc->state) {
+			clk_set_rate(hdmi->ref_clk,
+				     crtc->state->adjusted_mode.crtc_clock * 1000);
+			/*
+			 * FIXME: Temporary workaround to pass pixel clock rate
+			 * to the PHY driver until phy_configure_opts_hdmi
+			 * becomes available in the PHY API. See also the related
+			 * comment in rk_hdptx_phy_power_on() from
+			 * drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+			 */
+			if (hdmi->phy) {
+				rate = crtc->state->mode.clock * 10;
+				phy_set_bus_width(hdmi->phy, rate);
+				drm_dbg(hdmi, "%s set bus_width=%u\n",
+					__func__, rate);
+			}
+		}
+	}
 
 	if (hdmi->chip_data->lcdsel_grf_reg < 0)
 		return;
@@ -356,6 +432,9 @@ static int dw_hdmi_rockchip_genphy_init(struct dw_hdmi *dw_hdmi, void *data,
 {
 	struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;
 
+	if (hdmi->is_hdmi_qp)
+		dw_hdmi_set_high_tmds_clock_ratio(dw_hdmi, display);
+
 	return phy_power_on(hdmi->phy);
 }
 
@@ -430,6 +509,29 @@ static void dw_hdmi_rk3328_setup_hpd(struct dw_hdmi *dw_hdmi, void *data)
 			      RK3328_HDMI_HPD_IOE));
 }
 
+static enum drm_connector_status
+dw_hdmi_rk3588_read_hpd(struct dw_hdmi *dw_hdmi, void *data)
+{
+	struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;
+	u32 val;
+
+	regmap_read(hdmi->regmap, RK3588_GRF_SOC_STATUS1, &val);
+
+	return val & RK3588_HDMI0_LEVEL_INT ?
+		connector_status_connected : connector_status_disconnected;
+}
+
+static void dw_hdmi_rk3588_setup_hpd(struct dw_hdmi *dw_hdmi, void *data)
+{
+	struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;
+
+	regmap_write(hdmi->regmap,
+		     RK3588_GRF_SOC_CON2,
+		     HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_CLR,
+				   RK3588_HDMI0_HPD_INT_CLR |
+				   RK3588_HDMI0_HPD_INT_MSK));
+}
+
 static const struct dw_hdmi_phy_ops rk3228_hdmi_phy_ops = {
 	.init		= dw_hdmi_rockchip_genphy_init,
 	.disable	= dw_hdmi_rockchip_genphy_disable,
@@ -513,6 +615,82 @@ static const struct dw_hdmi_plat_data rk3568_hdmi_drv_data = {
 	.use_drm_infoframe = true,
 };
 
+static const struct dw_hdmi_phy_ops rk3588_hdmi_phy_ops = {
+	.init		= dw_hdmi_rockchip_genphy_init,
+	.disable	= dw_hdmi_rockchip_genphy_disable,
+	.read_hpd	= dw_hdmi_rk3588_read_hpd,
+	.setup_hpd	= dw_hdmi_rk3588_setup_hpd,
+};
+
+struct rockchip_hdmi_chip_data rk3588_chip_data = {
+	.lcdsel_grf_reg = -1,
+};
+
+static const struct dw_hdmi_plat_data rk3588_hdmi_drv_data = {
+	.phy_data = &rk3588_chip_data,
+	.phy_ops = &rk3588_hdmi_phy_ops,
+	.phy_name = "samsung_hdptx_phy",
+	.phy_force_vendor = true,
+	.use_drm_infoframe = true,
+	.is_hdmi_qp = true,
+};
+
+static void dw_hdmi_rk3588_hpd_work(struct work_struct *p_work)
+{
+	struct rockchip_hdmi *hdmi = container_of(p_work, struct rockchip_hdmi,
+						  qp_hpd_work.work);
+
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
+static irqreturn_t dw_hdmi_rk3588_hardirq(int irq, void *dev_id)
+{
+	struct rockchip_hdmi *hdmi = dev_id;
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
+static irqreturn_t dw_hdmi_rk3588_irq(int irq, void *dev_id)
+{
+	struct rockchip_hdmi *hdmi = dev_id;
+	u32 intr_stat, val;
+	int debounce_ms;
+
+	regmap_read(hdmi->regmap, RK3588_GRF_SOC_STATUS1, &intr_stat);
+	if (!intr_stat)
+		return IRQ_NONE;
+
+	val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_CLR,
+			    RK3588_HDMI0_HPD_INT_CLR);
+	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
+
+	debounce_ms = intr_stat & RK3588_HDMI0_LEVEL_INT ? 150 : 20;
+	mod_delayed_work(system_wq, &hdmi->qp_hpd_work,
+			 msecs_to_jiffies(debounce_ms));
+
+	val |= HIWORD_UPDATE(0, RK3588_HDMI0_HPD_INT_MSK);
+	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
+
+	return IRQ_HANDLED;
+}
+
 static const struct of_device_id dw_hdmi_rockchip_dt_ids[] = {
 	{ .compatible = "rockchip,rk3228-dw-hdmi",
 	  .data = &rk3228_hdmi_drv_data
@@ -529,6 +707,9 @@ static const struct of_device_id dw_hdmi_rockchip_dt_ids[] = {
 	{ .compatible = "rockchip,rk3568-dw-hdmi",
 	  .data = &rk3568_hdmi_drv_data
 	},
+	{ .compatible = "rockchip,rk3588-dw-hdmi",
+	  .data = &rk3588_hdmi_drv_data
+	},
 	{},
 };
 MODULE_DEVICE_TABLE(of, dw_hdmi_rockchip_dt_ids);
@@ -542,7 +723,8 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 	struct drm_device *drm = data;
 	struct drm_encoder *encoder;
 	struct rockchip_hdmi *hdmi;
-	int ret;
+	int ret, irq;
+	u32 val;
 
 	if (!pdev->dev.of_node)
 		return -ENODEV;
@@ -553,13 +735,14 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 
 	match = of_match_node(dw_hdmi_rockchip_dt_ids, pdev->dev.of_node);
 	plat_data = devm_kmemdup(&pdev->dev, match->data,
-					     sizeof(*plat_data), GFP_KERNEL);
+				 sizeof(*plat_data), GFP_KERNEL);
 	if (!plat_data)
 		return -ENOMEM;
 
 	hdmi->dev = &pdev->dev;
 	hdmi->plat_data = plat_data;
 	hdmi->chip_data = plat_data->phy_data;
+	hdmi->is_hdmi_qp = plat_data->is_hdmi_qp;
 	plat_data->phy_data = hdmi;
 	plat_data->priv_data = hdmi;
 	encoder = &hdmi->encoder.encoder;
@@ -598,6 +781,37 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 					   RK3568_HDMI_SCLIN_MSK,
 					   RK3568_HDMI_SDAIN_MSK |
 					   RK3568_HDMI_SCLIN_MSK));
+	} else if (hdmi->is_hdmi_qp) {
+		val = HIWORD_UPDATE(RK3588_SCLIN_MASK, RK3588_SCLIN_MASK) |
+		      HIWORD_UPDATE(RK3588_SDAIN_MASK, RK3588_SDAIN_MASK) |
+		      HIWORD_UPDATE(RK3588_MODE_MASK, RK3588_MODE_MASK) |
+		      HIWORD_UPDATE(RK3588_I2S_SEL_MASK, RK3588_I2S_SEL_MASK);
+		regmap_write(hdmi->vo1_regmap, RK3588_GRF_VO1_CON3, val);
+
+		val = HIWORD_UPDATE(RK3588_SET_HPD_PATH_MASK,
+				    RK3588_SET_HPD_PATH_MASK);
+		regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON7, val);
+
+		val = HIWORD_UPDATE(RK3588_HDMI0_GRANT_SEL,
+				    RK3588_HDMI0_GRANT_SEL);
+		regmap_write(hdmi->vo1_regmap, RK3588_GRF_VO1_CON9, val);
+
+		val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_MSK, RK3588_HDMI0_HPD_INT_MSK);
+		regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
+
+		INIT_DELAYED_WORK(&hdmi->qp_hpd_work, dw_hdmi_rk3588_hpd_work);
+
+		irq = platform_get_irq(pdev, 4);
+		if (irq < 0)
+			return irq;
+
+		ret = devm_request_threaded_irq(hdmi->dev, irq,
+						dw_hdmi_rk3588_hardirq,
+						dw_hdmi_rk3588_irq,
+						IRQF_SHARED, "dw-hdmi-qp-hpd",
+						hdmi);
+		if (ret)
+			return ret;
 	}
 
 	drm_encoder_helper_add(encoder, &dw_hdmi_rockchip_encoder_helper_funcs);
@@ -605,7 +819,10 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 
 	platform_set_drvdata(pdev, hdmi);
 
-	hdmi->hdmi = dw_hdmi_bind(pdev, encoder, plat_data);
+	if (hdmi->is_hdmi_qp)
+		hdmi->hdmi = dw_hdmi_qp_bind(pdev, encoder, plat_data);
+	else
+		hdmi->hdmi = dw_hdmi_bind(pdev, encoder, plat_data);
 
 	/*
 	 * If dw_hdmi_bind() fails we'll never call dw_hdmi_unbind(),
@@ -629,7 +846,13 @@ static void dw_hdmi_rockchip_unbind(struct device *dev, struct device *master,
 {
 	struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
 
-	dw_hdmi_unbind(hdmi->hdmi);
+	if (hdmi->is_hdmi_qp) {
+		cancel_delayed_work_sync(&hdmi->qp_hpd_work);
+		dw_hdmi_qp_unbind(hdmi->hdmi);
+	} else {
+		dw_hdmi_unbind(hdmi->hdmi);
+	}
+
 	drm_encoder_cleanup(&hdmi->encoder.encoder);
 }
 
@@ -651,8 +874,30 @@ static void dw_hdmi_rockchip_remove(struct platform_device *pdev)
 static int __maybe_unused dw_hdmi_rockchip_resume(struct device *dev)
 {
 	struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
+	u32 val;
+
+	if (hdmi->is_hdmi_qp) {
+		val = HIWORD_UPDATE(RK3588_SCLIN_MASK, RK3588_SCLIN_MASK) |
+		      HIWORD_UPDATE(RK3588_SDAIN_MASK, RK3588_SDAIN_MASK) |
+		      HIWORD_UPDATE(RK3588_MODE_MASK, RK3588_MODE_MASK) |
+		      HIWORD_UPDATE(RK3588_I2S_SEL_MASK, RK3588_I2S_SEL_MASK);
+		regmap_write(hdmi->vo1_regmap, RK3588_GRF_VO1_CON3, val);
 
-	dw_hdmi_resume(hdmi->hdmi);
+		val = HIWORD_UPDATE(RK3588_SET_HPD_PATH_MASK,
+				    RK3588_SET_HPD_PATH_MASK);
+		regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON7, val);
+
+		val = HIWORD_UPDATE(RK3588_HDMI0_GRANT_SEL,
+				    RK3588_HDMI0_GRANT_SEL);
+		regmap_write(hdmi->vo1_regmap, RK3588_GRF_VO1_CON9, val);
+
+		dw_hdmi_qp_resume(dev, hdmi->hdmi);
+
+		if (hdmi->encoder.encoder.dev)
+			drm_helper_hpd_irq_event(hdmi->encoder.encoder.dev);
+	} else {
+		dw_hdmi_resume(hdmi->hdmi);
+	}
 
 	return 0;
 }

-- 
2.45.0


