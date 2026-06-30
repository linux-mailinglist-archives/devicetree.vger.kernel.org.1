Return-Path: <devicetree+bounces-317727-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Zvn1Cnq1Q2pDfgoAu9opvQ
	(envelope-from <devicetree+bounces-317727-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:24:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B9D6E4225
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:24:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="EDpfygE/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317727-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-317727-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 08931301AB5B
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:18:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B995840B381;
	Tue, 30 Jun 2026 12:18:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA45526F2B0;
	Tue, 30 Jun 2026 12:18:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782821891; cv=none; b=o0LC2TxPR1A4yTB6E6nHvIPlb5xFvpHcEa0+Bw3/jXx0ZrwC6AMWxKNp4/HOB9qWhJBVRlHXzdS+hOwTDOVBFPCJhDYOPq/pX9LcwNuHh8UvTR5wR/k0bh8B7Tslak6nrWLby/KuMA+xde+WE9av3nlsTu472SNFzkD52nZQgl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782821891; c=relaxed/simple;
	bh=L6xp0DTy9IxxrWFDObsUK7MAMrgrWXdOPmbbvUmwO7U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hMX9FzmXDrqf3Mpi/IJsXHLT2+ojaJTCU6qP0kysugc7ASUJw5Cjudp+muOpaYEl/eWE8GW8/FfZOBrsugOqZi6/NjHlUgCzpsjLSu2xRWLNuI3we7AmSg/PwbOSC/c8vg9H1kfnlzqCqpf0g3ujXUT8BnKlxN6bjTkZyb1ZYtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=EDpfygE/; arc=none smtp.client-ip=198.175.65.9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782821890; x=1814357890;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=L6xp0DTy9IxxrWFDObsUK7MAMrgrWXdOPmbbvUmwO7U=;
  b=EDpfygE/O4OTau6UPILamTlY126TvQxPYcOlNnSVqutvLv78JdZ8Ejp4
   qjVAvyYk6kKaJ91+qTjdRC4XHqbLjWzDfGBDs/M9UuavzulpfDROTQva9
   GkvcOhA7nblq7w3LtC5Af3ZukDQDr8Rk8vadJd3koszCKlH2YpHiPVud8
   94cgSEkUIURCen06rGlVoJ+iO/a0esbARi6cEYLvy0WXMqDT9YLS8chjn
   +ExYvaRFd7B6zwPFt+8C6MVkKYiLZEXCLSJioDf1cQGcK0QgQYy2wD1DI
   97afpFGPrbACObgo8PA+VaPO41j8ch7JXKU/v8orss/YvR2LpTiTiOSgb
   Q==;
X-CSE-ConnectionGUID: giQa+t2jTWmoPmJRZxlNww==
X-CSE-MsgGUID: IZlnac6sRe6E0CroEHzcKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="106325472"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; 
   d="scan'208";a="106325472"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2026 05:18:09 -0700
X-CSE-ConnectionGUID: W0felgykRje2Q5K6ZMNsyA==
X-CSE-MsgGUID: XVi5LnrERTuYihhS0ukT+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; 
   d="scan'208";a="282312161"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.245.96])
  by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2026 05:18:04 -0700
Date: Tue, 30 Jun 2026 15:18:01 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Varshini Rajendran <varshini.rajendran@microchip.com>
Cc: ehristev@kernel.org, jic23@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev, srini@kernel.org,
	marcelo.schmitt@analog.com, jorge.marques@analog.com,
	mazziesaccount@gmail.com, Jonathan.Santos@analog.com,
	jishnu.prakash@oss.qualcomm.com, antoniu.miclaus@analog.com,
	duje@dujemihanovic.xyz, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 04/13] iio: adc: at91-sama5d2_adc: adapt the driver
 for sama7d65
Message-ID: <akOz-Q7Hvxbyzbl7@ashevche-desk.local>
References: <20260630093603.38663-1-varshini.rajendran@microchip.com>
 <20260630093603.38663-5-varshini.rajendran@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260630093603.38663-5-varshini.rajendran@microchip.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317727-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:varshini.rajendran@microchip.com,m:ehristev@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nicolas.ferre@microchip.com,m:alexandre.belloni@bootlin.com,m:claudiu.beznea@tuxon.dev,m:srini@kernel.org,m:marcelo.schmitt@analog.com,m:jorge.marques@analog.com,m:mazziesaccount@gmail.com,m:Jonathan.Santos@analog.com,m:jishnu.prakash@oss.qualcomm.com,m:antoniu.miclaus@analog.com,m:duje@dujemihanovic.xyz,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,microchip.com,bootlin.com,tuxon.dev,gmail.com,oss.qualcomm.com,dujemihanovic.xyz,vger.kernel.org,lists.infradead.org];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:from_mime,ashevche-desk.local:mid,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 26B9D6E4225

On Tue, Jun 30, 2026 at 03:05:54PM +0530, Varshini Rajendran wrote:
> Add support for sama7d65 ADC. The differences are highlighted with the
> compatible. The calibration data layout is the main difference.
> 
> Update Kconfig help text to mention SAMA7 SoC family support.

...

> +static const struct at91_adc_platform sama7d65_platform = {
> +	.layout = &sama7g5_layout,
> +	.adc_channels = &at91_sama7g5_adc_channels,
> +	.nr_channels = AT91_SAMA7G5_SINGLE_CHAN_CNT +
> +		       AT91_SAMA7G5_DIFF_CHAN_CNT +
> +		       AT91_SAMA7G5_TEMP_CHAN_CNT,
> +	.max_channels = ARRAY_SIZE(at91_sama7g5_adc_channels),
> +	.max_index = AT91_SAMA7G5_MAX_CHAN_IDX,
> +	.hw_trig_cnt = AT91_SAMA7G5_HW_TRIG_CNT,
> +	.osr_mask = GENMASK(18, 16),
> +	.oversampling_avail = { 1, 4, 16, 64, 256, },

In this case the inner trailing comma is not needed (because everything is on
the same line).

> +	.oversampling_avail_no = 5,
> +	.chan_realbits = 16,
> +	.temp_sensor = true,
> +	.temp_chan = AT91_SAMA7G5_ADC_TEMP_CHANNEL,
> +	.temp_calib_layout = &sama7d65_temp_calib,
> +};

-- 
With Best Regards,
Andy Shevchenko



