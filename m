Return-Path: <devicetree+bounces-325715-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id i+E3GKsWVWpWjwAAu9opvQ
	(envelope-from <devicetree+bounces-325715-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 18:47:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A2D74DBB4
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 18:47:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GBZlAVHC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325715-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325715-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C248830086AF
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 16:47:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F19C7437475;
	Mon, 13 Jul 2026 16:46:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047F027F4F5;
	Mon, 13 Jul 2026 16:46:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783961219; cv=none; b=QyoPPv2sxM7hj6loyJ0BW8NaI2eM0BlTHWTrphN9GJh8Uv3ZJNfBzms4PSysfK1Dl1RcnP4ujCceY9yGFrFT/9lkgNJla31+JOW1ccqspL9bzb8YHi4dGtIynYk2iSuiQIRp2wGmxjREmBpB0tdWuqyr0MOXiGndXGGE801Ka5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783961219; c=relaxed/simple;
	bh=QFHGVLbk7PbjQr6lPVYqzqXCkmmxbqIw0KlG3ygIdu0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O4nir+jRT02pimCNfmHdYFDQJjnK0aD5eZJGjP3CXc0I4tb06x/Cl/r1ljaaePt3BhHzcqytYO6VK9bZ6FNVW8K2AI0A8eC/4eVJ3ES4OR7nkOrLilFgiDgsyRDmy04m7O0g7iVwbyvI2b4TeANnF5UlvDF1QTyhbVd5aQ8JBJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=GBZlAVHC; arc=none smtp.client-ip=198.175.65.11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783961218; x=1815497218;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=QFHGVLbk7PbjQr6lPVYqzqXCkmmxbqIw0KlG3ygIdu0=;
  b=GBZlAVHCQcevzCtiAgGmSmozVleqHKfkp6JfFbV35gch0t9TFa9by2sn
   YOYbZPtdi1UxQgJ7gdvVG6wxog7bCzOYfxckNhN87TsZPwtYnjIpwt1+A
   EF7qd8X+gRJ/K230u0BI2se972TvpxyvcS2CvXRUSk1U7xOPCpdH8R0Lp
   tXya9dkJ3qlGhbz3tS/VPuKwv/yK2yL87r7ZnVmXrcKrajW10n6BfrgUY
   iAWpBvVHYVwsMSoolLcoidBlF7EnTgXW0A4QGCVkbjqVQcag4TGVlJMBR
   9/G7/NEngE8wgXME3+ZICMinZT2A3gmVTvvWA5GE8Eu1dJR/BePifqIyP
   w==;
X-CSE-ConnectionGUID: bP7D2z4ATH+RNW4E8fxtqw==
X-CSE-MsgGUID: NhkP9syWSamsI+sh8lgEgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="94928177"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; 
   d="scan'208";a="94928177"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jul 2026 09:46:58 -0700
X-CSE-ConnectionGUID: y8tUBqfhSxOUCESfGOlx2A==
X-CSE-MsgGUID: dhbQ+51JQGOvVa9rQDMtFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; 
   d="scan'208";a="278863864"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.245.88])
  by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jul 2026 09:46:53 -0700
Date: Mon, 13 Jul 2026 19:46:51 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Cc: David Lechner <dlechner@baylibre.com>,
	Michael Auchter <michael.auchter@ni.com>, linux@analog.com,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH v7 4/7] iio: dac: ad5686: implement new sync() op for the
 spi bus
Message-ID: <alUWexO7KTa2_Evu@ashevche-desk.local>
References: <20260710-ad5686-new-features-v7-0-1bcc8c280e4d@analog.com>
 <20260710-ad5686-new-features-v7-4-1bcc8c280e4d@analog.com>
 <931fe63d-d200-4b79-9e17-fa48c8de7f29@baylibre.com>
 <satyxehagxb4zdqfmni7b57ipwyk6bmu5opkfquz2ie7ohne2s@jbobjkgdp2pk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <satyxehagxb4zdqfmni7b57ipwyk6bmu5opkfquz2ie7ohne2s@jbobjkgdp2pk>
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
	TAGGED_FROM(0.00)[bounces-325715-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:455.rodrigo.alencar@gmail.com,m:dlechner@baylibre.com,m:michael.auchter@ni.com,m:linux@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:Michael.Hennerich@analog.com,m:jic23@kernel.org,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:kees@kernel.org,m:gustavoars@kernel.org,m:455rodrigoalencar@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	HAS_ORG_HEADER(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,ashevche-desk.local:mid,vger.kernel.org:from_smtp,intel.com:from_mime,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 54A2D74DBB4

On Mon, Jul 13, 2026 at 05:44:28PM +0100, Rodrigo Alencar wrote:
> On 11/07/26 10:07, David Lechner wrote:
> > On 7/10/26 6:20 AM, Rodrigo Alencar via B4 Relay wrote:

...

> > > +	if (bus_data->size >= bus_data->capacity)
> > > +		return -E2BIG;
> > > +
> > > +	if (bus_data->size)
> > > +		bus_data->xfers[bus_data->size - 1].cs_change = 1;
> > > +	else
> > > +		spi_message_init(&bus_data->msg);
> > > +
> > > +	xfer = &bus_data->xfers[bus_data->size];
> > 
> > Why not a local variable for st->data[bus_data->size] too so we don't
> > have to write it so many times?
> 
> The union is anonymous.. is it fine to use:
> 
> 	typeof(st->data[0]) *buf;

*If* you will go this way, use 'auto' keyword instead of typeof().

> 	...
> 	buf = &st->data[bus_data->size];

-- 
With Best Regards,
Andy Shevchenko



