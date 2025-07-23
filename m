Return-Path: <devicetree+bounces-199114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A92B0F65C
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 17:01:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9284C967D1F
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 15:00:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF04E2FD872;
	Wed, 23 Jul 2025 14:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="gfGLTuYk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A343E289373
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 14:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753282393; cv=none; b=GCfC4WEX3j1FONZbXVTZxEZu0Xj/zyeJ3O8Qk4Ouw4kgv/KCZQX9b7dhJ42XeMoul9NpUl5H1wjxZh/ojQyDaJo+Hcxx43gwdsTatC0De3BEEP7wnveO4FpOi0n2aLhvdU6MaOkmyEaqnUjpCQX2qujWP8O+7JlLds/3in2Tk3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753282393; c=relaxed/simple;
	bh=V7RSOUSwz0pz27wehbhSPjrAw3DpGfq7XXzJmu1/SDI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gBhctd8WqajXrZDPpKe6noetWWc8Hd3hxlKPaY17Bct+3cEevAd7QAu19IO6ZAZjqzaSd3jtViTlFl0emQETDShXFO02Ub656KNjnQ23vj/lzEOfBJRGfWeskkc+i+i9+gTeL9ml7n9Z4psBuNMozvy5cTM+aCUkISfrsiwqsC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=gfGLTuYk; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-60700a745e5so12658553a12.3
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 07:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1753282367; x=1753887167; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Am1JBNV0HkYK+0lcOte5YOE0wpQ64M0Fby5sEdZvWpc=;
        b=gfGLTuYksb3VMc0nq0bN01vwUC0Nq9aTqre73z57FPzy/4rEhwndgX2eMi+lslG3F3
         2xmUnVY+yL4nVRd35LygYyYMnF5n84sHku+46OeoH+fABPInEVYQ0ZCTWDwNQExBOdT+
         jhsdWYVgv8dEbZs3G+GiIeVDQ6AJKzvDMwAAd5RoVHQW7JaCuQZHOcOEu9KdGdMhge6V
         xqNsGWQ/G+pmCBf+FgbpXEMnzMmyEwHy8Bb5QRf9GTDnN4jqRH7ZKlHaLua/eTSI1BJ/
         /6jRhbG2AjDH8Tb0aGGlwVALYFURss9/9hPRYS0p5dme9BdeNJ54ad132V+1fs03jHTI
         LioQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753282367; x=1753887167;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Am1JBNV0HkYK+0lcOte5YOE0wpQ64M0Fby5sEdZvWpc=;
        b=AsL3AIM63xr1uqzwkum7npRntNbszPmZHv0x+f+WA3TpszzRaPVlQtCHt+ODVX104f
         cAOj3ITURmcVZyyI9SSOrK0erv+ZCAasrnSAcxJsQ6Nz5ekaaE2jaCdUdjh+6ko1/uHU
         G5AQcXeVFoXYg/Gp9pDZUpM7ZBLPuYJKd89YVBQ5nckvd+cVbOpydrSJE9O3zppY4NTi
         oXOp9Ptw7XtBAHMX/FMb5b+A6rdwDTSzCGi0ywVkngyWZ/suiDEORHStXcD6So6D4ObR
         i7wG5HKIM56UxzEsQaSIkYpnGrrN/HwN4ge8ex4hrkxw1fiBp6oVOSctGX2u2oDEKLRv
         7CEw==
X-Forwarded-Encrypted: i=1; AJvYcCVlTu0/2ZYb6nUOPFB8F45pZAbS5hvpELmexAWrQqvV5TYB8WxS8mdPG5N75C7nl4YJjARN1GrilfdB@vger.kernel.org
X-Gm-Message-State: AOJu0YwcO9NmIN94Y2cL/35GQuyUUIjUKByqzPtODVqvaJdhco4mUFz1
	92raXX4ZRcujSaZ1lnWb+0y7oWM4q4QMrVoizpf5LzhSgz2UqGdtixK/hNqpeVgL59Y=
X-Gm-Gg: ASbGncu4wcx3IVX3bLDppSnHcXIPLRfFiimNwyVpPja7eNAxMfoE05vWRW1MZrxPu5Y
	8LXuJFHFYxrl78BxNjn0HNluUwPAioKI+mAbsHFhcX9KYRfGOSaMcWjVB9gPVIwc+Wa+H29vIJ6
	4P5YNsagn/4arncdkWzyeGRdh/7T5KjdU9o+A3J62LjYER4jROq8wbKGpM6FpB+XSk+ZpSxgDtQ
	RBzoFTyZN46YO4KQNaeCTgRR31SDnpG7lvVtuHnn9KzDjn/hi69Xtz+TSgGpji0RnQ9zCchYKIQ
	vr+K0/8bUbVFLtGe7XTq7O6YfGUyqTchGxh4IxEFjZ41gv6hFFHj6/xMcYpbhojSmQH/rmSeFKL
	0mY6OpWpWDZoi6YHrnEgmiQj0njEbLS2DGl8As73aQsOXnC4hqFKuAQ1Pm6Krcb5nNw==
X-Google-Smtp-Source: AGHT+IH94ZUnNGb0lEOVe4bBx+yjJhL5gBjTgdRmkg+90vAKsmFBMP4Z1uTvu/CRcx/fw+MLkWtpGA==
X-Received: by 2002:a05:6402:3593:b0:60c:44d6:281f with SMTP id 4fb4d7f45d1cf-6149b409f56mr3513844a12.7.1753282367163;
        Wed, 23 Jul 2025 07:52:47 -0700 (PDT)
Received: from tora.lan (83.22.10.6.ipv4.supernova.orange.pl. [83.22.10.6])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-612c8f33964sm8575657a12.18.2025.07.23.07.52.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jul 2025 07:52:46 -0700 (PDT)
From: Alicja Michalska <alicja.michalska@9elements.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Alicja Michalska <alicja.michalska@9elements.com>
Subject: [PATCH 2/3] drm: panel: Add support for Samsung EA8076 AMOLED panel
Date: Wed, 23 Jul 2025 16:52:10 +0200
Message-ID: <20250723145208.338162-4-alicja.michalska@9elements.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250723145208.338162-2-alicja.michalska@9elements.com>
References: <20250723145208.338162-2-alicja.michalska@9elements.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Alicja Michalska <alicja.michalska@9elements.com>
---
 MAINTAINERS                                  |   6 +
 drivers/gpu/drm/panel/Kconfig                |   7 +
 drivers/gpu/drm/panel/Makefile               |   1 +
 drivers/gpu/drm/panel/panel-samsung-ea8076.c | 274 +++++++++++++++++++
 4 files changed, 288 insertions(+)
 create mode 100644 drivers/gpu/drm/panel/panel-samsung-ea8076.c

diff --git a/MAINTAINERS b/MAINTAINERS
index dd844ac8d910..d392760bdc34 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7673,6 +7673,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/display/panel/samsung,s6d7aa0.yaml
 F:	drivers/gpu/drm/panel/panel-samsung-s6d7aa0.c
 
+DRM DRIVER FOR SAMSUNG EA8076 PANELS
+M:	Alicja Michalska <alicja.michalska@9elements.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/display/panel/samsung,ea8076.yaml
+F:	drivers/gpu/drm/panel/panel-samsung-ea8076.c
+
 DRM DRIVER FOR SAMSUNG S6E3HA8 PANELS
 M:	Dzmitry Sankouski <dsankouski@gmail.com>
 S:	Maintained
diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
index c288dcc87d98..5b594f25a03c 100644
--- a/drivers/gpu/drm/panel/Kconfig
+++ b/drivers/gpu/drm/panel/Kconfig
@@ -729,6 +729,13 @@ config DRM_PANEL_SAMSUNG_S6D7AA0
 	select DRM_MIPI_DSI
 	select VIDEOMODE_HELPERS
 
+config DRM_PANEL_SAMSUNG_EA8076
+	tristate "Samsung EA8076 DSI video mode panel"
+	depends on OF
+	depends on DRM_MIPI_DSI
+	depends on BACKLIGHT_CLASS_DEVICE
+	select VIDEOMODE_HELPERS
+
 config DRM_PANEL_SAMSUNG_S6E3HA2
 	tristate "Samsung S6E3HA2 DSI video mode panel"
 	depends on OF
diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
index 40b1693988d6..ce4ea1a9fc61 100644
--- a/drivers/gpu/drm/panel/Makefile
+++ b/drivers/gpu/drm/panel/Makefile
@@ -72,6 +72,7 @@ obj-$(CONFIG_DRM_PANEL_SAMSUNG_LD9040) += panel-samsung-ld9040.o
 obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6D16D0) += panel-samsung-s6d16d0.o
 obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6D27A1) += panel-samsung-s6d27a1.o
 obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6D7AA0) += panel-samsung-s6d7aa0.o
+obj-$(CONFIG_DRM_PANEL_SAMSUNG_EA8076) += panel-samsung-ea8076.o
 obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E3FA7) += panel-samsung-s6e3fa7.o
 obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E3HA2) += panel-samsung-s6e3ha2.o
 obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E3HA8) += panel-samsung-s6e3ha8.o
diff --git a/drivers/gpu/drm/panel/panel-samsung-ea8076.c b/drivers/gpu/drm/panel/panel-samsung-ea8076.c
new file mode 100644
index 000000000000..2b01ab113c63
--- /dev/null
+++ b/drivers/gpu/drm/panel/panel-samsung-ea8076.c
@@ -0,0 +1,274 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+/*
+ * Samsung EA8076 (1080x2340 AMOLED) panel driver
+ * Copyright (c) 2025 Alicja Michalska <alicja.michalska@9elements.com>
+ */
+
+#include <linux/backlight.h>
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+
+#include <video/mipi_display.h>
+#include <drm/drm_mipi_dsi.h>
+#include <drm/drm_modes.h>
+#include <drm/drm_panel.h>
+#include <drm/drm_probe_helper.h>
+
+struct ea8076 {
+	struct drm_panel panel;
+	struct mipi_dsi_device *dsi;
+	struct gpio_desc *reset_gpio;
+};
+
+static inline struct ea8076 *to_ea8076(struct drm_panel *panel)
+{
+	return container_of(panel, struct ea8076, panel);
+}
+
+static void ea8076_reset(struct ea8076 *ctx)
+{
+	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+	usleep_range(1000, 2000);
+	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
+	usleep_range(10000, 11000);
+}
+
+static int ea8076_on(struct ea8076 *ctx)
+{
+	struct mipi_dsi_multi_context dsi_ctx = { .dsi = ctx->dsi };
+
+	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
+	mipi_dsi_usleep_range(&dsi_ctx, 10000, 11000);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x5a, 0x5a);
+	mipi_dsi_dcs_set_tear_on_multi(&dsi_ctx, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb7, 0x01, 0x4b);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb0, 0x06);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb7, 0x10);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0xa5, 0xa5);
+	mipi_dsi_dcs_set_page_address_multi(&dsi_ctx, 0x0000, 0x0923);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x5a, 0x5a);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfc, 0x5a, 0x5a);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe9,
+				     0x11, 0x75, 0xa6, 0x75, 0xa3, 0xb6, 0x85,
+				     0x7a, 0x00, 0x32, 0x32);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe1,
+				     0x00, 0x00, 0x02, 0x02, 0x42, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe2,
+				     0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb0, 0x0c);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe1, 0x19);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0xa5, 0xa5);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfc, 0xa5, 0xa5);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, MIPI_DCS_WRITE_CONTROL_DISPLAY,
+				     0x20);
+	mipi_dsi_dcs_set_display_brightness_multi(&dsi_ctx, 0x0000);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, MIPI_DCS_WRITE_POWER_SAVE, 0x00);
+	mipi_dsi_msleep(&dsi_ctx, 67);
+	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
+
+	return dsi_ctx.accum_err;
+}
+
+static int ea8076_off(struct ea8076 *ctx)
+{
+	struct mipi_dsi_multi_context dsi_ctx = { .dsi = ctx->dsi };
+
+	mipi_dsi_dcs_set_display_off_multi(&dsi_ctx);
+	mipi_dsi_msleep(&dsi_ctx, 35);
+	mipi_dsi_dcs_enter_sleep_mode_multi(&dsi_ctx);
+	mipi_dsi_msleep(&dsi_ctx, 120);
+
+	return dsi_ctx.accum_err;
+}
+
+static int ea8076_prepare(struct drm_panel *panel)
+{
+	struct ea8076 *ctx = to_ea8076(panel);
+	struct device *dev = &ctx->dsi->dev;
+	int ret;
+
+	ea8076_reset(ctx);
+
+	ret = ea8076_on(ctx);
+	if (ret < 0) {
+		dev_err(dev, "Failed to initialize panel: %d\n", ret);
+		gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int ea8076_unprepare(struct drm_panel *panel)
+{
+	struct ea8076 *ctx = to_ea8076(panel);
+	struct device *dev = &ctx->dsi->dev;
+	int ret;
+
+	ret = ea8076_off(ctx);
+	if (ret < 0)
+		dev_err(dev, "Failed to un-initialize panel: %d\n", ret);
+
+	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+
+	return 0;
+}
+
+static const struct drm_display_mode ea8076_mode = {
+	.clock = (1080 + 64 + 20 + 64) * (2340 + 64 + 20 + 64) * 60 / 1000,
+	.hdisplay = 1080,
+	.hsync_start = 1080 + 64,
+	.hsync_end = 1080 + 64 + 20,
+	.htotal = 1080 + 64 + 20 + 64,
+	.vdisplay = 2340,
+	.vsync_start = 2340 + 64,
+	.vsync_end = 2340 + 64 + 20,
+	.vtotal = 2340 + 64 + 20 + 64,
+	.width_mm = 69,
+	.height_mm = 147,
+	.type = DRM_MODE_TYPE_DRIVER,
+};
+
+static int ea8076_get_modes(struct drm_panel *panel,
+				   struct drm_connector *connector)
+{
+	return drm_connector_helper_get_modes_fixed(connector, &ea8076_mode);
+}
+
+static const struct drm_panel_funcs ea8076_panel_funcs = {
+	.prepare = ea8076_prepare,
+	.unprepare = ea8076_unprepare,
+	.get_modes = ea8076_get_modes,
+};
+
+static int ea8076_bl_update_status(struct backlight_device *bl)
+{
+	struct mipi_dsi_device *dsi = bl_get_data(bl);
+	u16 brightness = backlight_get_brightness(bl);
+	int ret;
+
+	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
+
+	ret = mipi_dsi_dcs_set_display_brightness_large(dsi, brightness);
+	if (ret < 0)
+		return ret;
+
+	dsi->mode_flags |= MIPI_DSI_MODE_LPM;
+
+	return 0;
+}
+
+static int ea8076_bl_get_brightness(struct backlight_device *bl)
+{
+	struct mipi_dsi_device *dsi = bl_get_data(bl);
+	u16 brightness;
+	int ret;
+
+	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
+
+	ret = mipi_dsi_dcs_get_display_brightness_large(dsi, &brightness);
+	if (ret < 0)
+		return ret;
+
+	dsi->mode_flags |= MIPI_DSI_MODE_LPM;
+
+	return brightness;
+}
+
+static const struct backlight_ops ea8076_bl_ops = {
+	.update_status = ea8076_bl_update_status,
+	.get_brightness = ea8076_bl_get_brightness,
+};
+
+static struct backlight_device *
+ea8076_create_backlight(struct mipi_dsi_device *dsi)
+{
+	struct device *dev = &dsi->dev;
+	const struct backlight_properties props = {
+		.type = BACKLIGHT_RAW,
+		.brightness = 2047,
+		.max_brightness = 2047,
+	};
+
+	return devm_backlight_device_register(dev, dev_name(dev), dev, dsi,
+					      &ea8076_bl_ops, &props);
+}
+
+static int ea8076_probe(struct mipi_dsi_device *dsi)
+{
+	struct device *dev = &dsi->dev;
+	struct ea8076 *ctx;
+	int ret;
+
+	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(ctx->reset_gpio))
+		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
+				     "Failed to get reset-gpios\n");
+
+	ctx->dsi = dsi;
+	mipi_dsi_set_drvdata(dsi, ctx);
+
+	dsi->lanes = 4;
+	dsi->format = MIPI_DSI_FMT_RGB888;
+	dsi->mode_flags = MIPI_DSI_MODE_VIDEO_BURST |
+			  MIPI_DSI_CLOCK_NON_CONTINUOUS | MIPI_DSI_MODE_LPM;
+
+	drm_panel_init(&ctx->panel, dev, &ea8076_panel_funcs,
+		       DRM_MODE_CONNECTOR_DSI);
+	ctx->panel.prepare_prev_first = true;
+
+	ctx->panel.backlight = ea8076_create_backlight(dsi);
+	if (IS_ERR(ctx->panel.backlight))
+		return dev_err_probe(dev, PTR_ERR(ctx->panel.backlight),
+				     "Failed to create backlight\n");
+
+	drm_panel_add(&ctx->panel);
+
+	ret = mipi_dsi_attach(dsi);
+	if (ret < 0) {
+		drm_panel_remove(&ctx->panel);
+		return dev_err_probe(dev, ret, "Failed to attach to DSI host\n");
+	}
+
+	return 0;
+}
+
+static void ea8076_remove(struct mipi_dsi_device *dsi)
+{
+	struct ea8076 *ctx = mipi_dsi_get_drvdata(dsi);
+	int ret;
+
+	ret = mipi_dsi_detach(dsi);
+	if (ret < 0)
+		dev_err(&dsi->dev, "Failed to detach from DSI host: %d\n", ret);
+
+	drm_panel_remove(&ctx->panel);
+}
+
+static const struct of_device_id ea8076_of_match[] = {
+	{ .compatible = "samsung,ea8076" },
+	{ }
+};
+
+MODULE_DEVICE_TABLE(of, ea8076_of_match);
+
+static struct mipi_dsi_driver ea8076_driver = {
+	.probe = ea8076_probe,
+	.remove = ea8076_remove,
+	.driver = {
+		.name = "panel-samsung-ea8076",
+		.of_match_table = ea8076_of_match,
+	},
+};
+module_mipi_dsi_driver(ea8076_driver);
+
+MODULE_AUTHOR("Alicja Michalska <alicja.michalska@9elements.com>");
+MODULE_DESCRIPTION("Samsung EA8076 panel driver");
+MODULE_LICENSE("GPL v2");
-- 
2.50.1


