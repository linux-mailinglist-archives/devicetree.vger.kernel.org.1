Return-Path: <devicetree+bounces-267270-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLgHE/D3m2mp+QMAu9opvQ
	(envelope-from <devicetree+bounces-267270-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:47:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E72172549
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:47:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A1DF03003625
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:46:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C6A034A3BC;
	Mon, 23 Feb 2026 06:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EXGZS87J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BF55347FD1
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829204; cv=none; b=Wrv4NrTGSxTn+kkxLLzRYZkseajcyVIto/23diYNlNDMdtO/wlS+d9l5fDll5QIt5ucKUeciWwDztYNo4wbdT3gdm/nyr0bv4nmce/6qxdLkEvBNN2eC+eWLqP4iYpcWIXdcIQloAMRhmm9+KG+f78A/eDr1ypegcGOD28qcj4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829204; c=relaxed/simple;
	bh=AUBLW9eEmHhaVK0ZxAspj3rNrmkvmsR2gTSC1FzkjeE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SFbMaLxrvloIR+buY+7YTDTifQSo+ODBKa1aSJgLQ+kv3TYMQVxoWfbCXZopYm3wEKp/emghnZnNAr6bJibDMZbhUIY82dl+ZMwDCUb7Phe9cuRfS5SR+57vdKluqklNjLIly78eNtkBqwC1kQQiJ7KnUKUC5jtRHVSDya8Dm/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EXGZS87J; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-59e646a4b9eso3660587e87.3
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:46:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771829201; x=1772434001; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PWB/y+opyXxwHeSXSLj6ESlDfLZCxfS1O5aRXnap1jw=;
        b=EXGZS87JI7/Tw5PD4rUjiCuDkYL1JMQeUHZ7LsGOjO3KWmUETFoo6VpzsCiSz76I2s
         ebK2FSSVMtm2xAhEXfu4Z7A4s70S+s11AdP9zzyRkJ/7wM36MRX14/ylt9ZEFS5OlW1+
         RL0cSWa0b/kC3+7Rmm2kka95ianUp9MA9uOPsWuRAyDzjcg8dqGn0BN9BEp2MhGhwGXN
         d1PRLQwBrG8LbBx45mDAXDUOnueB7dx242Cgcu97ozCMI98lR4b+PTTb4v2l5pzVasXt
         4AioJj3hs7VqDObXMvslSgP9zySf+P9l6epLRj2Kr5NAe47yYZwJnnO+xP0YwnYNjCii
         t9BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829201; x=1772434001;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PWB/y+opyXxwHeSXSLj6ESlDfLZCxfS1O5aRXnap1jw=;
        b=Ot88qBAt2aRf+GV5fNTFq5CMIqeypPsxANqBnV4sj/1owVYYdyQzz8bvcBkbiEC12M
         orzBomykn0TL5TLfoiBw1Vo1h79V8qdqJVMGsIfyiAw95m39HMyhL5u1HtF+Pgdi5uWJ
         qJXwTFYNabmwkJhZGpsRyTRV795Q86R/2CFQ470sfUBiGqo/N93IcxHOgFiG9vIPuS3S
         /dN9swXxrqFnY2ERe5RW3YTUl96/lrZ0lKF421feRjBIMn0lBpHtXyyMjN64ABkCdbEQ
         VvXixm/DAd4V2i/qA5wE4lQn58xf4cIZaytNOqGtDq8A3jlYTN5jPlz/Cme7uqmvocfB
         Tz+w==
X-Forwarded-Encrypted: i=1; AJvYcCVWKlKOJlrrqmbCdMclqpTGvHo1D/i5qt6MRQ7K3f6PJ/6YRGsj2eDJlRyTq+l23lUJZw3GmxxgRIMO@vger.kernel.org
X-Gm-Message-State: AOJu0YzMyNZjbt//xQ93UX8tSfsl86lZkyCcTh21FFk6zpBGKeFXEosk
	ZKEOgEN/TT+b0hj4Qc5rQ+VonT6PIYRY17n2c5fvOtxHxUbgIELUTpv0
X-Gm-Gg: AZuq6aIoh6mn2nfmdKr0WncgFkWrfaof8/40m9b9xiSopT5vGin89ioSV+nm4W5hgxW
	ODqqwUpnz3Z+ZBOWjJYDxoHJtvwf9AfFNzs8KO/atJtseydmIKQSx8l2iI+tPYJY3icjNIKhGYL
	IXfNype5DlFFsJHedsWZFcsn1/V5ULMqKUsuDmLkvwLw4UvWy0zOa8CKlqDsAwkHqnQtiKeFuiD
	SaIOOaJzCvQbP1NoMv6XamKTYNe/qJ5CewbVLmfNovrddkyUjUGkntl8DW6TonGfoHthRZBIVOU
	aY0QbOdk5PTfi5dAq7k/PToRiHVfVPgt7+MIhH+Ysz4PljSqS5ePC3jD1PdUyMP5OVp7D199Alb
	Rxoe3Jn37Vo45FlgM9Gw8MUpa5HHSDK1sDA2LAUOg9xzox0/fi0h3EjHKbar85KJBKdJbSA4q+6
	/IGesOroF7P+Ov
X-Received: by 2002:a05:6512:1246:b0:5a0:f32d:1ea8 with SMTP id 2adb3069b0e04-5a0f32d1fe3mr882040e87.43.1771829200681;
        Sun, 22 Feb 2026 22:46:40 -0800 (PST)
Received: from xeon ([188.163.112.76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb0b89asm1386201e87.2.2026.02.22.22.46.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:46:40 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] gpu/drm: panel: add support for DSI panel used in Motorola Atrix 4G and Droid X2
Date: Mon, 23 Feb 2026 08:46:30 +0200
Message-ID: <20260223064630.12720-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260223064630.12720-1-clamor95@gmail.com>
References: <20260223064630.12720-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267270-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[linaro.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 02E72172549
X-Rspamd-Action: no action

Add support for the DSI LCD panel module found in Motorola Atrix 4G or
Droid X2 smartphones. Exact panel vendor and model are unknown hence panel
uses generic compatible based on board where it is used. The panel has a
540x960 resolution with 24 bit RGB per pixel.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/gpu/drm/panel/Kconfig              |  12 +
 drivers/gpu/drm/panel/Makefile             |   1 +
 drivers/gpu/drm/panel/panel-motorola-mot.c | 244 +++++++++++++++++++++
 3 files changed, 257 insertions(+)
 create mode 100644 drivers/gpu/drm/panel/panel-motorola-mot.c

diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
index 307152ad7759..477c54c90b01 100644
--- a/drivers/gpu/drm/panel/Kconfig
+++ b/drivers/gpu/drm/panel/Kconfig
@@ -464,6 +464,18 @@ config DRM_PANEL_MANTIX_MLAF057WE51
 	  has a resolution of 720x1440 pixels, a built in backlight and touch
 	  controller.
 
+config DRM_PANEL_MOTOROLA_MOT
+	tristate "Atrix 4G and Droid X2 540x960 DSI video mode panel"
+	depends on OF
+	depends on DRM_MIPI_DSI
+	depends on BACKLIGHT_CLASS_DEVICE
+	select VIDEOMODE_HELPERS
+	help
+	  Say Y here if you want to enable support for the LCD panel module
+	  for Motorola Atrix 4G or Droid X2. Exact panel vendor and model are
+	  unknown. The panel has a 540x960 resolution and uses 24 bit RGB per
+	  pixel.
+
 config DRM_PANEL_NEC_NL8048HL11
 	tristate "NEC NL8048HL11 RGB panel"
 	depends on GPIOLIB && OF && SPI
diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
index aeffaa95666d..e17ef8140806 100644
--- a/drivers/gpu/drm/panel/Makefile
+++ b/drivers/gpu/drm/panel/Makefile
@@ -45,6 +45,7 @@ obj-$(CONFIG_DRM_PANEL_LG_LD070WX3) += panel-lg-ld070wx3.o
 obj-$(CONFIG_DRM_PANEL_LG_LG4573) += panel-lg-lg4573.o
 obj-$(CONFIG_DRM_PANEL_LG_SW43408) += panel-lg-sw43408.o
 obj-$(CONFIG_DRM_PANEL_MAGNACHIP_D53E6EA8966) += panel-magnachip-d53e6ea8966.o
+obj-$(CONFIG_DRM_PANEL_MOTOROLA_MOT) += panel-motorola-mot.o
 obj-$(CONFIG_DRM_PANEL_NEC_NL8048HL11) += panel-nec-nl8048hl11.o
 obj-$(CONFIG_DRM_PANEL_NEWVISION_NV3051D) += panel-newvision-nv3051d.o
 obj-$(CONFIG_DRM_PANEL_NEWVISION_NV3052C) += panel-newvision-nv3052c.o
diff --git a/drivers/gpu/drm/panel/panel-motorola-mot.c b/drivers/gpu/drm/panel/panel-motorola-mot.c
new file mode 100644
index 000000000000..eb1f86c3d704
--- /dev/null
+++ b/drivers/gpu/drm/panel/panel-motorola-mot.c
@@ -0,0 +1,244 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/array_size.h>
+#include <linux/delay.h>
+#include <linux/err.h>
+#include <linux/gpio/consumer.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/property.h>
+#include <linux/regulator/consumer.h>
+
+#include <video/mipi_display.h>
+
+#include <drm/drm_mipi_dsi.h>
+#include <drm/drm_modes.h>
+#include <drm/drm_panel.h>
+#include <drm/drm_probe_helper.h>
+
+static const struct regulator_bulk_data mot_panel_supplies[] = {
+	{ .supply = "vddio" }, { .supply = "vdd" },
+};
+
+struct mot_panel {
+	struct drm_panel panel;
+	struct mipi_dsi_device *dsi;
+
+	struct gpio_desc *reset_gpio;
+
+	struct regulator_bulk_data *supplies;
+};
+
+static inline struct mot_panel *to_mot_panel(struct drm_panel *panel)
+{
+	return container_of(panel, struct mot_panel, panel);
+}
+
+static void mot_panel_reset(struct mot_panel *priv)
+{
+	gpiod_set_value_cansleep(priv->reset_gpio, 1);
+	usleep_range(50000, 51000);
+	gpiod_set_value_cansleep(priv->reset_gpio, 0);
+	usleep_range(10000, 11000);
+}
+
+static void mot_es2(struct mipi_dsi_multi_context *ctx)
+{
+	mipi_dsi_generic_write_seq_multi(ctx, 0x55, 0x01);
+
+	mipi_dsi_dcs_exit_sleep_mode_multi(ctx);
+	mipi_dsi_msleep(ctx, 120);
+
+	mipi_dsi_generic_write_seq_multi(ctx, 0xf4, 0x00, 0xbb, 0x46, 0x53, 0x0c, 0x49,
+					 0x74, 0x29, 0x12, 0x15, 0x2f, 0x2f, 0x04);
+	mipi_dsi_generic_write_seq_multi(ctx, 0xf8, 0x4b, 0x04, 0x10, 0x1a, 0x2c, 0x2c,
+					 0x2c, 0x2c, 0x14, 0x12);
+
+	mipi_dsi_generic_write_seq_multi(ctx, 0xb5, 0x03, 0x7f, 0x00, 0x80, 0xc7, 0x00);
+	mipi_dsi_generic_write_seq_multi(ctx, 0xb7, 0x66, 0xf6, 0x46, 0x9f, 0x90, 0x99,
+					 0xff, 0x80, 0x6d, 0x01);
+
+	/* Gamma R */
+	mipi_dsi_generic_write_seq_multi(ctx, 0xf9, 0x04);
+	mipi_dsi_generic_write_seq_multi(ctx, 0xfa, 0x00, 0x2f, 0x30, 0x12, 0x0e, 0x0c,
+					 0x22, 0x27, 0x31, 0x2e, 0x07, 0x0f);
+	mipi_dsi_generic_write_seq_multi(ctx, 0xfb, 0x00, 0x2f, 0x30, 0x12, 0x0e, 0x0c,
+					 0x22, 0x27, 0x31, 0x2e, 0x07, 0x0f);
+
+	/* Gamma G */
+	mipi_dsi_generic_write_seq_multi(ctx, 0xf9, 0x02);
+	mipi_dsi_generic_write_seq_multi(ctx, 0xfa, 0x00, 0x2f, 0x37, 0x15, 0x15, 0x11,
+					 0x1f, 0x25, 0x2d, 0x2a, 0x05, 0x0f);
+	mipi_dsi_generic_write_seq_multi(ctx, 0xfb, 0x00, 0x2f, 0x37, 0x15, 0x15, 0x11,
+					 0x1f, 0x25, 0x2d, 0x2a, 0x05, 0x0f);
+
+	/* Gamma B */
+	mipi_dsi_generic_write_seq_multi(ctx, 0xf9, 0x01);
+	mipi_dsi_generic_write_seq_multi(ctx, 0xfa, 0x00, 0x2f, 0x3f, 0x16, 0x1f, 0x15,
+					 0x1f, 0x25, 0x2d, 0x2b, 0x06, 0x0b);
+	mipi_dsi_generic_write_seq_multi(ctx, 0xfb, 0x00, 0x2f, 0x3f, 0x16, 0x1f, 0x15,
+					 0x1f, 0x25, 0x2d, 0x2b, 0x06, 0x0b);
+
+	/* Gamma W */
+	mipi_dsi_generic_write_seq_multi(ctx, 0xf9, 0x20);
+	mipi_dsi_generic_write_seq_multi(ctx, 0xfa, 0x00, 0x2f, 0x34, 0x15, 0x1a, 0x11,
+					 0x1f, 0x23, 0x2d, 0x29, 0x02, 0x08);
+	mipi_dsi_generic_write_seq_multi(ctx, 0xfb, 0x00, 0x2f, 0x34, 0x15, 0x1a, 0x11,
+					 0x1f, 0x23, 0x2d, 0x29, 0x02, 0x08);
+
+	mipi_dsi_generic_write_seq_multi(ctx, 0x53, 0x2c);
+	mipi_dsi_generic_write_seq_multi(ctx, 0x35, 0x00);
+}
+
+static int mot_panel_prepare(struct drm_panel *panel)
+{
+	struct mot_panel *priv = to_mot_panel(panel);
+	struct mipi_dsi_multi_context ctx = { .dsi = priv->dsi };
+	struct device *dev = panel->dev;
+	int ret;
+
+	ret = regulator_bulk_enable(ARRAY_SIZE(mot_panel_supplies), priv->supplies);
+	if (ret < 0) {
+		dev_err(dev, "failed to enable power supplies: %d\n", ret);
+		return ret;
+	}
+
+	mot_panel_reset(priv);
+
+	mipi_dsi_generic_write_seq_multi(&ctx, 0xf0, 0x5a, 0x5a);
+	mipi_dsi_generic_write_seq_multi(&ctx, 0xf1, 0x5a, 0x5a);
+	mipi_dsi_generic_write_seq_multi(&ctx, 0xd0, 0x8e);
+
+	mot_es2(&ctx);
+
+	mipi_dsi_dcs_set_display_on_multi(&ctx);
+	mipi_dsi_msleep(&ctx, 20);
+
+	return ctx.accum_err;
+}
+
+static int mot_panel_disable(struct drm_panel *panel)
+{
+	struct mot_panel *priv = to_mot_panel(panel);
+	struct mipi_dsi_multi_context ctx = { .dsi = priv->dsi };
+
+	mipi_dsi_dcs_set_display_off_multi(&ctx);
+	mipi_dsi_dcs_enter_sleep_mode_multi(&ctx);
+	mipi_dsi_msleep(&ctx, 70);
+
+	return ctx.accum_err;
+}
+
+static int mot_panel_unprepare(struct drm_panel *panel)
+{
+	struct mot_panel *priv = to_mot_panel(panel);
+
+	usleep_range(10000, 11000);
+
+	gpiod_set_value_cansleep(priv->reset_gpio, 1);
+	usleep_range(5000, 6000);
+
+	regulator_bulk_disable(ARRAY_SIZE(mot_panel_supplies), priv->supplies);
+
+	return 0;
+}
+
+static const struct drm_display_mode mot_panel_mode = {
+	.clock = (540 + 32 + 32 + 16) * (960 + 12 + 12 + 8) * 60 / 1000,
+	.hdisplay = 540,
+	.hsync_start = 540 + 32,
+	.hsync_end = 540 + 32 + 32,
+	.htotal = 540 + 32 + 32 + 16,
+	.vdisplay = 960,
+	.vsync_start = 960 + 12,
+	.vsync_end = 960 + 12 + 12,
+	.vtotal = 960 + 12 + 12 + 8,
+	.width_mm = 51,
+	.height_mm = 91,
+	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
+};
+
+static int mot_panel_get_modes(struct drm_panel *panel,
+			       struct drm_connector *connector)
+{
+	return drm_connector_helper_get_modes_fixed(connector, &mot_panel_mode);
+}
+
+static const struct drm_panel_funcs mot_panel_panel_funcs = {
+	.prepare = mot_panel_prepare,
+	.disable = mot_panel_disable,
+	.unprepare = mot_panel_unprepare,
+	.get_modes = mot_panel_get_modes,
+};
+
+static int mot_panel_probe(struct mipi_dsi_device *dsi)
+{
+	struct device *dev = &dsi->dev;
+	struct mot_panel *priv;
+	int ret;
+
+	priv = devm_drm_panel_alloc(dev, struct mot_panel, panel,
+				    &mot_panel_panel_funcs,
+				    DRM_MODE_CONNECTOR_DSI);
+	if (IS_ERR(priv))
+		return PTR_ERR(priv);
+
+	ret = devm_regulator_bulk_get_const(dev, ARRAY_SIZE(mot_panel_supplies),
+					    mot_panel_supplies, &priv->supplies);
+	if (ret < 0)
+		return dev_err_probe(dev, ret, "failed to get supplies\n");
+
+	priv->reset_gpio = devm_gpiod_get_optional(dev, "reset",
+						   GPIOD_OUT_HIGH);
+	if (IS_ERR(priv->reset_gpio))
+		return dev_err_probe(dev, PTR_ERR(priv->reset_gpio),
+				     "failed to get reset gpios\n");
+
+	priv->dsi = dsi;
+	mipi_dsi_set_drvdata(dsi, priv);
+
+	dsi->lanes = 2;
+	dsi->format = MIPI_DSI_FMT_RGB888;
+	dsi->mode_flags = MIPI_DSI_MODE_LPM;
+
+	ret = drm_panel_of_backlight(&priv->panel);
+	if (ret < 0)
+		return dev_err_probe(dev, ret, "failed to get backlight\n");
+
+	drm_panel_add(&priv->panel);
+
+	ret = devm_mipi_dsi_attach(dev, dsi);
+	if (ret < 0) {
+		drm_panel_remove(&priv->panel);
+		return dev_err_probe(dev, ret, "failed to attach to DSI host\n");
+	}
+
+	return 0;
+}
+
+static void mot_panel_remove(struct mipi_dsi_device *dsi)
+{
+	struct mot_panel *priv = mipi_dsi_get_drvdata(dsi);
+
+	drm_panel_remove(&priv->panel);
+}
+
+static const struct of_device_id mot_panel_of_match[] = {
+	{ .compatible = "motorola,mot-panel" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, mot_panel_of_match);
+
+static struct mipi_dsi_driver mot_panel_driver = {
+	.driver = {
+		.name = "panel-motorola-mot",
+		.of_match_table = mot_panel_of_match,
+	},
+	.probe = mot_panel_probe,
+	.remove = mot_panel_remove,
+};
+module_mipi_dsi_driver(mot_panel_driver);
+
+MODULE_AUTHOR("Svyatoslav Ryhel <clamor95@gmail.com>");
+MODULE_DESCRIPTION("Motorola MOT panel driver");
+MODULE_LICENSE("GPL");
-- 
2.51.0


