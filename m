Return-Path: <devicetree+bounces-84264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5251092BA98
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 15:08:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B996728B849
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 13:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23BF6174EDB;
	Tue,  9 Jul 2024 13:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yiKJrjqz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F73C16D4D6
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 13:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720530359; cv=none; b=Ld0fg0w7wjDqywJEtlu0BOWj4VI8H011Wvt5fF7fezKSKTzdv6sBYfnS2fSTwvC7gOfpRQaf3YD9E21vUhA2PHGFEMt2HdqfiACClkS9gMDGCbXx9ijU66JIqx96Lt4TM0uXwNKYSAAnf/UZt24NUwC6lkQ/L+IPu5BKpKwIJ7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720530359; c=relaxed/simple;
	bh=ReMuaX4uArWaeUyztwmAnshtAS2bOcX5muB5QxhiUe0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lIQYRUApEQrhkLgr5OuuKn0RWhMd3okyI2uLqo8S7QrOkCFKbazLMtam/L/n1tBvsUwFf69Y1znwKfcaQb/qFC37/hhqDLiUZ6PdreVv8PLWcTRBs09UTWYMoqVGhOVO0MHpaaPm4oTSDyESmr7VCb540zou2Dlb51L4amiOsM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yiKJrjqz; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4257a390a4eso37115415e9.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 06:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720530355; x=1721135155; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FamCi9Pn/8UxKaCIIx795x4jMS/Np2PJDK/Wh8hNKJs=;
        b=yiKJrjqzq5GVhf3/ATUeAoVIJZkbrJK9pzI5RzMII//ktxBe2e/eNyIq7C8SiDvIzy
         WbFd+Ws2e4lLnQq9O31ftNO1EBL6+FttK6RpCE2gWR6t2mYFmhxeHAhRCQQWjIA9pOqA
         3YSHM3asv2i5ZIgELjFMhTQarI8Hbv1eN6uqfewuJ/gE/NmdlRDcQFFABMm62/k01eTx
         1ZKlflrmDLpu9MpAhpmvMINXUUreyI3v0iB5B68M+ax+NS7vpmfjsT8iCVDhlXa++5zR
         zN4zlml/vowgf6mYyJaQLDFLxk50z9Fq/Gn7c4p/Xv9AR5gPNIIAIimzIdI0vW7v5Emr
         QUXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720530355; x=1721135155;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FamCi9Pn/8UxKaCIIx795x4jMS/Np2PJDK/Wh8hNKJs=;
        b=gRI3DZnepDLCnBZ9amCfDeJH7saoN/GAV59pUcnmEVVVUV9qu68CHI+kUz3tgLpW3h
         rxNSirtT1AUcUZBW1n4kVfY5XfYWSCgrHOk0FPT4FkVYAS+XQkdhqn6yiqO7lwgJZi1u
         I0AR9I9/c0NsTJlPizEwMyd+DXIuAZUNiZ4I7lAiIZQZvslI4rVlIUIGtYjliI43UmUW
         YBuRNGLcYrxyzb/glNh9qC0Fqfd1dt2+jVYw2iVpl+0xRfmrweaSi4oZs8qqT5+ZgTWW
         pOlNNbpMtNBz/t9QNFd5lgQjG/EpqoDwTSGtBeoEmFFhdxZXzAWWmp6mx8MhxfSM7G0P
         6HiQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6w1QpxILldSQTz6DbgpN9tUp539sfTP5uHl1l5cC1vHGLgiFaCq1kDxIm/g4Vub+ImuO3DtqIyIIhCqOAovxyiMM4Dm88aEQIyQ==
X-Gm-Message-State: AOJu0YwmnXj36k+dXzkbdcZtGrX+M09nSbolKTrIT/+mkjBI2lpNbBTJ
	srHVwBSPXUoUJRC67D//efUvs5NClU+dZcAsMpK6VEzu9UJ3l+ytVfIUtlk7Qo4=
X-Google-Smtp-Source: AGHT+IEj5EFTvP70ZnuZfRWlri8XVAN9y5x9iWArJ1rXC2AKMPQ7/zmDJT43seeK59imyP7Q4+COJQ==
X-Received: by 2002:a05:600c:6dd2:b0:426:640a:9dec with SMTP id 5b1f17b1804b1-426708f9e89mr14068935e9.41.1720530355306;
        Tue, 09 Jul 2024 06:05:55 -0700 (PDT)
Received: from [127.0.1.1] ([2a0d:e487:133f:fb1b:7fc5:f63a:ac6f:62c6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f736939sm40812395e9.37.2024.07.09.06.05.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 06:05:54 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 09 Jul 2024 15:05:45 +0200
Subject: [PATCH 2/2] drm/panel: add BOE tv101wum-ll2 panel driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240709-topic-sdm450-upstream-tbx605f-panel-v1-2-af473397835d@linaro.org>
References: <20240709-topic-sdm450-upstream-tbx605f-panel-v1-0-af473397835d@linaro.org>
In-Reply-To: <20240709-topic-sdm450-upstream-tbx605f-panel-v1-0-af473397835d@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=9133;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=ReMuaX4uArWaeUyztwmAnshtAS2bOcX5muB5QxhiUe0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmjTWuVwfQp9h9uhDQNK3Zivhw5goQ9K1VVxZ8a
 wNvn1CWQG6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZo01rgAKCRB33NvayMhJ
 0WMYD/0VMrOeoHJSHnb4v4QCxts9qVC2omYTLR742cWbwoBAN7sW0lP0CEkke+z8BlP16bR4C48
 V3gr7gBxodx68FxIEJMFaI1tZZ7aN4nGXenGcXeoUrvyCQRpBglSLHaMdr8ncBNY6ieI2piHVV4
 eRQt0iguGXl5P99hnLCuLPJHRiWf3xijsAhhj0pLjX4T9a/4WiKsszP1vw81+6PXhIamkZhpnWN
 TwQhtrADWapY4j6fWiuw3QN2eYfKaAmykMrHLfhy3VKsFbjf39dNCnfJM6OKG7hkDnZXUOEz2vo
 zhUhUrQaJVWjUy5njYMxmqMHr4O6N0uYvXx6sC5VtMUyLhG9ZWpA48884yZnFpzZI8D4iE6q35E
 5DaFOxtZ9Q39GxLh5C9NYAAak167wxrJ9TrDgEByXyONvx8ugVFkZI5eOWXHfQ18ayC0ohzt9yh
 9X3g3lNsQapjq5VbgDNutf7oNpywCwhZN7vATlnRNqDg6V3F/mfn9AsIAmuy1jv3Cml9I2/T6V7
 vRKbu/+ipUNMPAQ0w+zfy4jOp2fr9NnIcqhQBDlai57J41lz2kFMpu39uwNr8nbzFu+f7xzsvzR
 HiqkAwiIZN4Dnz3CxsfRjqHOCdmuTmOQlhy2FHZ5JQ0VHNEK1WxB0PeQQ7rEa1sUnGH1U15RZOS
 tgQIyBUPlmz3xGg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add support for the 1200x1920 BOE TV101WUM-LL2 DSI Display Panel found
in the Lenovo Smart Tab M10 tablet. The controller is unknown.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/panel/Kconfig                  |   9 +
 drivers/gpu/drm/panel/Makefile                 |   1 +
 drivers/gpu/drm/panel/panel-boe-tv101wum-ll2.c | 240 +++++++++++++++++++++++++
 3 files changed, 250 insertions(+)

diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
index 9f49b0189d3b..b52d255f65e6 100644
--- a/drivers/gpu/drm/panel/Kconfig
+++ b/drivers/gpu/drm/panel/Kconfig
@@ -87,6 +87,15 @@ config DRM_PANEL_BOE_TV101WUM_NL6
 	  Say Y here if you want to support for BOE TV101WUM and AUO KD101N80
 	  45NA WUXGA PANEL DSI Video Mode panel
 
+config DRM_PANEL_BOE_TV101WUM_LL2
+	tristate "BOE TV101WUM LL2 1200x1920 panel"
+	depends on OF
+	depends on DRM_MIPI_DSI
+	depends on BACKLIGHT_CLASS_DEVICE
+	help
+	  Say Y here if you want to support for BOE TV101WUM-LL2
+	  WUXGA PANEL DSI Video Mode panel
+
 config DRM_PANEL_EBBG_FT8719
 	tristate "EBBG FT8719 panel driver"
 	depends on OF
diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
index 5581387707c6..79c90894b6a4 100644
--- a/drivers/gpu/drm/panel/Makefile
+++ b/drivers/gpu/drm/panel/Makefile
@@ -7,6 +7,7 @@ obj-$(CONFIG_DRM_PANEL_BOE_BF060Y8M_AJ0) += panel-boe-bf060y8m-aj0.o
 obj-$(CONFIG_DRM_PANEL_BOE_HIMAX8279D) += panel-boe-himax8279d.o
 obj-$(CONFIG_DRM_PANEL_BOE_TH101MB31UIG002_28A) += panel-boe-th101mb31ig002-28a.o
 obj-$(CONFIG_DRM_PANEL_BOE_TV101WUM_NL6) += panel-boe-tv101wum-nl6.o
+obj-$(CONFIG_DRM_PANEL_BOE_TV101WUM_LL2) += panel-boe-tv101wum-ll2.o
 obj-$(CONFIG_DRM_PANEL_DSI_CM) += panel-dsi-cm.o
 obj-$(CONFIG_DRM_PANEL_LVDS) += panel-lvds.o
 obj-$(CONFIG_DRM_PANEL_SIMPLE) += panel-simple.o
diff --git a/drivers/gpu/drm/panel/panel-boe-tv101wum-ll2.c b/drivers/gpu/drm/panel/panel-boe-tv101wum-ll2.c
new file mode 100644
index 000000000000..5513cb48d949
--- /dev/null
+++ b/drivers/gpu/drm/panel/panel-boe-tv101wum-ll2.c
@@ -0,0 +1,240 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// Generated with linux-mdss-dsi-panel-driver-generator from vendor device tree:
+//   Copyright (c) 2013, The Linux Foundation. All rights reserved.
+//   Copyright (c) 2024, Neil Armstrong <neil.armstrong@linaro.org>
+
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
+#include <linux/regulator/consumer.h>
+#include <linux/module.h>
+#include <linux/of.h>
+
+#include <drm/drm_mipi_dsi.h>
+#include <drm/drm_modes.h>
+#include <drm/drm_panel.h>
+#include <drm/drm_probe_helper.h>
+
+struct boe_tv101wum_ll2 {
+	struct drm_panel panel;
+	struct mipi_dsi_device *dsi;
+	struct gpio_desc *reset_gpio;
+	struct regulator_bulk_data supplies[2];
+};
+
+static inline struct boe_tv101wum_ll2 *to_boe_tv101wum_ll2(struct drm_panel *panel)
+{
+	return container_of(panel, struct boe_tv101wum_ll2, panel);
+}
+
+static void boe_tv101wum_ll2_reset(struct boe_tv101wum_ll2 *ctx)
+{
+	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
+	usleep_range(5000, 6000);
+	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+	usleep_range(5000, 6000);
+	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
+
+	msleep(120);
+}
+
+static int boe_tv101wum_ll2_on(struct boe_tv101wum_ll2 *ctx)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct mipi_dsi_multi_context dsi_ctx = { .dsi = dsi };
+
+	dsi->mode_flags |= MIPI_DSI_MODE_LPM;
+
+	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
+
+	mipi_dsi_msleep(&dsi_ctx, 120);
+
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x50, 0x5a, 0x0e);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x80, 0xff, 0x81, 0x68, 0x6c, 0x22,
+				     0x6d, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x50, 0x5a, 0x23);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x90, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x94, 0x2c, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x50, 0x5a, 0x19);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xa2, 0x38);
+
+	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0x50, 0x5a, 0x0c);
+	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0x80, 0xfd);
+	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0x50, 0x00);
+
+	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
+
+	mipi_dsi_msleep(&dsi_ctx, 20);
+
+	return dsi_ctx.accum_err;
+}
+
+static int boe_tv101wum_ll2_off(struct boe_tv101wum_ll2 *ctx)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct mipi_dsi_multi_context dsi_ctx = { .dsi = dsi };
+
+	dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
+
+	mipi_dsi_dcs_set_display_off_multi(&dsi_ctx);
+
+	mipi_dsi_msleep(&dsi_ctx, 70);
+
+	mipi_dsi_dcs_enter_sleep_mode_multi(&dsi_ctx);
+
+	mipi_dsi_msleep(&dsi_ctx, 20);
+
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x04, 0x5a);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x05, 0x5a);
+
+	mipi_dsi_msleep(&dsi_ctx, 150);
+
+	return dsi_ctx.accum_err;
+}
+
+static int boe_tv101wum_ll2_prepare(struct drm_panel *panel)
+{
+	struct boe_tv101wum_ll2 *ctx = to_boe_tv101wum_ll2(panel);
+	struct device *dev = &ctx->dsi->dev;
+	int ret;
+
+	ret = regulator_bulk_enable(ARRAY_SIZE(ctx->supplies),
+				    ctx->supplies);
+	if (ret < 0)
+		return ret;
+
+	boe_tv101wum_ll2_reset(ctx);
+
+	ret = boe_tv101wum_ll2_on(ctx);
+	if (ret < 0) {
+		dev_err(dev, "Failed to initialize panel: %d\n", ret);
+		gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int boe_tv101wum_ll2_unprepare(struct drm_panel *panel)
+{
+	struct boe_tv101wum_ll2 *ctx = to_boe_tv101wum_ll2(panel);
+	struct device *dev = &ctx->dsi->dev;
+	int ret;
+
+	ret = boe_tv101wum_ll2_off(ctx);
+	if (ret < 0)
+		dev_err(dev, "Failed to un-initialize panel: %d\n", ret);
+
+	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+
+	regulator_bulk_disable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
+
+	return 0;
+}
+
+static const struct drm_display_mode boe_tv101wum_ll2_mode = {
+	.clock = (1200 + 27 + 8 + 12) * (1920 + 155 + 8 + 32) * 60 / 1000,
+	.hdisplay = 1200,
+	.hsync_start = 1200 + 27,
+	.hsync_end = 1200 + 27 + 8,
+	.htotal = 1200 + 27 + 8 + 12,
+	.vdisplay = 1920,
+	.vsync_start = 1920 + 155,
+	.vsync_end = 1920 + 155 + 8,
+	.vtotal = 1920 + 155 + 8 + 32,
+	.width_mm = 136,
+	.height_mm = 217,
+	.type = DRM_MODE_TYPE_DRIVER,
+};
+
+static int boe_tv101wum_ll2_get_modes(struct drm_panel *panel,
+				      struct drm_connector *connector)
+{
+	return drm_connector_helper_get_modes_fixed(connector, &boe_tv101wum_ll2_mode);
+}
+
+static const struct drm_panel_funcs boe_tv101wum_ll2_panel_funcs = {
+	.prepare = boe_tv101wum_ll2_prepare,
+	.unprepare = boe_tv101wum_ll2_unprepare,
+	.get_modes = boe_tv101wum_ll2_get_modes,
+};
+
+static int boe_tv101wum_ll2_probe(struct mipi_dsi_device *dsi)
+{
+	struct device *dev = &dsi->dev;
+	struct boe_tv101wum_ll2 *ctx;
+	int ret;
+
+	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	ctx->supplies[0].supply = "vsp";
+	ctx->supplies[1].supply = "vsn";
+
+	ret = devm_regulator_bulk_get(&dsi->dev, ARRAY_SIZE(ctx->supplies),
+				      ctx->supplies);
+	if (ret < 0)
+		return ret;
+
+	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
+	if (IS_ERR(ctx->reset_gpio))
+		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
+				     "Failed to get reset-gpios\n");
+
+	ctx->dsi = dsi;
+	mipi_dsi_set_drvdata(dsi, ctx);
+
+	dsi->lanes = 4;
+	dsi->format = MIPI_DSI_FMT_RGB888;
+	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+			  MIPI_DSI_MODE_VIDEO_HSE;
+
+	drm_panel_init(&ctx->panel, dev, &boe_tv101wum_ll2_panel_funcs,
+		       DRM_MODE_CONNECTOR_DSI);
+	ctx->panel.prepare_prev_first = true;
+
+	ret = drm_panel_of_backlight(&ctx->panel);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to get backlight\n");
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
+static void boe_tv101wum_ll2_remove(struct mipi_dsi_device *dsi)
+{
+	struct boe_tv101wum_ll2 *ctx = mipi_dsi_get_drvdata(dsi);
+	int ret;
+
+	ret = mipi_dsi_detach(dsi);
+	if (ret < 0)
+		dev_err(&dsi->dev, "Failed to detach from DSI host: %d\n", ret);
+
+	drm_panel_remove(&ctx->panel);
+}
+
+static const struct of_device_id boe_tv101wum_ll2_of_match[] = {
+	{ .compatible = "boe,tv101wum-ll2" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, boe_tv101wum_ll2_of_match);
+
+static struct mipi_dsi_driver boe_tv101wum_ll2_driver = {
+	.probe = boe_tv101wum_ll2_probe,
+	.remove = boe_tv101wum_ll2_remove,
+	.driver = {
+		.name = "panel-boe-tv101wum_ll2",
+		.of_match_table = boe_tv101wum_ll2_of_match,
+	},
+};
+module_mipi_dsi_driver(boe_tv101wum_ll2_driver);
+
+MODULE_DESCRIPTION("DRM driver for Boe TV101WUM-LL2 Panel");
+MODULE_LICENSE("GPL");

-- 
2.34.1


