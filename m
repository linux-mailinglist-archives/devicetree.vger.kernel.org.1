Return-Path: <devicetree+bounces-322028-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GV7RJkb8TGoitAEAu9opvQ
	(envelope-from <devicetree+bounces-322028-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 15:16:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3FF71BC7C
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 15:16:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=eBs4mNRs;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322028-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-322028-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DAA08309C7A7
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 13:13:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DB2841F7C2;
	Tue,  7 Jul 2026 13:12:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1728841D4F0;
	Tue,  7 Jul 2026 13:12:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783429948; cv=none; b=d2eYu/7gERKBGNbWb4xA9FommBHQs6hQB+coh3+ukarQIa4GvWpKKPj1KCzyeVaLDs6s2+gIzfGk/G5nzNANxGWAtkpfERTHukUFnfXDHFTzEQ+QsuXUglne5Rw9UmNcLAPi1jSkzDh+6IrCDyVMcknt6FVBa7ked0JAhUjjKJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783429948; c=relaxed/simple;
	bh=OuUBQFj5W/CwdGn4MGWFc5bUyYIqLUwL8ShcbD9R874=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CNKU+XF1cjBZ284Rpt61EXUSXr1qnAz7O/ksfqp0tI5rMPUZb0TNo2CN5t9NqPmNT5HrYAyMbrEKUp6ORimaPqygSzhGFakp0asCURo0/xesR+46u1PtHejCBID7UiMAOSafLrnANdvS4iF1AYnLw7Klpm77x4K3REZfAihuvnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=eBs4mNRs; arc=none smtp.client-ip=192.198.163.19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783429946; x=1814965946;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=OuUBQFj5W/CwdGn4MGWFc5bUyYIqLUwL8ShcbD9R874=;
  b=eBs4mNRsEVhieAOsTUR9yrB4uIZCBhxfJ27FwfS3hf6tOEu7Ip1Fz53i
   dwXg5kGoNQLCdTyIr5PlbHkTcwHKgObsOy286+huRYix0nn6ht/nNvoxm
   kv1u/O8l9I1ldMMu7csSW6CobjhhwehJUknb++DDUCM9LdvOWSeVp5YIW
   qSj4b1Q6LxtuCjGMwyelKz+A2dTsaGk7FwWgfK8OekL19l53eEn1S8LPG
   jrmmiujSDqIgpyVIrLWTj2O6u1BTSd5vEBsLJBs/RKxIzB+iSa9rJ03yM
   13D+8Rs0PiSApSusFSoEQk++u1n1uy24CG0aRViJUZwf0bOZGPyj1yHy/
   w==;
X-CSE-ConnectionGUID: xW8Vqm5lTSO3QSoZcFBJFQ==
X-CSE-MsgGUID: Y2IHxaHWTWS5UM/w4ReQCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="83052208"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; 
   d="scan'208";a="83052208"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2026 06:12:26 -0700
X-CSE-ConnectionGUID: hzSn5+SZS+aW9I4MvvcDkQ==
X-CSE-MsgGUID: gROGZj+SSx+EC35+Sk9egg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; 
   d="scan'208";a="251323810"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost) ([10.245.245.36])
  by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2026 06:12:22 -0700
Date: Tue, 7 Jul 2026 16:12:20 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Md Shofiqul Islam <shofiqtest@gmail.com>
Cc: linux-iio@vger.kernel.org, jic23@kernel.org, nuno.sa@analog.com,
	Michael.Hennerich@analog.com, dlechner@baylibre.com,
	andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux@analog.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 0/2] iio: health: add MAX86150 ECG and PPG biosensor
 driver
Message-ID: <akz7NLTDuvQevMvv@ashevche-desk.local>
References: <20260707104234.1957104-1-shofiqtest@gmail.com>
 <akz6i9yq8ENt-0FP@ashevche-desk.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <akz6i9yq8ENt-0FP@ashevche-desk.local>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-322028-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:shofiqtest@gmail.com,m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:nuno.sa@analog.com,m:Michael.Hennerich@analog.com,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux@analog.com,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,ashevche-desk.local:mid,intel.com:from_mime,intel.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F3FF71BC7C

On Tue, Jul 07, 2026 at 04:10:26PM +0300, Andy Shevchenko wrote:
> On Tue, Jul 07, 2026 at 01:42:32PM +0300, Md Shofiqul Islam wrote:
> > Changes in v8:
> > - Fold MAINTAINERS entry into the driver patch; no separate patch
> 
> All three emails were sent as standalone and not in a properly chained series.

Besides that, where are the links to the previous versions (to lore.kernel.org
archive)?

-- 
With Best Regards,
Andy Shevchenko



