Return-Path: <devicetree+bounces-131894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 998DB9F4DDA
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 15:34:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3BC5716B740
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 14:34:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEA481F75BF;
	Tue, 17 Dec 2024 14:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="naLoA2o2"
X-Original-To: devicetree@vger.kernel.org
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C851F7579;
	Tue, 17 Dec 2024 14:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734445951; cv=none; b=oqMFUK3U+7rlqM3lCD/knWO9ut/4iWMqfxMF1nA+3nGWwvEQvsOvhW91PDsvEVOlAKaobw64o7VenYzq8d22hPOr1yP4qrmEXzJZZrnkTjuVGTQDrUZiaARI5bHCmh/eydhdyeRdCFmzXrhZhWXIJ0Ox64Tn93VzmjN8KCGR0kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734445951; c=relaxed/simple;
	bh=J0FjdklwyKlcWPvzV31Az4vXuhlJlgzEjN9eRQ2blgA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=A1csgLfOARdc4gIqmZYzIjt4f/7LV2MFwHFxXOkGo0FzgnjVcN/qMvbOOV1imMsvhYM/DKsPTXYtfyiuiky9aECXDbnNJb8ZcBnqpTirNa7MUpnAHlhCA4p7J/seFgA+R6HhJZbVX7OllFBV5BFlo4oc5yeySWp+6qFEJfbdR/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=naLoA2o2; arc=none smtp.client-ip=217.70.183.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPA id 70C081C0002;
	Tue, 17 Dec 2024 14:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1734445945;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Sxaq5q+AzkKVN/8S0SNFdak5cF+ckchTn2ySvTiskYI=;
	b=naLoA2o2D/25hl1zIbN/iJfCiWNfdssTuxy2CEVBMp0TAaz8dwxJD+LwlZlabzBdxyUs9f
	rUFMosuKuCwxO9nibvg8L4sb3YnnmK+1Q7eFA2Qqxbxmkx/B8/ysNnxEiy4GuD4UPPILfT
	/+gmlm3uUHABRlMhOQ/GkmsaTazcTxWlVgELu8aT3CQnqb4/ESzw+Aw3BDzA8zIGGho7un
	/xGiKs/6uVI8IkX53VfaJdEKdnWDcdqT9e5CB29GP8/Y6vigoCA91fKd16U9oyYl6FBi3V
	ysxzak5JMQEL2u14QkPNMooj8TdPRic7nvvfbb/VLlW/apoPGENl8joHnYyB/A==
From: Herve Codina <herve.codina@bootlin.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Vasut <marex@denx.de>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Louis Chauvet <louis.chauvet@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Herve Codina <herve.codina@bootlin.com>
Subject: [PATCH v2 3/3] drm: bridge: ti-sn65dsi83: Add error recovery mechanism
Date: Tue, 17 Dec 2024 15:32:15 +0100
Message-ID: <20241217143216.658461-4-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241217143216.658461-1-herve.codina@bootlin.com>
References: <20241217143216.658461-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

In some cases observed during ESD tests, the TI SN65DSI83 cannot recover
from errors by itself. A full restart of the bridge is needed in those
cases to have the bridge output LVDS signals again.

Also, during tests, cases were observed where reading the status of the
bridge was not even possible. Indeed, in those cases, the bridge stops
to acknowledge I2C transactions. Only a full reset of the bridge (power
off/on) brings back the bridge to a functional state.

The TI SN65DSI83 has some error detection capabilities. Introduce an
error recovery mechanism based on this detection.

The errors detected are signaled through an interrupt. On system where
this interrupt is not available, the driver uses a polling monitoring
fallback to check for errors. When an error is present or when reading
the bridge status leads to an I2C failure, the recovery process is
launched.

Restarting the bridge needs to redo the initialization sequence. This
initialization sequence has to be done with the DSI data lanes driven in
LP11 state. In order to do that, the recovery process resets the whole
output path (i.e the path from the encoder to the connector) where the
bridge is located.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 drivers/gpu/drm/bridge/ti-sn65dsi83.c | 142 ++++++++++++++++++++++++++
 1 file changed, 142 insertions(+)

diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
index e6264514bb3f..f3d66d17f28c 100644
--- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
+++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
@@ -35,9 +35,12 @@
 #include <linux/of_graph.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
+#include <linux/timer.h>
+#include <linux/workqueue.h>
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
+#include <drm/drm_drv.h> /* DRM_MODESET_LOCK_ALL_BEGIN() need drm_drv_uses_atomic_modeset() */
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
@@ -147,6 +150,9 @@ struct sn65dsi83 {
 	struct regulator		*vcc;
 	bool				lvds_dual_link;
 	bool				lvds_dual_link_even_odd_swap;
+	bool				use_irq;
+	struct delayed_work		monitor_work;
+	struct work_struct		reset_work;
 };
 
 static const struct regmap_range sn65dsi83_readable_ranges[] = {
@@ -328,6 +334,106 @@ static u8 sn65dsi83_get_dsi_div(struct sn65dsi83 *ctx)
 	return dsi_div - 1;
 }
 
+static int sn65dsi83_reset_drm_output(struct sn65dsi83 *sn65dsi83)
+{
+	struct drm_atomic_state *state = ERR_PTR(-EINVAL);
+	struct drm_device *dev = sn65dsi83->bridge.dev;
+	struct drm_modeset_acquire_ctx ctx;
+	struct drm_connector *connector;
+	int err;
+
+	/*
+	 * Reset components available from the encoder to the connector.
+	 * To do that, we disable then re-enable the connector linked to the
+	 * encoder.
+	 *
+	 * This way, drm core will reconfigure each components. In our case,
+	 * this will force the previous component to go back in LP11 mode and
+	 * so allow the reconfiguration of SN64DSI83 bridge.
+	 *
+	 * Keep the lock during the whole operation to be atomic.
+	 */
+
+	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, err);
+
+	state = drm_atomic_helper_duplicate_state(dev, &ctx);
+	if (IS_ERR(state)) {
+		err = PTR_ERR(state);
+		goto unlock;
+	}
+
+	connector = drm_atomic_get_old_connector_for_encoder(state,
+							     sn65dsi83->bridge.encoder);
+	if (!connector) {
+		err = -EINVAL;
+		goto unlock;
+	}
+
+	err = drm_atomic_helper_disable_connector(connector, &ctx);
+	if (err < 0)
+		goto unlock;
+
+	/* Restore original state to re-enable the connector */
+	err = drm_atomic_helper_commit_duplicated_state(state, &ctx);
+
+unlock:
+	DRM_MODESET_LOCK_ALL_END(dev, ctx, err);
+	if (!IS_ERR(state))
+		drm_atomic_state_put(state);
+	return err;
+}
+
+static void sn65dsi83_reset_work(struct work_struct *ws)
+{
+	struct sn65dsi83 *ctx = container_of(ws, struct sn65dsi83, reset_work);
+	int ret;
+
+	dev_warn(ctx->dev, "reset the drm output\n");
+
+	/* Reset the output */
+	ret = sn65dsi83_reset_drm_output(ctx);
+	if (ret) {
+		dev_err(ctx->dev, "reset drm output failed %pe\n", ERR_PTR(ret));
+		return;
+	}
+}
+
+static void sn65dsi83_handle_errors(struct sn65dsi83 *ctx)
+{
+	unsigned int irq_stat;
+	int ret;
+
+	/*
+	 * Schedule a reset in case of:
+	 *  - the bridge doesn't answer
+	 *  - the bridge signals an error
+	 */
+
+	ret = regmap_read(ctx->regmap, REG_IRQ_STAT, &irq_stat);
+	if (ret || irq_stat)
+		schedule_work(&ctx->reset_work);
+}
+
+static void sn65dsi83_monitor_work(struct work_struct *work)
+{
+	struct sn65dsi83 *ctx = container_of(to_delayed_work(work),
+					     struct sn65dsi83, monitor_work);
+
+	sn65dsi83_handle_errors(ctx);
+
+	schedule_delayed_work(&ctx->monitor_work, msecs_to_jiffies(1000));
+}
+
+static void sn65dsi83_monitor_start(struct sn65dsi83 *ctx)
+{
+	schedule_delayed_work(&ctx->monitor_work, msecs_to_jiffies(1000));
+}
+
+static void sn65dsi83_monitor_stop(struct sn65dsi83 *ctx)
+{
+	cancel_delayed_work_sync(&ctx->monitor_work);
+}
+
 static void sn65dsi83_atomic_pre_enable(struct drm_bridge *bridge,
 					struct drm_bridge_state *old_bridge_state)
 {
@@ -516,6 +622,15 @@ static void sn65dsi83_atomic_enable(struct drm_bridge *bridge,
 	regmap_read(ctx->regmap, REG_IRQ_STAT, &pval);
 	if (pval)
 		dev_err(ctx->dev, "Unexpected link status 0x%02x\n", pval);
+
+	if (ctx->use_irq) {
+		/* Enable irq to detect errors */
+		regmap_write(ctx->regmap, REG_IRQ_GLOBAL, REG_IRQ_GLOBAL_IRQ_EN);
+		regmap_write(ctx->regmap, REG_IRQ_EN, 0xff);
+	} else {
+		/* Use the polling task */
+		sn65dsi83_monitor_start(ctx);
+	}
 }
 
 static void sn65dsi83_atomic_disable(struct drm_bridge *bridge,
@@ -524,6 +639,15 @@ static void sn65dsi83_atomic_disable(struct drm_bridge *bridge,
 	struct sn65dsi83 *ctx = bridge_to_sn65dsi83(bridge);
 	int ret;
 
+	if (ctx->use_irq) {
+		/* Disable irq */
+		regmap_write(ctx->regmap, REG_IRQ_EN, 0x0);
+		regmap_write(ctx->regmap, REG_IRQ_GLOBAL, 0x0);
+	} else {
+		/* Stop the polling task */
+		sn65dsi83_monitor_stop(ctx);
+	}
+
 	/* Put the chip in reset, pull EN line low, and assure 10ms reset low timing. */
 	gpiod_set_value_cansleep(ctx->enable_gpio, 0);
 	usleep_range(10000, 11000);
@@ -681,6 +805,14 @@ static int sn65dsi83_host_attach(struct sn65dsi83 *ctx)
 	return 0;
 }
 
+static irqreturn_t sn65dsi83_irq(int irq, void *data)
+{
+	struct sn65dsi83 *ctx = data;
+
+	sn65dsi83_handle_errors(ctx);
+	return IRQ_HANDLED;
+}
+
 static int sn65dsi83_probe(struct i2c_client *client)
 {
 	const struct i2c_device_id *id = i2c_client_get_device_id(client);
@@ -698,6 +830,8 @@ static int sn65dsi83_probe(struct i2c_client *client)
 		return ret;
 
 	ctx->dev = dev;
+	INIT_WORK(&ctx->reset_work, sn65dsi83_reset_work);
+	INIT_DELAYED_WORK(&ctx->monitor_work, sn65dsi83_monitor_work);
 
 	if (dev->of_node) {
 		model = (enum sn65dsi83_model)(uintptr_t)
@@ -722,6 +856,14 @@ static int sn65dsi83_probe(struct i2c_client *client)
 	if (IS_ERR(ctx->regmap))
 		return dev_err_probe(dev, PTR_ERR(ctx->regmap), "failed to get regmap\n");
 
+	if (client->irq) {
+		ret = devm_request_threaded_irq(ctx->dev, client->irq, NULL, sn65dsi83_irq,
+						IRQF_ONESHOT, dev_name(ctx->dev), ctx);
+		if (ret)
+			return dev_err_probe(dev, ret, "failed to request irq\n");
+		ctx->use_irq = true;
+	}
+
 	dev_set_drvdata(dev, ctx);
 	i2c_set_clientdata(client, ctx);
 
-- 
2.47.0


