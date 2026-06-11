Return-Path: <devicetree+bounces-310582-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YgoqLzQQK2pH2AMAu9opvQ
	(envelope-from <devicetree+bounces-310582-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 21:44:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B50CA674D5D
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 21:44:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=k4n6ABrC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310582-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-310582-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 886CD3045DFF
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 19:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30CBB37CD41;
	Thu, 11 Jun 2026 19:41:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5585237DE87;
	Thu, 11 Jun 2026 19:41:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781206902; cv=none; b=qds3gQNjdlVlU8UQAX9JStXNuSeGkKT8sK0o5uCeTiSdlpznVDEnp6sJirTLNDCDB+CHMTvThF2lC7Swg74xqm/ICkh2XozleskuyZcl5kQyKExGvVQJz8A3Rqmup91ycEwAvxsCFJitKuhfplpInjOnQqMAzX4ywrtEGfafroc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781206902; c=relaxed/simple;
	bh=9HYVqEkTBk+W9sTm/UsyiNOHZTc2Vs3uZL+vLA75+gk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HPC5Jr/aaoYV6tQvlDeRGr9YiExK3/FJTbAD8PebJX6XmlTbi02xxhKuAoUkXDZd3djdiB6LtsAyKyjqjEkQ7K8FNlLIfRdOkT7hpK2s3w4u+sX8RqV+r9rCCR+avkGjZl05xiChQpRrz5xq8N8tOQmGHy3Z11r6wyMfHX5n0hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=k4n6ABrC; arc=none smtp.client-ip=198.175.65.12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781206900; x=1812742900;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=9HYVqEkTBk+W9sTm/UsyiNOHZTc2Vs3uZL+vLA75+gk=;
  b=k4n6ABrCqPRIAwrsV76bu4CWp8zUatoM5KM5xG6ZbK5/DMmO2LKtSsgb
   gT3r04353VyOJ4WPCcM268mOnBp44LFnl7a3epBHk0/DMyhypiK7gOcje
   YEq0y58vTJ2IlzauwdfbJ77IbKKuYQamSgZV5U3J6IJp50kdWXk5Yc8gT
   vJ8Na46BZAHYJ5jfDSkBYbxKlWojqrSoeKvbE9VxQCzdfHn+e7E4bn4YO
   qrL+Vz8voshBqvZByRmRP94WYViLTL+mKxQlzhMKCnTZgc8nSEfTYEfPG
   VLOGirObUHK1hER92hBcxitZMU3HwP/3XE58LGYwzZTR1/6gREukFEYR6
   w==;
X-CSE-ConnectionGUID: EXd6iOJgTJ+mb6MwoljOVw==
X-CSE-MsgGUID: qqKJWlpUQuy5NMN/gjrVJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="93520583"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; 
   d="scan'208";a="93520583"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jun 2026 12:41:39 -0700
X-CSE-ConnectionGUID: NZmom4I3TMqhdskBrcAdgg==
X-CSE-MsgGUID: IFxkRuRCTBy47PiDh/soDw==
X-ExtLoop1: 1
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.123])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jun 2026 12:41:35 -0700
Date: Thu, 11 Jun 2026 22:41:33 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Petar Stepanovic <pstepanovic@axiado.com>
Cc: Akhila Kavi <akavi@axiado.com>,
	Prasad Bolisetty <pbolisetty@axiado.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Harshit Shah <hshah@axiado.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] iio: adc: add Axiado SARADC driver
Message-ID: <aisPbXOB6cofF4_r@ashevche-desk.local>
References: <20260611-axiado-ax3000-ax3005-saradc-v2-0-913c9de7c64c@axiado.com>
 <20260611-axiado-ax3000-ax3005-saradc-v2-2-913c9de7c64c@axiado.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260611-axiado-ax3000-ax3005-saradc-v2-2-913c9de7c64c@axiado.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310582-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pstepanovic@axiado.com,m:akavi@axiado.com,m:pbolisetty@axiado.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:hshah@axiado.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,ashevche-desk.local:mid,intel.com:dkim,intel.com:from_mime,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B50CA674D5D

On Thu, Jun 11, 2026 at 02:37:44AM -0700, Petar Stepanovic wrote:
> Add support for the SARADC controller found on Axiado AX3000 and
> AX3005 SoCs.
> 
> The driver supports single-shot voltage reads through the IIO
> subsystem. The number of available input channels is selected from
> the SoC match data, allowing AX3000 and AX3005 variants to use the
> same driver.

Tried to not overlap Jonathan's review.

...

> +struct axiado_saradc {
> +	void __iomem *regs;
> +	struct clk *clk;
> +	unsigned long clk_rate;
> +	int vref_uV;
> +	struct mutex lock; /* Serializes ADC conversions. */
> +};

Is `pahole` satisfied with the chosen layout?


...

> +static int axiado_saradc_read_raw(struct iio_dev *indio_dev,
> +				  struct iio_chan_spec const *chan, int *val,
> +				  int *val2, long mask)
> +{
> +	struct axiado_saradc *info = iio_priv(indio_dev);
> +	int ret;
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_RAW:
> +		ret = axiado_saradc_conversion(info, chan, val);
> +		return ret ? ret : IIO_VAL_INT;

Better to use plain if.

		if (ret)
			return ret;

		return IIO_VAL_INT;

> +	case IIO_CHAN_INFO_SCALE:
> +		*val = info->vref_uV / 1000;

1000 --> (MICRO / MILLI) ?
(yes, with parentheses)

> +		*val2 = AX_RESOLUTION_BITS;
> +		return IIO_VAL_FRACTIONAL_LOG2;
> +
> +	default:
> +		return -EINVAL;
> +	}
> +}

-- 
With Best Regards,
Andy Shevchenko



