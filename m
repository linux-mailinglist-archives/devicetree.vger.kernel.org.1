Return-Path: <devicetree+bounces-124096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A489D79CA
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 02:34:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5206A282569
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 01:34:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC6542500D6;
	Mon, 25 Nov 2024 01:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="GTVgUIQ4"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2CD7BA38
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 01:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732498479; cv=none; b=Sn0I/e9KiOKAQe0Al6aagBfmOWbFllliVi3M0tQAynAomXbis8GzN3hscnRcy927dr/bSJRxEePMrvGhDsUQ/RGV0GA2TXFluqtKzSqjsgV9j1oLkOBaBeF/Ua9gG1nDdCvS+9AWhiwYnfVDJLZbnK1HBRThDv9kZ3yItZWkZA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732498479; c=relaxed/simple;
	bh=rEkeNrdtuVWs86yQGmqz7fvVKheui7LedszhMi/pwyY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nbmfAIO7roJOvbTqQYhGz6CRZcMWynFCUEu+N3sqaGoeyH58yF9+4dE1uT/l49aDDzGvNPb19KyDcl1eHWjKyYfsKGuU2PsPwZLuqqkAY7pn1CYRA/kas5WnA6dT7svuATtV/IxYmFIjY4MKoZLd2Uk9v1Tf4lpw6grOd998iTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=GTVgUIQ4; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 5A05D8957E;
	Mon, 25 Nov 2024 02:34:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1732498475;
	bh=5rDgWRYM1puyG+0vJ+fkNmTmG34J45n4Fh0kXCnlKOc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GTVgUIQ4jR+J9rBiLV9yLdmFpi2gOdIQtE0A6LvdAz+a0iEL/2oH5HF+j4xHZOYQG
	 iGxVf41OL2aRrtNhTRh+qegpE6cZe77Fjo7SxS8bJy50xfsJ69uSS6V4pAZlSkEiso
	 /dc4c+8pgUNZD/fyGZicmNqEZKMpizA/eadat14zPo9XRkNvohaJAAkzHW3FX2CtFm
	 C/66N42x8CjGxgsifXgytiA1Uyh6//SjLzSddyQl8pZec/penRN1sRhG9gpCBfcdoS
	 P7+v42F9yXcRhmOMLuejlSjGnfV2KBjK41otOjuaqJiPZHyMJ2l0Qf4HodawOR0Ft/
	 /Tz7ChNHK78oA==
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
Subject: [PATCH 2/2] drm/panel: simple: add Multi-Inno Technology MI0700A2T-30
Date: Mon, 25 Nov 2024 02:33:36 +0100
Message-ID: <20241125013413.160725-2-marex@denx.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241125013413.160725-1-marex@denx.de>
References: <20241125013413.160725-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

Add Multi-Inno Technology MI0700A2T-30 7" 800x480 LVDS panel support.

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
index 06381c6282097..4e2582e1a2bd1 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -3222,6 +3222,33 @@ static const struct panel_desc mitsubishi_aa084xe01 = {
 	.bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE,
 };
 
+static const struct display_timing multi_inno_mi0700a2t_30_timing = {
+	.pixelclock = { 26400000, 33000000, 46800000 },
+	.hactive = { 800, 800, 800 },
+	.hfront_porch = { 16, 204, 354 },
+	.hback_porch = { 46, 46, 46 },
+	.hsync_len = { 1, 6, 40 },
+	.vactive = { 480, 480, 480 },
+	.vfront_porch = { 7, 22, 147 },
+	.vback_porch = { 23, 23, 23 },
+	.vsync_len = { 1, 3, 20 },
+	.flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
+		 DISPLAY_FLAGS_DE_HIGH,
+};
+
+static const struct panel_desc multi_inno_mi0700a2t_30 = {
+	.timings = &multi_inno_mi0700a2t_30_timing,
+	.num_timings = 1,
+	.bpc = 6,
+	.size = {
+		.width = 153,
+		.height = 92,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB666_1X7X3_SPWG,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+};
+
 static const struct display_timing multi_inno_mi0700s4t_6_timing = {
 	.pixelclock = { 29000000, 33000000, 38000000 },
 	.hactive = { 800, 800, 800 },
@@ -4905,6 +4932,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "mitsubishi,aa084xe01",
 		.data = &mitsubishi_aa084xe01,
+	}, {
+		.compatible = "multi-inno,mi0700a2t-30",
+		.data = &multi_inno_mi0700a2t_30,
 	}, {
 		.compatible = "multi-inno,mi0700s4t-6",
 		.data = &multi_inno_mi0700s4t_6,
-- 
2.45.2


