Return-Path: <devicetree+bounces-312346-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0oYMHJT+MGrSaAUAu9opvQ
	(envelope-from <devicetree+bounces-312346-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 09:43:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D38F168CE92
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 09:43:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=AffMyYVU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312346-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312346-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1727B302A70D
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 07:43:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 679FD40BCAA;
	Tue, 16 Jun 2026 07:43:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CD540B398;
	Tue, 16 Jun 2026 07:43:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781595793; cv=none; b=US1Tj5rca2W9JVK8soYb+w9Oyc1G+EU7VUUoJM8rrqQZTaJimvswyACzCzM+tLEzrERfzbwUjnC0apfF7uLydVBXICap/2c/ZUOAfulazMXL+O2akK/sKvE6i2oGVTQpLo4fYvWwaZe5HzA9SKfa9uFaYXdAQx3gwdg6ZZPj7G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781595793; c=relaxed/simple;
	bh=GJtFDRilXTuZRcJctFaE5YyUlDIoJGp0D9pkihkxevU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WqHWodBG+XYm0DICNwMEfZTgWwoLa/cJbacoTvHBoAZuLzT9qfy/XPPVjCTJbQizNOOo2hYP3C8Ggmc0Vd/tbISYdS5kwtY/rq0hoBiHTvJhV+OH5+YIL5fQ/pVrw0RmKlb5Bu46JlP9SOfYLMhHa6SB9QPV4v00KMeIXfbrsHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=AffMyYVU; arc=none smtp.client-ip=192.198.163.14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781595792; x=1813131792;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=GJtFDRilXTuZRcJctFaE5YyUlDIoJGp0D9pkihkxevU=;
  b=AffMyYVUenyYAZLHpEnOBDtjvBtyxF17t9FVB5mNj2VhHjpeC+l+M4c8
   EjjBfzgfS05uhhseq+n6WO1wR2SCl9fp55EchRXsDGUrwYbHqIlzrw4sP
   F+xNcStuyUw3ZFiRkJ+ioVDiafvNaec9ZJeEwlJsq+FVLObGSXXXwTnEW
   UoDL3ELIp9GwPSPC2E4EqgjOKviEVEcvthta9MwgJvPj0ZIhMqltL5TdR
   CO/nbnasuxxEnLf8i5Nh9SwGW/Uo3o0E3R5i65FPzL+mOfC6Uh7YDG9Ri
   h8DKeN6gVVx8OyQHIb/F1n8s93eqw4ZoQuMBGl12/d0gz71I3LqmocTUD
   w==;
X-CSE-ConnectionGUID: zPffoZE+SG+ZK7Vw/hWWrQ==
X-CSE-MsgGUID: bhT6ARI6RhmAmUcbiqRznw==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82395845"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; 
   d="scan'208";a="82395845"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 00:43:11 -0700
X-CSE-ConnectionGUID: JGqqX0CQTxitv246kc/ang==
X-CSE-MsgGUID: uv8xi63kRma/+gD3t+egQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; 
   d="scan'208";a="277892646"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.153])
  by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 00:43:07 -0700
Date: Tue, 16 Jun 2026 10:43:05 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: "Erim, Salih" <salih.erim@amd.com>
Cc: jic23@kernel.org, andy@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, conall.ogriofa@amd.com, michal.simek@amd.com,
	linux@roeck-us.net, erimsalih@gmail.com, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 2/5] iio: adc: add Versal SysMon driver
Message-ID: <ajD-iS3nANaXOZty@ashevche-desk.local>
References: <20260614233722.2603459-1-salih.erim@amd.com>
 <20260614233722.2603459-3-salih.erim@amd.com>
 <ajAKkqMO5jdQjKgS@ashevche-desk.local>
 <2998a9fc-4b9f-49bd-8020-697081401f85@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2998a9fc-4b9f-49bd-8020-697081401f85@amd.com>
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
	TAGGED_FROM(0.00)[bounces-312346-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,ashevche-desk.local:mid,intel.com:dkim,intel.com:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D38F168CE92

On Mon, Jun 15, 2026 at 04:41:12PM +0100, Erim, Salih wrote:
> On 15/06/2026 15:22, Andy Shevchenko wrote:
> > On Mon, Jun 15, 2026 at 12:37:19AM +0100, Salih Erim wrote:

...

> > > +/**
> > > + * sysmon_core_probe() - Initialize Versal SysMon core
> > 
> > It is managed, please name it accordingly: devm_sysmon_core_probe().
> 
> Will rename to devm_sysmon_core_probe() and update callers.

I believe you also want to have a proper namespace. The sysmon is to broad.

The easiest solution is to name it as devm_versal_sysmon_core_probe().

> > > + * @dev: Parent device
> > > + * @regmap: Register map for hardware access
> > > + *
> > > + * Return: 0 on success, negative errno on failure.
> > > + */

-- 
With Best Regards,
Andy Shevchenko



