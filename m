Return-Path: <devicetree+bounces-278205-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDcUMxQmvWmr6wIAu9opvQ
	(envelope-from <devicetree+bounces-278205-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:48:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9482D9038
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:48:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BF2C73007944
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 10:47:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5C4538758C;
	Fri, 20 Mar 2026 10:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="QFcWkJ82"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3CF31F994
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 10:47:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774003650; cv=none; b=a9wrp868kf+69UiAnM1ZwQhi4fXS6snviGJDAGma/WfklWKs4OlBTcVYeUgCRW4RkD4/uyeWSsogbP7OvTaNDalv5nRnhkkTjw2BZHCJE4MF7xXa6I3Dq5C9kdjhBMHI/NP9d36DPxr/gNWawypr3y4SzjdtW9Jht1BfmmMM4J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774003650; c=relaxed/simple;
	bh=p+eMap3mH3REm8nRAr+tgfNilhf9vKt5CevjwuJG+Fg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GbOlR1wNEABQriq2HEHD98UUrzVpQueWvyF/yHMOfPGYBCQ0ejJB5RB9340QK5R4q2jXHX7ED3/7+N7idJZywE4gAzjbyW2tKlJ9sMAchbi1eI43lNDnLLxdDNCLLCyyjBhoI+9et93J+ByqMl3kIoMeFxrTC2UyYgK1oepgumE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=QFcWkJ82; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 51B1BC4042E;
	Fri, 20 Mar 2026 10:47:53 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E3BC3600E0;
	Fri, 20 Mar 2026 10:47:27 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id CD09B10450B8F;
	Fri, 20 Mar 2026 11:47:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1774003645; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=epcCiuzdQ1u6Epk9LtsHc2oPHZxzaiyD1zsIWDZOAME=;
	b=QFcWkJ82ylexSInmRDANxSHTwK9A3hbd2iBAlyZTtBzfzAVgv+6As+Ei0+Wta0tVjL7Ssx
	SPWbAZ0u+l/hMNJTKx9n3x8MrOPvXLipwrF81cdfYzOsavnoCiPRKtFSo0LHi5nDPIe0V1
	o0TYKsw3af8yoeUp8EfMqeVsi48IAE1dl5zsMAoV/ozrOYbRTQptooqq2KXIHLF1vOiuT5
	podhqzqMnp+IyZhdUOWauEpLjRYJH86d6kQX5n/BfQNQhEzK6YFTxQqBEguZ4IhG/winEv
	8fS+1HybWGBqBpniQ8l5tNxoVC7H5uuhYbZP9DhqxwMgryivMYGSC+b2qs2h6Q==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Fri, 20 Mar 2026 11:46:16 +0100
Subject: [PATCH 5/8] drm/bridge: dw-hdmi: warn on unsupported attach
 combination
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-drm-lcdif-dbanc-v1-5-479a04133e70@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bootlin.com,gehealthcare.com,lists.freedesktop.org,lists.linux.dev,lists.infradead.org,vger.kernel.org,gmail.com,ew.tq-group.com,nxp.com,linaro.org,ideasonboard.com,toradex.com,denx.de,kontron.de,solid-run.com,pengutronix.de,collabora.com,technexion.com];
	TAGGED_FROM(0.00)[bounces-278205-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[denx.de,agner.ch,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,nxp.com,pengutronix.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[56];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.1:email,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid]
X-Rspamd-Queue-Id: 4F9482D9038
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

dw-hdmi can operate in two different modes, depending on the platform data
as set by the driver:

 A. hdmi->plat_data->output_port = 0:
    the HDMI output (port@1) in device tree is not used

 B. hdmi->plat_data->output_port = 1:
    the HDMI output (port@1) is parsed to find the next bridge

Only case B is supported when the DRM_BRIDGE_ATTACH_NO_CONNECTOR flag is
passed to the attach callback. Emit a warning when this is violated. Also
return -EINVAL which would be returned by drm_bridge_attach() right after
anyway.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

---

Note: Returning when teh warning triggers does not change the functional
behaviour of this function. It is not strictly necessary in this patch but
it will have to be done anyway in the following patch.
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index ee88c0e793b0..a668d66aeece 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -2910,6 +2910,10 @@ static int dw_hdmi_bridge_attach(struct drm_bridge *bridge,
 {
 	struct dw_hdmi *hdmi = bridge->driver_private;
 
+	/* DRM_BRIDGE_ATTACH_NO_CONNECTOR requires a remote-endpoint to the next bridge */
+	if (WARN_ON((flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR) && !hdmi->plat_data->output_port))
+		return -EINVAL;
+
 	if (flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR)
 		return drm_bridge_attach(encoder, hdmi->bridge.next_bridge,
 					 bridge, flags);

-- 
2.53.0


