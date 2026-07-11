Return-Path: <devicetree+bounces-324774-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FsYqGbsIUmqoLQMAu9opvQ
	(envelope-from <devicetree+bounces-324774-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 11:11:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A536A740F86
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 11:11:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="hEGA/ILX";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324774-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324774-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 664E9301CFBA
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 09:11:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D481937C0F7;
	Sat, 11 Jul 2026 09:11:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A95F31FBEBC;
	Sat, 11 Jul 2026 09:11:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783761080; cv=none; b=g6Ld6u4z3iSlP3bGGMFIu1ShjD8Gr5X7ArE1d+aAItGO6JL/vAnqFl7q4vqTGAwZoUtrg3WrAn0YiWBSHpI20UE0SlMNMHHuzGZmMUeReEVmGB8WDXdkdIZRUzIfukDJs1jGoT3dRJUXXwKl9ntyggUj39ZzdbCzDSyEmDnwd3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783761080; c=relaxed/simple;
	bh=DLU0VljP47k1ayhxXZUHOSl0sZpL+INYQwxLX+uBxYs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uTBLOuHFE1lguy29ttIon70gP9lqX3vT/AyrLOCy6ME0g5huGcj5fsMFraZQMJhad2Px2TrITONgJxTtVW6hC1M8YOnDepMq/le0hVna2eulowycHcr+Pf8XdiGXhOu22hXO26v6u7aTAbmKSwJvaAdDpOMHl8Y7ur657q/X1vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=hEGA/ILX; arc=none smtp.client-ip=198.175.65.13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783761079; x=1815297079;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=DLU0VljP47k1ayhxXZUHOSl0sZpL+INYQwxLX+uBxYs=;
  b=hEGA/ILXzxjAsF72t51u7wFkVrIPiaMhAngUP6jGWdaMRdsDzoTK/Hqx
   fbr7CYmQdPof0iu8LNCNtlsG8Z3sVxzIvhWRzrUy2KtkHHeDgcTojpnYX
   gmSL9EcoJb0WRiL/bbcEfXNV+mfNqDvvRMXbvbN8jokrJDWGiUcnsgzU4
   MAmzejYK7+gCi8MpuxbJTSgNKCxCAkcYAIYGEKUxcsDPM8ed+klXv8NSd
   W2rV/Zp8QO4aFx9bUbKf/8x80Flf4qJvrc1PJ6f5/wI7takgQoXFY6DcV
   maoUitD3+n0ziRI7PV9u68KtQdOnYmodUg0R1gTbKxacvL/8z4zR6G7/q
   A==;
X-CSE-ConnectionGUID: NNSeK3B9Tj6dFDXmFouMrw==
X-CSE-MsgGUID: KuLmrzzvQjiq+CzMClR8GQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="95598331"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; 
   d="scan'208";a="95598331"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jul 2026 02:11:19 -0700
X-CSE-ConnectionGUID: g5XBNJjqSgiA2CzRl3/8rQ==
X-CSE-MsgGUID: REk/VTNnRI6DyUO+2f4WYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; 
   d="scan'208";a="253357246"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost) ([10.245.244.254])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jul 2026 02:11:14 -0700
Date: Sat, 11 Jul 2026 12:11:12 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: "David Lechner (TI)" <dlechner@baylibre.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chris Hall <c-hall@ti.com>,
	Patrick Edwards <pedwards@ti.com>, Kurt Borja <kuurtb@gmail.com>,
	Nguyen Minh Tien <zizuzacker@gmail.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 7/8] iio: adc: ti-ads112c14: implement gain on
 internal short SYS_MON channel
Message-ID: <alIIsFyoxYLKKmab@ashevche-desk.local>
References: <20260710-iio-adc-ti-ads122c14-v3-0-746d52cbf1d0@baylibre.com>
 <20260710-iio-adc-ti-ads122c14-v3-7-746d52cbf1d0@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260710-iio-adc-ti-ads122c14-v3-7-746d52cbf1d0@baylibre.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324774-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:jic23@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:c-hall@ti.com,m:pedwards@ti.com,m:kuurtb@gmail.com,m:zizuzacker@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,ti.com,gmail.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:from_mime,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A536A740F86

On Fri, Jul 10, 2026 at 05:50:40PM -0500, David Lechner (TI) wrote:
> Implement support for the programmable gain amplifier on the internal
> short SYS_MON channel. This channel is used for calibration, so it is
> useful to be able to set the PGA to the same gain as the external
> channels. The gain setting is implemented via the `_scale` attribute.
> 
> In the future, we may want to support different reference voltages for
> this channel, so the scale_available table is populated during probe
> rather than being a static table.

...

> +/*
> + * Available gains as tenths (e.g. value 5 == 0.5 gain). Indexes correspond to
> + * ADS112C14_GAIN_CFG_GAIN values.
> + */
> +static const u32 ads112c14_pga_gains_x10[] = {
> +	5, 10, 20, 40, 50, 80, 100, 160,
> +	200, 320, 500, 640, 1000, 1280, 2000, 2560,

Since the line lengths are quite different, I would add tail comments with
indices.

	5, 10, 20, 40, 50, 80, 100, 160,		/* 0 -  7 */
	200, 320, 500, 640, 1000, 1280, 2000, 2560,	/* 8 - 15 */

(or in hexadecimal, depending on the datasheet).

> +};

...

>  static int ads112c14_prepare_sys_mon_channel(struct ads112c14_data *data,
>  					     const struct iio_chan_spec *chan)
>  {
> +	u32 gain_val;
>  	int ret;
>  
> -	/* TODO: GAIN is useful for shorted PGA inputs. */
> -	/* All SYS_MON channels use GAIN of 1 to keep it simple. */
> +	/*
> +	 * All SYS_MON channels use GAIN of 1 to keep it simple. Other than
> +	 * the internal short channel, where it is useful in practice.
> +	 */
> +	gain_val = chan->channel == ADS112C14_SYS_MON_CHANNEL_SHORT ?
> +		   data->sys_mon_chan_short_gain_val : 1;

Hmm... What about

	if (chan->channel == ADS112C14_SYS_MON_CHANNEL_SHORT)
		gain_val = FIELD_PREP(ADS112C14_GAIN_CFG_GAIN, data->sys_mon_chan_short_gain_val);
	else
		gain_val = FIELD_PREP_CONST(ADS112C14_GAIN_CFG_GAIN, 1);

>  	ret = regmap_update_bits(data->regmap, ADS112C14_REG_GAIN_CFG,
>  				 ADS112C14_GAIN_CFG_SYS_MON |
>  				 ADS112C14_GAIN_CFG_GAIN,
>  				 FIELD_PREP(ADS112C14_GAIN_CFG_SYS_MON, chan->address) |
> -				 FIELD_PREP(ADS112C14_GAIN_CFG_GAIN, 1));
> +				 FIELD_PREP(ADS112C14_GAIN_CFG_GAIN, gain_val));

				 gain_val);

On the second thought this might require to have a separate mon_val to make
this consistent. Up to you.

>  	if (ret)
>  		return ret;

-- 
With Best Regards,
Andy Shevchenko



