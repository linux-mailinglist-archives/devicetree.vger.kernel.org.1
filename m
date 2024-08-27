Return-Path: <devicetree+bounces-96911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 404C795FFBC
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 05:26:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E88FB1F22D59
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 03:26:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 061B218044;
	Tue, 27 Aug 2024 03:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOn1wGVY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F9517D2;
	Tue, 27 Aug 2024 03:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724729166; cv=none; b=qrAys8ux8SnSqxPfv4GU5SzORiNzh/k2wCQsdu6K7YUSl8QncdTcn0y33YGDNqZ1k0XJi9FY+C47U/9QWwtQ63z3QK7sWu2bfDxUj4IuHvKuAy0D2+9T664cUDBKXfXTcQMQjV9wCnn1gk/UfO69v1t66PMNW4CkBQMJtQLPu9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724729166; c=relaxed/simple;
	bh=P3O3alY1dOWsnBgRxMhJRgQyWOYsqQUpM59bPHtbPjc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X7+Ytuv4yUWsvlgLUBH6PP5wXyzoOkr2KpzQGctpT8UlX3OMBppUxD9PejkgQutE15G4zOHhw+OJs4TX9yBWIgGQb2P1VTL6js+XFdNu1+w44uDXWPgBOcie9uBnCz2SvCNZwJ5ofjSzRMrlcfqL/fZyVYWqswEpS7pSgroRuF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOn1wGVY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2C1BC8B7A9;
	Tue, 27 Aug 2024 03:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724729166;
	bh=P3O3alY1dOWsnBgRxMhJRgQyWOYsqQUpM59bPHtbPjc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VOn1wGVYWxDe/+cBrO7rnjlhZ4SckN/0/Weo/9m7YtiJc5WIsv8XnimZjLrwczA0R
	 J9JjajHqHP56SId9uRHq/KwbOfwaSH1+mFuyZXWdiM9mJk+GtX1CG58p3y+cvwO+0w
	 GLCiZypGUmm9XNayBpWahGBM7w6O1e7KjOS0AucLr3RZZJpugZfv+BkhCM/uXJUtSL
	 rdW/+sSUU6jh6/PLJ3TyTvebP6A6AtXe4Ek4lLpDZMG2R/uGRWM+L+iuWnj69TmX2X
	 v9SQriQJbAK8qNWcEYag6uH5urWlzesH3Iy5oaqHZ1mltRXDd4UH2+TEqcO0iv6SGi
	 bMfz8sUI7D5HA==
Date: Tue, 27 Aug 2024 03:25:58 +0000
From: Tzung-Bi Shih <tzungbi@kernel.org>
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
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Daniel Scally <djrscally@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Ivan Orlov <ivan.orlov0322@gmail.com>, linux-acpi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v3 15/17] platform/chrome: cros_ec_typec: Add support for
 signaling DP HPD via drm_bridge
Message-ID: <Zs1HRtTWlxFdSNdJ@google.com>
References: <20240819223834.2049862-1-swboyd@chromium.org>
 <20240819223834.2049862-16-swboyd@chromium.org>
 <ZsdMoRpwv5twOwqx@tzungbi-laptop>
 <CAE-0n50MVaU2dmRLdLVFWT9KWPO_BK-L7eEqGRSb8TKm1KtPNQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAE-0n50MVaU2dmRLdLVFWT9KWPO_BK-L7eEqGRSb8TKm1KtPNQ@mail.gmail.com>

On Fri, Aug 23, 2024 at 01:47:23PM -0700, Stephen Boyd wrote:
> Quoting Tzung-Bi Shih (2024-08-22 07:35:13)
> > On Mon, Aug 19, 2024 at 03:38:29PM -0700, Stephen Boyd wrote:
> > > +struct cros_typec_dp_bridge {
> > > +     struct cros_typec_data *typec_data;
> > > +     struct drm_dp_typec_bridge_dev *dev;
> > > +};
> >
> > It looks like structs are all defined in cros_ec_typec.h.  I think this struct
> > definition can be also moved there.
> 
> I put it here because it wasn't used by any other driver. Maybe I can
> skip the entire struct though and add what I need directly to 'struct
> cros_typec_data'.

I see.

* struct cros_typec_altmode_node, used by cros_ec_typec.c.
* struct cros_typec_data, used by cros_ec_typec.c and cros_typec_vdm.c.
* struct cros_typec_port, used by cros_ec_typec.c and cros_typec_vdm.c.
  cros_typec_switch.c has another struct cros_typec_port.

To simplify, I'm not sure whether we should merge cros_ec_typec.h,
cros_typec_vdm.c, and cros_typec_vdm.h into cros_ec_typec.c.

Back to struct cros_typec_dp_bridge, I think it's fine to keep it as is.

> 
> >
> > > diff --git a/drivers/platform/chrome/cros_ec_typec.h b/drivers/platform/chrome/cros_ec_typec.h
> > > index deda180a646f..73d300427140 100644
> > > --- a/drivers/platform/chrome/cros_ec_typec.h
> > > +++ b/drivers/platform/chrome/cros_ec_typec.h
> > > @@ -27,6 +27,8 @@ struct cros_typec_altmode_node {
> > >       struct list_head list;
> > >  };
> > >
> > > +struct cros_typec_dp_bridge;
> >
> > If the struct definition moves here, it doesn't need to declare forward.
> 
> But then we have to forward declare 'struct cros_typec_data'? There's no
> escape.

I see.

