Return-Path: <devicetree+bounces-139224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD4EA14ABA
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 09:12:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7CDE1188CCBE
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 08:12:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD14F1F868A;
	Fri, 17 Jan 2025 08:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="A4dvd+In"
X-Original-To: devicetree@vger.kernel.org
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB4EA1F866D;
	Fri, 17 Jan 2025 08:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.199
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737101546; cv=none; b=MOpwubjU0cNDI9DucyXS1zqOuPgnfxyIGZzVvLAmJDzacR9tlqVfMFkAnl8fW/Yc1zQW93EklfD8wXnBgLMR6pf/MFD2am7a7/LKR5rXNqypwDp/s+4DItlIzvFo8uViqj2O46Xk2IV6kGD0hMYiRGOlLsomjEhGwfA0JGPgYP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737101546; c=relaxed/simple;
	bh=v0kx+AHPfVYLflg4t+WXJkREhTZ/T+IKu7+BVm84yME=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ueEX7FQS4Jzp/G9xfY69qpnHfkOY11upeUinQhZIfdXR744JS1a7j8GFs6aW437t2rxAa6hCwP5FJn38TKl9QIVx6HnjtfWr/b1U2UL3xsbP9MLaxcV16Q53s4KPQ5s2Df7+xUgel7nx+z6jn00MqVpDLVKeVVNMiIpd8kdMQ3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=A4dvd+In; arc=none smtp.client-ip=217.70.183.199
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 26543FF80A;
	Fri, 17 Jan 2025 08:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1737101536;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Zzpu4ol1m/LToBk3NAdooBOWkvpkG0XmpKguqRBU9tA=;
	b=A4dvd+IndVsWidlaeK1pFH7cWN/trRYbCf0IvVPMxooutzz/VGCm2udIJrTDjDY6h6alEq
	45XLr8LKShnxnUsqZc/eMapWqlsUoDTB+FyM+BJRu5wWhn8apuvxxeD5ra4WvJTDZlcnEL
	LQWk5+ezV29XXb4OGmhueQBOEV9bOJqU49g52CqbkvjzBmxEVv15Jazkof0EVXfthE+QFM
	iAfqMa7zMphv+Ol50AAsuOPQ+9/GNPMMiyORUFJPqx77ohNrVCDcDciiovontYOD2iJA5o
	1vDVn16dbWOa6IQgQnXu9xytsP5oAxjPurDZ/X/I8YhdKeiVMAxY7/w78gpugQ==
Date: Fri, 17 Jan 2025 09:12:13 +0100
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
Subject: Re: [PATCH v3 3/3] drm: bridge: ti-sn65dsi83: Add error recovery
 mechanism
Message-ID: <20250117091213.647bf0e6@bootlin.com>
In-Reply-To: <20250116-archetypal-bulldog-of-expression-fcc937@houat>
References: <20250108101907.410456-1-herve.codina@bootlin.com>
	<20250108101907.410456-4-herve.codina@bootlin.com>
	<20250114-juicy-authentic-mushroom-cfcdfb@houat>
	<20250114135456.5366eb2a@bootlin.com>
	<20250116-archetypal-bulldog-of-expression-fcc937@houat>
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

On Thu, 16 Jan 2025 09:38:45 +0100
Maxime Ripard <mripard@kernel.org> wrote:

> On Tue, Jan 14, 2025 at 01:54:56PM +0100, Herve Codina wrote:
> > Hi Maxime,
> > 
> > On Tue, 14 Jan 2025 08:40:51 +0100
> > Maxime Ripard <mripard@kernel.org> wrote:
> > 
> > ...
> >   
> > > >  
> > > > +static int sn65dsi83_reset_pipe(struct sn65dsi83 *sn65dsi83)
> > > > +{
> > > > +	struct drm_atomic_state *state = ERR_PTR(-EINVAL);
> > > > +	struct drm_device *dev = sn65dsi83->bridge.dev;
> > > > +	struct drm_connector_state *connector_state;
> > > > +	struct drm_modeset_acquire_ctx ctx;
> > > > +	struct drm_connector *connector;
> > > > +	int err;
> > > > +
> > > > +	/*
> > > > +	 * Reset active outputs of the related CRTC.
> > > > +	 *
> > > > +	 * This way, drm core will reconfigure each components in the CRTC
> > > > +	 * outputs path. In our case, this will force the previous component to
> > > > +	 * go back in LP11 mode and so allow the reconfiguration of SN64DSI83
> > > > +	 * bridge.
> > > > +	 *
> > > > +	 * Keep the lock during the whole operation to be atomic.
> > > > +	 */
> > > > +
> > > > +	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, err);
> > > > +
> > > > +	state = drm_atomic_helper_duplicate_state(dev, &ctx);
> > > > +	if (IS_ERR(state)) {
> > > > +		err = PTR_ERR(state);
> > > > +		goto unlock;
> > > > +	}    
> > > 
> > > No, you must not allocate a new state for this, you need to reuse the
> > > existing state. You'll find it in bridge->base.state->state.  
> > 
> > Thanks for pointing that. I didn't know about bridge->base.state->state.
> > 
> > I will use that if using the state is still relevant (see next comment).
> >   
> > >   
> > > > +	state->acquire_ctx = &ctx;
> > > > +
> > > > +	connector = drm_atomic_get_old_connector_for_encoder(state,
> > > > +							     sn65dsi83->bridge.encoder);
> > > > +	if (!connector) {
> > > > +		err = -EINVAL;
> > > > +		goto unlock;
> > > > +	}
> > > > +
> > > > +	connector_state = drm_atomic_get_connector_state(state, connector);
> > > > +	if (IS_ERR(connector_state)) {
> > > > +		err = PTR_ERR(connector_state);
> > > > +		goto unlock;
> > > > +	}
> > > > +
> > > > +	err = drm_atomic_helper_reset_pipe(connector_state->crtc, &ctx);
> > > > +	if (err < 0)
> > > > +		goto unlock;    
> > > 
> > > And you'll find the crtc in bridge->encoder->crtc.  
> > 
> > I am a bit confused. I looked at the drm_encoder structure [1] and the crtc
> > field available in this structure should not be used by atomic drivers. They
> > should rely on &drm_connector_state.crtc.  
> 
> You're right, it's deprecated but used by most bridges anyway.
> 
> I made a series of changes after reviewing your series to address some
> issues with the current bridge API, most notably
> 
> https://lore.kernel.org/dri-devel/20250115-bridge-connector-v1-25-9a2fecd886a6@kernel.org/

Thanks for pointing that, indeed, it clarify many things!

> 
> > In my case, I have the feeling that I should get the ctrc from the current
> > state (i.e. bridge->base.state->state) using the sequence provided in this
> > current patch:
> >   Retrieve the connector with drm_atomic_get_old_connector_for_encoder()  
> 
> Retrieving the old connector makes no sense though. It's the connector
> that was formerly associated with your encoder. It might work, it might
> not, it's not what you're looking for.
> 
> >   Retrieve the connector state with drm_atomic_get_connector_state()  
> 
> drm_atomic_get_connector_state will allocate and pull the connector
> state into the drm_atomic_state, even if it wasn't part of it before, so
> it's not great. And you don't need it in the first place, you only need
> the current active CRTC.

Yes, I agree with that, I only need the active CRTC.

I tried to get the current atomic_state from:
  1) bridge->base.state->state
  2) drm_bridge_state->base.state

In both cases, it is NULL. Looking at Sima's reply in your series
explained that:
  https://lore.kernel.org/dri-devel/Z4juJy7kKPbI2BDb@phenom.ffwll.local/

If I understood correctly those pointers are explicitly cleared.

So, with all of that, either:
  a) I wait for your series to be applied in order to use your the crtc field from
     drm_bridge_state added by:
       https://lore.kernel.org/dri-devel/20250115-bridge-connector-v1-25-9a2fecd886a6@kernel.org/#t
  b) I use the old school bridge->encoder->crtc for the moment

Do you mind if I use the bridge->encoder->crtc way for the next iteration of
my series?

Best regards,
Hervé

