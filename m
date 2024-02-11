Return-Path: <devicetree+bounces-40451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B46850886
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 10:57:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0139FB2164D
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 09:57:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 909CA5917C;
	Sun, 11 Feb 2024 09:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="ROQHbsHf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6E8524BF
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 09:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707645450; cv=none; b=LuTZj6jrCOwFaG3FulyshdQtrkudufsQfYToOVglQ475EMD34Jt8l1vfjwxL74yGVKFDxHEyH3km2NDFvIu/UgCmVRAldbDQL2MsiafQuo88kI477SiGpJI67oHv8xu3BhCmd5R8BmPWCQlHwYkKQOi+t7fc0SkzYqYWqLcVCaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707645450; c=relaxed/simple;
	bh=JJFn33AHGirXoIgP/lt+W8CNauuhz8rQHZlLCfM+t0Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iFYrIy5U0gEgU53uKttxHGY15QDINM7lhwGCoauCMD8uUg0l28dMUEvQg3gO1YtxuecVQTlb+fHWEoHSpgH+CLG5VHCMO8NtQRyNLc5EX2+HRyGm5h95U4NKp4eSh/oatqOKBYLQlM+rKTDyiP8UDYapRDQFxkMEoAc1vWfit0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=ROQHbsHf; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id CE2FC6049B;
	Sun, 11 Feb 2024 09:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1707645448;
	bh=JJFn33AHGirXoIgP/lt+W8CNauuhz8rQHZlLCfM+t0Y=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ROQHbsHfyo5UKrCT5rN+aksGnUyZWyfZl3E7s8hV9GY0u2pffQMwDnPP9k05kCVU/
	 B942HVHzKdwrIa9/Xt3cHZsUMmdg1y0DZk48EIK0SqLrIpAhju84n5rEUSuMk4r8+K
	 VUEJDN90K46Bdb29VkbgfdN7p88XykkvtCqneE3Zl07XrCmD+YXz5IiGXCTjzNFXl3
	 zlZl2VfWfF2lW/yUyQkDEEk2S3crktsQCSmekbXFGljsGXUtuoHb4DFnSQ15vW3V4q
	 LsXjkf49q2mFuLFzPwQKB7tKrAUVPRIqYhD/2ub7PZlr8tzn8fGrK2YtItz2ch+oXu
	 i0qAxqs70GJsw==
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
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simha BN <simhavcs@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Michael Walle <mwalle@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 06/10] drm/bridge: tc358775: Get bridge data lanes instead of the DSI host lanes
Date: Sun, 11 Feb 2024 11:51:11 +0200
Message-ID: <20240211095144.2589-7-tony@atomide.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240211095144.2589-1-tony@atomide.com>
References: <20240211095144.2589-1-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The current code assumes the data-lanes property is configured on the
DSI host side instead of the bridge side, and assumes DSI host endpoint 1.

Let's standardize on what the other bridge drivers are doing and parse the
data-lanes property for the bridge. Only if data-lanes property is not found,
let's be nice and also check the DSI host for old dtb in use and warn.

And as Dmitry pointed out, the lanes for the host and the bridge may be
different because the lanes may be swapped on the host side.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Michael Walle <mwalle@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/gpu/drm/bridge/tc358775.c | 25 +++++++++++--------------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
--- a/drivers/gpu/drm/bridge/tc358775.c
+++ b/drivers/gpu/drm/bridge/tc358775.c
@@ -525,27 +525,24 @@ tc_mode_valid(struct drm_bridge *bridge,
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
-	if (endpoint) {
-		/* dsi0_out node */
-		parent = of_graph_get_remote_port_parent(endpoint);
-		of_node_put(endpoint);
-		if (parent) {
-			/* dsi0 port 1 */
-			dsi_lanes = drm_of_get_data_lanes_count_ep(parent, 1, -1, 1, 4);
-			of_node_put(parent);
-		}
+	dsi_lanes = drm_of_get_data_lanes_count(endpoint, 1, 4);
+
+	/* Quirk old dtb: Use data lanes from the DSI host side instead of bridge */
+	if (dsi_lanes == -EINVAL || dsi_lanes == -ENODEV) {
+		remote = of_graph_get_remote_endpoint(endpoint);
+		dsi_lanes = drm_of_get_data_lanes_count(remote, 1, 4);
+		of_node_put(remote);
+		if (dsi_lanes >= 1)
+			dev_warn(tc->dev, "no dsi-lanes for the bridge, using host lanes\n");
 	}
 
+	of_node_put(endpoint);
+
 	if (dsi_lanes < 0)
 		return dsi_lanes;
 
-- 
2.43.0

