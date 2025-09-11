Return-Path: <devicetree+bounces-215741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1173B5280F
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 07:13:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D08E6881D0
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 05:13:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0923523F26A;
	Thu, 11 Sep 2025 05:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lkzRScIg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C0E2236FA
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 05:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757567588; cv=none; b=kAI3qFato2Sc2ieXTVXylCHIu/sRPfJvbCYQtdbcYWjfGRDW/Q+4bGAivQ3FktrcweQEsQm24GwNycabL5ZP/Xdx7/zYT6KY9WwlqMALWEgbt6XWgb1Cgxl9mvQ4GW4Lne9FbU+XB/GtVbpevovu2bRkJsF0MoiTg1hJEbA6Yvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757567588; c=relaxed/simple;
	bh=SlJPMqOheOyXWY5HcaBVfLVMDApWLwnsdWlRM24nlZs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m8baXf/UaTwuqwgpAaIsB9edun+xPusvgWN9oib/iTnyCB6IzeCRgznZdmqWnY6m30TC2joaxGPx/w1jxXzOSFnMN+Av6QCM4pkqF8OVpz1PYRqEOYSsTHX0MOe88wOim2ih+LgdGUGJStBfQ7uyNQFJU/ryTLNkucvZ6FhMKLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lkzRScIg; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-55f7a34fb35so279441e87.1
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 22:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757567585; x=1758172385; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n9GGmtguUyZu6hbZSSx1TCfWfDEPuY49znudTzJtGCg=;
        b=lkzRScIgMN4bN/tavcpawIOp1r+AUQPBAPzwaIJc5e4soJwd5gDJpGgc81EF/3KF/g
         vkPbcoigjlFDb1rtGSeBPVyJiuJNWRq89mJaQJ5Z6DM1Txj5WEOggxFpMjmstl171Lxr
         iN0uBYBnO02LlcrBGXXSvsUtYgao5jrHjY6ALpDcL58aLUjqTkP7pnqpKO8LLbd5NLgi
         XtnQLSJ/wn9E1MDKeVK8c2ocejB86SIlShpU5FBqlumSWtf6QHzrHdDoZUn8hUl8TeCz
         EUg8ARYEupcit17YBtspB6IZ+DAT9f6+I8nkBWPx5sIiSB19bGN5g7JPY9oxhV+b7zEe
         UTXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757567585; x=1758172385;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n9GGmtguUyZu6hbZSSx1TCfWfDEPuY49znudTzJtGCg=;
        b=TblmMRI6MlyObBHnWYCw+ej0pEHHzjIGRkj36seAz8Tg16y+ZwJ7c2X+uvEhtEDvSl
         vQczpbY02IpPEL4c25rGTxIKwSX4etcd+2Zs+AnnQH7NyD6IXLZyGZeV4xY7GCgZ/Zqs
         6CxwlXww7SfGrRomVRNwUCicAVjtPVSAfMeeB5KjrEZ1zIsDneD1PgN7+QO1rRE2A0Hr
         lrdqz/fb1vMeEPBAo+Hspsl0fKlUlszxNglUxxwBMXb3FOl1SJKWGz1/X7GHakrtI+t7
         9CrwxL5JmG4AldU2+6MUEXtv5imyyl18xo8j2UZM3VsxRLYQO6AE8PbgirPTB7EjSlkl
         Vu1w==
X-Forwarded-Encrypted: i=1; AJvYcCU9T69Zjv+vqrH1ucuQTr1f09XW6RhzyNqd6N8eIaZcz6lzgJvA3+1IaMyUV23XHMBd7ttdsmlg5MAP@vger.kernel.org
X-Gm-Message-State: AOJu0YyPjgk1zzeTHqawmqZKLUDQTWJnZjYl2APefjAonsNEcb4bo8+M
	Yz41Hdj7UqACkX2ZjlY82jE+7ijGslrTixRc6NADJylPruzc/P9fDBui
X-Gm-Gg: ASbGncslzSksIFQ7YAUqm4pogG1UgquggzkWGW4IVsSx81cvzRTrE37mVlIIJn8PjPC
	DmhNOrKUn9uMgvs42qYhEcVSQ8EeehYpuOgdQ6K+AwNCVpquevQMcQtDnBp1wRVK3ePaMklAXqw
	ljsOmVUVtgagSqAZFvioc+RAwlbOy4a8BlTsGIidmBkT9xYMhNpbtDl3wqHY2cLYes5UiBMXFsW
	2fowlDhhe7ZJp8EZ/cXOXpXVZw+r2QcbOTux3BnqDnCy2aZBSmwPXW3ak3ELxmi7n2WJxoZOmV0
	k2W4rq/C9ljkD+UQ6ukrqcVeADk31+OUbZXxUbEpw31CueSLszbQ2MKcfVMoT/AUGpl694hbhmw
	wgczWItqNvNZDJcOm9V8PocEHniLdW9VyH+TsSQKakUHP+Z0P9AX4xPrz0XaIfp+nsdDqVOjZ2u
	bfJ0nzTSzSIkfh895Q5LcG4kqsIQ==
X-Google-Smtp-Source: AGHT+IGbO2TNLW7OztisIpnUEWi1m59CsNk+mU6orscsOd8TRI1mD2wU7d2RFQgpdeFyzU4p4mhlXw==
X-Received: by 2002:a05:6512:acc:b0:55b:9045:ec5e with SMTP id 2adb3069b0e04-5625f535a6amr6672349e87.18.1757567584892;
        Wed, 10 Sep 2025 22:13:04 -0700 (PDT)
Received: from ?IPV6:2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703? ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e63c63eeesm159703e87.88.2025.09.10.22.13.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Sep 2025 22:13:04 -0700 (PDT)
Message-ID: <d586b4a3-8fb8-45b5-a5a6-5bee8d366879@gmail.com>
Date: Thu, 11 Sep 2025 08:13:03 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] iio: adc: Support ROHM BD79112 ADC/GPIO
To: Jonathan Cameron <jic23@kernel.org>
Cc: David Lechner <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij
 <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
References: <20250910-bd79112-v4-0-f82f43746a8c@gmail.com>
 <20250910-bd79112-v4-2-f82f43746a8c@gmail.com>
 <20250910184619.0303163d@jic23-huawei>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <20250910184619.0303163d@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Morning Jonathan,

On 10/09/2025 20:46, Jonathan Cameron wrote:
> On Wed, 10 Sep 2025 14:24:35 +0300
> Matti Vaittinen <mazziesaccount@gmail.com> wrote:
> 
>> The ROHM BD79112 is an ADC/GPIO with 32 channels. The channel inputs can
>> be used as ADC or GPIO. Using the GPIOs as IRQ sources isn't supported.
>>
>> The ADC is 12-bit, supporting input voltages up to 5.7V, and separate I/O
>> voltage supply. Maximum SPI clock rate is 20 MHz (10 MHz with
>> daisy-chain configuration) and maximum sampling rate is 1MSPS.
>>
>> The IC does also support CRC but it is not implemented in the driver.
>>
>> Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
> 
> Hi Matti,
> 
> A few trivial things that I'll tidy up if nothing else comes up (I might not
> bother given how trivial they are!)

Thanks again!

> Also one question. I couldn't immediately follow why any random register
> read is sanity checking if an ADC pin is configured as GPIO.
> 

Ah. Valid question! I see my comment below is partially wrong.


>> +/*
>> + * Read transaction consists of two 16-bit sequences separated by CSB.
>> + * For register read, 'IOSET' bit must be set. For ADC read, IOSET is cleared
>> + * and ADDR equals the channel number (0 ... 31).
>> + *
>> + * First 16-bit sequence, MOSI as below, MISO data ignored:
>> + * - SCK: | 1 | 2 |   3   |    4   | 5 .. 8 | 9 .. 16 |
>> + * - MOSI:| 0 | 0 | IOSET | RW (1) |  ADDR  |  8'b0   |
>> + *
>> + * CSB released and re-acquired between these sequences
>> + *
>> + * Second 16-bit sequence, MISO as below, MOSI data ignored:
>> + *   For Register read data is 8 bits:
>> + *   - SCK: | 1 .. 8 |   9 .. 16   |
>> + *   - MISO:|  8'b0  | 8-bit data  |
>> + *
>> + *   For ADC read data is 12 bits:
>> + *   - SCK: | 1 .. 4 |   4 .. 16   |
>> + *   - MISO:|  4'b0  | 12-bit data |

This is not 100% true. I overlooked the ADC read "status flag" when 
adding this comment for the ADC data reading.

This should be:

  *   For ADC, read data is 12 bits prepended with a status flag:
  *   - SCK: | 1 |      2      | 3  4 |   4 .. 16   |
  *   - MISO:| 0 | STATUS_FLAG | 2'b0 | 12-bit data |

The 'STATUS_FLAG' is set if the input pin is configured as a GPIO.

>> + */
>> +static int bd79112_reg_read(void *context, unsigned int reg, unsigned int *val)
>> +{
>> +	struct bd79112_data *data = context;
>> +	int ret;
>> +
>> +	if (reg & BD79112_BIT_IO)
>> +		reg |= BD79112_BIT_RW;
>> +
>> +	data->read_tx[0] = reg;
>> +
>> +	ret = spi_sync(data->spi, &data->read_msg);
>> +	if (!ret)
>> +		*val = be16_to_cpu(data->read_rx);
>> +
>> +	if (reg & BD79112_BIT_IO && *val & BD79112_ADC_STATUS_FLAG)
>> +		dev_err(data->dev, "ADC pin configured as GPIO\n");
> 
> Why are we checking this in a regmap callback?
> Maybe it needs rewording and the point is some missmatch in what we
> can read vs the state?
> 
>> +
>> +	return ret;
>> +}
> 
>> +
>> +static int bd79112_probe(struct spi_device *spi)
>> +{
>> +	struct bd79112_data *data;
>> +	struct iio_dev *iio_dev;
>> +	struct iio_chan_spec *cs;
>> +	struct device *dev = &spi->dev;
>> +	unsigned long gpio_pins, pin;
>> +	unsigned int i;
>> +	int ret;
>> +
>> +	iio_dev = devm_iio_device_alloc(dev, sizeof(*data));
>> +	if (!iio_dev)
>> +		return -ENOMEM;
>> +
>> +	data = iio_priv(iio_dev);
>> +	data->spi = spi;
>> +	data->dev = dev;
>> +	data->map = devm_regmap_init(&spi->dev, NULL, data, &bd79112_regmap);
> 
> 	data->mpa = devm_regmap_init(dev, ...
> 
> 
>> +	if (IS_ERR(data->map))
>> +		return dev_err_probe(dev, PTR_ERR(data->map),
>> +				     "Failed to initialize Regmap\n");
>> +
>> +	ret = devm_regulator_get_enable_read_voltage(dev, "vdd");
>> +	if (ret < 0)
>> +		return dev_err_probe(dev, ret, "Failed to get the Vdd\n");
>> +
>> +	data->vref_mv = ret / 1000;
>> +
>> +	ret = devm_regulator_get_enable(dev, "iovdd");
>> +	if (ret < 0)
>> +		return dev_err_probe(dev, ret, "Failed to enable I/O voltage\n");
>> +
>> +	data->read_xfer[0].tx_buf = &data->read_tx[0];
>> +	data->read_xfer[0].len = sizeof(data->read_tx);
>> +	data->read_xfer[0].cs_change = 1;
>> +	data->read_xfer[1].rx_buf = &data->read_rx;
>> +	data->read_xfer[1].len = sizeof(data->read_rx);
>> +	spi_message_init_with_transfers(&data->read_msg, data->read_xfer, 2);
>> +
>> +	data->write_xfer.tx_buf = &data->reg_write_tx[0];
>> +	data->write_xfer.len = sizeof(data->reg_write_tx);
>> +	spi_message_init_with_transfers(&data->write_msg, &data->write_xfer, 1);
>> +
>> +	ret = devm_iio_adc_device_alloc_chaninfo_se(dev, &bd79112_chan_template,
>> +						    BD79112_MAX_NUM_CHANNELS - 1,
>> +						    &cs);
>> +
>> +	/* Register all pins as GPIOs if there are no ADC channels */
>> +	if (ret == -ENOENT)
>> +		goto register_gpios;
>> +
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	iio_dev->num_channels = ret;
>> +	iio_dev->channels = cs;
>> +
>> +	for (i = 0; i < iio_dev->num_channels; i++) {
>> +		unsigned int ch = cs[i].channel;
>> +
>> +		cs[i].datasheet_name = bd79112_chan_names[ch];
> 
> Could have done
> 
> 		cs[i].datasheet_name = bd79112_chan_names[cs[i].channel];
> 
> and I don't think it makes it harder to read, but doesn't matter enough to respin.

I kind of agree. It stays short and allows us to get rid of the 
brackets. Thanks!

I can still re-spin this later this week, assuming you rather not fix 
the data-format comment while applying :)

Thanks for pointing this out!

Yours,
	-- Matti

