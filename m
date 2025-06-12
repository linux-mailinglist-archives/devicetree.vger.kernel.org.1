Return-Path: <devicetree+bounces-185419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4F2AD79DD
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 20:45:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B316B1893C10
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 18:45:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1345E29C339;
	Thu, 12 Jun 2025 18:45:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fgw23-7.mail.saunalahti.fi (fgw23-7.mail.saunalahti.fi [62.142.5.84])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4F02989B2
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 18:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.142.5.84
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749753909; cv=none; b=aagFWkpGPq8TEsROfsjNk8NIyBTvAIy9ovFfL95dgrNzVthQjvxflODCKBb/ydMEg49E2qsjj6SqURn1kn6BRB/u3KoEf7V+vyh8LX9JbIkayHMPwEqqqP/nN3hMcWudgCSgIOD1Af8fy+tzfDGg6/tl5LOiDT65GPzbj4lA6o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749753909; c=relaxed/simple;
	bh=AM/CMJfK0GYiU4RCv8jWMyfn/lCdgsfSJwTNeIpKM2k=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T6wD9lm+MA2gUz38K7WZ/jpLcVV7TDp45xPK9bgT5q9vKLP8EDicXKlZKUN819IvJzyxjXT0hQdi4oGENlVLqJXmtNeG1aWj55lZmJO2eWQsg1ZUxPYpXffTCQ9wW1D8BfJX2WijiuUniyVGHgn3YYSQHf3ijdFx2dC/fvCrB9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com; spf=fail smtp.mailfrom=gmail.com; arc=none smtp.client-ip=62.142.5.84
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=gmail.com
Received: from localhost (88-113-26-232.elisa-laajakaista.fi [88.113.26.232])
	by fgw23.mail.saunalahti.fi (Halon) with ESMTP
	id 320ce3ed-47bd-11f0-a97c-005056bdfda7;
	Thu, 12 Jun 2025 21:43:56 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 12 Jun 2025 21:43:56 +0300
To: Akhil R <akhilrajeev@nvidia.com>
Cc: andriy.shevchenko@linux.intel.com, andi.shyti@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org, digetx@gmail.com,
	jonathanh@nvidia.com, krzk+dt@kernel.org, ldewangan@nvidia.com,
	linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-tegra@vger.kernel.org, p.zabel@pengutronix.de,
	robh@kernel.org, thierry.reding@gmail.com
Subject: Re: [PATCH v4 2/3] i2c: tegra: make reset an optional property
Message-ID: <aEsf7Ml__JE1ixQX@surfacebook.localdomain>
References: <aErOOSxt0ovCIeSA@smile.fi.intel.com>
 <20250612153338.68829-1-akhilrajeev@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250612153338.68829-1-akhilrajeev@nvidia.com>

Thu, Jun 12, 2025 at 09:03:38PM +0530, Akhil R kirjoitti:
> On Thu, 12 Jun 2025 15:55:21 +0300, Andy Shevchenko wrote:

...

> >> >     if (handle)
> >> >             err = acpi_evaluate_object(handle, "_RST", NULL, NULL);
> >> > -   else
> >> > +   else if (i2c_dev->rst)
> >> >             err = reset_control_reset(i2c_dev->rst);
> >> > +   else
> >> > +           err = tegra_i2c_master_reset(i2c_dev);
> >>
> >> Can you please take a look here? Should the reset happen in ACPI?
> >
> > This is a good question. Without seeing all the implementations of _RST method
> > for the platforms based on this SoC it's hard to say. Ideally the _RST (which
> > is called above) must handle it properly, but firmwares have bugs...
> >
> > TL;DR: I think the approach is correct, and if any bug in ACPI will be found,
> > the workaround (quirk) needs to be added here later on.
> 
> As in Thierry's comment, I was in thought of updating the code as below.
> Does it make sense or would it be better keep what it is there now?
> 
> if (handle && acpi_has_method(handle, "_RST"))
> 	err = acpi_evaluate_object(handle, "_RST", NULL, NULL);
> else if (i2c_dev->rst)
> 	err = reset_control_reset(i2c_dev->rst);
> else
> 	err = tegra_i2c_master_reset(i2c_dev);

This will change current behaviour for the ACPI based platforms that do not
have an _RST method. At bare minumum this has to be elaborated in the commit
message with an explanation why it's not a probnlem.

-- 
With Best Regards,
Andy Shevchenko



