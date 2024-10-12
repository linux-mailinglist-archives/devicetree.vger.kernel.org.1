Return-Path: <devicetree+bounces-110659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 403C899B5A6
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 16:50:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B91CB1F21EB2
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 14:50:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74B6D15B11D;
	Sat, 12 Oct 2024 14:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ez1DVwM9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4581D1EA90;
	Sat, 12 Oct 2024 14:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728744651; cv=none; b=MpUgPwnwnH29d4kfAtk+2mFObsYL91x2TN7bSQwHl6sg+AlDARhooZlNfSbYKuMO2V+oYn3ShInnwmxb/L0A1hY0b7H/bj80Vi5tvXYE4eOQ1EZZkssQDzAD5ubfIoLEVdlvNkjV6klDlFQq5hXmXthlQhkRANnxPuURpwNuTJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728744651; c=relaxed/simple;
	bh=oWK+G35tqjeOrY3nEoHz20aU8gnY6PZxPX47sBfjvH8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DBTXi8YtO2K0DPAwFUtv1TNgcaakS5gSdQMqIXneSokZCB8P/YtXWEXMkboySQyMbPeVCcxhHRGGV2hRS0kix/PRxZSu3i758N5j7srP+xua2FNnhg88r64tcSq7R94+6snpEr1QytVpC4vWt62LryrN0d8sH16tFFhgPUQjPek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ez1DVwM9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8E4BC4CEC6;
	Sat, 12 Oct 2024 14:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728744650;
	bh=oWK+G35tqjeOrY3nEoHz20aU8gnY6PZxPX47sBfjvH8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Ez1DVwM9DYYtj/xNopMxe0xN2ngsf1M9rt5q4Nr27kvHDSnGXeBX6FdBoCD4O5isf
	 9EuTuhWSGW2lQ8KHgPZDo/XknO2fy7mNx4uvUPDxwyAGgqAl8u/PzWMnTN+gOxu3Xl
	 a/JzPrNGjX9OYbggVwRR4DcaUowhYU7VS+Gs77QUC4wG71FldFiRcto8LXd/Q5OlLh
	 Sfr0u/CzDqkm/APeFM8/pDXPGLX9Xy8QrY09aXTh4Hhy0l2sz/kPpIS9x5F9UtL37D
	 9ZXyYj8oGKLTOwFJmms3k1osq+JFK8imuPiV5b4mlNVCMqMQ8/LIuYhQ7DkzTSbSOe
	 WebBzrodA1CcA==
Date: Sat, 12 Oct 2024 15:50:43 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org
Subject: Re: [PATCH 3/3] iio: magnetometer: add Allegro MicroSystems
 ALS31300 3-D Linear Hall Effect driver
Message-ID: <20241012155043.48b7a4a9@jic23-huawei>
In-Reply-To: <20241007-topic-input-upstream-als31300-v1-3-2c240ea5cb77@linaro.org>
References: <20241007-topic-input-upstream-als31300-v1-0-2c240ea5cb77@linaro.org>
	<20241007-topic-input-upstream-als31300-v1-3-2c240ea5cb77@linaro.org>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 07 Oct 2024 15:14:40 +0200
Neil Armstrong <neil.armstrong@linaro.org> wrote:

> The Allegro MicroSystems ALS31300 is a 3-D Linear Hall Effect Sensor
> mainly used for 3D head-on motion sensing applications.
> 
> The device is configured over I2C, and as part of the Sensor
> data the temperature core is also provided.
> 
> While the device provides an IRQ gpio, it depends on a configuration
> programmed into the internal EEPROM, thus only the default mode
> is supported and buffered input via trigger is also supported
> to allow streaming values with the same sensing timestamp.
> 
> The device can be configured with different sensitivities in factory,
> but the sensitivity value used to calculate value into the Gauss
> unit is not available from registers, thus the sensitivity is
> provided by the compatible/device-id string which is based
> on the part number as described in the datasheet page 2.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
Hi Neil.

Pretty clean driver. Just a few minor comments inline.

Thanks,

Jonathan


> diff --git a/drivers/iio/magnetometer/als31300.c b/drivers/iio/magnetometer/als31300.c
> new file mode 100644
> index 000000000000..123e6a63b516
> --- /dev/null
> +++ b/drivers/iio/magnetometer/als31300.c
> @@ -0,0 +1,459 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Driver for the Allegro MicroSystems ALS31300 3-D Linear Hall Effect Sensor
> + *
> + * Copyright (c) 2024 Linaro Limited
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/bits.h>
> +#include <linux/delay.h>
> +#include <linux/module.h>
> +#include <linux/i2c.h>
> +#include <linux/regmap.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/regulator/consumer.h>
> +
> +#include <linux/iio/buffer.h>
> +#include <linux/iio/iio.h>
> +#include <linux/iio/trigger_consumer.h>
> +#include <linux/iio/triggered_buffer.h>
> +
> +/*
> + * The Allegro MicroSystems ALS31300 has an EEPROM space to configure how
> + * the device works and how the interrupt line behaves,

behaves.

> + * we only support the default setup with external trigger

	Only the default setup with external trigger is supported.
etc.

> + *
> + * Since by default the interrupt line is disable, we don't
> + * support GPIO interrupt events for now.
> + *
> + * It should be possible to adapt the driver to the current
> + * device setup, but we leave it as a future exercise.
> + */
> +
> +#define ALS31300_EEPROM_CONFIG		0x02
> +#define ALS31300_EEPROM_INTERRUPT	0x03
> +#define ALS31300_EEPROM_CUSTOMER_1	0x0d
> +#define ALS31300_EEPROM_CUSTOMER_2	0x0e
> +#define ALS31300_EEPROM_CUSTOMER_3	0x0f
> +#define ALS31300_VOLATILE_MODE		0x27

Is spelling out volatile needed? Maybe VOL or just V or skip
it completely as it makes for some long lines?

> +#define ALS31300_VOLATILE_MODE_LPDCM		GENMASK(6, 4)
> +#define ALS31300_VOLATILE_MODE_SLEEP		GENMASK(1, 0)
> +#define ALS31300_VOLATILE_MSB		0x28
> +#define ALS31300_VOLATILE_MSB_TEMPERATURE	GENMASK(5, 0)
> +#define ALS31300_VOLATILE_MSB_INTERRUPT		BIT(6)
> +#define ALS31300_VOLATILE_MSB_NEW_DATA		BIT(7)
> +#define ALS31300_VOLATILE_MSB_Z_AXIS		GENMASK(15, 8)
> +#define ALS31300_VOLATILE_MSB_Y_AXIS		GENMASK(23, 16)
> +#define ALS31300_VOLATILE_MSB_X_AXIS		GENMASK(31, 24)
> +#define ALS31300_VOLATILE_LSB		0x29
> +#define ALS31300_VOLATILE_LSB_TEMPERATURE	GENMASK(5, 0)
> +#define ALS31300_VOLATILE_LSB_HALL_STATUS	GENMASK(7, 7)
> +#define ALS31300_VOLATILE_LSB_Z_AXIS		GENMASK(11, 8)
> +#define ALS31300_VOLATILE_LSB_Y_AXIS		GENMASK(15, 12)
> +#define ALS31300_VOLATILE_LSB_X_AXIS		GENMASK(19, 16)
> +#define ALS31300_VOLATILE_LSB_INTERRUPT_WRITE	BIT(20)
> +#define ALS31300_CUSTOMER_ACCESS	0x35
> +
> +#define ALS31300_LPDCM_INACTIVE_0_5_MS		0
> +#define ALS31300_LPDCM_INACTIVE_1_0_MS		1
> +#define ALS31300_LPDCM_INACTIVE_5_0_MS		2
> +#define ALS31300_LPDCM_INACTIVE_10_0_MS		3
> +#define ALS31300_LPDCM_INACTIVE_50_0_MS		4
> +#define ALS31300_LPDCM_INACTIVE_100_0_MS	5
> +#define ALS31300_LPDCM_INACTIVE_500_0_MS	6
> +#define ALS31300_LPDCM_INACTIVE_1000_0_MS	7
I'd move these up to next to the field def above.
Can play games with indent to make it clear they are the contents of
that field.

#define ALS31300_VOLATILE_MODE_LPDCM		GENMASK(6, 4)
#define   ALS31300_LPDCM_INACTIVE_0_5_MS	0
etc


> +
> +#define ALS31300_VOLATILE_MODE_ACTIVE_MODE	0
> +#define ALS31300_VOLATILE_MODE_SLEEP_MODE	1
> +#define ALS31300_VOLATILE_MODE_LPDCM_MODE	2
> +
> +#define ALS31300_DATA_X_GET(__buf)			\

Why __buf?  I'd just use b

> +		((int)(s8)FIELD_GET(ALS31300_VOLATILE_MSB_X_AXIS, __buf[0]) << 4 | \
> +			  FIELD_GET(ALS31300_VOLATILE_LSB_X_AXIS, __buf[1]))
> +#define ALS31300_DATA_Y_GET(__buf)			\
> +		((int)(s8)FIELD_GET(ALS31300_VOLATILE_MSB_Y_AXIS, __buf[0]) << 4 | \
> +			  FIELD_GET(ALS31300_VOLATILE_LSB_Y_AXIS, __buf[1]))
> +#define ALS31300_DATA_Z_GET(__buf)			\
> +		((int)(s8)FIELD_GET(ALS31300_VOLATILE_MSB_Z_AXIS, __buf[0]) << 4 | \
> +			  FIELD_GET(ALS31300_VOLATILE_LSB_Z_AXIS, __buf[1]))

Nice way to make these more readable is sign_extend32() rather than the casts.
So
	sign_extend32(FIELD_GET(ALS31300_VOLATILE_MSB_X_AXIS, b[0]) << 4 |
		      FIELD_GET(ALS31300_VOLATILE_LSB_X_AXIS, b[1]),
		      11);


> +#define ALS31300_TEMPERATURE_GET(__buf)			\
> +		((u32)(u8)FIELD_GET(ALS31300_VOLATILE_MSB_TEMPERATURE, __buf[0]) << 6 | \
> +			  FIELD_GET(ALS31300_VOLATILE_LSB_TEMPERATURE, __buf[1]))

What does the u8 cast change?

> +

> +struct als31300_data {
> +	struct device *dev;
> +	/* protects power on/off the device and access HW */
> +	struct mutex mutex;
> +	unsigned long sensitivity;
> +	struct regmap *map;
> +	struct {
> +		u16 temperature;
> +		s16 channels[3];
> +		s64 timestamp __aligned(8);
aligned_s64 timestamp


It's new so for now only in the togreg branch of iio.git.

> +	} scan;
> +};
> +
> +/* The whole measure is split into 2x32bit registers, we need to read them both at once */
> +static int als31300_get_measure(struct als31300_data *data, s16 *t, s16 *x,
> +				s16 *y, s16 *z)
> +{
> +	unsigned int count = 0;
> +	u32 buf[2];
> +	int ret;
> +
> +	mutex_lock(&data->mutex);

	guard(mutex)(&data->mutex) and drop the unlock handling.
It's a small simplification but still nice to have here.

> +	ret = pm_runtime_resume_and_get(data->dev);
> +	if (ret)
> +		goto unlock;
> +
> +	/* Max update rate it 2KHz, wait up to 1ms */
> +	while (count < 50) {
> +		/* Read Data */
> +		ret = regmap_bulk_read(data->map, ALS31300_VOLATILE_MSB, buf, 2);
> +		if (ret) {
> +			dev_err(data->dev, "read data failed, error %d\n", ret);
> +			goto out;
> +		}
> +
> +		/* Check if data is valid, happens right after getting out of sleep mode */
> +		if (FIELD_GET(ALS31300_VOLATILE_MSB_NEW_DATA, buf[0]))
> +			break;
> +
> +		usleep_range(10, 20);
> +		++count;
> +	}
> +
> +	if (count >= 50) {
> +		ret = -ETIMEDOUT;
> +		goto out;
> +	}
> +
> +	*t = ALS31300_TEMPERATURE_GET(buf);
> +	*x = ALS31300_DATA_X_GET(buf);
> +	*y = ALS31300_DATA_Y_GET(buf);
> +	*z = ALS31300_DATA_Z_GET(buf);
> +
> +out:
> +	pm_runtime_mark_last_busy(data->dev);
> +	pm_runtime_put_autosuspend(data->dev);
> +
> +unlock:
> +	mutex_unlock(&data->mutex);
> +
> +	return ret;
> +}
> +
> +static int als31300_read_raw(struct iio_dev *indio_dev,
> +			     const struct iio_chan_spec *chan, int *val,
> +			     int *val2, long mask)
> +{
> +	struct als31300_data *data = iio_priv(indio_dev);
> +	s16 t, x, y, z;
> +	int ret;
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_PROCESSED:
> +	case IIO_CHAN_INFO_RAW:
> +		ret = als31300_get_measure(data, &t, &x, &y, &z);
> +		if (ret)
> +			return ret;

blank line here would perhaps make this a tiny bit easier to read.

> +		switch (chan->address) {
> +		case TEMPERATURE:
> +			*val = t;
> +			return IIO_VAL_INT;
> +		case AXIS_X:
> +			*val = x;
> +			return IIO_VAL_INT;
> +		case AXIS_Y:
> +			*val = y;
> +			return IIO_VAL_INT;
> +		case AXIS_Z:
> +			*val = z;
> +			return IIO_VAL_INT;
> +		default:
> +			return -EINVAL;
> +		}
> +	case IIO_CHAN_INFO_SCALE:
> +		switch (chan->type) {
> +		case IIO_TEMP:
> +			/*
> +			 * Fractional part of:
> +			 *         302(value - 1708)
> +			 * temp = ------------------
> +			 *             4096
> +			 * to convert temperature in Celcius

Units in IIO ABI (because we copied hwmon) are millidegrees celcius.
Bad decision a long time back, but we are stuck with it.
See Documentation/ABI/testing/sysfs-bus-iio

> +			 */
> +			*val = 302;
> +			*val2 = 4096;
> +			return IIO_VAL_FRACTIONAL;
> +		case IIO_MAGN:
> +			/*
> +			 * Devices are configured in factory
> +			 * with different sensitivities:
> +			 * - 500 GAUSS <-> 4 LSB/Gauss
> +			 * - 1000 GAUSS <-> 2 LSB/Gauss
> +			 * - 2000 GAUSS <-> 1 LSB/Gauss
> +			 * with translates by a division of the returned
> +			 * value to get Gauss value.
> +			 * The sensisitivity cannot be read at runtime
> +			 * so the value depends on the model compatible
> +			 * or device id.
> +			 */
> +			*val = 1;
> +			*val2 = data->sensitivity;
> +			return IIO_VAL_FRACTIONAL;
> +		default:
> +			return -EINVAL;
> +		}
> +	case IIO_CHAN_INFO_OFFSET:
> +		switch (chan->type) {
> +		case IIO_TEMP:
> +			*val = -1708;
> +			return IIO_VAL_INT;
> +		default:
> +			return -EINVAL;
> +		}
> +
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static irqreturn_t als31300_trigger_handler(int irq, void *p)
> +{
> +	struct iio_poll_func *pf = p;
> +	struct iio_dev *indio_dev = pf->indio_dev;
> +	struct als31300_data *data = iio_priv(indio_dev);
> +	s16 x, y, z;
> +	u16 t;
> +	int ret;
> +
> +	ret = als31300_get_measure(data, &t, &x, &y, &z);
> +	if (ret)
> +		goto trigger_out;
> +
> +	data->scan.temperature = t;
> +	data->scan.channels[0] = x;
> +	data->scan.channels[1] = y;
> +	data->scan.channels[2] = z;

This is pretty small. I'd just put scan on the stack in this function.

> +	iio_push_to_buffers_with_timestamp(indio_dev, &data->scan,
> +					   iio_get_time_ns(indio_dev));

pf->timestamp given you are providing a non threaded interrupt handler
to fill that in.

> +
> +trigger_out:
> +	iio_trigger_notify_done(indio_dev->trig);
> +
> +	return IRQ_HANDLED;
> +}

> +static const struct iio_chan_spec als31300_channels[] = {
> +	{
> +		.type = IIO_TEMP,
> +		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
> +			BIT(IIO_CHAN_INFO_SCALE) |
> +			BIT(IIO_CHAN_INFO_OFFSET),
> +		.address = TEMPERATURE,
> +		.scan_index = TEMPERATURE,
> +		.scan_type = {
> +			.sign = 'u',
> +			.realbits = 16,
> +			.storagebits = 16,
> +			.endianness = IIO_CPU,
> +		},
> +	},
> +	ALS31300_AXIS_CHANNEL(X, AXIS_X),
> +	ALS31300_AXIS_CHANNEL(Y, AXIS_Y),
> +	ALS31300_AXIS_CHANNEL(Z, AXIS_Z),
> +	IIO_CHAN_SOFT_TIMESTAMP(6),

Why 6?

Technically it's not wrong ABI, just odd to leave a gap between the channels
and the timestamp.  Probably wants to be 4

> +};

> +static int als31300_probe(struct i2c_client *i2c)
> +{
> +	struct device *dev = &i2c->dev;
> +	struct als31300_data *data;
> +	struct iio_dev *indio_dev;
> +	int ret;
> +
> +	indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
> +	if (!indio_dev)
> +		return -ENOMEM;
> +
> +	data = iio_priv(indio_dev);
> +	data->dev = dev;
> +	i2c_set_clientdata(i2c, indio_dev);
> +
> +	mutex_init(&data->mutex);
> +
> +	data->sensitivity = (unsigned long)of_device_get_match_data(dev);
After changing the data to pointers to structures below use
i2c_get_match_data() That will try various types of firmware and fall
back to the id tables if appropriate.

> +
> +	data->map = devm_regmap_init_i2c(i2c, &als31300_regmap_config);
> +	if (IS_ERR(data->map))
> +		return dev_err_probe(dev, PTR_ERR(data->map),
> +				     "failed to allocate register map\n");

...


> +
> +static DEFINE_RUNTIME_DEV_PM_OPS(als31300_pm_ops,
> +				 als31300_runtime_suspend, als31300_runtime_resume,
> +				 NULL);
> +
> +static const struct i2c_device_id als31300_id[] = {
> +	{ "als31300-500" },

This needs data as well because you can probe via the sysfs interface instead
of DT which will use these ids.

> +	{ "als31300-1000" },
> +	{ "als31300-2000" },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(i2c, als31300_id);
> +
> +static const struct of_device_id als31300_of_match[] = {
> +	{ .compatible = "allegromicro,als31300-500", .data = (void *)4 },
> +	{ .compatible = "allegromicro,als31300-1000", .data = (void *)2 },
> +	{ .compatible = "allegromicro,als31300-2000", .data = (void *)1 },

Use pointers to structures and also use them above.  Even if those structures
have just one value in them for now.

Just have something like

struct als31300_variant_info {
	u8 sensitivity;
};

static const struct als31300_variant_info al31300_variant_500 = {
	.sensitivity = 4;
};

etc.


> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, als31300_of_match);
> +
> +static struct i2c_driver als31300_driver = {
> +	.driver	 = {
> +		.name = "als31300",
> +		.of_match_table = als31300_of_match,
> +		.pm = pm_ptr(&als31300_pm_ops),
> +	},
> +	.probe = als31300_probe,
> +	.id_table = als31300_id,
> +};
> +module_i2c_driver(als31300_driver);
> +
> +MODULE_LICENSE("GPL");
> +MODULE_DESCRIPTION("ALS31300 3-D Linear Hall Effect Driver");
> +MODULE_AUTHOR("Neil Armstrong <neil.armstrong@linaro.org>");
> 


