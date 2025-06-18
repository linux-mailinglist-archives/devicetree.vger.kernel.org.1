Return-Path: <devicetree+bounces-186913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FB1ADE1E1
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 05:49:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8375D189C007
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 03:50:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C65D819ABD8;
	Wed, 18 Jun 2025 03:49:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f96Ysw1K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91E1F1714B7
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 03:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750218590; cv=none; b=ogc75ZU8J9fuBNQhcKgUbu5S3ngWEgjzIdFJ2RGQ8iF7P7psfD9FHor7Ce3vbbx82Pkbd4sGrPHtoAPJ+VWdSjPfBpivE5Zps+qwlS+0MI/whkg40idzNPYFGalmXkXwJdSgI+8tFdfuj4BX8X2G1oE8YlcwFuEYakuTOlA+fdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750218590; c=relaxed/simple;
	bh=JRjzWuQHkEXBbludePpxeSKolcoRorq4g0LQz5HH4KM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NWPrG9eHrs2ALAcjZGbcTGHbFKuP+kidvFIQfEDTGjL+UBMtt6tvOE8eVX1y5q3t7qhjcCTIyRNC+6l2T2IRjmxIsoAQar1GTRli5o+ggfrgNIEUKi0zReMGTejeN3TvmUiwNStkYASCUbHi0G3wD+k/bAkwy85Er6tBhbFpnEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f96Ysw1K; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-235e1d4cba0so58438895ad.2
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 20:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750218588; x=1750823388; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SxFkoqWtUzoja/+cd6w7OQvtwrCCnHvWa6M19kSfpEg=;
        b=f96Ysw1KYXy7XlHwrKPBFBw85zTUv4aDaiA8Nz2u1wHl6BP02h5WjKakgTqIcbn9s0
         yMr9scx6gvABpdr9Z2X5RuAkonF2gHMipwWs2dhMdAoy9GfQpqomTdhBWce+xk1DMSC6
         U45pRsmB7SgXqoBq40OfXCrKr8Nf7OzMUz95kAI8CLegm8YZWhZnMrJg4qlO933pOg26
         LlxXRz+RaU9I9eWXJaJY/ppOcI+j2kkeIPhaGdcVFryC1MSNq36nOMBLPYxvZ/Ln+jc0
         tnljhg4a9zAePdGaOMIT7yj0tloHj6d4hGHlNaSOk9ocBXKIQh3QS1//NYDQ5yvCPWwP
         SFPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750218588; x=1750823388;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SxFkoqWtUzoja/+cd6w7OQvtwrCCnHvWa6M19kSfpEg=;
        b=PLTqpxaiv4g/ShbcBfjy9JhOi19Df5trtC3EjOdLVSEoiMz5Z92qDi8tkWPrJdp0Cm
         7YrM0JnAxn3q3BCrQl/lLxMJCoRnC0iJvGLKmBsXoAY8b0ioqBiAPYuQy9wOCs2OXFn0
         izRPSeRkugpRxc4D/MDL3Y5g6bCbahK6PqLCGiZ9RvVH3jWpO6Fdlp1BY83hA1bvPpY/
         CypCY6zCaV47X+2wzurDccLsb0INZMa1Hs9vd6wemmxRQTrmkRQOzYgzqQQewzCVH/cS
         Wmqr0p1PmLrksjKhDBr7NTv7drb7Vjkk9aS7drgz3DJ4u4thz9sEZ9x+oEIjRXJcQlb4
         gk4A==
X-Forwarded-Encrypted: i=1; AJvYcCUIQzapAdMcmbBtFnxw5gJHgFUDUtKTLwmUKuS8dXGp0eNasdMkWBGzjZL+ZaK0DVrwwt/RYFtQ3g+V@vger.kernel.org
X-Gm-Message-State: AOJu0YyzfmXL+qgUCY4n3n0uaASm9sO4YkExRDIFGZ5EW8oN0bLUadUR
	350AhTYpuQ8Vd/K05DwFOgtKcxbBNjuJZ12ugYcclMNIbB0ZzsUEZL/Fy61dpGJo
X-Gm-Gg: ASbGncuquK3IRvR9yWqvDJFj2N+G7dyx3Gwkl6JqnO9smVQ3qOgFsGRvC8cG8VQqoju
	0IeeFll7rojcPPzdNbmIK+oXOFYWIe6U9Ls7l6vqp8jVVVN53rhKHYR7oReWNWP9VdR7KqmO1BT
	smabD7Kv2D3ue5atx5RtHw98iBK1+AigqbaKAVZiJ8qc6iTxHX8GH5HCgV9ZnSOP/UIIaIefkBX
	0Bu+LPUBDENf/UeaFynTtxHGLgTd4ajywLxUv7la28eeDG3yez9f/9ss5YvnSOmCWE8zgfmAbUx
	cqJY0L8aY6hOfUXQDanqNG9NhNYGh/enEe1ouHZGxNewcXMBb77eg1nriR5j5WksVxZf33uJLI2
	4xy0XcqqUsaFlqU6sJa80hU7Ce4BeEmw9BX92iROMEHhOPaTUew==
X-Google-Smtp-Source: AGHT+IFDscZci0Wd7aYbUpH02AMh+4M//vbkYxiI6zE6BJxbfKVVxI7seuWB593VvEhqF2RzxnnZxg==
X-Received: by 2002:a17:903:32c5:b0:234:adce:3ece with SMTP id d9443c01a7336-2366afe9924mr233353735ad.11.1750218587621;
        Tue, 17 Jun 2025 20:49:47 -0700 (PDT)
Received: from lcwang-Precision-3630-Tower.. (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-236736cb4f9sm63418405ad.138.2025.06.17.20.49.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 20:49:47 -0700 (PDT)
From: LiangCheng Wang <zaq14760@gmail.com>
To: cip-dev@lists.cip-project.org
Cc: drm@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	noralf@tronnes.org,
	robh+dt@kernel.org,
	krzk@kernel.org,
	zaq14760@gmail.com,
	onlywig@gmail.com
Subject: [PATCH 2/3] drm: tiny: Add support for PIXPAPER e-ink panel
Date: Wed, 18 Jun 2025 11:49:35 +0800
Message-Id: <20250618034936.172150-3-zaq14760@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250618034936.172150-1-zaq14760@gmail.com>
References: <20250618034936.172150-1-zaq14760@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce a DRM driver for the PIXPAPER e-ink display panel, which is
controlled via SPI. The driver supports a 122x250 resolution display with
XRGB8888 format, using the DRM simple KMS helper framework.

Signed-off-by: LiangCheng Wang <zaq14760@gmail.com>
---
 MAINTAINERS                     |   6 +
 drivers/gpu/drm/tiny/Kconfig    |  11 +
 drivers/gpu/drm/tiny/Makefile   |   1 +
 drivers/gpu/drm/tiny/pixpaper.c | 716 ++++++++++++++++++++++++++++++++
 4 files changed, 734 insertions(+)
 create mode 100644 drivers/gpu/drm/tiny/pixpaper.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 66c628761..aac32556a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5534,6 +5534,12 @@ S:	Orphan / Obsolete
 F:	drivers/gpu/drm/i810/
 F:	include/uapi/drm/i810_drm.h
 
+DRM DRIVER FOR PIXPAPER E-INK PANEL
+M:	LiangCheng Wang <zaq14760@gmail.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml
+F:	drivers/gpu/drm/tiny/pixpaper.c
+
 DRM DRIVER FOR LVDS PANELS
 M:	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
 L:	dri-devel@lists.freedesktop.org
diff --git a/drivers/gpu/drm/tiny/Kconfig b/drivers/gpu/drm/tiny/Kconfig
index 2b6414f0f..922753489 100644
--- a/drivers/gpu/drm/tiny/Kconfig
+++ b/drivers/gpu/drm/tiny/Kconfig
@@ -131,3 +131,14 @@ config TINYDRM_ST7735R
 	  * Okaya RH128128T 1.44" 128x128 TFT
 
 	  If M is selected the module will be called st7735r.
+
+config DRM_PIXPAPER
+    tristate "DRM support for PIXPAPER display panels"
+    depends on DRM && SPI
+    select DRM_KMS_HELPER
+    select DRM_KMS_CMA_HELPER
+    help
+      DRM driver for the following PIXPAPER panels
+
+      If M is selected the module will be called pixpaper .
+
diff --git a/drivers/gpu/drm/tiny/Makefile b/drivers/gpu/drm/tiny/Makefile
index 6ae4e9e5a..4b9e473ba 100644
--- a/drivers/gpu/drm/tiny/Makefile
+++ b/drivers/gpu/drm/tiny/Makefile
@@ -10,3 +10,4 @@ obj-$(CONFIG_TINYDRM_MI0283QT)		+= mi0283qt.o
 obj-$(CONFIG_TINYDRM_REPAPER)		+= repaper.o
 obj-$(CONFIG_TINYDRM_ST7586)		+= st7586.o
 obj-$(CONFIG_TINYDRM_ST7735R)		+= st7735r.o
+obj-$(CONFIG_DRM_PIXPAPER)			+= pixpaper.o
diff --git a/drivers/gpu/drm/tiny/pixpaper.c b/drivers/gpu/drm/tiny/pixpaper.c
new file mode 100644
index 000000000..f6081cf96
--- /dev/null
+++ b/drivers/gpu/drm/tiny/pixpaper.c
@@ -0,0 +1,716 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * DRM driver for PIXPAPER e-ink panel
+ *
+ * Author: LC Wang <zaq14760@gmail.com>,
+ */
+
+#include <linux/dma-buf.h>
+#include <linux/module.h>
+#include <linux/spi/spi.h>
+#include <linux/gpio/consumer.h>
+#include <drm/drm_drv.h>
+#include <drm/drm_fb_helper.h>
+#include <drm/drm_gem_cma_helper.h>
+#include <drm/drm_modeset_helper.h>
+#include <drm/drm_simple_kms_helper.h>
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_gem_framebuffer_helper.h>
+#include <drm/drm_probe_helper.h>
+#include <drm/drm_managed.h>
+#include <linux/delay.h>
+#include <linux/mutex.h>
+
+#define PIXPAPER_WIDTH  122
+#define PIXPAPER_HEIGHT 250
+
+#define PANEL_BUFFER_WIDTH 128
+#define PANEL_BUFFER_TWO_BYTES_PER_ROW (PANEL_BUFFER_WIDTH / 4)
+
+#define PIXPAPER_SPI_SPEED_DEFAULT 1000000
+
+#define PIXPAPER_CMD_PANEL_SETTING         0x00
+#define PIXPAPER_CMD_POWER_SETTING         0x01
+#define PIXPAPER_CMD_POWER_OFF             0x02
+#define PIXPAPER_CMD_POWER_OFF_SEQUENCE    0x03
+#define PIXPAPER_CMD_POWER_ON              0x04
+#define PIXPAPER_CMD_BOOSTER_SOFT_START    0x06
+#define PIXPAPER_CMD_DEEP_SLEEP            0x07
+#define PIXPAPER_CMD_DATA_START_TRANSMISSION 0x10
+#define PIXPAPER_CMD_DISPLAY_REFRESH       0x12
+#define PIXPAPER_CMD_PLL_CONTROL           0x30
+#define PIXPAPER_CMD_TEMP_SENSOR_CALIB     0x41
+#define PIXPAPER_CMD_UNKNOWN_4D            0x4D
+#define PIXPAPER_CMD_VCOM_INTERVAL         0x50
+#define PIXPAPER_CMD_TCON_SETTING          0x60
+#define PIXPAPER_CMD_RESOLUTION_SETTING    0x61
+#define PIXPAPER_CMD_GATE_SOURCE_START     0x65
+#define PIXPAPER_CMD_UNKNOWN_B4            0xB4
+#define PIXPAPER_CMD_UNKNOWN_B5            0xB5
+#define PIXPAPER_CMD_CASCADE_SETTING       0xE0
+#define PIXPAPER_CMD_POWER_SAVING          0xE3
+#define PIXPAPER_CMD_AUTO_MEASURE_VCOM     0xE7
+#define PIXPAPER_CMD_UNKNOWN_E9            0xE9
+
+struct pixpaper_panel {
+	struct drm_device drm;
+	struct drm_simple_display_pipe pipe;
+	struct drm_connector connector;
+	struct spi_device *spi;
+	struct gpio_desc *reset;
+	struct gpio_desc *busy;
+	struct gpio_desc *dc;
+	struct mutex spi_lock;
+	struct mutex update_lock;
+	bool init_completed_successfully;
+};
+
+static const struct drm_display_mode pixpaper_mode = {
+	DRM_SIMPLE_MODE(PIXPAPER_WIDTH, PIXPAPER_HEIGHT, 30, 47),
+};
+
+static const uint32_t pixpaper_formats[] = {
+	DRM_FORMAT_XRGB8888,
+};
+
+static void pixpaper_wait_busy(struct pixpaper_panel *panel)
+{
+	unsigned int delay_us = 1000;
+
+	usleep_range(delay_us, delay_us + 500);
+	while (true)
+		if (gpiod_get_value_cansleep(panel->busy) == 1)
+			break;
+}
+
+static int pixpaper_spi_sync(struct spi_device *spi, struct spi_message *msg)
+{
+	int ret;
+
+	ret = spi_sync(spi, msg);
+	if (ret < 0)
+		dev_err(&spi->dev, "SPI sync failed: %d\n", ret);
+
+	return ret;
+}
+
+static int pixpaper_send_cmd(struct pixpaper_panel *panel, u8 cmd)
+{
+	struct spi_transfer xfer = {
+		.tx_buf = &cmd,
+		.len = 1,
+	};
+	struct spi_message msg;
+	int ret;
+
+	spi_message_init(&msg);
+	spi_message_add_tail(&xfer, &msg);
+
+	mutex_lock(&panel->spi_lock);
+	gpiod_set_value_cansleep(panel->dc, 0);
+	usleep_range(1, 5);
+	ret = pixpaper_spi_sync(panel->spi, &msg);
+	mutex_unlock(&panel->spi_lock);
+
+	return ret;
+}
+
+static int pixpaper_send_data(struct pixpaper_panel *panel, u8 data)
+{
+	struct spi_transfer xfer = {
+		.tx_buf = &data,
+		.len = 1,
+	};
+	struct spi_message msg;
+	int ret;
+
+	spi_message_init(&msg);
+	spi_message_add_tail(&xfer, &msg);
+
+	mutex_lock(&panel->spi_lock);
+	gpiod_set_value_cansleep(panel->dc, 1);
+	usleep_range(1, 5);
+	ret = pixpaper_spi_sync(panel->spi, &msg);
+	mutex_unlock(&panel->spi_lock);
+
+	return ret;
+}
+
+static int pixpaper_panel_hw_init(struct pixpaper_panel *panel)
+{
+	struct device *dev = &panel->spi->dev;
+	int ret = 0;
+
+	dev_info(dev, "%s: Starting hardware initialization\n", __func__);
+
+	gpiod_set_value_cansleep(panel->reset, 0);
+	msleep(50);
+	gpiod_set_value_cansleep(panel->reset, 1);
+	msleep(50);
+
+	pixpaper_wait_busy(panel);
+	dev_info(dev, "Hardware reset complete, panel idle.\n");
+
+	ret |= pixpaper_send_cmd(panel, PIXPAPER_CMD_UNKNOWN_4D);
+	ret |= pixpaper_send_data(panel, 0x78);
+	if (ret)
+		goto init_fail;
+	pixpaper_wait_busy(panel);
+
+	ret |= pixpaper_send_cmd(panel, PIXPAPER_CMD_PANEL_SETTING);
+	ret |= pixpaper_send_data(panel, 0x0F);
+	ret |= pixpaper_send_data(panel, 0x09);
+	if (ret)
+		goto init_fail;
+	pixpaper_wait_busy(panel);
+
+	ret |= pixpaper_send_cmd(panel, PIXPAPER_CMD_POWER_SETTING);
+	ret |= pixpaper_send_data(panel, 0x07);
+	ret |= pixpaper_send_data(panel, 0x00);
+	ret |= pixpaper_send_data(panel, 0x22);
+	ret |= pixpaper_send_data(panel, 0x78);
+	ret |= pixpaper_send_data(panel, 0x0A);
+	ret |= pixpaper_send_data(panel, 0x22);
+	if (ret)
+		goto init_fail;
+	pixpaper_wait_busy(panel);
+
+	ret |= pixpaper_send_cmd(panel, PIXPAPER_CMD_POWER_OFF_SEQUENCE);
+	ret |= pixpaper_send_data(panel, 0x10);
+	ret |= pixpaper_send_data(panel, 0x54);
+	ret |= pixpaper_send_data(panel, 0x44);
+	if (ret)
+		goto init_fail;
+	pixpaper_wait_busy(panel);
+
+	ret |= pixpaper_send_cmd(panel, PIXPAPER_CMD_BOOSTER_SOFT_START);
+	ret |= pixpaper_send_data(panel, 0x0F);
+	ret |= pixpaper_send_data(panel, 0x0A);
+	ret |= pixpaper_send_data(panel, 0x2F);
+	ret |= pixpaper_send_data(panel, 0x25);
+	ret |= pixpaper_send_data(panel, 0x22);
+	ret |= pixpaper_send_data(panel, 0x2E);
+	ret |= pixpaper_send_data(panel, 0x21);
+	if (ret)
+		goto init_fail;
+	pixpaper_wait_busy(panel);
+
+	ret |= pixpaper_send_cmd(panel, PIXPAPER_CMD_PLL_CONTROL);
+	ret |= pixpaper_send_data(panel, 0x02);
+	if (ret)
+		goto init_fail;
+	pixpaper_wait_busy(panel);
+
+	ret |= pixpaper_send_cmd(panel, PIXPAPER_CMD_TEMP_SENSOR_CALIB);
+	ret |= pixpaper_send_data(panel, 0x00);
+	if (ret)
+		goto init_fail;
+	pixpaper_wait_busy(panel);
+
+	ret |= pixpaper_send_cmd(panel, PIXPAPER_CMD_VCOM_INTERVAL);
+	ret |= pixpaper_send_data(panel, 0x37);
+	if (ret)
+		goto init_fail;
+	pixpaper_wait_busy(panel);
+
+	ret |= pixpaper_send_cmd(panel, PIXPAPER_CMD_TCON_SETTING);
+	ret |= pixpaper_send_data(panel, 0x02);
+	ret |= pixpaper_send_data(panel, 0x02);
+	if (ret)
+		goto init_fail;
+	pixpaper_wait_busy(panel);
+
+	ret |= pixpaper_send_cmd(panel, PIXPAPER_CMD_RESOLUTION_SETTING);
+	ret |= pixpaper_send_data(panel, 0x00);
+	ret |= pixpaper_send_data(panel, 0x80);
+	ret |= pixpaper_send_data(panel, 0x00);
+	ret |= pixpaper_send_data(panel, 0xFA);
+	if (ret)
+		goto init_fail;
+	pixpaper_wait_busy(panel);
+
+	ret |= pixpaper_send_cmd(panel, PIXPAPER_CMD_GATE_SOURCE_START);
+	ret |= pixpaper_send_data(panel, 0x00);
+	ret |= pixpaper_send_data(panel, 0x00);
+	ret |= pixpaper_send_data(panel, 0x00);
+	ret |= pixpaper_send_data(panel, 0x00);
+	if (ret)
+		goto init_fail;
+	pixpaper_wait_busy(panel);
+
+	ret |= pixpaper_send_cmd(panel, PIXPAPER_CMD_AUTO_MEASURE_VCOM);
+	ret |= pixpaper_send_data(panel, 0x1C);
+	if (ret)
+		goto init_fail;
+	pixpaper_wait_busy(panel);
+
+	ret |= pixpaper_send_cmd(panel, PIXPAPER_CMD_POWER_SAVING);
+	ret |= pixpaper_send_data(panel, 0x22);
+	if (ret)
+		goto init_fail;
+	pixpaper_wait_busy(panel);
+
+	ret |= pixpaper_send_cmd(panel, PIXPAPER_CMD_CASCADE_SETTING);
+	ret |= pixpaper_send_data(panel, 0x00);
+	if (ret)
+		goto init_fail;
+	pixpaper_wait_busy(panel);
+
+	ret |= pixpaper_send_cmd(panel, PIXPAPER_CMD_UNKNOWN_B4);
+	ret |= pixpaper_send_data(panel, 0xD0);
+	if (ret)
+		goto init_fail;
+	pixpaper_wait_busy(panel);
+
+	ret |= pixpaper_send_cmd(panel, PIXPAPER_CMD_UNKNOWN_B5);
+	ret |= pixpaper_send_data(panel, 0x03);
+	if (ret)
+		goto init_fail;
+	pixpaper_wait_busy(panel);
+
+	ret |= pixpaper_send_cmd(panel, PIXPAPER_CMD_UNKNOWN_E9);
+	ret |= pixpaper_send_data(panel, 0x01);
+	if (ret)
+		goto init_fail;
+	pixpaper_wait_busy(panel);
+
+	dev_info(dev, "%s: Hardware initialization successful\n", __func__);
+	panel->init_completed_successfully = true;
+	return 0;
+
+init_fail:
+	dev_err(dev, "%s: Hardware initialization failed (err=%d)\n", __func__, ret);
+	panel->init_completed_successfully = false;
+	return ret;
+}
+
+static void pixpaper_pipe_enable(struct drm_simple_display_pipe *pipe,
+					struct drm_crtc_state *crtc_state,
+					struct drm_plane_state *plane_state)
+{
+	struct pixpaper_panel *panel = container_of(pipe, struct pixpaper_panel, pipe);
+	struct drm_device *drm = &panel->drm;
+	int ret;
+
+	dev_info(drm->dev, "%s: Enabling pipe\n", __func__);
+
+	ret = pixpaper_panel_hw_init(panel);
+	if (ret) {
+		dev_err(drm->dev, "Panel HW Init failed during enable: %d\n", ret);
+		return;
+	}
+
+	dev_info(drm->dev, "Sending Power ON (PON)\n");
+	ret = pixpaper_send_cmd(panel, PIXPAPER_CMD_POWER_ON);
+	if (ret) {
+		dev_err(drm->dev, "Failed to send PON command: %d\n", ret);
+		return;
+	}
+
+	usleep_range(10000, 11000);
+
+	pixpaper_wait_busy(panel);
+
+	dev_info(drm->dev, "Panel enabled and powered on\n");
+}
+
+static void pixpaper_pipe_disable(struct drm_simple_display_pipe *pipe)
+{
+	struct pixpaper_panel *panel = container_of(pipe, struct pixpaper_panel, pipe);
+	struct drm_device *drm = &panel->drm;
+	int ret;
+
+	dev_dbg(drm->dev, "%s: Disabling pipe\n", __func__);
+
+	ret = pixpaper_send_cmd(panel, PIXPAPER_CMD_POWER_OFF);
+	if (!ret) {
+		usleep_range(10000, 11000);
+		pixpaper_wait_busy(panel);
+	} else {
+		dev_warn(drm->dev, "Failed to send POF command: %d\n", ret);
+	}
+	dev_info(drm->dev, "Panel disabled\n");
+}
+
+static u8 pack_pixels_to_byte(u32 *src_pixels, int i, int j, struct drm_framebuffer *fb)
+{
+	u8 packed_byte = 0;
+	int k;
+
+	for (k = 0; k < 4; k++) {
+		int current_pixel_x = j * 4 + k;
+		u8 two_bit_val;
+
+		if (current_pixel_x < PIXPAPER_WIDTH) {
+			u32 pixel_offset = (i * (fb->pitches[0] / 4)) + current_pixel_x;
+			u32 pixel = src_pixels[pixel_offset];
+			u32 r = (pixel >> 16) & 0xFF;
+			u32 g = (pixel >> 8) & 0xFF;
+			u32 b = pixel & 0xFF;
+			u32 gray_val = (r * 299 + g * 587 + b * 114 + 500) / 1000;
+
+			if (gray_val < 64)
+				two_bit_val = 0b00;
+			else if (gray_val < 128)
+				two_bit_val = 0b01;
+			else if (gray_val < 192)
+				two_bit_val = 0b10;
+			else
+				two_bit_val = 0b11;
+		} else {
+			two_bit_val = 0b11;
+		}
+
+		packed_byte |= two_bit_val << ((3 - k) * 2);
+	}
+
+	return packed_byte;
+}
+
+static void pixpaper_pipe_update(struct drm_simple_display_pipe *pipe,
+							struct drm_plane_state *old_plane_state)
+{
+	struct pixpaper_panel *panel = container_of(pipe, struct pixpaper_panel, pipe);
+	struct drm_device *drm = &panel->drm;
+	struct drm_plane_state *plane_state = pipe->plane.state;
+	struct drm_framebuffer *fb = plane_state->fb;
+	struct drm_gem_object *gem_obj;
+	struct dma_buf *dmabuf = NULL;
+	void *vaddr = NULL;
+	int i, j, ret = 0;
+	u32 *src_pixels = NULL;
+
+	if (!panel->init_completed_successfully) {
+		dev_err(drm->dev, "CRITICAL: pipe_update called BEFORE init completed successfully!\n");
+		return;
+	}
+
+	dev_info(drm->dev, "Starting frame update (phys=%dx%d, buf_w=%d)\n",
+		PIXPAPER_WIDTH, PIXPAPER_HEIGHT, PANEL_BUFFER_WIDTH);
+
+	if (mutex_lock_interruptible(&panel->update_lock)) {
+		dev_warn(drm->dev, "Frame update interrupted while waiting for lock\n");
+		return;
+	}
+
+	if (!fb || !plane_state->visible) {
+		dev_dbg(drm->dev, "No framebuffer or plane not visible, skipping update\n");
+		mutex_unlock(&panel->update_lock);
+		return;
+	}
+
+	gem_obj = drm_gem_fb_get_obj(fb, 0);
+	if (!gem_obj) {
+		dev_err(drm->dev, "Framebuffer has no backing GEM object\n");
+		mutex_unlock(&panel->update_lock);
+		return;
+	}
+
+	dmabuf = drm_gem_prime_export(gem_obj, O_RDONLY);
+	if (IS_ERR(dmabuf)) {
+		dev_err(drm->dev, "Failed to export GEM object to dma-buf: %ld\n", PTR_ERR(dmabuf));
+		mutex_unlock(&panel->update_lock);
+		return;
+	}
+
+	vaddr = dma_buf_vmap(dmabuf);
+	if (IS_ERR_OR_NULL(vaddr)) {
+		dev_err(drm->dev, "Failed to vmap dma-buf: %ld\n",
+				vaddr ? PTR_ERR(vaddr) : -ENOMEM);
+		dma_buf_put(dmabuf);
+		mutex_unlock(&panel->update_lock);
+		return;
+	}
+	src_pixels = (u32 *)vaddr;
+
+	dev_info(drm->dev, "Sending DTM command\n");
+	ret = pixpaper_send_cmd(panel, PIXPAPER_CMD_DATA_START_TRANSMISSION);
+	if (ret)
+		goto update_cleanup;
+
+	usleep_range(10000, 11000);
+	pixpaper_wait_busy(panel);
+
+	dev_info(drm->dev, "Panel idle after DTM command, starting data batch send.\n");
+
+	for (i = 0; i < PIXPAPER_HEIGHT; i++) {
+		for (j = 0; j < PANEL_BUFFER_TWO_BYTES_PER_ROW; j++) {
+			u8 packed_byte = pack_pixels_to_byte(src_pixels, i, j, fb);
+
+			pixpaper_wait_busy(panel);
+			pixpaper_send_data(panel, packed_byte);
+		}
+	}
+	pixpaper_wait_busy(panel);
+
+	dev_info(drm->dev, "Sending PON + 0x00 before DRF\n");
+	ret = pixpaper_send_cmd(panel, PIXPAPER_CMD_POWER_ON);
+	if (ret)
+		goto update_cleanup;
+	ret = pixpaper_send_data(panel, 0x00);
+	if (ret) {
+		dev_err(drm->dev, "Failed sending data after PON-before-DRF: %d\n", ret);
+		goto update_cleanup;
+	}
+	usleep_range(10000, 11000);
+	pixpaper_wait_busy(panel);
+
+	dev_info(drm->dev, "Triggering display refresh (DRF)\n");
+	ret = pixpaper_send_cmd(panel, PIXPAPER_CMD_DISPLAY_REFRESH);
+	if (ret)
+		goto update_cleanup;
+	ret = pixpaper_send_data(panel, 0x00);
+	if (ret) {
+		dev_err(drm->dev, "Failed sending data after DRF: %d\n", ret);
+		goto update_cleanup;
+	}
+	usleep_range(10000, 11000);
+	pixpaper_wait_busy(panel);
+
+	dev_info(drm->dev, "Frame update completed and refresh triggered\n");
+
+update_cleanup:
+	if (vaddr && !IS_ERR(vaddr))
+		dma_buf_vunmap(dmabuf, vaddr);
+	if (dmabuf && !IS_ERR(dmabuf))
+		dma_buf_put(dmabuf);
+
+	if (ret && ret != -ETIMEDOUT)
+		dev_err(drm->dev, "Frame update function failed with error %d\n", ret);
+
+	mutex_unlock(&panel->update_lock);
+}
+
+
+static const struct drm_simple_display_pipe_funcs pixpaper_pipe_funcs = {
+	.enable = pixpaper_pipe_enable,
+	.disable = pixpaper_pipe_disable,
+	.update = pixpaper_pipe_update,
+	.prepare_fb = drm_gem_fb_simple_display_pipe_prepare_fb,
+};
+
+static int pixpaper_connector_get_modes(struct drm_connector *connector)
+{
+	struct drm_display_mode *mode;
+
+	dev_info(connector->dev->dev,
+			"%s: CALLED for connector %s (id: %d)\n", __func__,
+			connector->name, connector->base.id);
+
+	mode = drm_mode_create(connector->dev);
+	if (!mode) {
+		DRM_ERROR("Failed to create mode for connector %s\n", connector->name);
+		return 0;
+	}
+
+	mode->hdisplay = PIXPAPER_WIDTH;
+	mode->vdisplay = PIXPAPER_HEIGHT;
+
+	mode->htotal = mode->hdisplay + 80;
+	mode->hsync_start = mode->hdisplay + 8;
+	mode->hsync_end = mode->hdisplay + 8 + 32;
+	mode->vtotal = mode->vdisplay + 10;
+	mode->vsync_start = mode->vdisplay + 2;
+	mode->vsync_end = mode->vdisplay + 2 + 2;
+
+	mode->clock = 6000;
+
+	mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
+	drm_mode_set_name(mode);
+
+	if (drm_mode_validate_size(mode, connector->dev->mode_config.max_width,
+					connector->dev->mode_config.max_height) != MODE_OK) {
+		DRM_WARN("%s: Mode %s (%dx%d) failed size validation against max %dx%d\n", __func__,
+				mode->name, mode->hdisplay, mode->vdisplay,
+				connector->dev->mode_config.max_width,
+				connector->dev->mode_config.max_height);
+		drm_mode_destroy(connector->dev, mode);
+		return 0;
+	}
+
+	drm_mode_probed_add(connector, mode);
+	dev_info(connector->dev->dev, "%s: Added mode '%s' (%dx%d@%d) to connector %s\n", __func__,
+			mode->name, mode->hdisplay, mode->vdisplay, drm_mode_vrefresh(mode),
+			connector->name);
+
+	connector->display_info.width_mm = 30;
+	connector->display_info.height_mm = 47;
+
+	return 1;
+}
+static const struct drm_connector_helper_funcs pixpaper_conn_helpers = {
+	.get_modes = pixpaper_connector_get_modes,
+};
+
+static const struct drm_connector_funcs pixpaper_conn_funcs = {
+	.reset = drm_atomic_helper_connector_reset,
+	.fill_modes = drm_helper_probe_single_connector_modes,
+	.destroy = drm_connector_cleanup,
+	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+};
+
+DEFINE_DRM_GEM_CMA_FOPS(pixpaper_fops);
+
+static int pixpaper_mode_valid(struct drm_device *dev,
+								const struct drm_display_mode *mode)
+{
+	if (mode->hdisplay == PIXPAPER_WIDTH &&
+		mode->vdisplay == PIXPAPER_HEIGHT) {
+		return MODE_OK;
+	}
+	dev_dbg(dev->dev, "Rejecting mode %dx%d (supports only %dx%d)\n",
+		mode->hdisplay, mode->vdisplay, PIXPAPER_WIDTH, PIXPAPER_HEIGHT);
+	return MODE_BAD;
+}
+
+static const struct drm_mode_config_funcs pixpaper_mode_config_funcs = {
+	.fb_create = drm_gem_fb_create_with_dirty,
+	.mode_valid = pixpaper_mode_valid,
+	.atomic_check = drm_atomic_helper_check,
+	.atomic_commit = drm_atomic_helper_commit,
+};
+
+static struct drm_driver pixpaper_drm_driver = {
+	.driver_features = DRIVER_GEM | DRIVER_MODESET | DRIVER_ATOMIC,
+	.fops = &pixpaper_fops,
+	.name = "pixpaper",
+	.desc = "DRM driver for PIXPAPER e-ink",
+	.date = "2025-06-16",
+	.major = 1,
+	.minor = 0,
+	.dumb_create = drm_gem_cma_dumb_create,
+	DRM_GEM_CMA_DRIVER_OPS_VMAP,
+};
+
+
+static int pixpaper_probe(struct spi_device *spi)
+{
+	struct device *dev = &spi->dev;
+	struct pixpaper_panel *panel;
+	struct drm_device *drm;
+	int ret;
+
+	dev_info(dev, "Probing PIXPAPER panel driver\n");
+
+	panel = devm_drm_dev_alloc(dev, &pixpaper_drm_driver, struct pixpaper_panel, drm);
+	if (IS_ERR(panel)) {
+		ret = PTR_ERR(panel);
+		dev_err(dev, "Failed to allocate DRM device: %d\n", ret);
+		return ret;
+	}
+	panel->init_completed_successfully = false;
+	drm = &panel->drm;
+	panel->spi = spi;
+	spi_set_drvdata(spi, panel);
+
+	mutex_init(&panel->spi_lock);
+	mutex_init(&panel->update_lock);
+
+	spi->mode = SPI_MODE_0;
+	spi->bits_per_word = 8;
+
+	if (!spi->max_speed_hz) {
+		dev_warn(dev,
+			"spi-max-frequency not specified in DT, using default %u Hz\n",
+			PIXPAPER_SPI_SPEED_DEFAULT);
+		spi->max_speed_hz = PIXPAPER_SPI_SPEED_DEFAULT;
+	} else {
+		dev_info(dev, "Using spi-max-frequency from DT: %u Hz\n", spi->max_speed_hz);
+	}
+
+	ret = spi_setup(spi);
+	if (ret < 0) {
+		dev_err(dev, "SPI setup failed: %d\n", ret);
+		return ret;
+	}
+	dev_info(dev, "SPI setup OK (mode=%d, speed=%u Hz, bpw=%d)\n",
+		 spi->mode, spi->max_speed_hz, spi->bits_per_word);
+
+	if (!dev->dma_mask)
+		dev->dma_mask = &dev->coherent_dma_mask;
+	ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
+	if (ret) {
+		dev_err(dev, "Failed to set DMA mask: %d\n", ret);
+		return ret;
+	}
+	dev_dbg(dev, "DMA mask set\n");
+
+	panel->reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(panel->reset))
+		return dev_err_probe(dev, PTR_ERR(panel->reset), "Failed to get 'reset' GPIO\n");
+	panel->busy = devm_gpiod_get(dev, "busy", GPIOD_IN);
+	if (IS_ERR(panel->busy))
+		return dev_err_probe(dev, PTR_ERR(panel->busy), "Failed to get 'busy' GPIO\n");
+	panel->dc = devm_gpiod_get(dev, "dc", GPIOD_OUT_HIGH);
+	if (IS_ERR(panel->dc))
+		return dev_err_probe(dev, PTR_ERR(panel->dc), "Failed to get 'dc' GPIO\n");
+	dev_info(dev, "All required GPIOs obtained successfully.\n");
+
+	ret = drmm_mode_config_init(drm);
+	if (ret)
+		return ret;
+	drm->mode_config.funcs = &pixpaper_mode_config_funcs;
+	drm->mode_config.min_width = PIXPAPER_WIDTH;
+	drm->mode_config.max_width = PIXPAPER_WIDTH;
+	drm->mode_config.min_height = PIXPAPER_HEIGHT;
+	drm->mode_config.max_height = PIXPAPER_HEIGHT;
+
+	ret = drm_connector_init(drm, &panel->connector, &pixpaper_conn_funcs,
+							DRM_MODE_CONNECTOR_SPI);
+	if (ret)
+		return ret;
+	drm_connector_helper_add(&panel->connector, &pixpaper_conn_helpers);
+	panel->connector.polled = DRM_CONNECTOR_POLL_CONNECT;
+
+	ret = drm_simple_display_pipe_init(drm, &panel->pipe, &pixpaper_pipe_funcs,
+					   pixpaper_formats, ARRAY_SIZE(pixpaper_formats),
+					   NULL, &panel->connector);
+	if (ret)
+		return ret;
+	drm_mode_config_reset(drm);
+
+	ret = drm_dev_register(drm, 0);
+	if (ret)
+		return ret;
+
+	drm_fbdev_generic_setup(drm, 32);
+
+	dev_info(dev, "Initialized PIXPAPER panel driver successfully\n");
+	return 0;
+}
+
+static int pixpaper_remove(struct spi_device *spi)
+{
+	struct pixpaper_panel *panel = spi_get_drvdata(spi);
+
+	if (!panel)
+		return -ENODEV;
+
+	dev_info(&spi->dev, "Removing PIXPAPER panel driver\n");
+
+	drm_dev_unplug(&panel->drm);
+	drm_atomic_helper_shutdown(&panel->drm);
+	return 0;
+}
+
+static const struct of_device_id pixpaper_dt_ids[] = {
+	{ .compatible = "mayqueen,pixpaper" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, pixpaper_dt_ids);
+
+static struct spi_driver pixpaper_spi_driver = {
+	.driver = {
+		.name = "pixpaper",
+		.of_match_table = pixpaper_dt_ids,
+	},
+	.probe = pixpaper_probe,
+	.remove = pixpaper_remove,
+};
+
+module_spi_driver(pixpaper_spi_driver);
+
+MODULE_AUTHOR("LC Wang");
+MODULE_DESCRIPTION("DRM SPI driver for PIXPAPER e-ink panel");
+MODULE_LICENSE("GPL");
-- 
2.34.1


