Return-Path: <devicetree+bounces-309123-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HI7DGjsyKGq5/wIAu9opvQ
	(envelope-from <devicetree+bounces-309123-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 17:33:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AC1661C9C
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 17:33:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=X4ov3F+D;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309123-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309123-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9C4AC31C5F2A
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 15:08:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC888481241;
	Tue,  9 Jun 2026 15:06:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBBCD480DEC;
	Tue,  9 Jun 2026 15:06:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781017614; cv=none; b=gor+Wr2vvCqaBpkI9j5Kfyp2vM1OAfa5juXLd6v7W24GUhWMIiweiK95xEy4y4aQhbs4t507vHzeRHzr3y5Ie9SyPZ0TY07+a08BVPhazGzI/lfVVfMDw8eNFd1SB5mQHSe5ULLZb5HkcpVGoUVQDlWY+j9BLb953QQaHEXWLDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781017614; c=relaxed/simple;
	bh=oXOByN/3fHzhwhoia8Fbb927qFUHwro/NM3XH+AnsYI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fqBT3f0NIu8tBj3gSkY+PsECB24HJmpvIhbhqFcKRFJfDZ/OE9j6C0x6yoagpmaJAsv0cyCRoxxKRWBT+AX6mogmKs2WIAjJMX1cwA/Kn2LYVt6uU3sWSx2uUTa+tSQys6Kj95E+rFOCkS2eHS1qKVAQ0b9SZaUXBxLgJOaJidA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=X4ov3F+D; arc=none smtp.client-ip=198.175.65.15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781017613; x=1812553613;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=oXOByN/3fHzhwhoia8Fbb927qFUHwro/NM3XH+AnsYI=;
  b=X4ov3F+DKYZz2u5XHE9EL9OXNGYLnZHEDY+vZnqJ2rV6nAaL12FsH+MV
   k6nF6QkYEG4j5HcxYFHFz3QPKgFdbewTv4LH0VciC4plRvjJyot6uq0p6
   0/7N1gAKFbKwu3Plxg3RdgXO8iu+fSapMNBup1Xp133WEW/6Ou1lXreHY
   44NUz2n4oZtad9nxq0WeQuHGZ9u9Pd8FYEE8xus0ST/sV+hjn35HtzK57
   4lKyrtkRYwEDDvfLiU/gnFbqZmvgUBbSPQczmP+Afp5fLTfV+c79z817s
   O8tJ1+PvG4GrX4VKxcqLpOf5jnZr9TbY62yUpdbpyJ1C6hmuxy1fwy6b2
   g==;
X-CSE-ConnectionGUID: g7ku7IqgTzWDTzP8uRgH0g==
X-CSE-MsgGUID: blqizpsMR2WSBdf0lTTMhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="85404400"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; 
   d="scan'208";a="85404400"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jun 2026 08:06:53 -0700
X-CSE-ConnectionGUID: e+qmqe1uQgepN1t9N+Eq/g==
X-CSE-MsgGUID: cp/P2CcGTj69FzT7pKkWlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; 
   d="scan'208";a="242927898"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.162])
  by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jun 2026 08:06:49 -0700
Date: Tue, 9 Jun 2026 18:06:46 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Salih Erim <salih.erim@amd.com>
Cc: jic23@kernel.org, andy@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, conall.ogriofa@amd.com, michal.simek@amd.com,
	linux@roeck-us.net, erimsalih@gmail.com, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/5] iio: adc: add Versal SysMon driver
Message-ID: <aigsBk5pj0w8rfFZ@ashevche-desk.local>
References: <20260608183801.1257051-1-salih.erim@amd.com>
 <20260608183801.1257051-3-salih.erim@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260608183801.1257051-3-salih.erim@amd.com>
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
	TAGGED_FROM(0.00)[bounces-309123-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,ashevche-desk.local:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 23AC1661C9C

On Mon, Jun 08, 2026 at 07:37:58PM +0100, Salih Erim wrote:
> Add the core driver and MMIO platform driver for the AMD/Xilinx Versal
> System Monitor (SysMon) block.
> 
> The SysMon block resides in the platform management controller (PMC) and
> provides on-chip voltage and temperature monitoring through a 10-bit,
> 200 kSPS ADC. It can monitor up to 160 voltage channels and 64
> temperature satellites distributed across the SoC, with a consistent
> sample rate of 8 kSPS per channel regardless of how many channels are
> enabled.
> 
> The driver is split into three compilation units:
>   - versal-sysmon-core: Channel parsing, IIO registration, read_raw
>   - versal-sysmon: MMIO platform driver with custom regmap accessors
> 
> Voltage results are stored in a 19-bit modified floating-point format
> and converted to millivolts. Temperature results are stored in Q8.7
> signed fixed-point Celsius format and converted to millicelsius.
> 
> The MMIO regmap backend uses a custom reg_write accessor that
> automatically unlocks the NPI (NoC programming interface) lock
> register before each write, as required by the hardware. The regmap
> is configured with fast_io since the underlying MMIO accessors are
> safe to call from atomic context.

Almost there.

...

> +static int sysmon_parse_fw(struct iio_dev *indio_dev, struct device *dev)
> +{
> +	unsigned int num_supply = 0, num_temp = 0;

Unneeded assignments.

> +	unsigned int idx, temp_chan_idx, volt_chan_idx;
> +	struct iio_chan_spec *sysmon_channels;
> +	const char *label;
> +	u32 reg;
> +	int ret;
> +
> +	struct fwnode_handle *supply_node __free(fwnode_handle) =
> +		device_get_named_child_node(dev, "voltage-channels");
> +	num_supply = fwnode_get_child_node_count(supply_node);
> +
> +	struct fwnode_handle *temp_node __free(fwnode_handle) =
> +		device_get_named_child_node(dev, "temperature-channels");
> +	num_temp = fwnode_get_child_node_count(temp_node);
> +
> +	sysmon_channels = devm_kcalloc(dev,
> +				       size_add(size_add(ARRAY_SIZE(temp_channels),
> +						  num_supply), num_temp),
> +				       sizeof(*sysmon_channels), GFP_KERNEL);

Something happened to indentation of the third line (out of four). Taking into
account nested size_add(), I would rewrite the whole thing as

	sysmon_channels = devm_kcalloc(dev,
				       size_add(num_temp,
						size_add(ARRAY_SIZE(temp_channels), num_supply)),
				       sizeof(*sysmon_channels), GFP_KERNEL);

Or even use temporary variable

	unsigned int num_chan;

	num_chan = size_add(num_temp, size_add(ARRAY_SIZE(temp_channels), num_supply)),
	sysmon_channels = devm_kcalloc(dev, num_chan, sizeof(*sysmon_channels), GFP_KERNEL);

still over 80, but a bit shorter.

> +	if (!sysmon_channels)
> +		return -ENOMEM;
> +
> +	/* Static temperature channels first (fixed indices) */

> +	idx = 0;

Why?

> +	memcpy(sysmon_channels, temp_channels, sizeof(temp_channels));
> +	idx += ARRAY_SIZE(temp_channels);

Just

	idx = ARRAY_SIZE(temp_channels);

> +	/* Supply channels from DT */
> +	fwnode_for_each_child_node_scoped(supply_node, child) {
> +		ret = fwnode_property_read_u32(child, "reg", &reg);
> +		if (ret)
> +			return dev_err_probe(dev, ret,
> +					     "missing reg for supply channel\n");
> +
> +		if (reg > SYSMON_SUPPLY_IDX_MAX)
> +			return dev_err_probe(dev, -EINVAL,
> +					     "supply reg %u exceeds max %u\n",
> +					     reg, SYSMON_SUPPLY_IDX_MAX);
> +
> +		ret = fwnode_property_read_string(child, "label", &label);
> +		if (ret)
> +			return dev_err_probe(dev, ret,
> +					     "missing label for supply channel\n");
> +
> +		sysmon_channels[idx++] = (struct iio_chan_spec) {
> +			.type = IIO_VOLTAGE,
> +			.indexed = 1,
> +			.address = reg,

> +			.info_mask_separate =
> +				BIT(IIO_CHAN_INFO_PROCESSED),

Perfectly one line. Is it going to be expanded in the next changes?
If not, join.

> +			.datasheet_name = label,
> +		};
> +	}
> +
> +	/* Temperature satellite channels from DT */
> +	fwnode_for_each_child_node_scoped(temp_node, child) {
> +		ret = fwnode_property_read_u32(child, "reg", &reg);
> +		if (ret)
> +			return dev_err_probe(dev, ret,
> +					     "missing reg for temp channel\n");
> +
> +		if (reg < 1 || reg > SYSMON_TEMP_SAT_MAX)
> +			return dev_err_probe(dev, -EINVAL,
> +					     "temp reg %u out of range [1..%u]\n",
> +					     reg, SYSMON_TEMP_SAT_MAX);
> +
> +		ret = fwnode_property_read_string(child, "label", &label);
> +		if (ret)
> +			return dev_err_probe(dev, ret,
> +					     "missing label for temp channel\n");
> +
> +		sysmon_channels[idx++] = (struct iio_chan_spec) {
> +			.type = IIO_TEMP,
> +			.indexed = 1,
> +			.address = SYSMON_TEMP_SAT_BASE +
> +				   (reg - 1) * SYSMON_REG_STRIDE,
> +			.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
> +			.info_mask_shared_by_type =
> +				BIT(IIO_CHAN_INFO_SCALE),

Ditto.

> +			.datasheet_name = label,
> +		};
> +	}
> +
> +	indio_dev->num_channels = idx;
> +	indio_dev->info = &sysmon_iio_info;
> +
> +	/*
> +	 * Assign per-type sequential channel numbers.
> +	 * IIO sysfs uses type prefix (in_tempN, in_voltageN)
> +	 * so numbers only need to be unique within each type.
> +	 */
> +	temp_chan_idx = 0;
> +	volt_chan_idx = 0;
> +	for (unsigned int idx = 0; idx < indio_dev->num_channels; idx++) {
> +		if (sysmon_channels[idx].type == IIO_TEMP)
> +			sysmon_channels[idx].channel = temp_chan_idx++;
> +		else
> +			sysmon_channels[idx].channel = volt_chan_idx++;
> +	}
> +
> +	indio_dev->channels = sysmon_channels;
> +
> +	return 0;
> +}

-- 
With Best Regards,
Andy Shevchenko



