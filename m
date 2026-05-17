Return-Path: <devicetree+bounces-298843-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id nAXpCu1zCWrxagQAu9opvQ
	(envelope-from <devicetree+bounces-298843-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 09:53:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1634055FC7E
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 09:53:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E9F7E300D703
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 07:53:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A513D2E1F0E;
	Sun, 17 May 2026 07:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="XHtbIVgU"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87D0C2236F7;
	Sun, 17 May 2026 07:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779004393; cv=none; b=SxSKYMSdYFbbLh5kcCtHHhy52PQDwJEm20PYox7DtlZ9U+6owVBeVsNUFTgFzXZfqWvuN0m/jw73T93oH7GhbHrZhs/NVWoOgdHY9O+uO1DJtOCP0sQmOF2oA4ZWBe01G6IvhXjGKdDw2us8T0gY1RgWxhlUJgRDH6fXCFL/98A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779004393; c=relaxed/simple;
	bh=gv4l1sSE01nRLJxydg83HiEFsHSgksAeLg7BXw/+rvU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WpbXO0Uk88c5nGk0UJatuEwS3jD25z0rDPZ3Zf5m4S++f3SnGjm5e65yaFCGS0YqO1/5S39Vfbkuh6+pK373YECZvK5Jz/jaHjgX4txA7/uEXcOGqskGay6+gWBKwkcCWk9lnqY92HFx0iUecFBSKsqGSmmGJ6XItLuIRjeIZUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=XHtbIVgU; arc=none smtp.client-ip=192.198.163.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1779004391; x=1810540391;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=gv4l1sSE01nRLJxydg83HiEFsHSgksAeLg7BXw/+rvU=;
  b=XHtbIVgUfwXqWcKWhWkrrUakvkoJjs9QYKYiF52C/12XZyaI77/s1TIq
   KzZwF82LhvHa9nUtAqPjszzdEQkG2YM2aV0OAsF6F9b6oIRpXfPtrWr7s
   bZujQD7fomZXksabZKItmpntZPS87IE4yTJRLHTp2Y4K+We+fqquqd2cw
   gz8VYDtdSxoe/SNOfIS5KRlbOWiPVbily5oluSOVf6lNxeMwiV7tRefjQ
   cnjr99rBnv388Snq+DWeYA0TFzqfQONxl/yXPsWpMsdswHJfBqA1Y+RQi
   t+CVTxcP3QRr+wU/ke5tyvTf9zmoAE5+i5I7yuJHY6DV2kVqdn8Nj0Bwl
   Q==;
X-CSE-ConnectionGUID: 7IJU0CKOR8qkFXUBq5uE+w==
X-CSE-MsgGUID: C7AmLG6ZQkSIhmiMqIEnwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11788"; a="90588739"
X-IronPort-AV: E=Sophos;i="6.23,239,1770624000"; 
   d="scan'208";a="90588739"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 May 2026 00:53:11 -0700
X-CSE-ConnectionGUID: Pr5gpIB5Rp6B0GHqsiDFrg==
X-CSE-MsgGUID: BzpCTiVlRMKCQN1JSVwDkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,239,1770624000"; 
   d="scan'208";a="277222968"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost) ([10.245.245.182])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 May 2026 00:53:07 -0700
Date: Sun, 17 May 2026 10:53:05 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Joshua Crofts <joshua.crofts1@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] iio: light: veml3328: add support for new device
Message-ID: <aglz4Z-10mzQBzvL@ashevche-desk.local>
References: <20260516-veml3328-v1-0-1d4b663e2fe3@gmail.com>
 <20260516-veml3328-v1-2-1d4b663e2fe3@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260516-veml3328-v1-2-1d4b663e2fe3@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Queue-Id: 1634055FC7E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-298843-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Sat, May 16, 2026 at 11:50:54PM +0200, Joshua Crofts wrote:
> Add support for the Vishay VEML3328 RGB/IR light sensor communicating
> via I2C (SMBus compatible).
> 
> Also add a new entry for said driver into Kconfig and Makefile.

...

IWYU.

+ array_size.h

> +#include <linux/bitfield.h>
> +#include <linux/bits.h>
> +#include <linux/cleanup.h>
> +#include <linux/delay.h>
> +#include <linux/err.h>
> +#include <linux/i2c.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>

Most likely + types.h.

...

> +struct veml3328_data {
> +	struct regmap *regmap;
> +	struct device *dev;

Dup? We may derive one from the other (in case if regmap is registered with
the same dev, otherwise needs a good comment explaining why not).

> +	struct mutex lock;
> +};

...

> +/* integration times in microseconds */
> +static const int veml3328_it_times[][2] = {
> +	{ 0, 50000 },
> +	{ 0, 100000 },
> +	{ 0, 200000 },
> +	{ 0, 400000 },

USEC_PER_MSEC in all of them.

> +};

...

> +	return regmap_update_bits(data->regmap, VEML3328_REG_CONF,
> +				  VEML3328_SHUTDOWN, VEML3328_SHUTDOWN);

Here and everywhere else, use regmap_set_bits()/regmap_clear_bits() when
appropriate.

...

> +static int veml3328_power_up(struct veml3328_data *data)
> +{
> +	int ret;
> +
> +	ret = regmap_update_bits(data->regmap, VEML3328_REG_CONF,
> +				 VEML3328_SHUTDOWN, 0);
> +	if (ret < 0)
> +		return ret;

> +	fsleep(veml3328_it_times[3][1]);

This is not good. Why do we have a table from which we are using only one
value? Define it properly and use here.

> +	return 0;
> +}

...

> +		ret = regmap_read(regmap, chan->address, &reg_val);
> +		if (ret < 0)

Do all these ' < 0' for regmap API make any sense?

> +			goto exit;

...

> +	ret = pm_runtime_resume_and_get(data->dev);
> +	if (ret < 0)
> +		return ret;

There are respective PM_RUNTIME_*() macros.

...

> +	if ((reg_val & 0xff) != VEML3328_ID_VAL)

Do you need the & 0xff? Do you have register width > 8 bits?

> +		return dev_err_probe(dev, -ENODEV, "Invalid device ID\n");

We don't fail on that, now we just warn.

...

> +static DEFINE_RUNTIME_DEV_PM_OPS(veml3328_pm_ops, veml3328_runtime_suspend,
> +				 veml3328_runtime_resume, NULL);

Split logically.

...

> +static const struct i2c_device_id veml3328_id[] = {
> +	{ "veml3328" },

Use .name.
This is a new development due to some Uwe's ongoing (re)work on ID tables.

> +	{ }
> +};

...

Was this AI-assisted? If so, don't forget to add tags.

-- 
With Best Regards,
Andy Shevchenko



