Return-Path: <devicetree+bounces-305904-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FEuLJxllH2prlgAAu9opvQ
	(envelope-from <devicetree+bounces-305904-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 01:19:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0172A632DE6
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 01:19:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="nwuw2r4/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305904-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305904-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA493301379B
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 23:19:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BF7F347529;
	Tue,  2 Jun 2026 23:19:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7975E3955C3;
	Tue,  2 Jun 2026 23:19:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780442361; cv=none; b=Ejt/3Kpk7zjIpKo5O6YTb5rsMKOY1DFxFF4F7SI7mflCnUW0RTlR6V/93TSEco1/7+hrjw8ra/C0Uzg0OFkKgWkOeMJbA91EwLk8a54fdfwqK6xEt5DqH7CAyek5flWmvhC8f6ysAEHaI3noDOT87vSMRR1zG4gUT8lHZOKiBDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780442361; c=relaxed/simple;
	bh=vs/EBQecgRth5Rc6H5L4Tcwy7k4cnknuN/7RorS/7Fs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s4wfH58msmr2QmZK9HG+XrEPKLKLgLh4kpCoO7Qod2WeS1YJqSE685+GZnsxfz17pBPKhicpSSJzlJ//DlvQVohuwbqnPBONNXBoLF0VWPy+02/3c656wdRg7l82e3JdhAgA6ALdq9jPl2VFqWU2wZYe7f8wXjKQxVqOSMIHYLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=nwuw2r4/; arc=none smtp.client-ip=192.198.163.8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1780442360; x=1811978360;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=vs/EBQecgRth5Rc6H5L4Tcwy7k4cnknuN/7RorS/7Fs=;
  b=nwuw2r4/FjUofvvXFGwfzFAHnbZXgXu9HF5QQNDapbWD+VDtock0xQTT
   z4Ll8IBuOmv45JfiZpP1Btu3ZEkiDUq9K23uwxJZtQkt7OCW8lZAQqsG8
   wABlVK7yStojlkt/id+T7jn27HJKBI9LtQNQh5gE8RuNAgWxCx+Iuf4+5
   FXL18C0QOS+/x/p03V7/JnfkVogdSqzQ03N3IVvhLBfVB+tE24MepoC11
   oGCxXHygPUE7E3n+5kGexQItpv3lYApfBsRdziAAjgFcQYWp+4sEhM6pX
   SKy8TNtcyVf37N9RQ7h/N7a8WTrVzAqMcD60yfuMvAMV21VFnBXLqO/sC
   w==;
X-CSE-ConnectionGUID: ruY16USLQHak8fNbgFqf9w==
X-CSE-MsgGUID: yyM+JrRpRzaarHE/TeqFrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="98805566"
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; 
   d="scan'208";a="98805566"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2026 16:19:19 -0700
X-CSE-ConnectionGUID: 6Jg28LnHSa6Vlc5YKq3PGQ==
X-CSE-MsgGUID: VOMCzlC4TP6HAYt5YnWuMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; 
   d="scan'208";a="239593879"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.116])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2026 16:19:13 -0700
Date: Wed, 3 Jun 2026 02:19:11 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Liviu Stan <liviu.stan@analog.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Antoniu Miclaus <antoniu.miclaus@analog.com>,
	Francesco Lavra <flavra@baylibre.com>, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux@analog.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/8] iio: temperature: ltc2983: Use local device
 pointer consistently
Message-ID: <ah9k7zV4wLZe7VoL@ashevche-desk.local>
References: <20260521164323.770626-1-liviu.stan@analog.com>
 <20260521164323.770626-3-liviu.stan@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260521164323.770626-3-liviu.stan@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305904-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:liviu.stan@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:Michael.Hennerich@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:antoniu.miclaus@analog.com,m:flavra@baylibre.com,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux@analog.com,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ashevche-desk.local:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0172A632DE6

On Thu, May 21, 2026 at 07:42:55PM +0300, Liviu Stan wrote:
> Some functions define a local 'dev' pointer but still use bare
> '&st->spi->dev' in some code paths, and some don't have it at all.
> Replace bare references with the local pointer for consistency.

...

> -	dev_dbg(&st->spi->dev, "Assign reg:0x%04X, val:0x%08X\n", reg,
> +	dev_dbg(dev, "Assign reg:0x%04X, val:0x%08X\n", reg,
>  		chan_val);

Now it's perfectly a single line.

...

>  	if (chan->address >= st->num_channels) {
> -		dev_err(&st->spi->dev, "Invalid chan address:%ld",
> +		dev_err(dev, "Invalid chan address:%ld",
>  			chan->address);

Ditto.

>  		return -EINVAL;
>  	}

...

>  	if (ret)
> -		return dev_err_probe(&st->spi->dev, ret,
> +		return dev_err_probe(dev, ret,
>  				     "Device startup timed out\n");

Ditto.

...

> -	st->iio_chan = devm_kzalloc(&spi->dev,
> +	st->iio_chan = devm_kzalloc(dev,
>  				    st->iio_channels * sizeof(*st->iio_chan),
>  				    GFP_KERNEL);

This should be first switched to devm_kcalloc().

...

> -	ret = devm_request_irq(&spi->dev, spi->irq, ltc2983_irq_handler,
> +	ret = devm_request_irq(dev, spi->irq, ltc2983_irq_handler,
>  			       IRQF_TRIGGER_RISING, st->info->name, st);
>  	if (ret)
> -		return dev_err_probe(&spi->dev, ret,
> +		return dev_err_probe(dev, ret,
>  				     "failed to request an irq\n");

Another patch should just drop this duplicate message.

...

So, this has to be split to three:
- dropping dup message
- moving to devm_kcalloc() and at the same time define local dev in the probe
(and only in the probe without changing anything else)
- this patch


-- 
With Best Regards,
Andy Shevchenko



