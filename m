Return-Path: <devicetree+bounces-42048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CFC856361
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 13:39:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 52E671F260A6
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 12:39:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4E1512CD9C;
	Thu, 15 Feb 2024 12:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="HQsp8Tzn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8435618EA2
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 12:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708000740; cv=none; b=qQOrp9fwUP4trk43M1/XASfv58x4vlQYeYCYjgaY507xRtbv0pLFeCD6W/UrttuNN0/LCOAurEt/v2y29ifE0Z6y1lUW9hXSvHxJOLzwd6RXhDwd8I4o1nudqHHDL9OiYaMSFH8ke7K5arGtbgpVI6DurllpbQX4FTqPLFigNRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708000740; c=relaxed/simple;
	bh=62ixwlg4iV01reNSkMHqs5+wysAaMhHEA/y/f3xMgdQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZHckvs/aWQfOv4yZifIKFwO+XRi/tmO/d1sLvNMB2F5U6/+vP8fzcfQh/h6ghlrxZc/sZSxOHK0j+NNTzfaznoCTHrf0qTgV5/9w414EFIVeuIkC69n1qdinzdt9UNxrtoanPvpvT5ziiBPXAum14qh7gGSf7srrOniA8cIZPLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=HQsp8Tzn; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 5EE81603EE;
	Thu, 15 Feb 2024 12:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1708000738;
	bh=62ixwlg4iV01reNSkMHqs5+wysAaMhHEA/y/f3xMgdQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HQsp8TzncNkHFc9PK+mBUO7Gj3/hSqkh+fyA+YYB8tDFvIj8n/jcvcHkZ57T1v3o6
	 Mub7ycQx5Ix2conlQkRNGdZA9z7+8TiY2CKij9z7x9EGyVT3eor6aEfBRd4bqN2aqw
	 mNrhanEOJPpO6ib67EvaWIjwZ2mjvXXmrctwcYdGSdJDXu2g+NxGI2O6jGirPs63Vb
	 ZwfURaYKBOZTCkud2cDngX3dXossCewGEfaV7BhQMWrLBcr0knrEMtprfKWarwFzFF
	 JIoJvNstg+OO2yljnVy25/z1RWcXczDM2nobCBoXESB8ztiiRyCoksrR10PyiF0XNs
	 xVbA1HkKqnkKQ==
From: Tony Lindgren <tony@atomide.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simha BN <simhavcs@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Michael Walle <mwalle@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 07/10] drm/bridge: tc358775: Add burst and low-power modes
Date: Thu, 15 Feb 2024 14:31:50 +0200
Message-ID: <20240215123222.42609-8-tony@atomide.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240215123222.42609-1-tony@atomide.com>
References: <20240215123222.42609-1-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Burst and low-power modes are supported both for tc358765 and tc358775.

Reviewed-by: Michael Walle <mwalle@kernel.org>
Tested-by: Michael Walle <mwalle@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/gpu/drm/bridge/tc358775.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
--- a/drivers/gpu/drm/bridge/tc358775.c
+++ b/drivers/gpu/drm/bridge/tc358775.c
@@ -619,7 +619,8 @@ static int tc_attach_host(struct tc_data *tc)
 
 	dsi->lanes = tc->num_dsi_lanes;
 	dsi->format = MIPI_DSI_FMT_RGB888;
-	dsi->mode_flags = MIPI_DSI_MODE_VIDEO;
+	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+			  MIPI_DSI_MODE_LPM;
 
 	ret = devm_mipi_dsi_attach(dev, dsi);
 	if (ret < 0) {
-- 
2.43.1

