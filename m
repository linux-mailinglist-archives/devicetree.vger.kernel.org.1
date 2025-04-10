Return-Path: <devicetree+bounces-165618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A3297A84C4E
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 20:44:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D79A9A1318
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 18:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1203B28EA4C;
	Thu, 10 Apr 2025 18:43:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fgw20-7.mail.saunalahti.fi (fgw20-7.mail.saunalahti.fi [62.142.5.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4726328EA4A
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 18:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.142.5.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744310607; cv=none; b=W0q3aChSM9xX/hbPkWov5hC96tn3dUuTcQB3FLL4G+3BzAbw17KP7dvm3GrfWau51CIm/0WVFJXt0lqfSVyBI4l7nhU9XOmZaggyXaymvLUdNGqRxP76iS6e1LS7zYtTcTx4+Dbby00hr52yQwqW2rM9Md3pYQcKoC9HepH7vnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744310607; c=relaxed/simple;
	bh=wLmrLuGso/E6VTZWxwck/fJMS6jpZqNyrtnxiPHATSI=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VfqGGrZZmLCDTTXSAWcUqTdMiEJiY0HuFirc5RUOaW5zBLL546zr2RoAd1C7DAVVamdUAq/v5X3G9tVg8q/Jz4Ar0WvA2BOIFoEqCeTVuqfPVbEg4sdbMrKLecLufMLI1hAQ5OjkukSe11URQzKbx5tmvlzSCo4q6fa/h3iA7nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com; spf=fail smtp.mailfrom=gmail.com; arc=none smtp.client-ip=62.142.5.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=gmail.com
Received: from localhost (88-113-26-232.elisa-laajakaista.fi [88.113.26.232])
	by fgw22.mail.saunalahti.fi (Halon) with ESMTP
	id acba84e4-163b-11f0-9b8d-005056bdf889;
	Thu, 10 Apr 2025 21:43:20 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 10 Apr 2025 21:43:19 +0300
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>,
	Mark Brown <broonie@kernel.org>,
	Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>,
	Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kamel Bouhara <kamel.bouhara@bootlin.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>,
	Michael Walle <mwalle@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
	linux-input@vger.kernel.org, linux-pwm@vger.kernel.org,
	=?iso-8859-1?Q?Gr=E9gory?= Clement <gregory.clement@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v6 05/12] regmap: irq: Remove unreachable goto
Message-ID: <Z_gRR33vGZpIDXmH@surfacebook.localdomain>
References: <20250409-mdb-max7360-support-v6-0-7a2535876e39@bootlin.com>
 <20250409-mdb-max7360-support-v6-5-7a2535876e39@bootlin.com>
 <1b280408-888e-48e1-8e6b-de4e7a913e74@sirena.org.uk>
 <Z_aUeKm0k1zReS_D@smile.fi.intel.com>
 <7126e672-a829-489e-a0c0-8d6d64a8b2f4@sirena.org.uk>
 <Z_aZmJxPwIBgcwhG@smile.fi.intel.com>
 <28982424-d425-47c3-b910-58c787e13510@sirena.org.uk>
 <Z_akNogB_TkXcS37@smile.fi.intel.com>
 <asjb2gjqpohtq2cyn3pll6nabbymd2o3jg723eloog6znwruo3@47wewlrtom5h>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <asjb2gjqpohtq2cyn3pll6nabbymd2o3jg723eloog6znwruo3@47wewlrtom5h>

Wed, Apr 09, 2025 at 10:16:40AM -0700, Dmitry Torokhov kirjoitti:
> On Wed, Apr 09, 2025 at 07:45:42PM +0300, Andy Shevchenko wrote:
> > On Wed, Apr 09, 2025 at 05:32:55PM +0100, Mark Brown wrote:
> > > On Wed, Apr 09, 2025 at 07:00:24PM +0300, Andy Shevchenko wrote:
> > > > On Wed, Apr 09, 2025 at 04:46:04PM +0100, Mark Brown wrote:
> > > 
> > > > > unreachable() just annotates things, AFAICT it doesn't actually
> > > > > guarantee to do anything in particular if the annotation turns out to be
> > > > > incorrect.
> > > 
> > > > I;m not sure I follow. unreachable is a wrapper on top of
> > > > __builtin_unreachable() which is intrinsic of the compiler.
> > > 
> > > > https://gcc.gnu.org/onlinedocs/gcc/Other-Builtins.html#index-_005f_005fbuiltin_005funreachable
> > > 
> > > That just says that the program is undefined if we get to the
> > > __builtin_undefined() and documents some behaviour around warnings.  One
> > > example of undefined behaviour would be doing nothing.
> > 
> > Theoretically yes, practically return after a BUG() makes no sense. Note,
> > that compiler effectively removes 'goto exit;' here (that's also mentioned
> > in the documentation independently on the control flow behaviour), so
> > I don't know what you expect from it.
> 
> So unreachable() sometimes lears to weird behavior from compiler, for
> example as mentioned here where we ended up removing it to prevent
> miscompilations:
> 
> https://lore.kernel.org/all/20241010222451.GA3571761@thelio-3990X/

How does it affect the BUG()?

From your link:
"I tested using BUG() in lieu of unreachable() like the second change
 I mentioned above, which resolves the issue cleanly, ..."

-- 
With Best Regards,
Andy Shevchenko



