Return-Path: <devicetree+bounces-76628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6318590B5B8
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 18:04:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79FA81C20954
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 16:04:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 028AE1C696;
	Mon, 17 Jun 2024 16:03:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ns.iliad.fr (ns.iliad.fr [212.27.33.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 891E210958
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 16:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.27.33.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718640205; cv=none; b=p4kRNlHz+H/XeISgZMQ3TmWE1iCY25DHm6iW6xBMRwC56823BaWbXsk9uUvwr4o5WR9NcfVC6+AhOmuu3EMtGvj/v2HtIZ+CsmYUFzLwmD/o+Pqop69hXaT/0mV5Tl2HvNrnycTWfxysq6CT7bJDI9s/rXbANQXrfEoWQFvcI2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718640205; c=relaxed/simple;
	bh=PY6it/FzRGcazkr5kzgci7+PiZENmaCWrhALeRdWGQ8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Be+wT5r7rUWHQ/13ofXyU2KH8oEy0PRRGy+LbW7uMC5PNlXvy28jg/CLmnBC+JMxdKNGAf3owTEt7/7kmz9q4dSIF45WVQnMudIvtbF9j9Ez7373LWnOzNbUiVF2s0mVfcDCkaw1PlK5aFa2pTCx5vTH9Oynj6oLxjGjA90qoaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=srs.iliad.fr; arc=none smtp.client-ip=212.27.33.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=srs.iliad.fr
Received: from ns.iliad.fr (localhost [127.0.0.1])
	by ns.iliad.fr (Postfix) with ESMTP id 0A915203D5;
	Mon, 17 Jun 2024 18:03:14 +0200 (CEST)
Received: from [127.0.1.1] (freebox.vlq16.iliad.fr [213.36.7.13])
	by ns.iliad.fr (Postfix) with ESMTP id D811E206BB;
	Mon, 17 Jun 2024 18:03:13 +0200 (CEST)
From: Marc Gonzalez <mgonzalez@freebox.fr>
Date: Mon, 17 Jun 2024 18:03:01 +0200
Subject: [PATCH 3/4] drm: bridge: simple-bridge: use only devm* in probe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240617-tdp158-v1-3-df98ef7dec6d@freebox.fr>
References: <20240617-tdp158-v1-0-df98ef7dec6d@freebox.fr>
In-Reply-To: <20240617-tdp158-v1-0-df98ef7dec6d@freebox.fr>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Marc Gonzalez <mgonzalez@freebox.fr>
X-Mailer: b4 0.13.0

Once probe uses only devm functions, remove() becomes unnecessary.

Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 drivers/gpu/drm/bridge/simple-bridge.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm/bridge/simple-bridge.c
index d672e34970e18..f1e458a15882f 100644
--- a/drivers/gpu/drm/bridge/simple-bridge.c
+++ b/drivers/gpu/drm/bridge/simple-bridge.c
@@ -214,16 +214,7 @@ static int simple_bridge_probe(struct platform_device *pdev)
 	sbridge->bridge.of_node = dev->of_node;
 	sbridge->bridge.timings = sbridge->info->timings;
 
-	drm_bridge_add(&sbridge->bridge);
-
-	return 0;
-}
-
-static void simple_bridge_remove(struct platform_device *pdev)
-{
-	struct simple_bridge *sbridge = platform_get_drvdata(pdev);
-
-	drm_bridge_remove(&sbridge->bridge);
+	return devm_drm_bridge_add(dev, &sbridge->bridge);
 }
 
 /*
@@ -300,7 +291,6 @@ MODULE_DEVICE_TABLE(of, simple_bridge_match);
 
 static struct platform_driver simple_bridge_driver = {
 	.probe	= simple_bridge_probe,
-	.remove_new = simple_bridge_remove,
 	.driver		= {
 		.name		= "simple-bridge",
 		.of_match_table	= simple_bridge_match,

-- 
2.34.1


