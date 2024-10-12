Return-Path: <devicetree+bounces-110694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A1B99B6F8
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 22:36:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 313D51C20E67
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 20:36:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DDB5198E70;
	Sat, 12 Oct 2024 20:36:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fgw23-7.mail.saunalahti.fi (fgw23-7.mail.saunalahti.fi [62.142.5.84])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D4F1946B
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 20:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.142.5.84
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728765376; cv=none; b=HxEdfSc3Vcj4UdGd/sgSryZvM0WG9tWrBIZl9z4VaC3k7av0rFAtHY72IEtEZ389pQJKA3izrY6TUDeD5NqDsNU+E9Nos4ALHQV/H3RwmqTyV15Ak0YZ2RTUa4mDcUrYZvha6fhoKMd66es2BF7b36uyM6/dAVjc3qgHjm6TFeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728765376; c=relaxed/simple;
	bh=3/c35w7D83VLEAha7Zi9HE2mg2SYsKTgY17bYe1C7dk=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QdGVYxc3xqMmHPET5B2jGE7PVwnkh9nLVVQfHCtd7WE663LohyHrYFg8ThHsSWwF9D63qw3+OjTRgmpdoNN9Pg5Ic7jdhMvnBjXADMq8aYPj3KfbxXgxVAcJDwH4dMPPbxiM2ttKPzGRHrLw9980OntllMJ0a46J7MtwUnA5EMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com; spf=fail smtp.mailfrom=gmail.com; arc=none smtp.client-ip=62.142.5.84
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=gmail.com
Received: from localhost (88-113-26-56.elisa-laajakaista.fi [88.113.26.56])
	by fgw22.mail.saunalahti.fi (Halon) with ESMTP
	id 9bfc8f72-88d9-11ef-9671-005056bdf889;
	Sat, 12 Oct 2024 23:36:08 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 12 Oct 2024 23:36:07 +0300
To: Vasileios Aoiridis <vassilisamir@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, jic23@kernel.org,
	lars@metafoo.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, anshulusr@gmail.com, gustavograzs@gmail.com,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 03/13] iio: chemical: bme680: fix startup time
Message-ID: <Zwrdt_uaaLaVhM-L@surfacebook.localdomain>
References: <20241010210030.33309-1-vassilisamir@gmail.com>
 <20241010210030.33309-4-vassilisamir@gmail.com>
 <Zwj3V1oaTO6je-w9@smile.fi.intel.com>
 <ZwlzvboBPppQMEB_@vamoirid-laptop>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZwlzvboBPppQMEB_@vamoirid-laptop>

Fri, Oct 11, 2024 at 08:51:41PM +0200, Vasileios Aoiridis kirjoitti:
> On Fri, Oct 11, 2024 at 01:00:55PM +0300, Andy Shevchenko wrote:
> > On Thu, Oct 10, 2024 at 11:00:20PM +0200, vamoirid wrote:
> > > 
> > > According to datasheet's Section 1.1, Table 1, the startup time for the
> > > device is 2ms and not 5ms.
> > 
> > Fixes tag?
> 
> It is not affecting at all the operation of the driver so I was not sure
> if it was worth it to be backported to the previous versions. This is
> why I didn't put a fixes tag. You think for such a fix is necessary?

The commit message siggests that this is a fix. If you want to make it clear,
that it shouldn't be considered as a such, perhaps you need to rephrase it.

-- 
With Best Regards,
Andy Shevchenko



