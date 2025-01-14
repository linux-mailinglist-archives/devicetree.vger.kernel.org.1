Return-Path: <devicetree+bounces-138559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E96A11326
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 22:39:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB9F11885FE4
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 21:39:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 534BA20D507;
	Tue, 14 Jan 2025 21:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSTPNm64"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2675F2080DA;
	Tue, 14 Jan 2025 21:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736890739; cv=none; b=HOaTBWHb9tWtetrLoszuCPHYMeu3JEXjH+JbWjVexOJunma/EJBy9F9DR97JuJLsYQxSsX5H4rtFHFWUpn/bizSY60Sw45S0AXZy3vqAAFL4gwPCjcspXecusveAm5jaYjUPesanKBtdnNXCNvofcfdfnm2M2UvrbXxvlL/umMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736890739; c=relaxed/simple;
	bh=VDgDWVGfEkGR3QdJku8jaSDzSVlfkBj7qA3Y2VPLcsk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PBLWNPJzBUUr/xqbai3S5j59N7H89aphmE0AGj80qGqYegi+mcMfr1OysMrimuuY08joshfc4/cYfZyMzVRiy2+ibAr4CfHzbqmgbL1apHw0HQSBdS3ShVpTB/AqSIp0C3gztlfasGsjLZOMsA7Q+2Gq2fiVotSCoEf7SWkqoTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSTPNm64; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC41BC4CEE6;
	Tue, 14 Jan 2025 21:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736890739;
	bh=VDgDWVGfEkGR3QdJku8jaSDzSVlfkBj7qA3Y2VPLcsk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=mSTPNm64AqXovEnsH7tTNHMx+8n3uGRvVINXflDEqGTzjH66yS3b51d0w9hxyUBa7
	 pF3jYErgtV/4YLz0BvwiQVQDs6nfQzp7wTIT9Bb/ZTlhySeQWB+b7d8lisndQLIh5k
	 etw9EHmjPYM4Z0kM7gjO84z7nfXLAS7AQcbRe5wa+R5Bqc+4FVpl5o+Av5VGHDUtDN
	 M0QYgLhUI0ZXYNfC2LPk9K8tXl3zYZy0h8Oq7x3YzJZChDyoJw0p58izJ3SeRxIlVc
	 GOqm2+xVy3iYkzS3S0teoPk1rTtf4KPPc7+1W7PXbqUyyjG31btba4oNXYO5xY2AL5
	 4lneeLbSz+3dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCB84C02188;
	Tue, 14 Jan 2025 21:38:58 +0000 (UTC)
From: Sasha Finkelstein via B4 Relay <devnull+fnkl.kernel.gmail.com@kernel.org>
Date: Tue, 14 Jan 2025 22:38:54 +0100
Subject: [PATCH v4 3/5] drm: panel: Add a panel driver for the Summit
 display
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250114-adpdrm-v4-3-e9b5260a39f1@gmail.com>
References: <20250114-adpdrm-v4-0-e9b5260a39f1@gmail.com>
In-Reply-To: <20250114-adpdrm-v4-0-e9b5260a39f1@gmail.com>
To: Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, asahi@lists.linux.dev
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alyssa Ross <hi@alyssa.is>, Sasha Finkelstein <fnkl.kernel@gmail.com>, 
 Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736890736; l=6078;
 i=fnkl.kernel@gmail.com; s=20241124; h=from:subject:message-id;
 bh=Ow0nORepBUNGoYohTBVqVkG339Ob1ZVg2nGQaMbNqFk=;
 b=tYG8gmFadyOL355y4NbZwgO2DyFWjqtEQ7ISKX+O+xLOX5bL4nihIUYzNxB6oki+r8s4587h7
 3jr5CN7V9NnBCnj64PbrL/dDenKtzMPtt486YAgSeirVAI15uIDO9nj
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
index 0000000000000000000000000000000000000000..fb084f280c6fa3197b64876edd03172dbdf962b3
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
+static int summit_get_modes(struct drm_panel *panel,
+			    struct drm_connector *connector)
+{
+	struct drm_display_mode *mode = drm_mode_create(connector->dev);
+
+	connector->display_info.non_desktop = true;
+	drm_object_property_set_value(&connector->base,
+				      connector->dev->mode_config.non_desktop_property,
+				      connector->display_info.non_desktop);
+
+	mode->vdisplay = 2008;
+	mode->hdisplay = 60;
+	mode->hsync_start = mode->hdisplay + 8;
+	mode->hsync_end = mode->hsync_start + 80;
+	mode->htotal = mode->hsync_end + 40;
+	mode->vsync_start = mode->vdisplay + 1;
+	mode->vsync_end = mode->vsync_start + 15;
+	mode->vtotal = mode->vsync_end + 6;
+	mode->clock = (mode->vtotal * mode->htotal * 60) / 1000;
+	mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
+	mode->flags = DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC;
+	drm_mode_set_name(mode);
+	drm_mode_probed_add(connector, mode);
+	return 1;
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
2.48.0



