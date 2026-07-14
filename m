Return-Path: <devicetree+bounces-325810-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id peg4BTOLVWptpwAAu9opvQ
	(envelope-from <devicetree+bounces-325810-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 03:04:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B8974FF44
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 03:04:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=dMdvXX+Y;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325810-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325810-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 79C7D301E976
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 01:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAFD73563E8;
	Tue, 14 Jul 2026 01:04:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F4F12C534;
	Tue, 14 Jul 2026 01:04:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783991087; cv=none; b=RI9fs7sNIhkO2HltvZLQEhQFITwr2QhQL+i8x3zbbuaCDZRn1UPk8Fh9f7LuH4qN2lHoKsFD3P9IC7HeVOes9Gp8SRvVBiCZEDSFypEUAZ14nSbhHUciTgS3Nt0zIsIcPdydwppGByGsJ7A4n70NVtgR3neqQsDC8hFT8tiWSBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783991087; c=relaxed/simple;
	bh=ghnA79c0myfQmm1tLT8G1Q7k9znQt4izz53sCHLn+p4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CAf/HfAFftNCmWNHyBtarRTZeJ8m79Kbuu0Wc5Pxm777I4BKN6eywRBRk4dH7UfAe+UTaQu/ndA2eOLkPD5V9fxMweld7Eb3aUyZzN2leqbZL9AnA0CaPpLSJuMgYm8JrQIAI+g4gVi0lxx7ODNfPp4AyWNffYnEupcDfK03clU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=dMdvXX+Y; arc=none smtp.client-ip=198.175.65.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783991086; x=1815527086;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ghnA79c0myfQmm1tLT8G1Q7k9znQt4izz53sCHLn+p4=;
  b=dMdvXX+Yu7q9MU11XxJWAWGl93F1tBQqv+1XRa4nVgnsdpkKX3mmEetR
   FQ9VP6HCWm5hUDBk48HDbHZGF70RVnypnH8uyj2M5SA0YN7qpWbsWVz8b
   /3jXPMsQysrNBqOyI7CzjBh8qb/CSfDcQPWoitkav4it9EDxzTufTMsQC
   5ETMQVdn83O4RB5xKWOcOy/mVRtNQAA0YDCAF0ma1MEz+0LDvUGuqzBjg
   bj8/f+wzWg3PV6HNt1Dz+anWhvSDdKP9trHqsJSe/J9JGT+PcXXFDhodK
   0RpVVvbO4U2jdUhzLNH1cIcoZrAtY8WwNeftAZGxNGxT2SPA/EmBlv4pZ
   A==;
X-CSE-ConnectionGUID: jKSAghVcTviplz2Hs07luA==
X-CSE-MsgGUID: GkJMRTblTsG1J5aPC/8zGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84701794"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; 
   d="scan'208";a="84701794"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jul 2026 18:04:45 -0700
X-CSE-ConnectionGUID: JBWFPNJRTj2IGgrbVri1Gg==
X-CSE-MsgGUID: AQadaKAeS7mdjt78kRDGkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; 
   d="scan'208";a="252317728"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.245.189])
  by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jul 2026 18:04:41 -0700
Date: Tue, 14 Jul 2026 04:04:39 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chris Hall <c-hall@ti.com>,
	Patrick Edwards <pedwards@ti.com>, Kurt Borja <kuurtb@gmail.com>,
	Nguyen Minh Tien <zizuzacker@gmail.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 8/8] iio: adc: ti-ads112c14: add measurement channel
 support
Message-ID: <alWLJ8j-a7CtTbU3@ashevche-desk.local>
References: <20260710-iio-adc-ti-ads122c14-v3-0-746d52cbf1d0@baylibre.com>
 <20260710-iio-adc-ti-ads122c14-v3-8-746d52cbf1d0@baylibre.com>
 <alI-a6nkGvXp6sDo@ashevche-desk.local>
 <f8bb35a6-a898-497a-96eb-7a76a1fba16c@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f8bb35a6-a898-497a-96eb-7a76a1fba16c@baylibre.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325810-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:jic23@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:c-hall@ti.com,m:pedwards@ti.com,m:kuurtb@gmail.com,m:zizuzacker@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,ti.com,gmail.com,vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C3B8974FF44

On Mon, Jul 13, 2026 at 02:40:27PM -0500, David Lechner wrote:
> On 7/11/26 8:00 AM, Andy Shevchenko wrote:
> > On Fri, Jul 10, 2026 at 05:50:41PM -0500, David Lechner (TI) wrote:

...

> >> +struct ads112c14_measurement {
> >> +	const char *label;
> >> +	u32 vref_source;
> >> +	u8 iunit;
> >> +	u8 idac1_mag;
> >> +	u8 idac2_mag;
> >> +	u8 idac1_mux;
> >> +	u8 idac2_mux;
> > 
> > I would group this slightly differently:
> > 
> > 	u8 idac1_mag;
> > 	u8 idac2_mag;
> > 	u8 idac1_mux;
> > 	u8 idac2_mux;
> > 	u8 iunit;
> > 
> > I haven't seen the code, but names suggest that most likely one would read
> > *[12] together or close enough, and less probably mixed with 'iunit' reads.
> > Current layout might lead to interesting code generation complications on
> > the unaligned-intolerable architectures.
> 
> iunit is scaling factor for *_mag, so logically gets grouped with
> those. (These are all datasheet register field names.)

Then it can be

	u8 idac1_mux;
	u8 idac2_mux;
	u8 idac1_mag;
	u8 idac2_mag;
	u8 iunit;


> >> +	u8 iadc_count;
> >> +	u8 gain_val;
> >> +	u8 burnout;
> >> +	bool global_chop;
> >> +	bool bipolar;
> > 
> >> +	s64 scale_available[ARRAY_SIZE(ads112c14_pga_gains_x10)];
> > 
> > Also this can be moved upper, but I think it won't save any bytes in this
> > layout.
> > 
> >> +};

-- 
With Best Regards,
Andy Shevchenko



