Return-Path: <devicetree+bounces-262302-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IO65N84NgmkKOwMAu9opvQ
	(envelope-from <devicetree+bounces-262302-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 16:01:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BC7DAF6E
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 16:01:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9645830BAB8B
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 14:57:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C80D3ACF19;
	Tue,  3 Feb 2026 14:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="ErSlCscp"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3753B8BDC;
	Tue,  3 Feb 2026 14:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770130572; cv=none; b=p34pxIQ1QPbG0J33u8BiCdCkoJ4l1dr/zvI5DbTTn3riRICwzBUI794HaKCJ7CYPfSEKrKLm4t3lkJMXUMs8GLUY8jCM73rnJ27LsWjhCDO2LfjOa7AKZeaJxm4LQ7U4wEW4DZGKTLHf6Fp+M8qrNToGPDW8GU6aSs5hcdqOndc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770130572; c=relaxed/simple;
	bh=j55JyfW5E2HlW1jVpfenFHxuN+CxSTvPC7IBLTzEJGQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LCD3GLaFM5t9X+JVWE/j74lYPUjWAC9IhIo68WhSsLTdEs+B2rbxu1z8DVzMufrScW6j6pk48D8iFmQ/rEFetjzjtEe2Wf2z48fXMqrBY1XXZ2RChXgcG1ImVuy5avifQye8weec6CZ33ecsTj/hAA9b4wT1H+OyR6pgffKhL00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=ErSlCscp; arc=none smtp.client-ip=192.198.163.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770130569; x=1801666569;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=j55JyfW5E2HlW1jVpfenFHxuN+CxSTvPC7IBLTzEJGQ=;
  b=ErSlCscphF51EpEHyN7AUfgNkN66rBfWorNcZxErk0Fe8u0zphQvM+qw
   boEyW15ibcD/dOJXThtotbs6fFbHZFWQrfHVemR58TdBov/SBQSKsFtI5
   7oohW5lEe7bsjqtbh5GMH+VnZcDvwLtm1zOGfkATDKA8IG+ylkMHcgYLo
   dV4s5bp3v3egN8HvTBJIXQ8PkzPZv9UVflbZVKQB853eNlYBtCPkDsMiJ
   wi+7vVai7ZnjNFZzj/YDABxVWvfNGTGzaSLucvtUpN6YbqPlgM5S+Oyef
   omxlpedpYguAHVMy+hbEqorWqv6KlRbZ42h5tfwRUJiRZWRghGC+WUpuf
   g==;
X-CSE-ConnectionGUID: DAiJsptnR3aQWIZKFSYsJw==
X-CSE-MsgGUID: C5OfcK4ZSY2p7pLZbjDN3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="75159373"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; 
   d="scan'208";a="75159373"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2026 06:56:05 -0800
X-CSE-ConnectionGUID: T2lApN1/RtOJ+k85+n/Egg==
X-CSE-MsgGUID: bl/CHXtsTY6/WkNSqz7oIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; 
   d="scan'208";a="209159621"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.99])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2026 06:56:02 -0800
Date: Tue, 3 Feb 2026 16:56:00 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	David Jander <david@protonic.nl>
Subject: Re: [PATCH v4 06/13] iio: dac: ds4424: use device match data for
 chip info
Message-ID: <aYIMgEEDd8ZfLv71@smile.fi.intel.com>
References: <20260203093434.2548978-1-o.rempel@pengutronix.de>
 <20260203093434.2548978-7-o.rempel@pengutronix.de>
 <aYHH69gXyuwmQR03@smile.fi.intel.com>
 <aYHLRvfJH54XumUA@pengutronix.de>
 <aYHhO7pJPEew7QMC@smile.fi.intel.com>
 <aYHjQhO92yxoy_9o@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYHjQhO92yxoy_9o@pengutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262302-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,distrokit:email,smile.fi.intel.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 81BC7DAF6E
X-Rspamd-Action: no action

On Tue, Feb 03, 2026 at 01:00:02PM +0100, Oleksij Rempel wrote:
> On Tue, Feb 03, 2026 at 01:51:23PM +0200, Andy Shevchenko wrote:
> > On Tue, Feb 03, 2026 at 11:17:42AM +0100, Oleksij Rempel wrote:
> > > On Tue, Feb 03, 2026 at 12:03:23PM +0200, Andy Shevchenko wrote:
> > > > On Tue, Feb 03, 2026 at 10:34:26AM +0100, Oleksij Rempel wrote:

...

> > > > > -	indio_dev->name = id->name;
> > > > 
> > > > > +	indio_dev->name = client->name;
> > > > 
> > > > Isn't this an ABI breakage?
> > > 
> > > I can't confirm it.
> > > 
> > > before all patches:
> > > root@DistroKit:~ cat /sys/bus/iio/devices/iio:device3/name 
> > > ds4424
> > > 
> > > after:
> > > root@DistroKit:~ cat /sys/bus/iio/devices/iio:device3/name 
> > > ds4424
> > 
> > In ACPI case it might look differently, but I have no means to test this.
> > 
> > id->name comes strictly from an i2c table, while client->name is constructed
> > using specifics of the firmware enumeration. In DT due to some (historical?)
> > reasons the client->name has no vendor substring and hence matches 1:1 to
> > id->name. In ACPI, IIRC, the client->name is ACPI device instance name,
> > something like ABCD0123:00.
> 
> Ok, I see. Should I revert this line?

Just do not introduce that change (change of the ->name field) in the original
patch, in that case no revert churn would be needed.

-- 
With Best Regards,
Andy Shevchenko



