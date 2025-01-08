Return-Path: <devicetree+bounces-136797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 121DCA063A2
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 18:44:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BFED61888865
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 17:44:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7DB91FFC77;
	Wed,  8 Jan 2025 17:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="OhzF/v3e"
X-Original-To: devicetree@vger.kernel.org
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB3219B586;
	Wed,  8 Jan 2025 17:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736358292; cv=none; b=SLMuxNUMOYdQNRKbsbaJzIpXPTomRT/AyoukuPzYcIIn4lYVBu3xwu0HXEsbiRCLxju3RR7ymGTJkoelt8x3eZaj5RC90ZTsyD+KGLzLiRnnzhwGuEUGKQ1Hjlq4ddROHDH6N1X6g8Fvjxm9bOyIM1i1y6eVV2k0LoGb00cxt14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736358292; c=relaxed/simple;
	bh=oxIY8To//tDnkJG7ZagTIT37bBiPqu2UlpxhpeXyo9E=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mrXsNbNgfo884QS2fooff1IRGCh5eTo7ttezXsQsh8ZZ3UGLLoKCqVn7D6nkfDx8Te7of7s2hq0Q0MxS/BrveTE8eAeK3nLc7n/pPlMeV6q4cggwO0CGfJxruLgqd+AVJdwSGHPMqNvvEr4Hsx+47U6DtnJpEuFD7RN9wpp7wwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=OhzF/v3e; arc=none smtp.client-ip=217.70.183.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 14DDD1C0003;
	Wed,  8 Jan 2025 17:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1736358286;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nVX6wM/yvs9o7iBktHEAa+W2nk3G2s2HD+9v+CoiRkk=;
	b=OhzF/v3e/veSuhWNWeHA4zZZiEmhJtHWKroYPkZIQjQGdq76uUK7jNPyA1f0MO9pv//8hw
	AqtTSYg52KBcv6fCr0kLCYk9vBNSt3WkZZQRH1Sokz76DmiXIvLyfSBSv3XzrJei/rzbrH
	MXyap3cfVJSBSEyAMENcoYHdjWFY6TFwL47z0M6kgOVoS9bIVDmoBpxChGYPQEKHqhI5Eq
	OOS2b2drhmpxXkne0Qo8ClU8fchuxgIvieWxH/ign1fa0pGlxMZnWlB8GCGYHbhRrXP6oX
	i5d1cGOGxfzd8n8PYrqVQab3O9TkrfdYthiObV+qfjhfubc2hzat0PoTczt8+A==
Date: Wed, 8 Jan 2025 18:44:42 +0100
From: Herve Codina <herve.codina@bootlin.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong
 <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Laurent
 Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie
 <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Louis Chauvet <louis.chauvet@bootlin.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v3 3/3] drm: bridge: ti-sn65dsi83: Add error recovery
 mechanism
Message-ID: <20250108184442.64f38fbc@bootlin.com>
In-Reply-To: <115787605.nniJfEyVGO@steina-w>
References: <20250108101907.410456-1-herve.codina@bootlin.com>
	<20250108101907.410456-4-herve.codina@bootlin.com>
	<115787605.nniJfEyVGO@steina-w>
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

Hi Alexander,

On Wed, 08 Jan 2025 11:54:49 +0100
Alexander Stein <alexander.stein@ew.tq-group.com> wrote:

[...]
> >  #include <drm/drm_atomic_helper.h>
> >  #include <drm/drm_bridge.h>
> > +#include <drm/drm_drv.h> /* DRM_MODESET_LOCK_ALL_BEGIN() needs drm_drv_uses_atomic_modeset() */  
> 
> Shouldn't this include be added to include/drm/drm_modeset_lock.h instead?

Yes indeed. I will change that in the next iteration.

> 
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
> 
> Can you please rebase? You are missing commit d2b8c6d549570
> ("drm/bridge: ti-sn65dsi83: Add ti,lvds-vod-swing optional properties")

Sure, I will rebase.

[...]
> > +static void sn65dsi83_handle_errors(struct sn65dsi83 *ctx)
> > +{
> > +	unsigned int irq_stat;
> > +	int ret;
> > +
> > +	/*
> > +	 * Schedule a reset in case of:
> > +	 *  - the bridge doesn't answer
> > +	 *  - the bridge signals an error
> > +	 */
> > +
> > +	ret = regmap_read(ctx->regmap, REG_IRQ_STAT, &irq_stat);
> > +	if (ret || irq_stat)
> > +		schedule_work(&ctx->reset_work);  
> 
> Shouldn't you clear the error bits as well?

Thanks for pointing that.

I can clear the error bit but further more, I probably need to simply
disable the interrupt.

In some cases, we observed i2c access failure. In that cases clearing error
bits is simply not possible.

To avoid some possible interrupt storms (the chip detect a failure, set its
interrupt line but could be not accessible anymore), the best thing to do
is to disable the interrupt line here, let the reset work to do its job
performing a full reset of the device and re-enabling the interrupt line
when needed, probably in sn65dsi83_atomic_enable().

What do you think about that?

Best regards,
Hervé

