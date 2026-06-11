Return-Path: <devicetree+bounces-310213-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kf3hBiJrKmo8pAMAu9opvQ
	(envelope-from <devicetree+bounces-310213-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:00:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F307566FA4B
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:00:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GP5I+hPO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310213-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-310213-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5619C30066B0
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 08:00:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D72D6374A1A;
	Thu, 11 Jun 2026 08:00:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D361372ECF;
	Thu, 11 Jun 2026 08:00:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781164825; cv=none; b=tYD4+SxCU5niYEaMli+nGOkL7GolhXgUDOnHgXrwEfu0JJU3TTqR7rDVYU4J5oHFPJydCQrJGat6IaoJgaxT73QgUG2e04paZ3Ij0biK88jNDQrC/WXkTA+YuK4Zw/lGFUUzb7naWqzlshQKUdiT/Eq7NBi+TMSXJfQ97BEBwVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781164825; c=relaxed/simple;
	bh=PGULIhFtjwYzNe2T+HganJaxHbOTqAPqzyO4Ra14zMw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cY/EyhNgfmXUDPpZDch3QlBI5MEf5xOeN27fl11c6lT/UHPAzdxc6bPctbMuhcVPmpA8Jtta3Xl74NlVYjC+0rExwZx1evQe/HvzJ/zk0FosRF6x8kiJv7+7bT3NyXxk/exMz73oarIaHEec1qdMZWSZzzDNgULNBiZhNuAAhh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=GP5I+hPO; arc=none smtp.client-ip=192.198.163.17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781164825; x=1812700825;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=PGULIhFtjwYzNe2T+HganJaxHbOTqAPqzyO4Ra14zMw=;
  b=GP5I+hPOgvvjXqG0h6ZQFdUM8kQokmpUbbFLFP/+ZofNhWY7IwReK00A
   XV1/Jq09B5Rp2TN7M3l8D+c+a9U5LDCb7hdGKSmrxFixNP25A6ma/pjk6
   hpDbC98pcq5C38X0impzuKkYuWs8TWGxmh0A3xgIhFiDMTDtnrrG930VS
   qC9bB/DFwcPbP5SKh+Mtoj3WFL4MkViAJpyuia2QeEHWTWXzx9dK+5qet
   9Dbv65mAFOkBLhzhr/L58aMrp5IUVjmxpu0kTq13uZ73vWHbhZvuzPrA0
   JPF4VUmgbtcSgl/6eOP0JnMRHNvwpFAu1xnTfKG7g93F1quWDYNZhRA0L
   w==;
X-CSE-ConnectionGUID: gaSR+8vfQqCpLWrhB60ZHw==
X-CSE-MsgGUID: EyVlsuQaQFG6zlSaDcLSYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81819779"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; 
   d="scan'208";a="81819779"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jun 2026 01:00:24 -0700
X-CSE-ConnectionGUID: Y7KQgdkzTPS+9Dm6DR5iiQ==
X-CSE-MsgGUID: 92yebZMCSiCz1nbtISMqyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; 
   d="scan'208";a="284493565"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.123])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jun 2026 01:00:20 -0700
Date: Thu, 11 Jun 2026 11:00:17 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V11 5/9] iio: imu: inv_icm42607: Add PM support for
 icm42607
Message-ID: <aiprEfu5K7rP0LRr@ashevche-desk.local>
References: <20260610175455.19006-1-macroalpha82@gmail.com>
 <20260610175455.19006-6-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260610175455.19006-6-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310213-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:nuno.sa@analog.com,m:dlechner@baylibre.com,m:jic23@kernel.org,m:jean-baptiste.maneyrol@tdk.com,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:heiko@sntech.de,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:macromorgan@hotmail.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,hotmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[andriy.shevchenko@intel.com:query timed out];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F307566FA4B

On Wed, Jun 10, 2026 at 12:54:49PM -0500, Chris Morgan wrote:
> Add power management support for the ICM42607 device driver.

...

>  struct inv_icm42607_state {
>  	struct mutex lock;
>  	const struct inv_icm42607_hw *hw;
>  	struct regmap *map;
>  	struct regulator *vddio_supply;
> +	bool vddio_en;
>  	struct iio_mount_matrix orientation;
>  	struct inv_icm42607_conf conf;
> +	struct inv_icm42607_suspended suspended;
>  };

When adding a new member to the data structure always consult with `pahole`
tool to see if the layout is the best fit.

...

> +/*
> + * Suspend delay assumed from other icm42600 series device, not
> + * documented in datasheet.
> + */
> +#define INV_ICM42607_SUSPEND_DELAY_MS			2000

2 * USEC_PER_MSEC

...

> +	sleepval = 0;
> +	if (temp && !oldtemp)
> +		sleepval = max(sleepval, INV_ICM42607_TEMP_STARTUP_TIME_MS);
> +
> +	if (accel != oldaccel)
> +		sleepval = max(sleepval, INV_ICM42607_ACCEL_STARTUP_TIME_MS);
> +
> +	if (gyro != oldgyro)
> +		sleepval = max(sleepval, INV_ICM42607_GYRO_STARTUP_TIME_MS);
> +
> +	if (sleep_ms)
> +		*sleep_ms = sleepval;
> +	else if (sleepval)
> +		fsleep(sleepval * USEC_PER_MSEC);

Also good to have a _ms suffis in sleepval.

...

> +	dev_set_drvdata(dev, st);

This what requires device.h. So, you can start with it whenever you first need
dev_printk.h, devres/*.h, but it doesn't mean you are supposed to drop other
non-device.h related headers, such as err.h.

...

> +EXPORT_NS_GPL_DEV_PM_OPS(inv_icm42607_pm_ops, IIO_ICM42607) = {
> +	SYSTEM_SLEEP_PM_OPS(inv_icm42607_suspend, inv_icm42607_resume)
> +	RUNTIME_PM_OPS(inv_icm42607_runtime_suspend,
> +		       inv_icm42607_runtime_resume, NULL)

Keep it logically split, either as

	RUNTIME_PM_OPS(inv_icm42607_runtime_suspend, inv_icm42607_runtime_resume, NULL)

or as

	RUNTIME_PM_OPS(inv_icm42607_runtime_suspend,
		       inv_icm42607_runtime_resume,
		       NULL)

> +};

-- 
With Best Regards,
Andy Shevchenko



