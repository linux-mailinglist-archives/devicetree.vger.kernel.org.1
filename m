Return-Path: <devicetree+bounces-261384-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BVsOvZ5fWlDSQIAu9opvQ
	(envelope-from <devicetree+bounces-261384-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 04:41:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 639EFC0900
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 04:41:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D95533021583
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 03:41:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16B4835029F;
	Sat, 31 Jan 2026 03:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b="mJvxrenH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC1134F46C
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 03:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769830869; cv=none; b=dUg6UDgViPXZWhi8dT/FUjsZDyg2gmZDp74E6gjK2rZd86xVO8az55bhfg898sPx87JFI2FBl/AZm8rGngMTepfTKAIs2ZCWpy4XHhi8xQWbGX/4ufXYTPRrQLWxMOqdvHcoNYXNpp7sg7l/zZsAFhJvaJKhcE9Ybz2dnlIO9U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769830869; c=relaxed/simple;
	bh=zufNfSOMSdO9Chv/nu0rFZ76co69CahgcxDaETRNVQI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SmmMIDhZrfKdIl1Ij/1Sqb5OJYpQQSVhHrYOyXbbcou0fmidKCC2BEvs08yeJiq5i/QjreOVdeo3+wJK6w6BDAvOlbqLV5KmVMJ40HyxktO2D43RHfwgu/DjEg0u713c7pcoP3zv9gEhUlYQIdB0a0DvemIcr7AXTaT4e/QP9oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=mJvxrenH; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=dpplabs.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-c2a9a9b43b1so1598209a12.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 19:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1769830867; x=1770435667; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0F/+WwJ4GgbOYPy3UtQ/y6jWwOMUeMh//woYhmhU11g=;
        b=mJvxrenHZB7YODnCdsC/1KoShIjqJakqOPybAk+e4lDIW8X47lRd7vwOObr1NjUQ2T
         snZnbPeypcIhU1vTcRSzrjnX0j07d2bS/8B3TFQkeMEKtf6wS043R82RPMUDfu7OvvSq
         qgJlEdJZ7Mn5X7gR69XIKAUEb1BzJhn6BcwkSKsnShLqIXv01kx2cL3yJNyh36HcbW+V
         hNOoEath+uPijuJWP0ubot7CpfUNHEPvtcPrggT/a3eD4qmrFO6Mii95oFqYUoaebZ94
         gbNthn8G6+Y2QrV0UOrm1xzfq0/43mFMAa4a4YjNpbX9lTcaFguJkfb/2UKrUHrdcy/U
         /k5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769830867; x=1770435667;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0F/+WwJ4GgbOYPy3UtQ/y6jWwOMUeMh//woYhmhU11g=;
        b=SXoUTKjoXpA3IhfgWztl50SxELL0wzZv6sDSX/QJ6N+awPRu/X28u4D8R2+lgtC0At
         hPiUpeiuPdhv16r/ixL0Sru1P9mooADC0czLuBzYX86WLv15hgdI7GQOFx9Od4VvwPmS
         GPA+UcFl2J3PQ430FoPAOr/WgsJvrCNtYy4HltsE2DHcrwmMYS/sHSQzBhfpCyljzGEM
         xFWvDuQQrWreKQ+SJ98TzP+ALuuVTJNCLNtULtf6n8lSzBmvdHJWEDTUg50tFOuQ8LJQ
         ulFRhQ6euQ1vQDooZpKpDETU/c2uXooAbB/4TsyCoc0OT1OPNDnEOd+7fVt055hcn1xC
         +jMg==
X-Forwarded-Encrypted: i=1; AJvYcCXOcTj/UHh2fv4SK/X8YbHi5r4dSWIEYjuZGiQxTaU5rELFDCzK83S8Ggfv7gpb5XAnWXCyURBjE79a@vger.kernel.org
X-Gm-Message-State: AOJu0YxP+MRFM+Icxiqlx0kWNim0mj4+ZgggOpOGE6x9paZsr8c7SdRA
	HHBpsGMenkGft9ApSI4wi3dZF8lY5142bYd/kSJKVRdmF1CC9Of6t/5rGsWJRL+vntc=
X-Gm-Gg: AZuq6aJryIVF+K3DmEy3AcDtgRYZOJQYPqkqhUjN72AIDq742uIEt0OhICgvVlLthFS
	Y8BCU+fEqN15bbq4IunGPCh9u4BJmqNcfeiwvtuquSZzmAxBlJWgETBNlaZ52S4ZH/v+jAlnoTV
	eQVRhM9r2zdBBpPtlVQbh+dBnBNUIzrNhvsij2kGir6UGJC6S2f3mTkb6KUUSUfIBgbFvNqmso3
	N2HGgVQKTs7KR1Gj69wQ3SXrD4eS3f53i9Rwqi5RzKsGHtl2ZSOW6KsBLMhNWOPgJSZe4s/MwFU
	/GkpBTdSiHMl+/686j4iEjEIubQY4pcws5l73moMAPv551wCT/XCOSufep+Fzl8p4px/swz0AXR
	Fi2yv851xmPVI5PFyaVmVvmQul7WI2TWZSNfUXMN/99q14kA/bQG2rtnaRhfUVzWPS2k4Gf1W3Z
	i8/cTp4ZHOFnzkPLBa
X-Received: by 2002:a05:6a21:3a85:b0:38d:f8e6:fc87 with SMTP id adf61e73a8af0-392e01a7c46mr5228981637.76.1769830866746;
        Fri, 30 Jan 2026 19:41:06 -0800 (PST)
Received: from z440.. ([2601:1c0:4502:2d00:f8d:9478:bfbf:7332])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3540f3cc71bsm8986062a91.11.2026.01.30.19.41.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 19:41:06 -0800 (PST)
From: Igor Reznichenko <igor@reznichenko.net>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	"Kael D'Alcamo" <dev@kael-k.io>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] drm/panel: Add Ilitek ILI9488 controller driver
Date: Fri, 30 Jan 2026 19:41:01 -0800
Message-ID: <20260131034101.307486-3-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260131034101.307486-1-igor@reznichenko.net>
References: <20260131034101.307486-1-igor@reznichenko.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[reznichenko.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-261384-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[reznichenko.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,sntech.de,bp.renesas.com,kael-k.io,rock-chips.com];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[igor@reznichenko.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[reznichenko.net:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[reznichenko.net:email,reznichenko.net:dkim,reznichenko.net:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 639EFC0900
X-Rspamd-Action: no action

Add support for Ilitek ILI9488 controller which is used in
FocusLCDs E35GH-I-MW800-CB 320x480 MIPI DSI panel.

Signed-off-by: Igor Reznichenko <igor@reznichenko.net>
---
 MAINTAINERS                                  |   6 +
 drivers/gpu/drm/panel/Kconfig                |   9 +
 drivers/gpu/drm/panel/Makefile               |   1 +
 drivers/gpu/drm/panel/panel-ilitek-ili9488.c | 299 +++++++++++++++++++
 4 files changed, 315 insertions(+)
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9488.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 67db88b04537..19f7806bbb56 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7908,6 +7908,12 @@ T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
 F:	Documentation/devicetree/bindings/display/ilitek,ili9486.yaml
 F:	drivers/gpu/drm/tiny/ili9486.c
 
+DRM DRIVER FOR ILITEK ILI9488 PANELS
+M:	Igor Reznichenko <igor@reznichenko.net>
+S:	Maintained
+F:	Documentation/devicetree/bindings/display/panel/ilitek,ili9488.yaml
+F:	drivers/gpu/drm/panel/panel-ilitek-ili9488.c
+
 DRM DRIVER FOR ILITEK ILI9805 PANELS
 M:	Michael Trimarchi <michael@amarulasolutions.com>
 S:	Maintained
diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
index 7a83804fedca..2a764d3d5097 100644
--- a/drivers/gpu/drm/panel/Kconfig
+++ b/drivers/gpu/drm/panel/Kconfig
@@ -248,6 +248,15 @@ config DRM_PANEL_ILITEK_ILI9341
 	  QVGA (240x320) RGB panels. support serial & parallel rgb
 	  interface.
 
+config DRM_PANEL_ILITEK_ILI9488
+	tristate "Ilitek ILI9488-based panels"
+	depends on OF
+	depends on DRM_MIPI_DSI
+	depends on BACKLIGHT_CLASS_DEVICE
+	help
+	  Say Y if you want to enable support for panels based on the
+	  Ilitek ILI9488 controller.
+
 config DRM_PANEL_ILITEK_ILI9805
 	tristate "Ilitek ILI9805-based panels"
 	depends on OF
diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
index b9562a6fdcb3..62e49a322f21 100644
--- a/drivers/gpu/drm/panel/Makefile
+++ b/drivers/gpu/drm/panel/Makefile
@@ -25,6 +25,7 @@ obj-$(CONFIG_DRM_PANEL_HIMAX_HX8394) += panel-himax-hx8394.o
 obj-$(CONFIG_DRM_PANEL_HYDIS_HV101HD1) += panel-hydis-hv101hd1.o
 obj-$(CONFIG_DRM_PANEL_ILITEK_IL9322) += panel-ilitek-ili9322.o
 obj-$(CONFIG_DRM_PANEL_ILITEK_ILI9341) += panel-ilitek-ili9341.o
+obj-$(CONFIG_DRM_PANEL_ILITEK_ILI9488) += panel-ilitek-ili9488.o
 obj-$(CONFIG_DRM_PANEL_ILITEK_ILI9805) += panel-ilitek-ili9805.o
 obj-$(CONFIG_DRM_PANEL_ILITEK_ILI9806E) += panel-ilitek-ili9806e.o
 obj-$(CONFIG_DRM_PANEL_ILITEK_ILI9881C) += panel-ilitek-ili9881c.o
diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9488.c b/drivers/gpu/drm/panel/panel-ilitek-ili9488.c
new file mode 100644
index 000000000000..2bb5622ae506
--- /dev/null
+++ b/drivers/gpu/drm/panel/panel-ilitek-ili9488.c
@@ -0,0 +1,299 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/errno.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of.h>
+
+#include <linux/gpio/consumer.h>
+#include <linux/regulator/consumer.h>
+
+#include <drm/drm_mipi_dsi.h>
+#include <drm/drm_modes.h>
+#include <drm/drm_panel.h>
+#include <drm/drm_probe_helper.h>
+
+#include <video/mipi_display.h>
+
+struct ili9488_desc {
+	const struct drm_display_mode *display_mode;
+	unsigned long mode_flags;
+	enum mipi_dsi_pixel_format format;
+	unsigned int lanes;
+	void (*init_sequence)(struct mipi_dsi_multi_context *ctx);
+};
+
+struct ili9488 {
+	struct drm_panel panel;
+	struct mipi_dsi_device *dsi;
+	struct gpio_desc *reset;
+	struct regulator_bulk_data supplies[2];
+	const struct ili9488_desc *desc;
+	enum drm_panel_orientation orientation;
+};
+
+static const char * const regulator_names[] = {
+	"vci",
+	"iovcc",
+};
+
+static void e35gh_i_mw800cb_init(struct mipi_dsi_multi_context *ctx)
+{
+	/* Gamma control 1,2 */
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xE0, 0x00, 0x10, 0x14, 0x01, 0x0E, 0x04, 0x33,
+				     0x56, 0x48, 0x03, 0x0C, 0x0B, 0x2B, 0x34, 0x0F);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xE1, 0x00, 0x12, 0x18, 0x05, 0x12, 0x06, 0x40,
+				     0x34, 0x57, 0x06, 0x10, 0x0C, 0x3B, 0x3F, 0x0F);
+	/* Power control 1,2 */
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xC0, 0x0F, 0x0C);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xC1, 0x41);
+	/* VCOM Control */
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xC5, 0x00, 0x25, 0x80);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x36, 0x48);
+	/* Interface pixel format 18bpp */
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x3A, 0x66);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xB0, 0x00);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xB1, 0xA0);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xB4, 0x02);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xB6, 0x02, 0x02, 0x3B);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xE9, 0x00);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0xF7, 0xA9, 0x51, 0x2C, 0x82);
+	mipi_dsi_dcs_write_seq_multi(ctx, 0x21, 0x00);
+}
+
+static const struct drm_display_mode e35gh_i_mw800cb_display_mode = {
+	.clock = 14256,
+
+	.hdisplay = 320,
+	.hsync_start = 320 + 60,
+	.hsync_end = 320 + 60 + 20,
+	.htotal = 320 + 60 + 20 + 40,
+
+	.vdisplay = 480,
+	.vsync_start = 480 + 20,
+	.vsync_end = 480 + 20 + 10,
+	.vtotal = 480 + 20 + 10 + 30,
+
+	.width_mm = 48,
+	.height_mm = 73,
+
+	.flags = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
+};
+
+static inline struct ili9488 *panel_to_ili9488(struct drm_panel *panel)
+{
+	return container_of(panel, struct ili9488, panel);
+}
+
+static int ili9488_power_on(struct ili9488 *ili)
+{
+	struct mipi_dsi_device *dsi = ili->dsi;
+	int ret;
+
+	ret = regulator_bulk_enable(ARRAY_SIZE(ili->supplies), ili->supplies);
+	if (ret < 0) {
+		dev_err(&dsi->dev, "regulator bulk enable failed: %d\n", ret);
+		return ret;
+	}
+
+	gpiod_set_value_cansleep(ili->reset, 0);
+	usleep_range(1000, 5000);
+	gpiod_set_value_cansleep(ili->reset, 1);
+	usleep_range(1000, 5000);
+	gpiod_set_value_cansleep(ili->reset, 0);
+	usleep_range(5000, 10000);
+
+	return 0;
+}
+
+static int ili9488_power_off(struct ili9488 *ili)
+{
+	struct mipi_dsi_device *dsi = ili->dsi;
+	int ret;
+
+	gpiod_set_value_cansleep(ili->reset, 1);
+
+	ret = regulator_bulk_disable(ARRAY_SIZE(ili->supplies), ili->supplies);
+	if (ret)
+		dev_err(&dsi->dev, "regulator bulk disable failed: %d\n", ret);
+
+	return ret;
+}
+
+static int ili9488_activate(struct ili9488 *ili)
+{
+	struct mipi_dsi_multi_context ctx = { .dsi = ili->dsi };
+
+	if (ili->desc->init_sequence)
+		ili->desc->init_sequence(&ctx);
+
+	mipi_dsi_dcs_exit_sleep_mode_multi(&ctx);
+	mipi_dsi_msleep(&ctx, 120);
+	mipi_dsi_dcs_set_display_on_multi(&ctx);
+
+	return ctx.accum_err;
+}
+
+static int ili9488_prepare(struct drm_panel *panel)
+{
+	struct ili9488 *ili = panel_to_ili9488(panel);
+	int ret;
+
+	ret = ili9488_power_on(ili);
+	if (ret)
+		return ret;
+
+	ret = ili9488_activate(ili);
+	if (ret) {
+		ili9488_power_off(ili);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int ili9488_deactivate(struct ili9488 *ili)
+{
+	struct mipi_dsi_multi_context ctx = { .dsi = ili->dsi };
+
+	mipi_dsi_dcs_set_display_off_multi(&ctx);
+	mipi_dsi_dcs_enter_sleep_mode_multi(&ctx);
+	mipi_dsi_msleep(&ctx, 120);
+
+	return ctx.accum_err;
+}
+
+static int ili9488_unprepare(struct drm_panel *panel)
+{
+	struct ili9488 *ili = panel_to_ili9488(panel);
+	struct mipi_dsi_device *dsi = ili->dsi;
+	int ret;
+
+	ili9488_deactivate(ili);
+	ret = ili9488_power_off(ili);
+	if (ret < 0)
+		dev_err(&dsi->dev, "power off failed: %d\n", ret);
+
+	return ret;
+}
+
+static int ili9488_get_modes(struct drm_panel *panel, struct drm_connector *connector)
+{
+	struct ili9488 *ili = panel_to_ili9488(panel);
+	const struct drm_display_mode *mode = ili->desc->display_mode;
+
+	return drm_connector_helper_get_modes_fixed(connector, mode);
+}
+
+static enum drm_panel_orientation ili9488_get_orientation(struct drm_panel *panel)
+{
+	struct ili9488 *ili = panel_to_ili9488(panel);
+
+	return ili->orientation;
+}
+
+static const struct drm_panel_funcs ili9488_funcs = {
+	.prepare	= ili9488_prepare,
+	.unprepare	= ili9488_unprepare,
+	.get_modes	= ili9488_get_modes,
+	.get_orientation = ili9488_get_orientation,
+};
+
+static int ili9488_dsi_probe(struct mipi_dsi_device *dsi)
+{
+	struct device *dev = &dsi->dev;
+	struct ili9488 *ili;
+	int i, ret;
+
+	ili = devm_drm_panel_alloc(dev, struct ili9488, panel, &ili9488_funcs,
+				   DRM_MODE_CONNECTOR_DSI);
+	if (IS_ERR(ili))
+		return PTR_ERR(ili);
+
+	ili->desc = device_get_match_data(dev);
+	mipi_dsi_set_drvdata(dsi, ili);
+	ili->dsi = dsi;
+
+	dsi->mode_flags = ili->desc->mode_flags;
+	dsi->format = ili->desc->format;
+	dsi->lanes = ili->desc->lanes;
+
+	ili->reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
+	if (IS_ERR(ili->reset))
+		return dev_err_probe(dev, PTR_ERR(ili->reset),
+				     "failed to get reset-gpios\n");
+
+	for (i = 0; i < ARRAY_SIZE(ili->supplies); i++)
+		ili->supplies[i].supply = regulator_names[i];
+
+	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ili->supplies),
+				      ili->supplies);
+	if (ret < 0)
+		return dev_err_probe(dev, ret, "failed to get regulators\n");
+
+	ret = of_drm_get_panel_orientation(dev->of_node, &ili->orientation);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to get orientation\n");
+
+	ret = drm_panel_of_backlight(&ili->panel);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to get backlight\n");
+
+	ili->panel.prepare_prev_first = true;
+	drm_panel_add(&ili->panel);
+
+	ret = mipi_dsi_attach(dsi);
+	if (ret < 0) {
+		dev_err_probe(dev, ret, "failed to attach to DSI host\n");
+		drm_panel_remove(&ili->panel);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void ili9488_dsi_remove(struct mipi_dsi_device *dsi)
+{
+	struct ili9488 *ili = mipi_dsi_get_drvdata(dsi);
+	int ret;
+
+	ret = mipi_dsi_detach(dsi);
+	if (ret < 0)
+		dev_err(&dsi->dev, "failed to detach from DSI host: %d\n", ret);
+
+	drm_panel_remove(&ili->panel);
+}
+
+static const struct ili9488_desc e35gh_i_mw800cb_desc = {
+	.init_sequence = e35gh_i_mw800cb_init,
+	.display_mode = &e35gh_i_mw800cb_display_mode,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE |
+		      MIPI_DSI_MODE_LPM | MIPI_DSI_CLOCK_NON_CONTINUOUS,
+	.format = MIPI_DSI_FMT_RGB666_PACKED,
+	.lanes = 1,
+};
+
+static const struct of_device_id ili9488_of_match[] = {
+	{ .compatible = "focuslcds,e35gh-i-mw800cb", .data = &e35gh_i_mw800cb_desc },
+	{ }
+};
+
+MODULE_DEVICE_TABLE(of, ili9488_of_match);
+
+static struct mipi_dsi_driver ili9488_dsi_driver = {
+	.probe	= ili9488_dsi_probe,
+	.remove	= ili9488_dsi_remove,
+	.driver = {
+		.name		= "ili9488-dsi",
+		.of_match_table	= ili9488_of_match,
+	},
+};
+module_mipi_dsi_driver(ili9488_dsi_driver);
+
+MODULE_AUTHOR("Igor Reznichenko <igor@reznichenko.net>");
+MODULE_DESCRIPTION("Ilitek ILI9488 Controller Driver");
+MODULE_LICENSE("GPL");
-- 
2.43.0


