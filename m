Return-Path: <devicetree+bounces-60424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B63CC8A94BF
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 10:16:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D94431C212A0
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 08:16:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ED5585633;
	Thu, 18 Apr 2024 08:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="rLS48rlE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9175A7EF18
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 08:16:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713428178; cv=none; b=j7xGpRPoJ2VXDX3zdt6ycRcy9k+F0yrXSEjaea1A9aElgvsPsEUyRuDSK2/DmR2EJ1sqQgcDzWk2T7pkZDlrpcwdk/YCzNoTyxMegQHj8cSZATTwBvk+vVrIMgmLl5MdXL9SqTmqSElEfg7RgjZHP3PoTbaAOb9fJxCbEKJnd78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713428178; c=relaxed/simple;
	bh=mPVX5aJJNVWjLR2onO4h/lnZ3hr4Sz/kDi+JuxEgjF4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=qTkt/xK7dIgntOLPYc3fyKAKeNNQnswFHbBdv/Xs1XboAPLKSFWUZAGGxNZejVrAaJYhqw9crgpreq7Cuh16b4ln/1YbX+vVYg2jTOl87LxpZq4aQ10tsHvO9P4RFARXCcS1N0pMioOoVzOT3837E2WMlygxLlZOMkfFrZ0YExk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=rLS48rlE; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-2351c03438cso193947fac.2
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 01:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1713428174; x=1714032974; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YI++royKKBEGzn4ZdNLD2YG0nCfqJuUcPsyVGC3PWBo=;
        b=rLS48rlEdUCea5CP/LJgfNhdI2ftE+b7gqbALDHhm2u6ivhOn3Qy0c7RbI6+erZyaO
         xl+wzb+wGlpCt7D6EUh9BSYrAeZuEA0NdinfxvwQSW7esTKFsnHtNvev0Nk5ePHV1kKe
         GTe9OyGz9qlrhaVGrbpkkN2dwqmwYfp6g/ojnZLfpwM1n7PYK4hGgdGK9Btn+x4n31Mw
         5nBtftSDTCiq+0VVknqMzeDr02CK3yfSyzODxdTFi8mhUUCAlhkOAIPECwsuKUANvvFT
         swa8inMvFcASyf1L/7IPTG1gmQuNzuup/gnhTdcEpjVhPXWnV8xy3hxCrbTf3bLvliqy
         pDNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713428174; x=1714032974;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YI++royKKBEGzn4ZdNLD2YG0nCfqJuUcPsyVGC3PWBo=;
        b=EfQQVuGOt3uZbmYIrmaSXaXBMAKtCBir6maqxhEFaHrWLosvQ++dGdjFVUGVFjcVOl
         QAGekaooNudED+fsF220lxc3x6deHfjBelfkhQcbFjHl3fWUW7qHdImgW6nz9M6HfI8p
         5v1/HGIWSurC8aPQL4ovzREROQo3eTI76dGw3Ze7vOKuztfW6fulY8HkwcUvv/+NqN4L
         4y8maJTCxM+WdM1soWeq4JnCo0fmM2SX2jGl7P+/jGMN7DtpGO00D7RI2wP/Jr+VMCVi
         oNkBs+0/7h3dtQKI2ymCGFKeieZ3vcnG+vDwZw7Zn9HOzwqFOwzKXuVv+J+QccDY6vnp
         UkgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUU5ZTD2fb/F1EluY5g24lqFWHfG+JFPzVcTX9BwC2tK1f6LA7cRiJrluC3WM0fXTFNbkTov67/s7G+dwIqcC3EYug8T9pGmFPS9g==
X-Gm-Message-State: AOJu0YwMVYI779hj3UxlSGKBOoIC60KyOiivawTWvB2RxlYIFbdUSFz1
	gEmZII1+ZgsAQnPYBceqRDu8mBF2Ydj9xa/FWzNGWd1uDEUFOICyR50Eg1yC9EGKGNjveDcvmJu
	0NJI=
X-Google-Smtp-Source: AGHT+IFaS8d7xX8Vdhv+fWPlod2E0mr7Ym0OVZ1VbnMTF8PCPIzPTDD/RUOjOrZ+R80RweZ9Akv99w==
X-Received: by 2002:a05:6870:e98d:b0:235:3d0:2bd4 with SMTP id r13-20020a056870e98d00b0023503d02bd4mr2393991oao.31.1713428174539;
        Thu, 18 Apr 2024 01:16:14 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id o18-20020a634e52000000b005f3d54c0a57sm881394pgl.49.2024.04.18.01.16.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 01:16:14 -0700 (PDT)
From: lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>
To: mripard@kernel.org,
	airlied@gmail.com,
	daniel@ffwll.ch,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v1 2/2] drm/panel: kd101ne3: add new panel driver
Date: Thu, 18 Apr 2024 16:15:48 +0800
Message-Id: <20240418081548.12160-3-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240418081548.12160-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240418081548.12160-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The kingdisplay panel is based on JD9365DA controller.
Add a driver for it.

Signed-off-by: lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>
---
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../drm/panel/panel-kingdisplay-kd101ne3.c    | 607 ++++++++++++++++++
 3 files changed, 617 insertions(+)
 create mode 100644 drivers/gpu/drm/panel/panel-kingdisplay-kd101ne3.c

diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
index 154f5bf82980..2c73086cf102 100644
--- a/drivers/gpu/drm/panel/Kconfig
+++ b/drivers/gpu/drm/panel/Kconfig
@@ -297,6 +297,15 @@ config DRM_PANEL_KINGDISPLAY_KD097D04
 	  24 bit RGB per pixel. It provides a MIPI DSI interface to
 	  the host and has a built-in LED backlight.
 
+config DRM_PANEL_KINGDISPLAY_KD101NE3
+	tristate "Kingdisplay kd101ne3 panel"
+	depends on OF
+	depends on DRM_MIPI_DSI
+	depends on BACKLIGHT_CLASS_DEVICE
+	help
+	  Say Y if you want to enable support for panels based on the
+	  Kingdisplay kd101ne3 controller.
+
 config DRM_PANEL_LEADTEK_LTK050H3146W
 	tristate "Leadtek LTK050H3146W panel"
 	depends on OF
diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
index 24a02655d726..cbd414b98bb0 100644
--- a/drivers/gpu/drm/panel/Makefile
+++ b/drivers/gpu/drm/panel/Makefile
@@ -30,6 +30,7 @@ obj-$(CONFIG_DRM_PANEL_JDI_LPM102A188A) += panel-jdi-lpm102a188a.o
 obj-$(CONFIG_DRM_PANEL_JDI_R63452) += panel-jdi-fhd-r63452.o
 obj-$(CONFIG_DRM_PANEL_KHADAS_TS050) += panel-khadas-ts050.o
 obj-$(CONFIG_DRM_PANEL_KINGDISPLAY_KD097D04) += panel-kingdisplay-kd097d04.o
+obj-$(CONFIG_DRM_PANEL_KINGDISPLAY_KD101NE3) += panel-kingdisplay-kd101ne3.o
 obj-$(CONFIG_DRM_PANEL_LEADTEK_LTK050H3146W) += panel-leadtek-ltk050h3146w.o
 obj-$(CONFIG_DRM_PANEL_LEADTEK_LTK500HD1829) += panel-leadtek-ltk500hd1829.o
 obj-$(CONFIG_DRM_PANEL_LG_LB035Q02) += panel-lg-lb035q02.o
diff --git a/drivers/gpu/drm/panel/panel-kingdisplay-kd101ne3.c b/drivers/gpu/drm/panel/panel-kingdisplay-kd101ne3.c
new file mode 100644
index 000000000000..dbf0992f8b81
--- /dev/null
+++ b/drivers/gpu/drm/panel/panel-kingdisplay-kd101ne3.c
@@ -0,0 +1,607 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Panels based on the JD9365DA display controller.
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
+struct kingdisplay_panel {
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
+static const struct panel_init_cmd kingdisplay_kd101ne3_init_cmd[] = {
+	_INIT_DELAY_CMD(50),
+	_INIT_DCS_CMD(0xE0, 0x00),
+	_INIT_DCS_CMD(0xE1, 0x93),
+	_INIT_DCS_CMD(0xE2, 0x65),
+	_INIT_DCS_CMD(0xE3, 0xF8),
+	_INIT_DCS_CMD(0x80, 0x03),
+	_INIT_DCS_CMD(0xE0, 0x01),
+	_INIT_DCS_CMD(0x0C, 0x74),
+	_INIT_DCS_CMD(0x17, 0x00),
+	_INIT_DCS_CMD(0x18, 0xC7),
+	_INIT_DCS_CMD(0x19, 0x01),
+	_INIT_DCS_CMD(0x1A, 0x00),
+	_INIT_DCS_CMD(0x1B, 0xC7),
+	_INIT_DCS_CMD(0x1C, 0x01),
+	_INIT_DCS_CMD(0x24, 0xFE),
+	_INIT_DCS_CMD(0x37, 0x19),
+	_INIT_DCS_CMD(0x35, 0x28),
+	_INIT_DCS_CMD(0x38, 0x05),
+	_INIT_DCS_CMD(0x39, 0x08),
+	_INIT_DCS_CMD(0x3A, 0x12),
+	_INIT_DCS_CMD(0x3C, 0x7E),
+	_INIT_DCS_CMD(0x3D, 0xFF),
+	_INIT_DCS_CMD(0x3E, 0xFF),
+	_INIT_DCS_CMD(0x3F, 0x7F),
+	_INIT_DCS_CMD(0x40, 0x06),
+	_INIT_DCS_CMD(0x41, 0xA0),
+	_INIT_DCS_CMD(0x43, 0x1E),
+	_INIT_DCS_CMD(0x44, 0x0B),
+	_INIT_DCS_CMD(0x55, 0x02),
+	_INIT_DCS_CMD(0x57, 0x6A),
+	_INIT_DCS_CMD(0x59, 0x0A),
+	_INIT_DCS_CMD(0x5A, 0x2E),
+	_INIT_DCS_CMD(0x5B, 0x1A),
+	_INIT_DCS_CMD(0x5C, 0x15),
+	_INIT_DCS_CMD(0x5D, 0x7F),
+	_INIT_DCS_CMD(0x5E, 0x61),
+	_INIT_DCS_CMD(0x5F, 0x50),
+	_INIT_DCS_CMD(0x60, 0x43),
+	_INIT_DCS_CMD(0x61, 0x3F),
+	_INIT_DCS_CMD(0x62, 0x32),
+	_INIT_DCS_CMD(0x63, 0x35),
+	_INIT_DCS_CMD(0x64, 0x1F),
+	_INIT_DCS_CMD(0x65, 0x38),
+	_INIT_DCS_CMD(0x66, 0x36),
+	_INIT_DCS_CMD(0x67, 0x36),
+	_INIT_DCS_CMD(0x68, 0x54),
+	_INIT_DCS_CMD(0x69, 0x42),
+	_INIT_DCS_CMD(0x6A, 0x48),
+	_INIT_DCS_CMD(0x6B, 0x39),
+	_INIT_DCS_CMD(0x6C, 0x34),
+	_INIT_DCS_CMD(0x6D, 0x26),
+	_INIT_DCS_CMD(0x6E, 0x14),
+	_INIT_DCS_CMD(0x6F, 0x02),
+	_INIT_DCS_CMD(0x70, 0x7F),
+	_INIT_DCS_CMD(0x71, 0x61),
+	_INIT_DCS_CMD(0x72, 0x50),
+	_INIT_DCS_CMD(0x73, 0x43),
+	_INIT_DCS_CMD(0x74, 0x3F),
+	_INIT_DCS_CMD(0x75, 0x32),
+	_INIT_DCS_CMD(0x76, 0x35),
+	_INIT_DCS_CMD(0x77, 0x1F),
+	_INIT_DCS_CMD(0x78, 0x38),
+	_INIT_DCS_CMD(0x79, 0x36),
+	_INIT_DCS_CMD(0x7A, 0x36),
+	_INIT_DCS_CMD(0x7B, 0x54),
+	_INIT_DCS_CMD(0x7C, 0x42),
+	_INIT_DCS_CMD(0x7D, 0x48),
+	_INIT_DCS_CMD(0x7E, 0x39),
+	_INIT_DCS_CMD(0x7F, 0x34),
+	_INIT_DCS_CMD(0x80, 0x26),
+	_INIT_DCS_CMD(0x81, 0x14),
+	_INIT_DCS_CMD(0x82, 0x02),
+	_INIT_DCS_CMD(0xE0, 0x02),
+	_INIT_DCS_CMD(0x00, 0x52),
+	_INIT_DCS_CMD(0x01, 0x5F),
+	_INIT_DCS_CMD(0x02, 0x5F),
+	_INIT_DCS_CMD(0x03, 0x50),
+	_INIT_DCS_CMD(0x04, 0x77),
+	_INIT_DCS_CMD(0x05, 0x57),
+	_INIT_DCS_CMD(0x06, 0x5F),
+	_INIT_DCS_CMD(0x07, 0x4E),
+	_INIT_DCS_CMD(0x08, 0x4C),
+	_INIT_DCS_CMD(0x09, 0x5F),
+	_INIT_DCS_CMD(0x0A, 0x4A),
+	_INIT_DCS_CMD(0x0B, 0x48),
+	_INIT_DCS_CMD(0x0C, 0x5F),
+	_INIT_DCS_CMD(0x0D, 0x46),
+	_INIT_DCS_CMD(0x0E, 0x44),
+	_INIT_DCS_CMD(0x0F, 0x40),
+	_INIT_DCS_CMD(0x10, 0x5F),
+	_INIT_DCS_CMD(0x11, 0x5F),
+	_INIT_DCS_CMD(0x12, 0x5F),
+	_INIT_DCS_CMD(0x13, 0x5F),
+	_INIT_DCS_CMD(0x14, 0x5F),
+	_INIT_DCS_CMD(0x15, 0x5F),
+	_INIT_DCS_CMD(0x16, 0x53),
+	_INIT_DCS_CMD(0x17, 0x5F),
+	_INIT_DCS_CMD(0x18, 0x5F),
+	_INIT_DCS_CMD(0x19, 0x51),
+	_INIT_DCS_CMD(0x1A, 0x77),
+	_INIT_DCS_CMD(0x1B, 0x57),
+	_INIT_DCS_CMD(0x1C, 0x5F),
+	_INIT_DCS_CMD(0x1D, 0x4F),
+	_INIT_DCS_CMD(0x1E, 0x4D),
+	_INIT_DCS_CMD(0x1F, 0x5F),
+	_INIT_DCS_CMD(0x20, 0x4B),
+	_INIT_DCS_CMD(0x21, 0x49),
+	_INIT_DCS_CMD(0x22, 0x5F),
+	_INIT_DCS_CMD(0x23, 0x47),
+	_INIT_DCS_CMD(0x24, 0x45),
+	_INIT_DCS_CMD(0x25, 0x41),
+	_INIT_DCS_CMD(0x26, 0x5F),
+	_INIT_DCS_CMD(0x27, 0x5F),
+	_INIT_DCS_CMD(0x28, 0x5F),
+	_INIT_DCS_CMD(0x29, 0x5F),
+	_INIT_DCS_CMD(0x2A, 0x5F),
+	_INIT_DCS_CMD(0x2B, 0x5F),
+	_INIT_DCS_CMD(0x2C, 0x13),
+	_INIT_DCS_CMD(0x2D, 0x1F),
+	_INIT_DCS_CMD(0x2E, 0x1F),
+	_INIT_DCS_CMD(0x2F, 0x01),
+	_INIT_DCS_CMD(0x30, 0x17),
+	_INIT_DCS_CMD(0x31, 0x17),
+	_INIT_DCS_CMD(0x32, 0x1F),
+	_INIT_DCS_CMD(0x33, 0x0D),
+	_INIT_DCS_CMD(0x34, 0x0F),
+	_INIT_DCS_CMD(0x35, 0x1F),
+	_INIT_DCS_CMD(0x36, 0x05),
+	_INIT_DCS_CMD(0x37, 0x07),
+	_INIT_DCS_CMD(0x38, 0x1F),
+	_INIT_DCS_CMD(0x39, 0x09),
+	_INIT_DCS_CMD(0x3A, 0x0B),
+	_INIT_DCS_CMD(0x3B, 0x11),
+	_INIT_DCS_CMD(0x3C, 0x1F),
+	_INIT_DCS_CMD(0x3D, 0x1F),
+	_INIT_DCS_CMD(0x3E, 0x1F),
+	_INIT_DCS_CMD(0x3F, 0x1F),
+	_INIT_DCS_CMD(0x40, 0x1F),
+	_INIT_DCS_CMD(0x41, 0x1F),
+	_INIT_DCS_CMD(0x42, 0x12),
+	_INIT_DCS_CMD(0x43, 0x1F),
+	_INIT_DCS_CMD(0x44, 0x1F),
+	_INIT_DCS_CMD(0x45, 0x00),
+	_INIT_DCS_CMD(0x46, 0x17),
+	_INIT_DCS_CMD(0x47, 0x17),
+	_INIT_DCS_CMD(0x48, 0x1F),
+	_INIT_DCS_CMD(0x49, 0x0C),
+	_INIT_DCS_CMD(0x4A, 0x0E),
+	_INIT_DCS_CMD(0x4B, 0x1F),
+	_INIT_DCS_CMD(0x4C, 0x04),
+	_INIT_DCS_CMD(0x4D, 0x06),
+	_INIT_DCS_CMD(0x4E, 0x1F),
+	_INIT_DCS_CMD(0x4F, 0x08),
+	_INIT_DCS_CMD(0x50, 0x0A),
+	_INIT_DCS_CMD(0x51, 0x10),
+	_INIT_DCS_CMD(0x52, 0x1F),
+	_INIT_DCS_CMD(0x53, 0x1F),
+	_INIT_DCS_CMD(0x54, 0x1F),
+	_INIT_DCS_CMD(0x55, 0x1F),
+	_INIT_DCS_CMD(0x56, 0x1F),
+	_INIT_DCS_CMD(0x57, 0x1F),
+	_INIT_DCS_CMD(0x58, 0x40),
+	_INIT_DCS_CMD(0x5B, 0x10),
+	_INIT_DCS_CMD(0x5C, 0x06),
+	_INIT_DCS_CMD(0x5D, 0x40),
+	_INIT_DCS_CMD(0x5E, 0x00),
+	_INIT_DCS_CMD(0x5F, 0x00),
+	_INIT_DCS_CMD(0x60, 0x40),
+	_INIT_DCS_CMD(0x61, 0x03),
+	_INIT_DCS_CMD(0x62, 0x04),
+	_INIT_DCS_CMD(0x63, 0x6C),
+	_INIT_DCS_CMD(0x64, 0x6C),
+	_INIT_DCS_CMD(0x65, 0x75),
+	_INIT_DCS_CMD(0x66, 0x08),
+	_INIT_DCS_CMD(0x67, 0xB4),
+	_INIT_DCS_CMD(0x68, 0x08),
+	_INIT_DCS_CMD(0x69, 0x6C),
+	_INIT_DCS_CMD(0x6A, 0x6C),
+	_INIT_DCS_CMD(0x6B, 0x0C),
+	_INIT_DCS_CMD(0x6D, 0x00),
+	_INIT_DCS_CMD(0x6E, 0x00),
+	_INIT_DCS_CMD(0x6F, 0x88),
+	_INIT_DCS_CMD(0x75, 0xBB),
+	_INIT_DCS_CMD(0x76, 0x00),
+	_INIT_DCS_CMD(0x77, 0x05),
+	_INIT_DCS_CMD(0x78, 0x2A),
+	_INIT_DCS_CMD(0xE0, 0x04),
+	_INIT_DCS_CMD(0x00, 0x0E),
+	_INIT_DCS_CMD(0x02, 0xB3),
+	_INIT_DCS_CMD(0x09, 0x61),
+	_INIT_DCS_CMD(0x0E, 0x48),
+
+	_INIT_DCS_CMD(0xE0, 0x00),
+	_INIT_DCS_CMD(0X11),
+	/* T6: 120ms */
+	_INIT_DELAY_CMD(120),
+	_INIT_DCS_CMD(0X29),
+	_INIT_DELAY_CMD(20),
+	{},
+};
+
+static inline struct kingdisplay_panel *to_kingdisplay_panel(struct drm_panel *panel)
+{
+	return container_of(panel, struct kingdisplay_panel, base);
+}
+
+static int kingdisplay_panel_init_dcs_cmd(struct kingdisplay_panel *kingdisplay)
+{
+	struct mipi_dsi_device *dsi = kingdisplay->dsi;
+	struct drm_panel *panel = &kingdisplay->base;
+	int i, err = 0;
+
+	if (kingdisplay->desc->init_cmds) {
+		const struct panel_init_cmd *init_cmds = kingdisplay->desc->init_cmds;
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
+static int kingdisplay_panel_enter_sleep_mode(struct kingdisplay_panel *kingdisplay)
+{
+	struct mipi_dsi_device *dsi = kingdisplay->dsi;
+	int ret;
+
+	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
+
+	usleep_range(1000, 2000);
+	ret = mipi_dsi_dcs_set_display_off(dsi);
+	if (ret < 0)
+		return ret;
+
+	msleep(50);
+
+	ret = mipi_dsi_dcs_enter_sleep_mode(dsi);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static int kingdisplay_panel_disable(struct drm_panel *panel)
+{
+	struct kingdisplay_panel *kingdisplay = to_kingdisplay_panel(panel);
+	int ret;
+
+	ret = kingdisplay_panel_enter_sleep_mode(kingdisplay);
+	if (ret < 0) {
+		dev_err(panel->dev, "failed to set panel off: %d\n", ret);
+		return ret;
+	}
+
+	msleep(100);
+
+	return 0;
+}
+
+static int kingdisplay_panel_unprepare(struct drm_panel *panel)
+{
+	struct kingdisplay_panel *kingdisplay = to_kingdisplay_panel(panel);
+	int err;
+
+	gpiod_set_value_cansleep(kingdisplay->enable_gpio, 0);
+
+	/* T15: 2ms */
+	usleep_range(1000, 2000);
+
+	err = regulator_disable(kingdisplay->pp3300);
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+
+static int kingdisplay_panel_prepare(struct drm_panel *panel)
+{
+	struct kingdisplay_panel *kingdisplay = to_kingdisplay_panel(panel);
+	int ret;
+
+	gpiod_set_value(kingdisplay->enable_gpio, 0);
+
+	ret = regulator_enable(kingdisplay->pp3300);
+	if (ret < 0)
+		return ret;
+
+	/* T1: 5ms */
+	usleep_range(5000, 6000);
+
+	if (kingdisplay->desc->lp11_before_reset) {
+		mipi_dsi_dcs_nop(kingdisplay->dsi);
+		usleep_range(1000, 2000);
+	}
+
+	/* T2: 10ms, T1 + T2 > 5ms*/
+	usleep_range(10000, 11000);
+
+	gpiod_set_value_cansleep(kingdisplay->enable_gpio, 1);
+
+	ret = kingdisplay_panel_init_dcs_cmd(kingdisplay);
+	if (ret < 0) {
+		dev_err(panel->dev, "failed to init panel: %d\n", ret);
+		goto poweroff;
+	}
+
+	return 0;
+
+poweroff:
+	regulator_disable(kingdisplay->pp3300);
+		/* T6: 2ms */
+	usleep_range(1000, 2000);
+	gpiod_set_value(kingdisplay->enable_gpio, 0);
+
+	return ret;
+}
+
+static int kingdisplay_panel_enable(struct drm_panel *panel)
+{
+	msleep(130);
+	return 0;
+}
+
+static const struct drm_display_mode kingdisplay_kd101ne3_40ti_default_mode = {
+	.clock = 70595,
+	.hdisplay = 800,
+	.hsync_start = 800 + 30,
+	.hsync_end = 800 + 30 + 30,
+	.htotal = 800 + 30 + 30 + 30,
+	.vdisplay = 1280,
+	.vsync_start = 1280 + 30,
+	.vsync_end = 1280 + 30 + 4,
+	.vtotal = 1280 + 30 + 4 + 8,
+	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
+};
+
+static const struct panel_desc kingdisplay_kd101ne3_40ti_desc = {
+	.modes = &kingdisplay_kd101ne3_40ti_default_mode,
+	.bpc = 8,
+	.size = {
+		.width_mm = 135,
+		.height_mm = 216,
+	},
+	.lanes = 4,
+	.format = MIPI_DSI_FMT_RGB888,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
+		      MIPI_DSI_MODE_LPM,
+	.init_cmds = kingdisplay_kd101ne3_init_cmd,
+	.lp11_before_reset = true,
+};
+
+static int kingdisplay_panel_get_modes(struct drm_panel *panel,
+			       struct drm_connector *connector)
+{
+	struct kingdisplay_panel *kingdisplay = to_kingdisplay_panel(panel);
+	const struct drm_display_mode *m = kingdisplay->desc->modes;
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
+	connector->display_info.width_mm = kingdisplay->desc->size.width_mm;
+	connector->display_info.height_mm = kingdisplay->desc->size.height_mm;
+	connector->display_info.bpc = kingdisplay->desc->bpc;
+	/*
+	 * TODO: Remove once all drm drivers call
+	 * drm_connector_set_orientation_from_panel()
+	 */
+	drm_connector_set_panel_orientation(connector, kingdisplay->orientation);
+
+	return 1;
+}
+
+static enum drm_panel_orientation kingdisplay_panel_get_orientation(struct drm_panel *panel)
+{
+	struct kingdisplay_panel *kingdisplay = to_kingdisplay_panel(panel);
+
+	return kingdisplay->orientation;
+}
+
+static const struct drm_panel_funcs kingdisplay_panel_funcs = {
+	.disable = kingdisplay_panel_disable,
+	.unprepare = kingdisplay_panel_unprepare,
+	.prepare = kingdisplay_panel_prepare,
+	.enable = kingdisplay_panel_enable,
+	.get_modes = kingdisplay_panel_get_modes,
+	.get_orientation = kingdisplay_panel_get_orientation,
+};
+
+static int kingdisplay_panel_add(struct kingdisplay_panel *kingdisplay)
+{
+	struct device *dev = &kingdisplay->dsi->dev;
+	int err;
+
+	kingdisplay->pp3300 = devm_regulator_get(dev, "pp3300");
+	if (IS_ERR(kingdisplay->pp3300))
+		return PTR_ERR(kingdisplay->pp3300);
+
+
+	kingdisplay->enable_gpio = devm_gpiod_get(dev, "enable", GPIOD_OUT_LOW);
+	if (IS_ERR(kingdisplay->enable_gpio)) {
+		dev_err(dev, "cannot get reset-gpios %ld\n",
+			PTR_ERR(kingdisplay->enable_gpio));
+		return PTR_ERR(kingdisplay->enable_gpio);
+	}
+
+	gpiod_set_value(kingdisplay->enable_gpio, 0);
+
+	drm_panel_init(&kingdisplay->base, dev, &kingdisplay_panel_funcs,
+		       DRM_MODE_CONNECTOR_DSI);
+	err = of_drm_get_panel_orientation(dev->of_node, &kingdisplay->orientation);
+	if (err < 0) {
+		dev_err(dev, "%pOF: failed to get orientation %d\n", dev->of_node, err);
+		return err;
+	}
+
+	err = drm_panel_of_backlight(&kingdisplay->base);
+	if (err)
+		return err;
+
+	kingdisplay->base.funcs = &kingdisplay_panel_funcs;
+	kingdisplay->base.dev = &kingdisplay->dsi->dev;
+
+	drm_panel_add(&kingdisplay->base);
+
+	return 0;
+}
+
+static int kingdisplay_panel_probe(struct mipi_dsi_device *dsi)
+{
+	struct kingdisplay_panel *kingdisplay;
+	int ret;
+	const struct panel_desc *desc;
+
+	kingdisplay = devm_kzalloc(&dsi->dev, sizeof(*kingdisplay), GFP_KERNEL);
+	if (!kingdisplay)
+		return -ENOMEM;
+
+	desc = of_device_get_match_data(&dsi->dev);
+	dsi->lanes = desc->lanes;
+	dsi->format = desc->format;
+	dsi->mode_flags = desc->mode_flags;
+	kingdisplay->desc = desc;
+	kingdisplay->dsi = dsi;
+	ret = kingdisplay_panel_add(kingdisplay);
+	if (ret < 0)
+		return ret;
+
+	mipi_dsi_set_drvdata(dsi, kingdisplay);
+
+	ret = mipi_dsi_attach(dsi);
+	if (ret)
+		drm_panel_remove(&kingdisplay->base);
+
+	return ret;
+}
+
+static void kingdisplay_panel_shutdown(struct mipi_dsi_device *dsi)
+{
+	struct kingdisplay_panel *kingdisplay = mipi_dsi_get_drvdata(dsi);
+
+	drm_panel_disable(&kingdisplay->base);
+	drm_panel_unprepare(&kingdisplay->base);
+}
+
+static void kingdisplay_panel_remove(struct mipi_dsi_device *dsi)
+{
+	struct kingdisplay_panel *kingdisplay = mipi_dsi_get_drvdata(dsi);
+	int ret;
+
+	kingdisplay_panel_shutdown(dsi);
+
+	ret = mipi_dsi_detach(dsi);
+	if (ret < 0)
+		dev_err(&dsi->dev, "failed to detach from DSI host: %d\n", ret);
+
+	if (kingdisplay->base.dev)
+		drm_panel_remove(&kingdisplay->base);
+}
+
+static const struct of_device_id kingdisplay_of_match[] = {
+	{ .compatible = "kingdisplay,kd101ne3-40ti",
+	  .data = &kingdisplay_kd101ne3_40ti_desc
+	},
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, kingdisplay_of_match);
+
+static struct mipi_dsi_driver kingdisplay_panel_driver = {
+	.driver = {
+		.name = "panel-kingdisplay-kd101ne3",
+		.of_match_table = kingdisplay_of_match,
+	},
+	.probe = kingdisplay_panel_probe,
+	.remove = kingdisplay_panel_remove,
+	.shutdown = kingdisplay_panel_shutdown,
+};
+module_mipi_dsi_driver(kingdisplay_panel_driver);
+
+MODULE_AUTHOR("Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>");
+MODULE_DESCRIPTION("kingdisplay kd101ne3-40ti 800x1280 video mode panel driver");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


