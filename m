Return-Path: <devicetree+bounces-65950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C11278C0BBA
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 08:51:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E47081C226A8
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 06:51:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CB2813C8F2;
	Thu,  9 May 2024 06:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="0LccvNcX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8AC13CA9F
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 06:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715237456; cv=none; b=uMVJZlOgzEBBWCsrHys+wBn7TR4RU1VgVJ8++Ek9Qg8+InzwJhBx00LnT6Zwe3s+3+uZHm2d+row/0KH/n3ibgWwTyLlj+lwQO0vZ0lupISfMAYhAxOGScuVh87+0sqkJap7QSULTzkkj3i+4dDoC7dwXoVzJPLLW7K/XiWECyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715237456; c=relaxed/simple;
	bh=6xdJjoH8iKgPmc9V8+faNqURhaHIK920izcn4AdSfJ0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=nlakvbwrMZEp9Z8uYsYov9vp4m9MaJUXG4VLqHBOGIjFfPdV62y4lTbphkB57R8/yf9lBz4XEowHBoSIGwLTbxH2sC4cJ7h1CpSrq4YwBqQFt+b+8wOqkvt9j0jsISYIZKQx9xF8TeS/QdiGoDdSCCtbjBX6NOolobeypS/pzvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=0LccvNcX; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-6f4521ad6c0so522874b3a.0
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 23:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715237453; x=1715842253; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dOKfR8Zs+zXZtgGCWke+lQSxlZ4beIJqcgZ7v+DFp4o=;
        b=0LccvNcXBHIWt4nFFaZL97TXW/W5OKFvmAICIuPbUaVt+Lgfan3XsK5wx5DeHZFbqM
         lk8QOGTn8+vn4rMIxDyZ7/RuTtGLAqSC2UL7rUWkvePZnhYGiUkXNX+b+kxeaRej2FQR
         dxlRJoK04QwmS2+2Mf4K4ttBBIFYv2+9uqlfvxrg/CcjJ/R1YYN7yKWJKthS2YH8l7Hf
         4D1pxpblFtSLdpZg+1W2+AHljKVLCFjj485Gh4sLGALBe0Yfs8uWBipymAarjLWftyOS
         TzB3Tpy+MVBchcJnaFm71gu+kRl4eSdk64TtTNx2cXP/KRml0kOinraFVw1TV15dCWwa
         /9mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715237453; x=1715842253;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dOKfR8Zs+zXZtgGCWke+lQSxlZ4beIJqcgZ7v+DFp4o=;
        b=gDw+5YuhMd2Rcs1uJXlOFP3/tghPMQD7Op4fSHnO9yvs6LVa7Nv8qwEXn7OzGATWpa
         t25XZ+Wtnc/JmNcMIlRb7iJVWX4BiXjO1jHSgxwxtrNCwXEvwTmm4la8YqDEyVuftdUM
         q1P4ygnGxyHgujH3wwvneiU2QVxwcWebM9eoeDEwj3m2VUai3WZXfUeJ+4GHhpo8NNhI
         O0piPKiPsBHzZZHVAPcAZs/yYo2fA6+0nBJw/qrKvDwKEZR3Ing6PSyJUrZcv1OlRatY
         CNi5KeedYJnlhDOSseeN/OcrfXU51k57N30MJ+h/WoPxEEyIMAWseWZnAmKgOZIH4oXG
         rreg==
X-Forwarded-Encrypted: i=1; AJvYcCVa0Lh0j1pHstbLjwMXRb2T2YUPjaSFXa9EunrAVFCJGObayIQeI20nSiXNxyilL3L+KbKviH8E2Bw6A5/WyIR6RZbnaslkITHiZA==
X-Gm-Message-State: AOJu0YwHmm/HtKP89aBh9J7b9rz5BQg2K3gTEHBY6LcR9Vc6j2NurluM
	FhEXP3oiG6O22/XRnJBUfGCPtLkKU1GvH7XWo1M0Cyhr9JbJytM61A9Nw0QDOso=
X-Google-Smtp-Source: AGHT+IH7oUpRsfY2uAIkkDmR5RlkEVTDwlurUU+E5x1S2CIzGJyPC8OX7gAzhE668xJ1KCj66cJBvA==
X-Received: by 2002:aa7:8a02:0:b0:6f4:3fe7:7aa9 with SMTP id d2e1a72fcca58-6f49c21341fmr5011948b3a.10.1715237452797;
        Wed, 08 May 2024 23:50:52 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2a84b6bsm633939b3a.74.2024.05.08.23.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 May 2024 23:50:52 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v1 2/2] drm/panel: starry: add new panel driver
Date: Thu,  9 May 2024 14:49:59 +0800
Message-Id: <20240509064959.23550-3-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240509064959.23550-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240509064959.23550-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The starry panel is based on ER88577 controller.
Add a driver for it.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
 drivers/gpu/drm/panel/panel-starry-er88577.c | 444 +++++++++++++++++++
 1 file changed, 444 insertions(+)
 create mode 100644 drivers/gpu/drm/panel/panel-starry-er88577.c

diff --git a/drivers/gpu/drm/panel/panel-starry-er88577.c b/drivers/gpu/drm/panel/panel-starry-er88577.c
new file mode 100644
index 000000000000..dfeae549adc5
--- /dev/null
+++ b/drivers/gpu/drm/panel/panel-starry-er88577.c
@@ -0,0 +1,444 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Panels based on the ER88577B display controller.
+ * Author: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
+ */
+
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/regulator/consumer.h>
+
+#include <drm/drm_connector.h>
+#include <drm/drm_crtc.h>
+#include <drm/drm_mipi_dsi.h>
+#include <drm/drm_panel.h>
+
+#include <video/mipi_display.h>
+
+struct panel_desc {
+	const struct drm_display_mode *modes;
+	unsigned int bpc;
+
+	/**
+	 * @width_mm: width of the panel's active display area
+	 * @height_mm: height of the panel's active display area
+	 */
+	struct {
+		unsigned int width_mm;
+		unsigned int height_mm;
+	} size;
+
+	unsigned long mode_flags;
+	enum mipi_dsi_pixel_format format;
+	const struct panel_init_cmd *init_cmds;
+	unsigned int lanes;
+	bool discharge_on_disable;
+	bool lp11_before_reset;
+};
+
+struct starry_panel {
+	struct drm_panel base;
+	struct mipi_dsi_device *dsi;
+
+	const struct panel_desc *desc;
+
+	enum drm_panel_orientation orientation;
+	struct regulator *pp3300;
+	struct gpio_desc *enable_gpio;
+};
+
+enum dsi_cmd_type {
+	INIT_DCS_CMD,
+	DELAY_CMD,
+};
+
+struct panel_init_cmd {
+	enum dsi_cmd_type type;
+	size_t len;
+	const char *data;
+};
+
+#define _INIT_DCS_CMD(...) { \
+	.type = INIT_DCS_CMD, \
+	.len = sizeof((char[]){__VA_ARGS__}), \
+	.data = (char[]){__VA_ARGS__} }
+
+#define _INIT_DELAY_CMD(...) { \
+	.type = DELAY_CMD,\
+	.len = sizeof((char[]){__VA_ARGS__}), \
+	.data = (char[]){__VA_ARGS__} }
+
+static const struct panel_init_cmd starry_er88577_init_cmd[] = {
+	_INIT_DELAY_CMD(120),
+	_INIT_DCS_CMD(0xE0, 0xAB, 0xBA),
+	_INIT_DCS_CMD(0xE1, 0xBA, 0xAB),
+	_INIT_DCS_CMD(0xB1, 0x10, 0x01, 0x47, 0xFF),
+	_INIT_DCS_CMD(0xB2, 0x0C, 0x14, 0x04, 0x50, 0x50, 0x14),
+	_INIT_DCS_CMD(0xB3, 0x56, 0x53, 0x00),
+	_INIT_DCS_CMD(0xB4, 0x33, 0x30, 0x04),
+	_INIT_DCS_CMD(0xB6, 0xB0, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00),
+	_INIT_DCS_CMD(0xB8, 0x05, 0x12, 0x29, 0x49, 0x40),
+	_INIT_DCS_CMD(0xB9, 0x7C, 0x61, 0x4F, 0x42, 0x3E, 0x2D, 0x31, 0x1A, 0x33, 0x33, 0x33, 0x52, 0x40, 0x47, 0x38, 0x34, 0x26, 0x0E, 0x06, 0x7C, 0x61, 0x4F, 0x42, 0x3E, 0x2D, 0x31, 0x1A, 0x33, 0x33, 0x33, 0x52, 0x40, 0x47, 0x38, 0x34, 0x26, 0x0E, 0x06),
+	_INIT_DCS_CMD(0xC0, 0xCC, 0x76, 0x12, 0x34, 0x44, 0x44, 0x44, 0x44, 0x98, 0x04, 0x98, 0x04, 0x0F, 0x00, 0x00, 0xC1),
+	_INIT_DCS_CMD(0xC1, 0x54, 0x94, 0x02, 0x85, 0x9F, 0x00, 0x6F, 0x00, 0x54, 0x00),
+	_INIT_DCS_CMD(0xC2, 0x17, 0x09, 0x08, 0x89, 0x08, 0x11, 0x22, 0x20, 0x44, 0xFF, 0x18, 0x00),
+	_INIT_DCS_CMD(0xC3, 0x87, 0x47, 0x05, 0x05, 0x1C, 0x1C, 0x1D, 0x1D, 0x02, 0x1E, 0x1E, 0x1F, 0x1F, 0x0F, 0x0F, 0x0D, 0x0D, 0x13, 0x13, 0x11, 0x11, 0x24),
+	_INIT_DCS_CMD(0xC4, 0x06, 0x06, 0x04, 0x04, 0x1C, 0x1C, 0x1D, 0x1D, 0x02, 0x1E, 0x1E, 0x1F, 0x1F, 0x0E, 0x0E, 0x0C, 0x0C, 0x12, 0x12, 0x10, 0x10, 0x24),
+
+	_INIT_DCS_CMD(0xC8, 0x21, 0x00, 0x31, 0x42, 0x34, 0x16),
+	_INIT_DCS_CMD(0xCA, 0xCB, 0x43),
+	_INIT_DCS_CMD(0xCD, 0x0E, 0x4B, 0x4B, 0x20, 0x19, 0x6B, 0x06, 0xB3),
+	_INIT_DCS_CMD(0xD2, 0xE3, 0x2B, 0x38, 0x08),
+	_INIT_DCS_CMD(0xD4, 0x00, 0x01, 0x00, 0x0E, 0x04, 0x44, 0x08, 0x10, 0x00, 0x00, 0x00),
+	_INIT_DCS_CMD(0xE6, 0x80, 0x09, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF),
+	_INIT_DCS_CMD(0xF0, 0x12, 0x03, 0x20, 0x00, 0xFF),
+	_INIT_DCS_CMD(0xF3, 0x00),
+
+	_INIT_DCS_CMD(0X11),
+	_INIT_DELAY_CMD(120),
+	_INIT_DCS_CMD(0X29),
+	_INIT_DELAY_CMD(20),
+	{},
+};
+
+static inline struct starry_panel *to_starry_panel(struct drm_panel *panel)
+{
+	return container_of(panel, struct starry_panel, base);
+}
+
+static int starry_panel_init_dcs_cmd(struct starry_panel *starry)
+{
+	struct mipi_dsi_device *dsi = starry->dsi;
+	struct drm_panel *panel = &starry->base;
+	int i, err = 0;
+
+	if (starry->desc->init_cmds) {
+		const struct panel_init_cmd *init_cmds = starry->desc->init_cmds;
+
+		for (i = 0; init_cmds[i].len != 0; i++) {
+			const struct panel_init_cmd *cmd = &init_cmds[i];
+
+			switch (cmd->type) {
+			case DELAY_CMD:
+				msleep(cmd->data[0]);
+				err = 0;
+				break;
+
+			case INIT_DCS_CMD:
+				err = mipi_dsi_dcs_write(dsi, cmd->data[0],
+							 cmd->len <= 1 ? NULL :
+							 &cmd->data[1],
+							 cmd->len - 1);
+				break;
+
+			default:
+				err = -EINVAL;
+			}
+
+			if (err < 0) {
+				dev_err(panel->dev,
+					"failed to write command %u\n", i);
+				return err;
+			}
+		}
+	}
+	return 0;
+}
+
+static int starry_panel_enter_sleep_mode(struct starry_panel *starry)
+{
+	struct mipi_dsi_device *dsi = starry->dsi;
+	int ret;
+
+	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
+
+	usleep_range(1000, 2000);
+
+	ret = mipi_dsi_dcs_set_display_off(dsi);
+	if (ret < 0)
+		return ret;
+
+	ret = mipi_dsi_dcs_enter_sleep_mode(dsi);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static int starry_panel_disable(struct drm_panel *panel)
+{
+	struct starry_panel *starry = to_starry_panel(panel);
+	int ret;
+
+	ret = starry_panel_enter_sleep_mode(starry);
+	if (ret < 0) {
+		dev_err(panel->dev, "failed to set panel off: %d\n", ret);
+		return ret;
+	}
+
+	msleep(120);
+
+	return 0;
+}
+
+static int starry_panel_unprepare(struct drm_panel *panel)
+{
+	struct starry_panel *starry = to_starry_panel(panel);
+	int err;
+/*
+	err = mipi_dsi_dcs_enter_sleep_mode(starry->dsi);
+	if (err < 0) {
+		dev_err(panel->dev, "failed to enter sleep mode: %d\n", err);
+		return err;
+	}
+*/
+	gpiod_set_value_cansleep(starry->enable_gpio, 0);
+
+	/* T15: 2ms */
+	usleep_range(1000, 2000);
+
+	err = regulator_disable(starry->pp3300);
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+
+static int starry_panel_prepare(struct drm_panel *panel)
+{
+	struct starry_panel *starry = to_starry_panel(panel);
+	int ret;
+
+	gpiod_set_value(starry->enable_gpio, 0);
+
+	printk(KERN_ERR "lvzhaoxiong--1");
+
+	ret = regulator_enable(starry->pp3300);
+	if (ret < 0)
+		return ret;
+
+	/* T1: 5ms */
+	usleep_range(5000, 6000);
+
+	if (starry->desc->lp11_before_reset) {
+		mipi_dsi_dcs_nop(starry->dsi);
+		usleep_range(1000, 2000);
+	}
+	printk(KERN_ERR "lvzhaoxiong--3");
+
+	/* T: 60ms*/
+	msleep(60);
+
+	gpiod_set_value_cansleep(starry->enable_gpio, 1);
+
+	ret = starry_panel_init_dcs_cmd(starry);
+	if (ret < 0) {
+		dev_err(panel->dev, "failed to init panel: %d\n", ret);
+		goto poweroff;
+	}
+	printk(KERN_ERR "lvzhaoxiong--3");
+
+	return 0;
+
+poweroff:
+	regulator_disable(starry->pp3300);
+		/* T6: 2ms */
+	usleep_range(1000, 2000);
+	gpiod_set_value(starry->enable_gpio, 0);
+
+	return ret;
+}
+
+static int starry_panel_enable(struct drm_panel *panel)
+{
+	msleep(130);
+	return 0;
+}
+
+static const struct drm_display_mode starry_er88577_default_mode = {
+	.clock = 77380,
+	.hdisplay = 800,
+	.hsync_start = 800 + 80,
+	.hsync_end = 800 + 80 + 20,
+	.htotal = 800 + 80 + 20 + 80,
+	.vdisplay = 1280,
+	.vsync_start = 1280 + 20,
+	.vsync_end = 1280 + 20 + 4,
+	.vtotal = 1280 + 20 + 4 + 12,
+	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
+};
+
+static const struct panel_desc starry_er88577_desc = {
+	.modes = &starry_er88577_default_mode,
+	.bpc = 8,
+	.size = {
+		.width_mm = 135,
+		.height_mm = 216,
+	},
+	.lanes = 4,
+	.format = MIPI_DSI_FMT_RGB888,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
+		      MIPI_DSI_MODE_LPM,
+	.init_cmds = starry_er88577_init_cmd,
+	.lp11_before_reset = true,
+};
+
+static int starry_panel_get_modes(struct drm_panel *panel,
+			       struct drm_connector *connector)
+{
+	struct starry_panel *starry = to_starry_panel(panel);
+	const struct drm_display_mode *m = starry->desc->modes;
+	struct drm_display_mode *mode;
+
+	mode = drm_mode_duplicate(connector->dev, m);
+	if (!mode) {
+		dev_err(panel->dev, "failed to add mode %ux%u@%u\n",
+			m->hdisplay, m->vdisplay, drm_mode_vrefresh(m));
+		return -ENOMEM;
+	}
+
+	mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
+	drm_mode_set_name(mode);
+	drm_mode_probed_add(connector, mode);
+
+	connector->display_info.width_mm = starry->desc->size.width_mm;
+	connector->display_info.height_mm = starry->desc->size.height_mm;
+	connector->display_info.bpc = starry->desc->bpc;
+
+	return 1;
+}
+
+static enum drm_panel_orientation starry_panel_get_orientation(struct drm_panel *panel)
+{
+	struct starry_panel *starry = to_starry_panel(panel);
+
+	return starry->orientation;
+}
+
+static const struct drm_panel_funcs starry_panel_funcs = {
+	.disable = starry_panel_disable,
+	.unprepare = starry_panel_unprepare,
+	.prepare = starry_panel_prepare,
+	.enable = starry_panel_enable,
+	.get_modes = starry_panel_get_modes,
+	.get_orientation = starry_panel_get_orientation,
+};
+
+static int starry_panel_add(struct starry_panel *starry)
+{
+	struct device *dev = &starry->dsi->dev;
+	int err;
+
+	starry->pp3300 = devm_regulator_get(dev, "pp3300");
+	if (IS_ERR(starry->pp3300))
+		return PTR_ERR(starry->pp3300);
+
+
+	starry->enable_gpio = devm_gpiod_get(dev, "enable", GPIOD_OUT_LOW);
+	if (IS_ERR(starry->enable_gpio)) {
+		dev_err(dev, "cannot get reset-gpios %ld\n",
+			PTR_ERR(starry->enable_gpio));
+		return PTR_ERR(starry->enable_gpio);
+	}
+
+	gpiod_set_value(starry->enable_gpio, 0);
+
+	drm_panel_init(&starry->base, dev, &starry_panel_funcs,
+		       DRM_MODE_CONNECTOR_DSI);
+	err = of_drm_get_panel_orientation(dev->of_node, &starry->orientation);
+	if (err < 0) {
+		dev_err(dev, "%pOF: failed to get orientation %d\n", dev->of_node, err);
+		return err;
+	}
+
+	err = drm_panel_of_backlight(&starry->base);
+	if (err)
+		return err;
+
+	starry->base.funcs = &starry_panel_funcs;
+	starry->base.dev = &starry->dsi->dev;
+
+	drm_panel_add(&starry->base);
+
+	return 0;
+}
+
+static int starry_panel_probe(struct mipi_dsi_device *dsi)
+{
+	struct starry_panel *starry;
+	int ret;
+	const struct panel_desc *desc;
+
+	starry = devm_kzalloc(&dsi->dev, sizeof(*starry), GFP_KERNEL);
+	if (!starry)
+		return -ENOMEM;
+
+	desc = of_device_get_match_data(&dsi->dev);
+	dsi->lanes = desc->lanes;
+	dsi->format = desc->format;
+	dsi->mode_flags = desc->mode_flags;
+	starry->desc = desc;
+	starry->dsi = dsi;
+	ret = starry_panel_add(starry);
+	if (ret < 0)
+		return ret;
+
+	mipi_dsi_set_drvdata(dsi, starry);
+
+	ret = mipi_dsi_attach(dsi);
+	if (ret)
+		drm_panel_remove(&starry->base);
+
+	printk(KERN_ERR "lvzhaoxiong--0");
+
+	return ret;
+}
+
+static void starry_panel_shutdown(struct mipi_dsi_device *dsi)
+{
+	struct starry_panel *starry = mipi_dsi_get_drvdata(dsi);
+
+	drm_panel_disable(&starry->base);
+	drm_panel_unprepare(&starry->base);
+}
+
+static void starry_panel_remove(struct mipi_dsi_device *dsi)
+{
+	struct starry_panel *starry = mipi_dsi_get_drvdata(dsi);
+	int ret;
+
+	starry_panel_shutdown(dsi);
+
+	ret = mipi_dsi_detach(dsi);
+	if (ret < 0)
+		dev_err(&dsi->dev, "failed to detach from DSI host: %d\n", ret);
+
+	if (starry->base.dev)
+		drm_panel_remove(&starry->base);
+}
+
+static const struct of_device_id starry_of_match[] = {
+	{ .compatible = "starry,er88577",
+	  .data = &starry_er88577_desc
+	},
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, starry_of_match);
+
+static struct mipi_dsi_driver starry_panel_driver = {
+	.driver = {
+		.name = "panel-starry-er88577",
+		.of_match_table = starry_of_match,
+	},
+	.probe = starry_panel_probe,
+	.remove = starry_panel_remove,
+	.shutdown = starry_panel_shutdown,
+};
+module_mipi_dsi_driver(starry_panel_driver);
+
+MODULE_AUTHOR("Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>");
+MODULE_DESCRIPTION("starry er88577b 800x1280 video mode panel driver");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


