Return-Path: <devicetree+bounces-110690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 251D099B6EE
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 22:34:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 503C51C20DFF
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 20:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DA1C13D53F;
	Sat, 12 Oct 2024 20:34:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fgw21-7.mail.saunalahti.fi (fgw21-7.mail.saunalahti.fi [62.142.5.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6107171AA
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 20:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.142.5.82
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728765292; cv=none; b=IDEE7QWLySvdTAWecGqYWLVoDNpiqT/cInZslWhuYo1S2/d20mJvqXGkzhY6HLsKrn+ek6MmRWXyDCUTwCAttJpW0xDVcWvurTW1spWG7wqVqBzdbDwpxHVSrO7r8p3skwfnt8KQ8Ar41rlVCCIzOXbPrTEG80WUQ/5zSQls0/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728765292; c=relaxed/simple;
	bh=xnT15ehoKpQ2fh6wgbED8f2JaPplSPqVcgR+3FBsvQU=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Pq4lLv0PlRbYhcR36vKEOE9/jXFJbABcVpLQHXe9CP87wupLYwsZgZuf5zQDLBzV6+QA9oXe8fB6r4vSxpQkorG0yKh6hF4U1S8V5pm1ISXF3bRQ8xhUh4q/LYnjjBGa+0Xeu+xx7Ky+HJ2gjCToMkQ36kuvy7Kz0agfv9n+ZNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com; spf=fail smtp.mailfrom=gmail.com; arc=none smtp.client-ip=62.142.5.82
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=gmail.com
Received: from localhost (88-113-26-56.elisa-laajakaista.fi [88.113.26.56])
	by fgw21.mail.saunalahti.fi (Halon) with ESMTP
	id 6866500e-88d9-11ef-8861-005056bdd08f;
	Sat, 12 Oct 2024 23:34:41 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 12 Oct 2024 23:34:40 +0300
To: Vasileios Aoiridis <vassilisamir@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, jic23@kernel.org,
	lars@metafoo.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, anshulusr@gmail.com, gustavograzs@gmail.com,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 02/13] iio: chemical: bme680: avoid using camel case
Message-ID: <ZwrdYOZVVeDsi0gZ@surfacebook.localdomain>
References: <20241010210030.33309-1-vassilisamir@gmail.com>
 <20241010210030.33309-3-vassilisamir@gmail.com>
 <Zwj3QZE30juE53Vy@smile.fi.intel.com>
 <ZwlzczfUPtqA5SA1@vamoirid-laptop>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZwlzczfUPtqA5SA1@vamoirid-laptop>

Fri, Oct 11, 2024 at 08:50:27PM +0200, Vasileios Aoiridis kirjoitti:
> On Fri, Oct 11, 2024 at 01:00:33PM +0300, Andy Shevchenko wrote:
> > On Thu, Oct 10, 2024 at 11:00:19PM +0200, vamoirid wrote:

...

> > >  	var1 = ((1340 + (5 * (s64)calib->range_sw_err)) *
> > > -			((s64)lookupTable[gas_range])) >> 16;
> > > +			((s64)lookup_table[gas_range])) >> 16;
> > 
> > Also an opportunity to make this neater like
> > 
> > 	var1 = (1340 + (5 * (s64)calib->range_sw_err)) * (s64)lookup_table[gas_range]);
> > 	var1 >>= 16;
> > 
> > So, at bare minumym there are redundant parentheses. And looking at the table
> > and the first argument of multiplication I'm puzzled why casting is needed for
> > the second? Shouldn't s64 already be implied by the first one?
> 
> I think the 2nd cast indeed is not needed since the 1st one forces the
> s64 so I can remove it.

Thinking about this more, you don't need the first either,
if using 5LL instead of 5.

-- 
With Best Regards,
Andy Shevchenko



