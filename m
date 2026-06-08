Return-Path: <devicetree+bounces-308248-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YxpEOuGqJmpwawIAu9opvQ
	(envelope-from <devicetree+bounces-308248-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 13:43:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 630B0655CE5
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 13:43:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Ah5hNZpy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308248-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308248-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 70144301629B
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 11:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FFBD36BCCA;
	Mon,  8 Jun 2026 11:43:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF51235C19D;
	Mon,  8 Jun 2026 11:43:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780919005; cv=none; b=gKGvIdH9RlS89t4p1ImrBb+JYZyIBTPvjVJvQ10MJ15gGTKwXONh6QwezEPdpZMWXZC9Vp+Fm/gU/+tgvvyZPDKsEM+wxSk7h7XhgZw7NzJyERKAI3MI8VqKhaA1sAEETsdPwCKri6d7+6Ms0ZUTYVE5Oi9YLADRbBZgUKvHYdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780919005; c=relaxed/simple;
	bh=eYCowD/tLnVvcRdaIZpCqJ+YbuUcRChJARYBq2ptgFw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QSacexzmegtyI0EBx/beTfOxqSvHBtBF0tjZmngDBUYF2e1d8UBmyB51nZKuBgVCctYdNnUc2Qmt7VqRmOlaoMv3bq7KFRkguPs6z8wqG+/cM/uFTtNXI2O0nTrkPaOQrBeCJLwJXacMNIpl//gBMJVaPSzKJ6f8yCv1gRfHPBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Ah5hNZpy; arc=none smtp.client-ip=198.175.65.17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1780919004; x=1812455004;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=eYCowD/tLnVvcRdaIZpCqJ+YbuUcRChJARYBq2ptgFw=;
  b=Ah5hNZpy4zCRUUC+up6u+Z74MkUfNuv6Lq6NkD0Rd23EIjHFVitD9RUP
   cWwSEhCzyVfXbCsAsE7wzCxN+t3Ijt44gEbdiYugIcAnML5VmIzcBoIzO
   Y2HWU/wVKx+UYSGhpz4XfBwTzHoYIIu7XrbmwdOXuL69ZMj4+79zGvwrw
   EN6q1auVNC2vPUQuXIkpAfEzSlDMxnyX09/cq9kdLYO3xP4cQxHr7LhaX
   Ct2IodfizZnw0AfIcIlCMzYXVjlVWVCph0Zc7+iTljD2Z2LHECLQ4P4L4
   GsqQl0rZgLeDDpHEagQ3fve3JisxXivMRkuXE3fr0kRqolvkCzhpAgwwo
   A==;
X-CSE-ConnectionGUID: 6G3DrXo9SOGgl7sA2rloIA==
X-CSE-MsgGUID: XljPt6ZISFybnPcs8LZFBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="81649895"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; 
   d="scan'208";a="81649895"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2026 04:43:23 -0700
X-CSE-ConnectionGUID: DHRd8PXJTXerBhkPyXagjg==
X-CSE-MsgGUID: EpqTeHGCRmKWBPqYq0EVXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; 
   d="scan'208";a="242568805"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.110])
  by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2026 04:43:18 -0700
Date: Mon, 8 Jun 2026 14:43:16 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Joshua Crofts <joshua.crofts1@gmail.com>
Cc: Jakub Szczudlo <jakubszczudlo40@gmail.com>, linux-iio@vger.kernel.org,
	jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
	andy@kernel.org, marcelo.schmitt@analog.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mike.looijmans@topic.nl,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	jorge.marques@analog.com, antoniu.miclaus@analog.com,
	mazziesaccount@gmail.com, jishnu.prakash@oss.qualcomm.com,
	duje@dujemihanovic.xyz, wens@kernel.org,
	sakari.ailus@linux.intel.com, linusw@kernel.org
Subject: Re: [PATCH 2/3] iio: adc: Update Kconfig description for TI_ADS1100
Message-ID: <aiaq1EdzvyrlYn82@ashevche-desk.local>
References: <20260607183542.368184-1-jakubszczudlo40@gmail.com>
 <20260607183542.368184-3-jakubszczudlo40@gmail.com>
 <CALoEA-yj3hMKRa-3OpKtHKswRjddkARSBs9AnfiLNOtPiygPyw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALoEA-yj3hMKRa-3OpKtHKswRjddkARSBs9AnfiLNOtPiygPyw@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-308248-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:joshua.crofts1@gmail.com,m:jakubszczudlo40@gmail.com,m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:marcelo.schmitt@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mike.looijmans@topic.nl,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jorge.marques@analog.com,m:antoniu.miclaus@analog.com,m:mazziesaccount@gmail.com,m:jishnu.prakash@oss.qualcomm.com,m:duje@dujemihanovic.xyz,m:wens@kernel.org,m:sakari.ailus@linux.intel.com,m:linusw@kernel.org,m:joshuacrofts1@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org,baylibre.com,analog.com,topic.nl,oss.qualcomm.com,dujemihanovic.xyz,linux.intel.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,intel.com:from_mime,intel.com:dkim,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 630B0655CE5

On Mon, Jun 08, 2026 at 08:45:46AM +0200, Joshua Crofts wrote:
> On Sun, 7 Jun 2026 at 20:38, Jakub Szczudlo <jakubszczudlo40@gmail.com> wrote:
> >
> > Add mention of ads1110 in Kconfig for TI_ADS1100
> >
> > Signed-off-by: jszczudlo <jakubszczudlo40@gmail.com>
> 
> Better to fold this change into the patch that adds the actual driver code,
> otherwise this is unnecessary churn.

It's fine to do it separately, but after the code update. The combined version
will work for me as well.

-- 
With Best Regards,
Andy Shevchenko



