Return-Path: <devicetree+bounces-259056-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HCoHKWec2lqxgAAu9opvQ
	(envelope-from <devicetree+bounces-259056-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:15:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B085784BD
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:15:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 368993017F37
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:13:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46BD63246F4;
	Fri, 23 Jan 2026 16:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="tw8AgEb3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1EBC3164D4;
	Fri, 23 Jan 2026 16:13:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769184799; cv=none; b=R8pBzrvLJahQA1J/7DyV1IjKaf5xGe15cljkH/CJmBjZt0Khp9brujB0eFWOe03N6tT1xPSn4JrxFYhCf19eRarK3cRCk14pBB/3tuEwYsJ5w4gdWGgGP138gnvNtnE7F6abjMLQalpaq+FvZQ8L1gjN3ZJZ/vQ+hg1I2s11UpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769184799; c=relaxed/simple;
	bh=LRJChWUqzm5IH9vp3d3vgjXuCKSfJPdS1WKTIhZ0TeU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pjC0t4A1jPjQ3AXdb9pB93WHmPlPZChJWQs7FLr/Zjy270VSZGSmFmqALVzP4J4oCX0NIZ1wJXhweArUpRq7kd3uHm1XbHV9WVRd+oukH9roo0dR34j1vs0o/EtKPiDwD6BBGrdtnu/SYBmB6+qr9br0ZL5lTtuakOhaW1ZWttQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=tw8AgEb3; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 028B1C1F1CA;
	Fri, 23 Jan 2026 16:13:17 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id AA48D6070A;
	Fri, 23 Jan 2026 16:13:16 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9E0F3119A87C6;
	Fri, 23 Jan 2026 17:13:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769184795; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=FKUO3Oa2DviqnFLQPOxjYAs0OQkoJeGOWl1jDEu78cI=;
	b=tw8AgEb3Oz0akZnz6KVA09KWmwdmijcAcS9n8gwPDUvkl2Xg6PD1WrQTJz+kzDoYmMfOFw
	us7CCvYl3eMlmdLNwzXD2CHS8zAOLK7wl1WODKXhZ3nspmb+PQvYouza4MQRxZLCFhzyCV
	Z7UMhQfYywAUP7dW+h27aEaAKBkRVLcBa8aorJi9Yihaf1d8XdQEKAWGtozQM2mipEHRLm
	WXLTfibMMtLBEKQbX/ounBbs1g5g4znpkfGvty8MI6XvVMz2I8cATJQhaKDCVTybdSUny6
	fW7RihewkG5evYSAdTval3p9jgsm5dTVx1gWyVrdsRjL9OQpZjXkheUB9zeT1Q==
From: "Kory Maincent (TI.com)" <kory.maincent@bootlin.com>
Date: Fri, 23 Jan 2026 17:12:30 +0100
Subject: [PATCH v5 12/25] drm/tilcdc: Rename tilcdc_external to
 tilcdc_encoder
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260123-feature_tilcdc-v5-12-5a44d2aa3f6f@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259056-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[iki.fi,ideasonboard.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,armlinux.org.uk,bgdev.pl,atomide.com,intel.com,linaro.org,kwiboo.se];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,bootlin.com:email,bootlin.com:dkim,bootlin.com:mid,ti.com:url]
X-Rspamd-Queue-Id: 9B085784BD
X-Rspamd-Action: no action

The tilcdc_external module describes the encoder part of the tilcdc
driver. Rename it to tilcdc_encoder for better clarity and to make
the naming more consistent with DRM subsystem conventions, where
encoder-related files typically use "encoder" in their names.

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
Signed-off-by: Kory Maincent (TI.com) <kory.maincent@bootlin.com>
---
 drivers/gpu/drm/tilcdc/Makefile                                | 2 +-
 drivers/gpu/drm/tilcdc/tilcdc_drv.c                            | 2 +-
 drivers/gpu/drm/tilcdc/{tilcdc_external.c => tilcdc_encoder.c} | 2 +-
 drivers/gpu/drm/tilcdc/{tilcdc_external.h => tilcdc_encoder.h} | 0
 4 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/tilcdc/Makefile b/drivers/gpu/drm/tilcdc/Makefile
index b78204a65ce29..c6b484dad711a 100644
--- a/drivers/gpu/drm/tilcdc/Makefile
+++ b/drivers/gpu/drm/tilcdc/Makefile
@@ -6,7 +6,7 @@ endif
 tilcdc-y := \
 	tilcdc_plane.o \
 	tilcdc_crtc.o \
-	tilcdc_external.o \
+	tilcdc_encoder.o \
 	tilcdc_drv.o
 
 obj-$(CONFIG_DRM_TILCDC)	+= tilcdc.o
diff --git a/drivers/gpu/drm/tilcdc/tilcdc_drv.c b/drivers/gpu/drm/tilcdc/tilcdc_drv.c
index 4b9fa819358a2..d0503778b5f6f 100644
--- a/drivers/gpu/drm/tilcdc/tilcdc_drv.c
+++ b/drivers/gpu/drm/tilcdc/tilcdc_drv.c
@@ -26,7 +26,7 @@
 
 
 #include "tilcdc_drv.h"
-#include "tilcdc_external.h"
+#include "tilcdc_encoder.h"
 #include "tilcdc_regs.h"
 
 enum tilcdc_variant {
diff --git a/drivers/gpu/drm/tilcdc/tilcdc_external.c b/drivers/gpu/drm/tilcdc/tilcdc_encoder.c
similarity index 98%
rename from drivers/gpu/drm/tilcdc/tilcdc_external.c
rename to drivers/gpu/drm/tilcdc/tilcdc_encoder.c
index 11ac9673ba98a..b1c7b2257df30 100644
--- a/drivers/gpu/drm/tilcdc/tilcdc_external.c
+++ b/drivers/gpu/drm/tilcdc/tilcdc_encoder.c
@@ -12,7 +12,7 @@
 #include <drm/drm_simple_kms_helper.h>
 
 #include "tilcdc_drv.h"
-#include "tilcdc_external.h"
+#include "tilcdc_encoder.h"
 
 static
 struct drm_connector *tilcdc_encoder_find_connector(struct drm_device *ddev,
diff --git a/drivers/gpu/drm/tilcdc/tilcdc_external.h b/drivers/gpu/drm/tilcdc/tilcdc_encoder.h
similarity index 100%
rename from drivers/gpu/drm/tilcdc/tilcdc_external.h
rename to drivers/gpu/drm/tilcdc/tilcdc_encoder.h

-- 
2.43.0


