Return-Path: <devicetree+bounces-267925-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OO2E42snWmgQwQAu9opvQ
	(envelope-from <devicetree+bounces-267925-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:50:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B6146187FF9
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:50:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7F4383190793
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:44:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C163539E18C;
	Tue, 24 Feb 2026 13:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="Kd8/vhUC"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E90239E165;
	Tue, 24 Feb 2026 13:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771940635; cv=none; b=j9M5wsfJRsI2QKPCz/mj+cTDGhBFYIAwyD1her5TOAGpJDwFNIq3dSaCmR7SPpTbS8UW32hrLgKMe4HJT7+krzEz7SuhlcMNkLwVu6HcPC0eYTDIzL4cstLmK5OIaT7fzm4U/6s6GVGqnW0mKsFYUkUwuwg0kB2CW62zYG532QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771940635; c=relaxed/simple;
	bh=+t5aKoNjIPhOd9K1poo0UKcJ+36BKbW+aSsCCaKoG14=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pg24MDN/q40QBA/4wA/9/OcjgNdnD/kWpApy/Fc/v6S5gMXY6pyxNL8ywR2dlzWVk+twWX1/ljWPaDYzXsXoO8IQkLm0C5+wCDxarR/npMAupr0ymPKDtqz2BGsx9dApebzM22dZqSTaLYs8AGiclq/2sFd3R4QgQDEoXYw4png=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=Kd8/vhUC; arc=none smtp.client-ip=192.198.163.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771940634; x=1803476634;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=+t5aKoNjIPhOd9K1poo0UKcJ+36BKbW+aSsCCaKoG14=;
  b=Kd8/vhUCvoUnqAzhLZqGDPXVRpYaHj+5X7Xbr03NxOTKZzusttWM1xLp
   0Pk5WnVCbRok9eLSvaFIvk7FurFyRTlGSsS4diyhrE8ExBtQj7uSr6lPq
   eAc2rx+3TrMU3MRW6wIB8Jk4zsOa+Ykmu6FlwIP6MGbqU1nM8/VR7RMVF
   6Nwe2HEnzkD1TKZeUDOHSVkP+aMHvzJuqTTXRH+UCayDUaGFvKZNJXKsg
   DIvMevOMn8kcJYUmwxmlBxALc3ltTxD8Tb9F7AumXNs/vhlbzHtXIRXwz
   4Ig62eZMrLf+viB5OtfdYhQLRBglbc3P5YsD2rniRJvih3Qu8wH44Yr47
   w==;
X-CSE-ConnectionGUID: EXHHYlmVRWaGcG+1Rarf8g==
X-CSE-MsgGUID: DeOhQ/H/S/m95FFXryS/2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="71984591"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; 
   d="scan'208";a="71984591"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2026 05:43:54 -0800
X-CSE-ConnectionGUID: VwgeB/n+QMuEGXx1BO9WSQ==
X-CSE-MsgGUID: OcOvuEvcQlaLOenfkvoRPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; 
   d="scan'208";a="238892016"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost) ([10.245.244.146])
  by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2026 05:43:52 -0800
Date: Tue, 24 Feb 2026 15:43:50 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Conor Dooley <conor@kernel.org>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH v1 1/1] memory: bt1-l2-ctl: Remove
 not-going-to-be-supported code for Baikal SoC
Message-ID: <aZ2rFkSb-mgFSvfe@smile.fi.intel.com>
References: <20260224115830.3501050-1-andriy.shevchenko@linux.intel.com>
 <2bf95220-aaa7-48dc-a3f5-c5fd43c6ae67@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2bf95220-aaa7-48dc-a3f5-c5fd43c6ae67@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267925-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smile.fi.intel.com:mid]
X-Rspamd-Queue-Id: B6146187FF9
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 01:05:24PM +0100, Krzysztof Kozlowski wrote:
> On 24/02/2026 12:58, Andy Shevchenko wrote:
> > As noticed in the discussion [1] the Baikal SoC and platforms
> > are not going to be finalized, hence remove stale code.

> You got the feedback from Rob, so please implement it in all new patches
> PAST that feedback. No need to resend old ones, but if you are making
> new work - respect that feedback.

I misinterpreted his reply. Will fix this in next version.

-- 
With Best Regards,
Andy Shevchenko



