Return-Path: <devicetree+bounces-312388-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NrZRGigSMWqTbAUAu9opvQ
	(envelope-from <devicetree+bounces-312388-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 11:06:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1E968D5E3
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 11:06:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SpoUqeVm;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312388-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312388-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69C35307E03C
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 09:06:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9561F410D0F;
	Tue, 16 Jun 2026 09:06:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B2853B42E0;
	Tue, 16 Jun 2026 09:06:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781600805; cv=none; b=Q75r4rNdaqbuXCizrt0JBmmCP7vKIJmlVrqX1N5i0b84rmJ76E8iSMndmdapmyUmxE6vvpDtK+VpL1NCyxRhjr/kCYEwwnlehGSWWXM8iBVckAjbR/aXSS5vbKlaR+xnWm5jYkCq0sUH9y2gGhpeNSCkhmUcOtts72syi9w6yyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781600805; c=relaxed/simple;
	bh=bB9Bam2Axx2bksZq+8g8hmEcVk0SMTEUNNk16RqbDcY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gG/0E5Hs8cjDuPODoCOzZK/nMmUYQEaB89FAmakUkzxGEyJUUznwKltkMV7KGmzzNoIC84gPU8FQHCmpOTsaxtS61GoOUbTyt7NURXDyePJLfyZ1Q85n9gsAUL5hzQAeSkdBeI4kcmmGT1WtYmkzWlFmJbThK75vnuQugHjkmTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=SpoUqeVm; arc=none smtp.client-ip=198.175.65.16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781600805; x=1813136805;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=bB9Bam2Axx2bksZq+8g8hmEcVk0SMTEUNNk16RqbDcY=;
  b=SpoUqeVmyP23qR2Yp8avD5eiR3J92DjWEkBHjIhQ8+d3NtM0aiVAmaPX
   nk1gVdCxiYFPNDTChqWAX/rykgo2h+GuhGMsmCHe64BKPmEtJtd932wYq
   +yiofrxkjLlq1GV3LBD1stz5QrUreE78gp9AQya1VrDi54mx063J0W6QV
   H1O6s4IwXs+/XbRkkv83V9y3JWxDFoOVsnd/gqCTeshlORy0Fz1kBEWYl
   SrT9InRPv/ofaiInK/Bl4TCeIbJdyyFsv/qFKtD+4lRV3rYS8oDU8b5a9
   aQK/zA2WkDWHsFCzf7MFFEwZXJIrImOXBapZawBEuf9YA1CZ/KIiFr8Yp
   Q==;
X-CSE-ConnectionGUID: 5Bd8Wj1QSSiGptcUs3810Q==
X-CSE-MsgGUID: InTpZOGWTaWw1PwBNmgKLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82558849"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; 
   d="scan'208";a="82558849"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 02:06:44 -0700
X-CSE-ConnectionGUID: GayzKkKyQl6UTa8KXRnl/w==
X-CSE-MsgGUID: Xh4q4IjyS8WaN5UAOcp9+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; 
   d="scan'208";a="246832393"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.153])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 02:06:39 -0700
Date: Tue, 16 Jun 2026 12:06:36 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: David Lechner <dlechner@baylibre.com>
Cc: Jakub Szczudlo <jakubszczudlo40@gmail.com>, linux-iio@vger.kernel.org,
	andy@kernel.org, antoniu.miclaus@analog.com, conor+dt@kernel.org,
	devicetree@vger.kernel.org, duje@dujemihanovic.xyz,
	jic23@kernel.org, jishnu.prakash@oss.qualcomm.com,
	jorge.marques@analog.com, krzk+dt@kernel.org, linusw@kernel.org,
	linux-kernel@vger.kernel.org, marcelo.schmitt@analog.com,
	mazziesaccount@gmail.com, mike.looijmans@topic.nl,
	nuno.sa@analog.com, robh@kernel.org, sakari.ailus@linux.intel.com,
	wens@kernel.org, joshua.crofts1@gmail.com
Subject: Re: [PATCH v3 2/3] iio: adc: Add ti-ads1110 support to ti-ads1100
 driver
Message-ID: <ajESHET8J0PV8jw3@ashevche-desk.local>
References: <20260613190957.654798-1-jakubszczudlo40@gmail.com>
 <20260613190957.654798-3-jakubszczudlo40@gmail.com>
 <43e4c4f4-0b13-4331-80ce-7353408c78f5@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <43e4c4f4-0b13-4331-80ce-7353408c78f5@baylibre.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312388-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:jakubszczudlo40@gmail.com,m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:antoniu.miclaus@analog.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:duje@dujemihanovic.xyz,m:jic23@kernel.org,m:jishnu.prakash@oss.qualcomm.com,m:jorge.marques@analog.com,m:krzk+dt@kernel.org,m:linusw@kernel.org,m:linux-kernel@vger.kernel.org,m:marcelo.schmitt@analog.com,m:mazziesaccount@gmail.com,m:mike.looijmans@topic.nl,m:nuno.sa@analog.com,m:robh@kernel.org,m:sakari.ailus@linux.intel.com,m:wens@kernel.org,m:joshua.crofts1@gmail.com,m:conor@kernel.org,m:krzk@kernel.org,m:joshuacrofts1@gmail.com,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org,analog.com,dujemihanovic.xyz,oss.qualcomm.com,topic.nl,linux.intel.com];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ashevche-desk.local:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BB1E968D5E3

On Mon, Jun 15, 2026 at 05:29:17PM -0500, David Lechner wrote:
> On 6/13/26 2:09 PM, Jakub Szczudlo wrote:
> > Add ADS1110 support that have faster datarate than ADS1100, it also uses
> > internal voltage reference of 2.048V for measurement.

...

> > +#define ADS1100_MAX_DRDY_TIMEOUT	7500000
> 
> Always nice to include the units in the identifier name.
> 
> ADS1100_MAX_DRDY_TIMEOUT_us

I think for seconds unit we stuck with capital letters.
But I appreciate the attempt.

-- 
With Best Regards,
Andy Shevchenko



