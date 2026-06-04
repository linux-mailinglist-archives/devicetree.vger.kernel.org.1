Return-Path: <devicetree+bounces-307055-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id C01wGV7lIWpPQQEAu9opvQ
	(envelope-from <devicetree+bounces-307055-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 22:51:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B01C66437AE
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 22:51:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Q96Of93r;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307055-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307055-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 50A9230037CE
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 20:50:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCD664968F1;
	Thu,  4 Jun 2026 20:50:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F0F3CA487;
	Thu,  4 Jun 2026 20:50:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780606222; cv=none; b=NdV9HxQ1BF8Pz75C93EZ79DkZHm16IVgm96BoMpOeAXIHHPoKWsHcMJKk3HNHcR5fZegzRoStT0fdHP2+fNy8V90nNNydjQFOkN0xgtEYSrjaptH9RewZ8dVrla91/99mdZNadcjMqw7ScD1gGlpAIk2/zJ+P777ukSZUmzR65s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780606222; c=relaxed/simple;
	bh=E4v7IX+5tcqvUwBc9HCj1aWsJOdNPZVNz29a67II4hg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UhBGNq7tb7gkINRTm8InDMe+Iw8aMXBcg4U69hXXbjbNgCOZZO1VB6y0A9B1ayowNCJ6HvNhS7VcVcJ+QydtIXU9TQKpE648s/yohU6xWSlbmf0ZXa82c82QenW/y347+YyrTsyO0tonCkKu1fwn8PcC3+zqloJhwTPxMBEHguo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Q96Of93r; arc=none smtp.client-ip=198.175.65.16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1780606222; x=1812142222;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=E4v7IX+5tcqvUwBc9HCj1aWsJOdNPZVNz29a67II4hg=;
  b=Q96Of93ryF9WfCx4PKlpXR/cUUFcHlZtttxDN0Akqk3TCtVyJVf+iNQq
   MkmKx5sTkek3DdhE/a0AjA1ZS/KJeVpZ4cET3fdkgbpifERE0UwTjuaOS
   D5rU+oN7p8mWDtwQJ+46ptWgZm8/gI41FXaPTeGleRV04BsA8k7Urdgcs
   FFwlg6f+DTj2YtxwcZEvWzjzelUk/rZLD4LdOzteWt6ZeV5MP31sSfy/R
   Y+3KS7JOJA6uv216PeRpQEJ5T1/63kr2M4UwQla4nbRrsXYCSwIhkIVvf
   n0hKbd7taY/U55FwiCPOVMIfA8mJ3vSF1x8X93cxWK9yfusEOgDJWjn85
   w==;
X-CSE-ConnectionGUID: V3EmmrhITjuy7WkZLjPCiQ==
X-CSE-MsgGUID: Qo70NKSzSXe0cJZfXLF/Rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="81625897"
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; 
   d="scan'208";a="81625897"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jun 2026 13:50:21 -0700
X-CSE-ConnectionGUID: 46kngQ6PQ0u4zToey6Bv4Q==
X-CSE-MsgGUID: GAPdH26TThS3wGhTs3qXjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; 
   d="scan'208";a="249750331"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.47])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jun 2026 13:50:17 -0700
Date: Thu, 4 Jun 2026 23:50:15 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Herman van Hazendonk <github.com@herrie.org>
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
	andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, tomasborquez13@gmail.com,
	masneyb@onstation.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] iio: light: isl29018: support cover-glass gain
 compensation via DT
Message-ID: <aiHlB4b_1ylnLv8B@ashevche-desk.local>
References: <20260604100617.3486541-1-github.com@herrie.org>
 <20260604100617.3486541-4-github.com@herrie.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260604100617.3486541-4-github.com@herrie.org>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307055-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:github.com@herrie.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:tomasborquez13@gmail.com,m:masneyb@onstation.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,onstation.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B01C66437AE

On Thu, Jun 04, 2026 at 12:06:17PM +0200, Herman van Hazendonk wrote:
> Boards that mount the ISL29018 behind tinted or coated cover glass
> experience optical loss that effectively reduces the sensor's apparent
> sensitivity.  The existing in_illuminance0_calibscale sysfs attribute
> can correct for this at runtime, but firmware knows the loss factor at
> design time and there is no way to seed it without a userspace helper.
> 
> Add support for an optional "isil,cover-comp-gain" device-tree property
> that initialises calibscale at probe time.  If the property is present
> but cannot be read, probe returns an error via dev_err_probe() so the
> root cause is visible in the log.  If absent, calibscale defaults to 1
> (unity gain, matching the previous behaviour).  Userspace can still
> override the value at runtime through the sysfs attribute.
> 
> The approach follows the precedent set by the TSL2563 driver.

...

>  	struct iio_dev *indio_dev;
>  	const void *ddata = NULL;
>  	const char *name;
> +	struct device *dev;
>  	int dev_id;
>  	int err;
>  

> +	dev = &client->dev;

Make this go together with the definition.

	struct device *dev = &client->dev;


...

Use something like

	const char *propname;
	...
	propname = "isil,cover-comp-gain";


> +	if (device_property_present(dev, "isil,cover-comp-gain")) {
> +		err = device_property_read_u32(dev, "isil,cover-comp-gain",
> +					       &chip->calibscale);
> +		if (err)
> +			return dev_err_probe(dev, err,
> +					     "invalid isil,cover-comp-gain\n");

And make these three one-liners.

> +	} else {
> +		chip->calibscale = 1;
> +	}

-- 
With Best Regards,
Andy Shevchenko



