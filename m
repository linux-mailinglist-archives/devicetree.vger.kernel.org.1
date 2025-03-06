Return-Path: <devicetree+bounces-154754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 86790A545FB
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 10:12:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B7611890FF6
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 09:12:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FD6B2080E5;
	Thu,  6 Mar 2025 09:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=alessandro.zini@siemens.com header.b="bOKoEO73"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-228.siemens.flowmailer.net (mta-64-228.siemens.flowmailer.net [185.136.64.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47775207DEA
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 09:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741252311; cv=none; b=rLeax+d+wxSk5WJ2IyQcVYqhuZ68x0az2V4emIp5jrK06nDHHFb1yZ9ez2MnTl3ONnBcGgP7/iFyznXybeIYq6HbNCDVyDaFrNY7GT+rGlACLczECHRe1WfXpOi3f7fttZKmrGU2LdD5HmAscd76bBiSxtvjkTYCnOZiPmOEtDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741252311; c=relaxed/simple;
	bh=V9mcSNNcnJ+i+9UeOAfjmsPUXZYmr0SZ7avEu1l0re0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=muGG35bMvcxgm8CkqIwMkuxYpWEz58O/E2UZK0E+a9AvK+728dW1otyKZPoJXQNGxrAu2AwyVUwsZ2pgEK11/N69UaiBvnO/cczABPoiK5ErgIJJ32o+gLfIjM/fL2BlG8+dZn4Xh8ipbrpc5PzZX7HhrXrbKNcqzL99BlauetE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=alessandro.zini@siemens.com header.b=bOKoEO73; arc=none smtp.client-ip=185.136.64.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-228.siemens.flowmailer.net with ESMTPSA id 2025030609114090ce512c20750789ce
        for <devicetree@vger.kernel.org>;
        Thu, 06 Mar 2025 10:11:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=alessandro.zini@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=pkzhFHGUhtHHd85O2rQyM7bs5etdC+NbUnb3Yfsf2cY=;
 b=bOKoEO73mjW4+KYmghRKEq1A1fADX+yozUZTrTqzs2mE7pQJAEfDTwJJBllROLeQK0kqm6
 4WMC6P2YniCAgoslX57LN0iyMtB1tK2k9mnDL67r6TAsSuOWb605/zTT5nPTw4vWiOj+ijNI
 nvfVCf/cdkEligtYsbkodUxFmphLYTj7axSpef1xRhE5oJzIxFNdhpcZ8wpPNuUjaVrkSHUG
 pLASCcyR3LlZD3GQ61xMsCjMAXHkTEQ+QnjWgHoTaFwZloV3e2PhEs1fOEBRW5GD3whZkb1C
 QbgCP7A5WXqxFAtsTMgpEVZNKebKJ/Bzfbdbys0xt56BCxbxcSdaf2FA==;
From: "A. Zini" <alessandro.zini@siemens.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Vasut <marex@denx.de>
Cc: Andrej Picej <andrej.picej@norik.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Alessandro Zini <alessandro.zini@siemens.com>
Subject: [PATCH 2/2] drm/bridge: ti-sn65dsi83: add h/vsync-disable support
Date: Thu,  6 Mar 2025 10:11:33 +0100
Message-ID: <20250306091133.46888-3-alessandro.zini@siemens.com>
In-Reply-To: <20250306091133.46888-1-alessandro.zini@siemens.com>
References: <20250306091133.46888-1-alessandro.zini@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1327013:519-21489:flowmailer

From: Alessandro Zini <alessandro.zini@siemens.com>

The h/vsync-disable properties are used to control whether to use or
not h/vsync signals, by configuring their pulse width to zero.

This is required on some panels which are driven in DE-only mode but do
not ignore sync packets, and instead require them to be low-voltage level
or ground.

Signed-off-by: Alessandro Zini <alessandro.zini@siemens.com>
---
 drivers/gpu/drm/bridge/ti-sn65dsi83.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
index 95563aa1b450d..c94ea92159402 100644
--- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
+++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
@@ -164,6 +164,8 @@ struct sn65dsi83 {
 	int				irq;
 	struct delayed_work		monitor_work;
 	struct work_struct		reset_work;
+	bool				hsync_disable;
+	bool				vsync_disable;
 };
 
 static const struct regmap_range sn65dsi83_readable_ranges[] = {
@@ -604,10 +606,12 @@ static void sn65dsi83_atomic_pre_enable(struct drm_bridge *bridge,
 	/* 32 + 1 pixel clock to ensure proper operation */
 	le16val = cpu_to_le16(32 + 1);
 	regmap_bulk_write(ctx->regmap, REG_VID_CHA_SYNC_DELAY_LOW, &le16val, 2);
-	le16val = cpu_to_le16(mode->hsync_end - mode->hsync_start);
+	le16val = cpu_to_le16(ctx->hsync_disable ?
+		0 : mode->hsync_end - mode->hsync_start);
 	regmap_bulk_write(ctx->regmap, REG_VID_CHA_HSYNC_PULSE_WIDTH_LOW,
 			  &le16val, 2);
-	le16val = cpu_to_le16(mode->vsync_end - mode->vsync_start);
+	le16val = cpu_to_le16(ctx->vsync_disable ?
+		0 : mode->vsync_end - mode->vsync_start);
 	regmap_bulk_write(ctx->regmap, REG_VID_CHA_VSYNC_PULSE_WIDTH_LOW,
 			  &le16val, 2);
 	regmap_write(ctx->regmap, REG_VID_CHA_HORIZONTAL_BACK_PORCH,
@@ -867,6 +871,14 @@ static int sn65dsi83_parse_dt(struct sn65dsi83 *ctx, enum sn65dsi83_model model)
 		}
 	}
 
+	ctx->hsync_disable = false;
+	if (of_property_present(dev->of_node, "hsync-disable"))
+		ctx->hsync_disable = true;
+
+	ctx->vsync_disable = false;
+	if (of_property_present(dev->of_node, "vsync-disable"))
+		ctx->vsync_disable = true;
+
 	panel_bridge = devm_drm_of_get_bridge(dev, dev->of_node, 2, 0);
 	if (IS_ERR(panel_bridge))
 		return dev_err_probe(dev, PTR_ERR(panel_bridge), "Failed to get panel bridge\n");
-- 
2.48.1


