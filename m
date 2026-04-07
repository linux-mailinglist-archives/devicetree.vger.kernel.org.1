Return-Path: <devicetree+bounces-285291-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DsbGKz31GkjywcAu9opvQ
	(envelope-from <devicetree+bounces-285291-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 14:25:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 327463AE4E1
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 14:25:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0F5E2301F6B9
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 12:25:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A5583A75BE;
	Tue,  7 Apr 2026 12:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="c0TOhNJV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C37E63B0AE3;
	Tue,  7 Apr 2026 12:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775564701; cv=none; b=sdpxa8VHYcX3Ir1kLF2L+0/LP5Qi3qXoRJ8Ha8PlXpqcOVveQxOu2DItNFYk9BS/6dAVGnRiCLH1hnvSAeeYTA7qfAx0caly1ueL4pAsr5PUc+JshAdA7fA1J8DhnnumtWT6tsBq82QEbMsb8g7vfglIUkFjf9xeZS9WZQmmVcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775564701; c=relaxed/simple;
	bh=DGkZabpVSfCZx4qVU8GLozjN/+Zh0JyHCyPpQLjan0k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mQxbKg5jf1s1aEpOItyRRhWZQA1qGWGd2OekIOGGb1XiEkKgpiXZaIr/AhZgC6ygAxiw8+/FUDUF2tcC0apOix67/2SCppUTTszLzVdvfUpJ5e6AOOmtxgv6QcbOSfDINeCR0iNT/MbWivEvvwGnoyMlb3JyeMohZ6ldUcMf8oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=c0TOhNJV; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 32289C5B199;
	Tue,  7 Apr 2026 12:25:32 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 6359D603C7;
	Tue,  7 Apr 2026 12:24:58 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0188B1045020A;
	Tue,  7 Apr 2026 14:24:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775564696; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=2J+9TG/VyHLnCiKQu2dJ+E2QJC0b8CpVuopBw9nld/w=;
	b=c0TOhNJVfuShLXeRl6kY2I+3ssK5et/BgOfMVYD8kIJbZLrMzlo0iFLSRet0U4DBEgAJ7A
	NZyku9IBAmA2MU6sypZ6KtrO+jklyVCPCmrsGV/rk5ZkX9mt5It3wdxORZJIZsf9WvLzfA
	6Vi6zgUqPUbhe9qQheVsGslKjDgC31TiEIPCWrnrnBnzHPPI4DvsvxZPS9wiz4KO5mYX+y
	87N86Lzw8zCCwQvW+i9DpdWYtuFomqJu7+m09opJLMtrbaWLOHoNDsHUNaNL1HvmbaIdGV
	nYvNps7fDRoRVYL0zHJXJm5GaBnLHMg2w8xk7DMPq6QeEifYgyhF9cm3LXBxGA==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Tue, 07 Apr 2026 14:24:16 +0200
Subject: [PATCH v4 02/11] drm/mxsfb/lcdif: simplify ep pointer management
 using __free
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260407-drm-lcdif-dbanc-v4-2-247a16e61ef9@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[denx.de,agner.ch,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,nxp.com,pengutronix.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[rock-chips.com,bootlin.com,gehealthcare.com,lists.freedesktop.org,lists.linux.dev,lists.infradead.org,vger.kernel.org,gmail.com,ew.tq-group.com,linaro.org,ideasonboard.com,toradex.com,denx.de,kontron.de,solid-run.com,pengutronix.de,collabora.com,nxp.com,technexion.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285291-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_GT_50(0.00)[53];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 327463AE4E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Putting the ep device_node reference requires a of_node_put(ep) in many
return points. Use a cleanup action to simplify the code.

Reviewed-by: Liu Ying <victor.liu@nxp.com>
Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
This patch is new in v2
---
 drivers/gpu/drm/mxsfb/lcdif_drv.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/mxsfb/lcdif_drv.c b/drivers/gpu/drm/mxsfb/lcdif_drv.c
index 7719629487da..8da8a265c05c 100644
--- a/drivers/gpu/drm/mxsfb/lcdif_drv.c
+++ b/drivers/gpu/drm/mxsfb/lcdif_drv.c
@@ -49,7 +49,7 @@ static const struct drm_encoder_funcs lcdif_encoder_funcs = {
 static int lcdif_attach_bridge(struct lcdif_drm_private *lcdif)
 {
 	struct device *dev = lcdif->drm->dev;
-	struct device_node *ep;
+	struct device_node *ep __free(device_node) = NULL;
 	struct drm_bridge *bridge;
 	int ret;
 
@@ -65,23 +65,19 @@ static int lcdif_attach_bridge(struct lcdif_drm_private *lcdif)
 		ret = of_graph_parse_endpoint(ep, &of_ep);
 		if (ret < 0) {
 			dev_err(dev, "Failed to parse endpoint %pOF\n", ep);
-			of_node_put(ep);
 			return ret;
 		}
 
 		bridge = devm_drm_of_get_bridge(dev, dev->of_node, 0, of_ep.id);
-		if (IS_ERR(bridge)) {
-			of_node_put(ep);
+		if (IS_ERR(bridge))
 			return dev_err_probe(dev, PTR_ERR(bridge),
 					     "Failed to get bridge for endpoint%u\n",
 					     of_ep.id);
-		}
 
 		encoder = devm_kzalloc(dev, sizeof(*encoder), GFP_KERNEL);
 		if (!encoder) {
 			dev_err(dev, "Failed to allocate encoder for endpoint%u\n",
 				of_ep.id);
-			of_node_put(ep);
 			return -ENOMEM;
 		}
 
@@ -91,17 +87,14 @@ static int lcdif_attach_bridge(struct lcdif_drm_private *lcdif)
 		if (ret) {
 			dev_err(dev, "Failed to initialize encoder for endpoint%u: %d\n",
 				of_ep.id, ret);
-			of_node_put(ep);
 			return ret;
 		}
 
 		ret = drm_bridge_attach(encoder, bridge, NULL, 0);
-		if (ret) {
-			of_node_put(ep);
+		if (ret)
 			return dev_err_probe(dev, ret,
 					     "Failed to attach bridge for endpoint%u\n",
 					     of_ep.id);
-		}
 	}
 
 	return 0;

-- 
2.53.0


