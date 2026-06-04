Return-Path: <devicetree+bounces-307052-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mwD0KwfgIWpWQAEAu9opvQ
	(envelope-from <devicetree+bounces-307052-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 22:28:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A9EFC643565
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 22:28:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UALGqMtt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307052-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307052-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9D89B306CB12
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 20:24:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C325B43900D;
	Thu,  4 Jun 2026 20:23:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197103093B8;
	Thu,  4 Jun 2026 20:23:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780604620; cv=none; b=LFRN55YI+fLBKqMJD8cwyHh2gOzkh1j7Kj5Fp7h/Aa8TZo2TyTh853s0V75pIQEDZuwhMe7UBJ1MJkj9Yu5tlmUTBgy4fnnUVyCGbFVo7D41BcbK9ikC/NZGxZpnJd0kZb+lbLVDENPUN562OkbQmUbs8dx95s6L48WNICgeXfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780604620; c=relaxed/simple;
	bh=nl/N/WSx6gSVHttBOeXZf+yT3ASgfLshSpoYRe4UE7U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Gflch0vDRguk4nadhp/aDt1TruAOxLKwTkV/vgPlGERIJMU6vi8NS3hP5EG6VbR4R2SNlz371xVZnfch/tcCKeB6poKrK9ifWafRru1Brmi1Jhd7ZW+KvPJ5l7v7pErj9TRK/r7MSxAw07PGM8JbCKQpzyD3hgltRrvFBXZzZJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=UALGqMtt; arc=none smtp.client-ip=192.198.163.11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1780604619; x=1812140619;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=nl/N/WSx6gSVHttBOeXZf+yT3ASgfLshSpoYRe4UE7U=;
  b=UALGqMtt6VGNIR7zmT2DhPLuG/fBfDMLNkSptCzJKOIU4BXaO5KL4mYW
   6+DJoB/6QoHTRKpGEQPkky6cJ50fFooFfCpEl9Xi2QBb82lHfsaVqkC9O
   muLnXWonS5t0NP8bExUMvr1D4d5I4/ptPos0AWEqgNmrHILt3BNZiM2xT
   hdmO/PZgE/w3HyyRMMvEOCj4YSofaakwpi+kpisoGT8+Qy8pmEkB9YpUG
   oAIs8jqkLne5f5/0ZBdWcc5mLzbjP2xfYopfacKpG7ajmEHUso6DEn/yy
   rbvcz8r2FAvQNL+Iyn3z+XSF9mlYhjqiQmrFVhDwZ5LkVHBFXo7YFtp9X
   w==;
X-CSE-ConnectionGUID: zgbC9f0ASwWrjvrsoBvvQw==
X-CSE-MsgGUID: xbgRdTh/QfG/txf8SPEvyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="92015965"
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; 
   d="scan'208";a="92015965"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jun 2026 13:23:37 -0700
X-CSE-ConnectionGUID: dQr1cez/RGqA5oW1zd8syQ==
X-CSE-MsgGUID: 2shw03/FR+SIY1ln8jbc6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; 
   d="scan'208";a="243805818"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.47])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jun 2026 13:23:34 -0700
Date: Thu, 4 Jun 2026 23:23:31 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Herman van Hazendonk <github.com@herrie.org>
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
	andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, tomasborquez13@gmail.com,
	masneyb@onstation.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/3] iio: light: isl29018: fix overflow and precision
 in isl29018_read_lux()
Message-ID: <aiHew79TKOs8QU3r@ashevche-desk.local>
References: <20260604100617.3486541-1-github.com@herrie.org>
 <20260604100617.3486541-2-github.com@herrie.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260604100617.3486541-2-github.com@herrie.org>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307052-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:github.com@herrie.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:tomasborquez13@gmail.com,m:masneyb@onstation.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,onstation.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,intel.com:from_mime,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A9EFC643565

On Thu, Jun 04, 2026 at 12:06:15PM +0200, Herman van Hazendonk wrote:
> The intermediate calculations in isl29018_read_lux() use 32-bit
> arithmetic throughout, which overflows in two distinct ways:
> 
> 1. lux_data * chip->scale.uscale — at 16-bit integration time and the
>    1000 fc range, scale.uscale is 976562.  A full-scale 16-bit reading
>    (65535) gives 65535 * 976562 ≈ 64 billion, far beyond UINT_MAX.
>    The value wraps before the /1000000 division can save it, producing
>    a wildly wrong data_x_range.
> 
> 2. data_x_range * chip->calibscale — even after a correct data_x_range,
>    multiplying by a calibscale of a few hundred (reasonable for a deeply
>    tinted cover glass) pushes the product past INT_MAX, causing *lux to
>    wrap negative.
> 
> Additionally, dividing lux_data * scale.uscale by 1000000 before
> applying calibscale discards the fractional-lux remainder.  For low
> ranges where scale.scale is zero, any reading below 1000000/scale.uscale
> counts truncates to a data_x_range of zero, so the calibscale
> multiplication cannot rescue it.  This creates a dead-band at low light
> levels that is especially visible when a large cover-glass compensation
> gain is in use.
> 
> Fix the overflows by widening the intermediate variables to u64 and
> using div_u64() for the divisions (plain 64-bit division emits
> __aeabi_uldivmod on ARM32, which is not available in kernel builds).
> Preserve the uscale remainder across the first division so that the
> calibscale multiplication captures the sub-lux contribution.  Clamp
> the final result to INT_MAX before storing it in the signed int *lux
> out parameter.

...

> -	unsigned int data_x_range;
> +	u32 uscale_rem;
> +	u64 uscale_term, data_x_range, result;

Please, try to keep reversed xmas tree order.

...

> +	*lux = (int)min_t(u64, result, INT_MAX);

Too many castings. What you most likely want here is clamp(), try never use
min_t().

-- 
With Best Regards,
Andy Shevchenko



