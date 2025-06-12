Return-Path: <devicetree+bounces-185418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 15311AD79BC
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 20:25:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD3FE188FB09
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 18:25:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB5042C325B;
	Thu, 12 Jun 2025 18:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RxRQluD9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004AF26A0DD
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 18:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749752698; cv=none; b=W3cf6xiPRfUZO1mp4mILr/0hm7yT8tkTkJhhORFV6Y8p2xiHiHHk2Iifvxtp+pTVr0rBVR9R5l9SM8U1RPKUzp12xHKCEuA8BJl6Wo7JriYakbRljBO9DsQ1Wxhro0grS4xZlbRsMmYGakWuFJ0dtzox8iUk+UliyOrZxVmtRf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749752698; c=relaxed/simple;
	bh=2g4ZUh0m8n+XE5MFF8/Z1k/RSajqqAgdSLQhiFY2/uY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tDbjOtqYMiCp0fRQG5OqbjOOUL7IkDINehX2GCt8lnqIy0dbR+sWj3JIYpjMWOEAN3i3TaND3yg2gUFiC9LR2DGMJcJA3T8Qse9heyulqKQt64enAPNbJiiXO80d0ZwPvgRXInNNJKXgNcvG9sLlfXSRaBafTNxGT02NgpjQNWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RxRQluD9; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-7304efb4b3bso807270a34.0
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 11:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749752695; x=1750357495; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qKJxATL4YMBdzvbHBBRpBVXUJ21PkK+U4mKtrypsKtE=;
        b=RxRQluD9StVTwLWa9VVVLfYLdnKqgjib5+DJfkidm9G79FFq/Ggb3i3bx4BULPOSPW
         vv82waank9kJETsyuLz4BtvBKm6Ewyiu3ZTWa7afVz7yOu/vIUurhFAgO4PEMj0nAo8N
         oK8ZmWTEdpnQiaOrc/94YzFvTlUuIt1ZQZfHHcaT9k9o6FgJcNXdIQXlmbmkef0dvLeA
         gg3sT7F/JZqKOIjlJTwd9vH8sZegiraOZg/TnHrK5ep6n4pcZXen5MZEgr8Khpoxr533
         GD0nt54BtRZZtnfrQrSF66TIFqzzVKtcUvdaVZqcEGbpOdIF23X0JS6b7339ZRQ9an+4
         QrmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749752695; x=1750357495;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qKJxATL4YMBdzvbHBBRpBVXUJ21PkK+U4mKtrypsKtE=;
        b=Who4CG2iY12Jc+cuZuJC33UWAx/zDm7QqoMp1MvoE5t16O8CyT8P1+wKqb7U3vg89X
         moh4HzhZIK45RuD5yQDr2q+vVpBlHGrkM2ELfIU2HfSe0hXYINqGESRrN5lvN/9IvuNF
         n6GQgwpGa1llQ6r6so/Bg43g4pUOc8D1u6X6s44ukUhkEwgzBw+hJVj1kKB3Pnr4SI79
         FMTNqdFxRknlsQ0xkHita/ips3mB7K0a/KoPJulE720lC6b97jgVaAbYyA2V0m0+hVbr
         /1jBdiBAGj3Dvb/76eEmvvtM6BM5UAAa5sfPkZ3tTgU6b+j2wKS7yK+XB1hMjwq0kTKT
         7vIw==
X-Forwarded-Encrypted: i=1; AJvYcCXeC8KbX9jyyRNGkyLeFIMpF5G4/y3TfIki7LE/yBFYKtUE5oJeNvzv5KP0zXFUa8aXnUzIOYrqPkPD@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3Pedr2MJBNgeGobdKEJyNeEN1hVngETv549+BBEWNONmGaIOm
	9ZdxLvpHQzr865TT4kwjoZ8THMutRBtVbDhJzOSg2hRMV62x9D0p2NIAxFizN64bdz4=
X-Gm-Gg: ASbGncvLqpMV+IHIXFPPtJIfqCPT1onH3a6lkfrng/2LMRvr86acqEVThpRJu+54xf8
	rM50jUO8IcblcNVwgJmrjfC0OAQliHQsvnMgw+mYkAoJeNxxIg1jj78ZqDSnDvsxaPuyu8qaKTc
	AMPgk0FG/jxWAYLYxkI+AJHvRf99T3Gh3lBSGlzQkvMYVnqCfrdTqDRz6sN5sxrq2YQNIPIH18x
	lP+sCDH7WKcQprg3amBvNLkJE6dtZzfi5L/n455EAvnDsY6qmQAKbfJH5MpJ0XYgbEvmME7H3Xm
	/22SV8tL7X9ha0Bs0JkFvEVjJEpPnLhvxRkyCWllLUadiqlnKuhIixlq28jWGiDmK7Swom1B9vy
	vwMAemt+IUqcif2TufWjtRjguZ1F4gFP8hFAo
X-Google-Smtp-Source: AGHT+IH7y7N6FQcEXxSZUYMysodZdP2stIOOmnVe6cAAnMyqXG2QO8LT8kHIyP9bDYnz+FMD07lITg==
X-Received: by 2002:a9d:5c82:0:b0:72b:a465:d93c with SMTP id 46e09a7af769-73a05df0556mr4537432a34.20.1749752694930;
        Thu, 12 Jun 2025 11:24:54 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:f808:847:b3ae:ff1a? ([2600:8803:e7e4:1d00:f808:847:b3ae:ff1a])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-73a16d43fb3sm355311a34.61.2025.06.12.11.24.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jun 2025 11:24:54 -0700 (PDT)
Message-ID: <6bd4a0f2-90a9-4e99-8cd6-9fefd04f2323@baylibre.com>
Date: Thu, 12 Jun 2025 13:24:53 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] iio: chemical: Add driver for Sharp GP2Y1010AU0F
To: surajsonawane0215@gmail.com, Jonathan Cameron <jic23@kernel.org>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250612100758.13241-1-surajsonawane0215@gmail.com>
 <20250612100758.13241-4-surajsonawane0215@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250612100758.13241-4-surajsonawane0215@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 6/12/25 5:07 AM, surajsonawane0215@gmail.com wrote:
> From: Suraj Sonawane <surajsonawane0215@gmail.com>
> 
> Implement support for the Sharp GP2Y1010AU0F optical dust sensor which
> measures particulate matter concentration using infrared scattering.
> The sensor requires precise 320μs LED pulses with ADC sampling at 280μs
> after LED activation (as specified in datasheet section 6-1).
> 
> The driver provides:
> - Raw density readings via IIO_DENSITY channel type
> - Hardware-agnostic operation via GPIO and IIO ADC interfaces
> - Power management through regulator framework
> - Device Tree binding support
> 
> Datasheet: https://global.sharp/products/device/lineup/data/pdf/datasheet/gp2y1010au_appl_e.pdf
> 
> Signed-off-by: Suraj Sonawane <surajsonawane0215@gmail.com>
> ---

...

> diff --git a/drivers/iio/chemical/Kconfig b/drivers/iio/chemical/Kconfig
> index b22afa1f6..35c126836 100644
> --- a/drivers/iio/chemical/Kconfig
> +++ b/drivers/iio/chemical/Kconfig
> @@ -129,6 +129,16 @@ config PMS7003
>  
>  	  To compile this driver as a module, choose M here: the module will
>  	  be called pms7003.
> +
> +config GP2Y1010AU0F
> +	tristate "Sharp GP2Y1010AU0F optical dust sensor"
> +	depends on IIO
> +	help
> +	  Say Y here to build support for Sharp GP2Y1010AU0F optical dust sensor
> +	  that measures particulate matter concentration in air.
> +
> +	  To compile this driver as a module, choose M here: the module will be
> +	  called gp2y1010au0f.

The object file name is just gp2y1010.

>  
>  config SCD30_CORE
>  	tristate "SCD30 carbon dioxide sensor driver"
> diff --git a/drivers/iio/chemical/Makefile b/drivers/iio/chemical/Makefile
> index 2287a00a6..f1d932ab0 100644
> --- a/drivers/iio/chemical/Makefile
> +++ b/drivers/iio/chemical/Makefile
> @@ -14,6 +14,7 @@ obj-$(CONFIG_CCS811)		+= ccs811.o
>  obj-$(CONFIG_ENS160) += ens160_core.o
>  obj-$(CONFIG_ENS160_I2C) += ens160_i2c.o
>  obj-$(CONFIG_ENS160_SPI) += ens160_spi.o
> +obj-$(CONFIG_GP2Y1010AU0F) += gp2y1010.o
>  obj-$(CONFIG_IAQCORE)		+= ams-iaq-core.o
>  obj-$(CONFIG_MHZ19B) += mhz19b.o
>  obj-$(CONFIG_PMS7003) += pms7003.o
> diff --git a/drivers/iio/chemical/gp2y1010.c b/drivers/iio/chemical/gp2y1010.c
> new file mode 100644
> index 000000000..3a8657035
> --- /dev/null
> +++ b/drivers/iio/chemical/gp2y1010.c
> @@ -0,0 +1,126 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2025 Suraj Sonawane <surajsonawane0215@gmail.com>
> + * Sharp GP2Y1010AU0F Dust Sensor Driver
> + * Datasheet: https://global.sharp/products/device/lineup/data/pdf/datasheet/gp2y1010au_appl_e.pdf
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/err.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/iio/consumer.h>
> +#include <linux/iio/iio.h>
> +#include <linux/init.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/regulator/consumer.h>
> +
> +/* Timings based on GP2Y1010AU0F datasheet Section 6-1 */
> +#define GP2Y1010_LED_PULSE_US     320  /* Total LED ON time (0.32 ms) */
> +#define GP2Y1010_SAMPLE_DELAY_US  280  /* ADC sampling after LED ON (0.28 ms) */

If we aren't using the values from the devicetree for this
I would leave those out of the devicetree bindings until we
are really sure we need them.

> +
> +struct gp2y1010_data {
> +	struct gpio_desc *led_gpio;
> +	struct iio_channel *adc_chan;
> +	int v_clean;  /* Calibration: voltage in clean air (mV) */
> +};
> +
> +static int gp2y1010_read_raw(struct iio_dev *indio_dev,
> +							 struct iio_chan_spec const *chan,
> +							 int *val, int *val2, long mask)
> +{
> +	struct gp2y1010_data *data = iio_priv(indio_dev);
> +	int ret, voltage_mv;
> +
> +	if (mask != IIO_CHAN_INFO_RAW)
> +		return -EINVAL;
> +
> +	gpiod_set_value(data->led_gpio, 1);
> +	udelay(GP2Y1010_SAMPLE_DELAY_US);
> +
> +	ret = iio_read_channel_processed(data->adc_chan, &voltage_mv);

As I mentioned in the reply to the devicetree bindings. I have some
doubts that we could get accurate enough timing to have the ADC read
exactly at the peak output +/-20 microseconds in Linux like this.

Are you using an oscilloscope to verify that the timing is correct?

> +
> +	/* Wait remaining time to complete 320 µs total LED pulse width */
> +	udelay(GP2Y1010_LED_PULSE_US - GP2Y1010_SAMPLE_DELAY_US);
> +	gpiod_set_value(data->led_gpio, 0);
> +
> +	if (ret < 0)
> +		return ret;
> +
> +	*val = voltage_mv;

Since we can't read a raw value directly from the sensor,
might as well convert this to the processes value. This
would also allow to handle the non-linear parts at the
extremes of the graph shown in the datasheet.

> +	return IIO_VAL_INT;
> +}
> +
> +static const struct iio_info gp2y1010_info = {
> +	.read_raw = gp2y1010_read_raw,
> +};
> +
> +static const struct iio_chan_spec gp2y1010_channels[] = {
> +	{
> +		.type = IIO_DENSITY,
> +		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),
> +	},
> +};

There is only one channel, so we don't need an array.

> +
> +static int gp2y1010_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct iio_dev *indio_dev;
> +	struct gp2y1010_data *data;
> +	enum iio_chan_type ch_type;
> +	int ret;
> +
> +	indio_dev = devm_iio_device_alloc(dev, sizeof(*data));
> +	if (!indio_dev)
> +		return -ENOMEM;
> +
> +	data = iio_priv(indio_dev);
> +	data->v_clean = 900;

This isn't used anywhere.

> +
> +	data->led_gpio = devm_gpiod_get(dev, "led", GPIOD_OUT_LOW);
> +	if (IS_ERR(data->led_gpio))
> +		return dev_err_probe(dev, PTR_ERR(data->led_gpio), "Failed to get LED GPIO\n");
> +
> +	ret = devm_regulator_get_enable(dev, "vdd");
> +	if (ret)
> +		return ret;
> +	udelay(100);

Datasheet says this delay is "less than 1 sec". So this seems rather short.

> +
> +	data->adc_chan = devm_iio_channel_get(dev, "dust");
> +	if (IS_ERR(data->adc_chan))
> +		return dev_err_probe(dev, PTR_ERR(data->adc_chan), "Failed to get ADC channel\n");
> +
> +	ret = iio_get_channel_type(data->adc_chan, &ch_type);
> +	if (ret < 0)
> +		return ret;
> +	if (ch_type != IIO_DENSITY)
> +		return dev_err_probe(dev, -EINVAL, "ADC channel is not density type\n");

This check looks wrong. Aren't we expecting a voltage channel?

> +
> +	indio_dev->name = dev_name(dev);
> +	indio_dev->info = &gp2y1010_info;
> +	indio_dev->channels = gp2y1010_channels;
> +	indio_dev->num_channels = ARRAY_SIZE(gp2y1010_channels);
> +	indio_dev->modes = INDIO_DIRECT_MODE;
> +
> +	return devm_iio_device_register(dev, indio_dev);
> +}
> +


