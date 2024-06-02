Return-Path: <devicetree+bounces-71581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9EA8D752D
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 14:05:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB4381C20ECB
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 12:05:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CCDB3AC1F;
	Sun,  2 Jun 2024 12:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yR3G+yxH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F19639FF4
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717329895; cv=none; b=msaSPPRXYsGSPfEGfLClIxLXKHluc1lbduBqrOfSia4l8h45Tn5oy6q+oZZaQwYYRzBmUtnLC6cFeF9BiJqJf67A/MxE2ZqdjbCFqWhteRDCtNLRXqk8TZSCUzmPlCwoSGoMlGP88Uq9wuvj7GWDHCVzS+jEEIAg8gdlxJH8YcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717329895; c=relaxed/simple;
	bh=OpWhxY1X8SkMml69I2Dn6lgdN1AEsg7Y8hzUgxz6Gx0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Dex2jRGb5Qu2B/V6hfcG5A9jq8dIm3DwSJr08up2Hea4l8OzqI7E6Z1Z6MnwqhQ+1fulNFl2pLEf6ZFQrGMAC//WwBeuCa45a16rfs1z+JGwV9b8y2kpSNv8u2FfsfSaDt4SDWat7aEPf42PtycH1com8C2kShAGlx2lC36+IqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yR3G+yxH; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2e72224c395so30877041fa.3
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2024 05:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717329891; x=1717934691; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h3z71OOWoNWZE+/hRN9KTPkL2PegZfYXg/orVwPR8kc=;
        b=yR3G+yxH1zZVtRd7Ak8JZLSvPHvWJaUZrU4AxeXS4rYU3nKHRPFH0vjFakl1cj/WxG
         zZL20SnYr3EDYZoqeSZFVxKTMB4EK9/Z7+6UwuVem3T9xklPNfyLNZ7WamHtdqlSPnXd
         KxcI5ysGt6cvJ2s4wzWC5LLvpFu+juVZSUIWVJR2DW/mASTtZUXXNohC1GCOpQoiDAmp
         PEQzn7n9UJpfIH98A7lej+CpxooT/BMs99fkloeLLurZyFokcyLhRMDnzhsZTTvRpKM0
         WWH4yyqKWRDjYZrCGcdnAGlTN9qSviVuDJ9VrN41Ehwr7V72D23DC37fKyO6uDQm92DI
         CfEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717329891; x=1717934691;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h3z71OOWoNWZE+/hRN9KTPkL2PegZfYXg/orVwPR8kc=;
        b=X+b2mldHnUJbiqRLDuNfD6RSwlkYOHeFcPfVqrtN/TSdEqPn6kc8loHq/jwahdXjCe
         2JFezljl21CKT/zjJZtZq5GWodhmE7qSnvl8H4jyUfIvGSSv0P/SA5cAl+DDl8wLC0qX
         qWysQ+h1Qs7QHKJXmjUXBn1zd4Dx3HtI2Xlu5fp3CcoB2+3gSOk/GFdb8oi3w0J9UogR
         Y3tW26slyJ7eAhAdMbIdaOfCx51y5lXjUETl3zQdFp29GutPGxwEb8N+N5TICzIyIluV
         mXmazNDIuR9582Nmxi9KzT0BuwQqYpaI43u91q/xqBpM5g2oyj5HnlLcCIo8eUT99XrM
         C2ZA==
X-Forwarded-Encrypted: i=1; AJvYcCXypE9OychnJjBFMlkYhmfOVslSN7d6rv18zcCuHMOYP4NSVWDd6bTin8+cXX3eT6PzAOSKC3NfTyCfy3A5ZdJOjSiwuxQNvTk+hQ==
X-Gm-Message-State: AOJu0YzuhkjbX2+vHalUbVD3nOlNRj1eb582S++YGyKUICQw+B3dom/h
	tFfQilTNgme0Qoh7tXl8HTxacuzxTWcVT5wrI9AxIPKKY4f+23xrCJAFlS8Oa1A=
X-Google-Smtp-Source: AGHT+IEU1T1JPwAyrMO5IbBAXktjwF9BMNKR9KPMqWrnmSSf9vVuZkPir8wiF0D+duaCctX822ai1w==
X-Received: by 2002:a05:6512:b24:b0:523:8cd3:42cb with SMTP id 2adb3069b0e04-52b8957ff7cmr4204463e87.7.1717329891515;
        Sun, 02 Jun 2024 05:04:51 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b8b56867fsm759398e87.44.2024.06.02.05.04.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jun 2024 05:04:51 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 02 Jun 2024 15:04:46 +0300
Subject: [PATCH v3 06/12] drm/imx: ldb: drop custom DDC bus support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240602-drm-imx-cleanup-v3-6-e549e2a43100@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4225;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=OpWhxY1X8SkMml69I2Dn6lgdN1AEsg7Y8hzUgxz6Gx0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmXF/dvzraZ7ctB4FChev2m27M7qCFXal54iU0h
 YugcsfUMBiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlxf3QAKCRCLPIo+Aiko
 1dQHCACQB3JwnhGjzPIYoevRPyg+W/8rjb+b4FiGCX+8kr4tglyyDGDSnXk3TUYYOIH6n2zC0RH
 LkkwktFI2o9qKaRhqVxLe27I7goSpmnC0mPwKCoOFj5OumAxioG+Yr/QDUsuwsmw3h+NMODYwEo
 gmIxHDx3DQ4M9HKdiMgLzoAyK5qOluYntgRSjeFQnYW0ailrYrcufrco7bdLl67alAiN6AcvNJ7
 FH0eg2FEpb6RdAavpMCIYXfAZHZ0Ti6Y2ssjWXo4cjxcXsFg9Oo5IV1O1QLU8AE+DWuX+LkrtWi
 7eO+NGUo1rAm68FAuK5z66cLuVS1LQTHEFw8cuoOfgtEKfAz
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

None of the boards ever supported by the upstream kernel used the custom
DDC bus support with the LDB connector. If a need arises to do so, one
should use panel-simple and its DDC bus code. Drop ddc-i2c-bus support
from the imx-ldb driver.

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/imx/ipuv3/imx-ldb.c | 73 +++++--------------------------------
 1 file changed, 10 insertions(+), 63 deletions(-)

diff --git a/drivers/gpu/drm/imx/ipuv3/imx-ldb.c b/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
index 1924d8921c62..3f669604377e 100644
--- a/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
+++ b/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
@@ -25,7 +25,6 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
-#include <drm/drm_edid.h>
 #include <drm/drm_managed.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
@@ -70,7 +69,6 @@ struct imx_ldb_channel {
 	struct drm_bridge *bridge;
 
 	struct device_node *child;
-	struct i2c_adapter *ddc;
 	int chno;
 	struct drm_display_mode mode;
 	int mode_valid;
@@ -141,18 +139,6 @@ static int imx_ldb_connector_get_modes(struct drm_connector *connector)
 	if (num_modes > 0)
 		return num_modes;
 
-	if (imx_ldb_ch->ddc) {
-		const struct drm_edid *edid = drm_edid_read_ddc(connector,
-								imx_ldb_ch->ddc);
-
-		if (edid) {
-			drm_edid_connector_update(connector, edid);
-			drm_edid_free(edid);
-
-			return drm_edid_connector_add_modes(connector);
-		}
-	}
-
 	if (imx_ldb_ch->mode_valid) {
 		struct drm_display_mode *mode;
 
@@ -481,10 +467,9 @@ static int imx_ldb_register(struct drm_device *drm,
 		 */
 		drm_connector_helper_add(connector,
 					 &imx_ldb_connector_helper_funcs);
-		drm_connector_init_with_ddc(drm, connector,
-					    &imx_ldb_connector_funcs,
-					    DRM_MODE_CONNECTOR_LVDS,
-					    imx_ldb_ch->ddc);
+		drm_connector_init(drm, connector,
+				   &imx_ldb_connector_funcs,
+				   DRM_MODE_CONNECTOR_LVDS);
 		drm_connector_attach_encoder(connector, encoder);
 	}
 
@@ -551,39 +536,6 @@ static const struct of_device_id imx_ldb_dt_ids[] = {
 };
 MODULE_DEVICE_TABLE(of, imx_ldb_dt_ids);
 
-static int imx_ldb_panel_ddc(struct device *dev,
-		struct imx_ldb_channel *channel, struct device_node *child)
-{
-	struct device_node *ddc_node;
-	int ret;
-
-	ddc_node = of_parse_phandle(child, "ddc-i2c-bus", 0);
-	if (ddc_node) {
-		channel->ddc = of_find_i2c_adapter_by_node(ddc_node);
-		of_node_put(ddc_node);
-		if (!channel->ddc) {
-			dev_warn(dev, "failed to get ddc i2c adapter\n");
-			return -EPROBE_DEFER;
-		}
-	}
-
-	if (!channel->ddc) {
-		/* if no DDC available, fallback to hardcoded EDID */
-		dev_dbg(dev, "no ddc available\n");
-
-		if (!channel->panel) {
-			/* fallback to display-timings node */
-			ret = of_get_drm_display_mode(child,
-						      &channel->mode,
-						      &channel->bus_flags,
-						      OF_USE_NATIVE_MODE);
-			if (!ret)
-				channel->mode_valid = 1;
-		}
-	}
-	return 0;
-}
-
 static int imx_ldb_bind(struct device *dev, struct device *master, void *data)
 {
 	struct drm_device *drm = data;
@@ -694,11 +646,15 @@ static int imx_ldb_probe(struct platform_device *pdev)
 		if (ret && ret != -ENODEV)
 			goto free_child;
 
-		/* panel ddc only if there is no bridge */
-		if (!channel->bridge) {
-			ret = imx_ldb_panel_ddc(dev, channel, child);
+		if (!channel->bridge && !channel->panel) {
+			ret = of_get_drm_display_mode(child,
+						      &channel->mode,
+						      &channel->bus_flags,
+						      OF_USE_NATIVE_MODE);
 			if (ret)
 				goto free_child;
+
+			channel->mode_valid = 1;
 		}
 
 		bus_format = of_get_bus_format(dev, child);
@@ -732,15 +688,6 @@ static int imx_ldb_probe(struct platform_device *pdev)
 
 static void imx_ldb_remove(struct platform_device *pdev)
 {
-	struct imx_ldb *imx_ldb = platform_get_drvdata(pdev);
-	int i;
-
-	for (i = 0; i < 2; i++) {
-		struct imx_ldb_channel *channel = &imx_ldb->channel[i];
-
-		i2c_put_adapter(channel->ddc);
-	}
-
 	component_del(&pdev->dev, &imx_ldb_ops);
 }
 

-- 
2.39.2


