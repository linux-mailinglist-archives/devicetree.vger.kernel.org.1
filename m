Return-Path: <devicetree+bounces-312459-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MurtDO8mMWpHcwUAu9opvQ
	(envelope-from <devicetree+bounces-312459-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 12:35:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B3368E5C2
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 12:35:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=AwEKyzpr;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312459-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-312459-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B9AD313A6B0
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:29:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A49A428828;
	Tue, 16 Jun 2026 10:29:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F4D1425CEE;
	Tue, 16 Jun 2026 10:29:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781605771; cv=none; b=igwNhG+NNkd+G5W1xPeug2mDJ0qvua0Aw4M8jjNPKsyvr/t7Jn9tgLpaXLJzFOQfLC1X7y3t31qMF02iJ6JlL36MyQx9vHNOzpm1EAYYej5R6XTFR4nnMKOoJu413B/gTf/iuyYTZjqYkXyUYQyaZxymm6OCzGB9xKQHLdyLsKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781605771; c=relaxed/simple;
	bh=ia2P2OC7AAQYxqoOSkKtV7D7+hDtxPaa3ogxt3k4Cw0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gdFlQf2j8eDshOH3HVUQ2LWzlCEAvdq7FSaina05kBeQTC9DExxGZOCgZkMJpi2o6/iyzigcxUHYVVeddYOw/rVs1+hwDo+cWiTbCxo/Swg0MSSmIZznErHaSYlUSMi+In8aZQ30NyyV9lx/dHaaVGxiGoCSqrVn7Gls5oV2MVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=AwEKyzpr; arc=none smtp.client-ip=192.198.163.10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781605770; x=1813141770;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ia2P2OC7AAQYxqoOSkKtV7D7+hDtxPaa3ogxt3k4Cw0=;
  b=AwEKyzprUkjnTmqNRD2bfQ1eaitR3NgmrL+voj/BCMlHbrTO0lIKTQzp
   AkJSupO7g2m59pi4QRKRb3/4/drBWZdkN2J5LnDvQI60uUTW878zloX11
   VuboZJQqDKQI2T2dk85MMGmtrrFPWbWRBk1rYOnITQFJRZ6tDchps27uF
   0CwWckbq6Urgy1YmVpAigB4k/REXvxq05kqoIZ0A0JA+RAMwhrDrjYBvO
   tggxOA5DSkzUn/kVnTHluJ+ENre6YApe0NofMEhLxl6w5RbMZpIBLWop4
   SyfyjJo7GezlStjUzG9xNcDYFOMvEXjCwwDqqubV3JcvwGEcyvAb2t5Lk
   w==;
X-CSE-ConnectionGUID: aP77m4PNTTS99UaZ6+llMA==
X-CSE-MsgGUID: QEUxiVB5THmNgpsOESBURQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93748019"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; 
   d="scan'208";a="93748019"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 03:29:29 -0700
X-CSE-ConnectionGUID: DNuA6ZG3R6GJzvcMdgVfGQ==
X-CSE-MsgGUID: cbyy/BpcS/ubSimPBa6nCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; 
   d="scan'208";a="247798375"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.153])
  by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 03:29:25 -0700
Date: Tue, 16 Jun 2026 13:29:22 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Joshua Crofts <joshua.crofts1@gmail.com>
Cc: Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>,
	rodrigo.alencar@analog.com,
	Michael Auchter <michael.auchter@ni.com>, linux@analog.com,
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
Subject: Re: [PATCH v3 05/12] iio: dac: ad5686: add support for missing power
 supplies
Message-ID: <ajElghg9rnqm5ukt@ashevche-desk.local>
References: <20260616-ad5686-new-features-v3-0-f829fb7e9262@analog.com>
 <20260616-ad5686-new-features-v3-5-f829fb7e9262@analog.com>
 <20260616113322.00005273@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260616113322.00005273@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-312459-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:joshua.crofts1@gmail.com,m:devnull+rodrigo.alencar.analog.com@kernel.org,m:rodrigo.alencar@analog.com,m:michael.auchter@ni.com,m:linux@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:Michael.Hennerich@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:kees@kernel.org,m:gustavoars@kernel.org,m:joshuacrofts1@gmail.com,m:devnull@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,ashevche-desk.local:mid,intel.com:dkim,intel.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 84B3368E5C2

On Tue, Jun 16, 2026 at 11:33:22AM +0200, Joshua Crofts wrote:
> On Tue, 16 Jun 2026 09:21:11 +0100
> Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:

...

> >  	st->use_internal_vref = ret == -ENODEV;
> >  	st->vref_mv = st->use_internal_vref ? st->chip_info->int_vref_mv : ret / 1000;

> I'd use a macro from <linux/units.h> instead of just doing / 1000.

In this case we use (MICRO / MILLI) as we don't have (yet?) the
MILLIVOLTS_PER_VOLT and so on. Feeling like you want to add those?

...

> > +	fsleep(5); /* power-up time */
> 
> I'd recommend using a macro to define the sleep time, removing
> the need for a comment.

OTOH macro might hide the actual value. The comment is fine, but I would extend
it with a reference to a data sheet page, table, section, et cetera.

-- 
With Best Regards,
Andy Shevchenko



