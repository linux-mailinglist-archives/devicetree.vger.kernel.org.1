Return-Path: <devicetree+bounces-100007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8726A96BD82
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 15:01:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3FBD2281F5F
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 13:01:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E9021D79B4;
	Wed,  4 Sep 2024 13:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="B4XpwumY"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F381D0491;
	Wed,  4 Sep 2024 13:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725454902; cv=none; b=mL0LnuESfhjsZfzr5Pnd/CPjGfbaPSlHq1iQfSdjEspMggWcd+dDp52NlSoj3L522sAEBw4HYUcTlRFf56TlH1YAbRrK/4SAKskAs1Y3QSKRBCkr9Kk8Iip4BnAed8wba3IozBv/6e8NTS16Q922SSZ84lU+X/TZfToZmD4CyjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725454902; c=relaxed/simple;
	bh=6Kw6B3185mdUtc47auQpHWY0ReGfCqoefhPtw0as7VY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m4RcAeVMw8NiBvQNzfwLTBfthf41+TQxJRekPcrv55Yd9mN/ijouNEc33ECZQEe3f1I4iBDkLQCuZD1CTRu9c45iNhUEexd198shqDABIuktMZ2IyTq+IzAWM0NemJeslOntHiIWECDiKS/+zwBP68GFIQ9J/wTd0n0wzBUjaTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=none smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=B4XpwumY; arc=none smtp.client-ip=192.198.163.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725454901; x=1756990901;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=6Kw6B3185mdUtc47auQpHWY0ReGfCqoefhPtw0as7VY=;
  b=B4XpwumYDwR0jjGaaENm24F7X3p4EIefa4XPryHzw3ZYvCZ8oOUBbrFf
   vx1lri9KyYADUqttSypYEgQ4UPkQqJOa8X7ufGiCo7BfiNVGEB6Y4uIQN
   1ZFgbRt5UtUz8i+4DpQuo1R/S+5SNLzcP7OJvl9CuU6H58CGjSoeN5sof
   YtaIGZs0axcjxjoPQuZ2r9US/QAVneSx31QBzt877b2iuJxXzbQtwJenG
   0kRCKIPw+/ozKhwFXWSpnUcebYQg+MoCR5pUyAfEBmBLh04VIDqPEhSsQ
   /EIcKLEcGccs4Z3dZqIF+F/f12TP1byaOX6/RfYkuJ5AVyhU139s1H7c2
   g==;
X-CSE-ConnectionGUID: uyaKw6Q2QtORT7ikjRCQJw==
X-CSE-MsgGUID: 059JZ4ohQ5GE3NDm4UUkLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="34713859"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; 
   d="scan'208";a="34713859"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Sep 2024 06:01:40 -0700
X-CSE-ConnectionGUID: zt+H+du4TBWU8QDtHMqVYQ==
X-CSE-MsgGUID: jdxwf08QTkW9tnDCY81T8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; 
   d="scan'208";a="95996608"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Sep 2024 06:01:30 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1slpd3-000000054Ce-3bap;
	Wed, 04 Sep 2024 16:00:57 +0300
Date: Wed, 4 Sep 2024 16:00:57 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Stephen Boyd <swboyd@chromium.org>
Cc: chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org,
	patches@lists.linux.dev, devicetree@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Pin-yen Lin <treapking@chromium.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Benson Leung <bleung@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	dri-devel@lists.freedesktop.org,
	Guenter Roeck <groeck@chromium.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Lee Jones <lee@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Prashant Malani <pmalani@chromium.org>,
	Robert Foss <rfoss@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Daniel Scally <djrscally@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Ivan Orlov <ivan.orlov0322@gmail.com>, linux-acpi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v4 06/18] drm/bridge: aux-hpd: Support USB Type-C DP
 altmodes via DRM lane assignment
Message-ID: <ZthaCQel2aHhyIu4@smile.fi.intel.com>
References: <20240901040658.157425-1-swboyd@chromium.org>
 <20240901040658.157425-7-swboyd@chromium.org>
 <ZtWjEudmlR51zkU9@smile.fi.intel.com>
 <CAE-0n51eSxxvnJXwnfPrXx1=rei=8OGGEtCAgw6nhCktZ0iQDw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAE-0n51eSxxvnJXwnfPrXx1=rei=8OGGEtCAgw6nhCktZ0iQDw@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo

On Tue, Sep 03, 2024 at 06:20:14PM -0400, Stephen Boyd wrote:
> Quoting Andy Shevchenko (2024-09-02 04:35:46)
> > On Sat, Aug 31, 2024 at 09:06:44PM -0700, Stephen Boyd wrote:

> > > Extend the aux-hpd bridge driver to support assigning DP lanes to USB
> > > type-c pins based on typec mux state entry. Existing users of this
> > > driver only need the HPD signaling support, so leave that in place and
> > > wrap the code with a variant that supports more features of USB type-c
> >
> > Isn't the proper spelling "USB Type-C"?
> 
> Perhaps in a title?

I am talking about the commit message :-)

> > > DP altmode, i.e. pin configurations. Prefix that code with
> > > 'drm_dp_typec_bridge' to differentiate it from the existing
> > > 'drm_aux_hpd_bridge' code.
> > >
> > > Parse the struct typec_mux_state members to determine if DP altmode has
> > > been entered and if HPD is asserted or not. Signal HPD to the drm bridge
> > > chain when HPD is asserted. Similarly, parse the pin assignment and map
> > > the DP lanes to the usb-c output lanes, taking into account any lane
> > > remapping from the data-lanes endpoint property. Pass that lane mapping
> > > to the previous drm_bridge in the bridge chain during the atomic check
> > > phase.

...

> > > +     adev->dev.of_node = of_node_get(parent->of_node);
> >
> > device_set_node() ?
> 
> Or device_set_of_node_from_dev()?

This is quite unclear to me. The second one bumps the reference count IIRC
for no reason (in usual cases). Also only few drivers use that, I would hear
what OF people can tell about this API and its usage scope.

...

> > > +static int dp_lane_to_typec_lane(enum dp_lane lane)
> > > +{
> > > +     switch (lane) {
> > > +     case DP_ML0:
> > > +             return USB_SSTX2;
> > > +     case DP_ML1:
> > > +             return USB_SSRX2;
> > > +     case DP_ML2:
> > > +             return USB_SSTX1;
> > > +     case DP_ML3:
> > > +             return USB_SSRX1;
> > > +     }
> >
> > > +     return -EINVAL;
> >
> > Hmm... This can be simply made as default case.
> 
> And then the enum is always "covered" and the compiler doesn't complain
> about missing cases (I don't think we have -Wswitch-enum)? Seems worse.

Hmm... You mean if I remove one of the above cases I will get the warning?

> > > +}

-- 
With Best Regards,
Andy Shevchenko



