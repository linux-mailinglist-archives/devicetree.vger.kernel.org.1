Return-Path: <devicetree+bounces-264453-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6O4oGcBFi2mfRwAAu9opvQ
	(envelope-from <devicetree+bounces-264453-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:50:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7620E11C16E
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:50:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C2BD530080B0
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:50:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6890F3803C9;
	Tue, 10 Feb 2026 14:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="lXl8h50V"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB60636681B;
	Tue, 10 Feb 2026 14:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770735033; cv=none; b=thameYxRaudusscWOxG6ri7+XWpeFcs3Z3fK3pf5w8FsWSeip1AIAm5ypKj2seTozC85zs9gjTGxOhep+JBKN4fwCnP58iT9ExHdjwC1nixUSloa3F+1WDwiSgq2X2jlUbHLavA4adstml35/backeTBYxxKTcbgI2KeeENph8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770735033; c=relaxed/simple;
	bh=Ay0a5yt0KAk0KqvUofnnt7ru3ngDlacuX/N01eIYONs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mWzlhYbo6Z4mrxTHfTsKagS2HteqpWMRbmqXa6RhAaFq3BOwRHdfqDhBR1bSr/429a0k/ou+WmT3Oh+k6/BAQUiuFiuytYECxTEbn5D+Bvrl6hFYUXEJuRCaQ+aJsK2Px/5l7aP1sKzt1b1c6lu5kj07aIwlyhiftj04ZKGeCRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=lXl8h50V; arc=none smtp.client-ip=192.198.163.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770735032; x=1802271032;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Ay0a5yt0KAk0KqvUofnnt7ru3ngDlacuX/N01eIYONs=;
  b=lXl8h50VebY513Vu8otROqRh6sTOnfisYFMWjPUhjLtTJsWi1H+r093r
   3R0kTmVcQ8IhmF4G3Qffzm4WmG6vI9w2JLxuKHW8KOYqhGhD9GPVRSVe4
   Y8IhKdXEUXsjgGZx4F/3wKTvWU/knS2+MR7/bLfVqcCiBQ9TKvFbnBAiB
   H/x4nH584Ct61BEK7+VtmsUfajzfVS0XlqFWqbJRVjUUqEHq19laiIBoS
   SGc9obO9iMZ0ahZnIGesv6hKl8FUsdGdozmfzEIPhuSwkF47R0uVFsYRP
   lp0GI14y+BqdkjJJKn2Spp+8kjyfWQFvC57zK7yFsWTPt5U6xVfPPMcRS
   w==;
X-CSE-ConnectionGUID: +zUjBMAlR0ie7RVBMx2o6g==
X-CSE-MsgGUID: Iq3VOOzvQ7aGmZzUg3q7FA==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="71757908"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; 
   d="scan'208";a="71757908"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Feb 2026 06:50:31 -0800
X-CSE-ConnectionGUID: MBJ4Y3sORl+ULAXzXvrZHQ==
X-CSE-MsgGUID: 5KMPrUf0Ray1/Mka9vaqOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; 
   d="scan'208";a="211429637"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.244.39])
  by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Feb 2026 06:50:28 -0800
Date: Tue, 10 Feb 2026 16:50:26 +0200
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
Subject: Re: [PATCH v6 05/12] iio: dac: ds4424: use device match data for
 chip info
Message-ID: <aYtFsmO7h5ucSyVq@smile.fi.intel.com>
References: <20260210135110.2027073-1-o.rempel@pengutronix.de>
 <20260210135110.2027073-6-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260210135110.2027073-6-o.rempel@pengutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264453-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smile.fi.intel.com:mid]
X-Rspamd-Queue-Id: 7620E11C16E
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 02:51:03PM +0100, Oleksij Rempel wrote:
> Refactor the driver to use device match data instead of checking ID enums
> in a switch statement.
> 
> Define a `ds4424_chip_info` structure to hold variant-specific attributes
> (currently just the channel count) and attach it directly to the I2C and
> OF device ID tables.
> 
> This simplifies the probe function and makes it easier to add support for
> new variants like DS4402/DS4404.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

-- 
With Best Regards,
Andy Shevchenko



