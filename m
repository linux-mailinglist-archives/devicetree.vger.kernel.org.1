Return-Path: <devicetree+bounces-134517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B179FDAF9
	for <lists+devicetree@lfdr.de>; Sat, 28 Dec 2024 15:45:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 18B2A1882E6F
	for <lists+devicetree@lfdr.de>; Sat, 28 Dec 2024 14:45:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADAFE16A930;
	Sat, 28 Dec 2024 14:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRYzXzld"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80189136672;
	Sat, 28 Dec 2024 14:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735397146; cv=none; b=ggG3frCSCGTajtAZbtChRuOqwg9z/XqKx1gP1mf2OOb2zwqabvyvDgVdY/iZ+qA+hPaOwBwdrhkzn45Rj4IwHKF1Vi9PfTpLknd6Du17RbxGHopDOICCShwSpdukHVQoHXc1yMFNURKBbH/e6E2hyw9kqCHcsK3JdrSM8WLc2so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735397146; c=relaxed/simple;
	bh=cjEd0Mhjm6Hrn6Z5HmAehCu/lgaVlg6MWfRsV5OIC+I=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SRgLObjJ5QHjdUqCcEtBylEGly7G2x/DwCTMvaFSi+zaKSOCLXozlM/wtyfSj+iDEL6t6o5IL6x+tM7vBIOwlcPa+NdA6h6zsy5qIjl422/CBFa4D87iXtskDxjW/BJB07Iw4IYAqCFxOj4ZzM/l27sELE3n+kU3CawtE5ZvIBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRYzXzld; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2C60C4CECD;
	Sat, 28 Dec 2024 14:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735397146;
	bh=cjEd0Mhjm6Hrn6Z5HmAehCu/lgaVlg6MWfRsV5OIC+I=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=eRYzXzld1RaNx83ay1AKomua1U6XMI6wBj0QAno7bGdYWShtLwRcBkm2xVZrf1BUN
	 O10ZNL5p9qIeA9zVvdPYv/ZwGlWJQzSARMK4nwSJSiYG3qU8hoXXtRqRvD3jEAO7XZ
	 5zXIlS4Eb8CmZSKjpVt3N/kJsyN2+7AA8voX5BxnaVtKHADd9AMALATe469dTYlwV8
	 u9tcIqP/Oxc15VUAKVOXBEdFVx76zBJjtQxkvqFnLX+NQys6blAx/WVLdFZ26Ls6gT
	 PeTVAZ0NwYLQsKT3AUxb8h/Is49CYUoye8NhUTkX7CL0KTsEJyGVZCPledTrBu4j++
	 r9NiMZJ3yiieQ==
Date: Sat, 28 Dec 2024 14:45:36 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Lothar Rubusch <l.rubusch@gmail.com>
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 eraretuya@gmail.com
Subject: Re: [PATCH v8 6/7] iio: accel: adxl345: add FIFO with watermark
 events
Message-ID: <20241228144536.12e2e8a5@jic23-huawei>
In-Reply-To: <20241225181338.69672-7-l.rubusch@gmail.com>
References: <20241225181338.69672-1-l.rubusch@gmail.com>
	<20241225181338.69672-7-l.rubusch@gmail.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 25 Dec 2024 18:13:37 +0000
Lothar Rubusch <l.rubusch@gmail.com> wrote:

> Add a basic setup for FIFO with configurable watermark. Add a handler
> for watermark interrupt events and extend the channel for the
> scan_index needed for the iio channel. The sensor is configurable to use
> a FIFO_BYPASSED mode or a FIFO_STREAM mode. For the FIFO_STREAM mode now
> a watermark can be configured, or disabled by setting 0. Further features
> require a working FIFO setup.
> 
> Signed-off-by: Lothar Rubusch <l.rubusch@gmail.com>
> ---
>  drivers/iio/accel/adxl345.h      |  27 ++-
>  drivers/iio/accel/adxl345_core.c | 305 ++++++++++++++++++++++++++++++-
>  2 files changed, 321 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/iio/accel/adxl345.h b/drivers/iio/accel/adxl345.h
> index 6f39f16d3..bf9e86cff 100644
> --- a/drivers/iio/accel/adxl345.h
> +++ b/drivers/iio/accel/adxl345.h
> @@ -15,18 +15,32 @@
>  #define ADXL345_REG_OFS_AXIS(index)	(ADXL345_REG_OFSX + (index))
>  #define ADXL345_REG_BW_RATE		0x2C
>  #define ADXL345_REG_POWER_CTL		0x2D
> +#define ADXL345_REG_INT_ENABLE		0x2E
> +#define ADXL345_REG_INT_MAP		0x2F
> +#define ADXL345_REG_INT_SOURCE		0x30
> +#define ADXL345_REG_INT_SOURCE_MSK	0xFF
>  #define ADXL345_REG_DATA_FORMAT		0x31
> -#define ADXL345_REG_DATAX0		0x32
> -#define ADXL345_REG_DATAY0		0x34
> -#define ADXL345_REG_DATAZ0		0x36
> -#define ADXL345_REG_DATA_AXIS(index)	\
> -	(ADXL345_REG_DATAX0 + (index) * sizeof(__le16))
> +#define ADXL345_REG_XYZ_BASE		0x32
> +#define ADXL345_REG_DATA_AXIS(index)				\
> +	(ADXL345_REG_XYZ_BASE + (index) * sizeof(__le16))
>  
> +#define ADXL345_REG_FIFO_CTL		0x38
> +#define ADXL345_REG_FIFO_STATUS	0x39
> +#define ADXL345_REG_FIFO_STATUS_MSK	0x3F
> +
> +#define ADXL345_FIFO_CTL_SAMPLES(x)	FIELD_PREP(GENMASK(4, 0), x)
These need linux/bitfield.h to be included.

However, that got me looking closer at this and it should be done
differently.

Just define the masks in here and put the FIELD_PREP() inline in the
c file.  Same for the various other FIELD_PREP macros in here.

It may seem convenient to wrap all this up here, but in general
I'd rather see that these are simple FIELD_PREP() calls where they
are used inline.

Thanks,

Jonathan

> +/* 0: INT1, 1: INT2 */
> +#define ADXL345_FIFO_CTL_TRIGGER(x)	FIELD_PREP(BIT(5), x)
> +#define ADXL345_FIFO_CTL_MODE(x)	FIELD_PREP(GENMASK(7, 6), x)
> +
> +#define ADXL345_INT_DATA_READY		BIT(7)
> +#define ADXL345_INT_WATERMARK		BIT(1)
> +#define ADXL345_INT_OVERRUN		BIT(0)
>  #define ADXL345_BW_RATE			GENMASK(3, 0)
>  #define ADXL345_BASE_RATE_NANO_HZ	97656250LL
>  
> -#define ADXL345_POWER_CTL_MEASURE	BIT(3)
>  #define ADXL345_POWER_CTL_STANDBY	0x00
> +#define ADXL345_POWER_CTL_MEASURE	BIT(3)
>  
>  #define ADXL345_DATA_FORMAT_RANGE	GENMASK(1, 0)	/* Set the g range */
>  #define ADXL345_DATA_FORMAT_JUSTIFY	BIT(2)	/* Left-justified (MSB) mode */
> @@ -40,6 +54,7 @@
>  #define ADXL345_DATA_FORMAT_16G		3
>  
>  #define ADXL345_DEVID			0xE5
> +#define ADXL345_FIFO_SIZE		32
>  
>  /*
>   * In full-resolution mode, scale factor is maintained at ~4 mg/LSB
> diff --git a/drivers/iio/accel/adxl345_core.c b/drivers/iio/accel/adxl345_core.c
> index 987a0fe03..738960298 100644
> --- a/drivers/iio/accel/adxl345_core.c
> +++ b/drivers/iio/accel/adxl345_core.c
> @@ -15,9 +15,17 @@
>  
>  #include <linux/iio/iio.h>
>  #include <linux/iio/sysfs.h>
> +#include <linux/iio/buffer.h>
> +#include <linux/iio/kfifo_buf.h>
>  
>  #include "adxl345.h"
>  
> +#define ADXL345_FIFO_BYPASS	0
> +#define ADXL345_FIFO_FIFO	1
> +#define ADXL345_FIFO_STREAM	2
> +
> +#define ADXL345_DIRS 3
> +
>  #define ADXL345_INT_NONE		0xff
>  #define ADXL345_INT1			0
>  #define ADXL345_INT2			1
> @@ -28,25 +36,66 @@ struct adxl345_state {
>  	bool fifo_delay; /* delay: delay is needed for SPI */
>  	int irq;
>  	u8 intio;
> +	u8 int_map;
> +	u8 watermark;
> +	u8 fifo_mode;
> +	__le16 fifo_buf[ADXL345_DIRS * ADXL345_FIFO_SIZE + 1] __aligned(IIO_DMA_MINALIGN);
>  };
>  
> -#define ADXL345_CHANNEL(index, axis) {					\
> +#define ADXL345_CHANNEL(index, reg, axis) {					\
>  	.type = IIO_ACCEL,						\
>  	.modified = 1,							\
>  	.channel2 = IIO_MOD_##axis,					\
> -	.address = index,						\
> +	.address = (reg),						\
>  	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |			\
>  		BIT(IIO_CHAN_INFO_CALIBBIAS),				\
>  	.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE) |		\
>  		BIT(IIO_CHAN_INFO_SAMP_FREQ),				\
> +	.scan_index = (index),				\
> +	.scan_type = {					\
> +		.sign = 's',				\
> +		.realbits = 13,				\
> +		.storagebits = 16,			\
> +		.endianness = IIO_LE,			\
> +	},						\
>  }
>  
> +enum adxl345_chans {
> +	chan_x, chan_y, chan_z,
> +};
> +
>  static const struct iio_chan_spec adxl345_channels[] = {
> -	ADXL345_CHANNEL(0, X),
> -	ADXL345_CHANNEL(1, Y),
> -	ADXL345_CHANNEL(2, Z),
> +	ADXL345_CHANNEL(0, chan_x, X),
> +	ADXL345_CHANNEL(1, chan_y, Y),
> +	ADXL345_CHANNEL(2, chan_z, Z),
>  };
>  
> +static const unsigned long adxl345_scan_masks[] = {
> +	BIT(chan_x) | BIT(chan_y) | BIT(chan_z),
> +	0
> +};
> +
> +static int adxl345_set_interrupts(struct adxl345_state *st)
> +{
> +	int ret;
> +	unsigned int int_enable = st->int_map;
> +	unsigned int int_map;
> +
> +	/*
> +	 * Any bits set to 0 in the INT map register send their respective
> +	 * interrupts to the INT1 pin, whereas bits set to 1 send their respective
> +	 * interrupts to the INT2 pin. The intio shall convert this accordingly.
> +	 */
> +	int_map = FIELD_GET(ADXL345_REG_INT_SOURCE_MSK,
> +			    st->intio ? st->int_map : ~st->int_map);
> +
> +	ret = regmap_write(st->regmap, ADXL345_REG_INT_MAP, int_map);
> +	if (ret)
> +		return ret;
> +
> +	return regmap_write(st->regmap, ADXL345_REG_INT_ENABLE, int_enable);
> +}
> +
>  static int adxl345_read_raw(struct iio_dev *indio_dev,
>  			    struct iio_chan_spec const *chan,
>  			    int *val, int *val2, long mask)
> @@ -132,6 +181,24 @@ static int adxl345_write_raw(struct iio_dev *indio_dev,
>  	return -EINVAL;
>  }
>  
> +static int adxl345_set_watermark(struct iio_dev *indio_dev, unsigned int value)
> +{
> +	struct adxl345_state *st = iio_priv(indio_dev);
> +	unsigned int fifo_mask = 0x1F;
> +	int ret;
> +
> +	value = min(value, ADXL345_FIFO_SIZE - 1);
> +
> +	ret = regmap_update_bits(st->regmap, ADXL345_REG_FIFO_CTL, fifo_mask, value);
> +	if (ret)
> +		return ret;
> +
> +	st->watermark = value;
> +	st->int_map |= ADXL345_INT_WATERMARK;
> +
> +	return 0;
> +}
> +
>  static int adxl345_write_raw_get_fmt(struct iio_dev *indio_dev,
>  				     struct iio_chan_spec const *chan,
>  				     long mask)
> @@ -186,11 +253,217 @@ static const struct attribute_group adxl345_attrs_group = {
>  	.attrs = adxl345_attrs,
>  };
>  
> +static int adxl345_set_fifo(struct adxl345_state *st)
> +{
> +	int ret;
> +
> +	/* FIFO should only be configured while in standby mode */
> +	ret = adxl345_set_measure_en(st, false);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = regmap_write(st->regmap, ADXL345_REG_FIFO_CTL,
> +			   ADXL345_FIFO_CTL_SAMPLES(st->watermark) |
> +			   ADXL345_FIFO_CTL_TRIGGER(st->intio) |
> +			   ADXL345_FIFO_CTL_MODE(st->fifo_mode));
> +	if (ret < 0)
> +		return ret;
> +
> +	return adxl345_set_measure_en(st, true);
> +}
> +
> +/**
> + * adxl345_get_samples() - Read number of FIFO entries.
> + * @st: The initialized state instance of this driver.
> + *
> + * The sensor does not support treating any axis individually, or exclude them
> + * from measuring.
> + *
> + * Return: negative error, or value.
> + */
> +static int adxl345_get_samples(struct adxl345_state *st)
> +{
> +	unsigned int regval = 0;
> +	int ret;
> +
> +	ret = regmap_read(st->regmap, ADXL345_REG_FIFO_STATUS, &regval);
> +	if (ret < 0)
> +		return ret;
> +
> +	return FIELD_GET(ADXL345_REG_FIFO_STATUS_MSK, regval);
> +}
> +
> +/**
> + * adxl345_fifo_transfer() - Read samples number of elements.
> + * @st: The instance of the state object of this sensor.
> + * @samples: The number of lines in the FIFO referred to as fifo_entry.
> + *
> + * It is recommended that a multiple-byte read of all registers be performed to
> + * prevent a change in data between reads of sequential registers. That is to
> + * read out the data registers X0, X1, Y0, Y1, Z0, Z1, i.e. 6 bytes at once.
> + *
> + * Return: 0 or error value.
> + */
> +static int adxl345_fifo_transfer(struct adxl345_state *st, int samples)
> +{
> +	size_t count;
> +	int i, ret = 0;
> +
> +	/* count is the 3x the fifo_buf element size, hence 6B */
> +	count = sizeof(st->fifo_buf[0]) * ADXL345_DIRS;
> +	for (i = 0; i < samples; i++) {
> +		/* read 3x 2 byte elements from base address into next fifo_buf position */
> +		ret = regmap_bulk_read(st->regmap, ADXL345_REG_XYZ_BASE,
> +				       st->fifo_buf + (i * count / 2), count);
> +		if (ret < 0)
> +			return ret;
> +
> +		/*
> +		 * To ensure that the FIFO has completely popped, there must be at least 5
> +		 * us between the end of reading the data registers, signified by the
> +		 * transition to register 0x38 from 0x37 or the CS pin going high, and the
> +		 * start of new reads of the FIFO or reading the FIFO_STATUS register. For
> +		 * SPI operation at 1.5 MHz or lower, the register addressing portion of the
> +		 * transmission is sufficient delay to ensure the FIFO has completely
> +		 * popped. It is necessary for SPI operation greater than 1.5 MHz to
> +		 * de-assert the CS pin to ensure a total of 5 us, which is at most 3.4 us
> +		 * at 5 MHz operation.
> +		 */
> +		if (st->fifo_delay && samples > 1)
> +			udelay(3);
> +	}
> +	return ret;
> +}
> +
> +/**
> + * adxl345_fifo_reset() - Empty the FIFO in error condition.
> + * @st: The instance to the state object of the sensor.
> + *
> + * Read all elements of the FIFO. Reading the interrupt source register
> + * resets the sensor.
> + */
> +static void adxl345_fifo_reset(struct adxl345_state *st)
> +{
> +	int regval;
> +	int samples;
> +
> +	adxl345_set_measure_en(st, false);
> +
> +	samples = adxl345_get_samples(st);
> +	if (samples > 0)
> +		adxl345_fifo_transfer(st, samples);
> +
> +	regmap_read(st->regmap, ADXL345_REG_INT_SOURCE, &regval);
> +
> +	adxl345_set_measure_en(st, true);
> +}
> +
> +static int adxl345_buffer_postenable(struct iio_dev *indio_dev)
> +{
> +	struct adxl345_state *st = iio_priv(indio_dev);
> +	int ret;
> +
> +	ret = adxl345_set_interrupts(st);
> +	if (ret < 0)
> +		return ret;
> +
> +	st->fifo_mode = ADXL345_FIFO_STREAM;
> +	return adxl345_set_fifo(st);
> +}
> +
> +static int adxl345_buffer_predisable(struct iio_dev *indio_dev)
> +{
> +	struct adxl345_state *st = iio_priv(indio_dev);
> +	int ret;
> +
> +	st->fifo_mode = ADXL345_FIFO_BYPASS;
> +	ret = adxl345_set_fifo(st);
> +	if (ret < 0)
> +		return ret;
> +
> +	st->int_map = 0x00;
> +	return adxl345_set_interrupts(st);
> +}
> +
> +static const struct iio_buffer_setup_ops adxl345_buffer_ops = {
> +	.postenable = adxl345_buffer_postenable,
> +	.predisable = adxl345_buffer_predisable,
> +};
> +
> +static int adxl345_get_status(struct adxl345_state *st)
> +{
> +	int ret;
> +	unsigned int regval;
> +
> +	ret = regmap_read(st->regmap, ADXL345_REG_INT_SOURCE, &regval);
> +	if (ret < 0)
> +		return ret;
> +
> +	return FIELD_GET(ADXL345_REG_INT_SOURCE_MSK, regval);
> +}
> +
> +static int adxl345_fifo_push(struct iio_dev *indio_dev,
> +			     int samples)
> +{
> +	struct adxl345_state *st = iio_priv(indio_dev);
> +	int i, ret;
> +
> +	if (samples <= 0)
> +		return -EINVAL;
> +
> +	ret = adxl345_fifo_transfer(st, samples);
> +	if (ret)
> +		return ret;
> +
> +	for (i = 0; i < ADXL345_DIRS * samples; i += ADXL345_DIRS)
> +		iio_push_to_buffers(indio_dev, &st->fifo_buf[i]);
> +
> +	return 0;
> +}
> +
> +/**
> + * adxl345_irq_handler() - Handle irqs of the ADXL345.
> + * @irq: The irq being handled.
> + * @p: The struct iio_device pointer for the device.
> + *
> + * Return: The interrupt was handled.
> + */
> +static irqreturn_t adxl345_irq_handler(int irq, void *p)
> +{
> +	struct iio_dev *indio_dev = p;
> +	struct adxl345_state *st = iio_priv(indio_dev);
> +	int int_stat;
> +	int samples;
> +
> +	int_stat = adxl345_get_status(st);
> +	if (int_stat <= 0)
> +		return IRQ_NONE;
> +
> +	if (int_stat & ADXL345_INT_OVERRUN)
> +		goto err;
> +
> +	if (int_stat & ADXL345_INT_WATERMARK) {
> +		samples = adxl345_get_samples(st);
> +		if (samples < 0)
> +			goto err;
> +
> +		if (adxl345_fifo_push(indio_dev, samples) < 0)
> +			goto err;
> +	}
> +	return IRQ_HANDLED;
> +
> +err:
> +	adxl345_fifo_reset(st);
> +
> +	return IRQ_HANDLED;
> +}
> +
>  static const struct iio_info adxl345_info = {
>  	.attrs		= &adxl345_attrs_group,
>  	.read_raw	= adxl345_read_raw,
>  	.write_raw	= adxl345_write_raw,
>  	.write_raw_get_fmt	= adxl345_write_raw_get_fmt,
> +	.hwfifo_set_watermark = adxl345_set_watermark,
>  };
>  
>  /**
> @@ -221,6 +494,7 @@ int adxl345_core_probe(struct device *dev, struct regmap *regmap,
>  					 ADXL345_DATA_FORMAT_JUSTIFY |
>  					 ADXL345_DATA_FORMAT_FULL_RES |
>  					 ADXL345_DATA_FORMAT_SELF_TEST);
> +	u8 fifo_ctl;
>  	int ret;
>  
>  	indio_dev = devm_iio_device_alloc(dev, sizeof(*st));
> @@ -239,6 +513,7 @@ int adxl345_core_probe(struct device *dev, struct regmap *regmap,
>  	indio_dev->modes = INDIO_DIRECT_MODE;
>  	indio_dev->channels = adxl345_channels;
>  	indio_dev->num_channels = ARRAY_SIZE(adxl345_channels);
> +	indio_dev->available_scan_masks = adxl345_scan_masks;
>  
>  	if (setup) {
>  		/* Perform optional initial bus specific configuration */
> @@ -289,6 +564,26 @@ int adxl345_core_probe(struct device *dev, struct regmap *regmap,
>  			st->intio = ADXL345_INT_NONE;
>  	}
>  
> +	if (st->intio != ADXL345_INT_NONE) {
> +		/* FIFO_STREAM mode is going to be activated later */
> +		ret = devm_iio_kfifo_buffer_setup(dev, indio_dev, &adxl345_buffer_ops);
> +		if (ret)
> +			return ret;
> +
> +		ret = devm_request_threaded_irq(dev, st->irq, NULL,
> +						&adxl345_irq_handler,
> +						IRQF_SHARED | IRQF_ONESHOT,
> +						indio_dev->name, indio_dev);
> +		if (ret)
> +			return ret;
> +	} else {
> +		/* FIFO_BYPASS mode */
> +		fifo_ctl = ADXL345_FIFO_CTL_MODE(ADXL345_FIFO_BYPASS);
> +		ret = regmap_write(st->regmap, ADXL345_REG_FIFO_CTL, fifo_ctl);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
>  	return devm_iio_device_register(dev, indio_dev);
>  }
>  EXPORT_SYMBOL_NS_GPL(adxl345_core_probe, IIO_ADXL345);


