Return-Path: <devicetree+bounces-137005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F7EA07389
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:40:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 795B03A7D92
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:39:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92389215782;
	Thu,  9 Jan 2025 10:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="YP2hGYZO"
X-Original-To: devicetree@vger.kernel.org
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9D321506F;
	Thu,  9 Jan 2025 10:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736419127; cv=none; b=DExJ31UTFaqj5EKmVQSSG8UhbpL6YXxOQzuYqGuKxc8mUALneV29E632tdn05wmgfuVhFS+JhkcYjTdd55qYTtuEp56oQVHpeWuZb8qGNnCA3g+8dV8JjVxV58PK46uwB17K0PGYxbrAE99rRC0UVW4MXJzEJtOMpSWZWr6P4Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736419127; c=relaxed/simple;
	bh=qEA4tmQNWp4shbk/aNzgyYv9DcPAOfiOiGCck4JBJdY=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dKTZdd581SbyTh5+xTwmZmcU85weYNVadPXMnYejsLaAwvA1PeRWc/G6p06gi3ke1blr9Ujfjd0AtpdpmGOOS/lAPObysQUbwMA+kHblF13igCcXI3fOvQbpWdkZRz74zc3YHfOEhNB98OiRTC3PfmcuFx681xN1Jvi5s2W+U94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=YP2hGYZO; arc=none smtp.client-ip=217.70.183.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3C9DB1BF20C;
	Thu,  9 Jan 2025 10:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1736419117;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OKgFPO+Rh1KOhaMMkBZKNFUCZJOyXbfXEXGGNEOMVG8=;
	b=YP2hGYZO5ngGfo0AvGrIz3Hpm3+2yE+2igYz8io9SdGDFtDRbGanv91vwzQA+AdjCEul8M
	bUHBSg7W8WBpQ4DkfYYN0SXvmKDHGLOa0hTP+zfQo1sfLFQczD08evufS6y3Zpegq19uhq
	T2BNJQYyBVRY39PUW2CjPre/GbG1gxCew9jHsLAA4mBikxqziLcgrNgJTMnN+lb135esH+
	ZyEv3goWy2dr1l7WWc8F9mHd/bGl6xVTjE1sxJ5WUdAHtxaUxJi+/v7tivv84RX7R7jl7t
	PRV2sMyB0LIDOF5BkEjjmXdk0LDoxdtsmmjH05i+Jjn/wEl/pvhrwKz8uC0WBA==
Date: Thu, 9 Jan 2025 11:38:34 +0100
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
Message-ID: <20250109113834.04299a74@bootlin.com>
In-Reply-To: <20250108184442.64f38fbc@bootlin.com>
References: <20250108101907.410456-1-herve.codina@bootlin.com>
	<20250108101907.410456-4-herve.codina@bootlin.com>
	<115787605.nniJfEyVGO@steina-w>
	<20250108184442.64f38fbc@bootlin.com>
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

On Wed, 8 Jan 2025 18:44:42 +0100
Herve Codina <herve.codina@bootlin.com> wrote:

> > >  #include <drm/drm_atomic_helper.h>
> > >  #include <drm/drm_bridge.h>
> > > +#include <drm/drm_drv.h> /* DRM_MODESET_LOCK_ALL_BEGIN() needs drm_drv_uses_atomic_modeset() */    
> > 
> > Shouldn't this include be added to include/drm/drm_modeset_lock.h instead?  
> 
> Yes indeed. I will change that in the next iteration.

I tried to add '#include <drm/drm_drv.h>' in include/drm/drm_modeset_lock.h
but it breaks the build in several places.

First, I cannot add it at the begining of drm_modeset_lock.h.
The inclusion path leads to:
  drm_modeset_lock.h
    drm/drm_drv.h
      drm/drm_device.h
        drm/drm_mode_config.h
           struct drm_mode_config definition

The struct drm_mode_config needs the struct drm_modeset_lock defined.
struct drm_modeset_lock is defined in drm_modeset_lock.h.

Even if I don't like to add include files in the middle of a header filer,
I tried to include drm/drm_drv.h just before the DRM_MODESET_LOCK_ALL_BEGIN()
definition in drm_modeset_lock.h.

This also breaks the build in several places. For instance:
  In file included from ./include/drm/drm_modeset_lock.h:162,
                   from ./include/drm/drm_mode_config.h:32,
                   from ./include/drm/drm_device.h:9,
                   from drivers/gpu/drm/drm_dumb_buffers.c:26:
  ./include/drm/drm_drv.h: In function ‘drm_core_check_all_features’:
  ./include/drm/drm_drv.h:522:28: error: invalid use of undefined type ‘const struct drm_device’
    522 |         u32 supported = dev->driver->driver_features & dev->driver_features;
        |                            ^~

I stop here, go back and choose to keep '#include <drm/drm_drv.h>' in ti-sn65dsi83.c

Is that ok for you?

Best regards,
Hervé

