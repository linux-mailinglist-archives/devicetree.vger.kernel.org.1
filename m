Return-Path: <devicetree+bounces-129524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDB29EBEFC
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 00:07:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66299284838
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 23:07:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D4CE211270;
	Tue, 10 Dec 2024 23:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="k6EP2wqF"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A5D1A9B35;
	Tue, 10 Dec 2024 23:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733872037; cv=none; b=ZAwoik5TNMW5YIRlY2AO3qlVrOE7310O98DG+xad/o/etzg3RpLmVE4M5eYAZA6TbNPfnu/0jHIcT6wraTKETEVewL7tI+PAuXSW1chQLo1JGm63rxJIm9iT7/iy5JSyN4oUnVPxI+rwytH7Bbfl577spvhI+K/ldspwTCZ7xGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733872037; c=relaxed/simple;
	bh=3vdTlN4cRw+aqmcuxQVAud96wTtNxo35Ghla9Zs1JVY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qrOu6HkQOUWExq1/4p9ZMTN68mE4CEYWpEnEVYCV4vKOG1hBAtVd3Rgb36IX6MFN5+cMwECvkUX3GIsjB0pdBXNRUCYjTbVto0RNdSi226m2VXS3KXOo3eT29090143+OYIPzbQG2u9WOygHRWdytB3xLGdrAbalJn0llMgfCC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=k6EP2wqF; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1733872032;
	bh=3vdTlN4cRw+aqmcuxQVAud96wTtNxo35Ghla9Zs1JVY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=k6EP2wqFuIePq1CgVzZjzljdItbbIVt2T75SCJrmSfRb5OHjlNt2ziM9hVVJZyk0Y
	 61MHOKsuZtETCbNvqY2H0BkKjksZRyznF8GadHzU7lfzFdEQvkAczd+xG9/E7C86nY
	 VSJdJ4F3cCe2J0Hn/hj8PsiZhbJuAWYFjIsm9eule88ABzU3Lc/gHD5/2TaFa9AcGV
	 DmZxnVFiraxP3PZ8HSRLC6fmRVP//rrFx9w5yTFfmzS0Fp4l6QwPBBbX0gL6wkLGoz
	 Y06F1Wm5V2cvgIDqR/10W3FFYRPAnDQwNZQ4mDDQbS4gj3oLCNJyJ3kah4NndE92T7
	 KHrN1cFirIgNA==
Received: from localhost (unknown [188.27.48.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3BDB017E09B8;
	Wed, 11 Dec 2024 00:07:12 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Wed, 11 Dec 2024 01:06:14 +0200
Subject: [PATCH v2 1/4] drm/rockchip: dw_hdmi_qp: Add support for RK3588
 HDMI1 output
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241211-rk3588-hdmi1-v2-1-02cdca22ff68@collabora.com>
References: <20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com>
In-Reply-To: <20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Alexandre ARNOUD <aarnoud@me.com>, kernel@collabora.com, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.2

Provide the basic support required to enable the second HDMI TX port
found on RK3588 SoC.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 119 ++++++++++++++++++++-----
 1 file changed, 96 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
index c8b362cc2b95fd490029a9c0552ad9fbc5631d17..c36fc130b73440c9e3f2098f408a5cdd2f58e8ef 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
@@ -28,20 +28,26 @@
 #define RK3588_GRF_SOC_CON2		0x0308
 #define RK3588_HDMI0_HPD_INT_MSK	BIT(13)
 #define RK3588_HDMI0_HPD_INT_CLR	BIT(12)
+#define RK3588_HDMI1_HPD_INT_MSK	BIT(15)
+#define RK3588_HDMI1_HPD_INT_CLR	BIT(14)
 #define RK3588_GRF_SOC_CON7		0x031c
 #define RK3588_SET_HPD_PATH_MASK	GENMASK(13, 12)
 #define RK3588_GRF_SOC_STATUS1		0x0384
 #define RK3588_HDMI0_LEVEL_INT		BIT(16)
+#define RK3588_HDMI1_LEVEL_INT		BIT(24)
 #define RK3588_GRF_VO1_CON3		0x000c
+#define RK3588_GRF_VO1_CON6		0x0018
 #define RK3588_SCLIN_MASK		BIT(9)
 #define RK3588_SDAIN_MASK		BIT(10)
 #define RK3588_MODE_MASK		BIT(11)
 #define RK3588_I2S_SEL_MASK		BIT(13)
 #define RK3588_GRF_VO1_CON9		0x0024
 #define RK3588_HDMI0_GRANT_SEL		BIT(10)
+#define RK3588_HDMI1_GRANT_SEL		BIT(12)
 
 #define HIWORD_UPDATE(val, mask)	((val) | (mask) << 16)
 #define HOTPLUG_DEBOUNCE_MS		150
+#define MAX_HDMI_PORT_NUM		2
 
 struct rockchip_hdmi_qp {
 	struct device *dev;
@@ -53,6 +59,7 @@ struct rockchip_hdmi_qp {
 	struct phy *phy;
 	struct gpio_desc *enable_gpio;
 	struct delayed_work hpd_work;
+	int port_id;
 };
 
 static struct rockchip_hdmi_qp *to_rockchip_hdmi_qp(struct drm_encoder *encoder)
@@ -127,20 +134,24 @@ dw_hdmi_qp_rk3588_read_hpd(struct dw_hdmi_qp *dw_hdmi, void *data)
 	u32 val;
 
 	regmap_read(hdmi->regmap, RK3588_GRF_SOC_STATUS1, &val);
+	val &= hdmi->port_id ? RK3588_HDMI1_LEVEL_INT : RK3588_HDMI0_LEVEL_INT;
 
-	return val & RK3588_HDMI0_LEVEL_INT ?
-		connector_status_connected : connector_status_disconnected;
+	return val ? connector_status_connected : connector_status_disconnected;
 }
 
 static void dw_hdmi_qp_rk3588_setup_hpd(struct dw_hdmi_qp *dw_hdmi, void *data)
 {
 	struct rockchip_hdmi_qp *hdmi = (struct rockchip_hdmi_qp *)data;
+	u32 val;
+
+	if (hdmi->port_id)
+		val = HIWORD_UPDATE(RK3588_HDMI1_HPD_INT_CLR,
+				    RK3588_HDMI1_HPD_INT_CLR | RK3588_HDMI1_HPD_INT_MSK);
+	else
+		val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_CLR,
+				    RK3588_HDMI0_HPD_INT_CLR | RK3588_HDMI0_HPD_INT_MSK);
 
-	regmap_write(hdmi->regmap,
-		     RK3588_GRF_SOC_CON2,
-		     HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_CLR,
-				   RK3588_HDMI0_HPD_INT_CLR |
-				   RK3588_HDMI0_HPD_INT_MSK));
+	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
 }
 
 static const struct dw_hdmi_qp_phy_ops rk3588_hdmi_phy_ops = {
@@ -173,8 +184,12 @@ static irqreturn_t dw_hdmi_qp_rk3588_hardirq(int irq, void *dev_id)
 	regmap_read(hdmi->regmap, RK3588_GRF_SOC_STATUS1, &intr_stat);
 
 	if (intr_stat) {
-		val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_MSK,
-				    RK3588_HDMI0_HPD_INT_MSK);
+		if (hdmi->port_id)
+			val = HIWORD_UPDATE(RK3588_HDMI1_HPD_INT_MSK,
+					    RK3588_HDMI1_HPD_INT_MSK);
+		else
+			val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_MSK,
+					    RK3588_HDMI0_HPD_INT_MSK);
 		regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
 		return IRQ_WAKE_THREAD;
 	}
@@ -191,22 +206,44 @@ static irqreturn_t dw_hdmi_qp_rk3588_irq(int irq, void *dev_id)
 	if (!intr_stat)
 		return IRQ_NONE;
 
-	val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_CLR,
-			    RK3588_HDMI0_HPD_INT_CLR);
+	if (hdmi->port_id)
+		val = HIWORD_UPDATE(RK3588_HDMI1_HPD_INT_CLR,
+				    RK3588_HDMI1_HPD_INT_CLR);
+	else
+		val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_CLR,
+				    RK3588_HDMI0_HPD_INT_CLR);
 	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
 
 	mod_delayed_work(system_wq, &hdmi->hpd_work,
 			 msecs_to_jiffies(HOTPLUG_DEBOUNCE_MS));
 
-	val |= HIWORD_UPDATE(0, RK3588_HDMI0_HPD_INT_MSK);
+	if (hdmi->port_id)
+		val |= HIWORD_UPDATE(0, RK3588_HDMI1_HPD_INT_MSK);
+	else
+		val |= HIWORD_UPDATE(0, RK3588_HDMI0_HPD_INT_MSK);
 	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
 
 	return IRQ_HANDLED;
 }
 
+struct rockchip_hdmi_qp_cfg {
+	unsigned int num_ports;
+	unsigned int port_ids[MAX_HDMI_PORT_NUM];
+	const struct dw_hdmi_qp_phy_ops *phy_ops;
+};
+
+static const struct rockchip_hdmi_qp_cfg rk3588_hdmi_cfg = {
+	.num_ports = 2,
+	.port_ids = {
+		0xfde80000,
+		0xfdea0000,
+	},
+	.phy_ops = &rk3588_hdmi_phy_ops,
+};
+
 static const struct of_device_id dw_hdmi_qp_rockchip_dt_ids[] = {
 	{ .compatible = "rockchip,rk3588-dw-hdmi-qp",
-	  .data = &rk3588_hdmi_phy_ops },
+	  .data = &rk3588_hdmi_cfg },
 	{},
 };
 MODULE_DEVICE_TABLE(of, dw_hdmi_qp_rockchip_dt_ids);
@@ -219,11 +256,13 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
 		"ref" /* keep "ref" last */
 	};
 	struct platform_device *pdev = to_platform_device(dev);
+	const struct rockchip_hdmi_qp_cfg *cfg;
 	struct dw_hdmi_qp_plat_data plat_data;
 	struct drm_device *drm = data;
 	struct drm_connector *connector;
 	struct drm_encoder *encoder;
 	struct rockchip_hdmi_qp *hdmi;
+	struct resource *res;
 	struct clk *clk;
 	int ret, irq, i;
 	u32 val;
@@ -235,12 +274,31 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
 	if (!hdmi)
 		return -ENOMEM;
 
-	plat_data.phy_ops = of_device_get_match_data(dev);
-	if (!plat_data.phy_ops)
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res)
+		return -ENODEV;
+
+	cfg = of_device_get_match_data(dev);
+	if (!cfg)
 		return -ENODEV;
 
-	plat_data.phy_data = hdmi;
 	hdmi->dev = &pdev->dev;
+	hdmi->port_id = -ENODEV;
+
+	/* Identify port ID by matching base IO address */
+	for (i = 0; i < cfg->num_ports; i++) {
+		if (res->start == cfg->port_ids[i]) {
+			hdmi->port_id = i;
+			break;
+		}
+	}
+	if (hdmi->port_id < 0) {
+		drm_err(hdmi, "Failed to match HDMI port ID\n");
+		return hdmi->port_id;
+	}
+
+	plat_data.phy_ops = cfg->phy_ops;
+	plat_data.phy_data = hdmi;
 
 	encoder = &hdmi->encoder.encoder;
 	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);
@@ -303,17 +361,26 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
 	      HIWORD_UPDATE(RK3588_SDAIN_MASK, RK3588_SDAIN_MASK) |
 	      HIWORD_UPDATE(RK3588_MODE_MASK, RK3588_MODE_MASK) |
 	      HIWORD_UPDATE(RK3588_I2S_SEL_MASK, RK3588_I2S_SEL_MASK);
-	regmap_write(hdmi->vo_regmap, RK3588_GRF_VO1_CON3, val);
+	regmap_write(hdmi->vo_regmap,
+		     hdmi->port_id ? RK3588_GRF_VO1_CON6 : RK3588_GRF_VO1_CON3,
+		     val);
 
 	val = HIWORD_UPDATE(RK3588_SET_HPD_PATH_MASK,
 			    RK3588_SET_HPD_PATH_MASK);
 	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON7, val);
 
-	val = HIWORD_UPDATE(RK3588_HDMI0_GRANT_SEL,
-			    RK3588_HDMI0_GRANT_SEL);
+	if (hdmi->port_id)
+		val = HIWORD_UPDATE(RK3588_HDMI1_GRANT_SEL,
+				    RK3588_HDMI1_GRANT_SEL);
+	else
+		val = HIWORD_UPDATE(RK3588_HDMI0_GRANT_SEL,
+				    RK3588_HDMI0_GRANT_SEL);
 	regmap_write(hdmi->vo_regmap, RK3588_GRF_VO1_CON9, val);
 
-	val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_MSK, RK3588_HDMI0_HPD_INT_MSK);
+	if (hdmi->port_id)
+		val = HIWORD_UPDATE(RK3588_HDMI1_HPD_INT_MSK, RK3588_HDMI1_HPD_INT_MSK);
+	else
+		val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_MSK, RK3588_HDMI0_HPD_INT_MSK);
 	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
 
 	INIT_DELAYED_WORK(&hdmi->hpd_work, dw_hdmi_qp_rk3588_hpd_work);
@@ -391,14 +458,20 @@ static int __maybe_unused dw_hdmi_qp_rockchip_resume(struct device *dev)
 	      HIWORD_UPDATE(RK3588_SDAIN_MASK, RK3588_SDAIN_MASK) |
 	      HIWORD_UPDATE(RK3588_MODE_MASK, RK3588_MODE_MASK) |
 	      HIWORD_UPDATE(RK3588_I2S_SEL_MASK, RK3588_I2S_SEL_MASK);
-	regmap_write(hdmi->vo_regmap, RK3588_GRF_VO1_CON3, val);
+	regmap_write(hdmi->vo_regmap,
+		     hdmi->port_id ? RK3588_GRF_VO1_CON6 : RK3588_GRF_VO1_CON3,
+		     val);
 
 	val = HIWORD_UPDATE(RK3588_SET_HPD_PATH_MASK,
 			    RK3588_SET_HPD_PATH_MASK);
 	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON7, val);
 
-	val = HIWORD_UPDATE(RK3588_HDMI0_GRANT_SEL,
-			    RK3588_HDMI0_GRANT_SEL);
+	if (hdmi->port_id)
+		val = HIWORD_UPDATE(RK3588_HDMI1_GRANT_SEL,
+				    RK3588_HDMI1_GRANT_SEL);
+	else
+		val = HIWORD_UPDATE(RK3588_HDMI0_GRANT_SEL,
+				    RK3588_HDMI0_GRANT_SEL);
 	regmap_write(hdmi->vo_regmap, RK3588_GRF_VO1_CON9, val);
 
 	dw_hdmi_qp_resume(dev, hdmi->hdmi);

-- 
2.47.0


