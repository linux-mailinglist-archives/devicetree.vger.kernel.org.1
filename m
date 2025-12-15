Return-Path: <devicetree+bounces-246504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 563FDCBD444
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:49:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CC4753025316
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:47:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F866314D3B;
	Mon, 15 Dec 2025 09:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jFfYeZNI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77C7A314D1A
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765792071; cv=none; b=n1SNrmc5DJw7m5pGdv0F1mmyeI7mtTl6wjs8N0bk14uH2/KIXtLP818YGoRTqP9yBLrzxyjyWcGCRs9PLLg9d6nFPUA4AwD3RzKh4KQsPI3qVhlEi3WJ6a3Sf5jEdvhN150AYqCAJKygABNd20wg3uxN2LcxytBezkUz7f27654=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765792071; c=relaxed/simple;
	bh=fzBEes00MA8LplTokptIrEwWvt/TkrtTz8Xr/mXVBf0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WI4QZelR49oOtV1Q8t4gxA2G6FnKc4O1pXgcMi+oPd75uytmYAiEpfHYwaAy/nx2dLYYGWZyquIik3O4eRzsfef93dLX8H3C+60Ii2JXwvBHQ8OioK5anTqv3fqquM6EK4cv6zSQu0YdObMcdqI7gJiR4uaZR9Qi2cH7JlhiuyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jFfYeZNI; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-59445ee9738so2636509e87.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 01:47:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765792068; x=1766396868; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iHh21ATHzk36Wyf37xfOj1ULk6gBmqRm9g0siGaoNDM=;
        b=jFfYeZNIjOmA9tvjyXIQH6Sbf2SaCO+mPnTlMeUzCRqJZj97YERnxhA0+tllO81SYb
         Bk+ZhfjD4ehdvA/q0lLtU8sDn3obq4Q1iUfHbAjfyrt8K8jR7x7ozAvBR7w9mactxzJL
         7BidpqHDItxZ5cghyy+HV63D0uZVVyPRrIvfNsKpWpsYm+UOk9YHaHhS8N113/qwNPkY
         COFs7orn+nUh1sA/5Ls7EGUkCHGvd3Qzig7tjF9aF3Fzb0pOUk+2tWp8HVKRM6oZRJHQ
         q+febJ3qs/D7SUC2+j7csQR4wBG+Qsv9D5lvpclCwaU1fn3I3vWCWXtmNq+p9+A6j83E
         v9/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765792068; x=1766396868;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iHh21ATHzk36Wyf37xfOj1ULk6gBmqRm9g0siGaoNDM=;
        b=vSzp8RTWe5W1mfSndFoVCvwDGrEY/xEt7pC7xtz2pxv4VaY07midpV0myhTCry1NCg
         Uvcgy3a1cNzXSybdjMpUdDpqaW7i0nvcPzwkYAGacyP5MAr9dws4/6oeEZl2g0wdViSF
         7juc71QPvTQBisLfGhMK6bEiWM/xYVvuz8myxVBxI6iA3p5LuHYqAL+ypfUe42flydvc
         ftyLoz5xjxQy4xr8CSlYqb/0unTUWfY0xEgfz2ESC3DHB+8w/x5vnmsMrd1a9J+mER6B
         oEBHygaXtDJAaejo/2Fv+JS1E3PCO0JW679vImvWcWn/gOVx+n7cM+jvEU8save+3Obg
         2EEw==
X-Forwarded-Encrypted: i=1; AJvYcCW4/DbW3Q62+XenoACnFW4Cpr+XMr9sq8B0ROmM5yjz9LDLoU6xiHAOyiQuCGJKVCw7b49M1NTbCFwW@vger.kernel.org
X-Gm-Message-State: AOJu0YzefSyJY4xURN2WdKx1MH/9cZ+9ENAuul5QmAuXsN6EMqSJ0wsg
	wtxiu2ObA5++jSJxZZBahaJGRw+rYAjzvRqjB7WxtNAElfa8vG2/nqL2
X-Gm-Gg: AY/fxX4JqfiSfDzLI8OFiipo/qL+BXZ3MvZN20VQgpDmcM/HOd8I3ib1OD9Ak7ZrrIZ
	QHNUCsU7FMMWj2xr3HMloxVhD5Wc+c8DjcLUOOc4/5r9ibKDSuQrx7txXLTnL4frENfhgCFBLud
	WmaNNwh3fcYTaV8Sx8su4a30KOLJoJQ9pzgHAeFaQPGXJ5od0g+dLyZ6jcFgFaCrS29duR03V3B
	7eNzF4hd2bVd6pn6Rof0H9QleglJMsmO4zQFHyJ4CR1dkQOFDdWx/iE2G8GzOQcwCXfdNz1sjiC
	SNaD8AT9JL8wdMnlM0GTsnhn/sYj3qlmqm9qEFEaIYz6INPciALCDSAFcmeqARCoRGM+1SP4pE9
	vmTJSbo4Q8L5Jlgo7RmSQx1NH3z60xxzGiFOysJC6bSJRqA2jU5i7tMQrjgahTZ5DQa3ZLpYxPH
	DSQ/kM/vhbWN3EL23AYnHcbMozFGx+42M+UB7Gef7pGPni0i8gt0dGAlxc
X-Google-Smtp-Source: AGHT+IFPRH7innrMJDrIBL4kUCc67yQcJ0xezI294PNWWxsE6ABkREGAsZxyrbhIxSCXQYYuz+Mw7w==
X-Received: by 2002:a05:6512:3d03:b0:594:5000:4554 with SMTP id 2adb3069b0e04-598faa3bac4mr3067488e87.28.1765792067276;
        Mon, 15 Dec 2025 01:47:47 -0800 (PST)
Received: from [192.168.1.168] (83-233-6-197.cust.bredband2.com. [83.233.6.197])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f2f37ae8sm5397546e87.15.2025.12.15.01.47.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 01:47:45 -0800 (PST)
From: Marcus Folkesson <marcus.folkesson@gmail.com>
Date: Mon, 15 Dec 2025 10:46:45 +0100
Subject: [PATCH v3 3/7] drm/sitronix/st7571-i2c: move common structures to
 st7571.h
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251215-st7571-split-v3-3-d5f3205c3138@gmail.com>
References: <20251215-st7571-split-v3-0-d5f3205c3138@gmail.com>
In-Reply-To: <20251215-st7571-split-v3-0-d5f3205c3138@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Marcus Folkesson <marcus.folkesson@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=7782;
 i=marcus.folkesson@gmail.com; h=from:subject:message-id;
 bh=fzBEes00MA8LplTokptIrEwWvt/TkrtTz8Xr/mXVBf0=;
 b=owEBbQKS/ZANAwAKAYiATm9ZXVIyAcsmYgBpP9km3U49gakwF/cCdgbYFAuN3Z1+w8fidRrzZ
 ZRX7slrryGJAjMEAAEKAB0WIQQFUaLotmy1TWTBLGWIgE5vWV1SMgUCaT/ZJgAKCRCIgE5vWV1S
 MoRWEAClYp/jOJbpjy1iAIya7dVS0NnxRM41MMyeA2E93KC5T2NEkuTvm1iNvrrcIfEMsumhXE7
 6RpFCVKxMO8qQn3IDJWOGL1axYfsNOwRx0u5VONxS3+hZZ1dOSBpEkdDgq56X8BDiFOHtVxU5EV
 72DmNmAC/lsIYrQHMxnUms4HiLWlTtUVN6gSYMRsIZrUD3i0N4ut+WqAKCFoepTEyEZhzf5q/63
 b2G614AKz/i7AbtPcKL19iiPrK7V8IE3uenD5xrauwBWTsS6gkWN0pX0j3TGRHsV8zYebo2fwo6
 UBlDBbEZ2o13W8MolP0IOhouQzOAojDmCVnZybLoK74D5x4ZgzVTBNJDiEBdaM0MD8GiE+FUCRv
 neMYrG6uXqRSZZqm1+T5De0BiilSgB+egPSKIjjqYuPrx2tX5GK4vDcPBDRLCZar2oQvfGAhY3q
 ikGWgbtm0+XaxVsJ8ddX6hOt4k8rr9LzT6rG7kt61jqZ6/lOhOc6eZ95h/LTaXubpo2lIYeW9Fb
 8dW6iOhtO1qceYRYtI51GLtr3nlGuj/4Z2QCYjf6U5lnu0a+5fjAfi6qwDh+wyDfsvmlxGWgoz4
 8IlJQGBViwZwmCq1EDAByP68jvWBycPFhXALZNNvHmQ74nl7S9moUSIVbdKc3y3g+hYks1H7XFg
 MJkpB3fFgJx7dag==
X-Developer-Key: i=marcus.folkesson@gmail.com; a=openpgp;
 fpr=AB91D46C7E0F6E6FB2AB640EC0FE25D598F6C127

Move all structures that will be common for all interfaces (SPI/I2C) to
a separate header file.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
---
 MAINTAINERS                           |   1 +
 drivers/gpu/drm/sitronix/st7571-i2c.c |  91 +---------------------------
 drivers/gpu/drm/sitronix/st7571.h     | 108 ++++++++++++++++++++++++++++++++++
 3 files changed, 111 insertions(+), 89 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index c830fd648572..ac4293d5089c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8106,6 +8106,7 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/display/sitronix,st7567.yaml
 F:	Documentation/devicetree/bindings/display/sitronix,st7571.yaml
 F:	drivers/gpu/drm/sitronix/st7571-i2c.c
+F:	drivers/gpu/drm/sitronix/st7571.h
 
 DRM DRIVER FOR SITRONIX ST7701 PANELS
 M:	Jagan Teki <jagan@amarulasolutions.com>
diff --git a/drivers/gpu/drm/sitronix/st7571-i2c.c b/drivers/gpu/drm/sitronix/st7571-i2c.c
index 2b52919d7dd4..af27658a5e15 100644
--- a/drivers/gpu/drm/sitronix/st7571-i2c.c
+++ b/drivers/gpu/drm/sitronix/st7571-i2c.c
@@ -35,6 +35,8 @@
 #include <video/display_timing.h>
 #include <video/of_display_timing.h>
 
+#include "st7571.h"
+
 #define ST7571_COMMAND_MODE			(0x00)
 #define ST7571_DATA_MODE			(0x40)
 
@@ -78,95 +80,6 @@
 #define DRIVER_MAJOR 1
 #define DRIVER_MINOR 0
 
-enum st7571_color_mode {
-	ST7571_COLOR_MODE_GRAY = 0,
-	ST7571_COLOR_MODE_BLACKWHITE = 1,
-};
-
-struct st7571_device;
-
-struct st7571_panel_constraints {
-	u32 min_nlines;
-	u32 max_nlines;
-	u32 min_ncols;
-	u32 max_ncols;
-	bool support_grayscale;
-};
-
-struct st7571_panel_data {
-	int (*init)(struct st7571_device *st7571);
-	int (*parse_dt)(struct st7571_device *st7571);
-	struct st7571_panel_constraints constraints;
-};
-
-struct st7571_panel_format {
-	void (*prepare_buffer)(struct st7571_device *st7571,
-			       const struct iosys_map *vmap,
-			       struct drm_framebuffer *fb,
-			       struct drm_rect *rect,
-			       struct drm_format_conv_state *fmtcnv_state);
-	int (*update_rect)(struct drm_framebuffer *fb, struct drm_rect *rect);
-	enum st7571_color_mode mode;
-	const u8 nformats;
-	const u32 formats[];
-};
-
-struct st7571_device {
-	struct drm_device drm;
-	struct device *dev;
-
-	struct drm_plane primary_plane;
-	struct drm_crtc crtc;
-	struct drm_encoder encoder;
-	struct drm_connector connector;
-
-	struct drm_display_mode mode;
-
-	const struct st7571_panel_format *pformat;
-	const struct st7571_panel_data *pdata;
-	struct i2c_client *client;
-	struct gpio_desc *reset;
-	struct regmap *regmap;
-
-	/*
-	 * Depending on the hardware design, the acknowledge signal may be hard to
-	 * recognize as a valid logic "0" level.
-	 * Therefor, ignore NAK if possible to stay compatible with most hardware designs
-	 * and off-the-shelf panels out there.
-	 *
-	 * From section 6.4 MICROPOCESSOR INTERFACE section in the datasheet:
-	 *
-	 * "By connecting SDA_OUT to SDA_IN externally, the SDA line becomes fully
-	 * I2C interface compatible.
-	 * Separating acknowledge-output from serial data
-	 * input is advantageous for chip-on-glass (COG) applications. In COG
-	 * applications, the ITO resistance and the pull-up resistor will form a
-	 * voltage  divider, which affects acknowledge-signal level. Larger ITO
-	 * resistance will raise the acknowledged-signal level and system cannot
-	 * recognize this level as a valid logic “0” level. By separating SDA_IN from
-	 * SDA_OUT, the IC can be used in a mode that ignores the acknowledge-bit.
-	 * For applications which check acknowledge-bit, it is necessary to minimize
-	 * the ITO resistance of the SDA_OUT trace to guarantee a valid low level."
-	 *
-	 */
-	bool ignore_nak;
-
-	bool grayscale;
-	bool inverted;
-	u32 height_mm;
-	u32 width_mm;
-	u32 startline;
-	u32 nlines;
-	u32 ncols;
-	u32 bpp;
-
-	/* Intermediate buffer in LCD friendly format */
-	u8 *hwbuf;
-
-	/* Row of (transformed) pixels ready to be written to the display */
-	u8 *row;
-};
-
 static inline struct st7571_device *drm_to_st7571(struct drm_device *drm)
 {
 	return container_of(drm, struct st7571_device, drm);
diff --git a/drivers/gpu/drm/sitronix/st7571.h b/drivers/gpu/drm/sitronix/st7571.h
new file mode 100644
index 000000000000..c6fd6f1d3aa3
--- /dev/null
+++ b/drivers/gpu/drm/sitronix/st7571.h
@@ -0,0 +1,108 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Header file for:
+ * Driver for Sitronix ST7571, a 4 level gray scale dot matrix LCD controller
+ *
+ * Copyright (C) 2025 Marcus Folkesson <marcus.folkesson@gmail.com>
+ */
+
+#ifndef __ST7571_H__
+#define __ST7571_H__
+
+#include <drm/drm_connector.h>
+#include <drm/drm_crtc.h>
+#include <drm/drm_drv.h>
+#include <drm/drm_encoder.h>
+
+#include <linux/regmap.h>
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
+	int (*parse_dt)(struct st7571_device *st7571);
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
+	struct drm_device drm;
+	struct device *dev;
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
+	bool grayscale;
+	bool inverted;
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
+#endif /* __ST7571_H__ */

-- 
2.51.2


