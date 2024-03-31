Return-Path: <devicetree+bounces-54963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 580008935D6
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 22:29:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0F18E28498E
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 20:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDE72148301;
	Sun, 31 Mar 2024 20:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hkfv1XtR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46C31487F3
	for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 20:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711916957; cv=none; b=O1+AA9srOptVvs7eAEnYcbjLNyC96x5NEoVaoIXJ+7w5oQHRnZNmSE6Hu9qAOM0fZAegbFV0Gp6HuD2BbCLgcf2uzo0kFAVifdRfHZxllSn8XOy3UvWN1df86oOATJxIFvCfSJblrwVU6JBFRXC1c2ensSJzK1mVSQZk05m9iC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711916957; c=relaxed/simple;
	bh=wCR/6yF/tFKpX9FJhDNMZrhn6GuaANblaXvQmkNgmv4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UjlTJcE4rYh73XVU6MAV4KpTUwyq/USxScHPkcPjf7ZGJ4+RV+/VoYSdvYwkcFZzyeN9T/SQ2ul5jVlihn1K+VkJ7rVtG3m5BJi1+RwOjNJEE5dgnxoN8R1zzYNq0jbgWVdHueYrkWSFRqWB85M2aJp02zDMnwhQSluwpQ5PvKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hkfv1XtR; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-515a81928a1so5557187e87.3
        for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 13:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711916954; x=1712521754; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DlukG6NazrK3+fQsiPdyfNNrXjjyinPofxN9OGJ7wFk=;
        b=hkfv1XtRRsG1ilDkAY4SIpr69Y5It3gUxn4ci84fWSj0WDLqiuKkvTCY3XHk1loFur
         UEDGj9ucNChqDVMTLpx/rJZ+jIiQ+GZVUhFejtL8ZNgnRhY77cMMjT4MsX8gXTqYeOrI
         y3VcQdL4ylzPwq6HNK8ZHUzHg33WQQDcvexCACtArWFFmeVipfaRua5a/mpSqyoc0lyi
         logESVGYuPs86oidDGFyYlllL1Hk2i19C1aS9PgIMeiz0e0vSVwri8YwhEoX5AujToT7
         sRp3cnIGIEKZ0v3xUHXmqobguZGqDO1Op/CCRbd8B9BpxnNmskNsj0hTxx6/UA8YSo9h
         SkbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711916954; x=1712521754;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DlukG6NazrK3+fQsiPdyfNNrXjjyinPofxN9OGJ7wFk=;
        b=tZAzJkQn1DUWYY3Uw97cdfRhGJHMN9dpZaiLTkTe8uGdXmYYjH3UgLu5XtZAAl0nW6
         BQCYXRgGygBKQwayssHxPcMldDn6YmmSCfCYFx7eeGTrxZASI6sVHsKRdb3wSlQ/iAOk
         2Zkse/YqOdLWcR6yNa6dP144Bv0SIZhFtvkl3iORPWB6wl1UW8edA5bLoZN7spzT7OXx
         UAko1OzJN/Qge3atNg9J7hMaeA6urfymcjYLuVftvYsrgPF6+5eZLBX2sPHS3wwqZhle
         2V/LPyq9e9N2nOHu7cZhKV/JASVOWA7te2lysxwKIkTmeViTX8i4g6OeK/lfm7BoLt3M
         XSTA==
X-Forwarded-Encrypted: i=1; AJvYcCXASbVxdnDioqLvhqgjIynCMhEEWuy4I/0fj9IuYEjLqvh/YJMC+GuFth4Xj4KjoR1BWSnFSV8OHJ/iRWtjRZoJeuExG5zVtn4vFQ==
X-Gm-Message-State: AOJu0YxOA3a0Dz8HLUZQ+9xGyX2MM7OHbIMcuY3xFlegTx0ahA5chHar
	rs0kb/AVpTqmTWcNXUXaA2htpEZ5P6PBlzXqmpjk7MOOqotitBxx+5FmYxe29ag=
X-Google-Smtp-Source: AGHT+IEb9HdxB5JpSZgAa1LRt6P6K+00fdYiB+zAaY3yLBteTgO+6wYn/j1n5X7T5tM0rh52h2pkLA==
X-Received: by 2002:a05:6512:695:b0:516:a2e5:c2eb with SMTP id t21-20020a056512069500b00516a2e5c2ebmr3542883lfe.6.1711916954002;
        Sun, 31 Mar 2024 13:29:14 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y25-20020a197519000000b00513cfc2a7aesm1237276lfe.71.2024.03.31.13.29.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Mar 2024 13:29:13 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 31 Mar 2024 23:29:07 +0300
Subject: [PATCH v2 10/12] drm/imx: ldb: switch to imx_legacy_bridge /
 drm_bridge_connector
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240331-drm-imx-cleanup-v2-10-d81c1d1c1026@linaro.org>
References: <20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org>
In-Reply-To: <20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=6987;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=wCR/6yF/tFKpX9FJhDNMZrhn6GuaANblaXvQmkNgmv4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmCceQNApwF5LP12j95l7YB8CRPBqexgZsa/00t
 PWEfryMhquJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgnHkAAKCRCLPIo+Aiko
 1V7qB/4waoMKeeS3egXxxVBBqzflTLL0ZbaJFZM3gkb4QuurCfqrYT60s7JqiAoOrA+0c43PQnl
 DRj74GZ4/erLmUxV/fqwIyf5QX8E+XAvPdEc1ZVbVoAT7gP6ZVV6pzsOupRx6NnsQsuVhRDhOr3
 wiuLn2eSIgu6Jc15CtZwAWjSTOWlO1T4AoOu/pKC+BwpOCRpR2zhWydzPPdTgLLazin2uhTSmHO
 w+c/mDfAbxuXTqWvxbUxV+Cu8SKtSbugcQMHd9w4BA44oZKqSva0ZgWcmrG/YpaJsk8TAidNZGz
 TWkS6Jhsg0JiXEPGZ3DgHMHIGX4lhmIx3Q3yv5iVv7WgdoQp
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Use the imx_legacy bridge driver instead of handlign display modes via
the connector node.

All existing usecases already support attaching using
the DRM_BRIDGE_ATTACH_NO_CONNECTOR flag, while the imx_legacy bridge
doesn't support creating connector at all. Switch to
drm_bridge_connector at the same time.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/imx/ipuv3/Kconfig   |   1 +
 drivers/gpu/drm/imx/ipuv3/imx-ldb.c | 103 ++++++++++--------------------------
 2 files changed, 30 insertions(+), 74 deletions(-)

diff --git a/drivers/gpu/drm/imx/ipuv3/Kconfig b/drivers/gpu/drm/imx/ipuv3/Kconfig
index 8aaf2441bcef..3e5c0f4a1d0d 100644
--- a/drivers/gpu/drm/imx/ipuv3/Kconfig
+++ b/drivers/gpu/drm/imx/ipuv3/Kconfig
@@ -33,6 +33,7 @@ config DRM_IMX_LDB
 	depends on DRM_BRIDGE
 	select DRM_PANEL
 	select DRM_PANEL_BRIDGE
+	select DRM_IMX_LEGACY_BRIDGE
 	help
 	  Choose this to enable the internal LVDS Display Bridge (LDB)
 	  found on i.MX53 and i.MX6 processors.
diff --git a/drivers/gpu/drm/imx/ipuv3/imx-ldb.c b/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
index 74b41a507219..10e608f0b040 100644
--- a/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
+++ b/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
@@ -19,18 +19,17 @@
 #include <linux/regmap.h>
 #include <linux/videodev2.h>
 
-#include <video/of_display_timing.h>
-#include <video/of_videomode.h>
-
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
+#include <drm/drm_bridge_connector.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_managed.h>
 #include <drm/drm_of.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_simple_kms_helper.h>
+#include <drm/bridge/imx.h>
 
 #include "imx-drm.h"
 
@@ -54,7 +53,6 @@
 struct imx_ldb_channel;
 
 struct imx_ldb_encoder {
-	struct drm_connector connector;
 	struct drm_encoder encoder;
 	struct imx_ldb_channel *channel;
 };
@@ -68,17 +66,9 @@ struct imx_ldb_channel {
 
 	struct device_node *child;
 	int chno;
-	struct drm_display_mode mode;
-	int mode_valid;
 	u32 bus_format;
-	u32 bus_flags;
 };
 
-static inline struct imx_ldb_channel *con_to_imx_ldb_ch(struct drm_connector *c)
-{
-	return container_of(c, struct imx_ldb_encoder, connector)->channel;
-}
-
 static inline struct imx_ldb_channel *enc_to_imx_ldb_ch(struct drm_encoder *e)
 {
 	return container_of(e, struct imx_ldb_encoder, encoder)->channel;
@@ -128,25 +118,6 @@ static void imx_ldb_ch_set_bus_format(struct imx_ldb_channel *imx_ldb_ch,
 	}
 }
 
-static int imx_ldb_connector_get_modes(struct drm_connector *connector)
-{
-	struct imx_ldb_channel *imx_ldb_ch = con_to_imx_ldb_ch(connector);
-	int num_modes;
-
-	if (imx_ldb_ch->mode_valid) {
-		struct drm_display_mode *mode;
-
-		mode = drm_mode_duplicate(connector->dev, &imx_ldb_ch->mode);
-		if (!mode)
-			return -EINVAL;
-		mode->type |= DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
-		drm_mode_probed_add(connector, mode);
-		num_modes++;
-	}
-
-	return num_modes;
-}
-
 static void imx_ldb_set_clock(struct imx_ldb *ldb, int mux, int chno,
 		unsigned long serial_clk, unsigned long di_clk)
 {
@@ -348,11 +319,12 @@ static int imx_ldb_encoder_atomic_check(struct drm_encoder *encoder,
 	/* Bus format description in DT overrides connector display info. */
 	if (!bus_format && di->num_bus_formats) {
 		bus_format = di->bus_formats[0];
-		imx_crtc_state->bus_flags = di->bus_flags;
 	} else {
 		bus_format = imx_ldb_ch->bus_format;
-		imx_crtc_state->bus_flags = imx_ldb_ch->bus_flags;
 	}
+
+	imx_crtc_state->bus_flags = di->bus_flags;
+
 	switch (bus_format) {
 	case MEDIA_BUS_FMT_RGB666_1X7X3_SPWG:
 		imx_crtc_state->bus_format = MEDIA_BUS_FMT_RGB666_1X18;
@@ -372,18 +344,6 @@ static int imx_ldb_encoder_atomic_check(struct drm_encoder *encoder,
 }
 
 
-static const struct drm_connector_funcs imx_ldb_connector_funcs = {
-	.fill_modes = drm_helper_probe_single_connector_modes,
-	.destroy = imx_drm_connector_destroy,
-	.reset = drm_atomic_helper_connector_reset,
-	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
-	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
-};
-
-static const struct drm_connector_helper_funcs imx_ldb_connector_helper_funcs = {
-	.get_modes = imx_ldb_connector_get_modes,
-};
-
 static const struct drm_encoder_helper_funcs imx_ldb_encoder_helper_funcs = {
 	.atomic_mode_set = imx_ldb_encoder_atomic_mode_set,
 	.enable = imx_ldb_encoder_enable,
@@ -421,7 +381,6 @@ static int imx_ldb_register(struct drm_device *drm,
 		return PTR_ERR(ldb_encoder);
 
 	ldb_encoder->channel = imx_ldb_ch;
-	connector = &ldb_encoder->connector;
 	encoder = &ldb_encoder->encoder;
 
 	ret = imx_drm_encoder_parse_of(drm, encoder, imx_ldb_ch->child);
@@ -440,24 +399,16 @@ static int imx_ldb_register(struct drm_device *drm,
 
 	drm_encoder_helper_add(encoder, &imx_ldb_encoder_helper_funcs);
 
-	if (imx_ldb_ch->bridge) {
-		ret = drm_bridge_attach(encoder, imx_ldb_ch->bridge, NULL, 0);
-		if (ret)
-			return ret;
-	} else {
-		/*
-		 * We want to add the connector whenever there is no bridge
-		 * that brings its own, not only when there is a panel. For
-		 * historical reasons, the ldb driver can also work without
-		 * a panel.
-		 */
-		drm_connector_helper_add(connector,
-					 &imx_ldb_connector_helper_funcs);
-		drm_connector_init(drm, connector,
-				   &imx_ldb_connector_funcs,
-				   DRM_MODE_CONNECTOR_LVDS);
-		drm_connector_attach_encoder(connector, encoder);
-	}
+	ret = drm_bridge_attach(encoder, imx_ldb_ch->bridge, NULL,
+				DRM_BRIDGE_ATTACH_NO_CONNECTOR);
+	if (ret)
+		return ret;
+
+	connector = drm_bridge_connector_init(drm, encoder);
+	if (IS_ERR(connector))
+		return PTR_ERR(connector);
+
+	drm_connector_attach_encoder(connector, encoder);
 
 	return 0;
 }
@@ -632,17 +583,7 @@ static int imx_ldb_probe(struct platform_device *pdev)
 			ret = PTR_ERR(channel->bridge);
 			if (ret != -ENODEV)
 				goto free_child;
-
 			channel->bridge = NULL;
-
-			ret = of_get_drm_display_mode(child,
-						      &channel->mode,
-						      &channel->bus_flags,
-						      OF_USE_NATIVE_MODE);
-			if (ret)
-				goto free_child;
-
-			channel->mode_valid = 1;
 		}
 
 		bus_format = of_get_bus_format(dev, child);
@@ -659,6 +600,20 @@ static int imx_ldb_probe(struct platform_device *pdev)
 			goto free_child;
 		}
 		channel->bus_format = bus_format;
+
+		/*
+		 * legacy bridge doesn't handle bus_format, so create it after
+		 * checking the bus_format property.
+		 */
+		if (!channel->bridge) {
+			channel->bridge = devm_imx_drm_legacy_bridge(dev, child,
+								     DRM_MODE_CONNECTOR_LVDS);
+			if (IS_ERR(channel->bridge)) {
+				ret = PTR_ERR(channel->bridge);
+				goto free_child;
+			}
+		}
+
 		channel->child = child;
 	}
 

-- 
2.39.2


