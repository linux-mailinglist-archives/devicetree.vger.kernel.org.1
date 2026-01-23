Return-Path: <devicetree+bounces-259067-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCg5GLufc2muxgAAu9opvQ
	(envelope-from <devicetree+bounces-259067-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:20:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5CE7861E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:20:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B2493302D26C
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:15:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 099A1329369;
	Fri, 23 Jan 2026 16:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="NUcHXtdE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0FA9325716
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769184836; cv=none; b=Q5d3Q8FlYXQlS7/w/hXmfjwkREpnz2qWqxWM+zK752my2nshD7THo//I6Ytj0q5VHOvkA9O9oeyd7IPCxwja6ICyOtuTGWjJ4OnCU8rw5sgPrWBlheWj212wVaK1OYmYM/QlH7ExhnBHQOguefGv0KcH9VoWrapMrcJz0FR1mJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769184836; c=relaxed/simple;
	bh=JKnFEy6hnHSto9heRigjVUZRFZ0ZXKYU4Idb4Bvjs0Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tZo7bj34kSsjeqbvDcUHHpbhEJ+jGN4VVtzmUiImF8sGfyICIguYWGjIyFQPFQ3d0YrUhuAqEcOWclmEitumcsPVgEkpihB3Y/J9qRIPhFyoy+FIgUxWYSoN38QJfIiAd8q9PCgIAOW2x1xoSkv/0IJb++eh8kYUvtnvmmAyny4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=NUcHXtdE; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id E5ACB1A2A6C;
	Fri, 23 Jan 2026 16:13:51 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id BAD566070A;
	Fri, 23 Jan 2026 16:13:51 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 29FA1119A87DF;
	Fri, 23 Jan 2026 17:13:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769184830; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Q7CbSYfY/ZhKXtpXnVfoMY3VsPQNb7ntqABDIkpQLRY=;
	b=NUcHXtdEiYrLpLIhxb1ZWitibeJRqnBTebOZLZ9A2ra6TNghytgHprS0Sr3f5A4XtLXcNQ
	ACHfpcdFre48e4uFrML7txNQJvRnKTbdCtYPl5ZbjjSDpoBj/h5Xb67LS3QXTauHmaH0hy
	v/ZnJ0svaX9Zc5OBsttvUKTRZ1h5J5Xy78wSEKbsL1CNsxdr1NnTU8Am5qalKC0nkvINIk
	hO/boXe4aA3wFXiHFS5GDiz725c5Btchg0beoF8NN8Ba9/kCHLZgHOtOfj0eN81ZQ77Wgr
	QJnl1iguONCIZdC+e+NkAKamHHa2EJzj/3TrYREcME/xrWTIVswDxgaK+ixfaA==
From: "Kory Maincent (TI.com)" <kory.maincent@bootlin.com>
Date: Fri, 23 Jan 2026 17:12:41 +0100
Subject: [PATCH v5 23/25] drm/bridge: tda998x: Remove useless
 tda998x_connector_destroy wrapper
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260123-feature_tilcdc-v5-23-5a44d2aa3f6f@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259067-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[iki.fi,ideasonboard.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,armlinux.org.uk,bgdev.pl,atomide.com,intel.com,linaro.org,kwiboo.se];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,ti.com:url,bootlin.com:email,bootlin.com:dkim,bootlin.com:mid]
X-Rspamd-Queue-Id: 9C5CE7861E
X-Rspamd-Action: no action

Use directly drm_connector_cleanup in the destroy ops instead of having
a custom function that does nothing more.

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
Signed-off-by: Kory Maincent (TI.com) <kory.maincent@bootlin.com>
---
 drivers/gpu/drm/bridge/tda998x_drv.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/bridge/tda998x_drv.c b/drivers/gpu/drm/bridge/tda998x_drv.c
index e06d8d4c4b875..fad3c9bfda383 100644
--- a/drivers/gpu/drm/bridge/tda998x_drv.c
+++ b/drivers/gpu/drm/bridge/tda998x_drv.c
@@ -1203,16 +1203,11 @@ tda998x_connector_detect(struct drm_connector *connector, bool force)
 			connector_status_disconnected;
 }
 
-static void tda998x_connector_destroy(struct drm_connector *connector)
-{
-	drm_connector_cleanup(connector);
-}
-
 static const struct drm_connector_funcs tda998x_connector_funcs = {
 	.reset = drm_atomic_helper_connector_reset,
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.detect = tda998x_connector_detect,
-	.destroy = tda998x_connector_destroy,
+	.destroy = drm_connector_cleanup,
 	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 };

-- 
2.43.0


