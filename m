Return-Path: <devicetree+bounces-263246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WOllIQqZhWmUDwQAu9opvQ
	(envelope-from <devicetree+bounces-263246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 08:32:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BE2FB03C
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 08:32:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 33D2630347B5
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 07:32:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D60213101C6;
	Fri,  6 Feb 2026 07:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="R7f/go1r"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9F030F921;
	Fri,  6 Feb 2026 07:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770363140; cv=none; b=uu7W1k8lOf4ZfQYTFqTX6cOW7IJJBbGhxRnwF1tctpfGAgZjEEaND4yr+4XAX4pYhTvvNDYNg+2d64j9szk3Xd5SX+oSAltpYpybTdbVX4M3uOF0PtyNcBzYAKNJzCZeyQgUR05CMrkbyjCB6s1TybcTkowimOdoSEKZGzeJ/2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770363140; c=relaxed/simple;
	bh=IY6m5C4I7UkfBFeMhxudZcsP+Qzs++eKo2eWARdfXWw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hOfvgG29rGyT+UoxbxlVbb9ku2/mXvahZNJv8W7lNoQIRJ0XEIrlQ7IHLI10Pyb7QVWWOrYwx4XANkBL8kGysuoBhPB7/R/8EsckC100WRxYr85erEM/vti0otl4yvILzI6g0vK3E8Slhtpu+veoAhq8CeTtvX0BQHsx/BJZhxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=R7f/go1r; arc=none smtp.client-ip=192.198.163.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770363141; x=1801899141;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=IY6m5C4I7UkfBFeMhxudZcsP+Qzs++eKo2eWARdfXWw=;
  b=R7f/go1rA/9JYGoXKpBArXY1kOuJplMIGJbuNguJPtYbB3H605jZ/bfF
   1Nmpcrq4rCX9855YryYkwUKSCY/bsPYi2wCA+mwxgJzhC/clQVbiGLvGH
   PykTi5g6bdVw3rF1Qqg19WCq/p+gFIXdOd0jxBaIBR1vcabOt/B18/vio
   YdiNnv0PXpLoQPiiW+mjKsfm7nrrX6I/hnp3SmQF6COeUtDV/v1+OFyVa
   zCWSpUS0PgP7eCKHjZ+rjau7aYErYQeuLZyG7DcqZrSEThsJRA0U/KbpV
   uneMCZ4mkGDTO/YPWfPQVPMng0dr4WDgaCJqWtvL3mh3q5xnAcWEIe6ph
   A==;
X-CSE-ConnectionGUID: v/vrMHvER76udwk4ehqm1g==
X-CSE-MsgGUID: rtOEoHElT8SB/7Y3ADy4oQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="70585448"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; 
   d="scan'208";a="70585448"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Feb 2026 23:32:20 -0800
X-CSE-ConnectionGUID: STN1VNxDRxmE9YLDNRfnWA==
X-CSE-MsgGUID: u3aK/zvDQ7qVDRsKAMGI0w==
X-ExtLoop1: 1
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.202])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Feb 2026 23:32:16 -0800
Date: Fri, 6 Feb 2026 09:32:14 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Cc: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v3 4/9] iio: amplifiers: ad8366: drop reset_gpio from
 private struct
Message-ID: <aYWY_jJ7JopVZoeq@smile.fi.intel.com>
References: <20260203-iio-ad8366-update-v3-0-5d5636b5181a@analog.com>
 <20260203-iio-ad8366-update-v3-4-5d5636b5181a@analog.com>
 <aYKnIjBS5OT0MxuY@smile.fi.intel.com>
 <rp62czb4n3ag64cgluwsodubnqxecod3cuu2agyedqed2vwi3j@qs3e7xhf5ksk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <rp62czb4n3ag64cgluwsodubnqxecod3cuu2agyedqed2vwi3j@qs3e7xhf5ksk>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263246-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,intel.com:dkim,smile.fi.intel.com:mid]
X-Rspamd-Queue-Id: 31BE2FB03C
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 06:12:23PM +0000, Rodrigo Alencar wrote:
> On 26/02/04 03:55AM, Andy Shevchenko wrote:
> > On Tue, Feb 03, 2026 at 11:24:10AM +0000, Rodrigo Alencar via B4 Relay wrote:
> > 
> > > Remove reset_gpio from the device state struct and turn it
> > > into a local variable, as it is not being used anywhere else.
> > 
> > Why not switching to reset-gpio driver to begin with?
> 
> No particular reason, consuming it as gpio was already there!
> Is this a suggestion/recommendation or a mandatory thing for
> now on?

Not mandatory, just preferable since the reset line might be shared in some
(future) PCB designs, with the reset-gpio in place, there will be no need
to take care of that in the driver.

> looked over some examples, some are not updating dt-bindings with resets,
> others don't have Kconfig requiring POWER_RESET or POWER_RESET_GPIO config.
> Those things are necessary, right?

Depends on the optionality. If this resource is mandatory to have,
the mentioned options will be needed, indeed.

-- 
With Best Regards,
Andy Shevchenko



