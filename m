Return-Path: <devicetree+bounces-309845-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id m4lrNnBsKWqKWgMAu9opvQ
	(envelope-from <devicetree+bounces-309845-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 15:53:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 58071669FA0
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 15:53:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="giAdZy/Y";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309845-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-309845-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E635830EA3D8
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 13:50:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B15CB408633;
	Wed, 10 Jun 2026 13:50:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA39B3F6C56;
	Wed, 10 Jun 2026 13:50:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781099426; cv=none; b=rKBLOoaR6V9zUJOEk7CjjjnROfqOsNoOSi09zyCdSSCbZB+suCG2X9HR23svThAyXQnnXuvEUq5SybbbA7evVW2cIUI/uvFrHYP+HsHovRjFPD5PKMn83Ab4dm1DNw7If6aq+7eY6ybhZl9qttoMPZUif+fHZv0QzsKJY81WGaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781099426; c=relaxed/simple;
	bh=YfOsFpE9E+ipgsJSCYYvh/HSKr18FxABdqARWwySwkQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z4K8TO8CD06LAnGJh68vtnH9F8JyDS1K+gKH1Y5N0q6+1dzIhWmnWKHhSXa3W9IZcU4HtqeoAjbb6xn3SloVvjVmzJUthpTHYaph12sxEtmJ+GAbr58XBFdqWx0niE+uoVG7aHIUFCZrpuuSTy19n9WvuI2n/0WuG4CeFgZgDHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=giAdZy/Y; arc=none smtp.client-ip=192.198.163.13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781099425; x=1812635425;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=YfOsFpE9E+ipgsJSCYYvh/HSKr18FxABdqARWwySwkQ=;
  b=giAdZy/YVBvE9vJnuhG0+fLQ9l36zczxe5QbIq6kY3a7sLhjmOXP7Jb3
   H4xT7HwlPY5PGLGRkzNm3UQQp7nVPJHanCOmY0TAp+3otITHuNOdUpKGD
   YwuCpchMd83sptFqHgHxpN+2J4MLCxevqXEX57nrm4iDUH7pL3zD4Md8m
   F2IkZMIV0IrMmcqmfmaT1OzmqqADHgGvshViRg++rzyDXM+ZTQopCe52b
   SbBWJivWX0L6YLQDRSgDD21T1DRJ2Lj3AWeLsmn7JY8ei8aa1+RcItOvT
   g9nVLPWW42d6KdXYxX+uX8R1ZuyGzUfuJ0VKtPOGpnYpXhvCfYVRdlcTp
   g==;
X-CSE-ConnectionGUID: XmVi74uCSveZ9nGEwtpYMg==
X-CSE-MsgGUID: mIjfILV7QtG/nZAoPNf2FQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="84462237"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; 
   d="scan'208";a="84462237"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jun 2026 06:50:24 -0700
X-CSE-ConnectionGUID: DbaCraTaR5K94vdrh6AaNg==
X-CSE-MsgGUID: IH3fSS2uSKyVac0Bv13ODw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; 
   d="scan'208";a="242044347"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost) ([10.245.244.38])
  by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jun 2026 06:50:20 -0700
Date: Wed, 10 Jun 2026 16:50:18 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: "Erim, Salih" <salih.erim@amd.com>
Cc: jic23@kernel.org, andy@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, conall.ogriofa@amd.com, michal.simek@amd.com,
	linux@roeck-us.net, erimsalih@gmail.com, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 4/5] iio: adc: versal-sysmon: add threshold event
 support
Message-ID: <ailrmin5zEZE0H6m@ashevche-desk.local>
References: <20260608183801.1257051-1-salih.erim@amd.com>
 <20260608183801.1257051-5-salih.erim@amd.com>
 <aihTVQIedgsFKeM7@ashevche-desk.local>
 <6378c39f-f368-4fd6-a51d-6fe057fd38c0@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6378c39f-f368-4fd6-a51d-6fe057fd38c0@amd.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309845-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,ashevche-desk.local:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 58071669FA0

On Wed, Jun 10, 2026 at 01:10:05PM +0100, Erim, Salih wrote:
> On 09/06/2026 18:54, Andy Shevchenko wrote:
> > On Mon, Jun 08, 2026 at 07:38:00PM +0100, Salih Erim wrote:

...

> > > +     /*
> > > +      * regmap errors are not checked here because the worker and IRQ
> > > +      * handler cannot propagate errors. The MMIO regmap uses fast_io
> > > +      * with direct readl/writel which cannot fail.
> > 
> > OK (but they can fail on HW level to the point of bus errors or so :).
> 
> Accepted. Will add error checks to modify flow on failure
> instead of just documenting why they're absent.

> > > +      */

I put smiley in the reply as I don't think it's practical. MMIO failing on HW
level is sign of something much bigger (usually) than just a random neutrino.

So, it's up to you, if you want to add error handling and skip, for example,
write-back of ISR.

-- 
With Best Regards,
Andy Shevchenko



