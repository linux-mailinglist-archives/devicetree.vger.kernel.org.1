Return-Path: <devicetree+bounces-316651-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RhLWHF4HQmoBzAkAu9opvQ
	(envelope-from <devicetree+bounces-316651-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 07:49:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2A86D617A
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 07:49:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=AyK3lyba;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316651-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316651-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 168353009B23
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 05:49:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8570D391E6D;
	Mon, 29 Jun 2026 05:49:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AF5C3B1B3;
	Mon, 29 Jun 2026 05:49:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782712155; cv=none; b=b5BTp5UcYecF3zt1dBDqjwVgLwDkB/OPp7VjmgH9FtFvAukZ0U32Li8BkvlZ9GZ7kPYutxJQDV3YCPbscl6atjyNcka1vHaCrzjvnsDYni9kXW9K+ucIq0Pg7q5EPxQaD9JBG5hQ40xAg2Sm1u2hN1ptPkgIwjAYMnsBSNeAreU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782712155; c=relaxed/simple;
	bh=IISUPb9bko02C5Yv25JVhlo4OCFq0UA3UK8z2QwjY+0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fhlUqkI0onpX+dnEKmIEHcPeRxQA+iLQ1ss/uFbvTiVKLqeSY5vj9tmdzcP91zmsjez0AWSsuwaUQQ7F5WemYNlO9v3fAY33RUgRa6+8jKjjMhPFuPTFr5WV9dMKjQox7HIcd1v2lddDuMXu4hTydT9nVlLKHc7JusYC4ZZKLVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=AyK3lyba; arc=none smtp.client-ip=198.175.65.10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782712153; x=1814248153;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=IISUPb9bko02C5Yv25JVhlo4OCFq0UA3UK8z2QwjY+0=;
  b=AyK3lybaiM94wc4xC+gBe022r6SPr2A1sW96w3akuZYTcUY634azMX/M
   F3mn0ZijJIchn4WIZMrXiYc7WrBhfv0Jq1+MtpPoLdsqYdL+rlnXlcwGh
   No6yWxJCkP2VMoPdVULuh0SIMdmi7UTM6HNjlX20nPvJKt8tIWPK6LEAc
   A1m9IfFED48yHpk0z0hDtSX3GtQMVWh0N0np4r5qtrhadgtqglOgcKl+C
   IjNoTdn28gH+XxNkBq/VfTyNyFDa+TVSTQX68kn7VRxJ4xTEItmnyPKul
   J9dlbfcBRxdrMN4KZO7JmbAZueWTtD/HC1kpCMhuAmRKGgOF1iNQotyRe
   w==;
X-CSE-ConnectionGUID: GAAum8hrSFqjYG2e6fbO7w==
X-CSE-MsgGUID: q4vAqIrDS8alNB/m+tOtfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11831"; a="100829930"
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; 
   d="scan'208";a="100829930"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jun 2026 22:49:12 -0700
X-CSE-ConnectionGUID: pOlYBXsYRGOWOcbGNrTQ9g==
X-CSE-MsgGUID: BiUMQBK+QnSk+hVd1oUO5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; 
   d="scan'208";a="275083488"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.207])
  by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jun 2026 22:49:08 -0700
Date: Mon, 29 Jun 2026 08:49:06 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Marcelo Schmitt <marcelo.schmitt@analog.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, jic23@kernel.org, nuno.sa@analog.com,
	Michael.Hennerich@analog.com, dlechner@baylibre.com,
	andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, julianbraha@gmail.com,
	marcelo.schmitt1@gmail.com
Subject: Re: [PATCH v4 3/4] iio: adc: ltc2378: Enable high-speed data capture
Message-ID: <akIHUgTtyZv44TWv@ashevche-desk.local>
References: <cover.1782397418.git.marcelo.schmitt@analog.com>
 <7d91f48bb03a16e6876e7aeb05fe259e33ae625f.1782397418.git.marcelo.schmitt@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7d91f48bb03a16e6876e7aeb05fe259e33ae625f.1782397418.git.marcelo.schmitt@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316651-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:marcelo.schmitt@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jic23@kernel.org,m:nuno.sa@analog.com,m:Michael.Hennerich@analog.com,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:julianbraha@gmail.com,m:marcelo.schmitt1@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:marceloschmitt1@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6C2A86D617A

On Thu, Jun 25, 2026 at 11:35:40AM -0300, Marcelo Schmitt wrote:
> Make use of SPI transfer offloading to speed up data capture, enabling data
> acquisition at faster sample rates (up to 2 MSPS).

...

> +#include <linux/math.h>
> +#include <linux/math64.h>

The latter is superior, drop math.h

...

>  struct ltc2378_chip_info {
>  	const char *name;
>  	unsigned int internal_ref_uv;
>  	struct iio_chan_spec chan;
> +	struct iio_chan_spec offload_chan;
> +	unsigned int max_sample_rate_hz;

Perhaps _Hz for the consistency. I dunno in this case, because it's quite
widespread (in small letters).

> +	unsigned int tconv_ns;
>  };

...

> +		*val = st->cnv_Hz;

Ah, you already use that, so please do in the above.

...

> +	if (freq_Hz < 1 || freq_Hz > st->info->max_sample_rate_hz)

Can we use in_range()?

> +		return -ERANGE;

...

> +	do {
> +		cnv_wf.duty_length_ns = target;
> +		ret = pwm_round_waveform_might_sleep(st->cnv_trigger, &cnv_wf);
> +		if (ret)
> +			return ret;
> +		target += 10;  /* Increment by PWM duty cycle period */
> +	} while (count++ < 100 && cnv_wf.duty_length_ns < LTC2378_TCNV_HIGH_NS);

Seems count is not used directly, can be `while (--count ...)`  as usual pattern.

> +	/* Double check the minimum CNV high time is met */
> +	if (cnv_wf.duty_length_ns < LTC2378_TCNV_HIGH_NS)
> +		return -EIO;

Hmm... How is this IO issue?

> +	/*
> +	 * Configure SPI offload PWM trigger.
> +	 * The trigger should fire after tBUSYLH + tCONV + tDSDOBUSYL.
> +	 * Minimum time needed: TBUSYLH (13ns) + TCONV (part-specific) + TDSDOBUSYL (5ns)
> +	 *
> +	 * Use the same period as CNV PWM to avoid timing issues.
> +	 * Convert back from period to frequency for the SPI offload API.
> +	 */
> +	offload_period_ns = cnv_wf.period_length_ns;
> +	config->periodic.frequency_hz = DIV_ROUND_UP(HZ_PER_GHZ, offload_period_ns);
> +	min_read_offset = LTC2378_TBUSYLH_NS + st->info->tconv_ns + LTC2378_TDSDOBUSYL_NS;
> +	offload_offset_ns = min_read_offset;
> +	count = 0;
> +	do {
> +		config->periodic.offset_ns = offload_offset_ns;
> +		ret = spi_offload_trigger_validate(st->offload_trigger, config);
> +		if (ret)
> +			return ret;
> +		offload_offset_ns += 10;
> +	} while (count++ < 100 && config->periodic.offset_ns < min_read_offset);

Same comment against count.

-- 
With Best Regards,
Andy Shevchenko



