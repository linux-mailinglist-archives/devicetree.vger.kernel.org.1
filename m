Return-Path: <devicetree+bounces-312868-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZeA1ODdvMmqmzwUAu9opvQ
	(envelope-from <devicetree+bounces-312868-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 11:56:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E2569828C
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 11:56:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=e0jo7Afj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312868-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312868-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F27E430EECE5
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 09:44:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06B013A0EA5;
	Wed, 17 Jun 2026 09:44:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E8739280C;
	Wed, 17 Jun 2026 09:44:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781689441; cv=none; b=RXro5d7Ox7d3HSYDoVAv85g1OIaU76ULrWQW+F2jKpLH1ey8JwKRuna906NkAdNUiOVIFeydtHxo96U6fe5o41rN3Z0BWg52M0dluOiutQs+M2PgA1O//fDwnFxGCrwq1e6zhAYLFA2ReWP52JkWJwMYbabQ3maPI+3m6B+BTZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781689441; c=relaxed/simple;
	bh=PJRUrD9zZfvxEp95vYDkf9Io499+vXWD3N/tqWUsuhs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DZ7hUX7sz93RlX/NcVEQNZCG5Q9k46PUB1/fRA3DJAhJneswpWs/JNJM85lX1pUoo+9i6ZZVpAuaBvSf0ZpPU8zBxVAUF2GAbwsrKeZTxj3EVFJufuArCx3eaN/qWy3CNbZioMTcKwvvY/u7mNTw0NQgmR4GGNbAcBorz6Eahog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=e0jo7Afj; arc=none smtp.client-ip=192.198.163.14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781689441; x=1813225441;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=PJRUrD9zZfvxEp95vYDkf9Io499+vXWD3N/tqWUsuhs=;
  b=e0jo7Afjy4mEvIdYxxqvo+Nucp73Iec3Ygrvu9yYAcodfRTNo1/abY81
   +79eyVc+RK6xPcOhEs7yf5te06xlq4oPrfVneAGDMnxWMpmMWSuDbN95E
   5oHGGBIh0KYcasV020dX3b26DYyx/jzC5V799+7xQAFME97BgD8GH4FLx
   4XOjjpwSyZOlGHi56fMIMBZwyk7rJitFC1HwKENn32UDZRB1/6ZMrc5yU
   FP1AyIW/uPhcC4ANtf2Fktaqdx6xoG7f8pruEVUEI423/02bhAHb/OCpM
   0BVYVSL8W1IXxvAOc9AUCNIfCkCc1IkKUYnrgVhQ2hveviZICotUv0oBo
   g==;
X-CSE-ConnectionGUID: KOLyGQLzSW6Z1etfhObGAA==
X-CSE-MsgGUID: g0eiS3sKTZ+Ziuij7TMjUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82534251"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; 
   d="scan'208";a="82534251"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2026 02:43:56 -0700
X-CSE-ConnectionGUID: KqEF+XwPTGGdSxcdFhXqFA==
X-CSE-MsgGUID: zVMyIUsrS06+OMMQYl0JoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; 
   d="scan'208";a="246888272"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost) ([10.245.245.69])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2026 02:43:52 -0700
Date: Wed, 17 Jun 2026 12:43:49 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: rva333@protonmail.com
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Lee Jones <lee@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Ben Grisdale <bengris32@protonmail.ch>
Subject: Re: [PATCH v3 2/4] iio: adc: mt6323-auxadc: add mt6323 PMIC AUXADC
 driver
Message-ID: <ajJsVdQPdkpfIyLG@ashevche-desk.local>
References: <20260616-mt6323-adc-v3-0-1c27c588185d@protonmail.com>
 <20260616-mt6323-adc-v3-2-1c27c588185d@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260616-mt6323-adc-v3-2-1c27c588185d@protonmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312868-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rva333@protonmail.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:lee@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:bengris32@protonmail.ch,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_TO(0.00)[protonmail.com];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,protonmail.ch];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,intel.com:dkim,intel.com:from_mime,ashevche-desk.local:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 51E2569828C

On Tue, Jun 16, 2026 at 05:15:40PM +0300, Roman Vivchar via B4 Relay wrote:

> The mt6323 AUXADC is a 15-bit ADC used for system monitoring. This driver
> provides support for reading various channels including battery and
> charger voltages, battery and chip temperature, current sensing and
> accessory detection.
> 
> Add a driver for the AUXADC found in the MediaTek mt6323 PMIC.

...

> +static int mt6323_auxadc_prepare_channel(struct mt6323_auxadc *auxadc)
> +{
> +	struct regmap *map = auxadc->regmap;
> +	u32 val;
> +	int ret;
> +
> +	ret = regmap_read(map, MT6323_AUXADC_CON19, &val);
> +	if (ret)
> +		return ret;
> +
> +	/* The ADC is idle. */
> +	if (!(val & AUXADC_CON19_DECI_GDLY_MASK))
> +		return 0;

> +	ret = regmap_read_poll_timeout(map, MT6323_AUXADC_ADC19, val,
> +				       !(val & AUXADC_ADC19_BUSY_MASK),
> +				       10, 500);

Still can be amended.

	ret = regmap_read_poll_timeout(map, MT6323_AUXADC_ADC19,
				       val, !(val & AUXADC_ADC19_BUSY_MASK),
				       10, 500);

(no need to resend just for this).

> +	if (ret)
> +		return ret;
> +
> +	return regmap_clear_bits(map, MT6323_AUXADC_CON19,
> +				 AUXADC_CON19_DECI_GDLY_MASK);
> +}

-- 
With Best Regards,
Andy Shevchenko



