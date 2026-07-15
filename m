Return-Path: <devicetree+bounces-326750-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rnAOMmhGV2riIQEAu9opvQ
	(envelope-from <devicetree+bounces-326750-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 10:35:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2359375BEFF
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 10:35:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ThvwBeL3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326750-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326750-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2EBB0303A26F
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:34:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2FE43A4F2C;
	Wed, 15 Jul 2026 08:34:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3629F3CC9E8;
	Wed, 15 Jul 2026 08:34:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784104457; cv=none; b=BWZalTQvJAxoUvalgOvojxWslrZAeq94pJC+iZq5Z90xGtqpua/XTDHpOJv2n3K4VyynKkXEdnZYqjzsho5MHiKEFOyToqkMBFbi7+loPEJEboejhYbxUfT7v/JoG94LexNiERx7upXPUKhJKMl5dUokhqgL874+eL1E6SZ1lGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784104457; c=relaxed/simple;
	bh=QxbWXCGF2qtfNtp8TqTb8Ox3MeR21bSDmZFYt0qyQAU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Yn9qmVvsqVWFMSWBR9ZrkMYEBp43iFZuHx3POC2lfqwqpMsGZBo4MgDO939FJkQJvAaZs6LUoPpGGzU7RC6Wo2GSE4Zt3Lln4Uj2BRXvjfT2C050KyI3SA9epN5PwxTGSIiohUC81ue5ioJAGu6IaTHgOi14fYIAG+EQnsjCo6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=ThvwBeL3; arc=none smtp.client-ip=198.175.65.19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1784104455; x=1815640455;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=QxbWXCGF2qtfNtp8TqTb8Ox3MeR21bSDmZFYt0qyQAU=;
  b=ThvwBeL34BMVCqWROom/sFM7m3n3J+rjJNxWALeEEQ7fyh0dGtskT3qa
   +I+MlU6pZlbBCfDE4E2jIVbkkM2hbU9kBdZcqnICySDyAp4Rfa7FQbnLU
   qZKAPVLfWxEsLLtOazET1lf4PlE2EvcOfluMNGrFojI5VArPc24RWDXKK
   1kMDESorN8gfNSmdqELf0uK6e/g/W5eMMLYKr2w92ts3UVbbnbPJZMcfp
   7k19H5IT8mZk0x6WByWjruiOcTSvsDGsgESM3bgaTksrSvNGZYr5H+fxx
   w+5Oy8ns3BargSW6U+iu3GunhU1RoBuErabl6aWOT0RtAnhYRsgi+aiz/
   A==;
X-CSE-ConnectionGUID: VH2axz+bRVuYt0XJjLkd7w==
X-CSE-MsgGUID: Qh8UQ5zVTfipYMUjKkZGwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="84696172"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; 
   d="scan'208";a="84696172"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2026 01:34:14 -0700
X-CSE-ConnectionGUID: QnJ4aoMRRKazd5igLsyGkA==
X-CSE-MsgGUID: gEGD/20nTCCDraT5BTpoqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; 
   d="scan'208";a="261020213"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.129])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2026 01:34:11 -0700
Date: Wed, 15 Jul 2026 11:34:09 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Stefan Popa <stefan.popa@analog.com>
Cc: Jonathan Cameron <jic23@kernel.org>, linux-iio@vger.kernel.org,
	David Lechner <dlechner@baylibre.com>, Nuno Sa <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Siratul Islam <siratul.islam@linux.dev>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>,
	Ciprian Hegbeli <ciprian.hegbeli@analog.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] iio: adc: add MAX40080 current-sense amplifier
 driver
Message-ID: <aldGAbF4AN8X5CRY@ashevche-desk.local>
References: <20260715063652.368501-1-stefan.popa@analog.com>
 <20260715063652.368501-3-stefan.popa@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260715063652.368501-3-stefan.popa@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326750-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:stefan.popa@analog.com,m:jic23@kernel.org,m:linux-iio@vger.kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:siratul.islam@linux.dev,m:u.kleine-koenig@baylibre.com,m:ciprian.hegbeli@analog.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,archive.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:dkim,linux.intel.com:from_mime,analog.com:email,analog.com:url,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2359375BEFF

On Wed, Jul 15, 2026 at 09:36:17AM +0300, Stefan Popa wrote:
> The MAX40080 is a bidirectional current-sense amplifier with an
> integrated 12-bit ADC and an I2C/SMBus interface. It measures the
> voltage across an external shunt resistor and the input bus voltage,
> storing the results in an internal FIFO.
> 
> No existing IIO driver covers this device or a register-compatible part.
> The closest relatives target different silicon with incompatible register
> maps and feature sets: max9611 is a unidirectional high-side sensor with a
> die-temperature channel and MUX-selected gain and no FIFO/PEC, while
> max34408 is an 8-bit multi-channel current monitor. The MAX40080 has a
> device-specific register map with bidirectional 13-bit current, a 64-entry
> FIFO, PEC, a single-measurement mode triggered by an SMBus Quick Command,
> and two selectable input ranges, so it warrants its own driver.
> 
> Add a direct-mode IIO driver exposing the current and voltage channels
> with raw and scale attributes, a configurable oversampling (digital
> averaging) ratio, and PEC-protected register access. The two selectable
> current-sense ranges are exposed through scale/scale_available; the
> current scale is derived from the shunt-resistor-micro-ohms device-tree
> property.

...

> Link: https://www.analog.com/media/en/technical-documentation/data-sheets/MAX40080.pdf
> 

No blank line here, in a tag block. Also you can use Datasheet: tag
(but it's up to you).

> Co-developed-by: Ciprian Hegbeli <ciprian.hegbeli@analog.com>
> Signed-off-by: Ciprian Hegbeli <ciprian.hegbeli@analog.com>
> Signed-off-by: Stefan Popa <stefan.popa@analog.com>
> ---

...

> +MAXIM MAX40080 CURRENT SENSE AMPLIFIER DRIVER
> +M:	Ciprian Hegbeli <ciprian.hegbeli@analog.com>
> +M:	Stefan Popa <stefan.popa@analog.com>
> +L:	linux-iio@vger.kernel.org
> +S:	Supported
> +W:	https://ez.analog.com/linux-software-drivers
> +F:	Documentation/devicetree/bindings/iio/adc/maxim,max40080.yaml
> +F:	drivers/iio/adc/max40080.c

David usually asks this to be split between patches to avoid "orphaned" files
from the MAINTAINERS perspective.

...

> +/* Current is a 13-bit two's-complement value (magnitude + sign bit). */

Please, choose a single style for _one-line_ comments, id est
period in all or no period, capital first letter in all or small letter.

> +#define MAX40080_CFG_MODE_SINGLE	0x02	/* one conversion per Quick Command */
> +
> +/* CFG.range field values */

(Three comments on one page of code and three different styles.)

...

> +	u32 shunt_resistor_uohm;

I think this also would be good as uOhm.

https://web.archive.org/web/20250629194735/http://poynton.ca/notes/units/
mentions this:

"... except that its initial letter is capitalized if the unit is named after a person."

...

> +static int max40080_trigger_measurement(struct max40080_state *st)
> +{
> +	struct i2c_client *client = st->client;

> +	return i2c_smbus_xfer(client->adapter, client->addr,
> +			      client->flags, I2C_SMBUS_WRITE, 0,
> +			      I2C_SMBUS_QUICK, NULL);

Perhaps even

	return i2c_smbus_xfer(client->adapter, client->addr, client->flags,
			      I2C_SMBUS_WRITE, 0, I2C_SMBUS_QUICK, NULL);

> +}

...

> +static int max40080_read_iv(struct max40080_state *st, u32 *iv)
> +{
> +	int ret, io_ret;
> +
> +	guard(mutex)(&st->lock);
> +
> +	ret = max40080_trigger_measurement(st);
> +	if (ret < 0)
> +		return ret;

What I meant is this

	u32 tmp = *iv;


> +	/*
> +	 * Wait for the conversion to complete by polling the FIFO valid bit
> +	 * (or bail out on an I2C error). Polling the device's own status makes
> +	 * this independent of the actual conversion time, which varies with the
> +	 * oversampling ratio and the bus speed. The timeout is only a safety
> +	 * ceiling: the worst case is the maximum 128x averaging on both the
> +	 * current and voltage channels at the slowest 15 ksps base rate plus the
> +	 * inter-channel switching time, i.e. roughly 20 ms; 50 ms leaves ample
> +	 * margin.
> +	 */
> +	ret = read_poll_timeout(max40080_read_iv_once, io_ret,
> +				io_ret || (*iv & MAX40080_IV_VALID_MSK),
> +				1 * USEC_PER_MSEC, 50 * USEC_PER_MSEC,
> +				false, st, iv);

	ret = read_poll_timeout(max40080_read_iv_once, io_ret,
				io_ret || (tmp & MAX40080_IV_VALID_MSK),
				1 * USEC_PER_MSEC, 50 * USEC_PER_MSEC,
				false, st, &tmp);

	/* ...the comment why we need to update iv even in error case... */
	*iv = tmp;

> +	if (ret)
> +		return ret;
> +
> +	return io_ret;
> +}

...

> +static void max40080_calc_current_scale(struct max40080_state *st)
> +{
> +	unsigned int i;
> +	u32 rem;
> +	u64 tmp;
> +
> +	for (i = 0; i < ARRAY_SIZE(max40080_csa_gain); i++) {

	for (unsigned int i = 0; i < ARRAY_SIZE(max40080_csa_gain); i++) {

> +		tmp = (u64)MAX40080_INTER_VREF_mV * NANO * MICRO;

I would even make another temporary for the numerator and denominator.

		u64 numerator, denominator;

		numerator = (u64)MAX40080_INTER_VREF_mV * NANO * MICRO;
		denominator = (u64)MAX40080_ADC_RES * max40080_csa_gain[i];

// Also possible to use a trick "1ULL * " instead of castings.

		numerator = 1ULL * MAX40080_INTER_VREF_mV * NANO * MICRO;
		denominator = 1ULL * MAX40080_ADC_RES * max40080_csa_gain[i];

> +		tmp = div64_u64(tmp, (u64)MAX40080_ADC_RES * max40080_csa_gain[i] *
> +				st->shunt_resistor_uohm);

		tmp = div64_u64(numerator, denominator * st->shunt_resistor_uOhm);

> +		st->current_scale[i][0] = div_u64_rem(tmp, NANO, &rem);
> +		st->current_scale[i][1] = rem;
> +	}
> +}

...

> +static int max40080_oversampling_to_filter(int val)
> +{
> +	for (int i = 0; i < ARRAY_SIZE(max40080_oversampling_avail); i++) {

unsigned int ?

> +		if (max40080_oversampling_avail[i] == val)
> +			return i;
> +	}
> +
> +	return -EINVAL;
> +}

...

> +	if (device_property_present(dev, "shunt-resistor-micro-ohms")) {
> +		ret = device_property_read_u32(dev, "shunt-resistor-micro-ohms",
> +					       &st->shunt_resistor_uohm);
> +		if (ret)
> +			return dev_err_probe(dev, ret,
> +					     "can't read shunt-resistor-micro-ohms\n");
> +		if (!st->shunt_resistor_uohm)
> +			return dev_err_probe(dev, -EINVAL,
> +					     "shunt-resistor-micro-ohms must be non-zero\n");

You can reduce data footprint by string literal deduplication. That's why in my example I used

	const char *propname;

and respective assignment. Currently you have three copies of the property
name: two in different error messages and one as a parameter to property APIs.

> +	} else {
> +		st->shunt_resistor_uohm = 1 * MICRO;
> +	}

-- 
With Best Regards,
Andy Shevchenko



