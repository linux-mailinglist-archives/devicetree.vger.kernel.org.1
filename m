Return-Path: <devicetree+bounces-79810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C93A7916E54
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 18:44:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EDAB51C22163
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 16:44:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1327C175567;
	Tue, 25 Jun 2024 16:44:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ns.iliad.fr (ns.iliad.fr [212.27.33.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84FA9174EC6
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 16:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.27.33.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719333855; cv=none; b=UhlSBcbDcwdF9FEFOVqBX0DHcXrwGc/cJ+bExuNWT9QXfKlOzzaYsW08zCtTrIvuagB0K6Wa+2no8od2tQ6rv4QkFhFsthB7UBhAoI4czCCkviGYEujhByF+/TZ6N+JuR2GwC+fZfRaM0i5j5uf9Vu26YCH/9Af3MDc6i9AotVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719333855; c=relaxed/simple;
	bh=nKrl7sM93O9EWrHximZQSUQ8Bl3TAr6+dKdYtNySfSE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XTHgQYzTVUZOdslhZBkB8jEz0YvQkPtDtT/lNCVgMX+u4DHm6RYVcpChp1s47jqOrimm3MsDe6uONEbp1zhskzGMSeMbPejvzGMfjiAnjKT0lUXS1OkgowOEbTnCAYc8KVTJBcfW14wCUd2KNF2sfaJnIrSPOylPMh2SpRUhrfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=srs.iliad.fr; arc=none smtp.client-ip=212.27.33.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=srs.iliad.fr
Received: from ns.iliad.fr (localhost [127.0.0.1])
	by ns.iliad.fr (Postfix) with ESMTP id 3729B20BAD;
	Tue, 25 Jun 2024 18:38:34 +0200 (CEST)
Received: from [127.0.1.1] (freebox.vlq16.iliad.fr [213.36.7.13])
	by ns.iliad.fr (Postfix) with ESMTP id 23EF520757;
	Tue, 25 Jun 2024 18:38:34 +0200 (CEST)
From: Marc Gonzalez <mgonzalez@freebox.fr>
Date: Tue, 25 Jun 2024 18:38:13 +0200
Subject: [PATCH v2 2/2] drm/bridge: add support for TI TDP158
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240625-tdp158-v2-2-a3b344707fa7@freebox.fr>
References: <20240625-tdp158-v2-0-a3b344707fa7@freebox.fr>
In-Reply-To: <20240625-tdp158-v2-0-a3b344707fa7@freebox.fr>
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

The default settings work fine for our use-case.

Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 drivers/gpu/drm/bridge/Kconfig     |   6 +++
 drivers/gpu/drm/bridge/Makefile    |   1 +
 drivers/gpu/drm/bridge/ti-tdp158.c | 103 +++++++++++++++++++++++++++++++++++++
 3 files changed, 110 insertions(+)

diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
index c621be1a99a89..0859f85cb4b69 100644
--- a/drivers/gpu/drm/bridge/Kconfig
+++ b/drivers/gpu/drm/bridge/Kconfig
@@ -368,6 +368,12 @@ config DRM_TI_DLPC3433
 	  It supports up to 720p resolution with 60 and 120 Hz refresh
 	  rates.
 
+config DRM_TI_TDP158
+	tristate "TI TDP158 HDMI/TMDS bridge"
+	depends on OF
+	help
+	  Texas Instruments TDP158 HDMI/TMDS Bridge driver
+
 config DRM_TI_TFP410
 	tristate "TI TFP410 DVI/HDMI bridge"
 	depends on OF
diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
index 7df87b582dca3..3daf803ce80b6 100644
--- a/drivers/gpu/drm/bridge/Makefile
+++ b/drivers/gpu/drm/bridge/Makefile
@@ -32,6 +32,7 @@ obj-$(CONFIG_DRM_I2C_ADV7511) += adv7511/
 obj-$(CONFIG_DRM_TI_DLPC3433) += ti-dlpc3433.o
 obj-$(CONFIG_DRM_TI_SN65DSI83) += ti-sn65dsi83.o
 obj-$(CONFIG_DRM_TI_SN65DSI86) += ti-sn65dsi86.o
+obj-$(CONFIG_DRM_TI_TDP158) += ti-tdp158.o
 obj-$(CONFIG_DRM_TI_TFP410) += ti-tfp410.o
 obj-$(CONFIG_DRM_TI_TPD12S015) += ti-tpd12s015.o
 obj-$(CONFIG_DRM_NWL_MIPI_DSI) += nwl-dsi.o
diff --git a/drivers/gpu/drm/bridge/ti-tdp158.c b/drivers/gpu/drm/bridge/ti-tdp158.c
new file mode 100644
index 0000000000000..b65132e3598fc
--- /dev/null
+++ b/drivers/gpu/drm/bridge/ti-tdp158.c
@@ -0,0 +1,103 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright 2024 Freebox SAS
+ */
+#include <drm/drm_bridge.h>
+#include <drm/drm_atomic_helper.h>
+#include <linux/i2c.h>
+
+struct tdp158 {
+	struct drm_bridge bridge;
+	struct drm_bridge *next;
+	struct gpio_desc *enable; // Operation Enable - pin 36
+	struct regulator *vcc; // 3.3V
+	struct regulator *vdd; // 1.1V
+};
+
+static void tdp158_enable(struct drm_bridge *bridge, struct drm_bridge_state *prev)
+{
+	int err;
+	struct tdp158 *tdp158 = bridge->driver_private;
+
+	if ((err = regulator_enable(tdp158->vcc)))
+		pr_err("%s: vcc: %d", __func__, err);
+
+	if ((err = regulator_enable(tdp158->vdd)))
+		pr_err("%s: vdd: %d", __func__, err);
+
+	gpiod_set_value_cansleep(tdp158->enable, 1);
+}
+
+static void tdp158_disable(struct drm_bridge *bridge, struct drm_bridge_state *prev)
+{
+	struct tdp158 *tdp158 = bridge->driver_private;
+
+	gpiod_set_value_cansleep(tdp158->enable, 0);
+	regulator_disable(tdp158->vdd);
+	regulator_disable(tdp158->vcc);
+}
+
+static int tdp158_attach(struct drm_bridge *bridge, enum drm_bridge_attach_flags flags)
+{
+	struct tdp158 *tdp158 = bridge->driver_private;
+	return drm_bridge_attach(bridge->encoder, tdp158->next, bridge, DRM_BRIDGE_ATTACH_NO_CONNECTOR);
+}
+
+static const struct drm_bridge_funcs tdp158_bridge_funcs = {
+	.attach = tdp158_attach,
+	.atomic_enable = tdp158_enable,
+	.atomic_disable = tdp158_disable,
+	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
+	.atomic_reset = drm_atomic_helper_bridge_reset,
+};
+
+static int tdp158_bridge_probe(struct i2c_client *client)
+{
+	struct tdp158 *tdp158;
+	struct device *dev = &client->dev;
+
+	tdp158 = devm_kzalloc(dev, sizeof(*tdp158), GFP_KERNEL);
+	if (!tdp158)
+		return -ENOMEM;
+
+	tdp158->next = devm_drm_of_get_bridge(dev, dev->of_node, 1, 0);
+	if (IS_ERR(tdp158->next))
+		return dev_err_probe(dev, PTR_ERR(tdp158->next), "next");
+
+	tdp158->vcc = devm_regulator_get(dev, "vcc");
+	if (IS_ERR(tdp158->vcc))
+		return dev_err_probe(dev, PTR_ERR(tdp158->vcc), "vcc");
+
+	tdp158->vdd = devm_regulator_get(dev, "vdd");
+	if (IS_ERR(tdp158->vdd))
+		return dev_err_probe(dev, PTR_ERR(tdp158->vdd), "vdd");
+
+	tdp158->enable = devm_gpiod_get(dev, "enable", GPIOD_OUT_LOW);
+	if (IS_ERR(tdp158->enable))
+		return dev_err_probe(dev, PTR_ERR(tdp158->enable), "enable");
+
+	tdp158->bridge.of_node = dev->of_node;
+	tdp158->bridge.funcs = &tdp158_bridge_funcs;
+	tdp158->bridge.driver_private = tdp158;
+
+	return devm_drm_bridge_add(dev, &tdp158->bridge);
+}
+
+static const struct of_device_id tdp158_bridge_match_table[] = {
+	{ .compatible = "ti,tdp158" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, tdp158_bridge_match_table);
+
+static struct i2c_driver tdp158_bridge_driver = {
+	.probe = tdp158_bridge_probe,
+	.driver = {
+		.name = "tdp158-bridge",
+		.of_match_table = tdp158_bridge_match_table,
+	},
+};
+module_i2c_driver(tdp158_bridge_driver);
+
+MODULE_DESCRIPTION("TI TDP158 driver");
+MODULE_LICENSE("GPL");

-- 
2.34.1


