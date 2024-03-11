Return-Path: <devicetree+bounces-49815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D14877ED8
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 12:20:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7609D1C21612
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 11:20:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A50B3B2BE;
	Mon, 11 Mar 2024 11:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z553uYT5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 856153A8C1
	for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 11:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710156047; cv=none; b=nPclTjmJzyyHVJ46J5tmdfupwlFu2fqrKRksAeVobBzutv4UJCoFgtUCc1x32853skWYoF5aBoZEjIJOg5uqsxXQq3m6IsOHJsYzzd55sRX6DlUDYMWEDX5NbQcOIWG9Wn42IBbzgXWXkBr92T3VlomuA514uqKsam5uW9b/4ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710156047; c=relaxed/simple;
	bh=m11CFuEduJHyQCwHyCLs0Yco+X7++CQ3XEHXdiz1Oro=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UFaxLyE5D7tqemh/NhlI4lpA1ESinDe8hMCKm2m90b2IFl3pZkWfa0lb2aPVaxO+zymYN1NK+OdlH0fotMDV7glqIavmvQ3xQ7DHQR3F9bD90+Jzxnony0PiioS1K2D/0WF4pFHAsHQRrMlypKRahVOZSNW+R0uUW/smaY5bXJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z553uYT5; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2d309a23d76so45159681fa.1
        for <devicetree@vger.kernel.org>; Mon, 11 Mar 2024 04:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710156044; x=1710760844; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hSjZJV2J4iFvn9E2c3TLDDuj0HnPcaUsZUNdMjQiU+w=;
        b=z553uYT5ANIF3CWQwa67K8k3zL49DC3Fh9U1jyKup7Y9NpufK97t7N1aHFiRR56RBu
         6inE86Xyl1H2ifl9dhWFg8dQDBdJb7Rx5ZOoZ1TapEZ+F3NpVjrAutsdX0DRKANwdygx
         CD7bf5x6I62ihkGsNNZf79QuqF71Wf5W24HvLXI8i6V7GKpKtgbEC63UxHpzIKe/V0c6
         ItF8KfrFCNbyKE8hjBce8fOQrWbd4xJLv+MqH8ZThF5Kr53on4zBr0Zg3hbYUZptbUPy
         2MND652rrviyERPtxA97tiV2tg2Xlww+tH/WTb3ZwqxoovtAIpTk3Cz/nAEW41dnzLAH
         jbLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710156044; x=1710760844;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hSjZJV2J4iFvn9E2c3TLDDuj0HnPcaUsZUNdMjQiU+w=;
        b=LDR1CpmlFe/CexCjlsXchTXg80dxvGB/1RdMOZxMeTZtfpBWUzFWidUf3UoaPkcIna
         Vx4yTDe5IJsfUi9Ejsb5dj/L3irt8BOMoiT1Wnnlu/CmbzXrdMLfB3rCJJUxL6G+6SP8
         Q7lbsv+F4CgdEnxCjFADYaYIXUMhqrYgXysjw9TP8LP0pMZHU7ysED37/COL0pcztCZD
         UxzuOqq8GtmA+Fk/iQYZ0+HeVf1FFtCG6CAr6mvaGpiJEOfjGcwTQcJigupkPX6Fs5tR
         irrOCsGaWaJEWeX2AZLvbH1aLGaFsDwvOyA5Sb21BPxGz30HzYvvG3XZR2RjzDv+fY+f
         YBcg==
X-Forwarded-Encrypted: i=1; AJvYcCXpu/stogvLQTCOjikrEcmtjIN+Qqf5JIf4M3Ub1B58EcFt1hevk4HeP3hd++9M4lmVXql6xh5enR0zZ4f2WrGzKBrFEfYMMVWjLA==
X-Gm-Message-State: AOJu0Yy6Sg442mvFQ7oEvG9FM/utSVc+kak3Eo9gVt7weyb7xT2Fbpfw
	XaD7yGzClakXOUCOG5jhbJXvcbOiKexXOneuKUE6VGp8YqAAjWdaLzE65aOxmwIHmIhvJbdKIyM
	P
X-Google-Smtp-Source: AGHT+IGVBBPOzyokNgjue9WKbIEUBC9+ZEPyPANqxr2XeItpXiFyzfNywUSOajCNnI5OsBJpltZThw==
X-Received: by 2002:a05:651c:10d4:b0:2d4:2839:96e7 with SMTP id l20-20020a05651c10d400b002d4283996e7mr2218502ljn.20.1710156043819;
        Mon, 11 Mar 2024 04:20:43 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id by10-20020a05651c1a0a00b002d2aa0b0d01sm1075200ljb.82.2024.03.11.04.20.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Mar 2024 04:20:43 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 11 Mar 2024 13:20:14 +0200
Subject: [PATCH 06/12] drm/imx: ldb: drop custom DDC bus support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240311-drm-imx-cleanup-v1-6-e104f05caa51@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3942;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=m11CFuEduJHyQCwHyCLs0Yco+X7++CQ3XEHXdiz1Oro=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ+q7lyzZwW55NbIlAr7rdxgeZNY/9dh1/4JwdolFL7V/h
 4b+77PsZDRmYWDkYpAVU2TxKWiZGrMpOezDjqn1MINYmUCmMHBxCsBEnnuz/2bVrK7gyG7Mncuq
 H1LIKPtxQZDpfUF14RK+hz+kDRKerLg2feeXWZwF/1+bvWHM5qnX0pYpNedy1Jl0cL9rvG/g/83
 1miVHWRnc/181Syx8soApbnkp8xLNtm3SW4wZEpzf27nkNqvaTK1QvP5daI5/o9NV1pxbvxvVV2
 yfsTPslprKsXe39rSc3et5KjanUJKlWenjorqJZ+YIHL0as5vPK7j2oPPOA0XJHAv882KNtu0ql
 39+ktnxxv/HZ6PNEmf1st3deWBWgkytXjfn4vubvfxDejR60v4IvNbWOdnh6LL8q+KPXSu+n2tx
 jfu8/ri8ytUPKcHlIX+yW01aNvw8u0jogWzWMhuRVYEhAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

None of the boards ever supported by the upstream kernel used the custom
DDC bus support with the LDB connector. If a need arises to do so, one
should use panel-simple and its DDC bus code. Drop ddc-i2c-bus support
from the imx-ldb driver.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/imx/ipuv3/imx-ldb.c | 72 ++++++-------------------------------
 1 file changed, 10 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/imx/ipuv3/imx-ldb.c b/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
index 1924d8921c62..380edc1c4507 100644
--- a/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
+++ b/drivers/gpu/drm/imx/ipuv3/imx-ldb.c
@@ -70,7 +70,6 @@ struct imx_ldb_channel {
 	struct drm_bridge *bridge;
 
 	struct device_node *child;
-	struct i2c_adapter *ddc;
 	int chno;
 	struct drm_display_mode mode;
 	int mode_valid;
@@ -141,18 +140,6 @@ static int imx_ldb_connector_get_modes(struct drm_connector *connector)
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
 
@@ -481,10 +468,9 @@ static int imx_ldb_register(struct drm_device *drm,
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
 
@@ -551,39 +537,6 @@ static const struct of_device_id imx_ldb_dt_ids[] = {
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
@@ -694,11 +647,15 @@ static int imx_ldb_probe(struct platform_device *pdev)
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
@@ -732,15 +689,6 @@ static int imx_ldb_probe(struct platform_device *pdev)
 
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


