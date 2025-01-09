Return-Path: <devicetree+bounces-137025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDA5A07477
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:18:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ACD63188B487
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:18:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F42E216388;
	Thu,  9 Jan 2025 11:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="WV+eaSTi"
X-Original-To: devicetree@vger.kernel.org
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D58202C43;
	Thu,  9 Jan 2025 11:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.198
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736421502; cv=none; b=oDRw3fO+0pIXZRAeW0Uz41sOVi0DctvCOmRQj7mRKF+5uBImYSfWn3GzCdoskE9I1DK/14Nijf7ss/3xmNG3ogdi9ti3fkr/32LRaMXozl7XjsWqf1BjBQqdAcfoU2zRc7/d+Y/JTcjVyXfmr507Gklz94787C9Rs5btUuqWG9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736421502; c=relaxed/simple;
	bh=LYMfEdqQajJozWjIwOnJj4+uuO0coYCTLqDrF5IW6oA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=rtymuznn8WGemJT25TF3zNle6EsRydG9TpTIMVpaetWae9jo2h0JsTHxgyF5NQn/4pnFaJ1jdHN6Z10ClzRVv7XrqdpSqZ58AO7OvDY8u8yPnU5XGjr/gLezsLZ34oiBO5FzmbtWYg+JKcOmKwRZTKVZrUKrEytxlRqQH+TTpBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=WV+eaSTi; arc=none smtp.client-ip=217.70.183.198
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 1A502C0003;
	Thu,  9 Jan 2025 11:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1736421492;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fKEh1AAYlkF6rAvpaGBdJLkKfYr54m+oW5gcXmU+DO4=;
	b=WV+eaSTiYeueMwlntOk9LPeW+9Rxt0v+Ph0FKUYTYuNWOhPG1Z85OK7EwIsPO6FoNAO5Xt
	9AK61hDXw9CAVa+LsQaIq80C93b99x1JQjPgxqlDrdFGa1DynHXlLLRXYH55QryOSUrnuF
	g5yah+IxNTy5DhQCoJvXED3jQb1gVWocPgtFcXb5zIGq/BSF/BM0EfUQ+00Y+Ef6dZq2H6
	j4/xlH5ekmKhmLVcwr5629Dcj2wwYJlWlHnk+6yDcbrD7qjYtT+x4u6NJikgV0v6o2M3HY
	Fg+kMh6mkC7++PNOSlsF/86VF/nzdoemRPmQRjfK2FHJbNUgoW2d4w69ZvEyIg==
Date: Thu, 9 Jan 2025 12:18:08 +0100
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
Message-ID: <20250109121808.1cad0c1f@bootlin.com>
In-Reply-To: <15398572.tv2OnDr8pf@steina-w>
References: <20250108101907.410456-1-herve.codina@bootlin.com>
	<115787605.nniJfEyVGO@steina-w>
	<20250108184442.64f38fbc@bootlin.com>
	<15398572.tv2OnDr8pf@steina-w>
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

On Thu, 09 Jan 2025 11:49:13 +0100
Alexander Stein <alexander.stein@ew.tq-group.com> wrote:

> Hi Herve,
> 
> Am Mittwoch, 8. Januar 2025, 18:44:42 CET schrieb Herve Codina:
> > Hi Alexander,
> > 
> > On Wed, 08 Jan 2025 11:54:49 +0100
> > Alexander Stein <alexander.stein@ew.tq-group.com> wrote:
> > 
> > [...]  
> > > >  #include <drm/drm_atomic_helper.h>
> > > >  #include <drm/drm_bridge.h>
> > > > +#include <drm/drm_drv.h> /* DRM_MODESET_LOCK_ALL_BEGIN() needs drm_drv_uses_atomic_modeset() */    
> > > 
> > > Shouldn't this include be added to include/drm/drm_modeset_lock.h instead?  
> > 
> > Yes indeed. I will change that in the next iteration.
> >   
> > >   
> > > >  #include <drm/drm_mipi_dsi.h>
> > > >  #include <drm/drm_of.h>
> > > >  #include <drm/drm_panel.h>
> > > > @@ -147,6 +150,9 @@ struct sn65dsi83 {
> > > >  	struct regulator		*vcc;
> > > >  	bool				lvds_dual_link;
> > > >  	bool				lvds_dual_link_even_odd_swap;
> > > > +	bool				use_irq;
> > > > +	struct delayed_work		monitor_work;
> > > > +	struct work_struct		reset_work;    
> > > 
> > > Can you please rebase? You are missing commit d2b8c6d549570
> > > ("drm/bridge: ti-sn65dsi83: Add ti,lvds-vod-swing optional properties")  
> > 
> > Sure, I will rebase.
> > 
> > [...]  
> > > > +static void sn65dsi83_handle_errors(struct sn65dsi83 *ctx)
> > > > +{
> > > > +	unsigned int irq_stat;
> > > > +	int ret;
> > > > +
> > > > +	/*
> > > > +	 * Schedule a reset in case of:
> > > > +	 *  - the bridge doesn't answer
> > > > +	 *  - the bridge signals an error
> > > > +	 */
> > > > +
> > > > +	ret = regmap_read(ctx->regmap, REG_IRQ_STAT, &irq_stat);
> > > > +	if (ret || irq_stat)
> > > > +		schedule_work(&ctx->reset_work);    
> > > 
> > > Shouldn't you clear the error bits as well?  
> > 
> > Thanks for pointing that.
> > 
> > I can clear the error bit but further more, I probably need to simply
> > disable the interrupt.
> > 
> > In some cases, we observed i2c access failure. In that cases clearing error
> > bits is simply not possible.
> > 
> > To avoid some possible interrupt storms (the chip detect a failure, set its
> > interrupt line but could be not accessible anymore), the best thing to do
> > is to disable the interrupt line here, let the reset work to do its job
> > performing a full reset of the device and re-enabling the interrupt line
> > when needed, probably in sn65dsi83_atomic_enable().
> > 
> > What do you think about that?  
> 
> As I read the datasheet this is a active-high level interrupt, so as
> long as some enabled IRQs are pending the signal will stay high.
> There are 3 notes in section 9.1.3. IRQ usage that in various situations
> IRQ bits may be set/pending and have to be cleared.
> At least clear the interrupts before enabling it again to be on the
> safe side.

Ok, I finally disable the irq just before the schedule_work(&ctx->reset_work)
call and re-enable it after the sn65dsi83_reset_pipe(ctx) call done
in sn65dsi83_reset_work().

During sn65dsi83_reset_pipe(), sn65dsi83_atomic_disable() and
sn65dsi83_atomic_enable() are called and so interrupts are cleared.

This modification will be part of the next iteration.

Best regards,
Hervé

