Return-Path: <devicetree+bounces-318298-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id L66lIC/fRGqv2QoAu9opvQ
	(envelope-from <devicetree+bounces-318298-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 11:34:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF196EBA13
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 11:34:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=auGels14;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318298-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318298-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5D7963009F01
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 09:34:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E2673E5EEA;
	Wed,  1 Jul 2026 09:34:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D8D28CF6F;
	Wed,  1 Jul 2026 09:34:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782898472; cv=none; b=hSrhnLIDJLrfjAqt3qWc2QV7LXnHaNRidbOeCRKj0VrMZ5INeUaGL/EnvvSBCzJBdWP/0A0WCE7twIZiqGFz5yjHLcMJ5gdCzWWKSCHWfoyASh4lMDcCG2CQOTI3C4zQvLSP1CAexHQIgO5W9NEgUhe4+JlvhCr+d1/JFV2AweE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782898472; c=relaxed/simple;
	bh=VdVAQH51z1JneD4lUy1OLITxgDH/WGQepnDJf3i1SLM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VV0ItHtl22v+HpT1I3sArLBrZf+GAgQoHtcvaCQS2AMXRLMqnZBqi1YtIEWMMAvcD1g3ii+kToRDwG7c66WEluloZzOv0zq/hjGDN5EUqs25DHo3KjbmITjzXPb1VPDwvLdMy1y5mirWQ9sQ7kkzhbyMJ3pmAcWV7lzbEOzWh1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=auGels14; arc=none smtp.client-ip=198.175.65.10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782898471; x=1814434471;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=VdVAQH51z1JneD4lUy1OLITxgDH/WGQepnDJf3i1SLM=;
  b=auGels149RM9ZZ6mqRgzLs5y6ZxsGFORAqiv0NwE50nAFjFXSdJMpK5W
   GIgI978KSflkliuI39VZXcx6Vnk5Rv3+//jss2ZtMqbW1B60KCvRXKTTb
   cdpNPlLv9BmJqh5oea+FlLNhTZYoTOSvKoPAptMKBKfqNUbo1oxxJgIqj
   ZHK1Wx4fdTtkZekHj7hl4SEI+juO1UKHkV8HKsNenf1Y7NIbypEzww0Aq
   FVvjM7zztDUMqwRKrk+fjpjXSM+owL9WfB7olGWKie0a199F8qIJZCoLO
   A3Yy1YuzOAjUNgzfW/tgVveu35hXy2vVkn71tk/1N9S9k9ujk4AsaRudb
   w==;
X-CSE-ConnectionGUID: biUyjRYbTsKWKLF2p9rjrw==
X-CSE-MsgGUID: oMt0VwzbRqyO+dwnSy7jfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="101052593"
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; 
   d="scan'208";a="101052593"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jul 2026 02:34:31 -0700
X-CSE-ConnectionGUID: 9y6Pkw4RQseSVmAMN5Onkg==
X-CSE-MsgGUID: sI1qyMCQRG2+RlL2SRKAMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; 
   d="scan'208";a="246160470"
Received: from conormcd-mobl2.ger.corp.intel.com (HELO localhost) ([10.245.244.65])
  by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jul 2026 02:34:27 -0700
Date: Wed, 1 Jul 2026 12:34:25 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>
Cc: Lukas Metz <lukas.metz@gmx.net>, Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] iio: dac: dac8163: Add driver for DAC8163
Message-ID: <akTfIdkH10Qq4G16@ashevche-desk.local>
References: <20260623-dac8163-work-v1-0-5b508158faa0@gmx.net>
 <20260623-dac8163-work-v1-1-5b508158faa0@gmx.net>
 <akP2RSriqaN8qqQT@monoceros>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <akP2RSriqaN8qqQT@monoceros>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318298-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:u.kleine-koenig@baylibre.com,m:lukas.metz@gmx.net,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmx.net,kernel.org,baylibre.com,analog.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,ashevche-desk.local:mid,intel.com:dkim,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6CF196EBA13

On Tue, Jun 30, 2026 at 07:03:01PM +0200, Uwe Kleine-König wrote:
> On Tue, Jun 23, 2026 at 06:07:27PM +0200, Lukas Metz wrote:

...

> > +	{ "dac7562", (kernel_ulong_t)&dacxx6x_chip_info_table[ID_DAC7562] },
> > +	{ "dac7563", (kernel_ulong_t)&dacxx6x_chip_info_table[ID_DAC7563] },
> > +	{ "dac8162", (kernel_ulong_t)&dacxx6x_chip_info_table[ID_DAC8162] },
> > +	{ "dac8163", (kernel_ulong_t)&dacxx6x_chip_info_table[ID_DAC8163] },
> > +	{ "dac8562", (kernel_ulong_t)&dacxx6x_chip_info_table[ID_DAC8562] },
> > +	{ "dac8563", (kernel_ulong_t)&dacxx6x_chip_info_table[ID_DAC8563] },
> 
> please also use named initializers, i.e.
> 
> 	static const struct spi_device_id dacxx6x_id_table[] = {
> 		{ .name = "dac7562", .driver_data = (kernel_ulong_t)&dacxx6x_chip_info_table[ID_DAC7562] },
> 		{ .name = "dac7563", .driver_data = (kernel_ulong_t)&dacxx6x_chip_info_table[ID_DAC7563] },
> 		{ .name = "dac8162", .driver_data = (kernel_ulong_t)&dacxx6x_chip_info_table[ID_DAC8162] },
> 		{ .name = "dac8163", .driver_data = (kernel_ulong_t)&dacxx6x_chip_info_table[ID_DAC8163] },
> 		{ .name = "dac8562", .driver_data = (kernel_ulong_t)&dacxx6x_chip_info_table[ID_DAC8562] },
> 		{ .name = "dac8563", .driver_data = (kernel_ulong_t)&dacxx6x_chip_info_table[ID_DAC8563] },
> 		{ }
> 	};

These lines are way too long in IIO. The usual approach in this case is to have
it split on per device standalone initialisers. At the end it will look like

	static const struct spi_device_id dacxx6x_id_table[] = {
		{ .name = "dac7562", .driver_data = (kernel_ulong_t)&dac7562_chip_info },
		{ .name = "dac7563", .driver_data = (kernel_ulong_t)&dac7563_chip_info },
		{ .name = "dac8162", .driver_data = (kernel_ulong_t)&dac8162_chip_info },
		{ .name = "dac8163", .driver_data = (kernel_ulong_t)&dac8163_chip_info },
		{ .name = "dac8562", .driver_data = (kernel_ulong_t)&dac8562_chip_info },
		{ .name = "dac8563", .driver_data = (kernel_ulong_t)&dac8563_chip_info },
		{ }
	};

-- 
With Best Regards,
Andy Shevchenko



