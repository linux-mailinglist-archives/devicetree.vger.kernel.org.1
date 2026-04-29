Return-Path: <devicetree+bounces-291670-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ECvrM65T8mlGpgEAu9opvQ
	(envelope-from <devicetree+bounces-291670-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 20:53:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A91499596
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 20:53:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C346A3014125
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 18:51:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2009C38BF9C;
	Wed, 29 Apr 2026 18:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="SXE3m6Y+"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE1F2371D17;
	Wed, 29 Apr 2026 18:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777488671; cv=none; b=DmYNH5TnfmaYr66Q/iRsWAkeQSWWbWGcUqKrn9bVHlxGY1mEHb+yWGvh3t1tZttMusklyZEzZv5A/JDQDSQlMT7HwifgSmfAO8UqtJFYsI9egqqfhd+UsaNbvk/w+iZDWgk43jAGsp6ExSusu9Eb7UYKBdouDs7R6HqYn6Qm31g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777488671; c=relaxed/simple;
	bh=3jXLTF/WEqr0DEx7swf8PsRMaXK4odTq+nk5K/jTc6o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cJfGdm1E9iUOq/G2+wDXtV3c5klHc+3dzjK18uWxiCcfy4gK7f2479d4pVrIxjzWB7fvl/NcBdICEDmq28VEFMb15vh+K94q+fuan0RFpmyo/UdlLfRUus3K64zyYhk2Q6OHlAGojnFnvPae/5UkahhHefx1YJbGxJaD37yS/aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=SXE3m6Y+; arc=none smtp.client-ip=198.175.65.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777488670; x=1809024670;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=3jXLTF/WEqr0DEx7swf8PsRMaXK4odTq+nk5K/jTc6o=;
  b=SXE3m6Y+t4PYXXBNssxk04cX4ZHWkj8lMJdyGN6tfM02FbULQGUkXtO1
   mrjDHPCHyD0lh22Ijqh7EBmndcnTwpw/HgGgWP0ZWsuIhhSnhU9iPJcht
   UA7gQBh8E6d8baf0LoSkHxC/NJkR0V3BbCaBg5rYO1K7GRel/qW3idExD
   jOUByHaWcJKXqDuwpA8Qr6oDxmAWSJVeS9BZ6k/Hp7nHziHWKa94v3iW4
   3eGeyQtuLXCF2E8JM/0aiMQNWvemdKfndiKHvZSqXPZ3TCLsXLhK7P0WD
   lcoNaTQbLk+I71NKT9FTXyVttXE8LmFfNYD9KHleeiI7MiE1eXl25M7Wl
   A==;
X-CSE-ConnectionGUID: 31rcvj9TQta5HpHEjPfYxw==
X-CSE-MsgGUID: 16SxwgzmRfS75NCB8oISIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="82292410"
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; 
   d="scan'208";a="82292410"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Apr 2026 11:51:10 -0700
X-CSE-ConnectionGUID: 7YxN5OXfRhCpkGNm0Bjl+Q==
X-CSE-MsgGUID: VyOeBHtoTDOBKKx6q7qrPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; 
   d="scan'208";a="236123838"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost) ([10.245.245.141])
  by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Apr 2026 11:51:06 -0700
Date: Wed, 29 Apr 2026 21:51:04 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Joshua Crofts <joshua.crofts1@gmail.com>
Cc: Piyush Patle <piyushpatle228@gmail.com>, ak@it-klinger.de,
	jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
	andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 08/11] iio: adc: hx711: localize loop iterators in
 hx711_read
Message-ID: <afJTGNyemUtqxvDD@ashevche-desk.local>
References: <20260429054544.123862-1-piyushpatle228@gmail.com>
 <20260429054544.123862-9-piyushpatle228@gmail.com>
 <CALoEA-wjVgbCFAKJ7TNHLWWYKYdFDBMsvs7MH1LhWepVhLBg4Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALoEA-wjVgbCFAKJ7TNHLWWYKYdFDBMsvs7MH1LhWepVhLBg4Q@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Queue-Id: 44A91499596
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-291670-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,it-klinger.de,kernel.org,baylibre.com,analog.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ashevche-desk.local:mid,intel.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]

On Wed, Apr 29, 2026 at 05:01:35PM +0200, Joshua Crofts wrote:
> On Wed, 29 Apr 2026 at 07:48, Piyush Patle <piyushpatle228@gmail.com> wrote:

...

> > -       for (i = 0; i < 24; i++) {
> > +       for (unsigned int i = 0; i < 24; i++) {
> 
> Might be a nitpick, but wouldn't it be better to have a macro or a local
> variable for the 24?

If so, should be a separate change. For now I don't mind to have it like this.

...

> > -       for (i = 0; i < trailing_pulses; i++)
> > +       for (unsigned int i = 0; i < trailing_pulses; i++)
> 
> Why is the index unsigned when trailing_pulses is signed (this goes
> for the for loop above as well)?

It's probably me who suggested the unsigned variant. But I agree, better to
follow the type of the (upper) limit.

-- 
With Best Regards,
Andy Shevchenko



