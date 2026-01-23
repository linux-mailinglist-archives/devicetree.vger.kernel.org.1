Return-Path: <devicetree+bounces-259069-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEauLXOgc2lqxgAAu9opvQ
	(envelope-from <devicetree+bounces-259069-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:23:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6119F786F4
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:23:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9FBD43088EE5
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:15:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67078346AD9;
	Fri, 23 Jan 2026 16:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="SRlbRDF+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACEBE33F36E;
	Fri, 23 Jan 2026 16:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769184844; cv=none; b=TZXRkK0jmQYMOLfczxP2e9clRXEfqSEbi5d/UHdLXozvEfb1gQ6qen7A5Eq8ycCct76yc+jMoUvF4T78gYO25fKVzrUnpZsKM9YI9+QDJZ0tBepGpmkiuxgbpfc1tOMxZEZXkQhT/wGzya4YUcp+XOCYxOoh0QfbA/GdzKQ7ISE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769184844; c=relaxed/simple;
	bh=xnXlV/p3P0Y150LBOsIsNNvowfSk3FUwYAewlSuSkHs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PQLl2z+vyLED0OXYQnU0+YtJTwbTjJlVOGBqbIT6s79u9QfYGgCkxRkcKmCFUHQwG3/2CaGWHx9DGlIYsfx3sXyccsPuUwhBFzgxnf+MiYAEc+GfPMlHrvq4inyUsPyI1cyDTjkazlmpk26BURvhnP6RKFnZCn/evTwgcS08X/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=SRlbRDF+; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 8C3211A2A70;
	Fri, 23 Jan 2026 16:13:57 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 5FFEF6070A;
	Fri, 23 Jan 2026 16:13:57 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C2C60119A87A9;
	Fri, 23 Jan 2026 17:13:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769184836; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=GblQt8zBoa2ANU1FwVR4LDs1StFgzUT9KSZK3+2sTv4=;
	b=SRlbRDF+2BRs9G/mcKoVUINiaKPtC8VB6mKHqCg5Ur9R4iX1soKevsZhSSQoKhX7KQB7Mq
	GJgZzuBygAfXXN9nJvfGL9rXIuJ/61ylpzekRsXkEbqcF7A/ERT3COFhSXXxhSlt5HbAdn
	LemE+yYiIKB/aJXTeusAH6qM2RA7gtrHbp/kuyfNMmS4x0U775DPV90QXlURdgwv4bVgjB
	YeT+iG0ycXM6625+4fmFDvMk+LgtGuu+d52VC9jnA03Q3OPNfK0J90GKymZOUQ+G/UtAN9
	eJAmdyUGnVrt721gGV9I8Nnw16fybdQxvyvgijDkpgeSPNl8TwKll8qxW4GFWA==
From: "Kory Maincent (TI.com)" <kory.maincent@bootlin.com>
Date: Fri, 23 Jan 2026 17:12:43 +0100
Subject: [PATCH v5 25/25] drm/tilcdc: Add support for
 DRM_BRIDGE_ATTACH_NO_CONNECTOR
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260123-feature_tilcdc-v5-25-5a44d2aa3f6f@bootlin.com>
References: <20260123-feature_tilcdc-v5-0-5a44d2aa3f6f@bootlin.com>
In-Reply-To: <20260123-feature_tilcdc-v5-0-5a44d2aa3f6f@bootlin.com>
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
 Herve Codina <herve.codina@bootlin.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
 "Kory Maincent (TI.com)" <kory.maincent@bootlin.com>
X-Mailer: b4 0.15-dev-47773
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259069-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[iki.fi,ideasonboard.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,armlinux.org.uk,bgdev.pl,atomide.com,intel.com,linaro.org,kwiboo.se];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:email,bootlin.com:dkim,bootlin.com:mid,ti.com:url]
X-Rspamd-Queue-Id: 6119F786F4
X-Rspamd-Action: no action

Convert the driver to use the DRM_BRIDGE_ATTACH_NO_CONNECTOR flag when
attaching bridges. This modernizes the driver by delegating connector
creation to the bridge subsystem through drm_bridge_connector_init()
instead of manually searching for connectors created by the bridge.

The custom tilcdc_encoder_find_connector() function is removed and
replaced with the standard drm_bridge_connector infrastructure, which
simplifies the code and aligns with current DRM bridge best practices.

This change is safe as there are now no in-tree devicetrees that
connect tilcdc to bridges which do not support the
DRM_BRIDGE_ATTACH_NO_CONNECTOR flag.

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
Signed-off-by: Kory Maincent (TI.com) <kory.maincent@bootlin.com>
---

Changes in v5:
- Move DRM_DISPLAY_HELPER before DRM_BRIDGE_CONNECTOR for a more logical
  description.

Changes in v4:
- Select missing DRM_BRIDGE_CONNECTOR and DRM_DISPLAY_HELPER config
  dependency in Kconfig
---
 drivers/gpu/drm/tilcdc/Kconfig          |  2 ++
 drivers/gpu/drm/tilcdc/tilcdc_encoder.c | 37 ++++++++++++++-------------------
 2 files changed, 18 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/tilcdc/Kconfig b/drivers/gpu/drm/tilcdc/Kconfig
index a36e809f984cd..89df7528756c8 100644
--- a/drivers/gpu/drm/tilcdc/Kconfig
+++ b/drivers/gpu/drm/tilcdc/Kconfig
@@ -6,6 +6,8 @@ config DRM_TILCDC
 	select DRM_KMS_HELPER
 	select DRM_GEM_DMA_HELPER
 	select DRM_BRIDGE
+	select DRM_DISPLAY_HELPER
+	select DRM_BRIDGE_CONNECTOR
 	select DRM_PANEL_BRIDGE
 	select VIDEOMODE_HELPERS
 	select BACKLIGHT_CLASS_DEVICE
diff --git a/drivers/gpu/drm/tilcdc/tilcdc_encoder.c b/drivers/gpu/drm/tilcdc/tilcdc_encoder.c
index 546fe7e6ee815..680a2ac6ab594 100644
--- a/drivers/gpu/drm/tilcdc/tilcdc_encoder.c
+++ b/drivers/gpu/drm/tilcdc/tilcdc_encoder.c
@@ -8,45 +8,40 @@
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
+#include <drm/drm_bridge_connector.h>
 #include <drm/drm_of.h>
 #include <drm/drm_simple_kms_helper.h>
 
 #include "tilcdc_drv.h"
 #include "tilcdc_encoder.h"
 
-static
-struct drm_connector *tilcdc_encoder_find_connector(struct drm_device *ddev,
-						    struct drm_encoder *encoder)
-{
-	struct drm_connector *connector;
-
-	list_for_each_entry(connector, &ddev->mode_config.connector_list, head) {
-		if (drm_connector_has_possible_encoder(connector, encoder))
-			return connector;
-	}
-
-	drm_err(ddev, "No connector found for %s encoder (id %d)\n",
-		encoder->name, encoder->base.id);
-
-	return NULL;
-}
-
 static
 int tilcdc_attach_bridge(struct drm_device *ddev, struct drm_bridge *bridge)
 {
 	struct tilcdc_drm_private *priv = ddev_to_tilcdc_priv(ddev);
+	struct drm_connector *connector;
 	int ret;
 
 	priv->encoder->base.possible_crtcs = BIT(0);
 
-	ret = drm_bridge_attach(&priv->encoder->base, bridge, NULL, 0);
+	ret = drm_bridge_attach(&priv->encoder->base, bridge, NULL,
+				DRM_BRIDGE_ATTACH_NO_CONNECTOR);
 	if (ret)
 		return ret;
 
-	priv->connector = tilcdc_encoder_find_connector(ddev, &priv->encoder->base);
-	if (!priv->connector)
-		return -ENODEV;
+	connector = drm_bridge_connector_init(ddev, &priv->encoder->base);
+	if (IS_ERR(connector)) {
+		drm_err(ddev, "bridge_connector create failed\n");
+		return PTR_ERR(connector);
+	}
+
+	ret = drm_connector_attach_encoder(connector, &priv->encoder->base);
+	if (ret) {
+		drm_err(ddev, "attaching encoder to connector failed\n");
+		return ret;
+	}
 
+	priv->connector = connector;
 	return 0;
 }
 

-- 
2.43.0


