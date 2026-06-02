Return-Path: <devicetree+bounces-305908-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zgV6N9xmH2q2lgAAu9opvQ
	(envelope-from <devicetree+bounces-305908-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 01:27:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F065632E65
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 01:27:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=jZ1bwulk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305908-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-305908-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 39876301414D
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 23:26:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D41F03B583E;
	Tue,  2 Jun 2026 23:26:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A3F2E7377;
	Tue,  2 Jun 2026 23:26:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780442785; cv=none; b=DfEvSkEbIV19pSfxYnEMJX2ScnGEM37M836jd4g6ychr9qq73GnDUnGIYThVMsvSGOd0/jFR7GbJadtzIiAet3ybpoZzoxgPwE9UJlHC8wkIiqF044cP0VoO8m7zlQ/AnIZlCEKSqbVapsMZ4XlYvbBGXpmlFudDbzJ4xbylej4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780442785; c=relaxed/simple;
	bh=QGQl6PrxfpFW7oYOLRcgzqLW2On5b2Tn6RWF+qE5paQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rJIsonfwZN1ZeMcIzR3b90rvOImzSd5FdC8WLxYMRRF50RAj5wXBzWs+BC2/wDsTtI+VpR1fOMQCm75N8SkZOCbc0YxsqsJDqCxJYsc7f4vdv8C6RRuW93Ou5GJI8e0NOJh1AnEZM4Q37wjdvbcs2GY+hlZnBO9k0I/QBZ6Mn7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=jZ1bwulk; arc=none smtp.client-ip=198.175.65.19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1780442784; x=1811978784;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=QGQl6PrxfpFW7oYOLRcgzqLW2On5b2Tn6RWF+qE5paQ=;
  b=jZ1bwulkppKtpO/BlwIlolN2N67plfbxCW2idhWRGpmqS4erz+0meeZ5
   mqL5AtKTMcwpRYBxdxui4EU1yZXXtXdiOFs3jS5yFEjoN/uehJ31XhGgP
   2oWDKAs17Xapykn6yD3zKhkwPloqxxDcM2rbZ93tnZb5uSglC425xAIOZ
   ySNSp4OEhU4nnITrvvCiFghnWgrz1MO88aAtR2dnqeORbLxPaBiQAFZSW
   o6aV9y7SWvJgZ4t2QxglZXtdLDgfGrcBzzCdBC1yajQq7e8slS7ZO2h7m
   IaNThmMRM4zBSWy+WDHDou+I/4qW/8UnSurDQIcq+IWoCH6rIfemSmEGW
   g==;
X-CSE-ConnectionGUID: R4jU2UscTDemzNqRVypqow==
X-CSE-MsgGUID: NZDpcPuTRqiEdTkd026uyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="81216465"
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; 
   d="scan'208";a="81216465"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2026 16:26:23 -0700
X-CSE-ConnectionGUID: lNGt+u/6SYaLIHZiFi7fIg==
X-CSE-MsgGUID: 0+Sh8CmDT1Cid81i68sUTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; 
   d="scan'208";a="244158327"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.116])
  by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2026 16:26:19 -0700
Date: Wed, 3 Jun 2026 02:26:17 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Liviu Stan <liviu.stan@analog.com>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Antoniu Miclaus <antoniu.miclaus@analog.com>,
	Francesco Lavra <flavra@baylibre.com>, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux@analog.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v4 6/9] iio: temperature: ltc2983: Use
 fwnode_property_present() for optional properties
Message-ID: <ah9mmYljbmNNR4YO@ashevche-desk.local>
References: <20260525164013.118614-1-liviu.stan@analog.com>
 <20260525164013.118614-7-liviu.stan@analog.com>
 <20260527171945.152279fa@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260527171945.152279fa@jic23-huawei>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305908-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:liviu.stan@analog.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:Michael.Hennerich@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:antoniu.miclaus@analog.com,m:flavra@baylibre.com,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux@analog.com,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:dkim,ashevche-desk.local:mid,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,analog.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7F065632E65

On Wed, May 27, 2026 at 05:19:45PM +0100, Jonathan Cameron wrote:
> On Mon, 25 May 2026 19:39:33 +0300
> Liviu Stan <liviu.stan@analog.com> wrote:
> 
> > Checking fwnode_property_read_u32() return value with if (!ret)
> > silently swallows meaningful error codes when a property is present
> > but malformed. Use fwnode_property_present() first so that absence
> > uses the default while a present but unreadable property returns
> > a proper error.
> > 
> > Signed-off-by: Liviu Stan <liviu.stan@analog.com>
> Applied,

With const char *propname defined this all may be made much shorter.

-- 
With Best Regards,
Andy Shevchenko



