Return-Path: <devicetree+bounces-285292-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CdbACT41GlszQcAu9opvQ
	(envelope-from <devicetree+bounces-285292-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 14:27:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D673AE5A2
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 14:27:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3C7F8303B150
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 12:25:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A56BD3B38AF;
	Tue,  7 Apr 2026 12:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="PKUPRW8i"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE533AA516
	for <devicetree@vger.kernel.org>; Tue,  7 Apr 2026 12:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775564711; cv=none; b=ClDl9YuGL4UqPC6/5BR0e6Esti061w8RZStpBECwVQ0KkzSp4vFc4Ga4oyFeW82x90KLMtMIuUKPT7myWuGOtCzFPFgliwgJlgRY/Riw0+SEWNw6d0RTnngfKgdSTxzwWu0anpbHWvjkuyO+kxL1W0yeyP+zBZA6aBFiuxZiNy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775564711; c=relaxed/simple;
	bh=Z7kb2aE54+QuKt5gSLGA3OdsRlW+0ZynW14bsb2t4H4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=J62lL0p9jNHTrZVQhC7lWsCTwtz9FpTqZ5/SXe3/Pbi3QAHNupwfPUeuuzu8olqOS0tJEFgocMmDIWJFy45+U1ZdOu3YoA/bGobhERVPxpVMojEn+Rj2Nd9WEO4uIfMHFDTZS0gEoszfGZsdO1cFT03VivBfBGr9JDvBR3QdMCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=PKUPRW8i; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id D92E24E4294D;
	Tue,  7 Apr 2026 12:25:08 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A1193603C7;
	Tue,  7 Apr 2026 12:25:08 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id A3DE110450208;
	Tue,  7 Apr 2026 14:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775564705; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=tOjdeuEJSWPxj3Fs9X+nTEnL9KUNbNsb5gEjP8lRQd4=;
	b=PKUPRW8i6LWA9SAb75ay9gl+KBTJ9S/xOzs6+hYiojCf0ZiFihJsZSY3eLWWn8p6lsvxxI
	USRZNSoOn1qmA6huuvGEVpXUgsY8bvdhioHlP9f7NSsO3ReYfdgc8J6EGAcMJ8Lz+aLOPT
	yOKLO1ySl+C4SSa8tUEN4n5g9iLeOfoTGIW918wpLSRFuObfh8karE7Si6pzenSPjWVkE6
	dxaoGafjfiYdNFQH2o1D5wuAk1wrHRhw5v2hzlbS/15o4DX9snXjueOoRrZGVfEH5NSYje
	P5TymimgCu3U+nfAVJdTVp8NlXze5Duyh0F2DbTlCyxe2oLB/vDQyET8W/mmog==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Tue, 07 Apr 2026 14:24:17 +0200
Subject: [PATCH v4 03/11] drm/mxsfb/lcdif: use dev_err_probe() consistently
 in lcdif_attach_bridge
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260407-drm-lcdif-dbanc-v4-3-247a16e61ef9@bootlin.com>
References: <20260407-drm-lcdif-dbanc-v4-0-247a16e61ef9@bootlin.com>
In-Reply-To: <20260407-drm-lcdif-dbanc-v4-0-247a16e61ef9@bootlin.com>
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
Cc: Damon Ding <damon.ding@rock-chips.com>, 
 "Kory Maincent (TI.com)" <kory.maincent@bootlin.com>, 
 =?utf-8?q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
 Hui Pu <Hui.Pu@gehealthcare.com>, Ian Ray <ian.ray@gehealthcare.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 dri-devel@lists.freedesktop.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Adam Ford <aford173@gmail.com>, 
 Alexander Stein <alexander.stein@ew.tq-group.com>, 
 Christopher Obbard <christopher.obbard@linaro.org>, 
 Daniel Scally <dan.scally@ideasonboard.com>, 
 Emanuele Ghidoli <emanuele.ghidoli@toradex.com>, 
 Fabio Estevam <festevam@denx.de>, 
 Francesco Dolcini <francesco.dolcini@toradex.com>, 
 Frieder Schrempf <frieder.schrempf@kontron.de>, 
 Gilles Talis <gilles.talis@gmail.com>, 
 =?utf-8?q?Goran_Ra=C4=91enovi=C4=87?= <goran.radni@gmail.com>, 
 Heiko Schocher <hs@denx.de>, Josua Mayer <josua@solid-run.com>, 
 Kieran Bingham <kieran.bingham@ideasonboard.com>, 
 Marco Felsch <m.felsch@pengutronix.de>, 
 Martyn Welch <martyn.welch@collabora.com>, 
 Oleksij Rempel <o.rempel@pengutronix.de>, Peng Fan <peng.fan@nxp.com>, 
 Richard Hu <richard.hu@technexion.com>, 
 Shengjiu Wang <shengjiu.wang@nxp.com>, 
 Stefan Eichenberger <stefan.eichenberger@toradex.com>, 
 Vitor Soares <vitor.soares@toradex.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: b4 0.15.1
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[denx.de,agner.ch,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,nxp.com,pengutronix.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[rock-chips.com,bootlin.com,gehealthcare.com,lists.freedesktop.org,lists.linux.dev,lists.infradead.org,vger.kernel.org,gmail.com,ew.tq-group.com,linaro.org,ideasonboard.com,toradex.com,denx.de,kontron.de,solid-run.com,pengutronix.de,collabora.com,nxp.com,technexion.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285292-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_GT_50(0.00)[53];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 75D673AE5A2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

lcdif_attach_bridge() uses dev_err_probe() in some error paths, dev_err() +
return in others. Use dev_err_probe() for all of them to make code
consistent, simpler and with better error reporting.

Reviewed-by: Liu Ying <victor.liu@nxp.com>
Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
Changes in v2:
- rewrote after removal of previous patch removing loop
- not added review/test trailers as the code is a bit different
---
 drivers/gpu/drm/mxsfb/lcdif_drv.c | 24 ++++++++++--------------
 1 file changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/mxsfb/lcdif_drv.c b/drivers/gpu/drm/mxsfb/lcdif_drv.c
index 8da8a265c05c..1c76709c4d94 100644
--- a/drivers/gpu/drm/mxsfb/lcdif_drv.c
+++ b/drivers/gpu/drm/mxsfb/lcdif_drv.c
@@ -63,10 +63,8 @@ static int lcdif_attach_bridge(struct lcdif_drm_private *lcdif)
 			continue;
 
 		ret = of_graph_parse_endpoint(ep, &of_ep);
-		if (ret < 0) {
-			dev_err(dev, "Failed to parse endpoint %pOF\n", ep);
-			return ret;
-		}
+		if (ret < 0)
+			return dev_err_probe(dev, ret, "Failed to parse endpoint %pOF\n", ep);
 
 		bridge = devm_drm_of_get_bridge(dev, dev->of_node, 0, of_ep.id);
 		if (IS_ERR(bridge))
@@ -75,20 +73,18 @@ static int lcdif_attach_bridge(struct lcdif_drm_private *lcdif)
 					     of_ep.id);
 
 		encoder = devm_kzalloc(dev, sizeof(*encoder), GFP_KERNEL);
-		if (!encoder) {
-			dev_err(dev, "Failed to allocate encoder for endpoint%u\n",
-				of_ep.id);
-			return -ENOMEM;
-		}
+		if (!encoder)
+			return dev_err_probe(dev, -ENOMEM,
+					     "Failed to allocate encoder for endpoint%u\n",
+					     of_ep.id);
 
 		encoder->possible_crtcs = drm_crtc_mask(&lcdif->crtc);
 		ret = drm_encoder_init(lcdif->drm, encoder, &lcdif_encoder_funcs,
 				       DRM_MODE_ENCODER_NONE, NULL);
-		if (ret) {
-			dev_err(dev, "Failed to initialize encoder for endpoint%u: %d\n",
-				of_ep.id, ret);
-			return ret;
-		}
+		if (ret)
+			return dev_err_probe(dev, ret,
+					     "Failed to initialize encoder for endpoint%u\n",
+					     of_ep.id);
 
 		ret = drm_bridge_attach(encoder, bridge, NULL, 0);
 		if (ret)

-- 
2.53.0


