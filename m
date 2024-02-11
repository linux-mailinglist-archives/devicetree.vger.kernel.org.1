Return-Path: <devicetree+bounces-40459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3828508CD
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 12:18:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B0871C2136C
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 11:18:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EE7739AFA;
	Sun, 11 Feb 2024 11:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="S4VHzaJw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2E3D5A79C
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 11:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707650311; cv=none; b=qD9EgWLxo3XYtSm1yqmloyKDdyD4ia55NeBT5LmDLM6VnfrEvEWxtOcsGuLSFnKbXP6AO2o9EHLHVKzkrppkQzazFszv4i8tDNafPdgmZODv78Dt9gxdGHWm1i1FNg/Gnu0c83AZvEPlH+lGJ9UHqul9hQ82vax1KJLPDNntSik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707650311; c=relaxed/simple;
	bh=y3V35ER3Ilcu2aNMexJjIxdCPyQR6xRTWRwiX3tpK34=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SBDxRiGh9CgkDG7vtibV2I0WmkYZfTWBUV0r4g/4yAxe3jWox4LJ0QkAxhbMkf+Dlwckzg0l09dRDrxrrBysQquTdJgtGIaF2/IB4GulG+dxG0/XUw5YIUIWZ7aOj2drQ4ro1WSwNSJyYYDt5byZBMNkYqDJl8qcOhNNAvo9/lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=S4VHzaJw; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id ABE38604E8;
	Sun, 11 Feb 2024 11:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1707650308;
	bh=y3V35ER3Ilcu2aNMexJjIxdCPyQR6xRTWRwiX3tpK34=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=S4VHzaJwkBtpb0wUV0eH7YHUTKWHPpVyeVmkIXTc7BD2SD48iEtZhb7/7NsA3K5pv
	 fYddUA9B2eCxye1E9+PcWmrN+VtuG7sOPhKCaTl6p1UlEjOxxA5vT5wmX/xjIJ/Jfj
	 YSo22xkt0HnXqRgmt2iiBPZEKj/X+cKFoQCOBXUssQd1/J+s8rWctdLTf3SIHqZf69
	 +YnMHxMCVpZdobhHLKPA/kud14O1jh/Oeozq7S60zHPTqhLLr05801j7M065h09ZJf
	 Q1Q/lwlWDimKyMF05HDViZm9AcM7UXFN8ply2qYmQSjIqsYhwSAB8X4dqnKFwKIrNX
	 NiUPqXHvFJJ1A==
From: Tony Lindgren <tony@atomide.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 2/2] drm/panel: simple: Add BOE BP082WX1-100 8.2" panel
Date: Sun, 11 Feb 2024 13:16:59 +0200
Message-ID: <20240211111703.7567-2-tony@atomide.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240211111703.7567-1-tony@atomide.com>
References: <20240211111703.7567-1-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The BOE BP082WX1-100 is a 8.2" panel similar to the 10.1" panel
BP101WX1-100. Both panels use the same timings.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---

Changes since v1:
- Update viewport dimensions based on panelook values asa suggested
  by Dmitry

---
 drivers/gpu/drm/panel/panel-simple.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -1367,6 +1367,23 @@ static const struct drm_display_mode boe_bp101wx1_100_mode = {
 	.vtotal = 800 + 6 + 8 + 2,
 };
 
+static const struct panel_desc boe_bp082wx1_100 = {
+	.modes = &boe_bp101wx1_100_mode,
+	.num_modes = 1,
+	.bpc = 8,
+	.size = {
+		.width = 177,
+		.height = 110,
+	},
+	.delay = {
+		.enable = 50,
+		.disable = 50,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+};
+
 static const struct panel_desc boe_bp101wx1_100 = {
 	.modes = &boe_bp101wx1_100_mode,
 	.num_modes = 1,
@@ -4343,6 +4360,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "bananapi,s070wv20-ct16",
 		.data = &bananapi_s070wv20_ct16,
+	}, {
+		.compatible = "boe,bp082wx1-100",
+		.data = &boe_bp082wx1_100,
 	}, {
 		.compatible = "boe,bp101wx1-100",
 		.data = &boe_bp101wx1_100,
-- 
2.43.1

