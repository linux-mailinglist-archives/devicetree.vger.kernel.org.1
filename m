Return-Path: <devicetree+bounces-290594-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLJtLjBv72mHBQEAu9opvQ
	(envelope-from <devicetree+bounces-290594-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 16:14:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C694741EC
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 16:14:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 128ED3035837
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 14:12:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C6833CF682;
	Mon, 27 Apr 2026 14:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="eRfRYdyC"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD153A6F04;
	Mon, 27 Apr 2026 14:12:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777299128; cv=none; b=UBfCYoiyKen3xRNTn77TZyRCbaH5EmBe5Xkev9lSjJonmtc01qLqfGu4S5YNqJJgIJ1g7KqmUyOh1RsUgrJD9I/hGu0lUpSObR/fNtLFgE8JVlZIFxwUvM01h9YFpMNV8bxHmVmetE01FViqy0z6ntsZzuVGVa2yyY8j7ONQ0ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777299128; c=relaxed/simple;
	bh=oBrZXiJkkdlM2G4DOdxzZBCRGlA4jk6wKJYZ4FpQTNg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R09Rdc2Y+FLVj0X1l/JcCQCxTGJ9rEBCOE3NKfRFqKesQEadGqUqmj9cAvJGTDjLZlJh4hJ3icb6DmdCrIMCZwiIoZsT/qHLN0GeF2Lp8YhrBSbWLx8moLEwIk9JMNCM80whkzi1AVTNu3M3OlKoZyY53PSuLTRB4b6L7I8oT3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=eRfRYdyC; arc=none smtp.client-ip=192.198.163.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777299127; x=1808835127;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=oBrZXiJkkdlM2G4DOdxzZBCRGlA4jk6wKJYZ4FpQTNg=;
  b=eRfRYdyC3P4knwmK/3iq484nCtRnT3Y4MOYNtsvjv6z8K5J19o2GV1SP
   QTVe3FVBYw6onMZHsLdVxZnA++V7pseLVfH1eWQoAyOj91Y6fLiVCokFN
   xVUoGualT7ZE3D/UuEXkf0GyaUh8em1B9Zx6fXaS91IqdwXXo9v19a5/b
   cOuGYeKMSu06IxvGePIxtRWtaBjKKBcoMbRocOXnHCmBIEmpjGJFoTIPM
   LYtBw0hXXO7LDRxzlD6ccaoPbsbWCtMlLoN3T7HubAb5YHWbL6GbJ5xft
   HGQxA+YdHGhCdGlTm+T4ikpgreVdt8gMMTnxHISdyybL/kw16S0RbqBHT
   w==;
X-CSE-ConnectionGUID: /pe2yjplQ7Wp5gF8quFveg==
X-CSE-MsgGUID: pja1wXcHTLGTRhR9NqzsWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="88785859"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; 
   d="scan'208";a="88785859"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Apr 2026 07:12:06 -0700
X-CSE-ConnectionGUID: TXRkafY6QtGjxpDKyQvVfg==
X-CSE-MsgGUID: HGEbCV4UQ2iqmlegVAssOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; 
   d="scan'208";a="227130782"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost) ([10.245.244.2])
  by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Apr 2026 07:12:03 -0700
Date: Mon, 27 Apr 2026 17:12:01 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: ak@it-klinger.de, jic23@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 5/7] iio: adc: hx711: pass trailing pulse count into
 hx711_read()
Message-ID: <ae9usdn2rhyehzX6@ashevche-desk.local>
References: <20260427100950.33936-1-piyushpatle228@gmail.com>
 <20260427100950.33936-6-piyushpatle228@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260427100950.33936-6-piyushpatle228@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Queue-Id: 29C694741EC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290594-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:dkim,ashevche-desk.local:mid]

On Mon, Apr 27, 2026 at 03:39:36PM +0530, Piyush Patle wrote:
> Move the trailing-pulse computation out of hx711_read() and into the
> callers. hx711_read() now takes an explicit 'trailing_pulses' parameter
> so the HX710B support patch can pass the per-channel count stored in
> chan->address without adding a separate code path in hx711_read().
> 
> Use scoped loop variables (for (int i = ...) / for (unsigned int i = ...))
> to tighten the scope of the loop counters.
> 
> No functional change.

...

> -static int hx711_read(struct hx711_data *hx711_data)
> +static int hx711_read(struct hx711_data *hx711_data, unsigned int trailing_pulses)
>  {
> -	int i, ret;
> +	int ret;
>  	int value = 0;
>  	int val = gpiod_get_value(hx711_data->gpiod_dout);

Try to follow the reversed xmas tree order.

> -	for (i = 0; i < 24; i++) {
> +	for (int i = 0; i < 24; i++) {

Why is 'i' signed?

> -	for (i = 0; i < hx711_get_gain_to_pulse(hx711_data->gain_set); i++)
> +	for (unsigned int i = 0; i < trailing_pulses; i++)
>  		hx711_cycle(hx711_data);

With the above the both seems like a candidate to a separate change (after this
trailing_pulses patch).

>  	return value;

...

So, split this to two:
- trailing_pulses (without touching 'i')
- localising loop iterators

-- 
With Best Regards,
Andy Shevchenko



