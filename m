Return-Path: <devicetree+bounces-110695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5A599B700
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 22:40:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A0DD5B219AA
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 20:40:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE619199EA3;
	Sat, 12 Oct 2024 20:40:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fgw21-7.mail.saunalahti.fi (fgw21-7.mail.saunalahti.fi [62.142.5.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3599A12C7FB
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 20:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.142.5.82
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728765611; cv=none; b=Y3GdUfcRbBx046TPseHG/Nb6UQhI/Qhl6HgFx7CzBQxTifBObmmGmmNr1fCQxVDwts2wbrA6T2GUe9h3xdrobL0D2W0Uf0AgFANPsqlNoq25Y+qHFadEaGO1JspgAO0K8XEcKeA3b2wmzXPbceZ+Xf1B2TIaIjnQN85CC8RAOhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728765611; c=relaxed/simple;
	bh=lxyvpAm4eKdDo7emUlUPKldQCtoFggJORgo9nYw18vs=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kySYVKRQiu3+gU7mdqQSMRYhJLXk9tQE9QDV/WzhULtdJO76OHipebDol9bZvO5eAGuYCT748vctkM7DXZPMWaj9tyo9NomAkfBsIoDdZcU0p5amyiaFtqlGvDwPYl0jJUpGsJ422knfUa4GaUpe4N10vr4tlhX5wqjxPlxyC8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com; spf=fail smtp.mailfrom=gmail.com; arc=none smtp.client-ip=62.142.5.82
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=gmail.com
Received: from localhost (88-113-26-56.elisa-laajakaista.fi [88.113.26.56])
	by fgw21.mail.saunalahti.fi (Halon) with ESMTP
	id 267500f6-88da-11ef-8861-005056bdd08f;
	Sat, 12 Oct 2024 23:40:00 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 12 Oct 2024 23:40:00 +0300
To: Vasileios Aoiridis <vassilisamir@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, jic23@kernel.org,
	lars@metafoo.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, anshulusr@gmail.com, gustavograzs@gmail.com,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 08/13] iio: chemical: bme680: add power management
Message-ID: <ZwreoHXXLkf3DjMt@surfacebook.localdomain>
References: <20241010210030.33309-1-vassilisamir@gmail.com>
 <20241010210030.33309-9-vassilisamir@gmail.com>
 <Zwj5jBm-_9_FX6ms@smile.fi.intel.com>
 <Zwl2SEmDqc-PTtqp@vamoirid-laptop>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zwl2SEmDqc-PTtqp@vamoirid-laptop>

Fri, Oct 11, 2024 at 09:02:32PM +0200, Vasileios Aoiridis kirjoitti:
> On Fri, Oct 11, 2024 at 01:10:20PM +0300, Andy Shevchenko wrote:
> > On Thu, Oct 10, 2024 at 11:00:25PM +0200, vamoirid wrote:

...

> > > +extern const struct dev_pm_ops bmp280_dev_pm_ops;
> > 
> > Is pm.h being included already in this header? Otherwise you need to add it.
> 
> No it is not, and indeed I need to add it. Probably because it was
> included by some other file I didn't get an error from gcc?

Yeah, it's called a "proxy" header in general meaning. We should try hard not
to use such headers (meaning not to use them in a "proxy" mode).

...

> > >  	struct regmap *regmap;
> > >  	struct bme680_calib bme680;
> > >  	struct mutex lock; /* Protect multiple serial R/W ops to device. */
> > > +	struct device *dev;
> > 
> > Is it the same that you may get wia regmap_get_device()?
> > 
> 
> Yes it is the same. Maybe I can try and see if I can use the following
> 
> 	regmap_get_device(data->regmap)
> 
> in the places where the pm functions are used in order to not declare a
> new value inside the struct bme680_data. But in general, is this approach
> prefered?

Since there is a getter already available, I prefer not to shortcut it via
adding a duplicating information to the data structure.

> > >  	u8 oversampling_temp;
> > >  	u8 oversampling_press;
> > >  	u8 oversampling_humid;

-- 
With Best Regards,
Andy Shevchenko



