Return-Path: <devicetree+bounces-264225-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id jUucKWSziml5NAAAu9opvQ
	(envelope-from <devicetree+bounces-264225-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 05:26:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 167E4116DE8
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 05:26:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BFB98301AAA8
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 04:26:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55F7D32938E;
	Tue, 10 Feb 2026 04:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZCBNhGL7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB51328B6E
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 04:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770697568; cv=none; b=h2+pQVI6T/PyLaahOx8nbHHiPdkgUPpuO+3xBdk9CJTM5GriPgb3iR5xd5iad4bh3fd/Qoco32euSPgd9z1ZyScVhnf2ykW+XiJJK6bibw//ktPxkzm7mmYZsrFxs5gUWY1U4BS0xAM03l6pCbkF0fUnPPLOecc6pAxJGccxiFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770697568; c=relaxed/simple;
	bh=0cehoiF+LeRMcMf53vGsEVdrDjG+5EcgrNV4UdY9iKQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ufv3udHSFgDxpanAY3zz0rrc7mEsQ7z/wb/9fDNykcsyhwtFNQmerq1SzFHbJndvlO248vjrYbV1eLL1w2BHrKRWG6wg8QG79kc/US7GBN9fRNq6sj6w/s7Q6GYg+jcgy4k5Ik8yhd7yMaqXtOi9FMxQ096D8Aarmd8AJmm4uTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZCBNhGL7; arc=none smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-89505dd3e24so4778596d6.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 20:26:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770697565; x=1771302365; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xkvDh+Ip1a6JKTNI1QXMWzj5kobaSbU+xjkIWMQm41A=;
        b=ZCBNhGL7Ph0Fklo4Ph/6htm8mK6bY++EcW0iqHmII6bfbjWisipDGAIohUulQGULqv
         9KqHXxT8rXdJcjE8v/j2VqFf3qxRCdXlanQgJXPFCOeQPiOy+56YR+9W1mSJH60qPDAr
         izRS1iP138XpHWiuftUweQO52JjGMFap94ludwcW2Idtyvrb4E8R6KvZPufSIzPelOT3
         5DaWYT6fOlvBJ/JVKr54tJZ5mPyDfjhGzAA7r5bLlMtmCsjT5MWDXTcj9RLTEueVFIz/
         /wxg7nXNdpXkqqU6EiW6QHh1+gifE2zazyc68k3eOS95Kx1FQ7GE7zDqCA4qXV/zVoh8
         GmYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770697565; x=1771302365;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xkvDh+Ip1a6JKTNI1QXMWzj5kobaSbU+xjkIWMQm41A=;
        b=AlYlCOzJn6D8UrKfcPIumE4Ea4N8D79q3dPVYlCdbiIUWbZ1UDLF1onaMbiQhNymLx
         80V7akN3Pz6ltEXng2rEBBclnM3IANK7iYhsqcGe6fcvfDitErdFibslqx/415LQr625
         8X4iNaw/CW301snL1lI5nuc1UVn7rgxmfaQTandJb+AKl94iCXnEAnKl5lFcChXJl99w
         yWI4m/426ha6aDi7TogEB4sMGHjPEkCO6LprVacov4icpSDyi+8Tj/Wzw1OkqQGsRRjL
         dfVcfa6LO2Q8jThQfvScKcDCXKepMJMHkEop42oC1yrZAEgqMOymMCZkMEe7zVoXDno7
         5V7w==
X-Forwarded-Encrypted: i=1; AJvYcCXPzbK11AewvsElPtEN7j2iBLLWcuiOQcymK0d0NNMjKPEKdVD0U3/JeYv2hLuCkwOKfkkfybHKcQsB@vger.kernel.org
X-Gm-Message-State: AOJu0YzlbLFYSJrE9aQBxx5ninRLFnXfZJ26Nu+pPZFfccu7dK0iSmSt
	TDpAKLDOR/phQAtcOTQOsEO1WDkiiBZ9C/in1fVCnDVZqX8W8V6qxRsqNf84Qg==
X-Gm-Gg: AZuq6aKaOYHg+D0LSGGb52hFqQCSLC7V2utswrss5/SfbcMDg567M8Uun0dj0eXVD3m
	r29/ZSXnTLfXXqJ8PBGXwOmof5yjGAeRceP6T6NgNu3ih3Zusj+0YajgHd/8U7MDa5tBYK8KiTo
	9j16duzRRsr++1MSzt6F/llGS0RNt5MTCO/7JcI+HcWlAa6ZUqAybb+lslnCfjRba6dyxYDWxPd
	gcE+pUK19swgaqOqpijnh6HjqxfBHX6dqH3+fSthtpD53M8aU5OEYu1h8CyXuu5lMJct2zw3Lhv
	CxS6Wx5gEuydawO+0M3TA4Zgt3EPo536VMXK2JkUxR1cS1MfDobVtdF4EuPFMdzG5RqRvB7YrlZ
	DAfo3gnm1+V+uFLg/b9MhBwawunJfji8aBrEj1BAXsfQHE/O1PDudQkI/jTvJNF6YFAdKDmkw4f
	k1zIwOoFh3JhGxw7UtCyaYsmmaFfU4hU2UR5XxPzwukxA/xRcgUTIXt6W44sInbX0dJVJWhVsv2
	ebgD4Oi1M2IIz8=
X-Received: by 2002:a05:6214:c2a:b0:88f:d216:6fef with SMTP id 6a1803df08f44-8953cf9e74cmr207501076d6.50.1770690752145;
        Mon, 09 Feb 2026 18:32:32 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-896fd0f4019sm38243316d6.1.2026.02.09.18.32.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 18:32:31 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Cc: yifei@zhan.science,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH 3/6] drm/panel: Add Novatek/Tianma NT37700F panel
Date: Mon,  9 Feb 2026 21:32:57 -0500
Message-ID: <20260210023300.15785-4-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260210023300.15785-1-mailingradian@gmail.com>
References: <20260210023300.15785-1-mailingradian@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264225-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,ravnborg.org,vger.kernel.org,lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[zhan.science,gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 167E4116DE8
X-Rspamd-Action: no action

Some Pixel 3a XL devices have a Tianma panel. Add support for it, with
the aid of linux-mdss-dsi-panel-driver-generator.

Link: https://github.com/msm8916-mainline/linux-mdss-dsi-panel-driver-generator
Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-novatek-nt37700f.c    | 294 ++++++++++++++++++
 3 files changed, 304 insertions(+)
 create mode 100644 drivers/gpu/drm/panel/panel-novatek-nt37700f.c

diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
index 76f6af819037..138d617e8195 100644
--- a/drivers/gpu/drm/panel/Kconfig
+++ b/drivers/gpu/drm/panel/Kconfig
@@ -553,6 +553,15 @@ config DRM_PANEL_NOVATEK_NT36672E
 	  LCD panel module. The panel has a resolution of 1080x2408 and uses 24 bit
 	  RGB per pixel.
 
+config DRM_PANEL_NOVATEK_NT37700F
+	tristate "Novatek NT37700F DSI panel"
+	depends on OF
+	depends on DRM_MIPI_DSI
+	depends on BACKLIGHT_CLASS_DEVICE
+	help
+	  Say Y here if you want to enable support for Novatek NT37700F DSI
+	  panel module. The panel has a resolution of 1080x2160.
+
 config DRM_PANEL_NOVATEK_NT37801
 	tristate "Novatek NT37801/NT37810 AMOLED DSI panel"
 	depends on OF
diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
index b9562a6fdcb3..9218a7d7ff34 100644
--- a/drivers/gpu/drm/panel/Makefile
+++ b/drivers/gpu/drm/panel/Makefile
@@ -54,6 +54,7 @@ obj-$(CONFIG_DRM_PANEL_NOVATEK_NT35950) += panel-novatek-nt35950.o
 obj-$(CONFIG_DRM_PANEL_NOVATEK_NT36523) += panel-novatek-nt36523.o
 obj-$(CONFIG_DRM_PANEL_NOVATEK_NT36672A) += panel-novatek-nt36672a.o
 obj-$(CONFIG_DRM_PANEL_NOVATEK_NT36672E) += panel-novatek-nt36672e.o
+obj-$(CONFIG_DRM_PANEL_NOVATEK_NT37700F) += panel-novatek-nt37700f.o
 obj-$(CONFIG_DRM_PANEL_NOVATEK_NT37801) += panel-novatek-nt37801.o
 obj-$(CONFIG_DRM_PANEL_NOVATEK_NT39016) += panel-novatek-nt39016.o
 obj-$(CONFIG_DRM_PANEL_MANTIX_MLAF057WE51) += panel-mantix-mlaf057we51.o
diff --git a/drivers/gpu/drm/panel/panel-novatek-nt37700f.c b/drivers/gpu/drm/panel/panel-novatek-nt37700f.c
new file mode 100644
index 000000000000..491f1f30ce41
--- /dev/null
+++ b/drivers/gpu/drm/panel/panel-novatek-nt37700f.c
@@ -0,0 +1,294 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2024, The Linux Foundation. All rights reserved.
+ * Generated with linux-mdss-dsi-panel-driver-generator from vendor device tree:
+ *   Copyright (c) 2013, The Linux Foundation. All rights reserved.
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
+#include <drm/drm_probe_helper.h>
+
+struct nt37700f_tianma {
+	struct drm_panel panel;
+	struct mipi_dsi_device *dsi;
+	struct gpio_desc *reset_gpio;
+};
+
+static inline
+struct nt37700f_tianma *to_nt37700f_tianma(struct drm_panel *panel)
+{
+	return container_of(panel, struct nt37700f_tianma, panel);
+}
+
+static void nt37700f_tianma_reset(struct nt37700f_tianma *ctx)
+{
+	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+	usleep_range(1000, 2000);
+	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
+	usleep_range(10000, 11000);
+}
+
+static int nt37700f_tianma_on(struct nt37700f_tianma *ctx)
+{
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct mipi_dsi_multi_context dsi_ctx = { .dsi = dsi };
+
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x08, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc0, 0x56);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xca, 0x52);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x06);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb5, 0x2b, 0x1a);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x08, 0x01);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xcd, 0x04, 0x82);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x08, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xcc, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xff, 0xaa, 0x55, 0xa5, 0x80);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x55);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf6, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x56);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf6, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xff, 0xaa, 0x55, 0xa5, 0x81);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x07);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf3, 0x07);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x05);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf3, 0x25);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x90, 0x01);
+
+	mipi_dsi_dcs_set_column_address_multi(&dsi_ctx, 0x0000, 0x0437);
+	mipi_dsi_dcs_set_page_address_multi(&dsi_ctx, 0x0000, 0x086f);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, MIPI_DCS_WRITE_CONTROL_DISPLAY, 0x20);
+	mipi_dsi_dcs_set_tear_on_multi(&dsi_ctx, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
+
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x08, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xc0, 0x56);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x08, 0x02);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xcd, 0x00);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x55, 0xaa, 0x52, 0x08, 0x04);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xd0, 0x11, 0x64);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x6f, 0x09);
+	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xb1, 0x20);
+
+	mipi_dsi_dcs_exit_sleep_mode_multi(&dsi_ctx);
+	mipi_dsi_msleep(&dsi_ctx, 120);
+	mipi_dsi_dcs_set_display_on_multi(&dsi_ctx);
+
+	return dsi_ctx.accum_err;
+}
+
+static int nt37700f_tianma_disable(struct drm_panel *panel)
+{
+	struct nt37700f_tianma *ctx = to_nt37700f_tianma(panel);
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	struct device *dev = &dsi->dev;
+	int ret;
+
+	ret = mipi_dsi_dcs_set_display_off(dsi);
+	if (ret < 0) {
+		dev_err(dev, "Failed to set display off: %d\n", ret);
+		return ret;
+	}
+	msleep(50);
+
+	ret = mipi_dsi_dcs_enter_sleep_mode(dsi);
+	if (ret < 0) {
+		dev_err(dev, "Failed to enter sleep mode: %d\n", ret);
+		return ret;
+	}
+	msleep(100);
+
+	return 0;
+}
+
+static int nt37700f_tianma_prepare(struct drm_panel *panel)
+{
+	struct nt37700f_tianma *ctx = to_nt37700f_tianma(panel);
+	struct device *dev = &ctx->dsi->dev;
+	int ret;
+
+	nt37700f_tianma_reset(ctx);
+
+	ret = nt37700f_tianma_on(ctx);
+	if (ret < 0) {
+		dev_err(dev, "Failed to initialize panel: %d\n", ret);
+		gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int nt37700f_tianma_unprepare(struct drm_panel *panel)
+{
+	struct nt37700f_tianma *ctx = to_nt37700f_tianma(panel);
+
+	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+
+	return 0;
+}
+
+static const struct drm_display_mode nt37700f_tianma_mode = {
+	.clock = (1080 + 32 + 32 + 98) * (2160 + 32 + 4 + 98) * 60 / 1000,
+	.hdisplay = 1080,
+	.hsync_start = 1080 + 32,
+	.hsync_end = 1080 + 32 + 32,
+	.htotal = 1080 + 32 + 32 + 98,
+	.vdisplay = 2160,
+	.vsync_start = 2160 + 32,
+	.vsync_end = 2160 + 32 + 4,
+	.vtotal = 2160 + 32 + 4 + 98,
+	.width_mm = 69,
+	.height_mm = 137,
+	.type = DRM_MODE_TYPE_DRIVER,
+};
+
+static int nt37700f_tianma_get_modes(struct drm_panel *panel,
+				     struct drm_connector *connector)
+{
+	return drm_connector_helper_get_modes_fixed(connector, &nt37700f_tianma_mode);
+}
+
+static const struct drm_panel_funcs nt37700f_tianma_panel_funcs = {
+	.prepare = nt37700f_tianma_prepare,
+	.unprepare = nt37700f_tianma_unprepare,
+	.disable = nt37700f_tianma_disable,
+	.get_modes = nt37700f_tianma_get_modes,
+};
+
+static int nt37700f_tianma_bl_update_status(struct backlight_device *bl)
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
+// TODO: Check if /sys/class/backlight/.../actual_brightness actually returns
+// correct values. If not, remove this function.
+static int nt37700f_tianma_bl_get_brightness(struct backlight_device *bl)
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
+static const struct backlight_ops nt37700f_tianma_bl_ops = {
+	.update_status = nt37700f_tianma_bl_update_status,
+	.get_brightness = nt37700f_tianma_bl_get_brightness,
+};
+
+static struct backlight_device *
+nt37700f_tianma_create_backlight(struct mipi_dsi_device *dsi)
+{
+	struct device *dev = &dsi->dev;
+	const struct backlight_properties props = {
+		.type = BACKLIGHT_RAW,
+		.brightness = 2047,
+		.max_brightness = 2047,
+	};
+
+	return devm_backlight_device_register(dev, dev_name(dev), dev, dsi,
+					      &nt37700f_tianma_bl_ops, &props);
+}
+
+static int nt37700f_tianma_probe(struct mipi_dsi_device *dsi)
+{
+	struct device *dev = &dsi->dev;
+	struct nt37700f_tianma *ctx;
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
+	drm_panel_init(&ctx->panel, dev, &nt37700f_tianma_panel_funcs,
+		       DRM_MODE_CONNECTOR_DSI);
+	ctx->panel.prepare_prev_first = true;
+
+	ctx->panel.backlight = nt37700f_tianma_create_backlight(dsi);
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
+static void nt37700f_tianma_remove(struct mipi_dsi_device *dsi)
+{
+	struct nt37700f_tianma *ctx = mipi_dsi_get_drvdata(dsi);
+	int ret;
+
+	ret = mipi_dsi_detach(dsi);
+	if (ret < 0)
+		dev_err(&dsi->dev, "Failed to detach from DSI host: %d\n", ret);
+
+	drm_panel_remove(&ctx->panel);
+}
+
+static const struct of_device_id nt37700f_tianma_of_match[] = {
+	{ .compatible = "novatek,nt37700f" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, nt37700f_tianma_of_match);
+
+static struct mipi_dsi_driver nt37700f_tianma_driver = {
+	.probe = nt37700f_tianma_probe,
+	.remove = nt37700f_tianma_remove,
+	.driver = {
+		.name = "panel-novatek-nt37700f",
+		.of_match_table = nt37700f_tianma_of_match,
+	},
+};
+module_mipi_dsi_driver(nt37700f_tianma_driver);
+
+MODULE_DESCRIPTION("DRM driver for nt37700f cmd mode dsi tianma panel");
+MODULE_LICENSE("GPL");
-- 
2.53.0


