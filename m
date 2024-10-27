Return-Path: <devicetree+bounces-116152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DADC9B1F30
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 17:24:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD7501F211DD
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 16:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55CDE165EFC;
	Sun, 27 Oct 2024 16:24:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="SjjU2v0D"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A5C12570;
	Sun, 27 Oct 2024 16:23:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730046241; cv=none; b=rXLK8fWnNYTJK8FTvUcZpiPwwDR5tSMwaj8AVLylbG9E30obKOCjaIbJ4kqSMCMHXDSW7gkQpE1vpZWgLKMagoRYNS0jGPuMVNdA8oJqf01fT0PJLl/RRgGMZmT21i8wHNQM+2+Qm5F10D09TXg+X+EJ2dtGCzIiDev41SDXIyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730046241; c=relaxed/simple;
	bh=rqba3ZcyIxIxvJgGj6KmTFTTJcmfH8yh6pSVgGLT9PE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CIK1RPp1d4E1yC9rK+yAjIRc0SJzxGdyj7YQ+tCvpnyd4kQZQCskq9jzikUzbxclEZyz2+mE2Iv9SnE2eBfN8znTSBiy8zSytt7xifhaabbE24+BcvtuR1i3OvI+EP1/czaXxLr+MqEGCv4qyS5pL/2ORqRo1Tp0eWwRQO2/M1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=SjjU2v0D; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0D1EC7E4;
	Sun, 27 Oct 2024 17:23:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1730046235;
	bh=rqba3ZcyIxIxvJgGj6KmTFTTJcmfH8yh6pSVgGLT9PE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SjjU2v0DqbyGrmmxM1z+oHBRn617efLq/5Tb7yR6cLhc+eNk+JZNTT7mqmNsrvmUT
	 9Y5GmWjHPYmwXvFAh87lA5hiqBei3wPOCfpBvZol85Ehmp+e6OVTCO/HqgTrMsSa8F
	 NGwuKlXR76Qy3orTAeowq++F60LRfZO7bo4HrOes=
Date: Sun, 27 Oct 2024 18:23:50 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Herve Codina <herve.codina@bootlin.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 2/2] drm: bridge: ti-sn65dsi83: Add error recovery
 mechanism
Message-ID: <20241027162350.GA15853@pendragon.ideasonboard.com>
References: <20241024095539.1637280-1-herve.codina@bootlin.com>
 <20241024095539.1637280-3-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241024095539.1637280-3-herve.codina@bootlin.com>

On Thu, Oct 24, 2024 at 11:55:38AM +0200, Herve Codina wrote:
> In some cases observed during ESD tests, the TI SN65DSI83 cannot recover
> from errors by itself. A full restart of the bridge is needed in those
> cases to have the bridge output LVDS signals again.
> 
> The TI SN65DSI83 has some error detection capabilities. Introduce an
> error recovery mechanism based on this detection.
> 
> The errors detected are signaled through an interrupt. On system where
> this interrupt is not available, the driver uses a polling monitoring
> fallback to check for errors. When an error is present, the recovery
> process is launched.
> 
> Restarting the bridge needs to redo the initialization sequence. This
> initialization sequence has to be done with the DSI data lanes driven in
> LP11 state. In order to do that, the recovery process resets the entire
> pipeline.
> 
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
>  drivers/gpu/drm/bridge/ti-sn65dsi83.c | 128 ++++++++++++++++++++++++++
>  1 file changed, 128 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> index 96e829163d87..22975b60e80f 100644
> --- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> +++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> @@ -35,9 +35,12 @@
>  #include <linux/of_graph.h>
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
> +#include <linux/timer.h>
> +#include <linux/workqueue.h>
>  
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_bridge.h>
> +#include <drm/drm_drv.h> /* DRM_MODESET_LOCK_ALL_BEGIN() need drm_drv_uses_atomic_modeset() */
>  #include <drm/drm_mipi_dsi.h>
>  #include <drm/drm_of.h>
>  #include <drm/drm_panel.h>
> @@ -147,6 +150,9 @@ struct sn65dsi83 {
>  	struct regulator		*vcc;
>  	bool				lvds_dual_link;
>  	bool				lvds_dual_link_even_odd_swap;
> +	bool				use_irq;
> +	struct delayed_work		monitor_work;
> +	struct work_struct		reset_work;
>  };
>  
>  static const struct regmap_range sn65dsi83_readable_ranges[] = {
> @@ -321,6 +327,92 @@ static u8 sn65dsi83_get_dsi_div(struct sn65dsi83 *ctx)
>  	return dsi_div - 1;
>  }
>  
> +static int sn65dsi83_reset_pipeline(struct sn65dsi83 *sn65dsi83)
> +{
> +	struct drm_device *dev = sn65dsi83->bridge.dev;
> +	struct drm_modeset_acquire_ctx ctx;
> +	struct drm_atomic_state *state;
> +	int err;
> +
> +	/* Use operation done in drm_atomic_helper_suspend() followed by
> +	 * operation done in drm_atomic_helper_resume() but without releasing
> +	 * the lock between suspend()/resume()
> +	 */
> +
> +	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, err);
> +
> +	state = drm_atomic_helper_duplicate_state(dev, &ctx);
> +	if (IS_ERR(state)) {
> +		err = PTR_ERR(state);
> +		goto unlock;
> +	}
> +
> +	err = drm_atomic_helper_disable_all(dev, &ctx);
> +	if (err < 0)
> +		goto unlock;
> +
> +	drm_mode_config_reset(dev);
> +
> +	err = drm_atomic_helper_commit_duplicated_state(state, &ctx);

Committing a full atomic state from a bridge driver in an asynchronous
way seems quite uncharted territory, and it worries me. It's also a very
heavyweight, you disable all outputs here, instead of focussing on the
output connected to the bridge. Can you either implement something more
local, resetting the bridge only, or create a core helper to handle this
kind of situation, on a per-output basis ?

> +
> +unlock:
> +	DRM_MODESET_LOCK_ALL_END(dev, ctx, err);
> +	if (!IS_ERR(state))
> +		drm_atomic_state_put(state);
> +	return err;
> +}
> +
> +static void sn65dsi83_reset_work(struct work_struct *ws)
> +{
> +	struct sn65dsi83 *ctx = container_of(ws, struct sn65dsi83, reset_work);
> +	int ret;
> +
> +	dev_warn(ctx->dev, "reset pipeline\n");
> +
> +	/* Reset the pipeline */
> +	ret = sn65dsi83_reset_pipeline(ctx);
> +	if (ret) {
> +		dev_err(ctx->dev, "reset pipeline failed %pe\n", ERR_PTR(ret));
> +		return;
> +	}
> +}
> +
> +static void sn65dsi83_handle_errors(struct sn65dsi83 *ctx)
> +{
> +	unsigned int irq_stat;
> +	int ret;
> +
> +	/*
> +	 * Schedule a reset in case of:
> +	 *  - the bridge doesn't answer
> +	 *  - the bridge signals an error
> +	 */
> +
> +	ret = regmap_read(ctx->regmap, REG_IRQ_STAT, &irq_stat);
> +	if (ret || irq_stat)
> +		schedule_work(&ctx->reset_work);
> +}
> +
> +static void sn65dsi83_monitor_work(struct work_struct *work)
> +{
> +	struct sn65dsi83 *ctx = container_of(to_delayed_work(work),
> +					     struct sn65dsi83, monitor_work);
> +
> +	sn65dsi83_handle_errors(ctx);
> +
> +	schedule_delayed_work(&ctx->monitor_work, msecs_to_jiffies(1000));
> +}
> +
> +static void sn65dsi83_monitor_start(struct sn65dsi83 *ctx)
> +{
> +	schedule_delayed_work(&ctx->monitor_work, msecs_to_jiffies(1000));
> +}
> +
> +static void sn65dsi83_monitor_stop(struct sn65dsi83 *ctx)
> +{
> +	cancel_delayed_work_sync(&ctx->monitor_work);
> +}
> +
>  static void sn65dsi83_atomic_pre_enable(struct drm_bridge *bridge,
>  					struct drm_bridge_state *old_bridge_state)
>  {
> @@ -509,6 +601,15 @@ static void sn65dsi83_atomic_enable(struct drm_bridge *bridge,
>  	regmap_read(ctx->regmap, REG_IRQ_STAT, &pval);
>  	if (pval)
>  		dev_err(ctx->dev, "Unexpected link status 0x%02x\n", pval);
> +
> +	if (ctx->use_irq) {
> +		/* Enable irq to detect errors */
> +		regmap_write(ctx->regmap, REG_IRQ_GLOBAL, REG_IRQ_GLOBAL_IRQ_EN);
> +		regmap_write(ctx->regmap, REG_IRQ_EN, 0xff);
> +	} else {
> +		/* Use the polling task */
> +		sn65dsi83_monitor_start(ctx);
> +	}
>  }
>  
>  static void sn65dsi83_atomic_disable(struct drm_bridge *bridge,
> @@ -517,6 +618,15 @@ static void sn65dsi83_atomic_disable(struct drm_bridge *bridge,
>  	struct sn65dsi83 *ctx = bridge_to_sn65dsi83(bridge);
>  	int ret;
>  
> +	if (ctx->use_irq) {
> +		/* Disable irq */
> +		regmap_write(ctx->regmap, REG_IRQ_EN, 0x0);
> +		regmap_write(ctx->regmap, REG_IRQ_GLOBAL, 0x0);
> +	} else {
> +		/* Stop the polling task */
> +		sn65dsi83_monitor_stop(ctx);
> +	}
> +
>  	/* Put the chip in reset, pull EN line low, and assure 10ms reset low timing. */
>  	gpiod_set_value_cansleep(ctx->enable_gpio, 0);
>  	usleep_range(10000, 11000);
> @@ -673,6 +783,14 @@ static int sn65dsi83_host_attach(struct sn65dsi83 *ctx)
>  	return 0;
>  }
>  
> +static irqreturn_t sn65dsi83_irq(int irq, void *data)
> +{
> +	struct sn65dsi83 *ctx = data;
> +
> +	sn65dsi83_handle_errors(ctx);
> +	return IRQ_HANDLED;
> +}
> +
>  static int sn65dsi83_probe(struct i2c_client *client)
>  {
>  	const struct i2c_device_id *id = i2c_client_get_device_id(client);
> @@ -686,6 +804,8 @@ static int sn65dsi83_probe(struct i2c_client *client)
>  		return -ENOMEM;
>  
>  	ctx->dev = dev;
> +	INIT_WORK(&ctx->reset_work, sn65dsi83_reset_work);
> +	INIT_DELAYED_WORK(&ctx->monitor_work, sn65dsi83_monitor_work);
>  
>  	if (dev->of_node) {
>  		model = (enum sn65dsi83_model)(uintptr_t)
> @@ -710,6 +830,14 @@ static int sn65dsi83_probe(struct i2c_client *client)
>  	if (IS_ERR(ctx->regmap))
>  		return dev_err_probe(dev, PTR_ERR(ctx->regmap), "failed to get regmap\n");
>  
> +	if (client->irq) {
> +		ret = devm_request_threaded_irq(ctx->dev, client->irq, NULL, sn65dsi83_irq,
> +						IRQF_ONESHOT, dev_name(ctx->dev), ctx);
> +		if (ret)
> +			return dev_err_probe(dev, ret, "failed to request irq\n");
> +		ctx->use_irq = true;
> +	}
> +
>  	dev_set_drvdata(dev, ctx);
>  	i2c_set_clientdata(client, ctx);
>  

-- 
Regards,

Laurent Pinchart

