Return-Path: <devicetree+bounces-309271-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MpyVIrZXKGrvCQMAu9opvQ
	(envelope-from <devicetree+bounces-309271-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 20:13:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD30663386
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 20:13:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="MMua/g8T";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309271-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309271-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 266BB3065A12
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 18:11:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 048944963C9;
	Tue,  9 Jun 2026 18:11:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12B349252E;
	Tue,  9 Jun 2026 18:11:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781028662; cv=none; b=LmZHJI+j9xWqXvNiDR/N484Qs6XbOmboyZIrQ4o8+yYAVTsyEwRQY9Enb/k8RSBV9pJ3utpN0eZWSJxLnEHcW5Zl+8rvy5oJGZgXbXBdVOW7j1W5/i/y+IInnp57VBg81HwZpcdpM7oef39njAz1x5mdOI7N3Wyjy7SuBDx7vWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781028662; c=relaxed/simple;
	bh=bsjNyBxRz8YS6RKsFP6WDu6uG2sl4t0KVw70RlXVf88=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AtEqcGPt0i/ySnjeOEPN61NdoQeBq5+jIaJ1anTL7s23+cdFnf65ylBxtUkDrsefe1jGdVqE1+doW8ptlg5PI7X26yqEOoED1l7gRuH2LUYq5cpFpMDNSsUGbdcIZw7JJgOkVOK+fKgGuOcjFIFNFn5zEN3ZDDKUraE0Ji3YWVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=MMua/g8T; arc=none smtp.client-ip=198.175.65.15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781028662; x=1812564662;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=bsjNyBxRz8YS6RKsFP6WDu6uG2sl4t0KVw70RlXVf88=;
  b=MMua/g8TGQGHKGE9s23t2tix+ChmC50AjBLi2+EOj0cCl70+DwscaCcS
   zm6S5J/BN+nRzTJCoM6PdXAAqHz8DgPfJQIPQbcWwpdwZZ5XggVHvdpOV
   1nipPC5JKZ7vbpeFa6AZcEYZnUmOjQiNdlKLD4b2fp1Kj+/E3qqaf2F4z
   rGLTTUp4cFElOOnkgFZ+Aiom4oGsAMHgJGP2ajuzUwmmGXHjNAtfFbxeK
   pGQo20o72CxzYhPQP06Xqij1iibmlZflPUh/+idR5J2LruBopAKUa0/zL
   Byhi7Y1yPJydPztNcSJ4ST/QvVJFG6kC1wC60iZXL4AXsr2vgfKyL+RtZ
   A==;
X-CSE-ConnectionGUID: 4G2Vz28JTwWn1PWmYJAdcA==
X-CSE-MsgGUID: Luf3IWtyRiSpxV35WCmgFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="85427737"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; 
   d="scan'208";a="85427737"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jun 2026 11:11:02 -0700
X-CSE-ConnectionGUID: qkJMqDy0Qai6ZCHnTuN7jw==
X-CSE-MsgGUID: 7DLVE2nEQlK47x9HVPjrog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; 
   d="scan'208";a="244791961"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.162])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jun 2026 11:10:56 -0700
Date: Tue, 9 Jun 2026 21:10:54 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: rodrigo.alencar@analog.com
Cc: Michael Auchter <michael.auchter@ni.com>, linux@analog.com,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH v2 09/12] iio: dac: ad5686: implement new sync() op for
 the spi bus
Message-ID: <aihXLuU5m8ngxm80@ashevche-desk.local>
References: <20260609-ad5686-new-features-v2-0-70b423f5c76d@analog.com>
 <20260609-ad5686-new-features-v2-9-70b423f5c76d@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260609-ad5686-new-features-v2-9-70b423f5c76d@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309271-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.alencar@analog.com,m:michael.auchter@ni.com,m:linux@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:Michael.Hennerich@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:kees@kernel.org,m:gustavoars@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,ashevche-desk.local:mid,intel.com:dkim,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1FD30663386

On Tue, Jun 09, 2026 at 11:13:04AM +0100, Rodrigo Alencar via B4 Relay wrote:

> Use of local SPI bus data to manage a collection of SPI transfers and
> flush them to the SPI platform driver with the sync() operation. This
> allows for faster handling of multiple channel DAC writes, avoiding kernel
> overhead per spi_sync() call, which will be helpful when enabling
> triggered buffer support.

...

>  static int ad5686_spi_probe(struct spi_device *spi)
>  {
> -	return ad5686_probe(&spi->dev, spi_get_device_match_data(spi),
> -			    spi->modalias, &ad5686_spi_ops);
> +	const struct ad5686_chip_info *info = spi_get_device_match_data(spi);

	struct device *dev = &spi->dev;

> +	struct ad5686_spi_data *bus_data;
> +	unsigned int capacity;
> +
> +	/* read operation requires at least 2 transfers */
> +	capacity = max(info->num_channels, 2);
> +	bus_data = devm_kzalloc(&spi->dev,
> +				struct_size(bus_data, xfers, capacity),
> +				GFP_KERNEL);

	bus_data = devm_kzalloc(dev, struct_size(bus_data, xfers, capacity),
				GFP_KERNEL);

> +	if (!bus_data)
> +		return -ENOMEM;
> +
> +	bus_data->capacity = capacity;
> +
> +	return ad5686_probe(&spi->dev, info, spi->modalias, &ad5686_spi_ops,
> +			    bus_data);

	return ad5686_probe(dev, info, spi->modalias, &ad5686_spi_ops, bus_data);

>  }

-- 
With Best Regards,
Andy Shevchenko



