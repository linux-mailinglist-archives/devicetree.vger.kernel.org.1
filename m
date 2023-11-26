Return-Path: <devicetree+bounces-18970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C2A7F948A
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 18:19:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 06C591C208CC
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 17:19:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4174DDD8;
	Sun, 26 Nov 2023 17:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="XVTNgv3E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B0F7AC
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 09:19:21 -0800 (PST)
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 894AA60479;
	Sun, 26 Nov 2023 17:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1701019160;
	bh=Yi4nE9OmTsFagLEE5vj6YKCJ5nsTaUEbxvbympjRX3k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XVTNgv3ElKZu0YZB3dm19Jz+9FI9cI0PM9gtu651eE/WOg8Vau2jHgTxbpXeu3mFT
	 noyWvXrA0QyiL/MiyYLtIsHfUO+aSCZ0ui2ML7hs83J1uaMnqava4knjozc8daBJ/u
	 6FwvbtH/dNk2Cf24RvWIDf8j8WomvAWIJl4jcxqw2sdkHlq3mDm5Sh1DxKN9MRYvRX
	 cWrACrSAwQ40vHdjkcdOzEf4HGSjt8rRWs27Pju6Hv3qrsrOMvZ3l0YNzcy8fexVxl
	 w/SFo4hwFgrRfF+ylxjVzfuJdqbVbApeuW/bWqvyaShMAjFQJIqDJ5jnf4rjOp1xZz
	 MVCjPiPv7khGA==
Date: Sun, 26 Nov 2023 19:18:37 +0200
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
Subject: [PATCH 3/6] drm/bridge: tc358775: Add jeida-24 support
Message-ID: <20231126171837.GK5169@atomide.com>
References: <20231126163247.10131-1-tony@atomide.com>
 <20231126163247.10131-2-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231126163247.10131-2-tony@atomide.com>

The jeida-24 register values are the default hardware settings, but they
not listed in the driver. Let's add them.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/gpu/drm/bridge/tc358775.c | 21 ++++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
--- a/drivers/gpu/drm/bridge/tc358775.c
+++ b/drivers/gpu/drm/bridge/tc358775.c
@@ -458,8 +458,18 @@ static void tc_bridge_enable(struct drm_bridge *bridge)
 	 * Default hardware register settings of tc358775 configured
 	 * with MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA jeida-24 format
 	 */
-	if (connector->display_info.bus_formats[0] ==
-		MEDIA_BUS_FMT_RGB888_1X7X4_SPWG) {
+	switch (connector->display_info.bus_formats[0]) {
+	case MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA:
+		/* JEIDA-24 */
+		d2l_write(tc->i2c, LV_MX0003, LV_MX(LVI_R2, LVI_R3, LVI_R4, LVI_R5));
+		d2l_write(tc->i2c, LV_MX0407, LV_MX(LVI_R6, LVI_R1, LVI_R7, LVI_G2));
+		d2l_write(tc->i2c, LV_MX0811, LV_MX(LVI_G3, LVI_G4, LVI_G0, LVI_G1));
+		d2l_write(tc->i2c, LV_MX1215, LV_MX(LVI_G5, LVI_G6, LVI_G7, LVI_B2));
+		d2l_write(tc->i2c, LV_MX1619, LV_MX(LVI_B0, LVI_B1, LVI_B3, LVI_B4));
+		d2l_write(tc->i2c, LV_MX2023, LV_MX(LVI_B5, LVI_B6, LVI_B7, LVI_L0));
+		d2l_write(tc->i2c, LV_MX2427, LV_MX(LVI_HS, LVI_VS, LVI_DE, LVI_R0));
+		break;
+	case MEDIA_BUS_FMT_RGB888_1X7X4_SPWG:
 		/* VESA-24 */
 		d2l_write(tc->i2c, LV_MX0003, LV_MX(LVI_R0, LVI_R1, LVI_R2, LVI_R3));
 		d2l_write(tc->i2c, LV_MX0407, LV_MX(LVI_R4, LVI_R7, LVI_R5, LVI_G0));
@@ -468,7 +478,9 @@ static void tc_bridge_enable(struct drm_bridge *bridge)
 		d2l_write(tc->i2c, LV_MX1619, LV_MX(LVI_B6, LVI_B7, LVI_B1, LVI_B2));
 		d2l_write(tc->i2c, LV_MX2023, LV_MX(LVI_B3, LVI_B4, LVI_B5, LVI_L0));
 		d2l_write(tc->i2c, LV_MX2427, LV_MX(LVI_HS, LVI_VS, LVI_DE, LVI_R6));
-	} else { /*  MEDIA_BUS_FMT_RGB666_1X7X3_SPWG - JEIDA-18 */
+		break;
+	case MEDIA_BUS_FMT_RGB666_1X7X3_SPWG:
+		/* JEIDA-18 */
 		d2l_write(tc->i2c, LV_MX0003, LV_MX(LVI_R0, LVI_R1, LVI_R2, LVI_R3));
 		d2l_write(tc->i2c, LV_MX0407, LV_MX(LVI_R4, LVI_L0, LVI_R5, LVI_G0));
 		d2l_write(tc->i2c, LV_MX0811, LV_MX(LVI_G1, LVI_G2, LVI_L0, LVI_L0));
@@ -476,6 +488,9 @@ static void tc_bridge_enable(struct drm_bridge *bridge)
 		d2l_write(tc->i2c, LV_MX1619, LV_MX(LVI_L0, LVI_L0, LVI_B1, LVI_B2));
 		d2l_write(tc->i2c, LV_MX2023, LV_MX(LVI_B3, LVI_B4, LVI_B5, LVI_L0));
 		d2l_write(tc->i2c, LV_MX2427, LV_MX(LVI_HS, LVI_VS, LVI_DE, LVI_L0));
+		break;
+	default:
+		break;
 	}
 
 	d2l_write(tc->i2c, VFUEN, VFUEN_EN);
-- 
2.42.1

