Return-Path: <devicetree+bounces-312464-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /Ny5Ew0nMWpJcwUAu9opvQ
	(envelope-from <devicetree+bounces-312464-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 12:35:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0A968E5CF
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 12:35:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=kpbkOK6u;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312464-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312464-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7D51F3017083
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:35:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 369E842EEA1;
	Tue, 16 Jun 2026 10:35:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE940324B24;
	Tue, 16 Jun 2026 10:35:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781606143; cv=none; b=fj6QdO9bIWkEIvx09sRDeNNCd8b007gJCwDTorIMLFanRK7CGZIMUQ3ZJMaPYc4dPPvKpI7MlOp3Gk8w9Helv4SnDuxHmOYrcQ0gWGqFPKQy/U6c4Lz0Ry/IoQlSAaI1m1vbVB/tu1GA7CZB3FDGlDFB4xXvA+txnctUgeIsy1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781606143; c=relaxed/simple;
	bh=RrvLdLZu3GFrFPT3uX1TJpnRFfeh1m+RqTONIDJfqjQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ir/Ertn4m0mzOpZkpLzlOscPPLC+IDgkuh9tmjJLEstD96t+zFeVw//dyl7wp6v1a+O15HiFrG1DV0dpFMchg0mSiQqFhJJnQMFTYPCO4UCiGP00lyxWGRIQk8E6g1aH9WtopMMLyQPfHPtAVdhsMrSAzI4OgsrAtgEh2TXuz/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=kpbkOK6u; arc=none smtp.client-ip=192.198.163.10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781606142; x=1813142142;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=RrvLdLZu3GFrFPT3uX1TJpnRFfeh1m+RqTONIDJfqjQ=;
  b=kpbkOK6uct4uyGwWV8XVr5hGVIEbtaaiX3iDpX6iOPSS9NoLwFG6iNly
   O7mpNjpOkCynPZKzlqUoIwlsKreiQ59Qpl6MU6VEHYkBk7upDNlpB6Zyr
   Fb5Pv7rzm43l3mhgog+MBTrn2Py5cDGeHOHoObluRZjl1wi0VPqIEDuyu
   KD49NfwiIuse7omCYxWd5Pvm5zAeI3AfFAFNsyOBPNSxl96OSaMlnoQpP
   s0MUdc9YwUB5klBQzo5TTp/SVlIUAuwKQyy/ZLK3tIdrUdRGf+gAzrySE
   3/BwDM5Yk7NMsRzVyaco+Ae43JWdl99UB8I8BtgkdRpxcS67q/8Jxbfk4
   w==;
X-CSE-ConnectionGUID: lBAYJKMJTEOiSQmxTny8EA==
X-CSE-MsgGUID: onolzUvFQ1Gwfb1iU3d0aA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93749189"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; 
   d="scan'208";a="93749189"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 03:35:41 -0700
X-CSE-ConnectionGUID: 492sFYdIRNC5fiNhrqV7Aw==
X-CSE-MsgGUID: YmEeLmg7RBCQu5khqS5zpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; 
   d="scan'208";a="247800144"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.153])
  by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 03:35:38 -0700
Date: Tue, 16 Jun 2026 13:35:35 +0300
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
Subject: Re: [PATCH v3 09/12] iio: dac: ad5686: implement new sync() op for
 the spi bus
Message-ID: <ajEm98mDJNrzJHD_@ashevche-desk.local>
References: <20260616-ad5686-new-features-v3-0-f829fb7e9262@analog.com>
 <20260616-ad5686-new-features-v3-9-f829fb7e9262@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260616-ad5686-new-features-v3-9-f829fb7e9262@analog.com>
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
	TAGGED_FROM(0.00)[bounces-312464-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,ashevche-desk.local:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,intel.com:dkim,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DD0A968E5CF

On Tue, Jun 16, 2026 at 09:21:15AM +0100, Rodrigo Alencar via B4 Relay wrote:

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

Sashiko might still complain on driver_override case, which means we need to
add a NULL check (or is NULL fine?).

> +	struct ad5686_spi_data *bus_data;
> +	struct device *dev = &spi->dev;
> +	unsigned int capacity;
> +
> +	/* read operation requires at least 2 transfers */
> +	capacity = max(info->num_channels, 2);
> +	bus_data = devm_kzalloc(dev, struct_size(bus_data, xfers, capacity),
> +				GFP_KERNEL);
> +	if (!bus_data)
> +		return -ENOMEM;
> +
> +	bus_data->capacity = capacity;
> +
> +	return ad5686_probe(dev, info, spi->modalias, &ad5686_spi_ops, bus_data);
>  }

-- 
With Best Regards,
Andy Shevchenko



