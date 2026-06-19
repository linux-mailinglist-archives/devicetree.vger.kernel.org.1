Return-Path: <devicetree+bounces-313676-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GOZVMlDkNGrUjQYAu9opvQ
	(envelope-from <devicetree+bounces-313676-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 08:40:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B086A426B
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 08:40:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=dZ1GQFkS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313676-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313676-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7F9E13040AB2
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 06:40:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEA95352C2C;
	Fri, 19 Jun 2026 06:40:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE5D31E825;
	Fri, 19 Jun 2026 06:40:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781851213; cv=none; b=fq+dSKEv/NovNWDzB+jVg7iIjXZ1aNpQSXc0uZ+otfLbNYNZdhs8KfO6jk68SKz9eVFcX00Ilarr6fmcVNxDjFQ9Lr/eMx3Q3d5jlNvvlkPkXo/EUtXBekDKjITWwbCBLPVlYTUCly9fh0wKFBntqV6DhnHk8w5tFrBKhwdSm6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781851213; c=relaxed/simple;
	bh=cq3cEgExjy/ndV3bLTDz8OhSvHX2s/xyfXxLZHOPDDg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NtajReVLNo+ujQNOmhT+2MOr/Q2TRoS64BFMHs1XsWCjygknfQ/RnkOeeA2ggNGkijoKD3xHO9i2JGtlGpCkE6nQrdNHbhcGiZMB5KMCnc5xxgXKA8QQVRpM4KyPJnk6Te3iw34frIZ7Sd7kmAntgRZjAUoTgykh5Nk408DhTo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=dZ1GQFkS; arc=none smtp.client-ip=192.198.163.11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781851211; x=1813387211;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=cq3cEgExjy/ndV3bLTDz8OhSvHX2s/xyfXxLZHOPDDg=;
  b=dZ1GQFkSXq9sglLU5bgI7MAVkrj6hxzzlRo0Uy/KUuJ52Dw9uw9P2XLv
   mluSv1iHPXtOK+AUU2LUWhbA20gBhOIcvduw5JfirzHmVvPyBSeBD6SWh
   UA0+tW+koFJqlTu81qwKu8IJGfSN/4JFL8ViGhCj9cOAR91xgfyGuuto5
   Do/iIUVUFAZqHl2QQql/jUruxAJ+GPgwkGw1P8O8VUDTFUoX//Tt+QdVQ
   nKqdNGbXfDuGqGqkoGH1rh0EtzSApJ2j86JgRKFRRBK4wkmHowHi3G0fD
   y66BBYthdhHcaazKLAnqK5E4SNsqcOFBAdW6VKxn5jZkZMbrK1pD7d9yL
   Q==;
X-CSE-ConnectionGUID: DDSYgdA9QfGax4zB4OS4dw==
X-CSE-MsgGUID: 4VH/eiuMTSqjxuXEJs9ciw==
X-IronPort-AV: E=McAfee;i="6800,10657,11821"; a="93296906"
X-IronPort-AV: E=Sophos;i="6.24,213,1774335600"; 
   d="scan'208";a="93296906"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jun 2026 23:40:10 -0700
X-CSE-ConnectionGUID: fJkWZODdRR2GBQHVPzVKzg==
X-CSE-MsgGUID: fcMWO612Q+etxoERFoDBEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,213,1774335600"; 
   d="scan'208";a="247426134"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.170])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jun 2026 23:40:07 -0700
Date: Fri, 19 Jun 2026 09:40:04 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Nikhil Gautam <nikhilgtr@gmail.com>
Cc: linux-iio@vger.kernel.org, jic23@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] iio: magnetometer: add support for Melexis
 MLX90393
Message-ID: <ajTkRHhhlpgWLTGU@ashevche-desk.local>
References: <20260618160141.11409-1-nikhilgtr@gmail.com>
 <20260618160141.11409-3-nikhilgtr@gmail.com>
 <ajRGf0YT-fCZA1ih@ashevche-desk.local>
 <98a08d17-5b70-4f4d-bf52-fe1073fde2b6@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <98a08d17-5b70-4f4d-bf52-fe1073fde2b6@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-313676-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:nikhilgtr@gmail.com,m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B5B086A426B

On Fri, Jun 19, 2026 at 02:36:00AM +0530, Nikhil Gautam wrote:
> On 19-06-2026 12:56 am, Andy Shevchenko wrote:
> > On Thu, Jun 18, 2026 at 09:31:41PM +0530, Nikhil Gautam wrote:
> 
> Thank you very much for taking the time to do such a thorough review of this
> patch series.
> 
> Your detailed comments and suggestions are very helpful.
> I'll address the issues you've pointed out, update the cover letter to
> better explain the design decisions,
> and incorporate the requested coding style and API changes in the next
> revision.
> 
> I appreciate your review and feedback.

You're welcome!

...

> > > +config MLX90393
> > > +	tristate "MELEXIS MLX90393 3-axis magnetometer sensor"
> > > +	depends on I2C
> > Why not a regmap?
> The MLX90393 uses both register-based and command-based transactions.
> Since regmap does not naturally model the command-based interface,
> using it would require workarounds such as virtual registers or bypass
> paths.
> A custom transport abstraction is therefore simpler and better suited for
> this device.
> 
> I already discussed this on thread, Link :
> https://lore.kernel.org/linux-iio/20260423121834.4244-1-nikhilgtr@gmail.com/

Right, but please, put a summary in the commit message as it's  important
detail of implementation choice.

...

> > > +	for (unsigned int i = 0; i < MLX90393_OSR_MAX;  i++)
> > > +		if (mlx90393_osr_avail[i] == val) {
> > > +			*osr = i;
> > > +			return 0;
> > > +		}
> > Missing {}.
> Agreed, removed intentionally as single statement, will add as per
> guidelines all the places
> where needed

It's also better to have them when it might be ambiguous. And also when even
a single statement takes a few lines. TL;DR: Also apply a common sense.

-- 
With Best Regards,
Andy Shevchenko



