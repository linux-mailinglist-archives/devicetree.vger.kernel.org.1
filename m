Return-Path: <devicetree+bounces-130267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D49989EE6B3
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 13:27:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 439012831CC
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 12:27:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 085E220967D;
	Thu, 12 Dec 2024 12:27:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="AcEFiVzI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.denx.de (mx.denx.de [89.58.32.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1C0208987
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 12:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.32.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734006450; cv=none; b=XK1RZ0tzkzysWXsSRsUV0PbEWahHNvG5dq7aPLQZ/9SccZgdnbUsvQ+5A8i6BsQRo3r9hg5lHdk4Lc1D0DBuoz6IKJJQRreF+0y21IsV+tPki/fLaz3O79pFiBoAl3B0duJbC1CPQQyAvXyJLnkgglWWHbDwVaEktJfd2fhKNmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734006450; c=relaxed/simple;
	bh=ItKK/rW7n6Q3SCp+L1Rvo/bgYgrq6XzS2/w7yj9DpMU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BiIWq1XTnQ4Yw5cJSYdwzFYazEKA0aogo3eKSznOUcnoCgi3PEhuZF2SDugJQZgWir/Bl3Iwmn1UZHBAAOab8kagqI20bJz0DIeHK+yvBsS9XN7TxtBwF3+yOjhkyHo6E19jLR6MMaUX5759oXMrh4t6kPVRL69iBtuVx4EW/V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=AcEFiVzI; arc=none smtp.client-ip=89.58.32.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7AB5B1048AF4C;
	Thu, 12 Dec 2024 13:27:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de; s=mx-20241105;
	t=1734006446;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mHcwm2VnyijozizWEdk9YvkCDMsezL1mm+SRcqgwyTI=;
	b=AcEFiVzIZnhFKRflGmQpq2rJGJHR0Eq0tOC7A/hJLm5NzlfgZ+GWU3fKDeeZb6PiiyrpPz
	d0ihkVK5J5dTmgjB9hs3de4oaoxdXPC3JsRpEN8b/y7nXuXF/TsY1NaQ6W0piDY5M9y7NU
	3RwwSNFBruThL9kGDwk2ilUgBMBgvKG0vAaxWQaDqULlyS3N1C8qHMc0rjqTeVDWYBwuRU
	pc57uFR0FUqhy3w32hku2/4BlSbgCpwuVYTAg3yaJ3C31dZWczIPB32O1TMkIn9SWMbskP
	XBOLhyjIDxYTlfUb4C97W6GQpkXRUucdFnHO0M0jnAh63R4PnCDKwDsB4hpYKQ==
From: Marek Vasut <marex@denx.de>
To: dri-devel@lists.freedesktop.org
Cc: Marek Vasut <marex@denx.de>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org
Subject: [PATCH 2/2] drm/panel: simple: add Multi-Inno Technology MI1010Z1T-1CP11
Date: Thu, 12 Dec 2024 13:26:29 +0100
Message-ID: <20241212122701.25305-2-marex@denx.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241212122701.25305-1-marex@denx.de>
References: <20241212122701.25305-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Add Multi-Inno Technology MI1010Z1T-1CP11 10.1" 1024x600 LVDS panel support.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Simona Vetter <simona@ffwll.ch>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
---
 drivers/gpu/drm/panel/panel-simple.c | 30 ++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index d5bb850df9d20..d68662b7265ae 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -3340,6 +3340,33 @@ static const struct panel_desc multi_inno_mi1010ait_1cp = {
 	.connector_type = DRM_MODE_CONNECTOR_LVDS,
 };
 
+static const struct display_timing multi_inno_mi1010z1t_1cp11_timing = {
+	.pixelclock = { 40800000, 51200000, 67200000 },
+	.hactive = { 1024, 1024, 1024 },
+	.hfront_porch = { 30, 110, 130 },
+	.hback_porch = { 30, 110, 130 },
+	.hsync_len = { 30, 100, 116 },
+	.vactive = { 600, 600, 600 },
+	.vfront_porch = { 4, 13, 80 },
+	.vback_porch = { 4, 13, 80 },
+	.vsync_len = { 2, 9, 40 },
+	.flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
+		 DISPLAY_FLAGS_DE_HIGH,
+};
+
+static const struct panel_desc multi_inno_mi1010z1t_1cp11 = {
+	.timings = &multi_inno_mi1010z1t_1cp11_timing,
+	.num_timings = 1,
+	.bpc = 6,
+	.size = {
+		.width = 260,
+		.height = 162,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB666_1X7X3_SPWG,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+};
+
 static const struct display_timing nec_nl12880bc20_05_timing = {
 	.pixelclock = { 67000000, 71000000, 75000000 },
 	.hactive = { 1280, 1280, 1280 },
@@ -4944,6 +4971,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "multi-inno,mi1010ait-1cp",
 		.data = &multi_inno_mi1010ait_1cp,
+	}, {
+		.compatible = "multi-inno,mi1010z1t-1cp11",
+		.data = &multi_inno_mi1010z1t_1cp11,
 	}, {
 		.compatible = "nec,nl12880bc20-05",
 		.data = &nec_nl12880bc20_05,
-- 
2.45.2


