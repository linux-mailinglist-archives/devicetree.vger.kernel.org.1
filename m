Return-Path: <devicetree+bounces-49816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 519F0877ED9
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 12:20:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 74F411C21110
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 11:20:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64C273A1CD;
	Mon, 11 Mar 2024 11:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A1B/1d6k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598433A1C9
	for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 11:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710156048; cv=none; b=VQw4rM3CZYCdYXL4Zzk8VxpcnknEQlcU8/QZT/Q816D5glYJhh45kS4gxSBziGWRI6GCVicmZgrMzIoPgJi3KJw2U6CO3XDiaTGWvQIvx0fHPWUGahrvj2BgAg4pYqgBtC9WRgrkubVQbMH9oYiB/tFsc1flBkFezPSviBeTaV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710156048; c=relaxed/simple;
	bh=tuqhthD0wjId065PEfgLTntUyAjkA53+U+9j/aDpxnU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r7xRqXF5/J17aG0U8jbbfHfOjE5BTVSsjVcLkrjSVjOlYV50om/XyfPpLdUQUbDUqBuph/ymq9FnwarN+Hprl1I4vWqIyTyU1Vi8UCyASpR1oTDyXNhQw9lrqWCYqYN+emscu27XaT8ersvoulqN0VRHh3sWjH71Kmv1mfS++tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A1B/1d6k; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2d2991e8c12so40233631fa.0
        for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 04:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710156044; x=1710760844; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gQrqHaLGIND2BZg43nPVGmV36Lb8S+V9//5yRGyhuc4=;
        b=A1B/1d6khAPoLWmSsKFNT+3oaNFHFV8RxA2fyy8cGz9Rzde2QKGW9HD79oCdI3Eogg
         U3/4XFkHUinqlmQISiYEKMcD9XG/GTBQNym00VK3Xr0GgLW8P07/5n3cMS0o4nlUR7Zb
         Zny7ZLS/r0mH4pJ8OU4ltisDfZBu2qvioGkAi8RyNy3gMVisjFpO8xhyBKAg4UKshNHk
         2pGC1pjMGnsAYZoB0GImY3Y6y3/QF1Wm3OWUE/Xcc0GqbaYX7u02MJhhSJswwudIeHQx
         Zx2kuxpCBbZNG8TlALHH9YMU9ArjfOYt1f9IJIrDxA/+yWoYifxe4phF6Y+bataPOJ84
         lJnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710156044; x=1710760844;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gQrqHaLGIND2BZg43nPVGmV36Lb8S+V9//5yRGyhuc4=;
        b=e6eJbQXyCF91Wt1gzjx5zuZR7a2n8999LXW70KzSy/xBqVSA/B0aNxE754zB3OBPVH
         HYHInmMkx5jUPwkksq5/O50gvf2CuqUQE/N86YdHPd6sGHMYhW1YUm01/HjuqTzx162u
         q+pUiz/8wAScLFJD4RqYBA9MOH7m5hSEh7G0zjGkx6CyPckZ2vMxn1nMsVDzSectqtK0
         dSEPQusup3Bj09o92F60PAHDzXaUhAW4KVTzh7oK2X9ao02G4J+dIfDQNUm4BHKvQtHQ
         lgr1cEjxnPUsDTxiNW1Ac3JhZVpwrZqykawZJb7Pnz0i4dIF+BMRBjig1QRaXOAijY+S
         8alg==
X-Forwarded-Encrypted: i=1; AJvYcCUcWhiNEXRIctffeKUPgmb/e6Fv5eL7ciZ3lp9j9ffoyv4Log6lo3Dija0Uiu6KkCYEUaqKQ0DOiKKsj9RGeYfT+iADKkAulhKT6A==
X-Gm-Message-State: AOJu0YzzEUTIkXdnI7U9TreV610c8F68OXe9aC0odrHDGj2egJAVAmlU
	E7dAu4Iq+h+Io1HaOsn05GfK7S9Wrq6yKaEcNRu9Jl9Q/CYAoaByuHEbL6Ns/8s=
X-Google-Smtp-Source: AGHT+IH6UahIcH0xokwgC7YJw7isfzx6l8sVfamAGKfOqjY8LOUzxiZzIWKs2Nzu6jrVlAhbY6hHJA==
X-Received: by 2002:a2e:9c06:0:b0:2d2:31a8:cb1a with SMTP id s6-20020a2e9c06000000b002d231a8cb1amr1858765lji.13.1710156044598;
        Mon, 11 Mar 2024 04:20:44 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id by10-20020a05651c1a0a00b002d2aa0b0d01sm1075200ljb.82.2024.03.11.04.20.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 04:20:44 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 11 Mar 2024 13:20:15 +0200
Subject: [PATCH 07/12] drm/imx: ldb: switch to drm_panel_bridge
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240311-drm-imx-cleanup-v1-7-e104f05caa51@linaro.org>
References: <20240311-drm-imx-cleanup-v1-0-e104f05caa51@linaro.org>
In-Reply-To: <20240311-drm-imx-cleanup-v1-0-e104f05caa51@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4608;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=tuqhthD0wjId065PEfgLTntUyAjkA53+U+9j/aDpxnU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBl7ukEmhT2g9v70pVpRjRRLZO32HM8uH873G4o0
 jbzBvbpyEaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZe7pBAAKCRCLPIo+Aiko
 1TO3CACoX3ore58uBQubmaeZX8paIziCF9nJNUNQw1M6qI4YJt24XMx4KTE1rP1N0ERtW36OhF3
 JSPEZKvuvF4Vad7qPhkOIWVvnfLdAlPnTBzXpq/i16Sck8cKpYiLrcyw1O+VaCYJV4ji2ZW+2Pm
 UNfneiaArfU7I/wp/kCJuFGuesJH/CRIi9VYoOshitCjE29rsGcRHqJ/7o1xD0bgLYavkxqlELb
 xnbA6U+X86xaFV5p7Rui1hs/qiUWrkEo9wAIBl/OWPQ8IbIds40CJaZ/+uGiBvfR1SJUVFUhkLp
 8EAuK7OnT8wCfWs3qqOtdU8v98W20yDUBiU5CLcly6Y8uTcu
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Defer panel handling to drm_panel_bridge, unifying codepaths for the
panel and bridge cases.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/imx/ipuv3/Kconfig   |  2 ++
 drivers/gpu/drm/imx/ipuv3/imx-ldb.c | 44 ++++++++++++-------------------------
 2 files changed, 16 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/imx/ipuv3/Kconfig b/drivers/gpu/drm/imx/ipuv3/Kconfig
index bacf0655ebaf..4e41611c8532 100644
--- a/drivers/gpu/drm/imx/ipuv3/Kconfig
+++ b/drivers/gpu/drm/imx/ipuv3/Kconfig
@@ -28,7 +28,9 @@ config DRM_IMX_LDB
 	tristate "Support for LVDS displays"
 	depends on DRM_IMX && MFD_SYSCON
 	depends on COMMON_CLK
+	depends on DRM_BRIDGE
 	select DRM_PANEL
+	select DRM_PANEL_BRIDGE
 	help
 	  Choose this to enable the internal LVDS Display Bridge (LDB)
 	  found on i.MX53 and i.MX6 processors.
diff --git a/drivers/gpu/drm/imx/ipuv3/imx-ldb.c b/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
index 380edc1c4507..74b41a507219 100644
--- a/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
+++ b/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
@@ -28,7 +28,6 @@
 #include <drm/drm_edid.h>
 #include <drm/drm_managed.h>
 #include <drm/drm_of.h>
-#include <drm/drm_panel.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_simple_kms_helper.h>
@@ -65,8 +64,6 @@ struct imx_ldb;
 struct imx_ldb_channel {
 	struct imx_ldb *ldb;
 
-	/* Defines what is connected to the ldb, only one at a time */
-	struct drm_panel *panel;
 	struct drm_bridge *bridge;
 
 	struct device_node *child;
@@ -136,10 +133,6 @@ static int imx_ldb_connector_get_modes(struct drm_connector *connector)
 	struct imx_ldb_channel *imx_ldb_ch = con_to_imx_ldb_ch(connector);
 	int num_modes;
 
-	num_modes = drm_panel_get_modes(imx_ldb_ch->panel, connector);
-	if (num_modes > 0)
-		return num_modes;
-
 	if (imx_ldb_ch->mode_valid) {
 		struct drm_display_mode *mode;
 
@@ -194,8 +187,6 @@ static void imx_ldb_encoder_enable(struct drm_encoder *encoder)
 		return;
 	}
 
-	drm_panel_prepare(imx_ldb_ch->panel);
-
 	if (dual) {
 		clk_set_parent(ldb->clk_sel[mux], ldb->clk[0]);
 		clk_set_parent(ldb->clk_sel[mux], ldb->clk[1]);
@@ -234,8 +225,6 @@ static void imx_ldb_encoder_enable(struct drm_encoder *encoder)
 	}
 
 	regmap_write(ldb->regmap, IOMUXC_GPR2, ldb->ldb_ctrl);
-
-	drm_panel_enable(imx_ldb_ch->panel);
 }
 
 static void
@@ -312,8 +301,6 @@ static void imx_ldb_encoder_disable(struct drm_encoder *encoder)
 	int dual = ldb->ldb_ctrl & LDB_SPLIT_MODE_EN;
 	int mux, ret;
 
-	drm_panel_disable(imx_ldb_ch->panel);
-
 	if (imx_ldb_ch == &ldb->channel[0] || dual)
 		ldb->ldb_ctrl &= ~LDB_CH0_MODE_EN_MASK;
 	if (imx_ldb_ch == &ldb->channel[1] || dual)
@@ -347,8 +334,6 @@ static void imx_ldb_encoder_disable(struct drm_encoder *encoder)
 		dev_err(ldb->dev,
 			"unable to set di%d parent clock to original parent\n",
 			mux);
-
-	drm_panel_unprepare(imx_ldb_ch->panel);
 }
 
 static int imx_ldb_encoder_atomic_check(struct drm_encoder *encoder,
@@ -641,13 +626,15 @@ static int imx_ldb_probe(struct platform_device *pdev)
 		 * The output port is port@4 with an external 4-port mux or
 		 * port@2 with the internal 2-port mux.
 		 */
-		ret = drm_of_find_panel_or_bridge(child,
-						  imx_ldb->lvds_mux ? 4 : 2, 0,
-						  &channel->panel, &channel->bridge);
-		if (ret && ret != -ENODEV)
-			goto free_child;
+		channel->bridge = devm_drm_of_get_bridge(dev, child,
+						imx_ldb->lvds_mux ? 4 : 2, 0);
+		if (IS_ERR(channel->bridge)) {
+			ret = PTR_ERR(channel->bridge);
+			if (ret != -ENODEV)
+				goto free_child;
+
+			channel->bridge = NULL;
 
-		if (!channel->bridge && !channel->panel) {
 			ret = of_get_drm_display_mode(child,
 						      &channel->mode,
 						      &channel->bus_flags,
@@ -659,15 +646,12 @@ static int imx_ldb_probe(struct platform_device *pdev)
 		}
 
 		bus_format = of_get_bus_format(dev, child);
-		if (bus_format == -EINVAL) {
-			/*
-			 * If no bus format was specified in the device tree,
-			 * we can still get it from the connected panel later.
-			 */
-			if (channel->panel && channel->panel->funcs &&
-			    channel->panel->funcs->get_modes)
-				bus_format = 0;
-		}
+		/*
+		 * If no bus format was specified in the device tree,
+		 * we can still get it from the connected panel later.
+		 */
+		if (bus_format == -EINVAL && channel->bridge)
+			bus_format = 0;
 		if (bus_format < 0) {
 			dev_err(dev, "could not determine data mapping: %d\n",
 				bus_format);

-- 
2.39.2


