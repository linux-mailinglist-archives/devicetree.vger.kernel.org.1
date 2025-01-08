Return-Path: <devicetree+bounces-136546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FB9A058CF
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 11:55:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E35D1165351
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 10:55:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DA041F8691;
	Wed,  8 Jan 2025 10:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="eDhCtwbm";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="ItP7x9E4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E51619D06A;
	Wed,  8 Jan 2025 10:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736333706; cv=none; b=VsV+hKvOcQlLmj73w2pSLbjgayrW7eE7vA6VUIM9es2ZVwCecE4xRm/xtmgi3uh0+Lc9kUOzetaW+EfWj2fQ08P5pOSzA1xWMnpAA8Ydff9TKqU6t9WZ97DeueBhDDIIOewq5mw+5mxsEtKquz68KyqsYzDCnm2ztTosDXpGeug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736333706; c=relaxed/simple;
	bh=SAh4aUM9+5D6xQR7y2NPQk5Ejc8Ap/jWYpySkQfPpfM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SgyQwaiq6f5VqiguHOWjClsDzJV1aeCYMi/6jiiAdsv0iHXWNAGAuL+zVPXlxNYMe7p1vR0Y0jLH3mTQBhjYaH6HuCJGiz+tvs+scfWAPeiPh6Ew64IRvLG+N7fcMMbDZ8+qq2YGNq2T7CAc0tL79pl9kC3phUDpMX4HBB30Xvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=eDhCtwbm; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=ItP7x9E4 reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1736333702; x=1767869702;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=xRsrKWARdV47YPQeVwUD2rVV+wXWjl1KEL8Z5MKVA0U=;
  b=eDhCtwbmYrFVzTIqvo91bn2wH/z2chy+f50AnhWKlItyeeETKdOJ1EGg
   h48sVKS9aqZChxM5TKZRYBLfgITXpnXQMzSnv2Wy4FLrcvQvjR5pQ9EtW
   Jpswzv32q49wJLxEEkdGsSNR94V5aED6EK+ww6ScXCMck3hag6pLcZaMP
   dYkrXUdojVgWzyjcgLVQNa8GB6wm54UIpptdhNyPhj8kri3fT8zJZ1MhL
   qUVuKmnr0G0SFmSJyMs6K0rIJ+hkxuJ5/xAepb+1dNVa49t64XyhjMWiM
   BvwA/YDlQ2QZp5R4QT1B6d6JgNC6/wEKFIS+liaSocmCagLc5ik9ARWMA
   g==;
X-CSE-ConnectionGUID: cy2VWgNdStmKKYe8ylqtWA==
X-CSE-MsgGUID: Vkq89ndeRUu/KCFLOJ9Ubg==
X-IronPort-AV: E=Sophos;i="6.12,298,1728943200"; 
   d="scan'208";a="40918179"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 08 Jan 2025 11:54:59 +0100
X-CheckPoint: {677E5983-4E-31397509-E321C4C4}
X-MAIL-CPID: 6062346B1A41D4F548874B467F682FC4_0
X-Control-Analysis: str=0001.0A682F1A.677E5984.0020,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 49ABA160C61;
	Wed,  8 Jan 2025 11:54:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1736333694;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xRsrKWARdV47YPQeVwUD2rVV+wXWjl1KEL8Z5MKVA0U=;
	b=ItP7x9E4D+2DnU/R60PzR+H76TNQ7Ob8ug9BzDxt2gMmQ6fDf63Hwm/3lkdiTDH2iZ5mSV
	Uk3cYUnZDpHSOfkstDA1zNoqwFz77xj5pKLswofJiXes3oipZ7TuA48Qo25bRvmAC+NHaI
	OnXJzrTvxanzPMcuf6/lMzHCrphT9pIoZ9Ck1HS4b7PXocQhs37aQ4ZOTn7FCpSQ9VBKc9
	w9/nO6UIe0ZopA8DBXhKvENT3A51uX1p/uZPk+FOUarXkcvRsKkVGXXoZHRGdczBeqwKo/
	tFCeELbm4Y3FXLLHjRLfUpMzk0JLMHk43WH1FVWZYgXOO+aRRn0GdK1P+A9bEw==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Louis Chauvet <louis.chauvet@bootlin.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Herve Codina <herve.codina@bootlin.com>, Herve Codina <herve.codina@bootlin.com>
Subject: Re: [PATCH v3 3/3] drm: bridge: ti-sn65dsi83: Add error recovery mechanism
Date: Wed, 08 Jan 2025 11:54:49 +0100
Message-ID: <115787605.nniJfEyVGO@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20250108101907.410456-4-herve.codina@bootlin.com>
References: <20250108101907.410456-1-herve.codina@bootlin.com> <20250108101907.410456-4-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Last-TLS-Session-Version: TLSv1.3

Hi Herve,

Am Mittwoch, 8. Januar 2025, 11:19:02 CET schrieb Herve Codina:
> In some cases observed during ESD tests, the TI SN65DSI83 cannot recover
> from errors by itself. A full restart of the bridge is needed in those
> cases to have the bridge output LVDS signals again.
>=20
> Also, during tests, cases were observed where reading the status of the
> bridge was not even possible. Indeed, in those cases, the bridge stops
> to acknowledge I2C transactions. Only a full reset of the bridge (power
> off/on) brings back the bridge to a functional state.
>=20
> The TI SN65DSI83 has some error detection capabilities. Introduce an
> error recovery mechanism based on this detection.
>=20
> The errors detected are signaled through an interrupt. On system where
> this interrupt is not available, the driver uses a polling monitoring
> fallback to check for errors. When an error is present or when reading
> the bridge status leads to an I2C failure, the recovery process is
> launched.
>=20
> Restarting the bridge needs to redo the initialization sequence. This
> initialization sequence has to be done with the DSI data lanes driven in
> LP11 state. In order to do that, the recovery process resets the whole
> output path (i.e the path from the encoder to the connector) where the
> bridge is located.
>=20
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
>  drivers/gpu/drm/bridge/ti-sn65dsi83.c | 147 ++++++++++++++++++++++++++
>  1 file changed, 147 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/brid=
ge/ti-sn65dsi83.c
> index e6264514bb3f..74bc05647436 100644
> --- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> +++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> @@ -35,9 +35,12 @@
>  #include <linux/of_graph.h>
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
> +#include <linux/timer.h>
> +#include <linux/workqueue.h>
> =20
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_bridge.h>
> +#include <drm/drm_drv.h> /* DRM_MODESET_LOCK_ALL_BEGIN() needs drm_drv_u=
ses_atomic_modeset() */

Shouldn't this include be added to include/drm/drm_modeset_lock.h instead?

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

Can you please rebase? You are missing commit d2b8c6d549570
("drm/bridge: ti-sn65dsi83: Add ti,lvds-vod-swing optional properties")

>  };
> =20
>  static const struct regmap_range sn65dsi83_readable_ranges[] =3D {
> @@ -328,6 +334,111 @@ static u8 sn65dsi83_get_dsi_div(struct sn65dsi83 *c=
tx)
>  	return dsi_div - 1;
>  }
> =20
> +static int sn65dsi83_reset_pipe(struct sn65dsi83 *sn65dsi83)
> +{
> +	struct drm_atomic_state *state =3D ERR_PTR(-EINVAL);
> +	struct drm_device *dev =3D sn65dsi83->bridge.dev;
> +	struct drm_connector_state *connector_state;
> +	struct drm_modeset_acquire_ctx ctx;
> +	struct drm_connector *connector;
> +	int err;
> +
> +	/*
> +	 * Reset active outputs of the related CRTC.
> +	 *
> +	 * This way, drm core will reconfigure each components in the CRTC
> +	 * outputs path. In our case, this will force the previous component to
> +	 * go back in LP11 mode and so allow the reconfiguration of SN64DSI83
> +	 * bridge.
> +	 *
> +	 * Keep the lock during the whole operation to be atomic.
> +	 */
> +
> +	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, err);
> +
> +	state =3D drm_atomic_helper_duplicate_state(dev, &ctx);
> +	if (IS_ERR(state)) {
> +		err =3D PTR_ERR(state);
> +		goto unlock;
> +	}
> +
> +	state->acquire_ctx =3D &ctx;
> +
> +	connector =3D drm_atomic_get_old_connector_for_encoder(state,
> +							     sn65dsi83->bridge.encoder);
> +	if (!connector) {
> +		err =3D -EINVAL;
> +		goto unlock;
> +	}
> +
> +	connector_state =3D drm_atomic_get_connector_state(state, connector);
> +	if (IS_ERR(connector_state)) {
> +		err =3D PTR_ERR(connector_state);
> +		goto unlock;
> +	}
> +
> +	err =3D drm_atomic_helper_reset_pipe(connector_state->crtc, &ctx);
> +	if (err < 0)
> +		goto unlock;
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
> +	struct sn65dsi83 *ctx =3D container_of(ws, struct sn65dsi83, reset_work=
);
> +	int ret;
> +
> +	dev_warn(ctx->dev, "reset the pipe\n");
> +
> +	/* Reset the pipe */
> +	ret =3D sn65dsi83_reset_pipe(ctx);
> +	if (ret) {
> +		dev_err(ctx->dev, "reset pipe failed %pe\n", ERR_PTR(ret));
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
> +	ret =3D regmap_read(ctx->regmap, REG_IRQ_STAT, &irq_stat);
> +	if (ret || irq_stat)
> +		schedule_work(&ctx->reset_work);

Shouldn't you clear the error bits as well?

Best regards,
Alexander

> +}
> +
> +static void sn65dsi83_monitor_work(struct work_struct *work)
> +{
> +	struct sn65dsi83 *ctx =3D container_of(to_delayed_work(work),
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
> @@ -516,6 +627,15 @@ static void sn65dsi83_atomic_enable(struct drm_bridg=
e *bridge,
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
> =20
>  static void sn65dsi83_atomic_disable(struct drm_bridge *bridge,
> @@ -524,6 +644,15 @@ static void sn65dsi83_atomic_disable(struct drm_brid=
ge *bridge,
>  	struct sn65dsi83 *ctx =3D bridge_to_sn65dsi83(bridge);
>  	int ret;
> =20
> +	if (ctx->use_irq) {
> +		/* Disable irq */
> +		regmap_write(ctx->regmap, REG_IRQ_EN, 0x0);
> +		regmap_write(ctx->regmap, REG_IRQ_GLOBAL, 0x0);
> +	} else {
> +		/* Stop the polling task */
> +		sn65dsi83_monitor_stop(ctx);
> +	}
> +
>  	/* Put the chip in reset, pull EN line low, and assure 10ms reset low t=
iming. */
>  	gpiod_set_value_cansleep(ctx->enable_gpio, 0);
>  	usleep_range(10000, 11000);
> @@ -681,6 +810,14 @@ static int sn65dsi83_host_attach(struct sn65dsi83 *c=
tx)
>  	return 0;
>  }
> =20
> +static irqreturn_t sn65dsi83_irq(int irq, void *data)
> +{
> +	struct sn65dsi83 *ctx =3D data;
> +
> +	sn65dsi83_handle_errors(ctx);
> +	return IRQ_HANDLED;
> +}
> +
>  static int sn65dsi83_probe(struct i2c_client *client)
>  {
>  	const struct i2c_device_id *id =3D i2c_client_get_device_id(client);
> @@ -698,6 +835,8 @@ static int sn65dsi83_probe(struct i2c_client *client)
>  		return ret;
> =20
>  	ctx->dev =3D dev;
> +	INIT_WORK(&ctx->reset_work, sn65dsi83_reset_work);
> +	INIT_DELAYED_WORK(&ctx->monitor_work, sn65dsi83_monitor_work);
> =20
>  	if (dev->of_node) {
>  		model =3D (enum sn65dsi83_model)(uintptr_t)
> @@ -722,6 +861,14 @@ static int sn65dsi83_probe(struct i2c_client *client)
>  	if (IS_ERR(ctx->regmap))
>  		return dev_err_probe(dev, PTR_ERR(ctx->regmap), "failed to get regmap\=
n");
> =20
> +	if (client->irq) {
> +		ret =3D devm_request_threaded_irq(ctx->dev, client->irq, NULL, sn65dsi=
83_irq,
> +						IRQF_ONESHOT, dev_name(ctx->dev), ctx);
> +		if (ret)
> +			return dev_err_probe(dev, ret, "failed to request irq\n");
> +		ctx->use_irq =3D true;
> +	}
> +
>  	dev_set_drvdata(dev, ctx);
>  	i2c_set_clientdata(client, ctx);
> =20
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



