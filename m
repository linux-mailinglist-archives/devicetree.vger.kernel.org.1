Return-Path: <devicetree+bounces-285299-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENe9KNT41GlszQcAu9opvQ
	(envelope-from <devicetree+bounces-285299-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 14:30:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D2C3AE651
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 14:30:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A622B30457FA
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 12:26:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2E343B3BF0;
	Tue,  7 Apr 2026 12:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="LD++QH6E"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2BC3B38A8
	for <devicetree@vger.kernel.org>; Tue,  7 Apr 2026 12:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775564769; cv=none; b=n9t9FujhdafjmzfNm1xNy3cMOYEPbrQsyi2t/zxW3D1SqNEL/eFXt4DtSZE4faafb1O8zhuUcv/zdfe4rP0KcCePI3zFuzDOcUyNVitq75Uxnm5WjflYyqN8MqdXMCsxm5Ll38ZEakS/chmE4qI5e43y2qQ2QuMkO3UT6t5DpfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775564769; c=relaxed/simple;
	bh=/0GqYbkMCU2wAG4nKPeoIYfaw6+i8Gq2qoEe276Lvjk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HXMXmUENEtIfB4p4b3lMREuhaAhMNpcXHOuh7fSqWUzIDcxlu8u/cpH0CKw+1rZaGY856qeh9HzXB+wiMKPsJYNc+srX29NbVrm8JzNYh+Lc8BLTOR32XfEZkSwCO5oKDw8pH+fqLAP6QBhkxGzlwdLvM2VIVGM4RPn32IGMZRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=LD++QH6E; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 057244E4295B;
	Tue,  7 Apr 2026 12:26:07 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id CC7B8603C7;
	Tue,  7 Apr 2026 12:26:06 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 37FA91045020B;
	Tue,  7 Apr 2026 14:25:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775564764; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=6jzvuat4HWr3Cl443Yz6IZbyUZIbJglUU0HNcZ8X2Bk=;
	b=LD++QH6E7COdIppSppSxtiyT7VLdluAuKm0X9wuLeN5mhI33iqlOCIbIC7TJFAMdxoHHHa
	TeiZ9wcEg8s+HLJ8aMIMOUdq9jmQ/7ei9ytKpCrseNna0cXa6q+zgsb8hDDqV+4PqvLIOp
	9L6yvBoIXIoY86xrp/x3hmTaARd2g34144P7YcWFp6KkvfeYMeKeOegN6M05bR6LuFuLAs
	untNCrc2DJuHFimwfpkBxn+c3J3rVGoWpYspZUepqS1K9V42GXEYJTVtSfhje+7365xxqA
	ZAlXgOLFwpZ7DQMIyapx059691cQquTD3t6vtaxJ9mEA7ZPKtC7zzOEoCVHPhA==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Tue, 07 Apr 2026 14:24:23 +0200
Subject: [PATCH v4 09/11] drm/bridge: imx8mp-hdmi-tx-connector-fixup: show
 a warning when adding the overlay
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260407-drm-lcdif-dbanc-v4-9-247a16e61ef9@bootlin.com>
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
	TAGGED_FROM(0.00)[bounces-285299-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: C7D2C3AE651
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Describing the HDMI connector in device tree is recommended. While the
overlay insertion is a workaround to avoid breaking existing devices, every
dts should be improved by adding a connector description.

Add a warning to make users aware as far as possible.

As a warning line cannot hold all the relevant info, add a detailed comment
in the code so it easy to find when the warning is seen.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
Reviewed-by: Liu Ying <victor.liu@nxp.com>

---

Changes in v4:
- add missing \n to warning string
- Add Liu's R-by

Patch added in v3. Kept as a separate comment w.r.t. the patch adding the
overlay to let it be added in a later moment in case we want to convert
existing dts files before adding the warning.
---
 .../gpu/drm/bridge/imx/imx8mp-hdmi-tx-connector-fixup.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx-connector-fixup.c b/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx-connector-fixup.c
index dc1736bfc3ac..aaac27d00590 100644
--- a/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx-connector-fixup.c
+++ b/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx-connector-fixup.c
@@ -44,6 +44,23 @@ static int __init imx8mp_hdmi_tx_connector_fixup_init(void)
 	if (endpoint)
 		return 0;
 
+	/*
+	 * Boards with an HDMI connector should describe it in a device
+	 * tree node with compatible = "hdmi-connector".
+	 *
+	 * If you see this warning, it means such a node was not found and
+	 * a fallback one is added using a device tree overlay. Please add
+	 * one in your device tree, also describing the exact connector
+	 * type (the added overlay assumes Type A as a fallback, but it
+	 * might be wrong).
+	 *
+	 * This node is necessary for modern DRM, where bridge drivers do
+	 * not create a connector (see the DRM_BRIDGE_ATTACH_NO_CONNECTOR
+	 * flag). See https://docs.kernel.org/gpu/drm-kms-helpers.html for
+	 * more info.
+	 */
+	pr_warn("Please add a hdmi-connector DT node for imx8mp-hdmi-tx.\n");
+
 	dtbo_start = __dtbo_imx8mp_hdmi_tx_connector_fixup_begin;
 	dtbo_size = __dtbo_imx8mp_hdmi_tx_connector_fixup_end -
 		    __dtbo_imx8mp_hdmi_tx_connector_fixup_begin;

-- 
2.53.0


