Return-Path: <devicetree+bounces-311834-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LcX+BRnPL2oyHAUAu9opvQ
	(envelope-from <devicetree+bounces-311834-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:08:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B4B685442
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:08:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=meRBbDLi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311834-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311834-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D14E130078B7
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 10:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3E063DCDA9;
	Mon, 15 Jun 2026 10:08:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AC0D3DC4BA;
	Mon, 15 Jun 2026 10:08:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781518097; cv=none; b=DQdPk//OUmbHyASzrJoE7bcQsudzSINd3dIX87l2j/UVYqe97KWiOP47kVYYOcWlKX3zhoj33E2aXAkVxK78UuSNKcvgAGRq1N9uzfmLMM52Rg3FTkdDD8ZODaqfj1AoP3WybNTcfTrR6wx9T8m45vI4L6C+3e+gleaeuaKak+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781518097; c=relaxed/simple;
	bh=VNWai2fc+LlQCXHe5nMGVc3IFQfhL6YiajJfrvnUMvw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X1PKRDV0M+fZMGqOElTjb7PUcbg+gTW8gjPMLGIov5TMLC1OkhqBM0tzIbnbSfwViTiyQk9edLa2vx+JvWslsJ1MCSvSUrfjksddZtg8Yyfl3HL6AnmWQQX0aFJptw8vCXmJKFLwYStXSDNS+fEYiy4zdqRQM3MjvZQ2HKF7IJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=meRBbDLi; arc=none smtp.client-ip=198.175.65.10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781518097; x=1813054097;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=VNWai2fc+LlQCXHe5nMGVc3IFQfhL6YiajJfrvnUMvw=;
  b=meRBbDLisiJtcWiwY1kfi/aw+rxU6ldMUFbEdC0Wl4ANcNGqQVj8T9gA
   bjpA58v8aGOUw/uD8YqlcTvOtmxAmHbe1vEAF3USZOEg7HpmcHYcNZ3bu
   JZY77psKgz49YPxXQl6QFMgUoc3hNOtLHNsg6x9G/tXdKJyhlLukJA51R
   XO06S4gAwUN9XEJ43fyOpqFz1o9NTXT4L4JnD4yWziNQcXxnnbyQWbBzV
   jdtvSmNF0deVIL+t/lh9Q5jtX9EObgZCSbrBYoCXsVz5D1idQfLT5UWrX
   KBWcWL5sn5PYy+q4NuPFwbC5iQ7c2SAxVu8i2pL8Gx3vlKDuITKJ8MwIb
   A==;
X-CSE-ConnectionGUID: eOXiloHaTuy1jcjtzOCqeQ==
X-CSE-MsgGUID: IaggLYvlTVix8pG/Tgucsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="99673333"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; 
   d="scan'208";a="99673333"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2026 03:08:17 -0700
X-CSE-ConnectionGUID: ax9fDiGERJaqIuboKYFWMA==
X-CSE-MsgGUID: 1MyOlWxDQwSQHDGydxbFaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; 
   d="scan'208";a="251708028"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.235])
  by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2026 03:08:13 -0700
Date: Mon, 15 Jun 2026 13:08:10 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Kim Seer Paller <kimseer.paller@analog.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux@analog.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/4] iio: dac: ad3530r: Refactor setup to table-driven
 register bank approach
Message-ID: <ai_PCrlH49Qqw-Po@ashevche-desk.local>
References: <20260615-iio-ad3532r-support-v2-0-84a0af8b83fa@analog.com>
 <20260615-iio-ad3532r-support-v2-1-84a0af8b83fa@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260615-iio-ad3532r-support-v2-1-84a0af8b83fa@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311834-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kimseer.paller@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:Michael.Hennerich@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux@analog.com,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:from_mime,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A0B4B685442

On Mon, Jun 15, 2026 at 02:20:15PM +0800, Kim Seer Paller wrote:
> Replace direct register calls in ad3530r_setup() with per-chip register
> address arrays and bank helpers (ad3530r_set_reg_bank_bits,
> ad3530r_write_reg_banks). Convert sw_ldac_trig_reg from a static
> register address to a function pointer for per-bank LDAC trigger
> register selection. Switch spi_device_id to named initializers.

...

> +static int ad3530r_set_reg_bank_bits(const struct ad3530r_state *st,
> +				     const unsigned int *regs,
> +				     unsigned int num_regs,
> +				     unsigned int mask)
> +{
> +	int ret;
> +
> +	for (unsigned int i = 0; i < num_regs; i++) {
> +		ret = regmap_update_bits(st->regmap, regs[i], mask, mask);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int ad3530r_write_reg_banks(const struct ad3530r_state *st,
> +				   const unsigned int *regs,
> +				   unsigned int num_regs,
> +				   unsigned int val)
> +{
> +	int ret;
> +
> +	for (unsigned int i = 0; i < num_regs; i++) {
> +		ret = regmap_write(st->regmap, regs[i], val);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}

Can the above helpers use bulk operations or regmap_multi_reg_write()?

-- 
With Best Regards,
Andy Shevchenko



