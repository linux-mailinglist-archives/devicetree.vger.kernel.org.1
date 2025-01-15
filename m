Return-Path: <devicetree+bounces-138833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B6FA127B9
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 16:41:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 784A0166C42
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 15:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE563150994;
	Wed, 15 Jan 2025 15:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="i7FOZ4sF"
X-Original-To: devicetree@vger.kernel.org
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEF21482E8;
	Wed, 15 Jan 2025 15:41:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736955705; cv=none; b=fuBZkLdSPQZgzow3huI1PpMuLC5Q/yGuo5je3Q3Bbog3Hl595U5Viwd6DT4Ltx82fHkdANRXFo8p8zyCf8glT+PrCp+khURwpOUM5GYcssbue2ukPVS0uXSjteOd1rWb/ENU2eI8aUIL6jmhGyIR9CyaynMZnIsGI13L+0FgMws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736955705; c=relaxed/simple;
	bh=/JQcXIt1wLFAPb73uMqYH+GL+shVQH/XP7NaxK0o6u4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dfRG0PtOjhPNFPCUOhqTsmLNb8RzBettOKM+7/5jDXDatXtBIpFVvMRVK95Y8k0+eOKuVEJtPkxl/OnlRDa1RGiQ7umM/4/x522A+SOoZqLXpWpVfT2XlAZ3glSa1UHa7z0RHExcInLYyThigoxqsUW41KYqr7dJPYhyzWManBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=i7FOZ4sF; arc=none smtp.client-ip=217.70.183.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id DE2564000E;
	Wed, 15 Jan 2025 15:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1736955696;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6WRfJqGcUNJe/nt9EhTNn6hFenqCKXxQ42q3Q/uX84A=;
	b=i7FOZ4sF+kBSYya1uYOqNVZhLbKzpxAjU/vDyoK1KG5HhEpRp0IEKzce6TRzGcGtlesfj0
	cMkZBwOYbblfLv4uHmXPesSgwNU+23RLrCtuDhz5bGRBWrhjTPo809lgT2j5sCM3jJEFnU
	k9VayJEBuKVom4BPRcQNZRjBNz6AU9C9/hpiZ/THKriqGxyffAAAc3TdgtdZNBSBsdHuEE
	MmHFqWF7zMRyCDlvsUZxm86DPh2YldtuQIxbLOfwr/Ly3Y0Tljf+1NdL+AV+4i9tMlEHij
	/X78VHu2O+pwOM7/VNu6j4KZUHKiTPZNUyXJmD60cdeb85tHm7fhddbWMxm9+Q==
Date: Wed, 15 Jan 2025 16:41:33 +0100
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
Message-ID: <20250115164133.35afb889@bootlin.com>
In-Reply-To: <20250114135456.5366eb2a@bootlin.com>
References: <20250108101907.410456-1-herve.codina@bootlin.com>
	<20250108101907.410456-4-herve.codina@bootlin.com>
	<20250114-juicy-authentic-mushroom-cfcdfb@houat>
	<20250114135456.5366eb2a@bootlin.com>
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

On Tue, 14 Jan 2025 13:54:56 +0100
Herve Codina <herve.codina@bootlin.com> wrote:

> Hi Maxime,
> 
> On Tue, 14 Jan 2025 08:40:51 +0100
> Maxime Ripard <mripard@kernel.org> wrote:
> 
> ...
> 
> > >  
> > > +static int sn65dsi83_reset_pipe(struct sn65dsi83 *sn65dsi83)
> > > +{
> > > +	struct drm_atomic_state *state = ERR_PTR(-EINVAL);
> > > +	struct drm_device *dev = sn65dsi83->bridge.dev;
> > > +	struct drm_connector_state *connector_state;
> > > +	struct drm_modeset_acquire_ctx ctx;
> > > +	struct drm_connector *connector;
> > > +	int err;
> > > +
> > > +	/*
> > > +	 * Reset active outputs of the related CRTC.
> > > +	 *
> > > +	 * This way, drm core will reconfigure each components in the CRTC
> > > +	 * outputs path. In our case, this will force the previous component to
> > > +	 * go back in LP11 mode and so allow the reconfiguration of SN64DSI83
> > > +	 * bridge.
> > > +	 *
> > > +	 * Keep the lock during the whole operation to be atomic.
> > > +	 */
> > > +
> > > +	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx, 0, err);
> > > +
> > > +	state = drm_atomic_helper_duplicate_state(dev, &ctx);
> > > +	if (IS_ERR(state)) {
> > > +		err = PTR_ERR(state);
> > > +		goto unlock;
> > > +	}    
> > 
> > No, you must not allocate a new state for this, you need to reuse the
> > existing state. You'll find it in bridge->base.state->state.  
> 
> Thanks for pointing that. I didn't know about bridge->base.state->state.
> 
> I will use that if using the state is still relevant (see next comment).
> 
> >   
> > > +	state->acquire_ctx = &ctx;
> > > +
> > > +	connector = drm_atomic_get_old_connector_for_encoder(state,
> > > +							     sn65dsi83->bridge.encoder);
> > > +	if (!connector) {
> > > +		err = -EINVAL;
> > > +		goto unlock;
> > > +	}
> > > +
> > > +	connector_state = drm_atomic_get_connector_state(state, connector);
> > > +	if (IS_ERR(connector_state)) {
> > > +		err = PTR_ERR(connector_state);
> > > +		goto unlock;
> > > +	}
> > > +
> > > +	err = drm_atomic_helper_reset_pipe(connector_state->crtc, &ctx);
> > > +	if (err < 0)
> > > +		goto unlock;    
> > 
> > And you'll find the crtc in bridge->encoder->crtc.  
> 
> I am a bit confused. I looked at the drm_encoder structure [1] and the crtc
> field available in this structure should not be used by atomic drivers. They
> should rely on &drm_connector_state.crtc.
> 
> In my case, I have the feeling that I should get the ctrc from the current
> state (i.e. bridge->base.state->state) using the sequence provided in this
> current patch:
>   Retrieve the connector with drm_atomic_get_old_connector_for_encoder()
>   Retrieve the connector state with drm_atomic_get_connector_state()
> 
> but you pointed out the bridge->encoder->crtc field.
> 
> Should I use this field or use the &drm_connector_state.crtc with the drm
> connector state retrieved from bridge->base.state->state using the proposed
> sequence?
> 
> [1] https://elixir.bootlin.com/linux/v6.13-rc1/source/include/drm/drm_encoder.h#L180
> 

I did some test and I cannot use bridge->base.state->state to retrieve the
CRTC from the current state because this last state field is not set in my
case (i.e. NULL pointer).

So, in the next iteration, I will use directly bridge->encoder->crtc to get
the CRTC.

Best regards,
Hervé

