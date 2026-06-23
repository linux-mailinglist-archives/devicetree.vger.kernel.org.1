Return-Path: <devicetree+bounces-314944-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zviBMzrNOmpjHQgAu9opvQ
	(envelope-from <devicetree+bounces-314944-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 20:15:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9E16B964A
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 20:15:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=YMTSiFAZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314944-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314944-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C76873055D49
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 18:15:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44863392C32;
	Tue, 23 Jun 2026 18:15:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B119235AC00;
	Tue, 23 Jun 2026 18:15:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782238520; cv=none; b=dEvUmDV1pFtrKmHW7QIyMmegOrtHC/xAxz1Zg5VA/awQJCg13VJQJRge85gXU1chV7b6JIYL5FCvMWV9dvGrUzq3xYesWBVqlWmSu74ipH5daGiaq3meik1ZYDzzD3tbPSCaQe4naUshgQWTLlOQGJ1W8lxVLcp7XT+8ieccGVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782238520; c=relaxed/simple;
	bh=xcbEsbtbk3fPpranQsUZotb8RvoHkOQhoDEUoBvvYgE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hUbL17Ys3JxlIQaziKs42zObLao01XHm9+sjTwpZKkinBZIo2aYSaaU4SIjf54t9U099cuCCWeB28+58xW0XKludkAYcJVP4vQOOyXyw4wQtMVz1i8T2+IYZlGiRSUR/cW/Em+baiWyEliu/JTcKahFyD/PiADGgLBGbdQCLU+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=YMTSiFAZ; arc=none smtp.client-ip=192.198.163.13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782238519; x=1813774519;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=xcbEsbtbk3fPpranQsUZotb8RvoHkOQhoDEUoBvvYgE=;
  b=YMTSiFAZbPZiwdr2ug59iDfv3I4FuUqfVFzceUokCLjijg/vytXh8rHl
   rLWa5axSrl1L0IqhxnY0DWUQSI8M58ECOx5K5EquZBzLTMcKosn250Y6U
   U+6+axpa6UhbwOuuPdQV53St1s0kNaMjUTw0DcqiEAr+Az8P2Bnt3Ksqq
   HxPACukXNiC6iysw735FBH7YhJOzWi7QcIVSr5Oz3IYSM+8zWsmDQFI+O
   Kdc1+jSvMpbh8RhYb2CgjHucZXuur0FesmiHCIEn19p+maQDLzq/PqIEt
   NbOMm2nr4uSXAlv7OUBTn+QahDuglLutG4s7g8n05q20xfDTeorkgQmvw
   Q==;
X-CSE-ConnectionGUID: JAmZpQEcRO6TkqG0pz4vtg==
X-CSE-MsgGUID: y2R+7qd7RJemSLfX+xuF8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="85547060"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; 
   d="scan'208";a="85547060"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2026 11:15:18 -0700
X-CSE-ConnectionGUID: r0kpRXVzSiiF80Ar8mHq4w==
X-CSE-MsgGUID: d0ukBF0MT8aIr32sW04SQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; 
   d="scan'208";a="287715607"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.7])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2026 11:15:14 -0700
Date: Tue, 23 Jun 2026 21:15:11 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Varshini Rajendran <varshini.rajendran@microchip.com>
Cc: ehristev@kernel.org, jic23@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev, srini@kernel.org,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 02/12] iio: adc: at91-sama5d2_adc: rework temp
 calibration layout handling
Message-ID: <ajrNL2RcvpNMjjMj@ashevche-desk.local>
References: <20260623105944.128840-1-varshini.rajendran@microchip.com>
 <20260623105944.128840-3-varshini.rajendran@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260623105944.128840-3-varshini.rajendran@microchip.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314944-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:varshini.rajendran@microchip.com,m:ehristev@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nicolas.ferre@microchip.com,m:alexandre.belloni@bootlin.com,m:claudiu.beznea@tuxon.dev,m:srini@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2C9E16B964A

On Tue, Jun 23, 2026 at 04:29:34PM +0530, Varshini Rajendran wrote:
> Extend support to handle different temperature calibration layouts.
> 
> Add a temperature calibration data layout structure to describe indexes
> of the factors P1, P4, P6, tag, minimum length of the packet and the
> scaling factors for P1 (mul, div) which are SoC-specific instead of the
> older non scalable id structure. This helps handle the differences in the
> same function flow and prepare the calibration data to be applied. Add
> additional condition to validate the calibration data read from the
> NVMEM cell using the TAG of the packet.
> 
> Use cleanup helpers for NVMEM data buffer wherever applicable.

> +#define AT91_TEMP_CALIB_TAG_ACST	0x41435354

This seems like FourCC that can be represented in ASCII (I suppose "ACST").
Can you add a short comment on top to decode that?
/* ...blablabla... in ASCII "ACST" */

...

>  struct at91_adc_platform {
>  	const struct at91_adc_reg_layout	*layout;
> @@ -481,6 +504,7 @@ struct at91_adc_platform {
>  	unsigned int				chan_realbits;
>  	unsigned int				temp_chan;
>  	bool					temp_sensor;
> +	const struct at91_adc_temp_calib_layout	*temp_calib_layout;
>  };

Is this the best placement in accordance with `pahole` tool?

...

> -	u32 *buf;
> +	u32 *buf __free(kfree) = NULL;

This looks like a separate change. Why is it in this patch?

-- 
With Best Regards,
Andy Shevchenko



