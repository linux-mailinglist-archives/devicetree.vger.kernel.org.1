Return-Path: <devicetree+bounces-286980-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aF9/LEDE3Gn5VwkAu9opvQ
	(envelope-from <devicetree+bounces-286980-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 12:24:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9AD3EA91D
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 12:24:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1ACB3301F795
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 10:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A71673AE6FB;
	Mon, 13 Apr 2026 10:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="aAH6AP63"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3755C4A0C;
	Mon, 13 Apr 2026 10:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776075705; cv=none; b=PTlcyoos8hMWaXRmZK+21CqEj/D/Zw5s2z4RxVBwXgc8BVhzAugDdyDL8lGjNECw6JiMnSfi/UEEHj2kKBue7L5G+xziQxXFuAxDv4TEzsebHknVA8qsb0KbEDRRhWQ/+9/I8JiNi1uR2HYsFtPZCk2sqgFj4CN2m9Ocofn2YAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776075705; c=relaxed/simple;
	bh=7PN+ssw5eseCr0we3vagsOaeANNKyiXJ0v26hYYUcwg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cHiFlg4jod3K7fqiv1mebyL1UMQiyO4lbkevI3bc71nlRb14SQKvb7SGdL4ToVml0AQdOHZP9AV9vXVUN7X0AhpcIvDE/cbaIpm2HGyyuNFt8sNdWSX/pz3PFY+yBFvmpM/YM0wI+aii7bPjqdWkkGBl9nT6mhKc5NYSSdsDpDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=aAH6AP63; arc=none smtp.client-ip=198.175.65.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1776075705; x=1807611705;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=7PN+ssw5eseCr0we3vagsOaeANNKyiXJ0v26hYYUcwg=;
  b=aAH6AP63T+LXiRICstFeYeAQ9v3NxDGzwjPG+yY2WhUCuqE4yZCi4Uky
   Cz/TbLMPxACo/X0g+8vLdhevXvlKqHHCka2BvlsX0FMyavlB2vEHolen2
   0+W+fjKx3NKzYCcSQ/plkWEVS6BSrwhvSLeJfPyoRxasC8k6BK/ADlr/Q
   fviYDL/j40ZfKxhfMCQpBXT5CPw3AAG/Llsua2nUrapotu/NFkIjDNqud
   ySQew5rP2JX6baIhJe63NBpBWG8/bCxd24YtAM2BV0rlV9NchwS4QOzEt
   uCtdor85CzDgMTS0NVEpsyAGzMYszvva5yx9vOd64j6Hdnqsxx3Rzbe6F
   Q==;
X-CSE-ConnectionGUID: ZryOUETKQgiMunw05RdULw==
X-CSE-MsgGUID: NTOyoluzSwaCXoF7X7tlbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="77184705"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; 
   d="scan'208";a="77184705"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2026 03:21:44 -0700
X-CSE-ConnectionGUID: 0T07BpcxSA6Z4y6L205zoA==
X-CSE-MsgGUID: /PQdZiDBRWGqRGbWK3EgEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; 
   d="scan'208";a="231477919"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.245.7])
  by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2026 03:21:40 -0700
Date: Mon, 13 Apr 2026 13:21:38 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Hardik Phalet <hardik.phalet@pm.me>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Brigham Campbell <me@brighamcampbell.com>,
	Shuah Khan <skhan@linuxfoundation.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev
Subject: Re: [PATCH v2 0/4] Add QST QMC5883P magnetometer driver
Message-ID: <adzDstnNuycRkkDP@ashevche-desk.local>
References: <20260409210639.3197576-1-hardik.phalet@pm.me>
 <adh-PKgh5C0-iAah@ashevche-desk.local>
 <DHR3SE5ACRQ9.2T8T819298YGI@pm.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DHR3SE5ACRQ9.2T8T819298YGI@pm.me>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286980-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ashevche-desk.local:mid,intel.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2E9AD3EA91D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Apr 12, 2026 at 10:27:36AM +0000, Hardik Phalet wrote:
> On Fri Apr 10, 2026 at 10:06 AM IST, Andy Shevchenko wrote:
> > On Thu, Apr 09, 2026 at 09:07:11PM +0000, Hardik Phalet wrote:

...

> > - the investigation is rather poor about existence of the driver — make sure
> > there is no compatible (by register layout) driver in IIO or even outside it
> > (for ADCs it might appear as HWMON [drivers/hwmon] or INPUT [drivers/input]
> >  in some cases)
> I will dig a bit deeper into this. But I could not find any thing
> realted to the device I am working on (qmc5883p). 

It might be that there is a driver with smaller amount of registers available
(or bigger) or some features missing...

> There is a device hmc5843_core.c that already handles HMC5883L. But the
> register layout is different, field ranges, gain encoding etc. are
> different and I think warrants a separate driver. Other than that I
> could not find something related to device I am working on. 

This paragraph is a particular case, something like this should be put in the
summary in your case if the brand new driver is needed.

> I will carefully go through HWMON and INPUT too, but do you have a
> strategy to help me find somehting similar? It will be very useful.
> Would `grep`-ing for 5883 and QST be a right starting point?

Grep for words that are case insensitive values of the registers offsets.
This can be done recursively, then you need to apply some heuristics on
the definition names to see if they are about the same thing (or similar)
or not at all.

-- 
With Best Regards,
Andy Shevchenko



