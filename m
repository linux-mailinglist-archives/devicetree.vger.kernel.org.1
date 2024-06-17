Return-Path: <devicetree+bounces-76626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2B090B66E
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 18:32:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 08B6FB47EFB
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 16:04:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E17A11C287;
	Mon, 17 Jun 2024 16:03:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ns.iliad.fr (ns.iliad.fr [212.27.33.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 892791757E
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 16:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.27.33.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718640205; cv=none; b=Z3jzbu4VRirwkr8qwaccrFMiRd/Nn1DIfYvpbwgoNf1ntl6QYzx+VTLGt1JsI1p/Q5tRzF2kZQEsgOkG9e/zJHkvcNe8MHASDrZpUsMpkAEnbvXIfpqndHpeQGz5V9DvWAR/Vm1RFHOIP5hFz722vRR2TIbdNE7xmSsyMxz1j+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718640205; c=relaxed/simple;
	bh=7dcRG69fpBPWbKWWpJZWcOj9FlBomLUREIMU0e3hSSI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rmjJZK1dAVVqporpWoyRFfSOiwvMNuozViCxVU0yxN8G6bh8j0akpddWZ7RNUe/bayOOMyYo1hDOkxoy5lFhQJy36VLRbSqcfK07k43or/O7pxqCv6vg3zhNwlIXBVo/2vtGIP7V77PaLpgdfpKvYcKd4LBtl99QG9UoHM7DqHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=srs.iliad.fr; arc=none smtp.client-ip=212.27.33.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=srs.iliad.fr
Received: from ns.iliad.fr (localhost [127.0.0.1])
	by ns.iliad.fr (Postfix) with ESMTP id E24252021F;
	Mon, 17 Jun 2024 18:03:13 +0200 (CEST)
Received: from [127.0.1.1] (freebox.vlq16.iliad.fr [213.36.7.13])
	by ns.iliad.fr (Postfix) with ESMTP id CA054203D5;
	Mon, 17 Jun 2024 18:03:13 +0200 (CEST)
From: Marc Gonzalez <mgonzalez@freebox.fr>
Date: Mon, 17 Jun 2024 18:03:00 +0200
Subject: [PATCH 2/4] drm: bridge: simple-bridge: use dev pointer in probe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240617-tdp158-v1-2-df98ef7dec6d@freebox.fr>
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

Prepare to factorize probe function.

Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 drivers/gpu/drm/bridge/simple-bridge.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm/bridge/simple-bridge.c
index 5813a2c4fc5ee..d672e34970e18 100644
--- a/drivers/gpu/drm/bridge/simple-bridge.c
+++ b/drivers/gpu/drm/bridge/simple-bridge.c
@@ -169,18 +169,19 @@ static const struct drm_bridge_funcs simple_bridge_bridge_funcs = {
 
 static int simple_bridge_probe(struct platform_device *pdev)
 {
+	struct device *dev = &pdev->dev;
 	struct simple_bridge *sbridge;
 	struct device_node *remote;
 
-	sbridge = devm_kzalloc(&pdev->dev, sizeof(*sbridge), GFP_KERNEL);
+	sbridge = devm_kzalloc(dev, sizeof(*sbridge), GFP_KERNEL);
 	if (!sbridge)
 		return -ENOMEM;
 	platform_set_drvdata(pdev, sbridge);
 
-	sbridge->info = of_device_get_match_data(&pdev->dev);
+	sbridge->info = of_device_get_match_data(dev);
 
 	/* Get the next bridge in the pipeline. */
-	remote = of_graph_get_remote_node(pdev->dev.of_node, 1, -1);
+	remote = of_graph_get_remote_node(dev->of_node, 1, -1);
 	if (!remote)
 		return -EINVAL;
 
@@ -188,29 +189,29 @@ static int simple_bridge_probe(struct platform_device *pdev)
 	of_node_put(remote);
 
 	if (!sbridge->next_bridge) {
-		dev_dbg(&pdev->dev, "Next bridge not found, deferring probe\n");
+		dev_dbg(dev, "Next bridge not found, deferring probe\n");
 		return -EPROBE_DEFER;
 	}
 
 	/* Get the regulator and GPIO resources. */
-	sbridge->vdd = devm_regulator_get_optional(&pdev->dev, "vdd");
+	sbridge->vdd = devm_regulator_get_optional(dev, "vdd");
 	if (IS_ERR(sbridge->vdd)) {
 		int ret = PTR_ERR(sbridge->vdd);
 		if (ret == -EPROBE_DEFER)
 			return -EPROBE_DEFER;
 		sbridge->vdd = NULL;
-		dev_dbg(&pdev->dev, "No vdd regulator found: %d\n", ret);
+		dev_dbg(dev, "No vdd regulator found: %d\n", ret);
 	}
 
-	sbridge->enable = devm_gpiod_get_optional(&pdev->dev, "enable",
+	sbridge->enable = devm_gpiod_get_optional(dev, "enable",
 						  GPIOD_OUT_LOW);
 	if (IS_ERR(sbridge->enable))
-		return dev_err_probe(&pdev->dev, PTR_ERR(sbridge->enable),
+		return dev_err_probe(dev, PTR_ERR(sbridge->enable),
 				     "Unable to retrieve enable GPIO\n");
 
 	/* Register the bridge. */
 	sbridge->bridge.funcs = &simple_bridge_bridge_funcs;
-	sbridge->bridge.of_node = pdev->dev.of_node;
+	sbridge->bridge.of_node = dev->of_node;
 	sbridge->bridge.timings = sbridge->info->timings;
 
 	drm_bridge_add(&sbridge->bridge);

-- 
2.34.1


