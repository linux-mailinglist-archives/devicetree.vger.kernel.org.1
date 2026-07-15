Return-Path: <devicetree+bounces-326676-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eRzpKP0sV2rdGwEAu9opvQ
	(envelope-from <devicetree+bounces-326676-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:47:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F003775B367
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:47:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=X6hyR+Dk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326676-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326676-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 844ED301C890
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 06:45:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22D4931F995;
	Wed, 15 Jul 2026 06:45:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9DD2046BA;
	Wed, 15 Jul 2026 06:45:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784097926; cv=none; b=hKBKwrFibQgpa6bmDNIj6yZ8EC4gIB5ySYAEx0D7Mihr1OXGlOvOatcUZoDGWwQxm3XQnHHD+v+EbsbquNnLWF9Sz5SFj2TvgQBCRxFfAhGB4bRp52cnCqUcV+r1DLflpLMxCN9aotSwZSoXnbGHBCEW9lEWaLw1QxFRiLedA00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784097926; c=relaxed/simple;
	bh=ShkR/4pAK0fz8tkglMiZY/H+7aT2LU0r6jC9rAW73uQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CbNW/W24cIND+KoU8mn2IRdpRru6zTvVoiaZ31RthO+X17lKGs/0dsPj3qRR+zAhhLStpuHviD0BGVUFriaAwlv4/jmdfkKc4kPadws7suwj8uaLmgd+3LAK6ew7PiCQWkcVCbqFAc4EVcB8zrdC5PjiIDiyQucMiB3gTKzsDd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=X6hyR+Dk; arc=none smtp.client-ip=192.198.163.12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1784097924; x=1815633924;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ShkR/4pAK0fz8tkglMiZY/H+7aT2LU0r6jC9rAW73uQ=;
  b=X6hyR+Dk4U8h3keSyz05W3ggkWcY/b/jEoR4GagACO5cO/Cxz1ss/Qi6
   1QzhXvAwAZ71Tcy/M8ZoK9QIXy1sNyoPAjqYDCtIREiqtSBn/B91wJxpt
   6IqylAekqN7pSIktlvC2S6fxtm+uQ973hVukZ/N1FP6IDqfoerB2nR6ju
   Vky0DtMHZsbAaNu25x4NbO4IRAA2zz696gf5ImMEiMFfmfqHYunW72wgr
   gzULBVFr3o0Pu4yxyHf7amNTbDtueJOsl3NSQtq3t0RIQpZZt/X7lEDYS
   qeyAT1hYYc4WhJ3OqjdlGpzWaBkB0tfuT0nULXQhvZ6S4iE3ZbhlDwfiX
   w==;
X-CSE-ConnectionGUID: NySFLlGKRzCYO9Imz/NjLg==
X-CSE-MsgGUID: d1rXUabwSf24SS1MA9CD9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="88551858"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; 
   d="scan'208";a="88551858"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2026 23:45:23 -0700
X-CSE-ConnectionGUID: c+cwNJadSJeB3hd3fv9Pxg==
X-CSE-MsgGUID: YgSKC5H5TNS+RFA/xKpkCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; 
   d="scan'208";a="256731072"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.44])
  by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2026 23:45:18 -0700
Date: Wed, 15 Jul 2026 09:45:16 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Jakub Szczudlo <jakubszczudlo40@gmail.com>
Cc: linux-iio@vger.kernel.org, jic23@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, marcelo.schmitt@analog.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	mike.looijmans@topic.nl, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, jorge.marques@analog.com,
	antoniu.miclaus@analog.com, mazziesaccount@gmail.com,
	jishnu.prakash@oss.qualcomm.com, duje@dujemihanovic.xyz,
	wens@kernel.org, sakari.ailus@linux.intel.com, linusw@kernel.org
Subject: Re: [PATCH v7 1/3] iio: adc: ti-ads1100: Fix incorrect reading when
 datarate changed in single mode
Message-ID: <alcsfPgibOjwW9PQ@ashevche-desk.local>
References: <20260714195528.597753-1-jakubszczudlo40@gmail.com>
 <20260714195528.597753-2-jakubszczudlo40@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260714195528.597753-2-jakubszczudlo40@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-326676-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jakubszczudlo40@gmail.com,m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:marcelo.schmitt@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mike.looijmans@topic.nl,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jorge.marques@analog.com,m:antoniu.miclaus@analog.com,m:mazziesaccount@gmail.com,m:jishnu.prakash@oss.qualcomm.com,m:duje@dujemihanovic.xyz,m:wens@kernel.org,m:sakari.ailus@linux.intel.com,m:linusw@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,baylibre.com,analog.com,topic.nl,gmail.com,oss.qualcomm.com,dujemihanovic.xyz,linux.intel.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:from_mime,intel.com:dkim,vger.kernel.org:from_smtp,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F003775B367

On Tue, Jul 14, 2026 at 09:55:26PM +0200, Jakub Szczudlo wrote:
> When device is suspended and it is in single mode then changing
> datarate doesn't make it actually wait for new measurement, so to
> be sure that read after change is correct functions that changes
> datarate and gain will wait for a new data.

...

> +static int ads1100_poll_data_ready(struct ads1100_data *data)
> +{
> +	int data_rate_Hz = ads1100_data_rate[FIELD_GET(ADS1100_DR_MASK, data->config)];
> +	/* To be sure we wait 5 times more than data rate */
> +	unsigned long wait_time_us = DIV_ROUND_CLOSEST(USEC_PER_SEC, 5 * data_rate_Hz);
> +	int data_ready;
> +	u8 buffer[3];
> +	int ret;
> +
> +	/* To be sure that polled value will have value after config change */
> +	ret = i2c_master_recv(data->client, (char *)&buffer, sizeof(buffer));
> +	if (ret < 0) {
> +		dev_err(&data->client->dev, "I2C read fail: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = readx_poll_timeout(ads1100_new_data_is_ready, data,
> +				 data_ready, data_ready != 0,
> +				 wait_time_us, ADS1100_MAX_DRDY_TIMEOUT_US);
> +	if (ret)
> +		return ret;

> +	return data_ready < 0 ? data_ready : 0;

I would unroll this to if-cond as it will be more readable (to get that
data_ready is negative when it holds an error code).

	if (data_ready < 0)
		return data_ready;

	return 0;

> +}

-- 
With Best Regards,
Andy Shevchenko



