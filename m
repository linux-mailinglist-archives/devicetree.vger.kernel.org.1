Return-Path: <devicetree+bounces-263885-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IqWHKueiWlU/wQAu9opvQ
	(envelope-from <devicetree+bounces-263885-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 09:45:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CAAED10D24C
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 09:45:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DB4DF3008D04
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 08:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3282331D726;
	Mon,  9 Feb 2026 08:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="GQlfC4pA"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CB731BC84;
	Mon,  9 Feb 2026 08:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770626728; cv=none; b=W6FYtUK9tGOmi/oj6jkUZ0rXfvXJtqr+2jIMNbwQzbE+421ezIgqRr1vJLp/Z3IRewxuy5tevlMFA3rg61McdY792tvQthLNkvkWbyl1ZtzsOdUpuNMGNmljjH3oPEKoKCUly4CkC7gRSMbmbthw48x2in49T9nNqLLs7eyyhQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770626728; c=relaxed/simple;
	bh=I8qOM0xxpOs7JEeIMy37qrAtr3kxVuAJwJnBZ8Emfe8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rxr1a3GifIdaxE6a55DfUZUv27t8mgZjEwtJvQ5sRNBzkLKewj6dRTAmeQu7Qgy+S2aIKJ1bTGBDKX6jyz4wUd2HILz1WmB1jnuDResf+Po62+xFe07SoP7JVXjYIRLtjvQrnLE0Ki2iQiraJJ5OxCHqIref0SUIrx7bZ5dDa0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=GQlfC4pA; arc=none smtp.client-ip=192.198.163.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1770626727; x=1802162727;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=I8qOM0xxpOs7JEeIMy37qrAtr3kxVuAJwJnBZ8Emfe8=;
  b=GQlfC4pADv+UAakkoGW9lbHmDi9Qn5jda4s6eTc2dlHsRZDLcDEHdZ7S
   NxiO/MWHjA+E2ZMGv0jwMCD6WbKoiVSJMmHEzGS1cRSn3ZRwybXAsS6z7
   DRMMZpvOGy7gP94yquB+uvds/5Zrdso6tr/eGjLimaey+J1VQ0SbYkfBw
   xibdyna0zxcmm9ayzCKjH5Zf/HUS+FVe9s/ivNFG7LG1BKC10koRIWCnZ
   o6GYaUNSo6KyUOCgG8y+NmH07ecGWZFIY0JM5lHtkWdMmq0uGu/spezLK
   SFy2jegSBYZu8aoOI76pXifC70jtG3CDvaiO270szKP+3awYWx9538gJA
   w==;
X-CSE-ConnectionGUID: yfNljCPiSZqiwFo908iC2Q==
X-CSE-MsgGUID: 5+hD9WJdSyO54C8Eiq2/VA==
X-IronPort-AV: E=McAfee;i="6800,10657,11695"; a="82376282"
X-IronPort-AV: E=Sophos;i="6.21,281,1763452800"; 
   d="scan'208";a="82376282"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2026 00:45:26 -0800
X-CSE-ConnectionGUID: t8E8ko9lQUeZwsbD5yJnjA==
X-CSE-MsgGUID: /z0Tp9mVQzOIGo4uD/aPWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,281,1763452800"; 
   d="scan'208";a="210830810"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.128])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2026 00:45:23 -0800
Date: Mon, 9 Feb 2026 10:45:21 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Yasin Lee <yasin.lee.x@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/5] iio: proximity: hx9023s: fix out-of-bounds access
 when copying firmware
Message-ID: <aYmeoZIlY2HCueKO@smile.fi.intel.com>
References: <20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com>
 <20260209-upstream-20260219-v1-1-2b4d74e309d1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260209-upstream-20260219-v1-1-2b4d74e309d1@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,outlook.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-263885-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:dkim,smile.fi.intel.com:mid]
X-Rspamd-Queue-Id: CAAED10D24C
X-Rspamd-Action: no action

On Mon, Feb 09, 2026 at 11:37:02AM +0800, Yasin Lee wrote:
> Initialize fw_size before copying firmware data into the flexible
> array member to match the __counted_by() annotation. This fixes a
> potential out-of-bounds access that could lead to a kernel crash.

Fixes tag?

-- 
With Best Regards,
Andy Shevchenko



