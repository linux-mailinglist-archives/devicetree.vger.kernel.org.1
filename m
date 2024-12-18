Return-Path: <devicetree+bounces-132347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7A29F6B52
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 17:37:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5F95D7A67EF
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 16:37:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 424E91DDC2A;
	Wed, 18 Dec 2024 16:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="UF3PAu0U"
X-Original-To: devicetree@vger.kernel.org
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8291419C569;
	Wed, 18 Dec 2024 16:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734539863; cv=none; b=jp0Ymqy/jtAPrxP5VR4wiQli2YlwnMATU/XmGpX+Mma1YXvKnYhQp8kC5q+6icfNzCg83RB7/Hb6zMBf0npkHoEu9uzDagOVW1spsXhCVGj3f29jP0gH75o3moViqTGoCKP5EcADNUJFVhSwocSg74EodU8qCkGMs73COyHxdWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734539863; c=relaxed/simple;
	bh=UJ2a25ttbpdHduJl6rFtyap7npp6SaoTzeEluFGryw4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dQq53kWnBc9sTrfz9yWSVcXNeTC4VnQ9/+lAKGvkYN+cLsGVgbRnwY1VdQjBQ3v/0eH9fTjaG5obsxnbPS1UeGHaD2vm669a6UpPmA870rMgMI7pEhXo64KjSTq+4uguRIqP9EeI/6eEUqbO4Ca7m3IVgONzWylAA0AWuZnbS5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=UF3PAu0U; arc=none smtp.client-ip=217.70.183.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 484A51C0006;
	Wed, 18 Dec 2024 16:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1734539851;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JA0ch8v2VsP+tystLeNWffsKcceld7wq+L1p02Q0OMI=;
	b=UF3PAu0UCEs1s0EkEHnCGhhKYhFBiHh6h/K5qfkw3yTcaYY+NocFa6jtr35+12rn8iGgJV
	Q0mQnAd0/5+MoTIUrGNAbpvV/UEbeviLNa4VlZGH3eLhvN842sUFaS9KeCgwYbZ3ff9UJI
	0a4mtaL0rbk2X54UPE9iR7ldCDPgK58borPUo5oCfq6NRFm8tSQTZE+FVufZUrBMgiKarp
	l7oEOFCJt87ACFtjBmQHQI9PGU7tgPwWWpzjw9VZ1cqYQ3/qRIPv7soQuXJqOvWOor81B+
	ukiyJvshcXnN1UpV62Hwko+1DXlY7kPLh+bt1xQYVl9TaG9BSPIQkY851UmkEA==
Date: Wed, 18 Dec 2024 17:37:28 +0100
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
Message-ID: <20241218173728.5a7690fe@bootlin.com>
In-Reply-To: <20241218-armored-fearless-dugong-ccd72d@houat>
References: <20241217143216.658461-1-herve.codina@bootlin.com>
	<20241217143216.658461-4-herve.codina@bootlin.com>
	<20241217-tangible-nostalgic-salamander-27edaa@houat>
	<20241218092407.559a204e@bootlin.com>
	<20241218-armored-fearless-dugong-ccd72d@houat>
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

On Wed, 18 Dec 2024 16:54:02 +0100
Maxime Ripard <mripard@kernel.org> wrote:

> > > > +static int sn65dsi83_reset_drm_output(struct sn65dsi83 *sn65dsi83)
> > > > +{
> > > > +	struct drm_atomic_state *state = ERR_PTR(-EINVAL);
> > > > +	struct drm_device *dev = sn65dsi83->bridge.dev;
> > > > +	struct drm_modeset_acquire_ctx ctx;
> > > > +	struct drm_connector *connector;
> > > > +	int err;
> > > > +
> > > > +	/*
> > > > +	 * Reset components available from the encoder to the connector.
> > > > +	 * To do that, we disable then re-enable the connector linked to the
> > > > +	 * encoder.
> > > > +	 *
> > > > +	 * This way, drm core will reconfigure each components. In our case,
> > > > +	 * this will force the previous component to go back in LP11 mode and
> > > > +	 * so allow the reconfiguration of SN64DSI83 bridge.
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
> > > > +
> > > > +	connector = drm_atomic_get_old_connector_for_encoder(state,
> > > > +							     sn65dsi83->bridge.encoder);
> > > > +	if (!connector) {
> > > > +		err = -EINVAL;
> > > > +		goto unlock;
> > > > +	}
> > > > +
> > > > +	err = drm_atomic_helper_disable_connector(connector, &ctx);
> > > > +	if (err < 0)
> > > > +		goto unlock;
> > > > +
> > > > +	/* Restore original state to re-enable the connector */
> > > > +	err = drm_atomic_helper_commit_duplicated_state(state, &ctx);
> > > > +
> > > > +unlock:
> > > > +	DRM_MODESET_LOCK_ALL_END(dev, ctx, err);
> > > > +	if (!IS_ERR(state))
> > > > +		drm_atomic_state_put(state);
> > > > +	return err;
> > > > +}    
> > > 
> > > In the previous version, we advised to create a generic helper similar
> > > to vc4 and i915 reset_pipe() and and intel_modeset_commit_pipes().
> > > 
> > > It looks like you chose a different path. Can you expand why?
> > >   
> > 
> > I didn't choose a different path.
> > I created the drm_atomic_helper_disable_connector(). Maybe it is not enough.  
> 
> It's not that it's not enough, it's that you're not doing the same
> thing, see below.
> 
> > I can move (copy/paste) sn65dsi83_reset_drm_output() to a new helper:
> >   int drm_atomic_helper_disable_output(struct drm_encoder *encoder)
> > 
> > Is it what you expect?
> > 
> > Also, are operations done in current sn65dsi83_reset_drm_output() correct
> > in order to reset the output? It works on my system but what is your
> > feedback on operations performed.  
> 
> You don't need any of that. Both the reset_pipe() and
> intel_modeset_commit_pipes() functions will flag the connectors as
> updated in the commit, and the core will consider that it needs to
> disable / enable the encoders and bridges below that CRTC.
> 
> See
> https://elixir.bootlin.com/linux/v6.12.5/source/drivers/gpu/drm/drm_atomic_helper.c#L1155
> https://elixir.bootlin.com/linux/v6.12.5/source/drivers/gpu/drm/drm_atomic_helper.c#L1476
> 
> So you really only need to convert any of these two functions into a
> helper, and it does exactly what you need.
> 

I see but if I set crtc_state->connectors_changed = true; as it is done in
reset_pipe(), in my understanding, all outputs will be reset.

I understood during v1 review that I need to reset only one output path, the
path where the bridge is present. In other words, the path from the encoder
attached to the bridge to the related connector and not all connectors
related to all encoders attached to the crtc.

Do you confirm that setting crtc_state->connectors_changed = true is the
correct way to do?

Best regards,
Hervé

