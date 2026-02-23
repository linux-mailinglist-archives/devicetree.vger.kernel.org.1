Return-Path: <devicetree+bounces-267644-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oH01Ali4nGkqKAQAu9opvQ
	(envelope-from <devicetree+bounces-267644-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 21:28:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B9017CE78
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 21:28:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9BD7B313516D
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 20:26:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB50E37756E;
	Mon, 23 Feb 2026 20:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ntdxAHXf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6251837757D
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 20:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771878414; cv=none; b=abqX59Hrn+u2DYOkqi4gcOIk/WeUKWg1bquw5pyyog1eiRFDSvBl3h40IGX/HmD3aoyjVazv8jYwBCt09Tq/GL1QBYGKz2ga+bk04LmUo6CL0tCw+VB+E+/MuwZ+UzuRcpzPdZTvnDn8FyeGD8A3goA9/aiD3wEX3mQ3QDcxp4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771878414; c=relaxed/simple;
	bh=uRSplZqP4sN3aUMGMu4f3r6Ehztv0FePePabqcg6o7c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y3zJT6BAJIChn/KyA9NnhBKgHI6dlOiuu9DL9HuQiRe1am/M3L4KbJMeTA/DQVBRzlp8yKglUo4jO+ahQzIuabf2tOgP26/9pnqzU4QvVnI/RCfavgYFV8cIKaI+oIW4zoviYhOsmE0ivZyAyfEmG5t9HOJrmhkt2asvVCNQINQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ntdxAHXf; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-43590777e22so2912342f8f.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 12:26:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771878408; x=1772483208; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z8bBzsqIziEYSjmSpJSsy9y0lc0irt0h63PdzUZxMVg=;
        b=ntdxAHXfMHcF5qvd7zaoJ5a7DTi8b1tV9Tp9JF1uZAk+FWDPbASsJf9fgDj4KoPlQ3
         nXpJoNtFl20EAEv/AE2klnIzCKkwCNaQ5WGnX/B+/BhKMIU7Ij1FHWTamCkNS3dFtEQ8
         MGqGNH5+D1hpCjdgxBYlDJK6V9ZRaGo9L1RrcapRtbgEDM5dVuPTtQt8ZJdbpgJAUkW6
         zAKuDQOXweGIMDh9yGn8NHGdVv+ZC1Al+5+1vEIKMOSjyrZshYq+XF5QQx+B4+sZPPAJ
         wnHK26vzr0icYs01wH29nNqFmM+N8P8jW7eA6V05liTO7uqzXbgcpnNH9knVh5m7hrlt
         hg9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771878408; x=1772483208;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z8bBzsqIziEYSjmSpJSsy9y0lc0irt0h63PdzUZxMVg=;
        b=N3dRXEJR35O3mVf7gQq5chltt3sdqLDAleGuZAlHcgzKEdK3ADpkPsRthPhBEYvu+a
         p9LGhel7kZKCIgvrPTX2SFBum36lIN47ji7YkQwPiI/8IbCIPtksGzhj/mYznMD1mBy/
         YLrgThJv+BATI9NYJj9lcU+UMuhWYxW2WM3NRxRl+zg/T9BP/b2RN+HMheyYOKzVkK5u
         flNz/04IRN0EvHSlO12RzlQBGDefpDFhaAr39OYQSi+mDimTkRTLOuepZGtCvNsZnPjw
         VLJxQxXKtpH1SRwvN26XJU+IUZ0SozNRQNjAQsTedmveO3PHO0b4ReD/wp63NnqCXZ9A
         /b0A==
X-Forwarded-Encrypted: i=1; AJvYcCVCTFn29Z4tEmrjj6sth2Nr2MyVST+yrKkXAZZj9kgm2UFUk7S4RkHjtmDK+kEIW2ijUohoYjueI2D/@vger.kernel.org
X-Gm-Message-State: AOJu0YwI3vUeLNItbIKSgH/lAGDKvjhFYdvj5hbPuFZvqO6cx3f751s3
	zBbwZ8ZFdrmuX+azBdOKqDmUOurK6T3Fm+YJQ9tL9oF2VZ9tC7DVwXk8
X-Gm-Gg: ATEYQzxh6Cfz9/VUmvm6epuB/RgiQo0asYdpYLKm0gyGh4Ro4yLyZzRhqSD3Dmsrpu9
	myDeuYp0QcHfFPRId3FpcOqgKIz1oJ6yY7BBFrybqMreQTIPLhYutVLcVqEtcrDE/VIg1YZcPEa
	Wc+1P1x5Hsa1EPo2GtZk50dBGrUWBpLG0oRAE9Li1PV4MIQO5vTQ1K3Wk7MbErSLKnCkt5cZNHZ
	pKoW1iU7SUdnuv6R/M2gJLgW+kr7gyZV7aHnB3enOMl3S8pP6gHk1Twgtg/5DI2Jd5qCQyluXbO
	m6INFGnwWY3iTGD4LvSxdrbBmT3KGsOW6u2YQBVni2juZSYqCPSA5RKWB9mD5hKgosVv2ha77VO
	tU2S2OM3kNyAonkpIK4slgNAhC5ctoTortq3Ndxv0ft9ikgeJCFYtOc2ebRbkS1Zr8l3w0unHhH
	p3419pbVEKYQkbuW+XSG5jEiEtmpfmviaS5Zq09+YiA4q/pJy/ZQogDuMzOzAXQ4r1a0Hlzm6yx
	A==
X-Received: by 2002:a5d:5f48:0:b0:435:ad52:31d9 with SMTP id ffacd0b85a97d-4396f17b347mr18892804f8f.28.1771878407499;
        Mon, 23 Feb 2026 12:26:47 -0800 (PST)
Received: from [10.100.102.82] (46-116-183-56.bb.netvision.net.il. [46.116.183.56])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d54c5csm21369551f8f.38.2026.02.23.12.26.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 12:26:47 -0800 (PST)
From: Yedaya Katsman <yedaya.ka@gmail.com>
Date: Mon, 23 Feb 2026 22:26:21 +0200
Subject: [PATCH v2 2/3] drm: panel: Add Samsung S6E8FCO
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260223-panel-patches-v2-2-1b6ad471d540@gmail.com>
References: <20260223-panel-patches-v2-0-1b6ad471d540@gmail.com>
In-Reply-To: <20260223-panel-patches-v2-0-1b6ad471d540@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Kamil_Go=C5=82da?= <kamil.golda@protonmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Yedaya Katsman <yedaya.ka@gmail.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771878400; l=12122;
 i=yedaya.ka@gmail.com; s=20260113; h=from:subject:message-id;
 bh=uRSplZqP4sN3aUMGMu4f3r6Ehztv0FePePabqcg6o7c=;
 b=XufGpvzHhh9DLTbOLcz/BvOmq9LvM1M0ROHGPGthxdP5MpEJ9QhRk+eg/qoir2Ud/CFOySJoR
 hvfIqdlqttqA5AtL561iYBQFc7xtWz/zrkgheJj9Pw6TKWhgap9wHgZ
X-Developer-Key: i=yedaya.ka@gmail.com; a=ed25519;
 pk=CgNmxD3tYSws5dZfpmJfc6re/bV/f47veVijddHLytk=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267644-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[lists.sr.ht,lists.freedesktop.org,vger.kernel.org,gmail.com,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,protonmail.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ixit.cz:email]
X-Rspamd-Queue-Id: 64B9017CE78
X-Rspamd-Action: no action

Add driver for Samsung S6E8FCO DSI video mode panel, used in
Xiaomi Mi A3 mobile phone.

Co-developed-by: Kamil Gołda <kamil.golda@protonmail.com>
Signed-off-by: Kamil Gołda <kamil.golda@protonmail.com>
Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 MAINTAINERS                                   |   1 +
 drivers/gpu/drm/panel/Kconfig                 |  12 ++
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-samsung-s6e8fco.c | 293 ++++++++++++++++++++++++++
 4 files changed, 307 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 545d4cf68b9ac27765c7981e668e32cfecf3366b..238b5332eaf0e0cfb9834084e24671ccaee79939 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8187,6 +8187,7 @@ DRM DRIVER FOR SAMSUNG S6E8FCO PANELS
 M:	Yedaya Katsman <yedaya.ka@gmail.com>
 S:	Maintained
 F:	Documentation/devicetree/bindings/display/panel/samsung,s6e8fco.yaml
+F:	drivers/gpu/drm/panel/panel-samsung-s6e8fco.c
 
 DRM DRIVER FOR SAMSUNG SOFEF00 DDIC
 M:	David Heidelberg <david@ixit.cz>
diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
index 7a83804fedca1b688ce6fbe4295ec9009007e693..734640bb3f73c83e9273573aeb720ea1ba20862f 100644
--- a/drivers/gpu/drm/panel/Kconfig
+++ b/drivers/gpu/drm/panel/Kconfig
@@ -893,6 +893,18 @@ config DRM_PANEL_SAMSUNG_S6E8AA5X01_AMS561RA01
 	  ~5.6 inch AMOLED display, and the controller is driven by the MIPI
 	  DSI protocol with 4 lanes.
 
+config DRM_PANEL_SAMSUNG_S6E8FCO
+	tristate "Samsung S6E8FCO DSI video mode panel"
+	depends on OF
+	depends on BACKLIGHT_CLASS_DEVICE
+	select DRM_MIPI_DSI
+	select VIDEOMODE_HELPERS
+	help
+	  Say Y or M here if you want to enable support for the Samsung video
+	  mode panel S6E8FCO. The panel has a 6.09 inch AMOLED display, with
+	  a resolution of 720x1560.
+	  Found in the Xiaomi Mi A3 smartphone (xiaomi-laurel).
+
 config DRM_PANEL_SAMSUNG_SOFEF00
 	tristate "Samsung SOFEF00 DSI panel controller"
 	depends on OF
diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
index b9562a6fdcb38bfd0dfee9e8c11e16149ada4386..54eca60e5b57328ea94ed7880f4dead981f87fc1 100644
--- a/drivers/gpu/drm/panel/Makefile
+++ b/drivers/gpu/drm/panel/Makefile
@@ -91,6 +91,7 @@ obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E88A0_AMS427AP24) += panel-samsung-s6e88a0-ams4
 obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E88A0_AMS452EF01) += panel-samsung-s6e88a0-ams452ef01.o
 obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E8AA0) += panel-samsung-s6e8aa0.o
 obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E8AA5X01_AMS561RA01) += panel-samsung-s6e8aa5x01-ams561ra01.o
+obj-$(CONFIG_DRM_PANEL_SAMSUNG_S6E8FCO) += panel-samsung-s6e8fco.o
 obj-$(CONFIG_DRM_PANEL_SAMSUNG_SOFEF00) += panel-samsung-sofef00.o
 obj-$(CONFIG_DRM_PANEL_SEIKO_43WVF1G) += panel-seiko-43wvf1g.o
 obj-$(CONFIG_DRM_PANEL_SHARP_LQ079L1SX01) += panel-sharp-lq079l1sx01.o
diff --git a/drivers/gpu/drm/panel/panel-samsung-s6e8fco.c b/drivers/gpu/drm/panel/panel-samsung-s6e8fco.c
new file mode 100644
index 0000000000000000000000000000000000000000..7bbbe8af3e2eb9021ed7f555cb4ad2b0d7ea55ee
--- /dev/null
+++ b/drivers/gpu/drm/panel/panel-samsung-s6e8fco.c
@@ -0,0 +1,293 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (c) 2025 Kamil Gołda <kamil.golda@protonmail.com>
+// Generated with linux-mdss-dsi-panel-driver-generator from vendor device tree:
+// Copyright (c) 2025, The Linux Foundation. All rights reserved.
+
+#include <linux/backlight.h>
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/regulator/consumer.h>
+
+#include <video/mipi_display.h>
+
+#include <drm/drm_mipi_dsi.h>
+#include <drm/drm_modes.h>
+#include <drm/drm_panel.h>
+#include <drm/drm_probe_helper.h>
+
+struct s6e8fco_samsungp {
+	struct drm_panel panel;
+	struct mipi_dsi_device *dsi;
+	struct regulator_bulk_data *supplies;
+	struct gpio_desc *reset_gpio;
+};
+
+static const struct regulator_bulk_data s6e8fco_samsungp_supplies[] = {
+	{ .supply = "vddio" },
+	{ .supply = "ldo" },
+	{ .supply = "iovcc" },
+};
+
+static inline
+struct s6e8fco_samsungp *to_s6e8fco_samsungp(struct drm_panel *panel)
+{
+	return container_of_const(panel, struct s6e8fco_samsungp, panel);
+}
+
+static void s6e8fco_samsungp_reset(struct s6e8fco_samsungp *ctx)
+{
+	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
+	usleep_range(12000, 13000);
+	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+	usleep_range(2000, 3000);
+	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
+	usleep_range(10000, 11000);
+}
+
+static int s6e8fco_samsungp_on(struct s6e8fco_samsungp *ctx)
+{
+	struct mipi_dsi_multi_context dsi_ctx = { .dsi = ctx->dsi };
+
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfc, 0x5a, 0x5a);
+
+	mipi_dsi_dcs_set_display_brightness_multi(&dsi_ctx, 0x0000);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, MIPI_DCS_WRITE_CONTROL_DISPLAY,
+				     0x20);
+	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
+	mipi_dsi_msleep(&dsi_ctx, 50);
+	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
+
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb0, 0x04, 0xed);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xed,
+				     0xe4, 0x08, 0x96, 0xa4, 0x2a, 0x72, 0xe2,
+				     0xca, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfc, 0xa5, 0xa5);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x5a, 0x5a);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfc, 0x5a, 0x5a);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe1, 0x93);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb0, 0x05, 0xf4);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf4, 0x03);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xed, 0x01, 0x81, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0xa5, 0xa5);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xfc, 0xa5, 0xa5);
+
+	return dsi_ctx.accum_err;
+}
+
+static int s6e8fco_samsungp_off(struct s6e8fco_samsungp *ctx)
+{
+	struct mipi_dsi_multi_context dsi_ctx = { .dsi = ctx->dsi };
+
+
+	mipi_dsi_dcs_set_display_off_multi(&dsi_ctx);
+	mipi_dsi_msleep(&dsi_ctx, 20);
+	mipi_dsi_dcs_enter_sleep_mode_multi(&dsi_ctx);
+	mipi_dsi_msleep(&dsi_ctx, 120);
+
+	return dsi_ctx.accum_err;
+}
+
+static int s6e8fco_samsungp_prepare(struct drm_panel *panel)
+{
+	struct s6e8fco_samsungp *ctx = to_s6e8fco_samsungp(panel);
+	struct device *dev = &ctx->dsi->dev;
+	int ret;
+
+	ret = regulator_bulk_enable(ARRAY_SIZE(s6e8fco_samsungp_supplies), ctx->supplies);
+	if (ret < 0) {
+		dev_err(dev, "Failed to enable regulators: %d\n", ret);
+		return ret;
+	}
+
+	s6e8fco_samsungp_reset(ctx);
+
+	ret = s6e8fco_samsungp_on(ctx);
+	if (ret < 0) {
+		dev_err(dev, "Failed to initialize panel: %d\n", ret);
+		gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+		regulator_bulk_disable(ARRAY_SIZE(s6e8fco_samsungp_supplies), ctx->supplies);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int s6e8fco_samsungp_unprepare(struct drm_panel *panel)
+{
+	struct s6e8fco_samsungp *ctx = to_s6e8fco_samsungp(panel);
+	struct device *dev = &ctx->dsi->dev;
+	int ret;
+
+	ret = s6e8fco_samsungp_off(ctx);
+	if (ret < 0)
+		dev_err(dev, "Failed to un-initialize panel: %d\n", ret);
+
+	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+	regulator_bulk_disable(ARRAY_SIZE(s6e8fco_samsungp_supplies), ctx->supplies);
+
+	return 0;
+}
+
+static const struct drm_display_mode s6e8fco_samsungp_mode = {
+	.clock = (720 + 350 + 40 + 294) * (1560 + 17 + 2 + 5) * 60 / 1000,
+	.hdisplay = 720,
+	.hsync_start = 720 + 350,
+	.hsync_end = 720 + 350 + 40,
+	.htotal = 720 + 350 + 40 + 294,
+	.vdisplay = 1560,
+	.vsync_start = 1560 + 17,
+	.vsync_end = 1560 + 17 + 2,
+	.vtotal = 1560 + 17 + 2 + 5,
+	.width_mm = 65,
+	.height_mm = 140,
+	.type = DRM_MODE_TYPE_DRIVER,
+};
+
+static int s6e8fco_samsungp_get_modes(struct drm_panel *panel,
+				      struct drm_connector *connector)
+{
+	return drm_connector_helper_get_modes_fixed(connector, &s6e8fco_samsungp_mode);
+}
+
+static const struct drm_panel_funcs s6e8fco_samsungp_panel_funcs = {
+	.prepare = s6e8fco_samsungp_prepare,
+	.unprepare = s6e8fco_samsungp_unprepare,
+	.get_modes = s6e8fco_samsungp_get_modes,
+};
+
+static int s6e8fco_samsungp_bl_update_status(struct backlight_device *bl)
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
+static int s6e8fco_samsungp_bl_get_brightness(struct backlight_device *bl)
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
+static const struct backlight_ops s6e8fco_samsungp_bl_ops = {
+	.update_status = s6e8fco_samsungp_bl_update_status,
+	.get_brightness = s6e8fco_samsungp_bl_get_brightness,
+};
+
+static struct backlight_device *
+s6e8fco_samsungp_create_backlight(struct mipi_dsi_device *dsi)
+{
+	struct device *dev = &dsi->dev;
+	const struct backlight_properties props = {
+		.type = BACKLIGHT_RAW,
+		.brightness = 268,
+		.max_brightness = 2047,
+	};
+
+	return devm_backlight_device_register(dev, dev_name(dev), dev, dsi,
+					      &s6e8fco_samsungp_bl_ops, &props);
+}
+
+static int s6e8fco_samsungp_probe(struct mipi_dsi_device *dsi)
+{
+	struct device *dev = &dsi->dev;
+	struct s6e8fco_samsungp *ctx;
+	int ret;
+
+	ctx = devm_drm_panel_alloc(dev, struct s6e8fco_samsungp, panel,
+				   &s6e8fco_samsungp_panel_funcs,
+				   DRM_MODE_CONNECTOR_DSI);
+	if (IS_ERR(ctx))
+		return PTR_ERR(ctx);
+
+	ret = devm_regulator_bulk_get_const(dev,
+					    ARRAY_SIZE(s6e8fco_samsungp_supplies),
+					    s6e8fco_samsungp_supplies,
+					    &ctx->supplies);
+	if (ret < 0)
+		return ret;
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
+	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+			  MIPI_DSI_CLOCK_NON_CONTINUOUS;
+
+	ctx->panel.prepare_prev_first = true;
+
+	ctx->panel.backlight = s6e8fco_samsungp_create_backlight(dsi);
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
+static void s6e8fco_samsungp_remove(struct mipi_dsi_device *dsi)
+{
+	struct s6e8fco_samsungp *ctx = mipi_dsi_get_drvdata(dsi);
+	int ret;
+
+	ret = mipi_dsi_detach(dsi);
+	if (ret < 0)
+		dev_err(&dsi->dev, "Failed to detach from DSI host: %d\n", ret);
+
+	drm_panel_remove(&ctx->panel);
+}
+
+static const struct of_device_id s6e8fco_samsungp_of_match[] = {
+	{ .compatible = "samsung,s6e8fco" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, s6e8fco_samsungp_of_match);
+
+static struct mipi_dsi_driver s6e8fco_samsungp_driver = {
+	.probe = s6e8fco_samsungp_probe,
+	.remove = s6e8fco_samsungp_remove,
+	.driver = {
+		.name = "panel-samsung-s6e8fco",
+		.of_match_table = s6e8fco_samsungp_of_match,
+	},
+};
+module_mipi_dsi_driver(s6e8fco_samsungp_driver);
+
+MODULE_AUTHOR("Kamil Gołda <kamil.golda@protonmail.com>");
+MODULE_DESCRIPTION("DRM driver for s6e8fco samsung amoled video mode dsi panel");
+MODULE_LICENSE("GPL");

-- 
2.53.0


