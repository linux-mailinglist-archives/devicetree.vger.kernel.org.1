Return-Path: <devicetree+bounces-150331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 388D5A41C0C
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 12:05:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D5583BA526
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 11:03:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 357F825A625;
	Mon, 24 Feb 2025 11:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvW5AOCG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1CF725A342;
	Mon, 24 Feb 2025 11:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740394939; cv=none; b=LEfn654J4hQMAOB006nw3QU/KmYMYQSFuRFIq4wl9WudnIwWLnLF7FLqKhyT6qaZkveYXADe1piaOXfMfiPNH26COBCY+KqhNTf8EXzddOcfutoeAyMExwCq/MoL+W0EtHOrrUzolAl4XS3FcNWRbE6QpJZCZB74wLxsl8HFusk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740394939; c=relaxed/simple;
	bh=NyQODyQ8uWj89RAb9qkVk3Y8Kgaz3t5HvTOO1C1MGyk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mBP5NoG8/Gg1bxbHnipuDUpluxKhy2p4r1/Q/68XsI/iG7F+QPaAS/D3bxamlNs2lRn53Uif8YKpWkcNDPy9Syz2yTPwirB7By4h3Mv57RC2zYjL8DaumihzB9xKiNy1T+JUdu05vsOc6/Sd+g8quaOyMa969SIM5JPOCCMAmAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvW5AOCG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A52C4CEEF;
	Mon, 24 Feb 2025 11:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740394938;
	bh=NyQODyQ8uWj89RAb9qkVk3Y8Kgaz3t5HvTOO1C1MGyk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=hvW5AOCGB/2b6lmatkQuZRKoMhc/KGlidMIMmBsJ/4SSSNmyEE6myrEqkaepnvBx3
	 zZ4Hd7LSE1FkQ329vAWsPE3bO6l8AJMVrX1wjjsMu1Aqxf/0vIW7IFAs1Z8798+g6w
	 XFR9Y6oCHtMVB/yPJRmT+hnZUSUrGifjT9tqmrQeRBZE1nRlPgGhPtzlKpLpNLgvzN
	 6u8yZgvodcnzo5u5aIyS84VDTOgMIqf/zI+Ldj+JFB6eOMZcepKRkoI3ymPiVohDfr
	 Z5bfFW+bI58oAvRS2N58lVBXkErP42cVZ8bR76sfRbffFD9KjYVRwO/ORGP9exiVf2
	 +xY2lHB1sW2Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69EC7C021B5;
	Mon, 24 Feb 2025 11:02:18 +0000 (UTC)
From: Sasha Finkelstein via B4 Relay <devnull+fnkl.kernel.gmail.com@kernel.org>
Date: Mon, 24 Feb 2025 12:02:18 +0100
Subject: [PATCH v8 3/5] drm: panel: Add a panel driver for the Summit
 display
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250224-adpdrm-v8-3-cccf96710f0f@gmail.com>
References: <20250224-adpdrm-v8-0-cccf96710f0f@gmail.com>
In-Reply-To: <20250224-adpdrm-v8-0-cccf96710f0f@gmail.com>
To: Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, asahi@lists.linux.dev, 
 Janne Grunau <j@jannau.net>
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alyssa Ross <hi@alyssa.is>, Sasha Finkelstein <fnkl.kernel@gmail.com>, 
 Nick Chan <towinchenmi@gmail.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Neal Gompa <neal@gompa.dev>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740394936; l=6135;
 i=fnkl.kernel@gmail.com; s=20241124; h=from:subject:message-id;
 bh=mrq63iLVH9ppuvIWH/dsq2AVK1CS/dEIvxQfxlEoXcc=;
 b=te5awoQ/Qbp+HfKFyx12SRN8sQB+icInu+/9sUpDVolWQDQypVvpH25A0uChfMsW7gmmDlCTK
 MC5ufSl+cabBYn0RnsPs3PJBKCdKTLCU0Y3Pr9MyXh8y1nAt0cdCCFV
X-Developer-Key: i=fnkl.kernel@gmail.com; a=ed25519;
 pk=aSkp1PdZ+eF4jpMO6oLvz/YfT5XkBUneWwyhQrOgmsU=
X-Endpoint-Received: by B4 Relay for fnkl.kernel@gmail.com/20241124 with
 auth_id=283
X-Original-From: Sasha Finkelstein <fnkl.kernel@gmail.com>
Reply-To: fnkl.kernel@gmail.com

From: Sasha Finkelstein <fnkl.kernel@gmail.com>

This is the display panel used for the touchbar on laptops that have it.

Co-developed-by: Nick Chan <towinchenmi@gmail.com>
Signed-off-by: Nick Chan <towinchenmi@gmail.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Neal Gompa <neal@gompa.dev>
Signed-off-by: Sasha Finkelstein <fnkl.kernel@gmail.com>
---
 drivers/gpu/drm/panel/Kconfig        |   9 +++
 drivers/gpu/drm/panel/Makefile       |   1 +
 drivers/gpu/drm/panel/panel-summit.c | 132 +++++++++++++++++++++++++++++++++++
 3 files changed, 142 insertions(+)

diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
index d7469c565d1db8b8e974dd6c45d03d9352d99d63..5085a82e4bc695e85cabbc3200859bbe10cb0f91 100644
--- a/drivers/gpu/drm/panel/Kconfig
+++ b/drivers/gpu/drm/panel/Kconfig
@@ -925,6 +925,15 @@ config DRM_PANEL_SIMPLE
 	  that it can be automatically turned off when the panel goes into a
 	  low power state.
 
+config DRM_PANEL_SUMMIT
+	tristate "Apple Summit display panel"
+	depends on OF
+	depends on DRM_MIPI_DSI
+	depends on BACKLIGHT_CLASS_DEVICE
+	help
+	  Say Y if you want to enable support for the "Summit" display panel
+	  used as a touchbar on certain Apple laptops.
+
 config DRM_PANEL_SYNAPTICS_R63353
 	tristate "Synaptics R63353-based panels"
 	depends on OF
diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
index 7dcf72646cacff11bab90c78e3b8b1f357e5f14a..10ac2e850f5cd6d6546439de75483466e4015d1a 100644
--- a/drivers/gpu/drm/panel/Makefile
+++ b/drivers/gpu/drm/panel/Makefile
@@ -89,6 +89,7 @@ obj-$(CONFIG_DRM_PANEL_SHARP_LS060T1SX01) += panel-sharp-ls060t1sx01.o
 obj-$(CONFIG_DRM_PANEL_SITRONIX_ST7701) += panel-sitronix-st7701.o
 obj-$(CONFIG_DRM_PANEL_SITRONIX_ST7703) += panel-sitronix-st7703.o
 obj-$(CONFIG_DRM_PANEL_SITRONIX_ST7789V) += panel-sitronix-st7789v.o
+obj-$(CONFIG_DRM_PANEL_SUMMIT) += panel-summit.o
 obj-$(CONFIG_DRM_PANEL_SYNAPTICS_R63353) += panel-synaptics-r63353.o
 obj-$(CONFIG_DRM_PANEL_SONY_ACX565AKM) += panel-sony-acx565akm.o
 obj-$(CONFIG_DRM_PANEL_SONY_TD4353_JDI) += panel-sony-td4353-jdi.o
diff --git a/drivers/gpu/drm/panel/panel-summit.c b/drivers/gpu/drm/panel/panel-summit.c
new file mode 100644
index 0000000000000000000000000000000000000000..e780faee18570c9970d381b3f7c65b95665469cd
--- /dev/null
+++ b/drivers/gpu/drm/panel/panel-summit.c
@@ -0,0 +1,132 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <linux/backlight.h>
+#include <drm/drm_device.h>
+#include <drm/drm_mipi_dsi.h>
+#include <drm/drm_mode.h>
+#include <drm/drm_modes.h>
+#include <drm/drm_panel.h>
+#include <drm/drm_probe_helper.h>
+#include <video/mipi_display.h>
+
+struct summit_data {
+	struct mipi_dsi_device *dsi;
+	struct backlight_device *bl;
+	struct drm_panel panel;
+};
+
+static int summit_set_brightness(struct device *dev)
+{
+	struct summit_data *s_data = dev_get_drvdata(dev);
+	int level = backlight_get_brightness(s_data->bl);
+
+	return mipi_dsi_dcs_set_display_brightness(s_data->dsi, level);
+}
+
+static int summit_bl_update_status(struct backlight_device *dev)
+{
+	return summit_set_brightness(&dev->dev);
+}
+
+static const struct backlight_ops summit_bl_ops = {
+	.update_status	= summit_bl_update_status,
+};
+
+static struct drm_display_mode summit_mode = {
+	.vdisplay = 2008,
+	.hdisplay = 60,
+	.hsync_start = 60 + 8,
+	.hsync_end = 60 + 8 + 80,
+	.htotal = 60 + 8 + 80 + 40,
+	.vsync_start = 2008 + 1,
+	.vsync_end = 2008 + 1 + 15,
+	.vtotal = 2008 + 1 + 15 + 6,
+	.clock = ((60 + 8 + 80 + 40) * (2008 + 1 + 15 + 6) * 60) / 1000,
+	.type = DRM_MODE_TYPE_DRIVER,
+	.flags = DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC,
+};
+
+static int summit_get_modes(struct drm_panel *panel,
+			    struct drm_connector *connector)
+{
+	connector->display_info.non_desktop = true;
+	drm_object_property_set_value(&connector->base,
+				      connector->dev->mode_config.non_desktop_property,
+				      connector->display_info.non_desktop);
+
+	return drm_connector_helper_get_modes_fixed(connector, &summit_mode);
+}
+
+static const struct drm_panel_funcs summit_panel_funcs = {
+	.get_modes = summit_get_modes,
+};
+
+static int summit_probe(struct mipi_dsi_device *dsi)
+{
+	struct backlight_properties props = { 0 };
+	struct device *dev = &dsi->dev;
+	struct summit_data *s_data;
+	int ret;
+
+	s_data = devm_kzalloc(dev, sizeof(*s_data), GFP_KERNEL);
+	if (!s_data)
+		return -ENOMEM;
+
+	mipi_dsi_set_drvdata(dsi, s_data);
+	s_data->dsi = dsi;
+
+	ret = device_property_read_u32(dev, "max-brightness", &props.max_brightness);
+	if (ret)
+		return ret;
+	props.type = BACKLIGHT_RAW;
+
+	s_data->bl = devm_backlight_device_register(dev, dev_name(dev),
+						    dev, s_data, &summit_bl_ops, &props);
+	if (IS_ERR(s_data->bl))
+		return PTR_ERR(s_data->bl);
+
+	drm_panel_init(&s_data->panel, dev, &summit_panel_funcs,
+		       DRM_MODE_CONNECTOR_DSI);
+	drm_panel_add(&s_data->panel);
+
+	return mipi_dsi_attach(dsi);
+}
+
+static void summit_remove(struct mipi_dsi_device *dsi)
+{
+	struct summit_data *s_data = mipi_dsi_get_drvdata(dsi);
+
+	mipi_dsi_detach(dsi);
+	drm_panel_remove(&s_data->panel);
+}
+
+static int summit_suspend(struct device *dev)
+{
+	struct summit_data *s_data = dev_get_drvdata(dev);
+
+	return mipi_dsi_dcs_set_display_brightness(s_data->dsi, 0);
+}
+
+static DEFINE_SIMPLE_DEV_PM_OPS(summit_pm_ops, summit_suspend,
+				summit_set_brightness);
+
+static const struct of_device_id summit_of_match[] = {
+	{ .compatible = "apple,summit" },
+	{},
+};
+
+MODULE_DEVICE_TABLE(of, summit_of_match);
+
+static struct mipi_dsi_driver summit_driver = {
+	.probe = summit_probe,
+	.remove = summit_remove,
+	.driver = {
+		.name = "panel-summit",
+		.of_match_table = summit_of_match,
+		.pm = pm_sleep_ptr(&summit_pm_ops),
+	},
+};
+module_mipi_dsi_driver(summit_driver);
+
+MODULE_DESCRIPTION("Summit Display Panel Driver");
+MODULE_LICENSE("GPL");

-- 
2.48.1



