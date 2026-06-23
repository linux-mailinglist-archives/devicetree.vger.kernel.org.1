Return-Path: <devicetree+bounces-314725-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zp9NOq9QOmqr5wcAu9opvQ
	(envelope-from <devicetree+bounces-314725-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 11:23:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DE66B5C48
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 11:23:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ToUhdJgf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314725-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314725-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 41773309DED8
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 09:18:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78DC03D1CC3;
	Tue, 23 Jun 2026 09:16:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227A73D1AAC;
	Tue, 23 Jun 2026 09:16:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782206208; cv=none; b=Vx7jzpY5zV9TSwF3ATRPHUpY6oXkMCtHC0ztizXSePTTCFx0WJ+GwSYZxADMV5DSzw6enQjbiA3/GRcwzrvgcYU47VyL/aDPdRy7EQuk5IvocaLBm/k43W9FVNM03AbBp+x1ONZVwLYPBSED/WyacdDyzPlDI+O8MtsjubJe7iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782206208; c=relaxed/simple;
	bh=t2gFaC9cISyx2X0DVaDYFWgNpEQC/93Dagkq4FmN8D8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=piJQ6rJ/XezHMxnQQNUyhu5c3J9OQb1lHUd0d968xrpo+ezN4jg13PHXzTq69v/Tq1Js9q2zxUbsO47xB99kRNn0B4qQJnNWjgO3wC86yiZ9z3CC2Qt9K+1HXRbn8xT32udLJw1VkUErX76E7DHgjcB6Mf0yKTvrkPgGlfI4TbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=ToUhdJgf; arc=none smtp.client-ip=198.175.65.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782206207; x=1813742207;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=t2gFaC9cISyx2X0DVaDYFWgNpEQC/93Dagkq4FmN8D8=;
  b=ToUhdJgfPymAx8rp67SR2ne8eeCDUmGNXiNSejdKDA8nqknoNa0v88OJ
   aXZUonbkKtLASXD2g9RzeKexDQ3gI7BLUxFiBrOwyo/dNOBmVQ1SYcLUm
   Vwu0AD9ljuOS+j+d3ncXhDQR6QO52QHf0OkuC44fVxLYUAq94PhGx6brF
   Z+MmYvpdmS2P67/UHLyYZ6w5cf0dHu1GlsHF7c1469ni92+alJF6RC+T1
   y6O2F0HNlU1soYnFxZyFneomuodDZEU4NWROfftmuXxHU8Xsa+2VvBCKB
   2Zax3xW59uaIGtvuvVoqZTMb3fbySIJfCgVCtn/r/MmUsi/6R8saZ1O9s
   w==;
X-CSE-ConnectionGUID: pdai4xSXRhGrUSGh7ppEGg==
X-CSE-MsgGUID: ie4bTatDQ6qtl10gSnI/uA==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="83036147"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; 
   d="scan'208";a="83036147"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2026 02:16:46 -0700
X-CSE-ConnectionGUID: wfUzUzrgT5+Jg0uOTRfX0g==
X-CSE-MsgGUID: pPtQ3sgxRq+utBGomAS/kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; 
   d="scan'208";a="245328583"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.7])
  by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2026 02:16:42 -0700
Date: Tue, 23 Jun 2026 12:16:39 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Jakub Szczudlo <jakubszczudlo40@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, antoniu.miclaus@analog.com,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	dlechner@baylibre.com, duje@dujemihanovic.xyz, jic23@kernel.org,
	jishnu.prakash@oss.qualcomm.com, jorge.marques@analog.com,
	joshua.crofts1@gmail.com, krzk+dt@kernel.org, linusw@kernel.org,
	linux-kernel@vger.kernel.org, marcelo.schmitt@analog.com,
	mazziesaccount@gmail.com, mike.looijmans@topic.nl,
	nuno.sa@analog.com, robh@kernel.org, sakari.ailus@linux.intel.com,
	wens@kernel.org
Subject: Re: [PATCH v4 1/3] iio: adc: Fix incorrect reading when datarate
 changed in single mode
Message-ID: <ajpO9zaZbIl3x1uC@ashevche-desk.local>
References: <20260622221550.374235-1-jakubszczudlo40@gmail.com>
 <20260622221550.374235-2-jakubszczudlo40@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260622221550.374235-2-jakubszczudlo40@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-314725-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jakubszczudlo40@gmail.com,m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:antoniu.miclaus@analog.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dlechner@baylibre.com,m:duje@dujemihanovic.xyz,m:jic23@kernel.org,m:jishnu.prakash@oss.qualcomm.com,m:jorge.marques@analog.com,m:joshua.crofts1@gmail.com,m:krzk+dt@kernel.org,m:linusw@kernel.org,m:linux-kernel@vger.kernel.org,m:marcelo.schmitt@analog.com,m:mazziesaccount@gmail.com,m:mike.looijmans@topic.nl,m:nuno.sa@analog.com,m:robh@kernel.org,m:sakari.ailus@linux.intel.com,m:wens@kernel.org,m:conor@kernel.org,m:joshuacrofts1@gmail.com,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,dujemihanovic.xyz,oss.qualcomm.com,gmail.com,topic.nl,linux.intel.com];
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
X-Rspamd-Queue-Id: 63DE66B5C48

On Tue, Jun 23, 2026 at 12:15:48AM +0200, Jakub Szczudlo wrote:
> When device is suspended and it is in single mode then changing
> datarate doesn't make it actual wait for new measurement, so to
> be sure that read after change is correct functions that changes
> datarate and gain will wait for new data.

...

> +/* Timeout based on the minimum sample rate of 8 SPS (7.5s) */
> +#define ADS1100_MAX_DRDY_TIMEOUT_US	7500000

Not sure if the multiplier will look good here

#define ADS1100_MAX_DRDY_TIMEOUT_US	(7500 * USEC_PER_MSEC)

(comment might need an update to use 7500 ms, but see above).

...

> +static bool ads1100_new_data_not_ready(struct ads1100_data *data)
> +{
> +	int ret;
> +	u8 buffer[3];
> +
> +	ret = i2c_master_recv(data->client, (char *)&buffer, sizeof(buffer));
> +	if (ret < 0) {
> +		dev_err(&data->client->dev, "I2C read fail: %d\n", ret);
> +		return true;
> +	} else if (ret < 3) {

sizeof()

> +		dev_err(&data->client->dev, "Short I2C read\n");
> +		return true;
> +	}
> +
> +	return FIELD_GET(ADS1100_CFG_ST_BSY, buffer[2]);
> +}

...

> +static int ads1100_poll_data_ready(struct ads1100_data *data)
> +{
> +	int ret;
> +	u8 buffer[3];
> +	bool data_ready;
> +	int datarate = ads1100_data_rate[FIELD_GET(ADS1100_DR_MASK, data->config)];
> +	/* To be sure we wait 5 times more than datarate */
> +	unsigned long wait_time = DIV_ROUND_CLOSEST(MICRO, 5 * datarate);

First of all, reversed xmas tree order can be better (especially
when something is assigned). Second, use units in the variable name,
wait_time_us. And at last, use USEC_PER_SEC instead of MICRO
(this will need time.h to be included if not yet).

> +	/* To be sure that polled value will have value after config change */
> +	ret = i2c_master_recv(data->client, (char *)&buffer, sizeof(buffer));
> +	if (ret < 0) {
> +		dev_err(&data->client->dev, "I2C read fail: %d\n", ret);
> +		return ret;
> +	}

> +	return read_poll_timeout(ads1100_new_data_not_ready, data_ready,
> +				 !data_ready, wait_time,
> +				 ADS1100_MAX_DRDY_TIMEOUT_US, false, data);

Why not readx_poll_timeout()? It's a short cut for the one-argument "read"
function.

> +}

...

>  	ads1100_set_config_bits(data, ADS1100_PGA_MASK, ffs(gain) - 1);
>  
> -	return 0;
> +	ret = ads1100_poll_data_ready(data);
> +
> +	return ret;

Is it specifically done due to next patch? But this one is marked as Fix and
will go deep back in the releases. For them this will look unjustified. Just
use

	return ads1100_...;

here.


>  static int ads1100_set_data_rate(struct ads1100_data *data, int chan, int rate)
>  {
>  	unsigned int i;
>  	unsigned int size;
> +	int ret;
>  
>  	size = data->supports_data_rate ? ARRAY_SIZE(ads1100_data_rate) : 1;
>  	for (i = 0; i < size; i++) {
> -		if (ads1100_data_rate[i] == rate)
> -			return ads1100_set_config_bits(data, ADS1100_DR_MASK,
> -						       FIELD_PREP(ADS1100_DR_MASK, i));

> +		if (ads1100_data_rate[i] != rate)
> +			continue;

This will look better if you break here and add a check

	if (i == size)
		return -EINVAL;

	... then your new code...

	return ads1100_...;


> +		PM_RUNTIME_ACQUIRE_AUTOSUSPEND(&data->client->dev, pm);

> +

This blank line is not needed as they are coupled, but I don't know if we have
an agreed style in IIO for this.

> +		ret = PM_RUNTIME_ACQUIRE_ERR(&pm);
> +		if (ret)
> +			return ret;
> +
> +		ret = ads1100_set_config_bits(data, ADS1100_DR_MASK,
> +					      FIELD_PREP(ADS1100_DR_MASK, i));
> +		if (ret)
> +			return ret;

> +		ret = ads1100_poll_data_ready(data);
> +
> +		return ret;

As per above.

>  	}
>  
>  	return -EINVAL;

-- 
With Best Regards,
Andy Shevchenko



