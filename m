Return-Path: <devicetree+bounces-309847-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TP9QEcpsKWqaWgMAu9opvQ
	(envelope-from <devicetree+bounces-309847-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 15:55:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5B5669FD8
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 15:55:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=lY5PYGPn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309847-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309847-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6F3833122259
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 13:51:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74514408611;
	Wed, 10 Jun 2026 13:51:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0E92417DE;
	Wed, 10 Jun 2026 13:51:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781099503; cv=none; b=BRgS5mWfrbFLCkCyl+wvMJeFPjTHVM6sJK7SXSKdMokkvklxdquPpehgMgjhNouIvT+MbLhqgT6lTUol999hbZlWLT1b7Uvvitce6hMcuBi5ur7JLeMIP8VJujwUw70DM2YB+wvnM202V3COVNLKgx4H3E/ew9cFdD64A9rxfnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781099503; c=relaxed/simple;
	bh=6skzfumNWzE564rtOLejk/ps3P/bfW+GeTsBw0d9O84=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d3EHNOQEJ3jBcFFR8WX+PxhCMF/s6NDeIe4s4p1PjrfADByN8cHyciAiLlsZzXifxHM/hyBJVCdaKlXEP8zDV58jmmrIgoUMvLolaoLi/J4oSL1a6Fm9QOrbQSPFzeYTcosBZzIV1HcgsUcwNydKg+XKr+/PVVQxWq5bpiZQHI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=lY5PYGPn; arc=none smtp.client-ip=192.198.163.7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781099502; x=1812635502;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=6skzfumNWzE564rtOLejk/ps3P/bfW+GeTsBw0d9O84=;
  b=lY5PYGPnBTckFWL2tjdgbI6K6OdgEQ0v/5sog5FjlBcFS/rdtdeV61x4
   gGhf2zWTMeHyHEMbz0UoSydPL69eVWKqMmcuNgudDiffnKQrXSVoqBpVT
   f8fzsqu9kuZxFltcUU7yVklKKcHVJuMKtELrTWTnz3Iknfyg3gf0yAYIK
   6ZO91PGxniX9tI2flWicZr4JhGgc4z0HHvoMoUpeV/aYLC9vJr+oNkouA
   4TTzM3cUr6iMDAOnRvKTyJOSmyF5a8boUMvSM42pcxAIA02a+NDw+Mp5p
   jjQ360ANo26hxm6qANMjP7BAvY6o55kHPs9L2Jcnfu+I+JuaSMcMtDu78
   A==;
X-CSE-ConnectionGUID: CfJY3G1eRTO9J2YZFm289A==
X-CSE-MsgGUID: XGy6qYvRRCqJ3CZiEj0Lqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="107327663"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; 
   d="scan'208";a="107327663"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jun 2026 06:51:41 -0700
X-CSE-ConnectionGUID: ElMuKEA/T6KBrl7jj3JLlg==
X-CSE-MsgGUID: ewNqsHE0RVW1cw9KIaExaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; 
   d="scan'208";a="239831495"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost) ([10.245.244.38])
  by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jun 2026 06:51:38 -0700
Date: Wed, 10 Jun 2026 16:51:36 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: "Erim, Salih" <salih.erim@amd.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Conall O'Griofa <conall.ogriofa@amd.com>,
	Michal Simek <michal.simek@amd.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Salih Erim <erimsalih@gmail.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 4/5] iio: adc: versal-sysmon: add threshold event
 support
Message-ID: <ailr6BE9CN7qWHZV@ashevche-desk.local>
References: <20260606051707.535281-1-salih.erim@amd.com>
 <20260606051707.535281-5-salih.erim@amd.com>
 <aiUeVs_FoI9vV1Hd@ashevche-desk.local>
 <0f8f431f-af21-4bad-bff2-e6cde078bd41@amd.com>
 <aihN7O9noqEa5PlA@ashevche-desk.local>
 <2b3b6577-d850-4102-a77c-8e0f82082a3b@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2b3b6577-d850-4102-a77c-8e0f82082a3b@amd.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309847-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:jic23@kernel.org,m:andy@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:conall.ogriofa@amd.com,m:michal.simek@amd.com,m:linux@roeck-us.net,m:erimsalih@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,amd.com,roeck-us.net,gmail.com,vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,intel.com:dkim,intel.com:from_mime,ashevche-desk.local:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AB5B5669FD8

On Wed, Jun 10, 2026 at 12:46:52PM +0100, Erim, Salih wrote:
> On 09/06/2026 18:31, Andy Shevchenko wrote:
> > On Sun, Jun 07, 2026 at 10:02:47PM +0100, Erim, Salih wrote:
> > > On 07/06/2026 08:31, Andy Shevchenko wrote:
> > > > On Sat, Jun 06, 2026 at 06:17:06AM +0100, Salih Erim wrote:

...

> > > > > +     ret = regmap_read(sysmon->regmap, upper_off, &upper_reg);
> > > > > +     if (ret)
> > > > > +             return ret;
> > > > > +
> > > > > +     ret = regmap_read(sysmon->regmap, lower_off, &lower_reg);
> > > > > +     if (ret)
> > > > > +             return ret;
> > > > 
> > > > Half of the IO accessors have no error checks, these do.
> > > > Why is this inconsistency?
> > > 
> > > The regmap calls in sysmon_unmask_worker and sysmon_iio_irq
> > > have no error checks because they run in contexts where errors
> > > cannot be propagated (workqueue, hardirq). The init path checks
> > > errors because it can return them to the caller. Will add a
> > > comment explaining this.
> > 
> > But the error checks may be used to modify flow inside the respective functions.
> 
> Accepted. Will add error checks in sysmon_unmask_worker and
> sysmon_iio_irq to bail out early on regmap failure instead of
> operating on undefined data.

Same comment as per v5, up to you as failing MMIO on HW level is a sign of
something bigger.

-- 
With Best Regards,
Andy Shevchenko



