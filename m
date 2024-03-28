Return-Path: <devicetree+bounces-54182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C529088FD00
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 11:28:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7DBAB28AA7B
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 10:28:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F024F657C6;
	Thu, 28 Mar 2024 10:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="YUenUkYg"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198E9524BD
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 10:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711621689; cv=none; b=dK8+I/c9jZf0Cb+JSdyIzN+/lYO+KX0Y1cdoSqwFbhNM/qlOwFOFZWzkw3fcJkTrEgFFpP05+A7G/zr2JVAQNqcY8R/HZU2EGlos7BG6GyOSw2jcym6ULxODdKSDCcSUY2jL+0N2fBovFGwbQo79V+Z4Hs89djAVAkTCR+opr34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711621689; c=relaxed/simple;
	bh=Ln8rCNaCFhhx84AdoZpoUT/9m72PQETxM6VFApbMbSo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tUy5WC52I5FJZMyiJ/pWj6khK8pWluR4ziqNHBxZzz89L3PsxbETR9PMTuOO9fpx/eI//SQirqzKYMIaWcY1tSXkreTvgyFOPDYS6PrdUNGv+GS5ZzuH5ZE0fI+SnovzOzsfJUHEqbUGebPaMHIq1QKs0z2zaoOGs9NI8Qb51JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=YUenUkYg; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 258AA8814A;
	Thu, 28 Mar 2024 11:27:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1711621679;
	bh=tKRAdKcsJyxMsK9Eo/rAjyJTnRfyMspJGQ0LhTHO4lA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YUenUkYgcHc7IznUlq4+M+v+8RWVQQWD7YznqTLWqJfInRKfaF03685kx6E96Q/P/
	 CnTGat4xP3/fGCzKt7kXq6c605JGPl06macWwBdgtdKVeqRfKyA39V++VxbTlvg4b7
	 +KVVPQQUpcBHtALpDc7kLFRELeEX0wt/TUB4Jz4wSnMJsrmfmDgFvW4l9hUCLTSWWw
	 85HRFgfo7KdhCun0MtHte1EGL9eAb0qOQt2GCvwQ+AqqR/0NnDZ2Q0ixLBJMEne/XB
	 46gKYyj3gdko8rGST0+w4kp5lvlIH3ztRNpNey45OisnTo+8RbERB7uaQKdVTNtpIB
	 BqNBgAiuOIcAA==
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
Subject: [PATCH 4/4] drm/panel: simple: Add Innolux G121XCE-L01 LVDS display support
Date: Thu, 28 Mar 2024 11:27:38 +0100
Message-ID: <20240328102746.17868-4-marex@denx.de>
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

G121XCE-L01 is a Color Active Matrix Liquid Crystal Display composed of
a TFT LCD panel, a driver circuit, and LED backlight system. The screen
format is intended to support the 4:3, 1024(H) x 768(V) screen and either
262k/16.7M colors (RGB 6-bits or 8-bits) with LED backlight driver circuit.
All input signals are LVDS interface compatible.

Documentation [1] and [2] indicate that G121X1-L03 and G121XCE-L01 are
effectively identical panels, use the former as RGB 6-bits variant and
add the later as RGB 8-bits variant.

[1] https://www.distec.de/fileadmin/pdf/produkte/TFT-Displays/Innolux/G121X1-L03_Datasheet.pdf
[2] https://www.distec.de/fileadmin/pdf/produkte/TFT-Displays/Innolux/G121XCE-L01_Datasheet.pdf

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
 drivers/gpu/drm/panel/panel-simple.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 737c78b3b8a23..5acc9f2941909 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2623,6 +2623,24 @@ static const struct panel_desc innolux_g121x1_l03 = {
 	.connector_type = DRM_MODE_CONNECTOR_LVDS,
 };
 
+static const struct panel_desc innolux_g121xce_l01 = {
+	.timings = &innolux_g121x1_l03_timings,
+	.num_timings = 1,
+	.bpc = 8,
+	.size = {
+		.width = 246,
+		.height = 185,
+	},
+	.delay = {
+		.enable = 200,
+		.unprepare = 200,
+		.disable = 400,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+};
+
 static const struct display_timing innolux_g156hce_l01_timings = {
 	.pixelclock = { 120000000, 141860000, 150000000 },
 	.hactive = { 1920, 1920, 1920 },
@@ -4596,6 +4614,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "innolux,g121x1-l03",
 		.data = &innolux_g121x1_l03,
+	}, {
+		.compatible = "innolux,g121xce-l01",
+		.data = &innolux_g121xce_l01,
 	}, {
 		.compatible = "innolux,g156hce-l01",
 		.data = &innolux_g156hce_l01,
-- 
2.43.0


