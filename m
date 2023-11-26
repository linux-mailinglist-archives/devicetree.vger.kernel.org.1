Return-Path: <devicetree+bounces-18968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A3E7F93DF
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 17:34:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3DB80B20EAF
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 16:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9188DD2F9;
	Sun, 26 Nov 2023 16:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="IMfnWVio"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D168DD7
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 08:34:32 -0800 (PST)
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 13C0B60461;
	Sun, 26 Nov 2023 16:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1701016472;
	bh=9i8b9tXyh1uDR+OQA6gU/NAtE3k4V7XC10gl799vQqU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IMfnWViolujDn0MfZMj3UnLY4R85WyrD+34DaiXlvGbPvIN9SLLra4j0TtlgeECUs
	 OWkjzSx2y+p3I6nj2ojMY6OtT7cnGlwAUIYHFkbTXQJ28p1F+bMI+I7rgUhuboreB9
	 PwsTrRbCJOwMA7K8tt53Wl9SxOkOSN7l8epGwCe3wYXDWVhUe8cVTDiTzTHF7BQH8u
	 ue6n4R7XD7IAIccB2D+v48MRACMVBUrkOc4cI6/U72ENN0Z9k+J/43oWmYIkWJDUkA
	 dSGAFBzzLqPggezTXrRH+ZcK2fnyrESOmqvKr+ER0KgA1j6FmYmrA/YfOhIW+yCeqw
	 OGjN4djTnuPEQ==
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
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Sam Ravnborg <sam@ravnborg.org>,
	Vinay Simha BN <simhavcs@gmail.com>
Cc: Carl Philipp Klemm <philipp@uvos.xyz>,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
	Merlijn Wajer <merlijn@wizzup.org>,
	Pavel Machek <pavel@ucw.cz>,
	Sebastian Reichel <sre@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/6] drm/bridge: tc358775: Fix getting dsi host data lanes
Date: Sun, 26 Nov 2023 18:32:37 +0200
Message-ID: <20231126163247.10131-2-tony@atomide.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231126163247.10131-1-tony@atomide.com>
References: <20231126163247.10131-1-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The current code assume hardcoded dsi host endpoint 1, which may not
be the case. Let's fix that and simplify the code by getting the dsi
endpoint with of_graph_get_remote_endpoint() that does not assume any
endpoint numbering.

Fixes: b26975593b17 ("display/drm/bridge: TC358775 DSI/LVDS driver")
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/gpu/drm/bridge/tc358775.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
--- a/drivers/gpu/drm/bridge/tc358775.c
+++ b/drivers/gpu/drm/bridge/tc358775.c
@@ -528,25 +528,17 @@ tc_mode_valid(struct drm_bridge *bridge,
 static int tc358775_parse_dt(struct device_node *np, struct tc_data *tc)
 {
 	struct device_node *endpoint;
-	struct device_node *parent;
 	struct device_node *remote;
 	int dsi_lanes = -1;
 
-	/*
-	 * To get the data-lanes of dsi, we need to access the dsi0_out of port1
-	 *  of dsi0 endpoint from bridge port0 of d2l_in
-	 */
 	endpoint = of_graph_get_endpoint_by_regs(tc->dev->of_node,
 						 TC358775_DSI_IN, -1);
 	if (endpoint) {
-		/* dsi0_out node */
-		parent = of_graph_get_remote_port_parent(endpoint);
+		/* Get the configured data lanes on the dsi host side */
+		remote = of_graph_get_remote_endpoint(endpoint);
 		of_node_put(endpoint);
-		if (parent) {
-			/* dsi0 port 1 */
-			dsi_lanes = drm_of_get_data_lanes_count_ep(parent, 1, -1, 1, 4);
-			of_node_put(parent);
-		}
+		dsi_lanes = drm_of_get_data_lanes_count(remote, 1, 4);
+		of_node_put(remote);
 	}
 
 	if (dsi_lanes < 0)
-- 
2.42.1

