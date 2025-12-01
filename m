Return-Path: <devicetree+bounces-243542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 369D6C99893
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 00:10:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B7D2B3421DD
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 23:10:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C59EC299AA9;
	Mon,  1 Dec 2025 23:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YAAIwuko"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA28A298CBE
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 23:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764630597; cv=none; b=mMe7YM4X0twDpZFnFkAmNwoUKkHDf7O6SGW7YQn/o0v66goZx/coagqtda55fa/BpcMcTNzCmqHYd/6m719HsZXQ0FSMoa8rSqL8oxY96gEeax7y3Ki9Ddrp9C5FpY2ekQlFxn0ALaVsENIdOuCCvEiU+rUkP6j2IZXs4+ky894=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764630597; c=relaxed/simple;
	bh=/eUhXyExv4wgAf5EwtYoskGgEbi3ORGlE6N1uP6w49k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XKItt5EmTVrospMi6Q8njmH0ubOWySenjtcBGHNagOQLbZjKxcNhKbMQ8k9CCSsJIjlCTn8ErV1DKCqkVLiECLa52ODniYR3vvMQoob/ab7co76uYwst7ZTEjUIcYL4EKi2+8mb47M9MOzGrZdtRpbyJpNyIbUM0MixolRjcCE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YAAIwuko; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-7c78d30649aso3672265a34.2
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 15:09:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1764630594; x=1765235394; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hUbHIEVOdnKaJVHv9FED5i81hbBjUfeFTC5j/bACfOo=;
        b=YAAIwukol0ZIPI3yK+Jm7RRuFm+BU1uflF5+jQjzhwB90Ar2RsfcW0MBDeA9SpDqo4
         ZyIYw37vxduH5mtPKuZ9ORteZa2LQoWlNi3P6IG6JVwTvF0zwP19lduUaAJw9i57d+RK
         9iSQkSB4u/hdaPVocoPuRxIeu8s33rj9GZSgS28g6OFl+ZiiLudwObA/0+7jmshvLyLX
         za7+eGfUbmCAQRSj3a8tw/zBH3N6h3EVHKf5gpKm65JMpjMqafRQ2uSWm7gs0dXAz385
         enGhdx+dxNZVwObp/Rx2aEj5IYla117Roq3IICR4RFEmDkB1pvE9uxficQ05Z3hNSPpX
         JlaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764630594; x=1765235394;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hUbHIEVOdnKaJVHv9FED5i81hbBjUfeFTC5j/bACfOo=;
        b=awdyKix+Ac9CWyNDLsMOZo4l0inw2pfJtCMOUtiuB35jv/Fd++7sDuKDfFDcYpwgFR
         F6DaY6K4T9yApOZh7VJYpr1+wAs0E29rennyE3t8ecCnj+fkVNwIqoN6pnTJ/P5cbGTR
         I9+XoSweS61XQP58+pbXw4hREbEyORW3VkekvuKh0zqXfk1xipQ1WnQllx3FcRZIJtXM
         UgEpsTX2u3qy8cAXTyCRA1/s227oVEd/UVvSWpQsysEn2Hps5Sz4jN5kqH62Qw4O9w98
         kQtFYtd4pYjRRY6adq8b/wrIvFKlezc9DfDv7eIkGgJBE8XOjbwBWIbIEWL2U32eG+Ij
         5hSw==
X-Forwarded-Encrypted: i=1; AJvYcCX/8FKEOigsATq9yQJUwP8OxaYLNf59iF9TWR4Sj8RONSLPogdDfUafgddEuA1+Rqi//K9WaQfCSyBn@vger.kernel.org
X-Gm-Message-State: AOJu0YyeHxbO0un6jVgpoGBrGnUqS30ZnVHAOefeY3EgVq/hSfDjycf0
	H1CtIGC21vB1fVtxFcEROTDV4+NpIdFdWuoDT1l6RChxzTUpIF6a7HHavd6Dv0yOKBI=
X-Gm-Gg: ASbGnctRWc7G0AL0ddk0VS4Pd9ZWHzkT2nlHT7gArFdcWeDkB2KlecWDBpXdQuyd7+i
	qZOB0P7war6LT4H9q2TfzFOj/yeYkguGyHUy3R1CNX+xRYjXy7NbUFzFl0olbPfVZeY91KnOENI
	rk3ydrnYfpmIiPfXCa1HVWV1hgZtVVs+15yQv+hjSnFD/5buApoODh5uxiBvHEF6W3wfE9pSN0N
	d6oN6uThprAKX4g1+I2EtCRKzz+6xH+/SUMklgjp+bp3tN/9AXN0yiBR2vVJYYdMl+g8pK/rzMD
	ORKAGcSQw4IYRydnI+vBt+MpMZeZYt6WRx4gbdAqBqBB77/27yoAB91UgXhYQ5oWPc20XQDG9Sx
	fKabcOiMOuwAJOywUiymWKCTQaiwkszT6vAZiCoz3fmpOfNVDJK+QVvI3LidQc5mUCZOag8JfV1
	xM1VFixs0CZudTf1KObg+drOfZFR2tUX7N6sClR/o8mQ5sh2OpaZzbHXnEjA==
X-Google-Smtp-Source: AGHT+IFegdnY0unEP0RbQiRbd3r8z5E/J+HLluFHhzq63NU8SonJrJ/Xtbb2UdFDzNsVP13yv8eXXA==
X-Received: by 2002:a05:6830:2b0f:b0:7c5:3045:6c81 with SMTP id 46e09a7af769-7c798e1eae2mr20252453a34.0.1764630593633;
        Mon, 01 Dec 2025 15:09:53 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:b67b:16c:f7ae:4908? ([2600:8803:e7e4:500:b67b:16c:f7ae:4908])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c90f5d7d82sm5453735a34.6.2025.12.01.15.09.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 15:09:53 -0800 (PST)
Message-ID: <a01f95ba-23c0-4c4b-a6bc-31b316bb04ef@baylibre.com>
Date: Mon, 1 Dec 2025 17:09:52 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] iio: adc: Add ti-ads1018 driver
To: Kurt Borja <kuurtb@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Tobias Sperling <tobias.sperling@softing.com>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20251128-ads1x18-v3-0-a6ebab815b2d@gmail.com>
 <20251128-ads1x18-v3-2-a6ebab815b2d@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251128-ads1x18-v3-2-a6ebab815b2d@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/28/25 9:47 PM, Kurt Borja wrote:
> Add ti-ads1018 driver for Texas Instruments ADS1018 and ADS1118 SPI
> analog-to-digital converters.
> 
> These chips' MOSI pin is shared with a data-ready interrupt. Defining
> this interrupt in devicetree is optional, therefore we only create an
> IIO trigger if one is found.
> 
> Handling this interrupt requires some considerations. When enabling the
> trigger the CS line is tied low (active), thus we need to hold
> spi_bus_lock() too, to avoid state corruption. This is done inside the
> set_trigger_state() callback, to let users use other triggers without
> wasting a bus lock.
> 
> Signed-off-by: Kurt Borja <kuurtb@gmail.com>
> ---

...

> +#define ADS1018_CFG_DEFAULT		0x058b

Would be nice to use the macros below to define this value so that we
know what it is actually doing.

> +
> +#define ADS1018_CFG_OS_TRIG		BIT(15)
> +#define ADS1018_CFG_TS_MODE_EN		BIT(4)
> +#define ADS1018_CFG_PULL_UP		BIT(3)
> +#define ADS1018_CFG_NOP			BIT(1)
> +#define ADS1018_CFG_VALID		(ADS1018_CFG_PULL_UP | ADS1018_CFG_NOP)
> +
> +#define ADS1018_CFG_MUX_MASK		GENMASK(14, 12)
> +
> +#define ADS1018_CFG_PGA_MASK		GENMASK(11, 9)
> +#define ADS1018_PGA_DEFAULT		2
> +
> +#define ADS1018_CFG_MODE_MASK		GENMASK(8, 8)

This is just BIT(8)

> +#define ADS1018_MODE_CONTINUOUS		0
> +#define ADS1018_MODE_ONESHOT		1
> +
> +#define ADS1018_CFG_DRATE_MASK		GENMASK(7, 5)
> +#define ADS1018_DRATE_DEFAULT		4
> +
> +#define ADS1018_CHANNELS_MAX		10
> +

...

> +#define ADS1018_VOLT_CHAN(_addr, _chan, _realbits) {				\
> +	.type = IIO_VOLTAGE,							\
> +	.channel = _chan,							\
> +	.scan_index = _addr,							\
> +	.scan_type = {								\
> +		.sign = 's',							\
> +		.realbits = _realbits,						\
> +		.storagebits = 16,						\
> +		.shift = 16 - _realbits,					\
> +		.endianness = IIO_BE,						\
> +	},									\
> +	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |				\
> +			      BIT(IIO_CHAN_INFO_SCALE) |			\
> +			      BIT(IIO_CHAN_INFO_SAMP_FREQ),			\
> +	.info_mask_shared_by_type_available = BIT(IIO_CHAN_INFO_SCALE),		\
> +	.info_mask_shared_by_all_available = BIT(IIO_CHAN_INFO_SAMP_FREQ),	\
> +	.indexed = true,							\
> +}
> +
> +#define ADS1018_TEMP_CHAN(_addr, _realbits) {					\
> +	.type = IIO_TEMP,							\
> +	.channel = 0,								\

channel doesn't matter if it isn't indexed. So we can omit that.

> +	.scan_index = _addr,							\

I would just say _index instead of _addr. For temperature, there is just a
bit flag separate from the mux values.

> +	.scan_type = {								\
> +		.sign = 's',							\
> +		.realbits = _realbits,						\
> +		.storagebits = 16,						\
> +		.shift = 16 - _realbits,					\
> +		.endianness = IIO_BE,						\
> +	},									\
> +	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |				\
> +			      BIT(IIO_CHAN_INFO_SCALE) |			\
> +			      BIT(IIO_CHAN_INFO_SAMP_FREQ),			\
> +	.info_mask_shared_by_all_available = BIT(IIO_CHAN_INFO_SAMP_FREQ),	\
> +}
> +

...

> +/**
> + * ads1018_calc_delay - Calculates an appropriate delay for a single-shot
> + *			reading

Could leave out a few words to make this fit on one line since we have
the long explanation below.

> + * @ad1018: Device data
> + *
> + * Calculates an appropriate delay for a single shot reading, assuming the
> + * device's maximum data-rate is used.
> + *
> + * Context: Expects iio_device_claim_direct() is held.
> + *
> + * Return: Delay in microseconds.
> + */
> +static unsigned long ads1018_calc_delay(struct ads1018 *ads1018)

Using unsigned long is odd since this doesn't depend on pointer size.
Better to use e.g. u32 so we don't have to think about different sizes
on different architectures.

> +{
> +	const struct ads1018_chip_info *chip_info = ads1018->chip_info;
> +	unsigned long max_drate_mode = chip_info->num_data_rate_mode_to_hz - 1;
> +	unsigned int hz = chip_info->data_rate_mode_to_hz[max_drate_mode];
> +
> +	/* We subtract 10% data-rate error */
> +	hz -= DIV_ROUND_UP(hz, 10);
> +
> +	/* Calculate time per sample in microseconds */
> +	return DIV_ROUND_UP(MICROHZ_PER_HZ, hz);
> +}
> +
> +/**
> + * ads1018_read_unlocked - Reads a conversion value from the device
> + * @ad1018: Device data
> + * @cnv: ADC Conversion value

Would be nice to mention that this one is optional.

> + * @hold_cs: Keep CS line asserted after the SPI transfer
> + *
> + * Reads the most recent ADC conversion value, without updating the
> + * device's configuration.
> + *
> + * Context: Expects spi_bus_lock() is held.
> + *
> + * Return: 0 on success, negative errno on error.
> + */
> +static int ads1018_read_unlocked(struct ads1018 *ads1018, __be16 *cnv, bool hold_cs)

It is a bit odd to me to call this "unlocked" and then call
"spi_synced_locked()". It sounds like we are using opposite words
to mean the same thing.

> +{
> +	int ret;
> +
> +	ads1018->xfer.cs_change = hold_cs;
> +
> +	ret = spi_sync_locked(ads1018->spi, &ads1018->msg_read);
> +	if (ret)
> +		return ret;
> +
> +	if (cnv)
> +		*cnv = ads1018->rx_buf[0];
> +
> +	return 0;
> +}
> +
> +/**
> + * ads1018_oneshot - Performs a one-shot reading sequence
> + * @ad1018: Device data
> + * @cfg: New configuration for the device
> + * @cnv: Conversion value
> + *
> + * Writes a new configuration, waits an appropriate delay (assuming the new
> + * configuration uses the maximum data-rate) and then reads the most recent
> + * conversion.
> + *
> + * Context: Expects iio_device_claim_direct() is held.
> + *
> + * Return: 0 on success, negative errno on error.
> + */
> +static int ads1018_oneshot(struct ads1018 *ads1018, u16 cfg, u16 *cnv)
> +{
> +	struct spi_transfer xfer[2] = {
> +		{
> +			.tx_buf = ads1018->tx_buf,
> +			.len = sizeof(ads1018->tx_buf),
> +			.delay = {
> +				.value = ads1018_calc_delay(ads1018),
> +				.unit = SPI_DELAY_UNIT_USECS,
> +			},
> +		},
> +		{
> +			.rx_buf = ads1018->rx_buf,
> +			.len = sizeof(ads1018->rx_buf),
> +		},
> +	};
> +	int ret;
> +
> +	ads1018->tx_buf[0] = cpu_to_be16(cfg);
> +	ads1018->tx_buf[1] = 0;

Do we actually need to transmit two words to trigger a conversion?

It looks like there is a "16-Bit Data Transmission Cycle" for when
we don't need to read the config register back.

> +
> +	ret = spi_sync_transfer(ads1018->spi, xfer, ARRAY_SIZE(xfer));
> +	if (ret)
> +		return ret;
> +
> +	*cnv = be16_to_cpu(ads1018->rx_buf[0]);
> +
> +	return 0;
> +}
> +
> +static int
> +ads1018_read_raw_unlocked(struct iio_dev *indio_dev, struct iio_chan_spec const *chan,

Saying "ulocked" here is a bit confusing since the previous "unlocked" had
to do with SPI bus lock rather than iio_device_claim_direct().

> +			  int *val, int *val2, long mask)
> +{

...

> +static int ads1018_buffer_preenable(struct iio_dev *indio_dev)
> +{
> +	struct ads1018 *ads1018 = iio_priv(indio_dev);
> +	const struct ads1018_chip_info *chip_info = ads1018->chip_info;
> +	unsigned int pga, drate, addr;
> +	u16 cfg;
> +
> +	addr = find_first_bit(indio_dev->active_scan_mask, iio_get_masklength(indio_dev));
> +	pga = ads1018_get_pga_mode(ads1018, addr);
> +	drate = ads1018_get_data_rate_mode(ads1018, addr);
> +
> +	cfg = ADS1018_CFG_VALID;
> +	cfg |= FIELD_PREP(ADS1018_CFG_MUX_MASK, addr);
> +	cfg |= FIELD_PREP(ADS1018_CFG_PGA_MASK, pga);
> +	cfg |= FIELD_PREP(ADS1018_CFG_MODE_MASK, ADS1018_MODE_CONTINUOUS);
> +	cfg |= FIELD_PREP(ADS1018_CFG_DRATE_MASK, drate);
> +
> +	if (chip_info->channels[addr].type == IIO_TEMP)
> +		cfg |= ADS1018_CFG_TS_MODE_EN;
> +
> +	ads1018->tx_buf[0] = cpu_to_be16(cfg);
> +	ads1018->tx_buf[1] = 0;

Seems like we could use 16-bit cycles here too?

> +
> +	return spi_write(ads1018->spi, ads1018->tx_buf, sizeof(ads1018->tx_buf));

Hmmm... In the case where the trigger is not the DRDY signal (i.e. hritmer or
sysfs), it seems like we would want to defer this until we actually receive
a trigger. Otherwise, if the trigger is not already enabled and it is a while
before the trigger is enabled, then the first data value will be quite stale
compared to the others since the conversion was done when the buffer was enabled
rather than when the trigger fired.

> +}
> +
> +static int ads1018_buffer_postdisable(struct iio_dev *indio_dev)
> +{
> +	struct ads1018 *ads1018 = iio_priv(indio_dev);
> +
> +	ads1018->tx_buf[0] = cpu_to_be16(ADS1018_CFG_DEFAULT);

Changing DEFAULT to a more descritive name (e.g. SINGLE_SHOT_MODE) would make
this more clear that the purpose of doing this is to take it out of conversion
mode. Otherwise, a comment would be helpful here.

> +	ads1018->tx_buf[1] = 0;
> +
> +	return spi_write(ads1018->spi, ads1018->tx_buf, sizeof(ads1018->tx_buf));
> +}
> +

...

> +static int ads1018_spi_probe(struct spi_device *spi)
> +{
> +	const struct ads1018_chip_info *info = spi_get_device_match_data(spi);
> +	struct iio_dev *indio_dev;
> +	struct ads1018 *ads1018;
> +	int ret;
> +
> +	indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*ads1018));
> +	if (!indio_dev)
> +		return -ENOMEM;
> +
> +	ads1018 = iio_priv(indio_dev);
> +	ads1018->spi = spi;
> +	ads1018->chip_info = info;
> +	spi_set_drvdata(spi, ads1018);

Looks like this isn't needed any more.

> +
> +	indio_dev->modes = INDIO_DIRECT_MODE;
> +	indio_dev->name = info->name;
> +	indio_dev->info = &ads1018_iio_info;
> +	indio_dev->channels = info->channels;
> +	indio_dev->num_channels = info->num_channels;
> +
> +	for (unsigned int i = 0; i < ADS1018_CHANNELS_MAX; i++) {
> +		ads1018->chan_data[i].data_rate_mode = ADS1018_DRATE_DEFAULT;
> +		ads1018->chan_data[i].pga_mode = ADS1018_PGA_DEFAULT;
> +	}
> +
> +	ads1018->xfer.rx_buf = ads1018->rx_buf;
> +	ads1018->xfer.len = sizeof(ads1018->rx_buf);
> +	spi_message_init_with_transfers(&ads1018->msg_read, &ads1018->xfer, 1);
> +
> +	ret = ads1018_trigger_setup(indio_dev);
> +	if (ret)
> +		return ret;
> +
> +	ret = devm_iio_triggered_buffer_setup(&spi->dev, indio_dev, iio_pollfunc_store_time,
> +					      ads1018_trigger_handler, &ads1018_buffer_ops);
> +	if (ret)
> +		return ret;
> +
> +	return devm_iio_device_register(&spi->dev, indio_dev);
> +}
> +
> +/**
> + * ADS1018_FSR_TO_SCALE - Converts FSR into scale
> + * @_fsr: Full-scale range in millivolts
> + * @_res: ADC resolution

This doesn't match the implementaion, it requires resolution - 1.
I would do the - 1 in the macro so that we can use the advertised
12 or 16-bit resolution in the tables.

> + *
> + * Return: Scale in IIO_VAL_INT_PLUS_NANO format
> + */
> +#define ADS1018_FSR_TO_SCALE(_fsr, _res) \
> +	{ 0, ((_fsr) * (MICRO >> 6)) / BIT((_res) - 6) }
> +
> +static const unsigned int ads1018_gain_table[][2] = {
> +	ADS1018_FSR_TO_SCALE(6144, 11),
> +	ADS1018_FSR_TO_SCALE(4096, 11),
> +	ADS1018_FSR_TO_SCALE(2048, 11),
> +	ADS1018_FSR_TO_SCALE(1024, 11),
> +	ADS1018_FSR_TO_SCALE(512, 11),
> +	ADS1018_FSR_TO_SCALE(256, 11),
> +};
> +
> +static const unsigned int ads1118_gain_table[][2] = {
> +	ADS1018_FSR_TO_SCALE(6144, 15),
> +	ADS1018_FSR_TO_SCALE(4096, 15),
> +	ADS1018_FSR_TO_SCALE(2048, 15),
> +	ADS1018_FSR_TO_SCALE(1024, 15),
> +	ADS1018_FSR_TO_SCALE(512, 15),
> +	ADS1018_FSR_TO_SCALE(256, 15),
> +};
> +

