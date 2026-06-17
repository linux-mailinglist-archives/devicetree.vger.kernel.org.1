Return-Path: <devicetree+bounces-312896-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MzvPFlBzMmqh0AUAu9opvQ
	(envelope-from <devicetree+bounces-312896-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 12:13:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C189D698560
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 12:13:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=DinRCTTO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312896-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-312896-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5F5153039F6B
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 10:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8F1B3A1A22;
	Wed, 17 Jun 2026 10:08:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CF13A1D02;
	Wed, 17 Jun 2026 10:08:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781690885; cv=none; b=m1/qT/uutpEA3p4vxu5jwipyvB4e2Xm4BnKD8DVp2mFV0Wviktzk0Y1TxDm8npSwXO8/UH8ZqDH+mMLw5B4wJD1nRJMvW87aRDabhZ54VbV+FwVJMP0RLENje/qa6KYNkbroZRUuILzaeKy98ggM+Qo6InFBW+lRICNHTrRvDAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781690885; c=relaxed/simple;
	bh=9hqEJHWlBG9eRyI8zVRB/A5+Eb3a548dV7fU7aJpCdU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MQEJORnBjlecHw/xdNCMZKl1W5GmBAjAMlBmqn0cbqBg4aV9JqoS5fW9Gb8aOzNEdth1lQwjVJNq8ROZKPm+FQVXYjAAB3uaAfhmzaEBS2IDTTxCHBYUf+WxfJR72PDz40K33OSZq83T7Ga1ZWUgXG1kvgcJHRIDlPkme//TtqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=DinRCTTO; arc=none smtp.client-ip=192.198.163.17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781690884; x=1813226884;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=9hqEJHWlBG9eRyI8zVRB/A5+Eb3a548dV7fU7aJpCdU=;
  b=DinRCTTOIbsai3mVi2MTlBhsKsMUV1WcWV5VKunnZ4bvjvkQuUmkrxth
   vXD+kBi97SRXM5OSzBwkjFnHaJ3YEvX9S6sVc1fGTYrUrkB5KacKWX5XS
   lV7wAFg8Tb3xfaMyy+64i4wE4SM7gyJzj/vlY7t1BfPaa1qXwbZS3X+6O
   nlK1Or7RMEs2GocKGSKqLKbYoKsFDiO/F6z2IAI8kXPHPi1ced7S20HKc
   XdNXZRuDBrRaMSSWkHVNJuCiqv9fV4ICHq/dd3/HNW5247WpOTK58T+RM
   l4Mgw13ZwrBuOb2+4GRyu7AxOuCDEIkclTfpZieDL+H9kkpR929ngfwRF
   Q==;
X-CSE-ConnectionGUID: XOYWzA1ARz2jlE0W5+uaaw==
X-CSE-MsgGUID: 4sRTuyJqSuG2lCyuaOgrXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82357643"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; 
   d="scan'208";a="82357643"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2026 03:08:04 -0700
X-CSE-ConnectionGUID: uxiFIEuoRL2UG20YbA2f3A==
X-CSE-MsgGUID: NLF3WFOjQQmh6X9He0l5Ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; 
   d="scan'208";a="253136594"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost) ([10.245.245.69])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2026 03:08:01 -0700
Date: Wed, 17 Jun 2026 13:07:59 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Kurt Borja <kuurtb@gmail.com>,
	Nguyen Minh Tien <zizuzacker@gmail.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] iio: adc: add ti-ads112c14 driver
Message-ID: <ajJx_ytKGJDPCBON@ashevche-desk.local>
References: <20260615-iio-adc-ti-ads122c14-v1-0-e6bdadf7cb2b@baylibre.com>
 <20260615-iio-adc-ti-ads122c14-v1-2-e6bdadf7cb2b@baylibre.com>
 <ajD8Gxkp66kkDflE@ashevche-desk.local>
 <12831fd9-8a6f-442e-b1ca-f39248a5baf0@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <12831fd9-8a6f-442e-b1ca-f39248a5baf0@baylibre.com>
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
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312896-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:jic23@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:kuurtb@gmail.com,m:zizuzacker@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,gmail.com,vger.kernel.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,intel.com:dkim,intel.com:from_mime,vger.kernel.org:from_smtp,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C189D698560

On Tue, Jun 16, 2026 at 10:38:05AM -0500, David Lechner wrote:
> On 6/16/26 2:32 AM, Andy Shevchenko wrote:
> > On Mon, Jun 15, 2026 at 05:00:00PM -0500, David Lechner (TI) wrote:

...

> >> +	if (ret != -EREMOTEIO)
> >> +		return ret;
> > 
> > I would do it separately as
> > 
> > 	if (ret == -EREMOTEIO)
> > 		/* ...big comment here... */
> > 		return 0;

What I meant here is

		ret = 0;

Sorry for the confusion.

> We should not return early here. We just continue with the rest
> of the function as normal. So I think the way I had it was
> simplest. Otherwise we would need a goto or something like that.
> 
> 
> > 	if (ret) // which is regular pattern and doesn't need any comment.
> > 		return ret;

-- 
With Best Regards,
Andy Shevchenko



