Return-Path: <devicetree+bounces-132398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5193C9F6E74
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 20:48:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A94D618948A3
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 19:47:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 185221FDE14;
	Wed, 18 Dec 2024 19:45:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 719821FD7AC
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 19:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734551128; cv=none; b=hpmXLnWJJoHs23PAd6oGcurey0l//Ahkl378uesYbi0q41qc1D8SioYMkYFK/rAeaRh3zdf4E0AlPgc5a4cHeJHFiclTXpvFjmS/W1VWOa8bkDho/dfOeg9PTSUqIDr8gRONKJLB+itU/67i3AbnuEnUXW5h2LwLo6eg2hR0pJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734551128; c=relaxed/simple;
	bh=Xbety9S9KaNMvHEFY/Kx0YlZpF3GlbDYCukY6c3gakg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Z1A3e3Faz6lJ7KNkpRSE1XAyBva48NKpOKMEQiOf6huJ49XvQoqt6lbL73pl+z1qK/irslvwLnGyKi998XLSgYKFFlWFK6ls2DTmryXijHMJQPGNHzoLCEvntb90n6dzKs9As+WjYbZntUPOUU+KS/FNGAkTbxuyeA7OJaXSFEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tNzyo-0006vF-KF; Wed, 18 Dec 2024 20:45:10 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tNzym-0045Eb-0o;
	Wed, 18 Dec 2024 20:45:09 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tNzym-00DT63-31;
	Wed, 18 Dec 2024 20:45:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 18 Dec 2024 20:45:00 +0100
Subject: [PATCH 3/3] drm: panel-simple: support TOPLAND TIAN G07017 LCD
 panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241218-topland-tian-g07017-v1-3-d5e411c199e3@pengutronix.de>
References: <20241218-topland-tian-g07017-v1-0-d5e411c199e3@pengutronix.de>
In-Reply-To: <20241218-topland-tian-g07017-v1-0-d5e411c199e3@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, kernel@pengutronix.de, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The TIAN-G07017-01 is a 7" TFT-LCD module by TOPLAND ELECTRONICS (H.K).
The panel features 1024x600 24-bit RGB pixels driven over LVDS as well
as a PWM backlight and I2C-connected ft5506-compatible capacitive touch.

The panel description is taken from the Datasheet V0 (2024.5.23), but
it lists no timings and these were provided by the vendor separately.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpu/drm/panel/panel-simple.c | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 222c170dde8be261e98ff41168ef8a3a42c167c8..626cbc6858215f6fdc72063e38564e2dc1deb52c 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -4361,6 +4361,37 @@ static const struct panel_desc ti_nspire_classic_lcd_panel = {
 	.bus_flags = DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE,
 };
 
+static const struct display_timing topland_tian_g07017_01_timing = {
+	.pixelclock = { 44900000, 51200000, 63000000 },
+	.hactive = { 1024, 1024, 1024 },
+	.hfront_porch = { 16, 160, 216 },
+	.hback_porch = { 160, 160, 160 },
+	.hsync_len = { 1, 1, 140 },
+	.vactive = { 600, 600, 600 },
+	.vfront_porch = { 1, 12, 127 },
+	.vback_porch = { 23, 23, 23 },
+	.vsync_len = { 1, 1, 20 },
+};
+
+static const struct panel_desc topland_tian_g07017_01 = {
+	.timings = &topland_tian_g07017_01_timing,
+	.num_timings = 1,
+	.bpc = 8,
+	.size = {
+		.width = 154,
+		.height = 86,
+	},
+	.delay = {
+		.prepare = 1, /* 6.5 - 150µs PLL wake-up time */
+		.enable = 100,  /* 6.4 - Power on: 6 VSyncs */
+		.disable = 84, /* 6.4 - Power off: 5 Vsyncs */
+		.unprepare = 50, /* 6.4 - Power off: 3 Vsyncs */
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
+};
+
 static const struct drm_display_mode toshiba_lt089ac29000_mode = {
 	.clock = 79500,
 	.hdisplay = 1280,
@@ -5037,6 +5068,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "toshiba,lt089ac29000",
 		.data = &toshiba_lt089ac29000,
+	}, {
+		.compatible = "topland,tian-g07017-01",
+		.data = &topland_tian_g07017_01,
 	}, {
 		.compatible = "tpk,f07a-0102",
 		.data = &tpk_f07a_0102,

-- 
2.39.5


