Return-Path: <devicetree+bounces-18981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 183F37F94FF
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 20:16:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B5963280D7A
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 19:16:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89C3710979;
	Sun, 26 Nov 2023 19:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="PPZzIyLR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B84E6FB
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 11:16:37 -0800 (PST)
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id BE62960342;
	Sun, 26 Nov 2023 19:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1701026197;
	bh=BcTjqWe4uScWhaNbhPONqwVftNfiGtAQS9TIsxqQBR4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PPZzIyLRPGvv/xqQ0VhyiPLCAqPrN+lwNamSXl5xslpa1kXkRd5ZbfElk+s1oVhgK
	 kNOLfyd+ZINqltUejUdoVzKl0XJDFoCoK8pd+TbD+Kqs7lTT53Y886uUXCatsw9wsX
	 aduQj+BC6APTu0Gc7roXsUHDORJYA5Ip9yotJ5iH9SuHLXjQLURKOpScFKJbRp3H1+
	 wggJVix7Hg8ijuk2n0nepak09rkn/1abhPIfi1bndDecZeg2W9a6zvvIa0CfbJKQtx
	 0p6Ne7gUElgwGD68p6EkB+97P198ihe2F3kORpXX58BVgMUtTds+q1NDQg3lt8djIK
	 ItJp+J6nWkBxA==
Date: Sun, 26 Nov 2023 21:15:54 +0200
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
Subject: [PATCH 6/6] drm/bridge: tc358775: Configure hs_rate and lp_rate
Message-ID: <20231126191554.GM5169@atomide.com>
References: <20231126163247.10131-1-tony@atomide.com>
 <20231126163247.10131-2-tony@atomide.com>
 <20231126171837.GK5169@atomide.com>
 <20231126172018.GL5169@atomide.com>
 <20231126182135.GA5166@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231126182135.GA5166@atomide.com>

The hs_rate and lp_rate may be used by the dsi host for timing
calculations. The tc358775 has a maximum bit rate of 1 Gbps/lane,
tc358765 has maximurate of 800 Mbps per lane.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/gpu/drm/bridge/tc358775.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
--- a/drivers/gpu/drm/bridge/tc358775.c
+++ b/drivers/gpu/drm/bridge/tc358775.c
@@ -653,6 +653,11 @@ static int tc_attach_host(struct tc_data *tc)
 	dsi->format = MIPI_DSI_FMT_RGB888;
 	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
 		MIPI_DSI_MODE_LPM;
+	if (tc->type == TC358765)
+		dsi->hs_rate = 800000000;
+	else
+		dsi->hs_rate = 1000000000;
+	dsi->lp_rate = 10000000;
 
 	ret = devm_mipi_dsi_attach(dev, dsi);
 	if (ret < 0) {
-- 
2.42.1

