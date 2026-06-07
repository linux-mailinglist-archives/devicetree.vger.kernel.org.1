Return-Path: <devicetree+bounces-307768-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ffOXMWIeJWrFDgIAu9opvQ
	(envelope-from <devicetree+bounces-307768-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 09:31:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C913164F038
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 09:31:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=MXkyZ3V7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307768-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307768-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D248F300E15C
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 07:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2E652FD66D;
	Sun,  7 Jun 2026 07:31:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237C6302753;
	Sun,  7 Jun 2026 07:31:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780817503; cv=none; b=M887BM7IZHNQRps6MW7a3iXAOgwEah0A1eo9Y+srhgv5uAkN1u/u0s6jE4sX/gMIY8UIJeSnTXgUM80NoRMDFoMOjvsThexK1W8W2+dY1q4i1TyyGRSbm04txxCkey5mLJCTMzN/d/rZ/OrYLINXsZ6ITI4ydpjDAhGthLc5U1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780817503; c=relaxed/simple;
	bh=k0KqjXBeVB++LaNoTghVtB8NPmeeHoE9udI6EguDkmM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rPcT++ZmTFZel58oErn15gcP00nKzz250TIwEO0ZIgWpSuHuiPv2Oa6x3YuJKyYP5i1klrXSIazPe88EHczx/pdC4mROURoypTu11lpeNGS5N7DvflAkFsGT5IFka7XL7oGRI1OxiH9GORWSMVxvu6JR0vH9eLwEyRDhhLUhB9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=MXkyZ3V7; arc=none smtp.client-ip=198.175.65.11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1780817500; x=1812353500;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=k0KqjXBeVB++LaNoTghVtB8NPmeeHoE9udI6EguDkmM=;
  b=MXkyZ3V7LGU4mHoVS5ovgvIwEYlwjvkgx2JS9q3e5gZuaqT0oVQgLpsk
   8DJCYPFcN4z+c6ZgvUxrXgTNPqMgaHRxsEQOjHS7LdapajR1w+dWaLlCa
   Ada75YJMi3CGTJQPnxzWaRDn/fxWpAIhWuGb35ru/3jXZBew8P3bEjsvq
   DpqrSwXuM0D49jfYhkY7vgK9lqyDA91GVJtNVBTPRvGz73Hb7rt3vf2MX
   B0PkhaZrKAuXasQCHcfCYpI8IOa1YWe/TBP5rSVZSu2TxkzSS4GJqgTzZ
   bQskW4JL2XvCG7xsflxtXmWoAkArFPJoNM0+GE01Fpw34Da7zCmParNZ3
   Q==;
X-CSE-ConnectionGUID: z9uPP+egRsOBOdILfTurbg==
X-CSE-MsgGUID: wtkH51YyQMmdcbE9hrXgZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11809"; a="91910032"
X-IronPort-AV: E=Sophos;i="6.24,192,1774335600"; 
   d="scan'208";a="91910032"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jun 2026 00:31:40 -0700
X-CSE-ConnectionGUID: NZ22QekRRFCH1zjscYIqaA==
X-CSE-MsgGUID: WcNSxX3gRxSxeua2V8Z0gQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,192,1774335600"; 
   d="scan'208";a="242774643"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.86])
  by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jun 2026 00:31:36 -0700
Date: Sun, 7 Jun 2026 10:31:34 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Salih Erim <salih.erim@amd.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Conall O'Griofa <conall.ogriofa@amd.com>,
	Michal Simek <michal.simek@amd.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Salih Erim <erimsalih@gmail.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 4/5] iio: adc: versal-sysmon: add threshold event
 support
Message-ID: <aiUeVs_FoI9vV1Hd@ashevche-desk.local>
References: <20260606051707.535281-1-salih.erim@amd.com>
 <20260606051707.535281-5-salih.erim@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260606051707.535281-5-salih.erim@amd.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307768-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:jic23@kernel.org,m:andy@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:conall.ogriofa@amd.com,m:michal.simek@amd.com,m:linux@roeck-us.net,m:erimsalih@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,amd.com,roeck-us.net,gmail.com,vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,intel.com:from_mime,intel.com:dkim,sysmon_unmask_work.work:url,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C913164F038

On Sat, Jun 06, 2026 at 06:17:06AM +0100, Salih Erim wrote:
> Add threshold event support for temperature and supply voltage
> channels.
> 
> Temperature events:
>   - Rising threshold with configurable value
>   - Over-temperature (OT) alarm with separate threshold
>   - Per-channel hysteresis as a millicelsius value
>   - Event direction is IIO_EV_DIR_RISING (hysteresis mode)
> 
> Supply voltage events:
>   - Rising/falling threshold per supply channel
>   - Per-channel alarm enable via alarm configuration registers
> 
> The hardware supports both window and hysteresis alarm modes for
> temperature. This driver uses hysteresis mode, where the upper
> threshold triggers the alarm and the lower threshold clears it
> (re-arm point). The hardware has a single ISR bit per temperature
> channel with no indication of which threshold was crossed, so
> hysteresis mode is the natural fit. The lower threshold register
> is computed internally as (upper - hysteresis).
> 
> Hysteresis is stored in the driver as a millicelsius value,
> initialized from the hardware registers at probe. Writing the
> rising threshold or hysteresis recomputes the lower register.
> ALARM_CONFIG is hard-coded to hysteresis mode during init.
> 
> The interrupt handler masks active threshold interrupts (which are
> level-sensitive) and schedules a delayed worker to poll for condition
> clear before unmasking. When no hardware IRQ is available, event
> channels are not created and interrupt init is skipped, since the
> I2C regmap backend cannot be called from atomic context.
> 
> When disabling a supply channel alarm, the group interrupt remains
> active if any other channel in the same alarm group still has an
> alarm enabled.

...

> +static void sysmon_supply_processedtoraw(int val, u32 reg_val, u32 *raw_data)
> +{
> +	int exponent = FIELD_GET(SYSMON_MODE_MASK, reg_val);
> +	int format = FIELD_GET(SYSMON_FMT_MASK, reg_val);
> +	int scale, tmp;
> +
> +	scale = BIT(SYSMON_SUPPLY_MANTISSA_BITS - exponent);
> +	tmp = (val * scale) / (int)MILLI;
> +
> +	if (format)
> +		tmp = clamp_t(int, tmp, S16_MIN, S16_MAX);
> +	else
> +		tmp = clamp_t(int, tmp, 0, U16_MAX);

No, please, use clamp().

> +	*raw_data = (u16)tmp;
> +}

...

> +static int sysmon_write_alarm_config(struct sysmon *sysmon,
> +				     unsigned long address, bool enable)
> +{
> +	u32 shift = address % SYSMON_ALARM_BITS_PER_REG;
> +	u32 offset = SYSMON_ALARM_OFFSET(address);
> +
> +	if (enable)
> +		return regmap_set_bits(sysmon->regmap, offset, BIT(shift));
> +
> +	return regmap_clear_bits(sysmon->regmap, offset, BIT(shift));

regmap_assign_bits()

> +}

...

> +	u32 alarm_reg_offset = SYSMON_ALARM_REG + (event * SYSMON_REG_STRIDE);

Unneeded parentheses.

...

> +		for_each_set_bit(bit, &alarm_flag_reg,
> +				 SYSMON_ALARM_BITS_PER_REG) {

I would leave this on a single (83 characters) line.

> +			address = bit + (SYSMON_ALARM_BITS_PER_REG * event);

Unneeded parentheses.

> +			sysmon_push_event(indio_dev, address);
> +			ret = regmap_update_bits(sysmon->regmap, alarm_reg_offset, BIT(bit), 0);

Why not _clear_bits()

> +			if (ret)
> +				return ret;
> +		}

...

> +static void sysmon_unmask_temp(struct sysmon *sysmon, unsigned int isr)
> +{
> +	unsigned int unmask, status;
> +
> +	status = isr & SYSMON_TEMP_INTR_MASK;
> +
> +	unmask = (sysmon->masked_temp ^ status) & sysmon->masked_temp;

Is this the same as

	unmask =  ~status & sysmon->masked_temp;

?

> +	sysmon->masked_temp &= status;
> +
> +	unmask &= ~sysmon->temp_mask;

The above needs a comment explaining the logic.

> +}

...

> +static void sysmon_unmask_worker(struct work_struct *work)
> +{
> +	struct sysmon *sysmon = container_of(work, struct sysmon,
> +					     sysmon_unmask_work.work);

Better to split as

	struct sysmon *sysmon =
		container_of(work, struct sysmon, sysmon_unmask_work.work);

> +	unsigned int isr;
> +
> +	spin_lock_irq(&sysmon->irq_lock);
> +	regmap_read(sysmon->regmap, SYSMON_ISR, &isr);
> +	regmap_write(sysmon->regmap, SYSMON_ISR, isr);
> +	sysmon_unmask_temp(sysmon, isr);
> +	spin_unlock_irq(&sysmon->irq_lock);
> +
> +	if (sysmon->masked_temp)
> +		schedule_delayed_work(&sysmon->sysmon_unmask_work,
> +				      msecs_to_jiffies(SYSMON_UNMASK_WORK_DELAY_MS));
> +	else
> +		regmap_write(sysmon->regmap, SYSMON_STATUS_RESET, 1);
> +}
> +
> +static irqreturn_t sysmon_iio_irq(int irq, void *data)
> +{
> +	struct iio_dev *indio_dev = data;
> +	struct sysmon *sysmon = iio_priv(indio_dev);
> +	unsigned int isr, imr;
> +
> +	guard(spinlock)(&sysmon->irq_lock);
> +
> +	regmap_read(sysmon->regmap, SYSMON_ISR, &isr);
> +	regmap_read(sysmon->regmap, SYSMON_IMR, &imr);
> +
> +	isr &= ~imr;

> +	regmap_write(sysmon->regmap, SYSMON_ISR, isr);

Is writing 0 necessary?

> +	if (!isr)
> +		return IRQ_NONE;
> +
> +	sysmon_handle_events(indio_dev, isr);
> +	schedule_delayed_work(&sysmon->sysmon_unmask_work,
> +			      msecs_to_jiffies(SYSMON_UNMASK_WORK_DELAY_MS));
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int sysmon_init_interrupt(struct sysmon *sysmon,
> +				 struct device *dev,
> +				 struct iio_dev *indio_dev,
> +				 int irq)
> +{
> +	unsigned int imr;
> +	int ret;
> +
> +	/* Events not supported without IRQ (e.g. I2C path) */
> +	if (!irq)
> +		return 0;
> +
> +	ret = devm_delayed_work_autocancel(dev, &sysmon->sysmon_unmask_work,
> +					   sysmon_unmask_worker);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_read(sysmon->regmap, SYSMON_IMR, &imr);
> +	if (ret)
> +		return ret;
> +	sysmon->temp_mask = imr & SYSMON_TEMP_INTR_MASK;
> +
> +	return devm_request_irq(dev, irq, sysmon_iio_irq, 0,
> +				"sysmon-irq", indio_dev);



> +}

...

> +static int sysmon_init_hysteresis(struct sysmon *sysmon, int address,

Can address be negative?

> +				  int *hysteresis)

...

> +	ret = regmap_read(sysmon->regmap, upper_off, &upper_reg);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_read(sysmon->regmap, lower_off, &lower_reg);
> +	if (ret)
> +		return ret;

Half of the IO accessors have no error checks, these do.
Why is this inconsistency?

...

> +	if (has_irq) {
> +		temp_chans = temp_channels_with_events;
> +		num_static = ARRAY_SIZE(temp_channels_with_events);
> +	} else {
> +		temp_chans = temp_channels_no_events;
> +		num_static = ARRAY_SIZE(temp_channels_no_events);
> +	}
> +
>  	sysmon_channels = devm_kcalloc(dev,
> -				       size_add(ARRAY_SIZE(temp_channels),
> +				       size_add(num_static,
>  						num_supply + num_temp),

It makes inconsistency. Even originally. It should be two calls to size_add().

>  				       sizeof(*sysmon_channels), GFP_KERNEL);
>  	if (!sysmon_channels)
>  		return -ENOMEM;


...

> +	irq = fwnode_irq_get(dev_fwnode(dev), 0);
> +	has_irq = irq > 0;

This misses deferred probe.

...

> -	ret = sysmon_parse_fw(indio_dev, dev);
> +	ret = sysmon_parse_fw(indio_dev, dev, has_irq);

Why do we need has_irq? You can supply irq there as well and check it against 0.

>  	if (ret)
>  		return ret;
>  
> +	if (has_irq) {
> +		/* Set hysteresis mode for both temperature channels */
> +		ret = regmap_set_bits(sysmon->regmap, SYSMON_TEMP_EV_CFG,
> +				      SYSMON_OT_HYST_MASK |
> +				      SYSMON_TEMP_HYST_MASK);
> +		if (ret)
> +			return ret;
> +
> +		/* Initialize cached hysteresis from hardware registers */
> +		ret = sysmon_init_hysteresis(sysmon, SYSMON_ADDR_TEMP_EVENT,
> +					     &sysmon->temp_hysteresis);
> +		if (ret)
> +			return ret;
> +		ret = sysmon_init_hysteresis(sysmon, SYSMON_ADDR_OT_EVENT,
> +					     &sysmon->ot_hysteresis);
> +		if (ret)
> +			return ret;
> +
> +		ret = sysmon_init_interrupt(sysmon, dev, indio_dev, irq);
> +		if (ret)
> +			return ret;
> +	}

-- 
With Best Regards,
Andy Shevchenko



