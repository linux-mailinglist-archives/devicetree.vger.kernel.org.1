Return-Path: <devicetree+bounces-314963-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KYpQAfXgOmpWJwgAu9opvQ
	(envelope-from <devicetree+bounces-314963-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 21:39:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 499766B9BF3
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 21:39:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=F6zWYWMQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314963-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314963-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1D50C3011108
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 19:39:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73DF23932DA;
	Tue, 23 Jun 2026 19:39:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6398390CBA;
	Tue, 23 Jun 2026 19:39:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782243570; cv=none; b=CHjYIcoyMJhrMDDQSx7ynuZFvKXZBoBwz41kpcvN+vHyf6LwL02Z2c9jvI8pk2L6cJF45KroqDYJSWEnZn0OTwEUcNwSotbqA7cHXoPGjz5Gn148ZlggWFA/VWh8PU2gTF+HZ6I2d8v+wlZsHFb39bb5RwblKWskRmLR05pwg/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782243570; c=relaxed/simple;
	bh=QI78DdHho5jMfHcFDKbGcCg7qgdZ9wbobeprkmAkbno=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=heGAUwg1rumv3Zl1IblKUrhg/Db5n//b4ajBggqMcSZptFhfwh+PyRa6UNFljmoPG1uCE0v2wwZ/2ldaYFJ7PSAULMdYyxavPE8fn/t4YvtHuEVagZ5BjDRcnaImVKMMKZX5LxZaJjvr2Zuqot2QO/50Mnu8W0l8lmupfTY7wTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=F6zWYWMQ; arc=none smtp.client-ip=192.198.163.16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782243569; x=1813779569;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=QI78DdHho5jMfHcFDKbGcCg7qgdZ9wbobeprkmAkbno=;
  b=F6zWYWMQd38gsnhhxmjx7egfZB/gUD536vhR4K4VDMXEWedN7qKxMQUA
   u0Rf8eOTQAPWrCkR6UmF6P8cthT6V/wSiJaRIrncW3kihjQD5oef6DhmU
   /qSvLeXhs5GMyLFhQx4qw4rYXMl26YO1zeQZW9DwQ6vpOxKXx2U4tgr3i
   nExNeIQvkpnVIZ7iQDGRUZCVcMjdmxWhAy+gw5WzKOarnSktL6PktTknz
   iGxN3rSuAgHDbnWW5WfeT/wqK9TNuLH7MNWAjAlP+1QuT+67CjAlmjO4f
   wWah6k0vr9xcOJI6gKqYRfUA7Fp1gdNDl9XvNLp+qN0pIUSK8n934LisN
   g==;
X-CSE-ConnectionGUID: QrsDPQBTQ8mR717lYFuD6w==
X-CSE-MsgGUID: ESqZeqGGRau+TkJq3dvwvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="70512726"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; 
   d="scan'208";a="70512726"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2026 12:39:28 -0700
X-CSE-ConnectionGUID: tO4tU05vR/KPjHm1A0NwMg==
X-CSE-MsgGUID: YQn8dmKcS/2iyXu9MWI0Bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; 
   d="scan'208";a="254695288"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.7])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2026 12:39:25 -0700
Date: Tue, 23 Jun 2026 22:39:23 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Lukas Metz <lukas.metz@gmx.net>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] iio: dac: dac8163: Add driver for DAC8163
Message-ID: <ajrg62FtXNObGkmc@ashevche-desk.local>
References: <20260623-dac8163-work-v1-0-5b508158faa0@gmx.net>
 <20260623-dac8163-work-v1-1-5b508158faa0@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260623-dac8163-work-v1-1-5b508158faa0@gmx.net>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314963-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lukas.metz@gmx.net,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmx.net];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,intel.com:dkim,intel.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 499766B9BF3

On Tue, Jun 23, 2026 at 06:07:27PM +0200, Lukas Metz wrote:
> The DAC756x, DAC816x, and DAC856x devices are low-power, voltage-output,
> dual-channel, 12-, 14-, and 16-bit digital-to-analog converters (DACs),
> respectively. These devices include a 2.5-V, 4-ppm/°C internal
> reference, giving a full-scale output voltage range of 2.5 V or 5 V.

> +config TI_DAC8163
> +	tristate "Texas Instruments 12/14/16-bit 2-channel DAC driver"
> +	depends on SPI_MASTER
> +	help
> +	  Driver for the Texas Instruments digital-to-analog converter
> +	  family dacxx6x compatible with the variants DAC7562,
> +	  DAC7563, DAC8162, DAC8163, DAC8562 and DAC8563.

This list doesn't scale. Put one part number per line as
	  - DAC7... (channel bits)
	  - DAC8... (...)
	  - ...

> +	  If compiled as a module, it will be called ti-dac8163.

...

> +#include <linux/module.h>
> +#include <linux/spi/spi.h>

> +#include <linux/of.h>

No, for this header in new drivers. Can't we use device and/or fwnode property
APIs instead?

> +#include <linux/err.h>
> +#include <linux/slab.h>
> +#include <linux/iio/iio.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/units.h>
> +#include <linux/gpio/consumer.h>

> +#include <linux/printk.h>

? Usually one wants dev_printk.h.

> +#include <linux/bitfield.h>

Keep the list sorted, and also follow the IWYU principle.

...

> +#define COMMAND_SET(x, y) (FIELD_PREP(COMMAND_MASK, (x)) | \
> +							FIELD_PREP(ADDRESS_MASK, (y)))

This is ugly indentation. Compare to

#define COMMAND_SET(x, y)			\
	(FIELD_PREP(COMMAND_MASK, (x)) | FIELD_PREP(ADDRESS_MASK, (y)))

...

> +enum dacxx6x_ldac_modes {
> +	LDAC_MODE_ACTIVE = 0,
> +	LDAC_MODE_INACTIVE = 1

Leave trailing commas in the non-terminator entries here and there.

> +};

...

> +enum dacxx6x_supported_device_ids {
> +	ID_DAC7562,
> +	ID_DAC7563,
> +	ID_DAC8162,
> +	ID_DAC8163,
> +	ID_DAC8562,
> +	ID_DAC8563
> +};

This is solely used to make indexed array with chip_info. Instead kill this
enum and use separate structures.

...

> +struct dacxx6x_state {
> +	struct spi_device *spi;

Why not regmap?

> +	struct regulator *vref;
> +	struct gpio_desc *loaddacs;
> +
> +	bool internal_ref;
> +	int vref_uv;

_uV

> +	unsigned int cached[2];
> +
> +	/*
> +	 * Lock to protect the state of the device from potential concurrent
> +	 * write accesses from userspace.
> +	 */
> +	struct mutex lock;
> +};

...

> +#define DACXX6X_CHAN(id, resolution)                                        \
> +	{                                                                   \
> +		.type = IIO_VOLTAGE, .channel = (id), .output = 1,          \
> +		.indexed = 1, .info_mask_separate = BIT(IIO_CHAN_INFO_RAW), \

Do not put two or more things on the same line, it's unreadable.

> +		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),       \

> +		.scan_type = { .realbits = (resolution),                    \
> +			       .shift = 16 - (resolution) },                \

Make these to be 4 lines.

> +	}

...

> +static const struct dacxx6x_chip_info dacxx6x_chip_info_table[6] = {

Drop the number in the square brackets, let compiler do that job. But see
above, this has to be just 6 different data structures.

> +};

...

> +static int dacxx6x_write_reg(struct dacxx6x_state *st, int reg, int addr,
> +			     unsigned int val)
> +{
> +	u8 tx[3];

Are you sure about this? How would it work with DMA?

> +	tx[0] = COMMAND_SET(reg, addr);
> +	tx[1] = (val >> 8) & 0xff;
> +	tx[2] = val & 0xff;

Use proper unaligned setters: put_unaligned_be16() from linux/unaligned.h.

> +	return spi_write(st->spi, tx, sizeof(tx));
> +}

...

> +static int dacxx6x_write_raw(struct iio_dev *indio_dev,
> +			     struct iio_chan_spec const *chan, int val,
> +			     int val2, long mask)

Split logically:

static int dacxx6x_write_raw(struct iio_dev *indio_dev,
			     struct iio_chan_spec const *chan,
			     int val, int val2, long mask)

> +{
> +	struct dacxx6x_state *st = iio_priv(indio_dev);
> +	struct device *dev = &st->spi->dev;
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_RAW:

> +		dev_dbg(dev, "%s: val=%d val2=%d\n", __func__, val, val2);

No. Is it RFC? PoC? Or production-ready? If not the latter, come when it will
be production-ready.

> +		if (val2 != 0)
> +			return -EINVAL;

> +		if (val < 0 || val >= BIT(chan->scan_type.realbits))
> +			return -EINVAL;

Why not ERANGE or something like this?

> +
> +		mutex_lock(&st->lock);

Why not guard()()?

> +		int ret = dacxx6x_write_reg(st, CMD_WRITE_UPDATE, chan->channel,
> +					    (unsigned int)val
> +						    << chan->scan_type.shift);

Awful indentation. Please, check

> +		if (!ret)

No, use regular pattern: Check for error first.

> +			st->cached[chan->channel] = val;
> +		mutex_unlock(&st->lock);
> +		return ret;
> +	default:
> +		return -EINVAL;
> +	}
> +}

...

> +static int dacxx6x_probe(struct spi_device *spi)
> +{
> +	struct iio_dev *indio_dev;
> +	struct dacxx6x_state *st;
> +	const struct dacxx6x_chip_info *info;
> +	int ret;

Reversed xmas tree order, please.

> +	indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
> +	if (!indio_dev)
> +		return -ENOMEM;
> +
> +	st = iio_priv(indio_dev);
> +	st->spi = spi;

> +	spi_set_drvdata(spi, indio_dev);

Is it being used?

> +	st->loaddacs = devm_gpiod_get_optional(&spi->dev, "ti,loaddacs",
> +					       GPIOD_OUT_LOW);

In the above you used temporary variable for struct device, why not here?

> +	if (IS_ERR(st->loaddacs))
> +		return PTR_ERR(st->loaddacs);
> +
> +	st->internal_ref =
> +		device_property_read_bool(&spi->dev, "ti,internal-ref");

And here (and it becomes a single line as well).

> +	if (!st->internal_ref) {
> +		st->vref = devm_regulator_get(&spi->dev, "vref");
> +		if (IS_ERR(st->vref))
> +			return PTR_ERR(st->vref);
> +
> +		ret = regulator_enable(st->vref);
> +		if (ret < 0)
> +			return ret;
> +	}

Can't you get just voltage and be done with it for now?

> +	mutex_init(&st->lock);

devm_mutex_init.

> +	if (st->internal_ref) {
> +		st->vref_uv = 2500000; /* 2.5V internal reference */
> +	} else {
> +		st->vref_uv = regulator_get_voltage(st->vref);
> +		if (st->vref_uv < 0) {
> +			ret = st->vref_uv;
> +			goto err;
> +		}
> +	}
> +
> +	gpiod_set_value(st->loaddacs, 0);
> +
> +	ret = dacxx6x_write_reg(st, CMD_LDAC_MODE, 0,
> +				FIELD_PREP(LDAC_MODE_CHANNEL_A_MASK, LDAC_MODE_INACTIVE) |
> +				FIELD_PREP(LDAC_MODE_CHANNEL_B_MASK, LDAC_MODE_INACTIVE));

> +

Stray blank line.

> +	if (ret < 0)
> +		goto err;
> +
> +	ret = dacxx6x_write_reg(st, CMD_SEL_REFERENCE, 0,
> +				FIELD_PREP(VOLTAGE_REFERENCE_MASK, st->internal_ref));
> +

Ditto.

> +	if (ret < 0)
> +		goto err;
> +
> +	info = spi_get_device_match_data(spi);

We need to check for NULL here due to driver_override.

> +	indio_dev->name = info->name;
> +	indio_dev->modes = INDIO_DIRECT_MODE;
> +	indio_dev->info = &dacxx6x_iio_info;
> +	indio_dev->channels = info->channels;
> +	indio_dev->num_channels = 2;
> +
> +	ret = iio_device_register(indio_dev);
> +	if (ret)
> +		goto err;
> +
> +	return 0;

> +err:
> +	if (!st->internal_ref)
> +		regulator_disable(st->vref);
> +	mutex_destroy(&st->lock);
> +	return ret;
> +}

...

> +static void dacxx6x_remove(struct spi_device *spi)
> +{
> +	struct iio_dev *indio_dev = spi_get_drvdata(spi);
> +	struct dacxx6x_state *st = iio_priv(indio_dev);
> +
> +	iio_device_unregister(indio_dev);
> +	mutex_destroy(&st->lock);
> +	if (!st->internal_ref)
> +		regulator_disable(st->vref);
> +}

Finish devm conversion and drop this function.

...

> +#define DACXX6X_COMPATIBLE(of_compatible, id)        \
> +	{                                            \
> +		.compatible = of_compatible,         \
> +		.data = &dacxx6x_chip_info_table[id] \
> +	}

No, just use directly, so drop this macro.

> +static const struct of_device_id dacxx6x_of_match[] = {
> +	DACXX6X_COMPATIBLE("ti,dac7562", ID_DAC7562),
> +	DACXX6X_COMPATIBLE("ti,dac7563", ID_DAC7563),
> +	DACXX6X_COMPATIBLE("ti,dac8162", ID_DAC8162),
> +	DACXX6X_COMPATIBLE("ti,dac8163", ID_DAC8163),
> +	DACXX6X_COMPATIBLE("ti,dac8562", ID_DAC8562),
> +	DACXX6X_COMPATIBLE("ti,dac8563", ID_DAC8563),
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, dacxx6x_of_match);
> +
> +static const struct spi_device_id dacxx6x_id_table[] = {
> +	{ "dac7562", (kernel_ulong_t)&dacxx6x_chip_info_table[ID_DAC7562] },
> +	{ "dac7563", (kernel_ulong_t)&dacxx6x_chip_info_table[ID_DAC7563] },
> +	{ "dac8162", (kernel_ulong_t)&dacxx6x_chip_info_table[ID_DAC8162] },
> +	{ "dac8163", (kernel_ulong_t)&dacxx6x_chip_info_table[ID_DAC8163] },
> +	{ "dac8562", (kernel_ulong_t)&dacxx6x_chip_info_table[ID_DAC8562] },
> +	{ "dac8563", (kernel_ulong_t)&dacxx6x_chip_info_table[ID_DAC8563] },
> +	{}
> +};

> +

Unneeded blank line.

> +MODULE_DEVICE_TABLE(spi, dacxx6x_id_table);
> +
> +static struct spi_driver dacxx6x_driver = {
> +	.driver = {
> +		.name = "ti-dacxx6x",
> +		.of_match_table = dacxx6x_of_match,
> +	},
> +	.probe = dacxx6x_probe,
> +	.remove = dacxx6x_remove,
> +	.id_table = dacxx6x_id_table,
> +};

> +

Ditto.

> +module_spi_driver(dacxx6x_driver);

-- 
With Best Regards,
Andy Shevchenko



