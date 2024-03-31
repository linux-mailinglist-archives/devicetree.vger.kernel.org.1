Return-Path: <devicetree+bounces-54960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9C98935D3
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 22:29:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 575841F22542
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 20:29:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F9B71487DF;
	Sun, 31 Mar 2024 20:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TYdw3GlA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 803E21487CC
	for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 20:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711916955; cv=none; b=Oqr/NUa+U10IlDTMO6PnGe79Jp2UOFXgH5bjQXLWws+11CL24dosp8ZJL+MeEd44UvL6Cv3DM1neAqn2ScNv+7/8B3kde2g2gkkFWEEJ6lqPte7U5kmIwPBhvPnJyhPgVJuc0GuVaLUMggyxE4v89HB7yrIdzdp2oMBJxVViHHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711916955; c=relaxed/simple;
	bh=tuqhthD0wjId065PEfgLTntUyAjkA53+U+9j/aDpxnU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RYhQ2q+DiGPHISk56pwMEyEWwRP1jYbBCxLSGdH4tucqIpHYzQrYSCNErvvHPQlc+5Yf9SUHKdp9gQFYKK0RqIFo+sVm9bANvHPF+EM0AlryAXdAqo0/cyqIf3X/jbWuoY3+H7NFAZRQRKzvpH2XaMC4YEWBkn8jqDW/TNDn8OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TYdw3GlA; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-513cf9bacf1so4286467e87.0
        for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 13:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711916951; x=1712521751; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gQrqHaLGIND2BZg43nPVGmV36Lb8S+V9//5yRGyhuc4=;
        b=TYdw3GlAC4HDtGmsij9lpX5Io6k1KPQwyBl2cE+jz2Ys8ul3TzTQ7v89DAMCCZXb9n
         SQcujtI9KLDW1nzE43Kw6Ui5XBVtdfwLBs9n151lURCcWIR16yRoCvAfesTD6gfR2jFF
         aF53tManhF35fbjSIjX4RxRsR64RHZ1dMWSTj7/n7dEecHANO/s8hwcywgYhDttcZHfk
         jMGoS6p9D96wg5TNObBU6kqtUqa6RGmk/3VJdEqeaap4QS8w0DOj82+xTmT2THBPSqx1
         /Ply+pR6GPH+UwVaZAuxwzrF/wZaA5aIdEIR/RER26cvAGobW8ZESXAVH7sFyLe/xp0D
         6uiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711916951; x=1712521751;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gQrqHaLGIND2BZg43nPVGmV36Lb8S+V9//5yRGyhuc4=;
        b=Z/jLgvmIHttTMpxqBwr7u1hhSHhxg/j+0t8V+83dj6kY/0IeB61wj7UM1Tgy3zii7D
         Z/bm5srX4P12iPdRF6yon1GUdNWChMvl1tHI11do5bezjol8tOkNVyyBB1oAa1thllYV
         qAt7ODlx3iM6+n22vjUsYEuxxaA4mdVE07sraOHUBf5USqtXwLib2c3T4WCe7eibrLOf
         fBUayoDu+Eie6bySFLv36BdttEtqsVeXyJLea9uA0ItMOcbs++G9hxcXFlGeDIwtSTqt
         sWOc61DYOqWi/R/BHbkjwZ0Sk9DUppaoBN8bzC698lI/dTwbmgAzndCeDkmITmwjRGzx
         wN9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVWuHyYTznnzY1Nur5LoxF1f2aYkXTiP/2zj+zsZScDOCaDGn2F3xlOg6aCAYXuNfeveoaH6JQ5yv8ZKfQq7pYM8x5b75vPX2+Udw==
X-Gm-Message-State: AOJu0YxCQxWFKBfc/MsjdzPV/BbhNgoTxcWH0sxO/LxqRjst21Be9lpy
	o+k8jQ4XeyXU3BofZbvaZuR9wz2slSDWebnHo76K+U0VvKpXLIoRFgjhALpndpo=
X-Google-Smtp-Source: AGHT+IHZNFdB+w9oA8iYXNkzEeRTXt8zG0fBDfgfV65ywZXBtAV3nCgeam9/v6yOR4pyFiyWnAJI5w==
X-Received: by 2002:ac2:5d71:0:b0:513:c9ca:1333 with SMTP id h17-20020ac25d71000000b00513c9ca1333mr4717198lft.22.1711916951660;
        Sun, 31 Mar 2024 13:29:11 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y25-20020a197519000000b00513cfc2a7aesm1237276lfe.71.2024.03.31.13.29.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Mar 2024 13:29:11 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 31 Mar 2024 23:29:04 +0300
Subject: [PATCH v2 07/12] drm/imx: ldb: switch to drm_panel_bridge
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240331-drm-imx-cleanup-v2-7-d81c1d1c1026@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4608;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=tuqhthD0wjId065PEfgLTntUyAjkA53+U+9j/aDpxnU=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQxrn8f7H+6tj33apnt/0L1MhgCHDR3ON7c4f6uf0krauW
 m/qYJTcyWjMwsDIxSArpsjiU9AyNWZTctiHHVPrYQaxMoFMYeDiFICJBN9h/2cqLFQ1J7K8OK58
 dnlS8fKZPrrHFofLJBdzBu+wVDghqLdnd622otx3F+73Wxp6ZkisZFdYuv2Xmc7hePNZ82ZG7NJ
 awV7jdEhuwfmL33bczzLWdGoVfZipfE44a2Zswa4g3VU29k8mTNH6kc49MaRrm8CBGVpPCp2DNl
 1eVM7iWawzpVyEYSXjGsPAycaZgr/FKrT8Hz1U54n/KBxareI027z9CN+0+cdibwiK/Yz4e2DaD
 hZ18avVy2f0W6umHE26I81lmaTbFGi/bp7khSj3MPb+D84hXRFXMi3n7luhVdZ1cp9mzvbfQm7M
 mXY5ua/PfZtaz7Er7d35imPujadDZr+Yxnx0/5Psw/m/AQ==
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


