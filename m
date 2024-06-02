Return-Path: <devicetree+bounces-71582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BED8D7530
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 14:05:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A99D4281E1E
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 12:05:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 268313B2A1;
	Sun,  2 Jun 2024 12:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CACta6ud"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF53376EC
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 12:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717329896; cv=none; b=R7g04XX8YHcl/TxjX2iu8mmdg7/nnvvy6jOCxZM+ikxi4oaQXXx9g6LCil7HPulNk8oyMkXcUcMHyoFGAoCNGhOp1X/timzTDe+MJp1mPANrAZfeoKItAovE96B01YtFGPZVYRYk8F2177oxzVDxuPQKzHTbCwKlTzPlHI8aNME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717329896; c=relaxed/simple;
	bh=WBClGWrNVswdIn4UlsSFs/7q2W6RzczPr0uXKZRLUaE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=o3V8ZpNcyc33CG7sLfrC5TS/rU7+NKC/bEWPI/cLD8JrM3d13mgNXCqhZ9s6EjA+hNCUudf98qNPlHheSI6LroKtaH1JY8J8qJswbxJAwIH9uEUdMeOghQroMzAbqIsCmjx3UupravpGWbtl6diTdfQT5P9/lQb11zYiRiuNH80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CACta6ud; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52b88740a93so2385703e87.3
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2024 05:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717329892; x=1717934692; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gC4tSJBea8UmW/N+lhpg1fIpD1gqTE3H4TGkKQw6PNs=;
        b=CACta6udpkLqRQFBrI1L/1wEJHFve6zF9Bj2OcIonE0K7S2117JFt9gFmZIs/sRqzd
         kejj5Tyv4Yhaka6BRxFij6hnB0QDTPUNnQJPaXG/DIH9F7QZN2FaDI4oFKeiPFanb3d1
         v7/8NtifKOATzIUV6A3wB2jgBSEerqUACe729dm5V37N6WgJr5+1mlJshbTukbnPBGQP
         GAqAI+wGD0mG5lNlmhBWvXQTT9rkyw5DBi6j/R3cLX5O17G9Kk9NZ9zIOYiWuc/NB33q
         JmyiAxJFDjZ4rPnueYLNke07Y59U0yTcp6EGPI+SMBuzlJmeSphW7MX7OKYf7R+YixxA
         TTVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717329892; x=1717934692;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gC4tSJBea8UmW/N+lhpg1fIpD1gqTE3H4TGkKQw6PNs=;
        b=bIBInvbJZGvPzkFmd9mI7256xQ+P/prO8OTk8293B1Eo9NQ1L3zywJJjnvaUK/+hls
         4QO0P+hERLVXp+dGzAT2xdMbNGHdYnZkjgrMDqivHbWl8QYBPuvfs3/yZIw9tJaLH7dR
         S0NhIpfbWVHVbxPbsqu2eUZoc/r18zogfO+q9R7ldSR3Yc4Cmck8IhSneqYyNlYWwHL9
         piHXazjLxNJDbgYsx12z+djE9fThkcO6I1D2j5FLcsDVFkxXnrmikUliEakWIk0MebAx
         lUcqDES++4NMDi/z2vpZnYFt2BCBPkrXFApzGj6M5sag63JGipTn7KFS4WaS2D0ytsJ/
         VVdw==
X-Forwarded-Encrypted: i=1; AJvYcCVzDFwl5/lCzFt+4jzfC3xDS0TTE4daZZGDQ+mSg+mAjoj5e4o8DRhy0fAl+FMozb5xBciB2pdRge7vkrJuePHhPTuupJZ7O1lH5g==
X-Gm-Message-State: AOJu0Yw9I65A7OE9X46jQoPXWb6bfIf6s39DMfMEF6uqXsg3hFAwlGPj
	GOU7XGfAvrpzuHAxbAcnY2YlwYGdM7KCFtCiAZt8hMIgWvm45Og5HKOLw8XHtss=
X-Google-Smtp-Source: AGHT+IHXq2dXnaN4xvg4VJ6ZhYzE3eiC4TjSwrCDwgXw0dsCBzUpfF8VdkGxF7KGe/zlEOchf5dRmQ==
X-Received: by 2002:a19:7708:0:b0:51d:3f07:c93c with SMTP id 2adb3069b0e04-52b89560924mr4547518e87.3.1717329892477;
        Sun, 02 Jun 2024 05:04:52 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b8b56867fsm759398e87.44.2024.06.02.05.04.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jun 2024 05:04:51 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 02 Jun 2024 15:04:47 +0300
Subject: [PATCH v3 07/12] drm/imx: ldb: switch to drm_panel_bridge
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240602-drm-imx-cleanup-v3-7-e549e2a43100@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4752;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=WBClGWrNVswdIn4UlsSFs/7q2W6RzczPr0uXKZRLUaE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmXF/dMKaGCWF4xzbQpN9kDrjKai+DQFg5AY1OU
 B3N3BGopfKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlxf3QAKCRCLPIo+Aiko
 1W8bB/0W9wht582BaLK/4++Mstz6lJY9J8D8p9faJd+tTSYsGFkysEZkXrFJ3nZhT6mNGzNkRQ6
 QXSlyP4rfJ1d3lmEYkjo8fN09pK9Sp+lx8c4+F7Kvp7ck8Y/1OeMIu/LitOdjJW3trxUGqD2u8I
 uocvla1K0+SsLtT1KrA/z9bh/OFaXpX7DIMbjB3hce0HIv0BIT/adoGSrinENUDL/uRN1i8/wl1
 nd4klFahiXtNXeALmLY7inN9GTE/cThbtJyX3Uz48ReTPC+hjdRO8GVmXmWx7HPyMpTZwXpNEOa
 9XT024wPuNoOU5VQ5xKjJ8rPzjXFeI9wvCpCHkXx2E+UgVpc
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Defer panel handling to drm_panel_bridge, unifying codepaths for the
panel and bridge cases. The MFD_SYSCON symbol is moved to select to
prevent Kconfig symbol loops.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/imx/ipuv3/Kconfig   |  6 +++--
 drivers/gpu/drm/imx/ipuv3/imx-ldb.c | 44 ++++++++++++-------------------------
 2 files changed, 18 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/imx/ipuv3/Kconfig b/drivers/gpu/drm/imx/ipuv3/Kconfig
index bacf0655ebaf..6abcf9c833d4 100644
--- a/drivers/gpu/drm/imx/ipuv3/Kconfig
+++ b/drivers/gpu/drm/imx/ipuv3/Kconfig
@@ -26,9 +26,11 @@ config DRM_IMX_TVE
 
 config DRM_IMX_LDB
 	tristate "Support for LVDS displays"
-	depends on DRM_IMX && MFD_SYSCON
+	depends on DRM_IMX
 	depends on COMMON_CLK
-	select DRM_PANEL
+	select MFD_SYSCON
+	select DRM_BRIDGE
+	select DRM_PANEL_BRIDGE
 	help
 	  Choose this to enable the internal LVDS Display Bridge (LDB)
 	  found on i.MX53 and i.MX6 processors.
diff --git a/drivers/gpu/drm/imx/ipuv3/imx-ldb.c b/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
index 3f669604377e..bc7ad9697130 100644
--- a/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
+++ b/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
@@ -27,7 +27,6 @@
 #include <drm/drm_bridge.h>
 #include <drm/drm_managed.h>
 #include <drm/drm_of.h>
-#include <drm/drm_panel.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_simple_kms_helper.h>
@@ -64,8 +63,6 @@ struct imx_ldb;
 struct imx_ldb_channel {
 	struct imx_ldb *ldb;
 
-	/* Defines what is connected to the ldb, only one at a time */
-	struct drm_panel *panel;
 	struct drm_bridge *bridge;
 
 	struct device_node *child;
@@ -135,10 +132,6 @@ static int imx_ldb_connector_get_modes(struct drm_connector *connector)
 	struct imx_ldb_channel *imx_ldb_ch = con_to_imx_ldb_ch(connector);
 	int num_modes;
 
-	num_modes = drm_panel_get_modes(imx_ldb_ch->panel, connector);
-	if (num_modes > 0)
-		return num_modes;
-
 	if (imx_ldb_ch->mode_valid) {
 		struct drm_display_mode *mode;
 
@@ -193,8 +186,6 @@ static void imx_ldb_encoder_enable(struct drm_encoder *encoder)
 		return;
 	}
 
-	drm_panel_prepare(imx_ldb_ch->panel);
-
 	if (dual) {
 		clk_set_parent(ldb->clk_sel[mux], ldb->clk[0]);
 		clk_set_parent(ldb->clk_sel[mux], ldb->clk[1]);
@@ -233,8 +224,6 @@ static void imx_ldb_encoder_enable(struct drm_encoder *encoder)
 	}
 
 	regmap_write(ldb->regmap, IOMUXC_GPR2, ldb->ldb_ctrl);
-
-	drm_panel_enable(imx_ldb_ch->panel);
 }
 
 static void
@@ -311,8 +300,6 @@ static void imx_ldb_encoder_disable(struct drm_encoder *encoder)
 	int dual = ldb->ldb_ctrl & LDB_SPLIT_MODE_EN;
 	int mux, ret;
 
-	drm_panel_disable(imx_ldb_ch->panel);
-
 	if (imx_ldb_ch == &ldb->channel[0] || dual)
 		ldb->ldb_ctrl &= ~LDB_CH0_MODE_EN_MASK;
 	if (imx_ldb_ch == &ldb->channel[1] || dual)
@@ -346,8 +333,6 @@ static void imx_ldb_encoder_disable(struct drm_encoder *encoder)
 		dev_err(ldb->dev,
 			"unable to set di%d parent clock to original parent\n",
 			mux);
-
-	drm_panel_unprepare(imx_ldb_ch->panel);
 }
 
 static int imx_ldb_encoder_atomic_check(struct drm_encoder *encoder,
@@ -640,13 +625,15 @@ static int imx_ldb_probe(struct platform_device *pdev)
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
@@ -658,15 +645,12 @@ static int imx_ldb_probe(struct platform_device *pdev)
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


