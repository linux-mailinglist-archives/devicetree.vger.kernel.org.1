Return-Path: <devicetree+bounces-40006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F5E84EE49
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 01:17:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 074E21C24EAA
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 00:17:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFB12634;
	Fri,  9 Feb 2024 00:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M1D8xHgC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B1497EB;
	Fri,  9 Feb 2024 00:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707437859; cv=none; b=Zl8GkNrSWr2zn9kieKGfwkD9eoU+l0piXLltupt7LtYTifk5A1glM23EWG88Zfz/ex/baKajoU5tymgEVPRXkUnfN7CrSkWjcWjVOwfGr+eGR3I+cZ6kmG4JNKJbvwXR+Rji/LAO5nI/y1Q8E/on16ecLCgg1zLxa9Emj3gED1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707437859; c=relaxed/simple;
	bh=LOExjr4jshAT0seQOQCv7Gst3K7Qa/ZQxSMwnf4FyRk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iGDfempFwNXcvCbX8mwNj0Hpe/eXo4cAffk5j+s4PYn9pGhGlcdR65WR4bxkNED467YiyYz12GVnXvpyX3o7PtW4NWB+M6kdhh/8FQqhX1p9ICmcapdIorvbpc/NKniiI13P9uJ7c8IDZaKyxvXxSNqXbk7+eteAu8tqFxEEx6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M1D8xHgC; arc=none smtp.client-ip=209.85.222.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-7d5bfdd2366so154018241.3;
        Thu, 08 Feb 2024 16:17:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707437856; x=1708042656; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VI7NpR04woqFKKrNWS8b1ZeprL2xaI24KbMlS56T7F4=;
        b=M1D8xHgCX9584ka35T+HsPUJKJIGEmdHTBUQR20ndHNxjebtqNTaYIuiRebr2EBpvh
         9U4FMdpg/gF02XibWiL6RJheZ70CbzKG2pJDWMHoixtYSKsRUs5H9Sn5HyPOTALIEJoH
         eAH6nsMhmRmZHJ0CGHBlKRJJrayZ4RSw3ktFrVXFUklrJ619l7IH6IKeyHzp1rt6zMZt
         5D+q3+qeWiEfVuvddgGL5kLoYzQf117wnnLlcQ2i40U+Lc6f9QQZuMzAzDjz1oK0Je1B
         Q5LOqk1zESTVwZpp/dr4hufaAJ33pUvkcAiDTcdSW8gLRXsxwm6KdEzuxluv90v1kyhN
         DesQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707437856; x=1708042656;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VI7NpR04woqFKKrNWS8b1ZeprL2xaI24KbMlS56T7F4=;
        b=w42+Ohk9Bjh4UZ0nwSfOia93sIk3a3VwmJuQv05wBw8I7YC2L5aL1ivrBWTJudCuP2
         DxNrgPW/QvmyHw96G0gb6W2O9wSdskwpM5AfuxxEpvA6VbzJeWFm3vdaWGueGgmopI5u
         xWJlRHTJESrB2Uz/JTM4BwNkDLPVD0GNu6XUK27k0JpnyAtqnHZVDNllA4Ck0ubPoNyC
         T4kcRDJJ7pnpW5XFFHomPMQQfp1v9OkOhgXev1OfZlOX5V4Vy8/LnTUgUZM3IrFNCdLO
         AguaH3Zp0LM+XVXuQY4dxe+kNlVbW1L9k7Y3Guzkdi/p5dGBxL42kw6zqQVQ5Jntj7Ct
         hLNQ==
X-Gm-Message-State: AOJu0YzyLg9lUe4RKgB7wb4YKVDrJ0gxBmt6PH+Ew6D1KYNfwUCkYBU3
	DOoyEQjV1wpNFJM6eMeRqNvJhlUIJShTnobCQVzru/N0RvHQT8VG
X-Google-Smtp-Source: AGHT+IE5Kw5KF0spQtmujydZo9Y0rXig4TwMpeXg5Dwl9dxKkZSYnycWrI5Gzq58YQiXIAWql+gXIg==
X-Received: by 2002:a67:ec09:0:b0:46d:63c0:d589 with SMTP id d9-20020a67ec09000000b0046d63c0d589mr976218vso.33.1707437856287;
        Thu, 08 Feb 2024 16:17:36 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUJnPpLBpxwq03RDuqDhQbTWSFQDl7khtGxhaRz/rJjQHuVBQp9dZSsSpiZYFdE7rKqdexXhpvA0PC5gmeu39SgL5qVs4nmvTwyXi7LWY0y3sh8ZJifCCX42jiYBTh7FVLdaOU7xPGZZzs3uyFuPsRooXrR5Qv0hU4XlGapgl7V7w34G41O0zYVR1VviHH9D5zeuj2Mg7EA+dnrW34EWdb/6fPMf4E/IhEwexZfhFPqJGipxUJCqt1Un1f/YsvqJXy4AyagTV1xlquwLbg53qEeGX+xZZgOvGaayxLVZoig1L4WL6WfDcKqabzyFYov9Z8gd3jYVJ/T4ZLVZ00oQcuoZt4P00v0yAzMrxdmmIn/2lGJI/BdD7ZJEFBjQCKg4svaVMTefatJTKRdEFGLVoCLSe2+ROhXXK/iqetsJcXdGnj1tfXqJTOIleh+uo2r1BYGrAbIlPd8Pm+3EWbkjQOdY9SnfYBSbD7+B/mI+rvo6YYFB1mZ/7S0/WZh6m2beT9XE4Y1ZoJ7QBOlSZhPMlMc4WwY3J8tbuNsXTBXHzxmTPy2W092dJMj9e+f5Q9N/epcQMJ1vxrK6RrO
Received: from localhost ([2607:fea8:52a3:d200::42b6])
        by smtp.gmail.com with ESMTPSA id pg9-20020a0562144a0900b006819bb31533sm282399qvb.99.2024.02.08.16.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 16:17:35 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH 2/3] drm/panel: add samsung s6e3fa7 panel driver
Date: Thu,  8 Feb 2024 19:16:43 -0500
Message-ID: <20240209001639.387374-8-mailingradian@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240209001639.387374-6-mailingradian@gmail.com>
References: <20240209001639.387374-6-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The S6E3FA7 display controller is enabled in every Pixel 3a (non-XL)
variant. Add the driver for it, generated by
linux-mdss-dsi-panel-driver-generator.

There are other panels connected to the same S6E3FA7 display controller,
such as the AMS604NL01 panel, which are incompatible with this driver.
Name the device tree compatible after the panel model according to
iFixit.

Link: https://github.com/msm8916-mainline/linux-mdss-dsi-panel-driver-generator
Link: https://android.googlesource.com/kernel/msm/+/7fda1cd7b64710dafac5f34899611c6d35eb4cd2/arch/arm64/boot/dts/google/dsi-panel-s6e3fa7-1080p-cmd.dtsi
Link: https://github.com/msm8953-mainline/linux/blob/v6.6.12-r0/drivers/gpu/drm/panel/panel-samsung-s6e3fa7.c
Link: https://www.ifixit.com/Guide/Image/meta/muyjtLQTHu6MDkhK
Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-samsung-s6e3fa7.c | 285 ++++++++++++++++++
 3 files changed, 295 insertions(+)
 create mode 100644 drivers/gpu/drm/panel/panel-samsung-s6e3fa7.c

diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
index 8f3783742208..a693b03f680e 100644
--- a/drivers/gpu/drm/panel/Kconfig
+++ b/drivers/gpu/drm/panel/Kconfig
@@ -577,6 +577,15 @@ config DRM_PANEL_SAMSUNG_DB7430
 	  DB7430 DPI display controller used in such devices as the
 	  LMS397KF04 480x800 DPI panel.
 
+config DRM_PANEL_SAMSUNG_S6E3FA7
+	tristate "Samsung S6E3FA7 panel driver"
+	depends on OF
+	depends on DRM_MIPI_DSI
+	depends on BACKLIGHT_CLASS_DEVICE
+	help
+	  Say Y here if you want to enable support for the Samsung S6E3FA7
+	  1920x2220 panel.
+
 config DRM_PANEL_SAMSUNG_S6D16D0
 	tristate "Samsung S6D16D0 DSI video mode panel"
 	depends on OF
diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
index d94a644d0a6c..560b62129f68 100644
--- a/drivers/gpu/drm/panel/Makefile
+++ b/drivers/gpu/drm/panel/Makefile
@@ -59,6 +59,7 @@ obj-$(CONFIG_DRM_PANEL_SAMSUNG_LD9040) += panel-samsung-ld9040.o
 obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6D16D0) += panel-samsung-s6d16d0.o
 obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6D27A1) += panel-samsung-s6d27a1.o
 obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6D7AA0) += panel-samsung-s6d7aa0.o
+obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E3FA7) += panel-samsung-s6e3fa7.o
 obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E3HA2) += panel-samsung-s6e3ha2.o
 obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E63J0X03) += panel-samsung-s6e63j0x03.o
 obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E63M0) += panel-samsung-s6e63m0.o
diff --git a/drivers/gpu/drm/panel/panel-samsung-s6e3fa7.c b/drivers/gpu/drm/panel/panel-samsung-s6e3fa7.c
new file mode 100644
index 000000000000..10bc8fb5f1f9
--- /dev/null
+++ b/drivers/gpu/drm/panel/panel-samsung-s6e3fa7.c
@@ -0,0 +1,285 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Driver for the Samsung S6E3FA7 panel.
+ *
+ * Copyright (c) 2022-2024, The Linux Foundation. All rights reserved.
+ * Generated with linux-mdss-dsi-panel-driver-generator from vendor device tree:
+ * Copyright (c) 2013, The Linux Foundation. All rights reserved.
+ */
+
+#include <linux/backlight.h>
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
+#include <linux/module.h>
+#include <linux/of.h>
+
+#include <video/mipi_display.h>
+
+#include <drm/drm_mipi_dsi.h>
+#include <drm/drm_modes.h>
+#include <drm/drm_panel.h>
+
+struct s6e3fa7_panel {
+	struct drm_panel panel;
+	struct mipi_dsi_device *dsi;
+	struct gpio_desc *reset_gpio;
+};
+
+static inline struct s6e3fa7_panel *to_s6e3fa7_panel(struct drm_panel *panel)
+{
+	return container_of(panel, struct s6e3fa7_panel, panel);
+}
+
+static void s6e3fa7_panel_reset(struct s6e3fa7_panel *ctx)
+{
+	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+	usleep_range(1000, 2000);
+	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
+	usleep_range(10000, 11000);
+}
+
+static int s6e3fa7_panel_on(struct s6e3fa7_panel *ctx)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	int ret;
+
+	ret = mipi_dsi_dcs_exit_sleep_mode(dsi);
+	if (ret < 0) {
+		dev_err(dev, "Failed to exit sleep mode: %d\n", ret);
+		return ret;
+	}
+	msleep(120);
+
+	ret = mipi_dsi_dcs_set_tear_on(dsi, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
+	if (ret < 0) {
+		dev_err(dev, "Failed to set tear on: %d\n", ret);
+		return ret;
+	}
+
+	mipi_dsi_dcs_write_seq(dsi, 0xf0, 0x5a, 0x5a);
+	mipi_dsi_dcs_write_seq(dsi, 0xf4,
+			       0xbb, 0x23, 0x19, 0x3a, 0x9f, 0x0f, 0x09, 0xc0,
+			       0x00, 0xb4, 0x37, 0x70, 0x79, 0x69);
+	mipi_dsi_dcs_write_seq(dsi, 0xf0, 0xa5, 0xa5);
+	mipi_dsi_dcs_write_seq(dsi, MIPI_DCS_WRITE_CONTROL_DISPLAY, 0x20);
+
+	ret = mipi_dsi_dcs_set_display_on(dsi);
+	if (ret < 0) {
+		dev_err(dev, "Failed to set display on: %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int s6e3fa7_panel_prepare(struct drm_panel *panel)
+{
+	struct s6e3fa7_panel *ctx = to_s6e3fa7_panel(panel);
+	struct device *dev = &ctx->dsi->dev;
+	int ret;
+
+	s6e3fa7_panel_reset(ctx);
+
+	ret = s6e3fa7_panel_on(ctx);
+	if (ret < 0) {
+		dev_err(dev, "Failed to initialize panel: %d\n", ret);
+		gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int s6e3fa7_panel_unprepare(struct drm_panel *panel)
+{
+	struct s6e3fa7_panel *ctx = to_s6e3fa7_panel(panel);
+
+	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+
+	return 0;
+}
+
+static int s6e3fa7_panel_disable(struct drm_panel *panel)
+{
+	struct s6e3fa7_panel *ctx = to_s6e3fa7_panel(panel);
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	int ret;
+
+	ret = mipi_dsi_dcs_set_display_off(dsi);
+	if (ret < 0) {
+		dev_err(dev, "Failed to set display off: %d\n", ret);
+		return ret;
+	}
+
+	ret = mipi_dsi_dcs_enter_sleep_mode(dsi);
+	if (ret < 0) {
+		dev_err(dev, "Failed to enter sleep mode: %d\n", ret);
+		return ret;
+	}
+	msleep(120);
+
+	return 0;
+}
+
+static const struct drm_display_mode s6e3fa7_panel_mode = {
+	.clock = (1080 + 32 + 32 + 78) * (2220 + 32 + 4 + 78) * 60 / 1000,
+	.hdisplay = 1080,
+	.hsync_start = 1080 + 32,
+	.hsync_end = 1080 + 32 + 32,
+	.htotal = 1080 + 32 + 32 + 78,
+	.vdisplay = 2220,
+	.vsync_start = 2220 + 32,
+	.vsync_end = 2220 + 32 + 4,
+	.vtotal = 2220 + 32 + 4 + 78,
+	.width_mm = 62,
+	.height_mm = 127,
+};
+
+static int s6e3fa7_panel_get_modes(struct drm_panel *panel,
+				 struct drm_connector *connector)
+{
+	struct drm_display_mode *mode;
+
+	mode = drm_mode_duplicate(connector->dev, &s6e3fa7_panel_mode);
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
+static const struct drm_panel_funcs s6e3fa7_panel_funcs = {
+	.prepare = s6e3fa7_panel_prepare,
+	.unprepare = s6e3fa7_panel_unprepare,
+	.disable = s6e3fa7_panel_disable,
+	.get_modes = s6e3fa7_panel_get_modes,
+};
+
+static int s6e3fa7_panel_bl_update_status(struct backlight_device *bl)
+{
+	struct mipi_dsi_device *dsi = bl_get_data(bl);
+	u16 brightness = backlight_get_brightness(bl);
+	int ret;
+
+	ret = mipi_dsi_dcs_set_display_brightness_large(dsi, brightness);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static int s6e3fa7_panel_bl_get_brightness(struct backlight_device *bl)
+{
+	struct mipi_dsi_device *dsi = bl_get_data(bl);
+	u16 brightness;
+	int ret;
+
+	ret = mipi_dsi_dcs_get_display_brightness_large(dsi, &brightness);
+	if (ret < 0)
+		return ret;
+
+	return brightness;
+}
+
+static const struct backlight_ops s6e3fa7_panel_bl_ops = {
+	.update_status = s6e3fa7_panel_bl_update_status,
+	.get_brightness = s6e3fa7_panel_bl_get_brightness,
+};
+
+static struct backlight_device *
+s6e3fa7_panel_create_backlight(struct mipi_dsi_device *dsi)
+{
+	struct device *dev = &dsi->dev;
+	const struct backlight_properties props = {
+		.type = BACKLIGHT_RAW,
+		.brightness = 1023,
+		.max_brightness = 1023,
+	};
+
+	return devm_backlight_device_register(dev, dev_name(dev), dev, dsi,
+					      &s6e3fa7_panel_bl_ops, &props);
+}
+
+static int s6e3fa7_panel_probe(struct mipi_dsi_device *dsi)
+{
+	struct device *dev = &dsi->dev;
+	struct s6e3fa7_panel *ctx;
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
+	drm_panel_init(&ctx->panel, dev, &s6e3fa7_panel_funcs,
+		       DRM_MODE_CONNECTOR_DSI);
+	ctx->panel.prepare_prev_first = true;
+
+	ctx->panel.backlight = s6e3fa7_panel_create_backlight(dsi);
+	if (IS_ERR(ctx->panel.backlight))
+		return dev_err_probe(dev, PTR_ERR(ctx->panel.backlight),
+				     "Failed to create backlight\n");
+
+	drm_panel_add(&ctx->panel);
+
+	ret = mipi_dsi_attach(dsi);
+	if (ret < 0) {
+		dev_err(dev, "Failed to attach to DSI host: %d\n", ret);
+		drm_panel_remove(&ctx->panel);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void s6e3fa7_panel_remove(struct mipi_dsi_device *dsi)
+{
+	struct s6e3fa7_panel *ctx = mipi_dsi_get_drvdata(dsi);
+	int ret;
+
+	ret = mipi_dsi_detach(dsi);
+	if (ret < 0)
+		dev_err(&dsi->dev, "Failed to detach from DSI host: %d\n", ret);
+
+	drm_panel_remove(&ctx->panel);
+}
+
+static const struct of_device_id s6e3fa7_panel_of_match[] = {
+	{ .compatible = "samsung,s6e3fa7-ams559nk06" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, s6e3fa7_panel_of_match);
+
+static struct mipi_dsi_driver s6e3fa7_panel_driver = {
+	.probe = s6e3fa7_panel_probe,
+	.remove = s6e3fa7_panel_remove,
+	.driver = {
+		.name = "panel-samsung-s6e3fa7",
+		.of_match_table = s6e3fa7_panel_of_match,
+	},
+};
+module_mipi_dsi_driver(s6e3fa7_panel_driver);
+
+MODULE_AUTHOR("Richard Acayan <mailingradian@gmail.com>");
+MODULE_DESCRIPTION("DRM driver for Samsung S6E3FA7 command mode DSI panel");
+MODULE_LICENSE("GPL");
-- 
2.43.0


