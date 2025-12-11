Return-Path: <devicetree+bounces-245890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 707F5CB6834
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 17:40:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4E7ED301C891
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 16:40:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63E332FC00B;
	Thu, 11 Dec 2025 16:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="p5UAjbe5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 012F73148CD
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 16:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765471220; cv=none; b=aqVYwQ9C7OEdLkb8U014gGxlkhrpc2e6gBCgviPeVaLuraeeyZWWxbQKf2Re8O4OfqpXUzO6Dfbwh0zBhahE+3+rcnFrmlJuKjk0StwhZPah02g82H4nFIncOvW265ncrNTMMZw6LnvEK4UA6ErfBFEvtlFJn+LbUM3yEzMYRt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765471220; c=relaxed/simple;
	bh=dkDd3YR9DdmkP1VVMavEr93OwBJYkkv7XvacI/6GvrU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K4zxiOxYkyIHBzxXx6AfdsRB4zX9R6vTFmRc+Os7Yi8o4G1xCoW9XKUDlq0w7Y7M2tHKzg4iJZZjBlWzOpOUB+mhJ+OpzKxv4az14jrzTKr+lHNfjtOyD0U40UrJ17TDcPukls3LETwQsLf/0P6iVu+X2MAci58TyU5cnFu7AX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=p5UAjbe5; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 8B69DC1934F;
	Thu, 11 Dec 2025 16:39:50 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 60EBA6073E;
	Thu, 11 Dec 2025 16:40:14 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 410F5103C8E13;
	Thu, 11 Dec 2025 17:40:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1765471212; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=A0GyQRxuBWvyoYl427NSnbll0gqIE2jfGrZTzQnmr+A=;
	b=p5UAjbe5eR1vlgo9bmW8zner3UPyTwDeeNvcucEgqfGYRme/IJofxW6w7iW/aC+t/ck176
	pbyQXfSRHzZEd8nsCB5GKPIVDrhSphnFxvOpIbzdjONZSlLfIIetGlkxIqICimEeS320GA
	czRJSC0S9iojtVNey8/BiR6E0qRIHXpha3rPo4pRjTE3/FjocI2GfW49p/AnXYyeTIV2gh
	l44XlcPtXhw6qPy/HTcCY5DPYXcp6bhmVgyv3MDSZpvl0V+QN1jOEcFLG7U02ALC7sxAHU
	SLMQJWwHpbSBsXF5gqpwiqTGDTvSBPnMs50OmMcOfICio+CKeb8HAr0TEPocnQ==
From: "Kory Maincent (TI.com)" <kory.maincent@bootlin.com>
Date: Thu, 11 Dec 2025 17:38:55 +0100
Subject: [PATCH v2 11/20] drm/tilcdc: Rename external_encoder and
 external_connector to encoder and connector
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251211-feature_tilcdc-v2-11-f48bac3cd33e@bootlin.com>
References: <20251211-feature_tilcdc-v2-0-f48bac3cd33e@bootlin.com>
In-Reply-To: <20251211-feature_tilcdc-v2-0-f48bac3cd33e@bootlin.com>
To: Jyri Sarha <jyri.sarha@iki.fi>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Tony Lindgren <tony@atomide.com>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Markus Schneider-Pargmann <msp@baylibre.com>, 
 Bajjuri Praneeth <praneeth@ti.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Miguel Gazquez <miguel.gazquez@bootlin.com>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-omap@vger.kernel.org, 
 "Kory Maincent (TI.com)" <kory.maincent@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3

Remove the "external_" prefix from encoder and connector members in the
tilcdc driver. These are internal driver structures and the "external"
naming is misleading. The simpler names better reflect that these are
the primary encoder and connector managed by this driver.

Also rename tilcdc_attach_external_device() to tilcdc_encoder_create()
for consistency and to better describe the function's purpose.

Signed-off-by: Kory Maincent (TI.com) <kory.maincent@bootlin.com>
---
 drivers/gpu/drm/tilcdc/tilcdc_drv.c      |  4 ++--
 drivers/gpu/drm/tilcdc/tilcdc_drv.h      |  4 ++--
 drivers/gpu/drm/tilcdc/tilcdc_external.c | 24 ++++++++++++------------
 drivers/gpu/drm/tilcdc/tilcdc_external.h |  2 +-
 4 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/tilcdc/tilcdc_drv.c b/drivers/gpu/drm/tilcdc/tilcdc_drv.c
index a753cc47a59d7..bf6cd763ecd0f 100644
--- a/drivers/gpu/drm/tilcdc/tilcdc_drv.c
+++ b/drivers/gpu/drm/tilcdc/tilcdc_drv.c
@@ -344,11 +344,11 @@ static int tilcdc_init(const struct drm_driver *ddrv, struct device *dev)
 	}
 #endif
 
-	ret = tilcdc_attach_external_device(ddev);
+	ret = tilcdc_encoder_create(ddev);
 	if (ret)
 		goto unregister_cpufreq_notif;
 
-	if (!priv->external_connector) {
+	if (!priv->connector) {
 		dev_err(dev, "no encoders/connectors found\n");
 		ret = -EPROBE_DEFER;
 		goto unregister_cpufreq_notif;
diff --git a/drivers/gpu/drm/tilcdc/tilcdc_drv.h b/drivers/gpu/drm/tilcdc/tilcdc_drv.h
index 717529a331009..dafb00908d1d4 100644
--- a/drivers/gpu/drm/tilcdc/tilcdc_drv.h
+++ b/drivers/gpu/drm/tilcdc/tilcdc_drv.h
@@ -75,8 +75,8 @@ struct tilcdc_drm_private {
 
 	struct drm_crtc *crtc;
 
-	struct drm_encoder *external_encoder;
-	struct drm_connector *external_connector;
+	struct drm_encoder *encoder;
+	struct drm_connector *connector;
 
 	bool irq_enabled;
 };
diff --git a/drivers/gpu/drm/tilcdc/tilcdc_external.c b/drivers/gpu/drm/tilcdc/tilcdc_external.c
index 81c90c2754c6c..0c18d05dc7101 100644
--- a/drivers/gpu/drm/tilcdc/tilcdc_external.c
+++ b/drivers/gpu/drm/tilcdc/tilcdc_external.c
@@ -37,21 +37,21 @@ int tilcdc_attach_bridge(struct drm_device *ddev, struct drm_bridge *bridge)
 	struct tilcdc_drm_private *priv = ddev->dev_private;
 	int ret;
 
-	priv->external_encoder->possible_crtcs = BIT(0);
+	priv->encoder->possible_crtcs = BIT(0);
 
-	ret = drm_bridge_attach(priv->external_encoder, bridge, NULL, 0);
+	ret = drm_bridge_attach(priv->encoder, bridge, NULL, 0);
 	if (ret)
 		return ret;
 
-	priv->external_connector =
-		tilcdc_encoder_find_connector(ddev, priv->external_encoder);
-	if (!priv->external_connector)
+	priv->connector =
+		tilcdc_encoder_find_connector(ddev, priv->encoder);
+	if (!priv->connector)
 		return -ENODEV;
 
 	return 0;
 }
 
-int tilcdc_attach_external_device(struct drm_device *ddev)
+int tilcdc_encoder_create(struct drm_device *ddev)
 {
 	struct tilcdc_drm_private *priv = ddev->dev_private;
 	struct drm_bridge *bridge;
@@ -65,13 +65,13 @@ int tilcdc_attach_external_device(struct drm_device *ddev)
 	else if (ret)
 		return ret;
 
-	priv->external_encoder = devm_kzalloc(ddev->dev,
-					      sizeof(*priv->external_encoder),
-					      GFP_KERNEL);
-	if (!priv->external_encoder)
+	priv->encoder = devm_kzalloc(ddev->dev,
+				     sizeof(*priv->encoder),
+				     GFP_KERNEL);
+	if (!priv->encoder)
 		return -ENOMEM;
 
-	ret = drm_simple_encoder_init(ddev, priv->external_encoder,
+	ret = drm_simple_encoder_init(ddev, priv->encoder,
 				      DRM_MODE_ENCODER_NONE);
 	if (ret) {
 		dev_err(ddev->dev, "drm_encoder_init() failed %d\n", ret);
@@ -94,6 +94,6 @@ int tilcdc_attach_external_device(struct drm_device *ddev)
 	return 0;
 
 err_encoder_cleanup:
-	drm_encoder_cleanup(priv->external_encoder);
+	drm_encoder_cleanup(priv->encoder);
 	return ret;
 }
diff --git a/drivers/gpu/drm/tilcdc/tilcdc_external.h b/drivers/gpu/drm/tilcdc/tilcdc_external.h
index 285a132f3035d..c8f87f59024e6 100644
--- a/drivers/gpu/drm/tilcdc/tilcdc_external.h
+++ b/drivers/gpu/drm/tilcdc/tilcdc_external.h
@@ -7,5 +7,5 @@
 #ifndef __TILCDC_EXTERNAL_H__
 #define __TILCDC_EXTERNAL_H__
 
-int tilcdc_attach_external_device(struct drm_device *ddev);
+int tilcdc_encoder_create(struct drm_device *ddev);
 #endif /* __TILCDC_SLAVE_H__ */

-- 
2.43.0


