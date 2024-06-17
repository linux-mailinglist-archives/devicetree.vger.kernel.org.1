Return-Path: <devicetree+bounces-76629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B19C790B5B9
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 18:04:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 563A81F223EE
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 16:04:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 563C31757E;
	Mon, 17 Jun 2024 16:03:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ns.iliad.fr (ns.iliad.fr [212.27.33.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89218134D1
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 16:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.27.33.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718640206; cv=none; b=Hk9Cq4Plu5mrnUZn4E1eo+aRKaKM0asaNTr4awvF7wAxcQif6DDsjGiW9ahkmmV5qBz498SSAo3j2ZynbbOtwXaGMh211qMH2w/BcWbEabNhlVRCqI3V+IQ7r2/R1usBtpJhCP/wyjZ1ouUhegJEoT0kdf3e40qnFEV/TkshJI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718640206; c=relaxed/simple;
	bh=hdAHrOmfJbbA3HLv4KsjK24535wZVzjHPtnCDKKpyjc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ikaYGKoqrQSJS3FudV1fivMYjNWfUv9Ywrd/kU4T3umW6yTT2EaMHH8MLfPYVLRVwBNUH3dgjSt3JFhX7mmfzdK1KK34vREJgZg7yMdelppmElUCTnPfRRuWsrnyWFACQh6Gp+YFur5XKDthiW4CzCFD6KWlWi6mWiiPtFsrPwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=srs.iliad.fr; arc=none smtp.client-ip=212.27.33.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=srs.iliad.fr
Received: from ns.iliad.fr (localhost [127.0.0.1])
	by ns.iliad.fr (Postfix) with ESMTP id 2E0022049C;
	Mon, 17 Jun 2024 18:03:14 +0200 (CEST)
Received: from [127.0.1.1] (freebox.vlq16.iliad.fr [213.36.7.13])
	by ns.iliad.fr (Postfix) with ESMTP id 00BC32029A;
	Mon, 17 Jun 2024 18:03:13 +0200 (CEST)
From: Marc Gonzalez <mgonzalez@freebox.fr>
Date: Mon, 17 Jun 2024 18:03:02 +0200
Subject: [PATCH 4/4] drm: bridge: simple-bridge: add tdp158 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240617-tdp158-v1-4-df98ef7dec6d@freebox.fr>
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

The TI TDP158 is an AC-Coupled HDMI signal to TMDS Redriver supporting
DVI 1.0 and HDMI 1.4b and 2.0b output signals.

Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 drivers/gpu/drm/bridge/simple-bridge.c | 64 ++++++++++++++++++++++++++++++++--
 1 file changed, 61 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm/bridge/simple-bridge.c
index f1e458a15882f..745d253e55f7e 100644
--- a/drivers/gpu/drm/bridge/simple-bridge.c
+++ b/drivers/gpu/drm/bridge/simple-bridge.c
@@ -6,6 +6,8 @@
  * Maxime Ripard <maxime.ripard@free-electrons.com>
  */
 
+#include <linux/i2c.h>
+#include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -32,6 +34,7 @@ struct simple_bridge {
 	const struct simple_bridge_info *info;
 
 	struct drm_bridge	*next_bridge;
+	struct regulator	*vcc;
 	struct regulator	*vdd;
 	struct gpio_desc	*enable;
 };
@@ -142,8 +145,16 @@ static void simple_bridge_enable(struct drm_bridge *bridge)
 	struct simple_bridge *sbridge = drm_bridge_to_simple_bridge(bridge);
 	int ret;
 
+	if (sbridge->vcc) {
+		ret = regulator_enable(sbridge->vcc);
+		msleep(100);
+		if (ret)
+			DRM_ERROR("Failed to enable vcc regulator: %d\n", ret);
+	}
+
 	if (sbridge->vdd) {
 		ret = regulator_enable(sbridge->vdd);
+		msleep(100);
 		if (ret)
 			DRM_ERROR("Failed to enable vdd regulator: %d\n", ret);
 	}
@@ -159,6 +170,9 @@ static void simple_bridge_disable(struct drm_bridge *bridge)
 
 	if (sbridge->vdd)
 		regulator_disable(sbridge->vdd);
+
+	if (sbridge->vcc)
+		regulator_disable(sbridge->vcc);
 }
 
 static const struct drm_bridge_funcs simple_bridge_bridge_funcs = {
@@ -167,16 +181,14 @@ static const struct drm_bridge_funcs simple_bridge_bridge_funcs = {
 	.disable	= simple_bridge_disable,
 };
 
-static int simple_bridge_probe(struct platform_device *pdev)
+static int common_probe(struct device *dev, struct simple_bridge **res)
 {
-	struct device *dev = &pdev->dev;
 	struct simple_bridge *sbridge;
 	struct device_node *remote;
 
 	sbridge = devm_kzalloc(dev, sizeof(*sbridge), GFP_KERNEL);
 	if (!sbridge)
 		return -ENOMEM;
-	platform_set_drvdata(pdev, sbridge);
 
 	sbridge->info = of_device_get_match_data(dev);
 
@@ -203,6 +215,15 @@ static int simple_bridge_probe(struct platform_device *pdev)
 		dev_dbg(dev, "No vdd regulator found: %d\n", ret);
 	}
 
+	sbridge->vcc = devm_regulator_get_optional(dev, "vcc");
+	if (IS_ERR(sbridge->vcc)) {
+		int ret = PTR_ERR(sbridge->vcc);
+		if (ret == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
+		sbridge->vcc = NULL;
+		dev_dbg(dev, "No vcc regulator found: %d\n", ret);
+	}
+
 	sbridge->enable = devm_gpiod_get_optional(dev, "enable",
 						  GPIOD_OUT_LOW);
 	if (IS_ERR(sbridge->enable))
@@ -213,10 +234,27 @@ static int simple_bridge_probe(struct platform_device *pdev)
 	sbridge->bridge.funcs = &simple_bridge_bridge_funcs;
 	sbridge->bridge.of_node = dev->of_node;
 	sbridge->bridge.timings = sbridge->info->timings;
+	*res = sbridge;
 
 	return devm_drm_bridge_add(dev, &sbridge->bridge);
 }
 
+static int simple_bridge_probe(struct platform_device *pdev)
+{
+	struct simple_bridge *sbridge = NULL;
+	int err = common_probe(&pdev->dev, &sbridge);
+	platform_set_drvdata(pdev, sbridge);
+	return err;
+}
+
+static int i2c_probe(struct i2c_client *client)
+{
+	struct simple_bridge *sbridge = NULL;
+	int err = common_probe(&client->dev, &sbridge);
+	i2c_set_clientdata(client, sbridge);
+	return err;
+}
+
 /*
  * We assume the ADV7123 DAC is the "default" for historical reasons
  * Information taken from the ADV7123 datasheet, revision D.
@@ -298,6 +336,26 @@ static struct platform_driver simple_bridge_driver = {
 };
 module_platform_driver(simple_bridge_driver);
 
+static const struct of_device_id i2c_match_table[] = {
+	{
+		.compatible = "ti,tdp158",
+		.data = &(const struct simple_bridge_info) {
+			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
+		},
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, i2c_match_table);
+
+static struct i2c_driver i2c_simple_bridge_driver = {
+	.probe = i2c_probe,
+	.driver = {
+		.name = "i2c-simple-bridge",
+		.of_match_table = i2c_match_table,
+	},
+};
+module_i2c_driver(i2c_simple_bridge_driver);
+
 MODULE_AUTHOR("Maxime Ripard <maxime.ripard@free-electrons.com>");
 MODULE_DESCRIPTION("Simple DRM bridge driver");
 MODULE_LICENSE("GPL");

-- 
2.34.1


