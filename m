Return-Path: <devicetree+bounces-290596-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCdAKNFv72mHBQEAu9opvQ
	(envelope-from <devicetree+bounces-290596-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 16:16:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4683B474280
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 16:16:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3AA023004939
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 14:16:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BF093D3D0B;
	Mon, 27 Apr 2026 14:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="PHfztKqI"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F583D34A3;
	Mon, 27 Apr 2026 14:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777299396; cv=none; b=SQMHsqKhBvvfLCPmpRIom7BLh+vK7lJSSo0mULub/N+FUIfzjFp5c64nKpSl+owztELbbUXyNZhOkCo2QQsK8FIttsd6Uh3SzfCn6kjZB9b4/QJ1hVewQRzpvlzCNjq0yLUFXTi+V+at6KANSBm5hYSwyP00FQ8n7EOEwqSdHOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777299396; c=relaxed/simple;
	bh=q1LupePjywxyi2F4aBtrRLmCYzd1XCs8KFcnZxQbbGE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a8T0yyW1215vThg4zqHdkqB9bQ6A+6jqwOnipC3XhjSghp2rEBfbBv1MfMBFkyc9fdFB4sXVfUgPAPYLUk9rPu5Q4BFYrOaQ2JxlBpnxm1hcgSo0wzT+no2UeK8hAFp1dT4fcBG+dm6IS35zGRHwUqSguu8qbintlgwejaG2hEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=PHfztKqI; arc=none smtp.client-ip=192.198.163.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777299394; x=1808835394;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=q1LupePjywxyi2F4aBtrRLmCYzd1XCs8KFcnZxQbbGE=;
  b=PHfztKqI8h0hXgI6JflI5MxHx8eoL/P/hyTC896QCAigKwRGY3my1QMG
   tQsv9RhlLHFoSvmJWtOUI2nKfCbapIkLqwsWRnrDX8PKLjw4G+xKZQkEN
   6l3B2Uj/+kUunI44X5xlk4T0D4YVLh9J0FLixWBvPjgJ5XOKsrYesKVG3
   Qw+HyWTQk9n9Ny8IEgIMBZ3R5h7frF8yMePuM/PlsEaYPyA+MAmuqDEjt
   rwU0g9AebC+lLw2lTDeLTFYLFVfo9hXBOt+YBMIznFamvvV3fnAIg0oTe
   ZMhT1Qb86gaLBlDyTJtaHwhxCJgPHMoPXJP4BUZNg5myUxKRDQrELDCdq
   w==;
X-CSE-ConnectionGUID: dDpAAbCRTZmPu2uO1hkxRQ==
X-CSE-MsgGUID: jKoA++ulSGOH9jHYWNPZHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="77214254"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; 
   d="scan'208";a="77214254"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Apr 2026 07:16:34 -0700
X-CSE-ConnectionGUID: a+X/MIgWTvyd/g539CET9A==
X-CSE-MsgGUID: 9NpgQSQPQwKdCVVfF1dYTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; 
   d="scan'208";a="256959036"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost) ([10.245.244.2])
  by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Apr 2026 07:16:31 -0700
Date: Mon, 27 Apr 2026 17:16:28 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: ak@it-klinger.de, jic23@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 6/7] iio: adc: hx711: pass iio_chan_spec to
 hx711_reset_read()
Message-ID: <ae9vvCyqqlEuGKud@ashevche-desk.local>
References: <20260427100950.33936-1-piyushpatle228@gmail.com>
 <20260427100950.33936-7-piyushpatle228@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260427100950.33936-7-piyushpatle228@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Queue-Id: 4683B474280
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290596-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,ashevche-desk.local:mid,intel.com:dkim]

On Mon, Apr 27, 2026 at 03:39:37PM +0530, Piyush Patle wrote:
> Change hx711_reset_read() to accept a const struct iio_chan_spec *
> instead of a plain integer channel index. This lets the HX710B support
> patch pass the full channel descriptor (including chan->address for the

s/patch/change in the future/

> trailing pulse count) without adding a wrapper or a separate code path
> for each call site.
> 
> Update the two callers: hx711_read_raw() already has the iio_chan_spec *
> from its own parameter, and hx711_trigger() passes &indio_dev->channels[i].
> 
> No functional change.

...

>  	iio_for_each_active_channel(indio_dev, i) {
>  		hx711_data->buffer.channel[j] = hx711_reset_read(hx711_data,
> -					indio_dev->channels[i].channel);
> +						&indio_dev->channels[i]);

Re-indent this to be

		hx711_data->buffer.channel[j] =
			hx711_reset_read(hx711_data, &indio_dev->channels[i]);

>  		j++;
>  	}

-- 
With Best Regards,
Andy Shevchenko



