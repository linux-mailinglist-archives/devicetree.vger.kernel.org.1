Return-Path: <devicetree+bounces-71583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4AA8D7532
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 14:05:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EC7F9281D2A
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 12:05:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A84638F98;
	Sun,  2 Jun 2024 12:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZhGzXvvK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D623B28F
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 12:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717329897; cv=none; b=hu3stg+QpDuF8SwcVs3QLoJiTEHSP0jvLT7ASL5Mv41lQGRLHy0as9S+Sl5GggcUB2gqKj4bOSVSLKuB2zb7w43efXSnNe76K5g3GS2tmIoq6hAN+ggCFtS3as9HNkM9A33Ko9D1ruNqdbuhsuPNfzYBJmARlhIihyjiqbE2VOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717329897; c=relaxed/simple;
	bh=g0HHFds0a5m+nPSqV1AB/dYMtVHavA5UQkGivvC5OrQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qL2Th0IMBDIemZY8apmtgb29dKVDJd8kQS9YLwn4oNHcQdKVvD/9i4UO9wcA8OzOJImB0JwHFgNOa3BiPJFKMLnvJuWP7xEqtxD4XJlamgcrQFhwyDrRNADqx4ZD8lAnpaFF/mnUXQLH+jlkU7G1TV5jwo27Y9Q4XsRd9c1UW1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZhGzXvvK; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52b894021cbso2608360e87.0
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2024 05:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717329893; x=1717934693; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VGU3KUiVmuFO+I88v9Ywk6Wx4j7BTcNcPl2nGJzsGdg=;
        b=ZhGzXvvKCjM/2t74OQzV3GIU+m2FIWW5Hmzoj80ywqgGRJ5HiaCN8hS8a0pz2H6vFY
         Rz2QaYzk/mQlVMdpvgOJ5qrCFh3iYff7QMmkSjHkPTOSDXW/CdakOMFq+luSdqbPxQ+x
         DEkOoAjGwmmoUSd+xCAN6LdBgUezDfcAZNS9q8SyXDsfAZns4bjPiGaEHzetmY9540AI
         5qJzxyj15cBByl7gt6BO1uE38lUOMhf+uqi2rElwMV+/JrPcGIAeZJX0B9hmWGqwau7H
         YP1472LvAMacnSg3YyLoNeIQeiYRXap/ESIlUCOm+jbl7CXsTujTsh4V4HnFt42ipNPS
         LUrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717329893; x=1717934693;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VGU3KUiVmuFO+I88v9Ywk6Wx4j7BTcNcPl2nGJzsGdg=;
        b=JFQS0hnjZryy132haVCNymtBkaayFGVOjfrpPQQJ/aHQg9sbRvjDDx+badMoG8bb2b
         fqz4CaWGR0J+AGSHjVFkXl5SuF3mdGohY0MtzO84wk8pmyMGoSV0QWK4g2e0N7/XWF3C
         rRUrQvzk0Z+DxUPk+IKAS4gIxTuJ/pw1gI7k7PgXWYYXhUG8iMvQ5Q3FH5yfXz5fR6p+
         n/pQONVCr33uP1EwgJE8brqsQDRi7jDpPMOv9kj5E42XMm2vLbhmGVEmfpf2X/s1nIBF
         t9GXb9X9iMjvhJvRSE4XAaGK0umxBzKJ/BAIQTXFBgj5Y7TeWvtgXGXC0NZcJ/KCf+o2
         txIw==
X-Forwarded-Encrypted: i=1; AJvYcCXgBjB5zDHNcDnuyCYxKWiGMqBhHtO9kSqwroRcVeNzy39GxQM/UqxCoCUUdNihWDIyNQLoLjVGS6GOFfbA+s7gS1CG5XzrjEYFQA==
X-Gm-Message-State: AOJu0YxICOAFQDfrWuLFYz4GSGFfVcAotJP0gJif9Ti+2uQyqmjX1b9K
	nEiG5TLw4ans4v4FfSSEzwO2juMUSyPPWkjpobBaKXU7F1rgYoUK8vcyGy8aWSI=
X-Google-Smtp-Source: AGHT+IF7TZ4Bpm/utFW2oKfvXnr5l8lwnBKGc7QMlT6c7QNw81zMgz7FkneTI496TxRY8A1Eax7xNw==
X-Received: by 2002:a05:6512:250:b0:523:90df:a9c6 with SMTP id 2adb3069b0e04-52b896da5f9mr4155392e87.50.1717329893396;
        Sun, 02 Jun 2024 05:04:53 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b8b56867fsm759398e87.44.2024.06.02.05.04.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jun 2024 05:04:52 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 02 Jun 2024 15:04:48 +0300
Subject: [PATCH v3 08/12] drm/imx: parallel-display: switch to
 drm_panel_bridge
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240602-drm-imx-cleanup-v3-8-e549e2a43100@linaro.org>
References: <20240602-drm-imx-cleanup-v3-0-e549e2a43100@linaro.org>
In-Reply-To: <20240602-drm-imx-cleanup-v3-0-e549e2a43100@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3514;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=g0HHFds0a5m+nPSqV1AB/dYMtVHavA5UQkGivvC5OrQ=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ1pM/N3E6kytV+tmb/OYlNH0h9MlaeGx8gffX3z6ynyX9
 caZ8vbTnYzGLAyMXAyyYoosPgUtU2M2JYd92DG1HmYQKxPIFAYuTgGYSC47+18Rn7eeLQY3ckTl
 xSu1Iz4Z/Xn5qIi1ednvXUFJtdMYbJ99PvY10Xr/1fSPWYaaitEJXFmO7/Wv1nze8PNZn9PdzYZ
 KT/QrYhfMXD91JlPxmWnrpv9T3qkhvtP92X+j1sKvcxrmPTQwcVPszZ6us+5wl17LzOXKNQZxqb
 2XjBSTKvX/adtf/OWmM4u35XdmaOqEe4WVL0vW+D8I6HdjS9HMEme5OqU7PeDBrGz3fZ6y39JdK
 xy4zMr5N9dVyuhKZz3sWVzhFNP4Mou/oeW+3obl//UizA3lts4XPrm+yI5rh2r/jIcPvr/L3NCs
 tK0pv6Rm6l7NHnVV7xLTZLdviWv4jJe6KXN/Ol8clr4UAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Defer panel handling to drm_panel_bridge, unifying codepaths for the
panel and bridge cases.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/imx/ipuv3/Kconfig            |  3 ++-
 drivers/gpu/drm/imx/ipuv3/parallel-display.c | 36 +++++++---------------------
 2 files changed, 10 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/imx/ipuv3/Kconfig b/drivers/gpu/drm/imx/ipuv3/Kconfig
index 6abcf9c833d4..f083d313d1d3 100644
--- a/drivers/gpu/drm/imx/ipuv3/Kconfig
+++ b/drivers/gpu/drm/imx/ipuv3/Kconfig
@@ -11,8 +11,9 @@ config DRM_IMX
 
 config DRM_IMX_PARALLEL_DISPLAY
 	tristate "Support for parallel displays"
-	select DRM_PANEL
 	depends on DRM_IMX
+	select DRM_BRIDGE
+	select DRM_PANEL_BRIDGE
 	select VIDEOMODE_HELPERS
 
 config DRM_IMX_TVE
diff --git a/drivers/gpu/drm/imx/ipuv3/parallel-display.c b/drivers/gpu/drm/imx/ipuv3/parallel-display.c
index 4d17fb96e77c..9ac2a94fa62b 100644
--- a/drivers/gpu/drm/imx/ipuv3/parallel-display.c
+++ b/drivers/gpu/drm/imx/ipuv3/parallel-display.c
@@ -18,7 +18,6 @@
 #include <drm/drm_bridge.h>
 #include <drm/drm_managed.h>
 #include <drm/drm_of.h>
-#include <drm/drm_panel.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_simple_kms_helper.h>
 
@@ -36,7 +35,6 @@ struct imx_parallel_display {
 	u32 bus_format;
 	u32 bus_flags;
 	struct drm_display_mode mode;
-	struct drm_panel *panel;
 	struct drm_bridge *next_bridge;
 };
 
@@ -56,10 +54,6 @@ static int imx_pd_connector_get_modes(struct drm_connector *connector)
 	struct device_node *np = imxpd->dev->of_node;
 	int num_modes;
 
-	num_modes = drm_panel_get_modes(imxpd->panel, connector);
-	if (num_modes > 0)
-		return num_modes;
-
 	if (np) {
 		struct drm_display_mode *mode = drm_mode_create(connector->dev);
 		int ret;
@@ -84,22 +78,6 @@ static int imx_pd_connector_get_modes(struct drm_connector *connector)
 	return num_modes;
 }
 
-static void imx_pd_bridge_enable(struct drm_bridge *bridge)
-{
-	struct imx_parallel_display *imxpd = bridge_to_imxpd(bridge);
-
-	drm_panel_prepare(imxpd->panel);
-	drm_panel_enable(imxpd->panel);
-}
-
-static void imx_pd_bridge_disable(struct drm_bridge *bridge)
-{
-	struct imx_parallel_display *imxpd = bridge_to_imxpd(bridge);
-
-	drm_panel_disable(imxpd->panel);
-	drm_panel_unprepare(imxpd->panel);
-}
-
 static const u32 imx_pd_bus_fmts[] = {
 	MEDIA_BUS_FMT_RGB888_1X24,
 	MEDIA_BUS_FMT_BGR888_1X24,
@@ -237,8 +215,6 @@ static const struct drm_connector_helper_funcs imx_pd_connector_helper_funcs = {
 };
 
 static const struct drm_bridge_funcs imx_pd_bridge_funcs = {
-	.enable = imx_pd_bridge_enable,
-	.disable = imx_pd_bridge_disable,
 	.atomic_reset = drm_atomic_helper_bridge_reset,
 	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
@@ -315,10 +291,14 @@ static int imx_pd_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	/* port@1 is the output port */
-	ret = drm_of_find_panel_or_bridge(np, 1, 0, &imxpd->panel,
-					  &imxpd->next_bridge);
-	if (ret && ret != -ENODEV)
-		return ret;
+	imxpd->next_bridge = devm_drm_of_get_bridge(dev, np, 1, 0);
+	if (IS_ERR(imxpd->next_bridge)) {
+		ret = PTR_ERR(imxpd->next_bridge);
+		if (ret != -ENODEV)
+			return ret;
+
+		imxpd->next_bridge = NULL;
+	}
 
 	ret = of_property_read_string(np, "interface-pix-fmt", &fmt);
 	if (!ret) {

-- 
2.39.2


