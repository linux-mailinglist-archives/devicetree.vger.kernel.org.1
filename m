Return-Path: <devicetree+bounces-317186-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IA9yJHmaQmoJ+gkAu9opvQ
	(envelope-from <devicetree+bounces-317186-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 18:16:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8622A6DD38A
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 18:16:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=kHNpBNlX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317186-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-317186-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7CA46300E6AD
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 16:11:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 899DF44B690;
	Mon, 29 Jun 2026 16:11:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF2D44A71D;
	Mon, 29 Jun 2026 16:11:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782749506; cv=none; b=c7oS3bsCWPgCaV9nb34Lq84cLJHdI1nzjuPqr9cX1gPASAFfd1UO1lKXII2tNLRXRUsPB1ju/Dy6RoTb8iU15Npf88P3qnmmIvAKZLfv4cWOVBhCKr57kYNY1GtUT0m9erkw49mNhVfi5nwwEy7rf8pfJ7GpmcN5CuZjBcu+0iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782749506; c=relaxed/simple;
	bh=k2rBsM5SdkD0PahKlRf1zlIPWlnImleJYr/aShQoNLE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VVBFpl3PadQt1LpONgHc80oxx+nY9N4wy1b8zv7TEdePQFRM4HZNdBkxjjT3ivmAp7MX4aujHqsgkOjBpHLrpaRhAfqlm0bFYvmANNPuX6vxotqp+I6l2cjR0ZZz65Tiy4WSHPDtPvWy31jZhZ2MAHSJ1mU20cPGVNzs2bQTaF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=kHNpBNlX; arc=none smtp.client-ip=198.175.65.12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782749506; x=1814285506;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=k2rBsM5SdkD0PahKlRf1zlIPWlnImleJYr/aShQoNLE=;
  b=kHNpBNlXhQj4/E7S7YPuj0FpErruG3cu+qzlG7gCBnifniZj8KrOx3+I
   SmcL3gqqPIfL6ITmeJs6s7wVD1z4nUSxVkVNiw4q3hwFRt9oMzv+h/FmZ
   4hX1ZWQy1xZE8VtDPK7VPHKy9BmjiinGHXx+ztEi5birAFOEvpPvdWX9c
   u66lTe2wC4CNh80A3GjXV7J6bEFVekTkoHEAJ3bvpDhBjmrksXgSBt/ol
   CgHnshbaSYrO5rgk+TSmoBDqMhb5thdLkrp24l3chdnWPYarZ98oxhYAO
   J+oWKrImVa+qikoy2dyAXZeli22u0zZSV0+nVfJWnQwXYnseDlcZMdkuh
   Q==;
X-CSE-ConnectionGUID: xjiP8tYgRBa61Ny7fz2teg==
X-CSE-MsgGUID: eSgb4OJqTa+C4tb5aybE1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="94938854"
X-IronPort-AV: E=Sophos;i="6.24,232,1774335600"; 
   d="scan'208";a="94938854"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jun 2026 09:11:45 -0700
X-CSE-ConnectionGUID: DtAxxEOlQGegv7F6X42NZw==
X-CSE-MsgGUID: UMWxxFmBQFyUk13glEiYNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,232,1774335600"; 
   d="scan'208";a="250302466"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.207])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jun 2026 09:11:41 -0700
Date: Mon, 29 Jun 2026 19:11:38 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: David Lechner <dlechner@baylibre.com>
Cc: Marcelo Schmitt <marcelo.schmitt1@gmail.com>,
	Marcelo Schmitt <marcelo.schmitt@analog.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, jic23@kernel.org, nuno.sa@analog.com,
	Michael.Hennerich@analog.com, andy@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, julianbraha@gmail.com
Subject: Re: [PATCH v4 2/4] iio: adc: ltc2378: Add support for LTC2378-20 and
 similar ADCs
Message-ID: <akKZOq6DV5x1FvAc@ashevche-desk.local>
References: <cover.1782397418.git.marcelo.schmitt@analog.com>
 <0abf862eeb277ae82262d09b11b1446f04c47be7.1782397418.git.marcelo.schmitt@analog.com>
 <9c6e0a74-c9c5-43ee-8eca-ae1667c51c32@baylibre.com>
 <akKHv7j22P6KczXb@debian-BULLSEYE-live-builder-AMD64>
 <3a96a20c-f435-4b98-9e95-26a28bd06e7b@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3a96a20c-f435-4b98-9e95-26a28bd06e7b@baylibre.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317186-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:marcelo.schmitt1@gmail.com,m:marcelo.schmitt@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jic23@kernel.org,m:nuno.sa@analog.com,m:Michael.Hennerich@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:julianbraha@gmail.com,m:marceloschmitt1@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,analog.com,vger.kernel.org,kernel.org];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:from_mime,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8622A6DD38A

On Mon, Jun 29, 2026 at 10:16:16AM -0500, David Lechner wrote:
> On 6/29/26 9:57 AM, Marcelo Schmitt wrote:

...

> It could use `_offl ? ...` in the macro for that. Not a big deal to me though.

Personally I am for a full spelling here.

...

> >>> +static int ltc2378_regulator_setup(struct device *dev, struct ltc2378_state *st)
> >>> +{
> >>> +	int ret;
> >>> +
> >>> +	ret = devm_regulator_get_enable_read_voltage(dev, "refin");
> >>> +	if (ret < 0 && ret != -ENODEV) {
> >>> +		return dev_err_probe(dev, ret, "failed to read refin regulator\n");
> >>> +	} else if (ret > 0) {
> >>
> >> Else is not needed here.
> > Why not?
> 
> The if returns unconditionally, so else is not needed. This is just a general
> principal.

Unfortunately in this case ENODEV will go further, I don't see full context,
but it may lead to something unexpected.

Personally I prefer the ladder of

	if (ret == -ENODEV)
		...
	else if (ret < 0)
		...
	else
		...

-- 
With Best Regards,
Andy Shevchenko



