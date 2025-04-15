Return-Path: <devicetree+bounces-167039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C5914A89397
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 07:59:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DA55418953B3
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 06:00:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF9C1275109;
	Tue, 15 Apr 2025 05:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XC7Un3Bu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4B422750EC;
	Tue, 15 Apr 2025 05:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744696772; cv=none; b=MJCNycbTkZhM5dqx0KsVMGXmQY4/fMKcqvnKNe2SgEoGtgb2O7CaIPsGAa/xTM2Pczr8fXfHTzNAThLVsMwApznK0flCOx8xs1lCLct52dij9aHqk+Z9HNgzcpA5nuJ0AjW9XMTvBqPn4ICddYVwyD++qGnjV7+BPEaiTCvw2Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744696772; c=relaxed/simple;
	bh=T1TCGYvHGsM2ghRYBSLAW+wRA0rxN0axEF2r/HSnnJA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fPEnlQdhFduOWZDasAF6btIZW7B4RhzrUDGBeBwia6T5DwwAWnVjSf1qo+qXnShsUBv58DBiAiEZc3nD6HyDKoWjR7Oa4oHl1tCniI3OmLUEoB/hu+u1kPaU3d1dBa6orHm+qfAr5LPYnmPrVK/pWj/MmDZZIy789P2OsR9mpdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XC7Un3Bu; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-54b0d638e86so6014433e87.1;
        Mon, 14 Apr 2025 22:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744696768; x=1745301568; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FBMtRQQyHnNOtDDPQHgjLQ/GuqVT/YdHWyi4h+TyJmc=;
        b=XC7Un3BuwXHIjOgBzIKXn8nT9fdcnV1BMvshKNjgaV60N5oM9h6XakwWaQIqQ+nS9s
         /VdSGRFe+v9LrpeEiCZYpe2DpwX25EB08m4VC+W18E2vSULPKAdYpMV0G761+lSOe/zX
         9Qtytd9sdmCvybvYMHs0CO4hI+s9ETLlilqzmNXSSSBlskPH8Ue6kb4ugdx21lqznCqb
         4MFC1gqaxBjJtdqFhVQ7PITozcrYHapNMIF8m6RD5V2MLywuT+gk24/PlIBT8NUE47Bz
         ZnDrbHr/GnYiZjzr3wHg9nmPVlT98Lf771qVRPjq4EEHqV+wN5B9WfJDp8IEuIJvCvH8
         yTTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744696768; x=1745301568;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FBMtRQQyHnNOtDDPQHgjLQ/GuqVT/YdHWyi4h+TyJmc=;
        b=wvBNq/9h2Le2N1F9JLGvIj+kguw+eeFtW0WXieTX5EUIr0Cef5uto+NwRa+YeDxkKs
         DAkUDkoW98rJ0LqvoJJs5nNGNRELHhz457qSp2D+tFCfo7LV3/Yh3+IIODyCV2PTyCKd
         zevskFragbmSGVuvS2++FkfMUPJPds0BmUa8zhzpOMRcDYcLOrSea27b1uX2Pu0fjPjZ
         2YDL/6IQj3yW1sAcVWO2MY1XJyhj7i5iESzPoDMj660ALnsuDFQ4QS3AZWOcTOH5k1KY
         pQCVoJlVrppZVRcDz2A/7ueq+U6RoFNtC/D8GqQsp/mTak7GooyEHhvxrVDS2H2dsmMX
         L5UQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYPujEHGh6IhfXC5JJTEIXpNQWbcQnRFdYi1TOZgUVn75viwjchnEtBfrUO+vpR4SSbp17d4L9Bf1E@vger.kernel.org, AJvYcCWs+np8uwnq484JBR4uYpAA2mkT8Wh//yrc/eWe+l3mfqIjeEw+1bqHMtRHSB1lPV2+rXaXrzlzID1SWMRW@vger.kernel.org
X-Gm-Message-State: AOJu0YxUNnF5BbUQP9PzmIMWmeqHt2cLIyAKM9/qfxC1FuctEib4aW5M
	oVq8VGqyGagSbSgX9BKXgTrFHzgSsPdwXOn9oyzsGWZHRQFcHJod
X-Gm-Gg: ASbGncs+6FAts6C7l/7G9yvUP7l4PnEyhQKo63JPZVJEQDK30L800UjXPACh/n15P8Y
	MNeVNj0LCEKNPl0EP9p6SCT1g5rZCW7E/DfB0ouNlV5sH3TVWRMDekOZfhjHrD7GNhKWkajTy2I
	nqjkTriBr/gdVUkMUd4J/A2EvE7/Huw4G40+k0eL1/ZTV8xZI4yxqajbQqtzI3avUGIxCdMK12I
	TBfJDXg+lxI9tsloYa0F3iJF0IW19bXjQuMshO8q9huhCFH7H79nohG3MnbCJFawmOOPvp68QFh
	gD79s0mhS9GtsrCKhhPhdzwPupUrKduRSJgQhOmoFhFvtuNbI0mn58330UC5slydNpoZcpghhNB
	EcC2hyQqu
X-Google-Smtp-Source: AGHT+IFTWTH1ca2dM4ux0i7q+JuhES1gCsDipzt/9THkXONs02YDDsURRPoni2xAEdHAwpE8HLv2gQ==
X-Received: by 2002:a05:6512:ac1:b0:549:9143:2609 with SMTP id 2adb3069b0e04-54d4528a9c2mr4733376e87.3.1744696767166;
        Mon, 14 Apr 2025 22:59:27 -0700 (PDT)
Received: from [192.168.2.11] (83-233-6-197.cust.bredband2.com. [83.233.6.197])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d238820sm1325471e87.80.2025.04.14.22.59.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 22:59:25 -0700 (PDT)
From: Marcus Folkesson <marcus.folkesson@gmail.com>
Date: Tue, 15 Apr 2025 07:58:59 +0200
Subject: [PATCH v4 2/3] drm/st7571-i2c: add support for Sitronix ST7571 LCD
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250415-st7571-v4-2-8b5c9be8bae7@gmail.com>
References: <20250415-st7571-v4-0-8b5c9be8bae7@gmail.com>
In-Reply-To: <20250415-st7571-v4-0-8b5c9be8bae7@gmail.com>
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Marcus Folkesson <marcus.folkesson@gmail.com>, 
 Thomas Zimmermann <tzimmrmann@suse.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=31546;
 i=marcus.folkesson@gmail.com; h=from:subject:message-id;
 bh=T1TCGYvHGsM2ghRYBSLAW+wRA0rxN0axEF2r/HSnnJA=;
 b=owEBbQKS/ZANAwAIAYiATm9ZXVIyAcsmYgBn/fWtJntGPFdNwxhEKQwKFlprQZd06zU6r4Yuj
 HhQ5NJTSFqJAjMEAAEIAB0WIQQFUaLotmy1TWTBLGWIgE5vWV1SMgUCZ/31rQAKCRCIgE5vWV1S
 MqM1EADPy2gNtsboVmeny5LSmnwSo75dVU3kptnCIv9cepXfgxvGuLNFFiEJiRnnoVp9wEB/lP+
 bojEWbOUZUi5XymIdKVA7b9yUg/ZA5O3u/zvDY8vFUGggVypS2mpUxUZSR+bJTHJo/zUnIhYr8q
 SMuc3nL1YFfu1TWNCoeAUpK89z7lhMM2oDGaYYPLli6f9JUEOOKgEVcmS7cVGyHEvNPdJ3lOEaJ
 khD4BdO3iWzLjQhsQqcrsuh7q0nbZy/lbVB/CRpw/aDjcwnvwIhWyKCE/2LML2edeQ3vdyYhhrx
 6ulaZLFMz9SPJtDw+drzD92ymiWYD+xf3mrCOxSmR9pFBBVaLuqifCPWRBO1jMmphuvm93bQBbB
 0CcWgrGdlEs4BLTVDidB4NLaJK2VJCzhkg2VuK+Xho9TSrXwEQQH1KfkV0AIvx/os+iJf8Cecnz
 3n2cp+af3+PWSW5qzmaigGeBi7U5Ay1oHf8TWspxzHtIMpHm5pCgBa/mp05J+3mJAoINRxwzNZt
 3TIDg6vSV9BbrjvtvB/H03uq5eXzY7+jD7emftzV9jmOVdDAiEHvt8MDWgrm+MRVtzmMpEdxTbh
 vCejDwb3uTG3UGOHQp5j5ryb6+MrOPwwQt4J7PwHHp9dXpDAc91tVRXjEd0uaVoFBaqI+Ho8co5
 is04t4V+wqWACxg==
X-Developer-Key: i=marcus.folkesson@gmail.com; a=openpgp;
 fpr=AB91D46C7E0F6E6FB2AB640EC0FE25D598F6C127

Sitronix ST7571 is a 4bit gray scale dot matrix LCD controller.
The controller has a SPI, I2C and 8bit parallel interface, this
driver is for the I2C interface only.

Reviewed-by: Thomas Zimmermann <tzimmrmann@suse.de>
Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
---
 drivers/gpu/drm/tiny/Kconfig      |  11 +
 drivers/gpu/drm/tiny/Makefile     |   1 +
 drivers/gpu/drm/tiny/st7571-i2c.c | 994 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 1006 insertions(+)

diff --git a/drivers/gpu/drm/tiny/Kconfig b/drivers/gpu/drm/tiny/Kconfig
index 94cbdb1337c07f1628a33599a7130369b9d59d98..e4a55482e3bcd3f6851df1d322a14cbe1f96adfb 100644
--- a/drivers/gpu/drm/tiny/Kconfig
+++ b/drivers/gpu/drm/tiny/Kconfig
@@ -232,6 +232,17 @@ config TINYDRM_ST7586
 
 	  If M is selected the module will be called st7586.
 
+config DRM_ST7571_I2C
+	tristate "DRM support for Sitronix ST7571 display panels (I2C)"
+	depends on DRM && I2C && MMU
+	select DRM_GEM_SHMEM_HELPER
+	select DRM_KMS_HELPER
+	select REGMAP_I2C
+	help
+	  DRM driver for Sitronix ST7571 panels controlled over I2C.
+
+	  if M is selected the module will be called st7571-i2c.
+
 config TINYDRM_ST7735R
 	tristate "DRM support for Sitronix ST7715R/ST7735R display panels"
 	depends on DRM && SPI
diff --git a/drivers/gpu/drm/tiny/Makefile b/drivers/gpu/drm/tiny/Makefile
index 60816d2eb4ff93b87228ed8eadd60a0a33a1144b..eab7568c92c880cfdf7c2f0b9c4bfac4685dbe95 100644
--- a/drivers/gpu/drm/tiny/Makefile
+++ b/drivers/gpu/drm/tiny/Makefile
@@ -7,6 +7,7 @@ obj-$(CONFIG_DRM_GM12U320)		+= gm12u320.o
 obj-$(CONFIG_DRM_OFDRM)			+= ofdrm.o
 obj-$(CONFIG_DRM_PANEL_MIPI_DBI)	+= panel-mipi-dbi.o
 obj-$(CONFIG_DRM_SIMPLEDRM)		+= simpledrm.o
+obj-$(CONFIG_DRM_ST7571_I2C)		+= st7571-i2c.o
 obj-$(CONFIG_TINYDRM_HX8357D)		+= hx8357d.o
 obj-$(CONFIG_TINYDRM_ILI9163)		+= ili9163.o
 obj-$(CONFIG_TINYDRM_ILI9225)		+= ili9225.o
diff --git a/drivers/gpu/drm/tiny/st7571-i2c.c b/drivers/gpu/drm/tiny/st7571-i2c.c
new file mode 100644
index 0000000000000000000000000000000000000000..97a8285a6fa60759bdb7018cc46663634afc88ae
--- /dev/null
+++ b/drivers/gpu/drm/tiny/st7571-i2c.c
@@ -0,0 +1,994 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Driver for Sitronix ST7571, a 4 level gray scale dot matrix LCD controller
+ *
+ * Copyright (C) 2025 Marcus Folkesson <marcus.folkesson@gmail.com>
+ */
+
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
+#include <linux/i2c.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+
+#include <drm/clients/drm_client_setup.h>
+#include <drm/drm_atomic.h>
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_connector.h>
+#include <drm/drm_crtc_helper.h>
+#include <drm/drm_damage_helper.h>
+#include <drm/drm_drv.h>
+#include <drm/drm_encoder.h>
+#include <drm/drm_fb_helper.h>
+#include <drm/drm_fbdev_shmem.h>
+#include <drm/drm_fourcc.h>
+#include <drm/drm_framebuffer.h>
+#include <drm/drm_gem_atomic_helper.h>
+#include <drm/drm_gem_framebuffer_helper.h>
+#include <drm/drm_gem_shmem_helper.h>
+#include <drm/drm_modeset_helper_vtables.h>
+#include <drm/drm_module.h>
+#include <drm/drm_plane.h>
+#include <drm/drm_probe_helper.h>
+
+#include <video/display_timing.h>
+#include <video/of_display_timing.h>
+
+#define ST7571_COMMAND_MODE			(0x00)
+#define ST7571_DATA_MODE			(0x40)
+
+/* Normal mode command set */
+#define ST7571_DISPLAY_OFF			(0xae)
+#define ST7571_DISPLAY_ON			(0xaf)
+#define ST7571_OSC_ON				(0xab)
+#define ST7571_SET_COLUMN_LSB(c)		(0x00 | ((c) & 0xf))
+#define ST7571_SET_COLUMN_MSB(c)		(0x10 | ((c) >> 4))
+#define ST7571_SET_COM0_LSB(x)			((x) & 0x7f)
+#define ST7571_SET_COM0_MSB			(0x44)
+#define ST7571_SET_COM_SCAN_DIR(d)		(0xc0 | (((d) << 3) & 0x8))
+#define ST7571_SET_CONTRAST_LSB(c)		((c) & 0x3f)
+#define ST7571_SET_CONTRAST_MSB			(0x81)
+#define ST7571_SET_DISPLAY_DUTY_LSB(d)		((d) & 0xff)
+#define ST7571_SET_DISPLAY_DUTY_MSB		(0x48)
+#define ST7571_SET_ENTIRE_DISPLAY_ON(p)		(0xa4 | ((p) & 0x1))
+#define ST7571_SET_LCD_BIAS(b)			(0x50 | ((b) & 0x7))
+#define ST7571_SET_MODE_LSB(m)			((m) & 0xfc)
+#define ST7571_SET_MODE_MSB			(0x38)
+#define ST7571_SET_PAGE(p)			(0xb0 | (p))
+#define ST7571_SET_POWER(p)			(0x28 | ((p) & 0x7))
+#define ST7571_SET_REGULATOR_REG(r)		(0x20 | ((r) & 0x7))
+#define ST7571_SET_REVERSE(r)			(0xa6 | ((r) & 0x1))
+#define ST7571_SET_SEG_SCAN_DIR(d)		(0xa0 | ((d) & 0x1))
+#define ST7571_SET_START_LINE_LSB(l)		((l) & 0x3f)
+#define ST7571_SET_START_LINE_MSB		(0x40)
+
+/* Extension command set 3 */
+#define ST7571_COMMAND_SET_3			(0x7b)
+#define ST7571_SET_COLOR_MODE(c)		(0x10 | ((c) & 0x1))
+#define ST7571_COMMAND_SET_NORMAL		(0x00)
+
+#define ST7571_PAGE_HEIGHT 8
+
+#define DRIVER_NAME "st7571"
+#define DRIVER_DESC "ST7571 DRM driver"
+#define DRIVER_MAJOR 1
+#define DRIVER_MINOR 0
+
+enum st7571_color_mode {
+	ST7571_COLOR_MODE_GRAY = 0,
+	ST7571_COLOR_MODE_BLACKWHITE = 1,
+};
+
+struct st7571_device;
+
+struct st7571_panel_constraints {
+	u32 min_nlines;
+	u32 max_nlines;
+	u32 min_ncols;
+	u32 max_ncols;
+	bool support_grayscale;
+};
+
+struct st7571_panel_data {
+	int (*init)(struct st7571_device *st7571);
+	struct st7571_panel_constraints constraints;
+};
+
+struct st7571_panel_format {
+	void (*prepare_buffer)(struct st7571_device *st7571,
+			       const struct iosys_map *vmap,
+			       struct drm_framebuffer *fb,
+			       struct drm_rect *rect,
+			       struct drm_format_conv_state *fmtcnv_state);
+	int (*update_rect)(struct drm_framebuffer *fb, struct drm_rect *rect);
+	enum st7571_color_mode mode;
+	const u8 nformats;
+	const u32 formats[];
+};
+
+struct st7571_device {
+	struct drm_device dev;
+
+	struct drm_plane primary_plane;
+	struct drm_crtc crtc;
+	struct drm_encoder encoder;
+	struct drm_connector connector;
+
+	struct drm_display_mode mode;
+
+	const struct st7571_panel_format *pformat;
+	const struct st7571_panel_data *pdata;
+	struct i2c_client *client;
+	struct gpio_desc *reset;
+	struct regmap *regmap;
+
+	/*
+	 * Depending on the hardware design, the acknowledge signal may be hard to
+	 * recognize as a valid logic "0" level.
+	 * Therefor, ignore NAK if possible to stay compatible with most hardware designs
+	 * and off-the-shelf panels out there.
+	 *
+	 * From section 6.4 MICROPOCESSOR INTERFACE section in the datasheet:
+	 *
+	 * "By connecting SDA_OUT to SDA_IN externally, the SDA line becomes fully
+	 * I2C interface compatible.
+	 * Separating acknowledge-output from serial data
+	 * input is advantageous for chip-on-glass (COG) applications. In COG
+	 * applications, the ITO resistance and the pull-up resistor will form a
+	 * voltage  divider, which affects acknowledge-signal level. Larger ITO
+	 * resistance will raise the acknowledged-signal level and system cannot
+	 * recognize this level as a valid logic “0” level. By separating SDA_IN from
+	 * SDA_OUT, the IC can be used in a mode that ignores the acknowledge-bit.
+	 * For applications which check acknowledge-bit, it is necessary to minimize
+	 * the ITO resistance of the SDA_OUT trace to guarantee a valid low level."
+	 *
+	 */
+	bool ignore_nak;
+
+
+	bool grayscale;
+	u32 height_mm;
+	u32 width_mm;
+	u32 startline;
+	u32 nlines;
+	u32 ncols;
+	u32 bpp;
+
+	/* Intermediate buffer in LCD friendly format */
+	u8 *hwbuf;
+
+	/* Row of (transformed) pixels ready to be written to the display */
+	u8 *row;
+};
+
+static inline struct st7571_device *drm_to_st7571(struct drm_device *dev)
+{
+	return container_of(dev, struct st7571_device, dev);
+}
+
+static int st7571_regmap_write(void *context, const void *data, size_t count)
+{
+	struct i2c_client *client = context;
+	struct st7571_device *st7571 = i2c_get_clientdata(client);
+	int ret;
+
+	struct i2c_msg msg = {
+		.addr = st7571->client->addr,
+		.flags = st7571->ignore_nak ? I2C_M_IGNORE_NAK : 0,
+		.len = count,
+		.buf = (u8 *)data
+	};
+
+	ret = i2c_transfer(st7571->client->adapter, &msg, 1);
+
+	/*
+	 * Unfortunately, there is no way to check if the transfer failed because of
+	 * a NAK or something else as I2C bus drivers use different return values for NAK.
+	 *
+	 * However, if the transfer fails and ignore_nak is set, we know it is an error.
+	 */
+	if (ret < 0 && st7571->ignore_nak)
+		return ret;
+
+	return 0;
+}
+
+static int st7571_regmap_read(void *context, const void *reg_buf,
+			       size_t reg_size, void *val_buf, size_t val_size)
+{
+	return -EOPNOTSUPP;
+}
+
+static int st7571_send_command_list(struct st7571_device *st7571,
+				    const u8 *cmd_list, size_t len)
+{
+	int ret;
+
+	for (int i = 0; i < len; i++) {
+		ret = regmap_write(st7571->regmap, ST7571_COMMAND_MODE, cmd_list[i]);
+		if (ret < 0)
+			return ret;
+	}
+
+	return ret;
+}
+
+static inline u8 st7571_transform_xy(const char *p, int x, int y)
+{
+	int xrest = x % 8;
+	u8 result = 0;
+
+	/*
+	 * Transforms an (x, y) pixel coordinate into a vertical 8-bit
+	 * column from the framebuffer. It calculates the corresponding byte in the
+	 * framebuffer, extracts the bit at the given x position across 8 consecutive
+	 * rows, and packs those bits into a single byte.
+	 *
+	 * Return an 8-bit value representing a vertical column of pixels.
+	 */
+	x = x / 8;
+	y = (y / 8) * 8;
+
+	for (int i = 0; i < 8; i++) {
+		int row_idx = y + i;
+		u8 byte = p[row_idx * 16 + x];
+		u8 bit = (byte >> xrest) & 1;
+
+		result |= (bit << i);
+	}
+
+	return result;
+}
+
+static int st7571_set_position(struct st7571_device *st7571, int x, int y)
+{
+	u8 cmd_list[] = {
+		ST7571_SET_COLUMN_LSB(x),
+		ST7571_SET_COLUMN_MSB(x),
+		ST7571_SET_PAGE(y / ST7571_PAGE_HEIGHT),
+	};
+
+	return st7571_send_command_list(st7571, cmd_list, ARRAY_SIZE(cmd_list));
+}
+
+static int st7571_fb_clear_screen(struct st7571_device *st7571)
+{
+	u32 npixels = st7571->ncols * round_up(st7571->nlines, ST7571_PAGE_HEIGHT) * st7571->bpp;
+	char pixelvalue = 0x00;
+
+	for (int i = 0; i < npixels; i++)
+		regmap_bulk_write(st7571->regmap, ST7571_DATA_MODE, &pixelvalue, 1);
+
+	return 0;
+}
+
+static void st7571_prepare_buffer_monochrome(struct st7571_device *st7571,
+			       const struct iosys_map *vmap,
+			       struct drm_framebuffer *fb,
+			       struct drm_rect *rect,
+			       struct drm_format_conv_state *fmtcnv_state)
+{
+	unsigned int dst_pitch;
+	struct iosys_map dst;
+	u32 size;
+
+	switch (fb->format->format) {
+	case DRM_FORMAT_XRGB8888:
+		dst_pitch = DIV_ROUND_UP(drm_rect_width(rect), 8);
+		iosys_map_set_vaddr(&dst, st7571->hwbuf);
+
+		drm_fb_xrgb8888_to_mono(&dst, &dst_pitch, vmap, fb, rect, fmtcnv_state);
+		break;
+
+	case DRM_FORMAT_R1:
+		size = (rect->x2 - rect->x1) * (rect->y2 - rect->y1) / 8;
+		memcpy(st7571->hwbuf, vmap->vaddr, size);
+		break;
+	}
+}
+
+static void st7571_prepare_buffer_grayscale(struct st7571_device *st7571,
+			       const struct iosys_map *vmap,
+			       struct drm_framebuffer *fb,
+			       struct drm_rect *rect,
+			       struct drm_format_conv_state *fmtcnv_state)
+{
+	u32 size = (rect->x2 - rect->x1) * (rect->y2 - rect->y1) / 8;
+	unsigned int dst_pitch;
+	struct iosys_map dst;
+
+	switch (fb->format->format) {
+	case DRM_FORMAT_XRGB8888: /* Only support XRGB8888 in monochrome mode */
+		dst_pitch = DIV_ROUND_UP(drm_rect_width(rect), 8);
+		iosys_map_set_vaddr(&dst, st7571->hwbuf);
+
+		drm_fb_xrgb8888_to_mono(&dst, &dst_pitch, vmap, fb, rect, fmtcnv_state);
+		break;
+
+	case DRM_FORMAT_R1:
+		size = (rect->x2 - rect->x1) * (rect->y2 - rect->y1) / 8;
+		memcpy(st7571->hwbuf, vmap->vaddr, size);
+		break;
+
+	case DRM_FORMAT_R2:
+		size = (rect->x2 - rect->x1) * (rect->y2 - rect->y1) / 4;
+		memcpy(st7571->hwbuf, vmap->vaddr, size);
+		break;
+	};
+
+}
+
+static int st7571_fb_update_rect_monochrome(struct drm_framebuffer *fb, struct drm_rect *rect)
+{
+	struct st7571_device *st7571 = drm_to_st7571(fb->dev);
+	char *row = st7571->row;
+
+	/* Align y to display page boundaries */
+	rect->y1 = round_down(rect->y1, ST7571_PAGE_HEIGHT);
+	rect->y2 = min_t(unsigned int, round_up(rect->y2, ST7571_PAGE_HEIGHT), st7571->nlines);
+
+	for (int y = rect->y1; y < rect->y2; y += ST7571_PAGE_HEIGHT) {
+		for (int x = rect->x1; x < rect->x2; x++)
+			row[x] = st7571_transform_xy(st7571->hwbuf, x, y);
+
+		st7571_set_position(st7571, rect->x1, y);
+
+		/* TODO: Investige why we can't write multiple bytes at once */
+		for (int x = rect->x1; x < rect->x2; x++)
+			regmap_bulk_write(st7571->regmap, ST7571_DATA_MODE, row + x, 1);
+	}
+
+	return 0;
+}
+
+static int st7571_fb_update_rect_grayscale(struct drm_framebuffer *fb, struct drm_rect *rect)
+{
+	struct st7571_device *st7571 = drm_to_st7571(fb->dev);
+	uint32_t format = fb->format->format;
+	char *row = st7571->row;
+	int x1;
+	int x2;
+
+	/* Align y to display page boundaries */
+	rect->y1 = round_down(rect->y1, ST7571_PAGE_HEIGHT);
+	rect->y2 = min_t(unsigned int, round_up(rect->y2, ST7571_PAGE_HEIGHT), st7571->nlines);
+
+	switch (format) {
+	case DRM_FORMAT_XRGB8888:
+		/* Threated as monochrome (R1) */
+		fallthrough;
+	case DRM_FORMAT_R1:
+		x1 = rect->x1;
+		x2 = rect->x2;
+		break;
+	case DRM_FORMAT_R2:
+		x1 = rect->x1 * 2;
+		x2 = rect->x2 * 2;
+		break;
+	}
+
+	for (int y = rect->y1; y < rect->y2; y += ST7571_PAGE_HEIGHT) {
+		for (int x = x1; x < x2; x++)
+			row[x] = st7571_transform_xy(st7571->hwbuf, x, y);
+
+		st7571_set_position(st7571, rect->x1, y);
+
+		/* TODO: Investige why we can't write multiple bytes at once */
+		for (int x = x1; x < x2; x++) {
+			regmap_bulk_write(st7571->regmap, ST7571_DATA_MODE, row + x, 1);
+
+			/* Write monochrome formats twice */
+			if (format == DRM_FORMAT_R1 || format == DRM_FORMAT_XRGB8888)
+				regmap_bulk_write(st7571->regmap, ST7571_DATA_MODE, row + x, 1);
+		}
+	}
+
+	return 0;
+}
+
+static int st7571_connector_get_modes(struct drm_connector *conn)
+{
+	struct st7571_device *st7571 = drm_to_st7571(conn->dev);
+
+	return drm_connector_helper_get_modes_fixed(conn, &st7571->mode);
+}
+
+static const struct drm_connector_helper_funcs st7571_connector_helper_funcs = {
+	.get_modes = st7571_connector_get_modes,
+};
+
+static const struct st7571_panel_format st7571_monochrome = {
+	.prepare_buffer = st7571_prepare_buffer_monochrome,
+	.update_rect = st7571_fb_update_rect_monochrome,
+	.mode = ST7571_COLOR_MODE_BLACKWHITE,
+	.formats = {
+		DRM_FORMAT_XRGB8888,
+		DRM_FORMAT_R1,
+	},
+	.nformats = 2,
+};
+
+static const struct st7571_panel_format st7571_grayscale = {
+	.prepare_buffer = st7571_prepare_buffer_grayscale,
+	.update_rect = st7571_fb_update_rect_grayscale,
+	.mode = ST7571_COLOR_MODE_GRAY,
+	.formats = {
+		DRM_FORMAT_XRGB8888,
+		DRM_FORMAT_R1,
+		DRM_FORMAT_R2,
+	},
+	.nformats = 3,
+};
+
+static const uint64_t st7571_primary_plane_fmtmods[] = {
+	DRM_FORMAT_MOD_LINEAR,
+	DRM_FORMAT_MOD_INVALID
+};
+
+static int st7571_primary_plane_helper_atomic_check(struct drm_plane *plane,
+						 struct drm_atomic_state *state)
+{
+	struct drm_plane_state *new_plane_state = drm_atomic_get_new_plane_state(state, plane);
+	struct drm_crtc *new_crtc = new_plane_state->crtc;
+	struct drm_crtc_state *new_crtc_state = NULL;
+
+	if (new_crtc)
+		new_crtc_state = drm_atomic_get_new_crtc_state(state, new_crtc);
+
+	return drm_atomic_helper_check_plane_state(new_plane_state, new_crtc_state,
+						   DRM_PLANE_NO_SCALING,
+						   DRM_PLANE_NO_SCALING,
+						   false, false);
+}
+
+static void st7571_primary_plane_helper_atomic_update(struct drm_plane *plane,
+						   struct drm_atomic_state *state)
+{
+	struct drm_plane_state *old_plane_state = drm_atomic_get_old_plane_state(state, plane);
+	struct drm_plane_state *plane_state = drm_atomic_get_new_plane_state(state, plane);
+	struct drm_shadow_plane_state *shadow_plane_state = to_drm_shadow_plane_state(plane_state);
+	struct drm_framebuffer *fb = plane_state->fb;
+	struct drm_atomic_helper_damage_iter iter;
+	struct drm_device *dev = plane->dev;
+	struct drm_rect damage;
+	struct st7571_device *st7571 = drm_to_st7571(plane->dev);
+	int ret, idx;
+
+	if (!fb)
+		return; /* no framebuffer; plane is disabled */
+
+	ret = drm_gem_fb_begin_cpu_access(fb, DMA_FROM_DEVICE);
+	if (ret)
+		return;
+
+	if (!drm_dev_enter(dev, &idx))
+		goto out_drm_gem_fb_end_cpu_access;
+
+	drm_atomic_helper_damage_iter_init(&iter, old_plane_state, plane_state);
+	drm_atomic_for_each_plane_damage(&iter, &damage) {
+
+		st7571->pformat->prepare_buffer(st7571,
+					      &shadow_plane_state->data[0],
+					      fb, &damage,
+					      &shadow_plane_state->fmtcnv_state);
+
+		st7571->pformat->update_rect(fb, &damage);
+	}
+
+	drm_dev_exit(idx);
+
+out_drm_gem_fb_end_cpu_access:
+	drm_gem_fb_end_cpu_access(fb, DMA_FROM_DEVICE);
+}
+
+static void st7571_primary_plane_helper_atomic_disable(struct drm_plane *plane,
+							  struct drm_atomic_state *state)
+{
+	struct drm_device *dev = plane->dev;
+	struct st7571_device *st7571 = drm_to_st7571(plane->dev);
+	int idx;
+
+	if (!drm_dev_enter(dev, &idx))
+		return;
+
+	st7571_fb_clear_screen(st7571);
+	drm_dev_exit(idx);
+}
+
+static const struct drm_plane_helper_funcs st7571_primary_plane_helper_funcs = {
+	DRM_GEM_SHADOW_PLANE_HELPER_FUNCS,
+	.atomic_check = st7571_primary_plane_helper_atomic_check,
+	.atomic_update = st7571_primary_plane_helper_atomic_update,
+	.atomic_disable = st7571_primary_plane_helper_atomic_disable,
+};
+
+static const struct drm_plane_funcs st7571_primary_plane_funcs = {
+	.update_plane = drm_atomic_helper_update_plane,
+	.disable_plane = drm_atomic_helper_disable_plane,
+	.destroy = drm_plane_cleanup,
+	DRM_GEM_SHADOW_PLANE_FUNCS,
+};
+
+/*
+ * CRTC
+ */
+
+static enum drm_mode_status st7571_crtc_mode_valid(struct drm_crtc *crtc,
+					   const struct drm_display_mode *mode)
+{
+	struct st7571_device *st7571 = drm_to_st7571(crtc->dev);
+
+	return drm_crtc_helper_mode_valid_fixed(crtc, mode, &st7571->mode);
+}
+
+static const struct drm_crtc_helper_funcs st7571_crtc_helper_funcs = {
+	.atomic_check = drm_crtc_helper_atomic_check,
+	.mode_valid = st7571_crtc_mode_valid,
+};
+
+static const struct drm_crtc_funcs st7571_crtc_funcs = {
+	.reset = drm_atomic_helper_crtc_reset,
+	.destroy = drm_crtc_cleanup,
+	.set_config = drm_atomic_helper_set_config,
+	.page_flip = drm_atomic_helper_page_flip,
+	.atomic_duplicate_state = drm_atomic_helper_crtc_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_crtc_destroy_state,
+};
+
+/*
+ * Encoder
+ */
+
+static void ssd130x_encoder_atomic_enable(struct drm_encoder *encoder,
+					  struct drm_atomic_state *state)
+{
+	struct drm_device *drm = encoder->dev;
+	struct st7571_device *st7571 = drm_to_st7571(drm);
+	u8 command = ST7571_DISPLAY_ON;
+	int ret;
+
+	ret = st7571->pdata->init(st7571);
+	if (ret)
+		return;
+
+	st7571_send_command_list(st7571, &command, 1);
+}
+
+static void ssd130x_encoder_atomic_disable(struct drm_encoder *encoder,
+					   struct drm_atomic_state *state)
+{
+	struct drm_device *drm = encoder->dev;
+	struct st7571_device *st7571 = drm_to_st7571(drm);
+	u8 command = ST7571_DISPLAY_OFF;
+
+	st7571_send_command_list(st7571, &command, 1);
+}
+
+
+static const struct drm_encoder_funcs st7571_encoder_funcs = {
+	.destroy = drm_encoder_cleanup,
+
+};
+
+static const struct drm_encoder_helper_funcs st7571_encoder_helper_funcs = {
+	.atomic_enable = ssd130x_encoder_atomic_enable,
+	.atomic_disable = ssd130x_encoder_atomic_disable,
+};
+
+/*
+ * Connector
+ */
+
+static const struct drm_connector_funcs st7571_connector_funcs = {
+	.reset = drm_atomic_helper_connector_reset,
+	.fill_modes = drm_helper_probe_single_connector_modes,
+	.destroy = drm_connector_cleanup,
+	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+};
+
+static const struct drm_mode_config_funcs st7571_mode_config_funcs = {
+	.fb_create = drm_gem_fb_create_with_dirty,
+	.atomic_check = drm_atomic_helper_check,
+	.atomic_commit = drm_atomic_helper_commit,
+};
+
+static struct drm_display_mode st7571_mode(struct st7571_device *st7571)
+{
+	struct drm_display_mode mode = {
+		DRM_SIMPLE_MODE(st7571->ncols, st7571->nlines,
+				st7571->width_mm, st7571->height_mm),
+	};
+
+	return mode;
+}
+
+static int st7571_mode_config_init(struct st7571_device *st7571)
+{
+	struct drm_device *dev = &st7571->dev;
+	const struct st7571_panel_constraints *constraints = &st7571->pdata->constraints;
+	int ret;
+
+	ret = drmm_mode_config_init(dev);
+	if (ret)
+		return ret;
+
+	dev->mode_config.min_width = constraints->min_ncols;
+	dev->mode_config.min_height = constraints->min_nlines;
+	dev->mode_config.max_width = constraints->max_ncols;
+	dev->mode_config.max_height = constraints->max_nlines;
+	dev->mode_config.preferred_depth = 24;
+	dev->mode_config.funcs = &st7571_mode_config_funcs;
+
+	return 0;
+}
+
+static int st7571_plane_init(struct st7571_device *st7571,
+			     const struct st7571_panel_format *pformat)
+{
+	struct drm_plane *primary_plane = &st7571->primary_plane;
+	struct drm_device *dev = &st7571->dev;
+	int ret;
+
+	ret = drm_universal_plane_init(dev, primary_plane, 0,
+				       &st7571_primary_plane_funcs,
+				       pformat->formats,
+				       pformat->nformats,
+				       st7571_primary_plane_fmtmods,
+				       DRM_PLANE_TYPE_PRIMARY, NULL);
+	if (ret)
+		return ret;
+
+	drm_plane_helper_add(primary_plane, &st7571_primary_plane_helper_funcs);
+	drm_plane_enable_fb_damage_clips(primary_plane);
+
+	return 0;
+}
+
+static int st7571_crtc_init(struct st7571_device *st7571)
+{
+	struct drm_plane *primary_plane = &st7571->primary_plane;
+	struct drm_crtc *crtc = &st7571->crtc;
+	struct drm_device *dev = &st7571->dev;
+	int ret;
+
+	ret = drm_crtc_init_with_planes(dev, crtc, primary_plane, NULL,
+					&st7571_crtc_funcs, NULL);
+	if (ret)
+		return ret;
+
+	drm_crtc_helper_add(crtc, &st7571_crtc_helper_funcs);
+
+	return 0;
+}
+
+static int st7571_encoder_init(struct st7571_device *st7571)
+{
+	struct drm_encoder *encoder = &st7571->encoder;
+	struct drm_crtc *crtc = &st7571->crtc;
+	struct drm_device *dev = &st7571->dev;
+	int ret;
+
+	ret = drm_encoder_init(dev, encoder, &st7571_encoder_funcs, DRM_MODE_ENCODER_NONE, NULL);
+	if (ret)
+		return ret;
+
+	drm_encoder_helper_add(encoder, &st7571_encoder_helper_funcs);
+
+	encoder->possible_crtcs = drm_crtc_mask(crtc);
+
+	return 0;
+}
+
+static int st7571_connector_init(struct st7571_device *st7571)
+{
+	struct drm_connector *connector = &st7571->connector;
+	struct drm_encoder *encoder = &st7571->encoder;
+	struct drm_device *dev = &st7571->dev;
+	int ret;
+
+	ret = drm_connector_init(dev, connector, &st7571_connector_funcs,
+				 DRM_MODE_CONNECTOR_Unknown);
+	if (ret)
+		return ret;
+
+	drm_connector_helper_add(connector, &st7571_connector_helper_funcs);
+
+	return drm_connector_attach_encoder(connector, encoder);
+}
+
+DEFINE_DRM_GEM_FOPS(st7571_fops);
+
+static const struct drm_driver st7571_driver = {
+	.driver_features = DRIVER_MODESET | DRIVER_GEM | DRIVER_ATOMIC,
+
+	.name		 = DRIVER_NAME,
+	.desc		 = DRIVER_DESC,
+	.major		 = DRIVER_MAJOR,
+	.minor		 = DRIVER_MINOR,
+
+	.fops		 = &st7571_fops,
+	DRM_GEM_SHMEM_DRIVER_OPS,
+	DRM_FBDEV_SHMEM_DRIVER_OPS,
+};
+
+static const struct regmap_bus st7571_regmap_bus = {
+	.read = st7571_regmap_read,
+	.write = st7571_regmap_write,
+};
+
+static const struct regmap_config st7571_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.use_single_write = true,
+};
+
+static int st7571_validate_parameters(struct st7571_device *st7571)
+{
+	struct device *dev = st7571->dev.dev;
+	const struct st7571_panel_constraints *constraints = &st7571->pdata->constraints;
+
+	if (st7571->width_mm  == 0) {
+		dev_err(dev, "Invalid panel width\n");
+		return -EINVAL;
+	}
+
+	if (st7571->height_mm == 0) {
+		dev_err(dev, "Invalid panel height\n");
+		return -EINVAL;
+	}
+
+	if (st7571->nlines < constraints->min_nlines ||
+	    st7571->nlines > constraints->max_nlines) {
+		dev_err(dev, "Invalid timing configuration.\n");
+		return -EINVAL;
+	}
+
+	if (st7571->startline + st7571->nlines > constraints->max_nlines) {
+		dev_err(dev, "Invalid timing configuration.\n");
+		return -EINVAL;
+	}
+
+	if (st7571->ncols < constraints->min_ncols ||
+	    st7571->ncols > constraints->max_ncols) {
+		dev_err(dev, "Invalid timing configuration.\n");
+		return -EINVAL;
+	}
+
+	if (st7571->grayscale && !constraints->support_grayscale) {
+		dev_err(dev, "Grayscale not supported\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int st7571_parse_dt(struct st7571_device *st7571)
+{
+	struct device *dev = &st7571->client->dev;
+	struct device_node *np = dev->of_node;
+	struct display_timing dt;
+	int ret;
+
+	ret = of_get_display_timing(np, "panel-timing", &dt);
+	if (ret) {
+		dev_err(dev, "Failed to get display timing from DT\n");
+		return ret;
+	}
+
+	of_property_read_u32(np, "width-mm", &st7571->width_mm);
+	of_property_read_u32(np, "height-mm", &st7571->height_mm);
+	st7571->grayscale = of_property_read_bool(np, "sitronix,grayscale");
+
+	if (st7571->grayscale) {
+		st7571->pformat = &st7571_grayscale;
+		st7571->bpp = 2;
+	} else {
+		st7571->pformat = &st7571_monochrome;
+		st7571->bpp = 1;
+	}
+
+	st7571->startline = dt.vfront_porch.typ;
+	st7571->nlines = dt.vactive.typ;
+	st7571->ncols = dt.hactive.typ;
+
+	st7571->reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(st7571->reset))
+		return PTR_ERR(st7571->reset);
+
+	return 0;
+}
+
+static void st7571_reset(struct st7571_device *st7571)
+{
+	gpiod_set_value_cansleep(st7571->reset, 1);
+	udelay(20);
+	gpiod_set_value_cansleep(st7571->reset, 0);
+}
+
+static int st7571_lcd_init(struct st7571_device *st7571)
+{
+	/*
+	 * Most of the initialization sequence is taken directly from the
+	 * referential initial code in the ST7571 datasheet.
+	 */
+	u8 commands[] = {
+		ST7571_DISPLAY_OFF,
+		ST7571_SET_MODE_MSB,
+
+		ST7571_SET_MODE_LSB(0x94),
+		ST7571_SET_SEG_SCAN_DIR(0),
+		ST7571_SET_COM_SCAN_DIR(1),
+
+		ST7571_SET_COM0_MSB,
+		ST7571_SET_COM0_LSB(0x00),
+
+		ST7571_SET_START_LINE_MSB,
+		ST7571_SET_START_LINE_LSB(st7571->startline),
+
+		ST7571_OSC_ON,
+		ST7571_SET_REGULATOR_REG(5),
+		ST7571_SET_CONTRAST_MSB,
+		ST7571_SET_CONTRAST_LSB(0x33),
+		ST7571_SET_LCD_BIAS(0x04),
+		ST7571_SET_DISPLAY_DUTY_MSB,
+		ST7571_SET_DISPLAY_DUTY_LSB(st7571->nlines),
+
+		ST7571_COMMAND_SET_3,
+		ST7571_SET_COLOR_MODE(st7571->pformat->mode),
+		ST7571_COMMAND_SET_NORMAL,
+
+		ST7571_SET_POWER(0x4),	/* Power Control, VC: ON, VR: OFF, VF: OFF */
+		ST7571_SET_POWER(0x6),	/* Power Control, VC: ON, VR: ON, VF: OFF */
+		ST7571_SET_POWER(0x7),	/* Power Control, VC: ON, VR: ON, VF: ON */
+
+		ST7571_SET_REVERSE(0),
+		ST7571_SET_ENTIRE_DISPLAY_ON(0),
+	};
+
+	/* Perform a reset before initializing the controller */
+	st7571_reset(st7571);
+
+	return st7571_send_command_list(st7571, commands, ARRAY_SIZE(commands));
+}
+
+
+static int st7571_probe(struct i2c_client *client)
+{
+	struct st7571_device *st7571;
+	struct drm_device *dev;
+	int ret;
+
+	st7571 = devm_drm_dev_alloc(&client->dev, &st7571_driver,
+				    struct st7571_device, dev);
+	if (IS_ERR(st7571))
+		return PTR_ERR(st7571);
+
+	dev = &st7571->dev;
+	st7571->client = client;
+	i2c_set_clientdata(client, st7571);
+	st7571->pdata = device_get_match_data(&client->dev);
+
+	ret = st7571_parse_dt(st7571);
+	if (ret)
+		return ret;
+
+	ret = st7571_validate_parameters(st7571);
+	if (ret)
+		return ret;
+
+
+	st7571->mode = st7571_mode(st7571);
+
+	/*
+	 * The hardware design could make it hard to detect a NAK on the I2C bus.
+	 * If the adapter does not support protocol mangling do
+	 * not set the I2C_M_IGNORE_NAK flag at the expense * of possible
+	 * cruft in the logs.
+	 */
+	if (i2c_check_functionality(client->adapter, I2C_FUNC_PROTOCOL_MANGLING))
+		st7571->ignore_nak = true;
+
+	st7571->regmap = devm_regmap_init(&client->dev, &st7571_regmap_bus,
+					   client, &st7571_regmap_config);
+	if (IS_ERR(st7571->regmap)) {
+		return dev_err_probe(&client->dev, PTR_ERR(st7571->regmap),
+			"Failed to initialize regmap\n");
+	}
+
+	st7571->hwbuf = devm_kzalloc(&client->dev,
+				     (st7571->nlines * st7571->ncols * st7571->bpp) / 8,
+				     GFP_KERNEL);
+	if (IS_ERR(st7571->hwbuf))
+		return dev_err_probe(&client->dev, PTR_ERR(st7571->hwbuf),
+			"Failed to allocate intermediate buffer\n");
+
+	st7571->row = devm_kzalloc(&client->dev,
+				   (st7571->ncols * st7571->bpp),
+				   GFP_KERNEL);
+	if (IS_ERR(st7571->row))
+		return dev_err_probe(&client->dev, PTR_ERR(st7571->row),
+			"Failed to allocate row buffer\n");
+
+	ret = st7571_mode_config_init(st7571);
+	if (ret)
+		return dev_err_probe(&client->dev, ret,
+			"Failed to initialize mode config\n");
+
+	ret = st7571_plane_init(st7571, st7571->pformat);
+	if (ret)
+		return dev_err_probe(&client->dev, ret,
+			"Failed to initialize primary plane\n");
+
+	ret = st7571_crtc_init(st7571);
+	if (ret < 0)
+		return dev_err_probe(&client->dev, ret,
+			"Failed to initialize CRTC\n");
+
+	ret = st7571_encoder_init(st7571);
+	if (ret < 0)
+		return dev_err_probe(&client->dev, ret,
+			"Failed to initialize encoder\n");
+
+	ret = st7571_connector_init(st7571);
+	if (ret < 0)
+		return dev_err_probe(&client->dev, ret,
+			"Failed to initialize connector\n");
+
+	drm_mode_config_reset(dev);
+
+	ret = drm_dev_register(dev, 0);
+	if (ret)
+		return dev_err_probe(&client->dev, ret,
+			"Failed to register DRM device\n");
+
+	drm_client_setup(dev, NULL);
+	return 0;
+}
+
+static void st7571_remove(struct i2c_client *client)
+{
+	struct st7571_device *st7571 = i2c_get_clientdata(client);
+
+	drm_dev_unplug(&st7571->dev);
+}
+
+struct st7571_panel_data st7571_config = {
+	.init = st7571_lcd_init,
+	.constraints = {
+		.min_nlines = 1,
+		.max_nlines = 128,
+		.min_ncols = 128,
+		.max_ncols = 128,
+		.support_grayscale = true,
+	},
+};
+
+static const struct of_device_id st7571_of_match[] = {
+	{ .compatible = "sitronix,st7571", .data = &st7571_config },
+	{},
+};
+MODULE_DEVICE_TABLE(of, st7571_of_match);
+
+
+static const struct i2c_device_id st7571_id[] = {
+	{ "st7571", 0 },
+	{ }
+};
+MODULE_DEVICE_TABLE(i2c, st7571_id);
+
+static struct i2c_driver st7571_i2c_driver = {
+	.driver = {
+		.name = "st7571",
+		.of_match_table = st7571_of_match,
+	},
+	.probe = st7571_probe,
+	.remove = st7571_remove,
+	.id_table = st7571_id,
+};
+
+module_i2c_driver(st7571_i2c_driver);
+
+MODULE_AUTHOR("Marcus Folkesson <marcus.folkesson@gmail.com>");
+MODULE_DESCRIPTION("DRM Driver for Sitronix ST7571 LCD controller");
+MODULE_LICENSE("GPL");

-- 
2.49.0


