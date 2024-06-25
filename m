Return-Path: <devicetree+bounces-79736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F04916919
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 15:37:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C333285053
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 13:37:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF77616F0DF;
	Tue, 25 Jun 2024 13:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLx9rPYo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 849C71607A7;
	Tue, 25 Jun 2024 13:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719322554; cv=none; b=gJP9XX029mK1wZYdD6jt52fxIeJZa7nu4QXMvbVycRQnk7lbsqzCHdIeWp6gedHTX1J3D6949FqZU8w01JpI7zJdi6OzIuGy9ZdAcAGz8s0cCknYNgKjVzdyzBR+R3jp63A/ye4m8Ri4lKffaZqMhGjr9tuxjaO5jhzyCvi96MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719322554; c=relaxed/simple;
	bh=ikjoj4kkEsfTQd+RZ/gm5BExL5HjXIOoLQCCAeGquTw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SP/KbWKv1Afu2NEvO5W4c7kKPXaA8CqyXB8KLsrgfcEibPvYe6jyi9GiDSnkMwK7LCUGT5eD3HQB6BVOfuqLU2ZeyH0O1PS9JLX+OaR/En3YjrhcKjUsLeaxlgWxvTSpuB6eCeowCo5xYHkNk8kH6SiB5eAoVRP4a+nEIdrzvNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLx9rPYo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26BF6C4AF09;
	Tue, 25 Jun 2024 13:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719322554;
	bh=ikjoj4kkEsfTQd+RZ/gm5BExL5HjXIOoLQCCAeGquTw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=tLx9rPYo0bX7jP4j/Q6l/qr3B9wyAKuoW4+D5u89f3VcI0JUyXsnvlzx2YlOYrqnV
	 5ihqsC7Nd4sfCOlL9S8mj/i6rtUvK8aJGN2PFISgz2wmNAmAoHGfDfsD7LQZKkuxyP
	 43s+97RrNQc9eh4LTIfHyHJGTdKMjIJCkhwyrO5td8Z8LeBvydQ8vj0jGRxVqANOpk
	 9pQMHddxl2NPmzPECDkFz4A67Il3l3w8Xz4Nxrjofhu0lLmYIogEHFSgeQwkZrHYyh
	 Ptay7LhvqzQvXQeo7AZTYv+v9lRXnelb5QBEeKbcN74S+zXjcKfpvcWCapsJG5HFsi
	 dRuoRHEkPDy4A==
From: Michael Walle <mwalle@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Walle <mwalle@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Gunnar Dibbern <gunnar.dibbern@lht.dlh.de>
Subject: [PATCH 2/2] drm/panel: add Ilitek ILI9806E panel driver
Date: Tue, 25 Jun 2024 15:33:17 +0200
Message-Id: <20240625133317.2869038-3-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240625133317.2869038-1-mwalle@kernel.org>
References: <20240625133317.2869038-1-mwalle@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Ortustech COM35H3P70ULC panel is based on the ILI9806E DSI display
controller.

Co-developed-by: Gunnar Dibbern <gunnar.dibbern@lht.dlh.de>
Signed-off-by: Gunnar Dibbern <gunnar.dibbern@lht.dlh.de>
Signed-off-by: Michael Walle <mwalle@kernel.org>
---
 MAINTAINERS                                   |   5 +
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-ilitek-ili9806e.c | 413 ++++++++++++++++++
 4 files changed, 428 insertions(+)
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 77008faf25ee..74b538c6b8bd 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7002,6 +7002,11 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/display/panel/ilitek,ili9805.yaml
 F:	drivers/gpu/drm/panel/panel-ilitek-ili9805.c
 
+DRM DRIVER FOR ILITEK ILI9806E PANELS
+M:	Michael Walle <mwalle@kernel.org>
+S:	Maintained
+F:	drivers/gpu/drm/panel/panel-ilitek-ili9806e.c
+
 DRM DRIVER FOR JADARD JD9365DA-H3 MIPI-DSI LCD PANELS
 M:	Jagan Teki <jagan@edgeble.ai>
 S:	Maintained
diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
index bf4eadfe21cb..904a928bc60e 100644
--- a/drivers/gpu/drm/panel/Kconfig
+++ b/drivers/gpu/drm/panel/Kconfig
@@ -205,6 +205,15 @@ config DRM_PANEL_ILITEK_ILI9805
 	  Say Y if you want to enable support for panels based on the
 	  Ilitek ILI9805 controller.
 
+config DRM_PANEL_ILITEK_ILI9806E
+	tristate "Ilitek ILI9806E-based panels"
+	depends on OF
+	depends on DRM_MIPI_DSI
+	depends on BACKLIGHT_CLASS_DEVICE
+	help
+	  Say Y if you want to enable support for panels based on the
+	  Ilitek ILI9806E controller.
+
 config DRM_PANEL_ILITEK_ILI9881C
 	tristate "Ilitek ILI9881C-based panels"
 	depends on OF
diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
index 051b75b3df7b..12ce91416849 100644
--- a/drivers/gpu/drm/panel/Makefile
+++ b/drivers/gpu/drm/panel/Makefile
@@ -21,6 +21,7 @@ obj-$(CONFIG_DRM_PANEL_HIMAX_HX8394) += panel-himax-hx8394.o
 obj-$(CONFIG_DRM_PANEL_ILITEK_IL9322) += panel-ilitek-ili9322.o
 obj-$(CONFIG_DRM_PANEL_ILITEK_ILI9341) += panel-ilitek-ili9341.o
 obj-$(CONFIG_DRM_PANEL_ILITEK_ILI9805) += panel-ilitek-ili9805.o
+obj-$(CONFIG_DRM_PANEL_ILITEK_ILI9806E) += panel-ilitek-ili9806e.o
 obj-$(CONFIG_DRM_PANEL_ILITEK_ILI9881C) += panel-ilitek-ili9881c.o
 obj-$(CONFIG_DRM_PANEL_ILITEK_ILI9882T) += panel-ilitek-ili9882t.o
 obj-$(CONFIG_DRM_PANEL_INNOLUX_EJ030NA) += panel-innolux-ej030na.o
diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9806e.c b/drivers/gpu/drm/panel/panel-ilitek-ili9806e.c
new file mode 100644
index 000000000000..c3942eda668d
--- /dev/null
+++ b/drivers/gpu/drm/panel/panel-ilitek-ili9806e.c
@@ -0,0 +1,413 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/errno.h>
+#include <linux/fb.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/property.h>
+
+#include <linux/gpio/consumer.h>
+#include <linux/regulator/consumer.h>
+
+#include <drm/drm_mipi_dsi.h>
+#include <drm/drm_modes.h>
+#include <drm/drm_panel.h>
+
+#include <video/mipi_display.h>
+
+struct panel_desc {
+	const struct drm_display_mode *display_mode;
+	unsigned long mode_flags;
+	enum mipi_dsi_pixel_format format;
+	unsigned int lanes;
+	void (*init_sequence)(struct mipi_dsi_multi_context *ctx);
+};
+
+struct ili9806e_panel {
+	struct drm_panel panel;
+	struct mipi_dsi_device *dsi;
+	struct gpio_desc *reset_gpio;
+	struct regulator_bulk_data supplies[2];
+	const struct panel_desc *desc;
+	enum drm_panel_orientation orientation;
+};
+
+static const char * const regulator_names[] = {
+	"vdd",
+	"vccio",
+};
+
+static inline struct ili9806e_panel *to_ili9806e_panel(struct drm_panel *panel)
+{
+	return container_of(panel, struct ili9806e_panel, panel);
+}
+
+static int ili9806e_power_on(struct ili9806e_panel *ctx)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	int ret;
+
+	gpiod_set_value(ctx->reset_gpio, 1);
+
+	ret = regulator_bulk_enable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
+	if (ret < 0) {
+		dev_err(&dsi->dev, "regulator bulk enable failed: %d\n", ret);
+		return ret;
+	}
+
+	usleep_range(10000, 20000);
+	gpiod_set_value(ctx->reset_gpio, 0);
+	usleep_range(10000, 20000);
+
+	return 0;
+}
+
+static int ili9806e_power_off(struct ili9806e_panel *ctx)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	int ret;
+
+	gpiod_set_value(ctx->reset_gpio, 1);
+
+	ret = regulator_bulk_disable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
+	if (ret)
+		dev_err(&dsi->dev, "regulator bulk disable failed: %d\n", ret);
+
+	return ret;
+}
+
+static int ili9806e_on(struct ili9806e_panel *ili9806e)
+{
+	struct mipi_dsi_multi_context ctx = { .dsi = ili9806e->dsi };
+
+	if (ili9806e->desc->init_sequence)
+		ili9806e->desc->init_sequence(&ctx);
+
+	mipi_dsi_dcs_exit_sleep_mode_multi(&ctx);
+	mipi_dsi_msleep(&ctx, 120);
+	mipi_dsi_dcs_set_display_on_multi(&ctx);
+
+	return ctx.accum_err;
+}
+
+static int ili9806e_off(struct ili9806e_panel *panel)
+{
+	struct mipi_dsi_multi_context ctx = { .dsi = panel->dsi };
+
+	mipi_dsi_dcs_set_display_off_multi(&ctx);
+	mipi_dsi_dcs_enter_sleep_mode_multi(&ctx);
+	mipi_dsi_msleep(&ctx, 120);
+
+	return ctx.accum_err;
+}
+
+static int ili9806e_prepare(struct drm_panel *panel)
+{
+	struct ili9806e_panel *ctx = to_ili9806e_panel(panel);
+	int ret;
+
+	ret = ili9806e_power_on(ctx);
+	if (ret < 0)
+		return ret;
+
+	ret = ili9806e_on(ctx);
+	if (ret < 0) {
+		ili9806e_power_off(ctx);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int ili9806e_unprepare(struct drm_panel *panel)
+{
+	struct ili9806e_panel *ctx = to_ili9806e_panel(panel);
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	int ret;
+
+	ili9806e_off(ctx);
+
+	ret = ili9806e_power_off(ctx);
+	if (ret < 0)
+		dev_err(&dsi->dev, "power off failed: %d\n", ret);
+
+	return ret;
+}
+
+static int ili9806e_get_modes(struct drm_panel *panel,
+			      struct drm_connector *connector)
+{
+	struct ili9806e_panel *ctx = to_ili9806e_panel(panel);
+	struct drm_display_mode *mode;
+
+	mode = drm_mode_duplicate(connector->dev, ctx->desc->display_mode);
+	if (!mode)
+		return -ENOMEM;
+
+	drm_mode_set_name(mode);
+
+	mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
+	connector->display_info.width_mm = mode->width_mm;
+	connector->display_info.height_mm = mode->height_mm;
+	drm_mode_probed_add(connector, mode);
+
+	return 1;
+}
+
+static enum drm_panel_orientation ili9806e_get_orientation(struct drm_panel *panel)
+{
+	struct ili9806e_panel *ctx = to_ili9806e_panel(panel);
+
+	return ctx->orientation;
+}
+
+static const struct drm_panel_funcs ili9806e_funcs = {
+	.prepare = ili9806e_prepare,
+	.unprepare = ili9806e_unprepare,
+	.get_modes = ili9806e_get_modes,
+	.get_orientation = ili9806e_get_orientation,
+};
+
+static int ili9806e_dsi_probe(struct mipi_dsi_device *dsi)
+{
+	struct device *dev = &dsi->dev;
+	struct ili9806e_panel *ctx;
+	int i, ret;
+
+	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	ctx->desc = device_get_match_data(dev);
+
+	for (i = 0; i < ARRAY_SIZE(ctx->supplies); i++)
+		ctx->supplies[i].supply = regulator_names[i];
+
+	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ctx->supplies),
+				      ctx->supplies);
+	if (ret < 0)
+		return ret;
+
+	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
+	if (IS_ERR(ctx->reset_gpio))
+		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
+				     "Failed to get reset-gpios\n");
+
+	mipi_dsi_set_drvdata(dsi, ctx);
+	ctx->dsi = dsi;
+
+	dsi->mode_flags = ctx->desc->mode_flags;
+	dsi->format = ctx->desc->format;
+	dsi->lanes = ctx->desc->lanes;
+
+	drm_panel_init(&ctx->panel, dev, &ili9806e_funcs,
+		       DRM_MODE_CONNECTOR_DSI);
+
+	ret = of_drm_get_panel_orientation(dev->of_node, &ctx->orientation);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to get orientation\n");
+
+	ret = drm_panel_of_backlight(&ctx->panel);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to get backlight\n");
+
+	ctx->panel.prepare_prev_first = true;
+	drm_panel_add(&ctx->panel);
+
+	ret = mipi_dsi_attach(dsi);
+	if (ret < 0) {
+		dev_err_probe(dev, ret, "Failed to attach to DSI host\n");
+		drm_panel_remove(&ctx->panel);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void ili9806e_dsi_remove(struct mipi_dsi_device *dsi)
+{
+	struct ili9806e_panel *ctx = mipi_dsi_get_drvdata(dsi);
+
+	mipi_dsi_detach(dsi);
+	drm_panel_remove(&ctx->panel);
+}
+
+static void com35h3p70ulc_init(struct mipi_dsi_multi_context *ctx)
+{
+	/* Switch to page 1 */
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xff, 0xff, 0x98, 0x06, 0x04, 0x01);
+	/* Interface Settings */
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x08, 0x18);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x21, 0x01);
+	/* Panel Settings */
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x30, 0x03);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x31, 0x00);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x60, 0x0d);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x61, 0x08);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x62, 0x08);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x63, 0x09);
+	/* Power Control */
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x40, 0x30);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x41, 0x44);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x42, 0x00);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x43, 0x89);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x44, 0x8e);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x45, 0xd9);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x46, 0x33);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x47, 0x33);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x50, 0x90);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x51, 0x90);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x56, 0x00);
+	/* Gamma Settings */
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xa0, 0x00);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xa1, 0x0c);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xa2, 0x13);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xa3, 0x0f);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xa4, 0x0a);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xa5, 0x0d);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xa6, 0x0c);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xa7, 0x0b);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xa8, 0x01);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xa9, 0x06);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xaa, 0x15);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xab, 0x07);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xac, 0x12);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xad, 0x28);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xae, 0x20);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xaf, 0x14);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xc0, 0x00);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xc1, 0x0c);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xc2, 0x13);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xc3, 0x0f);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xc4, 0x09);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xc5, 0x0d);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xc6, 0x0c);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xc7, 0x0b);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xc8, 0x01);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xc9, 0x06);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xca, 0x14);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xcb, 0x07);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xcc, 0x0f);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xcd, 0x21);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xce, 0x17);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xcf, 0x0a);
+
+	/* Switch to page 7 */
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xff, 0xff, 0x98, 0x06, 0x04, 0x07);
+	/* Power Control */
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x06, 0x00);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x18, 0x1d);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x17, 0x32);
+
+	/* Switch to page 6 */
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xff, 0xff, 0x98, 0x06, 0x04, 0x06);
+	/* GIP settings */
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x00, 0x20);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x01, 0x02);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x02, 0x00);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x03, 0x02);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x04, 0x01);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x05, 0x01);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x06, 0x88);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x07, 0x04);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x08, 0x03);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x09, 0x80);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x0a, 0x00);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x0b, 0x00);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x0c, 0x01);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x0d, 0x01);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x0e, 0x00);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x0f, 0x00);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x10, 0x55);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x11, 0x50);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x12, 0x01);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x13, 0x00);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x14, 0x00);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x15, 0x43);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x16, 0x0b);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x17, 0x00);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x18, 0x00);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x19, 0x10);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x1a, 0x00);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x1b, 0x00);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x1c, 0x00);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x1d, 0x00);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x20, 0x01);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x21, 0x23);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x22, 0x45);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x23, 0x67);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x24, 0x01);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x25, 0x23);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x26, 0x45);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x27, 0x67);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x30, 0x02);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x31, 0x22);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x32, 0x22);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x33, 0x88);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x34, 0xaa);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x35, 0xbb);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x36, 0x66);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x37, 0x22);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x38, 0x22);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x39, 0x22);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x3a, 0x22);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x3b, 0x22);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x3c, 0x22);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x3d, 0x22);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x3e, 0x22);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x3f, 0x22);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x40, 0x22);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x53, 0x12);
+
+	/* Switch to page 0 */
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xff, 0xff, 0x98, 0x06, 0x04, 0x00);
+	/* Interface Pixel format */
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x3a, 0x60);
+};
+
+static const struct drm_display_mode com35h3p70ulc_default_mode = {
+	.clock = 22400,
+	.hdisplay = 480,
+	.hsync_start = 480 + 16,
+	.hsync_end = 480 + 16 + 16,
+	.htotal = 480 + 16 + 16 + 16,
+	.vdisplay = 640,
+	.vsync_start = 640 + 52,
+	.vsync_end = 640 + 52 + 4,
+	.vtotal = 640 + 52 + 4 + 16,
+	.width_mm = 53,
+	.height_mm = 71,
+};
+
+static const struct panel_desc com35h3p70ulc_desc = {
+	.init_sequence = com35h3p70ulc_init,
+	.display_mode = &com35h3p70ulc_default_mode,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+		      MIPI_DSI_MODE_LPM,
+	.format = MIPI_DSI_FMT_RGB888,
+	.lanes = 2,
+};
+
+static const struct of_device_id ili9806e_of_match[] = {
+	{ .compatible = "ortustech,com35h3p70ulc", .data = &com35h3p70ulc_desc },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, ili9806e_of_match);
+
+static struct mipi_dsi_driver ili9806e_dsi_driver = {
+	.driver = {
+		.name = "ili9806e-dsi",
+		.of_match_table = ili9806e_of_match,
+	},
+	.probe = ili9806e_dsi_probe,
+	.remove = ili9806e_dsi_remove,
+};
+module_mipi_dsi_driver(ili9806e_dsi_driver);
+
+MODULE_AUTHOR("Gunnar Dibbern <gunnar.dibbern@lht.dlh.de>");
+MODULE_AUTHOR("Michael Walle <mwalle@kernel.org>");
+MODULE_DESCRIPTION("Ilitek ILI9806E Controller Driver");
+MODULE_LICENSE("GPL");
-- 
2.39.2


