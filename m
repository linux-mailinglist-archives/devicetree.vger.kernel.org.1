Return-Path: <devicetree+bounces-132147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A95319F6014
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 09:24:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6392B1896609
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 08:24:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 330A216C69F;
	Wed, 18 Dec 2024 08:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="MdZ2+Mpe"
X-Original-To: devicetree@vger.kernel.org
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22EC156F44;
	Wed, 18 Dec 2024 08:24:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.199
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734510262; cv=none; b=a9el7xyeV3FnoY6rmY/f8DymTfxb24r/PwyVFD/6Ufar5mmDLgutOcTENylUeziqUowltWdwDkQ3iG5h/g3C8KbI+Y20F++1O3VXfDqIxebni8F/3tcv6RBAn1lOFmT4kEZ8bbfEHImOUvrMC8GeReD6NiIRl5OMLCPuCUmbZc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734510262; c=relaxed/simple;
	bh=Su9BEBn7u0ZFL+P8Ks17s8BsUsbAkeilygl1wHE5P1M=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GnwEFwIX5If5HeH7sqXP9gZCQ7ixzNSmlL5Yj6ariuiRbYlxJAtlxajdIDGnhdW3sChj08ttk578c30QrR0Jo8XxMXYoIOghScVkFX8q3WhpUDA2LZan3jEPX4EBzUwXb3x/QiEiVl/I7lCT0dBCXZdRoo4EtApD/n36e2u3KoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=MdZ2+Mpe; arc=none smtp.client-ip=217.70.183.199
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id AA250FF802;
	Wed, 18 Dec 2024 08:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1734510251;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=myFg1NQ8L5OwwNCEMrDS09pDH9Zp+fC6cREhEq2jIes=;
	b=MdZ2+MpepQRtfxnjb3PIrrvmZW73TpHILdpVl/3/B7Cnf+kuHD3bF5ZDyLIaB26dx60UMO
	GISjvKqfoHRNYdnKYmtER7v6GAkWmltEYdYxfuLBKXDxUDyCziq/IZXiLW5khKkA3B1Esi
	CZH3LWcTkp3+coqVM1+uIstjZeo9JLO7O/Db6ifW1sPpo0scBSSB37q6a/AoUbjC7wGGSX
	d5N94PQv6NeNUcMwUOZYcPxKtWdeMFBRWsnO9Km4D7xJkkIbub6gLUF/4z2LCv9njDLRH4
	sinxk3CywFTuGgldIAVPuDPeCKKrQGXofXgLEwH64mKuzqEKOf+Ut9J0b01+pw==
Date: Wed, 18 Dec 2024 09:24:07 +0100
From: Herve Codina <herve.codina@bootlin.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong
 <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Laurent
 Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie
 <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Marek Vasut
 <marex@denx.de>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Louis Chauvet
 <louis.chauvet@bootlin.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 3/3] drm: bridge: ti-sn65dsi83: Add error recovery
 mechanism
Message-ID: <20241218092407.559a204e@bootlin.com>
In-Reply-To: <20241217-tangible-nostalgic-salamander-27edaa@houat>
References: <20241217143216.658461-1-herve.codina@bootlin.com>
	<20241217143216.658461-4-herve.codina@bootlin.com>
	<20241217-tangible-nostalgic-salamander-27edaa@houat>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

Hi Maxime,

On Tue, 17 Dec 2024 18:30:52 +0100
Maxime Ripard <mripard@kernel.org> wrote:

> On Tue, Dec 17, 2024 at 03:32:15PM +0100, Herve Codina wrote:
> > In some cases observed during ESD tests, the TI SN65DSI83 cannot recover
> > from errors by itself. A full restart of the bridge is needed in those
> > cases to have the bridge output LVDS signals again.
> > 
> > Also, during tests, cases were observed where reading the status of the
> > bridge was not even possible. Indeed, in those cases, the bridge stops
> > to acknowledge I2C transactions. Only a full reset of the bridge (power
> > off/on) brings back the bridge to a functional state.
> > 
> > The TI SN65DSI83 has some error detection capabilities. Introduce an
> > error recovery mechanism based on this detection.
> > 
> > The errors detected are signaled through an interrupt. On system where
> > this interrupt is not available, the driver uses a polling monitoring
> > fallback to check for errors. When an error is present or when reading
> > the bridge status leads to an I2C failure, the recovery process is
> > launched.
> > 
> > Restarting the bridge needs to redo the initialization sequence. This
> > initialization sequence has to be done with the DSI data lanes driven in
> > LP11 state. In order to do that, the recovery process resets the whole
> > output path (i.e the path from the encoder to the connector) where the
> > bridge is located.
> > 
> > Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> > ---
> >  drivers/gpu/drm/bridge/ti-sn65dsi83.c | 142 ++++++++++++++++++++++++++
> >  1 file changed, 142 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> > index e6264514bb3f..f3d66d17f28c 100644
> > --- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> > +++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> > @@ -35,9 +35,12 @@
> >  #include <linux/of_graph.h>
> >  #include <linux/regmap.h>
> >  #include <linux/regulator/consumer.h>
> > +#include <linux/timer.h>
> > +#include <linux/workqueue.h>
> >  
> >  #include <drm/drm_atomic_helper.h>
> >  #include <drm/drm_bridge.h>
> > +#include <drm/drm_drv.h> /* DRM_MODESET_LOCK_ALL_BEGIN() need drm_drv_uses_atomic_modeset() */
> >  #include <drm/drm_mipi_dsi.h>
> >  #include <drm/drm_of.h>
> >  #include <drm/drm_panel.h>
> > @@ -147,6 +150,9 @@ struct sn65dsi83 {
> >  	struct regulator		*vcc;
> >  	bool				lvds_dual_link;
> >  	bool				lvds_dual_link_even_odd_swap;
> > +	bool				use_irq;
> > +	struct delayed_work		monitor_work;
> > +	struct work_struct		reset_work;
> >  };
> >  
> >  static const struct regmap_range sn65dsi83_readable_ranges[] = {
> > @@ -328,6 +334,106 @@ static u8 sn65dsi83_get_dsi_div(struct sn65dsi83 *ctx)
> >  	return dsi_div - 1;
> >  }
> >  
> > +static int sn65dsi83_reset_drm_output(struct sn65dsi83 *sn65dsi83)
> > +{
> > +	struct drm_atomic_state *state = ERR_PTR(-EINVAL);
> > +	struct drm_device *dev = sn65dsi83->bridge.dev;
> > +	struct drm_modeset_acquire_ctx ctx;
> > +	struct drm_connector *connector;
> > +	int err;
> > +
> > +	/*
> > +	 * Reset components available from the encoder to the connector.
> > +	 * To do that, we disable then re-enable the connector linked to the
> > +	 * encoder.
> > +	 *
> > +	 * This way, drm core will reconfigure each components. In our case,
> > +	 * this will force the previous component to go back in LP11 mode and
> > +	 * so allow the reconfiguration of SN64DSI83 bridge.
> > +	 *
> > +	 * Keep the lock during the whole operation to be atomic.
> > +	 */
> > +
> > +	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, err);
> > +
> > +	state = drm_atomic_helper_duplicate_state(dev, &ctx);
> > +	if (IS_ERR(state)) {
> > +		err = PTR_ERR(state);
> > +		goto unlock;
> > +	}
> > +
> > +	connector = drm_atomic_get_old_connector_for_encoder(state,
> > +							     sn65dsi83->bridge.encoder);
> > +	if (!connector) {
> > +		err = -EINVAL;
> > +		goto unlock;
> > +	}
> > +
> > +	err = drm_atomic_helper_disable_connector(connector, &ctx);
> > +	if (err < 0)
> > +		goto unlock;
> > +
> > +	/* Restore original state to re-enable the connector */
> > +	err = drm_atomic_helper_commit_duplicated_state(state, &ctx);
> > +
> > +unlock:
> > +	DRM_MODESET_LOCK_ALL_END(dev, ctx, err);
> > +	if (!IS_ERR(state))
> > +		drm_atomic_state_put(state);
> > +	return err;
> > +}  
> 
> In the previous version, we advised to create a generic helper similar
> to vc4 and i915 reset_pipe() and and intel_modeset_commit_pipes().
> 
> It looks like you chose a different path. Can you expand why?
> 

I didn't choose a different path.
I created the drm_atomic_helper_disable_connector(). Maybe it is not enough.

I can move (copy/paste) sn65dsi83_reset_drm_output() to a new helper:
  int drm_atomic_helper_disable_output(struct drm_encoder *encoder)

Is it what you expect?

Also, are operations done in current sn65dsi83_reset_drm_output() correct
in order to reset the output? It works on my system but what is your
feedback on operations performed.

Best regards,
Hervé

