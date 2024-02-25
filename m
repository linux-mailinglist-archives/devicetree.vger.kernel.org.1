Return-Path: <devicetree+bounces-45645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D654886295C
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 07:27:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8A30A281D25
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 06:27:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FE01C15D;
	Sun, 25 Feb 2024 06:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="JBxZyQqs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA6CDC8C4
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 06:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708842466; cv=none; b=iSj2xxSG8xaaWN++fTzXkuHb7SXAdNDo9eI6N8WNgMDX1jqnrtJTYU6X4nhpa3CVnAyDtn+imE15JHavY4U0ZWZwjEO+uo+By768T7TnGA92QIqfmZzK022Bqqp+kY9Fkel5StbsiiQ1eDYFMug1QZg37PMgIBsXMex3eXwe2VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708842466; c=relaxed/simple;
	bh=iIJvn+BTCwLpyPd1iD4wRftor0jq12kCKD4Ngzd6vkU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Lnzew/+3NshVzWzeOvwMoRUdbyto9rzxzgw5RZNWm3no6V+34VzX+I3HG6IIcKyalOj5UZXLxDWug78HkRwL+xxyvgMN9A2u7aDgtmtqXBs29Yb9n3lCHNH+UfD2Ux9i1QYM6fQi+BYlnFD9bjpq5FEhXcLpipKy8i7Va6H0k6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=JBxZyQqs; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id A1FD76058D;
	Sun, 25 Feb 2024 06:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1708842464;
	bh=iIJvn+BTCwLpyPd1iD4wRftor0jq12kCKD4Ngzd6vkU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JBxZyQqsqul+DHQp7tOJ7QYgxMTt738/J7GES21pTEcoURSd48qCdodW20By0RnKT
	 B67Sc9sfsp/fXX6EuLwELqMB5iFI+SeUYTXWK/9gfG9zb3M0ViRTvIcKZ7AD8YooEv
	 Cl5EleMfUznB7m2tuRg0f9JuTvkokZnC4EZGSlwxrvFHPBFcFFs/AlpybjWDEXjFl/
	 Pb9zqcBd56FihIh4GvuKAZaz0KtlZwORk+TQBikQykA/BN+OuF8+ZQC3pmIJrPyfLf
	 lpt4oAmEHrJs5Q81OW9RLBklJc5HMKlA0/EzPYmlexio1gSwwYpON7wo8pNZupfGJA
	 VNQzMl8ScJXHA==
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
Subject: [PATCH v5 08/10] drm/bridge: tc358775: Enable pre_enable_prev_first flag
Date: Sun, 25 Feb 2024 08:19:37 +0200
Message-ID: <20240225062008.33191-9-tony@atomide.com>
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

Set pre_enable_prev_first to ensure the previous bridge is enabled
first.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Michael Walle <mwalle@kernel.org>
Tested-by: Michael Walle <mwalle@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/gpu/drm/bridge/tc358775.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
--- a/drivers/gpu/drm/bridge/tc358775.c
+++ b/drivers/gpu/drm/bridge/tc358775.c
@@ -680,6 +680,7 @@ static int tc_probe(struct i2c_client *client)
 
 	tc->bridge.funcs = &tc_bridge_funcs;
 	tc->bridge.of_node = dev->of_node;
+	tc->bridge.pre_enable_prev_first = true;
 	drm_bridge_add(&tc->bridge);
 
 	i2c_set_clientdata(client, tc);
-- 
2.43.1

