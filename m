Return-Path: <devicetree+bounces-278208-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OLy3CB4mvWmr6wIAu9opvQ
	(envelope-from <devicetree+bounces-278208-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:49:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FABF2D903F
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:49:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42A0B307AA14
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:48:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0568386C0F;
	Fri, 20 Mar 2026 10:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="b4Mgr3wJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0522EAD1C
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 10:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774003680; cv=none; b=S9c581MGgqzdyjGDl7+r4oFB/4cSLI2YqwLgRIEvsrA3CkaXX61v9BXUYe8ywID/lfFp5EBMhgVwuFW221KvvINvUVcg401xuz2Q4Dopd2FdDDRMkGowPu2ov48AaE5ogXEMOpK4HdDJWbQJMS/N1wX1op619s4GBcRriT+iyl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774003680; c=relaxed/simple;
	bh=8yY00GLq7/QZCFWK0+7e9KfD4HG+wxOWqbZcKAHdVJE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=D1ZY+l5PxJtoGpwz/4HQrlWWIBMCZeT2XA1sHBwG+LFWzLNm6H9MTGd7PH905aqhCve9xQC7kO1/uYLmqtxHFVOoZN3rNJUtX+x6qrSMhhLalDUA2MeuLeLQu0IZoGMB6r5ZWX8ZdXe9NV6DeUMHIYUb3pW1XhQUWVJp9Au36nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=b4Mgr3wJ; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 89212C40435;
	Fri, 20 Mar 2026 10:48:22 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 284F0601A0;
	Fri, 20 Mar 2026 10:47:57 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7DF5310450A35;
	Fri, 20 Mar 2026 11:47:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1774003674; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=4T4axWR8ozOJ/Xi7kzHVRqa4a+zl3Ng+9KLl2BPnmnU=;
	b=b4Mgr3wJeBvoLayCkTLc8I0Qd/rCXnaK7pKNSXwumkcaoUPp6XZ8y7WZBak34cq4+ovggZ
	Zzus/vja8EuoI+KEcrFbmYn471Wv6wW1qEXGhcnRv7Lq8anVpAUmYuod/6HkKv6RPBDDCF
	Z6iE412IJ40rF7IrMJbBy93lRazXIwP+PHknq+tP5+k8JBchMqpOJggDQs1jD8eoPuu6P/
	rEWgFa3XJt7668IvDIfYOZdO1WPUXJCG7QYNs668QlUDVZaXThmB5s9v+s3uMfkgof5YlK
	0mYmHWg9BIzIcCct8iB1XXicjpafjEI9QsVMWkaX2T6oI0CO9ZlSDGJTZOEmhw==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Fri, 20 Mar 2026 11:46:19 +0100
Subject: [PATCH 8/8] drm/mxsfb/lcdif: use DRM_BRIDGE_ATTACH_NO_CONNECTOR
 and the bridge-connector
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-drm-lcdif-dbanc-v1-8-479a04133e70@bootlin.com>
References: <20260320-drm-lcdif-dbanc-v1-0-479a04133e70@bootlin.com>
In-Reply-To: <20260320-drm-lcdif-dbanc-v1-0-479a04133e70@bootlin.com>
To: Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Liu Ying <victor.liu@nxp.com>, Rob Herring <robh@kernel.org>, 
 Saravana Kannan <saravanak@kernel.org>
Cc: "Kory Maincent (TI.com)" <kory.maincent@bootlin.com>, 
 =?utf-8?q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
 Hui Pu <Hui.Pu@gehealthcare.com>, Ian Ray <ian.ray@gehealthcare.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 dri-devel@lists.freedesktop.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Adam Ford <aford173@gmail.com>, 
 Alexander Stein <alexander.stein@ew.tq-group.com>, 
 Anson Huang <Anson.Huang@nxp.com>, 
 Christopher Obbard <christopher.obbard@linaro.org>, 
 Daniel Scally <dan.scally@ideasonboard.com>, 
 Emanuele Ghidoli <emanuele.ghidoli@toradex.com>, 
 Fabio Estevam <festevam@denx.de>, 
 Francesco Dolcini <francesco.dolcini@toradex.com>, 
 Frieder Schrempf <frieder.schrempf@kontron.de>, 
 Gilles Talis <gilles.talis@gmail.com>, 
 =?utf-8?q?Goran_Ra=C4=91enovi=C4=87?= <goran.radni@gmail.com>, 
 Heiko Schocher <hs@denx.de>, 
 Joao Paulo Goncalves <joao.goncalves@toradex.com>, 
 Josua Mayer <josua@solid-run.com>, 
 =?utf-8?q?Jo=C3=A3o_Paulo_Gon=C3=A7alves?= <joao.goncalves@toradex.com>, 
 Kieran Bingham <kieran.bingham@ideasonboard.com>, 
 Marco Felsch <m.felsch@pengutronix.de>, 
 Martyn Welch <martyn.welch@collabora.com>, 
 Oleksij Rempel <o.rempel@pengutronix.de>, Peng Fan <peng.fan@nxp.com>, 
 Philippe Schenker <philippe.schenker@toradex.com>, 
 Richard Hu <richard.hu@technexion.com>, 
 Shengjiu Wang <shengjiu.wang@nxp.com>, 
 Stefan Eichenberger <stefan.eichenberger@toradex.com>, 
 Vitor Soares <vitor.soares@toradex.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bootlin.com,gehealthcare.com,lists.freedesktop.org,lists.linux.dev,lists.infradead.org,vger.kernel.org,gmail.com,ew.tq-group.com,nxp.com,linaro.org,ideasonboard.com,toradex.com,denx.de,kontron.de,solid-run.com,pengutronix.de,collabora.com,technexion.com];
	TAGGED_FROM(0.00)[bounces-278208-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[denx.de,agner.ch,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,nxp.com,pengutronix.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[56];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid,i.mx:url]
X-Rspamd-Queue-Id: 7FABF2D903F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert this driver to DRM_BRIDGE_ATTACH_NO_CONNECTOR and to the
drm_bridge_connector framework which is the current DRM bridge best
practice.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
 drivers/gpu/drm/mxsfb/Kconfig     |  1 +
 drivers/gpu/drm/mxsfb/lcdif_drv.c | 12 +++++++++++-
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mxsfb/Kconfig b/drivers/gpu/drm/mxsfb/Kconfig
index 264e74f45554..1a8a5d1ba8c0 100644
--- a/drivers/gpu/drm/mxsfb/Kconfig
+++ b/drivers/gpu/drm/mxsfb/Kconfig
@@ -33,6 +33,7 @@ config DRM_IMX_LCDIF
 	select DRM_GEM_DMA_HELPER
 	select DRM_PANEL
 	select DRM_PANEL_BRIDGE
+	select DRM_BRIDGE_CONNECTOR
 	help
 	  Choose this option if you have an LCDIFv3 LCD controller.
 	  Those devices are found in various i.MX SoC (i.MX8MP,
diff --git a/drivers/gpu/drm/mxsfb/lcdif_drv.c b/drivers/gpu/drm/mxsfb/lcdif_drv.c
index e40253ad607b..3388d959c93d 100644
--- a/drivers/gpu/drm/mxsfb/lcdif_drv.c
+++ b/drivers/gpu/drm/mxsfb/lcdif_drv.c
@@ -17,6 +17,7 @@
 #include <drm/clients/drm_client_setup.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
+#include <drm/drm_bridge_connector.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_encoder.h>
 #include <drm/drm_fbdev_dma.h>
@@ -50,6 +51,7 @@ static int lcdif_attach_bridge(struct lcdif_drm_private *lcdif)
 	struct device *dev = lcdif->drm->dev;
 	struct drm_encoder *encoder;
 	struct drm_bridge *bridge;
+	struct drm_connector *connector;
 	int ret;
 
 	struct device_node *remote __free(device_node) =
@@ -72,10 +74,18 @@ static int lcdif_attach_bridge(struct lcdif_drm_private *lcdif)
 	if (ret)
 		return dev_err_probe(dev, ret, "Failed to initialize encoder\n");
 
-	ret = drm_bridge_attach(encoder, bridge, NULL, 0);
+	ret = drm_bridge_attach(encoder, bridge, NULL, DRM_BRIDGE_ATTACH_NO_CONNECTOR);
 	if (ret)
 		return dev_err_probe(dev, ret, "Failed to attach bridge\n");
 
+	connector = drm_bridge_connector_init(lcdif->drm, encoder);
+	if (IS_ERR(connector))
+		return dev_err_probe(dev, PTR_ERR(connector), "Failed to init bridge_connector\n");
+
+	ret = drm_connector_attach_encoder(connector, encoder);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to attach connector\n");
+
 	return 0;
 }
 

-- 
2.53.0


