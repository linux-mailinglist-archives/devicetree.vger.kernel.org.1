Return-Path: <devicetree+bounces-137033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C5FA074D5
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:36:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E8F017A31CE
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:36:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55AAB216604;
	Thu,  9 Jan 2025 11:36:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9839215F46
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 11:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736422570; cv=none; b=LpVCJHai/JLjtjp/H1e0Ds1nIGOXWoSnA5gDbH9k5nWDF1H7v3BOrACwt9LjJPvQM1rYEqHSbcKaEbcuxeJULyzdl5hX7OwJMlp8QMIN1O4ZogB0OtbfdTTaZgQ9pL+4Mf3880vGNutQVBdqk5prqcDZeBrAjP2bLZnYeeU7EJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736422570; c=relaxed/simple;
	bh=3Aez86cbjhGTtXIZGn5vb/utdup9rCrsQjzbEJi7Dro=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OIaiN+B+Bsx914M3o78A4FpphCegwT/2TAh30Q8XXs8UPX0c22mn7sDG3c9MR3/jkAoOe7lbWUsDkgi3kbJiGHH65v6cadFjh2hL+nxjji6fvdA4G4bI8NHfD/A1cB0Vu5hGpyaRU7wFgGnJX5ARfY9fR3b0fsFeo/ag9lPdUlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1tVqpC-0008AS-CY; Thu, 09 Jan 2025 12:35:42 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 09 Jan 2025 12:34:58 +0100
Subject: [PATCH 2/2] drm/panel: simple: Add DataImage FG080016DNCWAG03
 driver support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250109-panel-dataimage_fg080016dncwag-v1-2-0465603f6669@pengutronix.de>
References: <20250109-panel-dataimage_fg080016dncwag-v1-0-0465603f6669@pengutronix.de>
In-Reply-To: <20250109-panel-dataimage_fg080016dncwag-v1-0-0465603f6669@pengutronix.de>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1976; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=3Aez86cbjhGTtXIZGn5vb/utdup9rCrsQjzbEJi7Dro=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYkiv39Kz2uf6joDvX/mKnnxMf73k9e2us7VnOJjt9okl5
 m+y3r1he0cpC4MYB4OsmCJLrJqcgpCx/3WzSrtYmDmsTCBDGLg4BWAiDQ8ZGR7r720pafs/a+fR
 yReeReQW7I9O5OS1X2VgInAsvEX9EA/Df+9ZVxhTnp2tML3Wcs9oiTdr+rTy5fUiu/YKbVv2zE+
 imRsA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::ac
X-SA-Exim-Mail-From: jre@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Add DataImage FG080016DNCWAG03 8" 640x480 TFT LCD panel support.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 drivers/gpu/drm/panel/panel-simple.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 222c170dde8be261e98ff41168ef8a3a42c167c8..14d4cf235036cfd662bf16cb794ea2454d6fd2b2 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -1734,6 +1734,31 @@ static const struct panel_desc dataimage_fg040346dsswbg04 = {
 	.connector_type = DRM_MODE_CONNECTOR_DPI,
 };
 
+static const struct display_timing dataimage_fg080016dncwag03_timing = {
+	.pixelclock = { 24000000, 25000000, 32500000 },
+	.hactive = { 640, 640, 640 },
+	.hfront_porch = { 64, 70, 115 },
+	.hback_porch =  { 64, 70, 115 },
+	.hsync_len = { 20, 20, 20 },
+	.vactive = { 480, 480, 480 },
+	.vfront_porch = { 8, 12, 30 },
+	.vback_porch =  { 8, 13, 31 },
+	.vsync_len = { 20, 20, 20 },
+};
+
+static const struct panel_desc dataimage_fg080016dncwag03 = {
+	.timings = &dataimage_fg080016dncwag03_timing,
+	.num_timings = 1,
+	.bpc = 6,
+	.size = {
+		.width = 217,
+		.height = 136,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE,
+	.connector_type = DRM_MODE_CONNECTOR_DPI,
+};
+
 static const struct display_timing dataimage_fg1001l0dsswmg01_timing = {
 	.pixelclock = { 68900000, 71110000, 73400000 },
 	.hactive = { 1280, 1280, 1280 },
@@ -4731,6 +4756,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "dataimage,fg040346dsswbg04",
 		.data = &dataimage_fg040346dsswbg04,
+	}, {
+		.compatible = "dataimage,fg080016dncwag03",
+		.data = &dataimage_fg080016dncwag03,
 	}, {
 		.compatible = "dataimage,fg1001l0dsswmg01",
 		.data = &dataimage_fg1001l0dsswmg01,

-- 
2.39.5


