Return-Path: <devicetree+bounces-45643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1E4862958
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 07:26:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 989901F21883
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 06:26:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58DA3BE5E;
	Sun, 25 Feb 2024 06:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="hrTBldQq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C46322F58
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 06:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708842362; cv=none; b=p3ByuJaQdeqs7NYclym96O2oDiBz44OYsVhjxyqNNn309S9MQNc1rcR9IF1woB7C6z7kkuDfio2klz/3IMLHuBGI3bbLxRaUBLVaHTpIoXFdMx0ftL3KZTGm1g4QraBXy0EctowUssuSMFyDlLa5uAFayIGo1VM3iqZVZdGHdiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708842362; c=relaxed/simple;
	bh=QIgybrXkLOP2rAeWXJ7yytQCxPbiBA+P+RtAFhDDGsg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KsWjjg5Yf0EPdqHKQDbJPLRT32Qamd1trrwQZKQJVP6s4qJGAiRZ0af1uKfNUjH5heMUb3rvucputq+oJjbyHhACmgj8BaFonoRlfnoMntju50q/hKu8f8avrHqxIxDO8bIYxkHJ0NQHvxgIMPUuP/SAoG5NbAtkYVu0gpZ25Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=hrTBldQq; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 893B66058D;
	Sun, 25 Feb 2024 06:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1708842360;
	bh=QIgybrXkLOP2rAeWXJ7yytQCxPbiBA+P+RtAFhDDGsg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hrTBldQqruh64hg9CjYsmqOqbkly79HNq0YyXcwQ4CtdLJr/uD7rKjOUD1eWdvNeQ
	 bQqs9RdVGf9VdC+k9XqdOdUgmh1r3CLbWlqrnXNQbSeVe8nprzU3XqmsBmv28DYhjD
	 fsPCO1yX2bZ0ind7SnRanbhnHGyJAlkxEHp7cYTSrgU5ENwbecK3sPY0WECzbdxifP
	 1my3VfFYfEDiFbKfLSNKYSwUpS63CUdFg+wi56KgnJd45kaPwyJW2RLWJ2O8TEY3p2
	 LaU9EQtdi1Eod9e0+r1kHQOKjtL3oL8i2Cv4qydK2kcrbTJC+sHIxIf0ULv1bEcZDS
	 wIy+pAZZN9fjw==
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
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Michael Walle <mwalle@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 06/10] drm/bridge: tc358775: Get bridge data lanes instead of the DSI host lanes
Date: Sun, 25 Feb 2024 08:19:35 +0200
Message-ID: <20240225062008.33191-7-tony@atomide.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240225062008.33191-1-tony@atomide.com>
References: <20240225062008.33191-1-tony@atomide.com>
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
2.43.1

