Return-Path: <devicetree+bounces-256215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 386CFD33ACC
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 18:06:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C25FD302ADE0
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 17:04:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD2BD39A7E6;
	Fri, 16 Jan 2026 17:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="HssuwnIA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C0C343D80
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 17:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768582998; cv=none; b=QEDWN8wsNeyQxlerOGwjU3Y09Qtw3RUmcN05zyaQECNYAP++mHs8BD0Qk4zQwfuUrlUpU9PhmTe4e+6PtOnBy2ysQxtDdp1bBFiNpeM2wWNe8GYbONQVMDxmhz2Bjg8J2qEMZ3/X69e/S9xskwBLotg1qF0aumDLbox6ycsdZo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768582998; c=relaxed/simple;
	bh=LRJChWUqzm5IH9vp3d3vgjXuCKSfJPdS1WKTIhZ0TeU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pOON2kAVfRKnGHTBcxGJQ5PqnTDChQ1YdqvmYelXSIPB1OJG5VxgXWV29G8+gORIxfbPIvifrLeuXBIbFlMB2IjtPGDU4wA2CB3KllkW6DpFQmM8c3u5zF0yFQ1kQ7Fl//0pYwVl4o1wyf3DCC5j4lnQIV77im9eS8V9sc+lQmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=HssuwnIA; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 315754E42116;
	Fri, 16 Jan 2026 17:03:16 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0526B606F9;
	Fri, 16 Jan 2026 17:03:16 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 2146510B68CAD;
	Fri, 16 Jan 2026 18:03:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1768582994; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=FKUO3Oa2DviqnFLQPOxjYAs0OQkoJeGOWl1jDEu78cI=;
	b=HssuwnIAiOFglcPRm5KS6xPrm73fQpdn4jQ0LSacQit6NHX4gOgi+h8mvza2rq7q6+jUOU
	HQs4Oz7FuCf5gNB3KCNTvXDGY7YGc0DngnBPmX0aWeO1UWzX+lh4jOcOPAGGR59C/27dd7
	BZBjhAFvJTeM6NPpApC8DxmfX47MF2bgexnZWbYozE95PBFJbLY4g6rWwf/mKsFftedE5U
	XaPR1e+mStgeMzRzIAY4HjW1zfv+VzLUeSWKJGrdon+lAdTMM5/61ZuiC/7GdbQLqs3Jpd
	s1fv3Almp27pgfRr4V1HYNjIni/7kjbGxPkX94zol4YPUE833/SqtGFeL7AlhQ==
From: "Kory Maincent (TI.com)" <kory.maincent@bootlin.com>
Date: Fri, 16 Jan 2026 18:02:12 +0100
Subject: [PATCH v4 12/25] drm/tilcdc: Rename tilcdc_external to
 tilcdc_encoder
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-feature_tilcdc-v4-12-2c1c22143087@bootlin.com>
References: <20260116-feature_tilcdc-v4-0-2c1c22143087@bootlin.com>
In-Reply-To: <20260116-feature_tilcdc-v4-0-2c1c22143087@bootlin.com>
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
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3

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


