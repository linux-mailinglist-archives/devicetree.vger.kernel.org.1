Return-Path: <devicetree+bounces-265127-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJNfIrr9jWm0+AAAu9opvQ
	(envelope-from <devicetree+bounces-265127-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:20:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D98FF12F471
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:20:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F09C304601E
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B524C2DA75A;
	Thu, 12 Feb 2026 16:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="JnXZV+b8"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094981DF26E;
	Thu, 12 Feb 2026 16:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770913207; cv=none; b=Nu7WDDxvZWy9eOzw7umB0O7pm7gIoHv8fvQf+F8TL3SFdu3e1RrHKUxusGj/EEG2iwCKOVGH5ZDqccJhxCxvhETevYnmbOC4FyN94jZ8wiSl7ufz0N0+q54zPHmE+HuN8t0qPFsMa5zZhkFxIlU4qLteaFJBUhGbkNANGFuqQrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770913207; c=relaxed/simple;
	bh=F2EAYbF/oqKf8gjFBBL25jfi3ENVzTueJMcflbSwVPY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qM/0LhgnPOqgnQe+sqp/IMySlkvG+OuEZ0tRrvl3fQf5YeIo7/+nrrTyZPQejrjIXbPefhD1gtozDO9vPeLp9Zf+AlBfxWQeN64lXTNICunhhs3l4w/YRKIPtjZvaqllh7qSDBUcd2QL1aW/VQ2BFbR9P0NBoko78OlM4M5fY8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=JnXZV+b8; arc=none smtp.client-ip=198.175.65.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770913206; x=1802449206;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=F2EAYbF/oqKf8gjFBBL25jfi3ENVzTueJMcflbSwVPY=;
  b=JnXZV+b8c1pwOVIOJFYVR9m2INrpP6cZW1ZoTc4RudmG/TztoYQtYvuT
   8Oe2S/OUjGhH3ikdruV2xXZc87vR/uWjW55rJ4HHkHYJlmbFE+eA+rMNz
   i5eLgQl83BMQoTlUpW92Nzf6upp35/l8JnkvTRPrV6NwUfHmbq68ISLN+
   bebNGAK6ie8I0TZte46JZfWSE0Zrh+pjo+kanqwXF8JXR6OZBqOzN1Hve
   gs+4xQSsohsT58NeBeFRapt1gOgGpCmL93xcrV6sq3Pz/Ujsrrx4sIBeB
   Cd+z+zeKDtOyw+plHiK13U1bHOARFk7ObWPLMk/uVSbXBHlqny+s6hEPp
   w==;
X-CSE-ConnectionGUID: B0B/dF5zQU22x2U4gfqpJQ==
X-CSE-MsgGUID: 6OI6j1JxTVmc852l2f+SQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="83184218"
X-IronPort-AV: E=Sophos;i="6.21,287,1763452800"; 
   d="scan'208";a="83184218"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Feb 2026 08:20:05 -0800
X-CSE-ConnectionGUID: iQsdunTcTACOa8xJFAUU/Q==
X-CSE-MsgGUID: D+paQF5vRqiWLcAyRhaoZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,287,1763452800"; 
   d="scan'208";a="217119627"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.245.145])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Feb 2026 08:20:02 -0800
Date: Thu, 12 Feb 2026 18:20:00 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Erikas Bitovtas <xerikasxx@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Meerwald <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] iio: light: vcnl4000: add support for Capella
 CM36686 and CM36672P
Message-ID: <aY39sDF8NXXhtljJ@smile.fi.intel.com>
References: <20260212-cm36686-v4-0-8f587d4a72bf@gmail.com>
 <20260212-cm36686-v4-2-8f587d4a72bf@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260212-cm36686-v4-2-8f587d4a72bf@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265127-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email,intel.com:dkim]
X-Rspamd-Queue-Id: D98FF12F471
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 04:42:48PM +0200, Erikas Bitovtas wrote:
> Add support for Capella's CM36686 and CM36672P sensors. Capella
> CM36686 is an ambient light and proximity sensor that is fully
> compatible with VCNL4040 and can be used as is. For CM36672P, which is
> a proximity-only sensor, also remove the IIO_LIGHT channel.

Perfect!
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

...

> +	{
> +		.compatible = "capella,cm36672p",
> +		.data = (void *)CM36672P,

Side note: Consider at some point to switch to chip_info, id est use
pointers directly instead of integer indices as pointers here and in
other ID tables. It's for a future development, and not required for
this series.

> +	},
> +	{
> +		.compatible = "capella,cm36686",
> +		.data = (void *)VCNL4040,
> +	},
>  	{
>  		.compatible = "vishay,vcnl4000",
>  		.data = (void *)VCNL4000,

-- 
With Best Regards,
Andy Shevchenko



