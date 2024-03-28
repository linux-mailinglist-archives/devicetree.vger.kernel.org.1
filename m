Return-Path: <devicetree+bounces-54181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1C888FCFF
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 11:28:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 998111C2EE09
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 10:28:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 390217C6C1;
	Thu, 28 Mar 2024 10:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="UkA4ZjD8"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4750D657C6
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 10:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711621688; cv=none; b=uhTf1PZvbDI6ndZcqHvAYGt8KyRb2Zxt73PECWp4kVel5xyaXwEM0KEfz3WY6pJ7+lezEuYS09gxY+Ns5IR2h+Svo5vCdAB5lVtSXYm/gJQHw8y8pdSj07/mPIm7O6BKLz4ps00tybgmt6tflZFmni0+gtrxyaSmi9XjaZB2YYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711621688; c=relaxed/simple;
	bh=iBvIuCfL7h/IgVhCf6F+OV5yxfuXmqz/xSbIf2VFfvc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Fa1UcfEZNJYURmh253cyTdHyl22OWGMo5VLEq6pbVL1LFap6+n7qbU2mXhY+1CgKgdXR0LvOvDlyKpcqorOhTuBIimFb9cwQ4zu5Tiix7j9Yz3xHiCgf1FIOXwgC21o9bii0Rk6rVz1n+o+YMNmjVBdtvcZF0owStv4I51TSyz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=UkA4ZjD8; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 83E5588148;
	Thu, 28 Mar 2024 11:27:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1711621679;
	bh=+YxRHiTBmG1u1/Lt0T62HVZuDCN9jyIj8JUIdTd9l8Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UkA4ZjD8KYf2bX3KVfp0ITIXc3fPPQbrd0sU/sdPpMuEMzI6qC6EFsp0VeftSU4pc
	 najrhdaR75LLhKLPfRT6WEab7BkV7NTuCzoTJj6ZtzVXdtGtz/imCpknKYfrp5rAlF
	 Eq1h3alXbx3++eO5qLX8NaWsO4rTVZSJUQUntODNg7tgF11EOYVzjAWCY3bGs3cO5Y
	 scY1mOcyVGRNzS22TKpRCgQLrQygWr5te+/kbieB7jdn4rgo2UDA2ThXk0EJmFazFQ
	 bbPj+HXL0P/fmZRpOBry5PXgixPJZqxSZAd+l1jmDaOW3a7/pcjYwZCb9kNIrC42xG
	 jVpoWFQm3mklA==
From: Marek Vasut <marex@denx.de>
To: dri-devel@lists.freedesktop.org
Cc: Marek Vasut <marex@denx.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org
Subject: [PATCH 3/4] drm/panel: simple: Convert Innolux G121X1-L03 to display_timing
Date: Thu, 28 Mar 2024 11:27:37 +0100
Message-ID: <20240328102746.17868-3-marex@denx.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240328102746.17868-1-marex@denx.de>
References: <20240328102746.17868-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

Use display_timing instead of drm_display_mode to define a range of
possible display timings supported by this panel. This makes the panel
support more flexible and improves compatibility. No functional change
is expected.

The settings are picked from documentation [1] section 6.1 INPUT SIGNAL
TIMING SPECIFICATIONS.

[1] https://www.distec.de/fileadmin/pdf/produkte/TFT-Displays/Innolux/G121X1-L03_Datasheet.pdf

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@gmail.com>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
---
 drivers/gpu/drm/panel/panel-simple.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index d4c30a86d15d6..737c78b3b8a23 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2592,22 +2592,22 @@ static const struct panel_desc innolux_g121i1_l01 = {
 	.connector_type = DRM_MODE_CONNECTOR_LVDS,
 };
 
-static const struct drm_display_mode innolux_g121x1_l03_mode = {
-	.clock = 65000,
-	.hdisplay = 1024,
-	.hsync_start = 1024 + 0,
-	.hsync_end = 1024 + 1,
-	.htotal = 1024 + 0 + 1 + 320,
-	.vdisplay = 768,
-	.vsync_start = 768 + 38,
-	.vsync_end = 768 + 38 + 1,
-	.vtotal = 768 + 38 + 1 + 0,
-	.flags = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+static const struct display_timing innolux_g121x1_l03_timings = {
+	.pixelclock = { 57500000, 64900000, 74400000 },
+	.hactive = { 1024, 1024, 1024 },
+	.hfront_porch = { 90, 140, 190 },
+	.hback_porch = { 90, 140, 190 },
+	.hsync_len = { 36, 40, 60 },
+	.vactive = { 768, 768, 768 },
+	.vfront_porch = { 2, 15, 30 },
+	.vback_porch = { 2, 15, 30 },
+	.vsync_len = { 2, 8, 20 },
+	.flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW,
 };
 
 static const struct panel_desc innolux_g121x1_l03 = {
-	.modes = &innolux_g121x1_l03_mode,
-	.num_modes = 1,
+	.timings = &innolux_g121x1_l03_timings,
+	.num_timings = 1,
 	.bpc = 6,
 	.size = {
 		.width = 246,
-- 
2.43.0


