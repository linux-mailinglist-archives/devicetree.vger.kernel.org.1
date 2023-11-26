Return-Path: <devicetree+bounces-18978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED18E7F94D2
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 19:18:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 73C20B20C0F
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 18:18:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4581710940;
	Sun, 26 Nov 2023 18:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="KGSuGd3a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF68BCA
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 10:18:39 -0800 (PST)
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id B3B3D603F0;
	Sun, 26 Nov 2023 18:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1701022718;
	bh=xs8p0d+QAEnyiqX7pAek4yQaE4qoG0cOhuR0YEkyh/I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KGSuGd3a8lrrxny61YWvDXxZRpyddg2ysLQ1oRPvI90ey9wGlAXf3/6Y6F13pQjJ2
	 izoIWMQKjbweTKSNsSwXWvgIWII6nuMf+jyqxpz4b7Au6joPD8hD+A8Dyw2MR9ZGoT
	 4AGwHVLDQ2Zhb4aKRgQ2IfTA2DfAqQjlmFXYI+czNyTGoB//mVS9a98qLDFOKIKS7U
	 tPRJfkQSBVJBIyU0rIOmdaJevi4U0vQRP4SSjG/sQ4EbLlHk5BSgEOQFiagV9tezm3
	 IDNhvyYHscDJF94hBYZPTzprTEPxXSIO58qTCA1waCsuaRUsm1sSV3iq9b/shrfbDv
	 AycHKAzGRsKjA==
Date: Sun, 26 Nov 2023 20:17:56 +0200
From: Tony Lindgren <tony@atomide.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Sam Ravnborg <sam@ravnborg.org>,
	Vinay Simha BN <simhavcs@gmail.com>
Cc: Carl Philipp Klemm <philipp@uvos.xyz>, devicetree@vger.kernel.org,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
	Merlijn Wajer <merlijn@wizzup.org>,
	Sebastian Reichel <sre@kernel.org>, dri-devel@lists.freedesktop.org,
	Pavel Machek <pavel@ucw.cz>
Subject: [PATCH 4/6] drm/bridge: tc358775: Add burst and low-power modes
Message-ID: <20231126172018.GL5169@atomide.com>
References: <20231126163247.10131-1-tony@atomide.com>
 <20231126163247.10131-2-tony@atomide.com>
 <20231126171837.GK5169@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231126171837.GK5169@atomide.com>

Burst and low-power modes are supported both for tc358765 and tc358775.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/gpu/drm/bridge/tc358775.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
--- a/drivers/gpu/drm/bridge/tc358775.c
+++ b/drivers/gpu/drm/bridge/tc358775.c
@@ -632,7 +632,8 @@ static int tc_attach_host(struct tc_data *tc)
 
 	dsi->lanes = tc->num_dsi_lanes;
 	dsi->format = MIPI_DSI_FMT_RGB888;
-	dsi->mode_flags = MIPI_DSI_MODE_VIDEO;
+	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+		MIPI_DSI_MODE_LPM;
 
 	ret = devm_mipi_dsi_attach(dev, dsi);
 	if (ret < 0) {
-- 
2.42.1

