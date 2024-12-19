Return-Path: <devicetree+bounces-132842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A059F84BB
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:49:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 004BA7A229C
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 19:49:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD00C1B041E;
	Thu, 19 Dec 2024 19:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="kn2GSZzF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CD571A2554
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734637764; cv=none; b=GlXWN64op6OltkcObmgWS4OuR6Nq6L8YMn0BCsDMJVqw+43/Ftr7VzjhgWsgyEIzK2c+9gVEyYuoTmoIqimrJ1fYfjkHfpMXSMOwEjl02gwAWPQ6ZHhqRqor1138kSgEFvZvOQweb4bE5RUYnK7GL9oaJFKEme2ehlp/8zHledY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734637764; c=relaxed/simple;
	bh=cacpWzLeEGNisxBEB5qKnyaoHkVCVgpIVkdxfDHMsgU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dhr3LE1FpwFyo3ZjuV/Gfzuv07ZKTrAMi/68X7EV3xshLaMnA+TrhCLj7wKhEGS/tl7SFxR+0pYIGkYz9cmiAFsQKoV11YcuTbjwrNKuZJR51WJJCHqSt4PtVhUpGfRAgg1kRp07SaeaDrNxq3uGqoli6MMeEj5LCe682qt+DMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=kn2GSZzF; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-71e181fb288so729320a34.2
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 11:49:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1734637761; x=1735242561; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EMxEO1nWkMIqE4vASfh0ZwzSp6UgAJG0z8BPAoPZxgI=;
        b=kn2GSZzFKScz+vfeIMaEi3VkJpGf071w8q3SIedNX3CLiIhetOw7U2bXw/CBw7zB15
         CZ2d9g+rxFaZ2HsxDJszrZq1RptBxyaiHTqybXsTJ1+uKJUyvlxjlAABla3unof7NpJ2
         tQLAndXgRq7URFnGkAQATNNnspZDRluR/NmR2x1ev3a5SvOeorYoUhC9aPkGYyYZfIhc
         SVjhCXecbdR8mTjBc3pW7oZPOH9ItlspUWkt5eiNyRajePp/+J2WJWLGNbu2lIVghGRx
         3YQAIXUQIv1H0py8EP232fKF0/fYBIp3UHmrTr7YVJt8NwPxTMdDyMa9Tb/yKAsoFCYf
         jdqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734637761; x=1735242561;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EMxEO1nWkMIqE4vASfh0ZwzSp6UgAJG0z8BPAoPZxgI=;
        b=Sm+3Lat3+6GI355z41KxncWelfq1biTRIcPt0aO1kcTrrbP94bRnK7n4OsjjkfsJo9
         rBZobb4kaOgVB4ffcBGeo6/numBRAEECCgqBaBtbat20o+7aC4//RfmZ6XRtYCASQMpU
         cwAH64xfjHnsgg2iYA4hgc2iSJPVIc79FxnrMJBkSCzjzD+9JceUtP24JO3qXTGa0Yt7
         3HnuZjRMOCIcCGALOOE/57PXp4smAcMi6HI/ZzkVwhmh39/XjZhwoMtH5CwYnNUm9xIW
         EL6QAq7gdXSamfDv0xTSQGANRAq43/t2fCeYSaZixLEO8ZAsTJCPlbGPyf08mhB5mhay
         F1Fg==
X-Forwarded-Encrypted: i=1; AJvYcCX17m/Av4x9N/VmI75xudxf/d5CTLk+wRYcWDCVrBVxcIeV++5g1jtPDNpaXFRnqAvMaJYF+WxrZWbF@vger.kernel.org
X-Gm-Message-State: AOJu0YxbjN6ZEs/49TBfHbUV2pBDuMv5kusm0xHjnCrRTnxHKSwPSULb
	iCMX4K5MlkSqYc3zKcfsvm00ls9wIGx/pCwgAzk2xI3kkpQf8Efbncb/lhoWMCE=
X-Gm-Gg: ASbGncuD9G1SlRPFdmPcShzSQAWvRBGx8me0Aw6/lBnA3/FyXUqxL49YMTmkNw3YuQe
	z6z86QywOnjvgD7OPhykkU/zpcX4fIiuS2FdXs2L2b833VWlKy4oswBJDU88OYZepjDlgj289D+
	mCMekKkwS3da+ll9xliP52En8exCqJ/LvvieE7U1CeoE6aivXqN8LgX+D+gYRQ8Miv5xIxLDy0i
	mf3y2tKUJNQtb4rbK0ijPfO1y6ZVqfTALVpHDpBgl4vC4EjDIgiAnCykfQ0LAhry6YssJF1sdIV
	eyAG1/mp90OcDaOnbQ==
X-Google-Smtp-Source: AGHT+IE5PAX9DWZqVizDj7zEe4vWvroonEPAgwu8MDqSFMKq+QM0MLAWbnP6YuGWJJ9+95MLv0RrJw==
X-Received: by 2002:a05:6830:6102:b0:71e:1ca5:fc94 with SMTP id 46e09a7af769-720ff8d7301mr173018a34.28.1734637761245;
        Thu, 19 Dec 2024 11:49:21 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc976438fsm391798a34.10.2024.12.19.11.49.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 11:49:19 -0800 (PST)
Message-ID: <6df3de9e-a6c8-4096-ba60-76b977a841ed@baylibre.com>
Date: Thu, 19 Dec 2024 13:49:18 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 3/4] iio: adc: Add support for AD4170
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Ana-Maria Cusco <ana-maria.cusco@analog.com>, jic23@kernel.org,
 lars@metafoo.de, Michael.Hennerich@analog.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, marcelo.schmitt1@gmail.com,
 Dragos Bogdan <dragos.bogdan@analog.com>
References: <cover.1734530280.git.marcelo.schmitt@analog.com>
 <827daa6ba0882cc7974a9a61831e53dbf1ed5a78.1734530280.git.marcelo.schmitt@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <827daa6ba0882cc7974a9a61831e53dbf1ed5a78.1734530280.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/18/24 8:37 AM, Marcelo Schmitt wrote:
> From: Ana-Maria Cusco <ana-maria.cusco@analog.com>
> 
> From: Ana-Maria Cusco <ana-maria.cusco@analog.com>
> 
> Add support for the AD4170 ADC with the following features:
> - Single-shot read (read_raw), scale, sampling freq
> - Multi channel buffer support
> - Buffered capture in triggered mode
> - Gain and offset calibration
> - chop_iexc and chop_adc device configuration
> - Powerdown switch configuration
> 
> Co-developed-by: Dragos Bogdan <dragos.bogdan@analog.com>
> Signed-off-by: Dragos Bogdan <dragos.bogdan@analog.com>
> Signed-off-by: Ana-Maria Cusco <ana-maria.cusco@analog.com>
> Co-developed-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---
>  drivers/iio/adc/Kconfig  |   16 +
>  drivers/iio/adc/Makefile |    1 +
>  drivers/iio/adc/ad4170.c | 2049 ++++++++++++++++++++++++++++++++++++++

I know it is a pain to split this up into multiple patches, but this is really
too huge to try to review all at once! 500 lines changed or less per patch is
much more manageable.

Just commenting on a few things that jupmed out at me for now...

>  drivers/iio/adc/ad4170.h |  316 ++++++
>  4 files changed, 2382 insertions(+)
>  create mode 100644 drivers/iio/adc/ad4170.c
>  create mode 100644 drivers/iio/adc/ad4170.h
> 


> +
> +#include <linux/bitfield.h>
> +#include <linux/bitops.h>
> +#include <linux/clk.h>
> +#include <linux/clk-provider.h>
> +#include <linux/delay.h>
> +#include <linux/device.h>
> +#include <linux/err.h>
> +#include <linux/gpio/driver.h>
> +#include <linux/interrupt.h>
> +#include <linux/irq.h>
> +#include <linux/kernel.h>
> +#include <linux/math64.h>
> +#include <linux/module.h>
> +#include <linux/property.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/spi/spi.h>
> +#include <linux/units.h>
> +#include <linux/util_macros.h>
> +
> +#include <asm/div64.h>

Usually don't use asm but rather linux/math64.h.

> +#include <linux/unaligned.h>
> +


> +struct ad4170_state {
> +	struct regmap *regmap;
> +	struct spi_device *spi;
> +	struct regulator_bulk_data supplies[7];
> +	struct mutex lock; /* Protect filter, PGA, GPIO, chan read, chan config */
> +	struct iio_chan_spec chans[AD4170_MAX_CHANNELS];
> +	struct ad4170_chan_info chans_info[AD4170_MAX_CHANNELS];
> +	struct ad4170_setup setups[AD4170_MAX_SETUPS];
> +	u32 mclk_hz;
> +	enum ad4170_pin_function pins_fn[AD4170_NUM_ANALOG_PINS];
> +	enum ad4170_gpio_function gpio_fn[AD4170_NUM_GPIO_PINS];
> +	unsigned int clock_ctrl;
> +	struct clk *ext_clk;
> +	struct clk_hw int_clk_hw;
> +	int sps_tbl[ARRAY_SIZE(ad4170_filt_names)][ARRAY_SIZE(ad4170_filt_fs_tbl)][2];
> +	struct completion completion;
> +	struct iio_trigger *trig;
> +	u32 data[AD4170_MAX_CHANNELS];
> +
> +	struct spi_transfer xfer;
> +	struct spi_message msg;
> +	/*
> +	 * DMA (thus cache coherency maintenance) requires the transfer buffers
> +	 * to live in their own cache lines.
> +	 */
> +	u8 reg_write_tx_buf[6];
> +	__be32 reg_read_rx_buf __aligned(IIO_DMA_MINALIGN);

Looks like __align() needs to be moved up one line.

> +	__be16 reg_read_tx_buf;
> +};
> +


> +static int ad4170_get_input_range(struct ad4170_state *st,
> +				  struct iio_chan_spec const *chan,
> +				  unsigned int ref_sel)
> +{
> +	struct ad4170_chan_info *chan_info = &st->chans_info[chan->address];
> +	struct ad4170_setup *setup = &st->setups[chan_info->setup_num];
> +	bool bipolar = FIELD_GET(AD4170_AFE_BIPOLAR_MSK, setup->afe);
> +	int refp, refn, ain_voltage, ret;
> +
> +	switch (ref_sel) {
> +	case AD4170_AFE_REFIN_REFIN1:
> +		refp = regulator_get_voltage(st->supplies[AD4170_REFIN1P_SUP].consumer);
> +		refn = regulator_get_voltage(st->supplies[AD4170_REFIN1N_SUP].consumer);
> +		break;
> +	case AD4170_AFE_REFIN_REFIN2:
> +		refp = regulator_get_voltage(st->supplies[AD4170_REFIN2P_SUP].consumer);
> +		refn = regulator_get_voltage(st->supplies[AD4170_REFIN2N_SUP].consumer);
> +		break;
> +	case AD4170_AFE_REFIN_AVDD:
> +		refp = regulator_get_voltage(st->supplies[AD4170_AVDD_SUP].consumer);
> +		ret = regulator_get_voltage(st->supplies[AD4170_AVSS_SUP].consumer);
> +		/*
> +		 * TODO AVSS is actually optional.
> +		 * Should we handle -EPROBE_DEFER here?

Since this is calling regulator_get_voltage(), we won't get EPROBE_DEFER here.

> +		 */


> +
> +static int ad4170_clock_select(struct iio_dev *indio_dev)
> +{
> +	struct ad4170_state *st = iio_priv(indio_dev);
> +	struct device *dev = &st->spi->dev;
> +	int ret;
> +
> +	st->mclk_hz = AD4170_INT_FREQ_16MHZ;
> +	ret = device_property_match_property_string(dev, "clock-names",
> +						    ad4170_clk_sel,
> +						    ARRAY_SIZE(ad4170_clk_sel));
> +	if (ret < 0) {
> +		/* Use internal clock reference */
> +		st->clock_ctrl |= FIELD_PREP(AD4170_CLOCK_CTRL_CLOCKSEL_MSK,
> +					     AD4170_INTERNAL_OSC_OUTPUT);
> +		return ad4170_register_clk_provider(indio_dev);
> +	}
> +
> +	/* Use external clock reference */
> +	st->ext_clk = devm_clk_get(dev, ad4170_clk_sel[ret]);

devm_clk_get_enabled() ?

> +	if (IS_ERR(st->ext_clk)) {
> +		if (PTR_ERR(st->ext_clk) == -EPROBE_DEFER)
> +			return -EPROBE_DEFER;

dev_err_probe() already does this check.

> +
> +		return dev_err_probe(dev, PTR_ERR(st->ext_clk),
> +				     "Failed to get external clock\n");
> +	}
> +	st->clock_ctrl |= FIELD_PREP(AD4170_CLOCK_CTRL_CLOCKSEL_MSK,
> +				     AD4170_EXTERNAL_OSC + ret);
> +
> +	ret = clk_prepare_enable(st->ext_clk);
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "Failed to enable external clock\n");
> +
> +	ret = devm_add_action_or_reset(dev, ad4170_clk_disable_unprepare,
> +				       st->ext_clk);
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "Failed to add clock unwind action\n");
> +
> +	st->mclk_hz = clk_get_rate(st->ext_clk);
> +	if (st->mclk_hz < AD4170_EXT_FREQ_MHZ_MIN ||
> +	    st->mclk_hz > AD4170_EXT_FREQ_MHZ_MAX) {
> +		return dev_err_probe(dev, -EINVAL,
> +				     "Invalid external clock frequency %u\n",
> +				     st->mclk_hz);
> +	}
> +	return 0;
> +}


> +
> +/* ADC Register Lengths */
> +static const unsigned int ad4170_reg_size[] = {
> +	[AD4170_INTERFACE_CONFIG_A_REG] = 1,
> +	[AD4170_STATUS_REG]	= 2,
> +	[AD4170_DATA_24b_REG]	= 3,
> +	[AD4170_PIN_MUXING_REG]	= 2,
> +	[AD4170_CLOCK_CTRL_REG]	= 2,
> +	[AD4170_POWER_DOWN_SW_REG]	= 2,
> +	[AD4170_ADC_CTRL_REG]	= 2,
> +	[AD4170_CHANNEL_EN_REG]	= 2,
> +	/*
> +	 * CHANNEL_SETUP and CHANNEL_MAP register are all 2 byte size each and
> +	 * their addresses are interleaved such that we have CHANNEL_SETUP0
> +	 * address followed by CHANNEL_MAP0 address, followed by CHANNEL_SETUP1,
> +	 * and so on until CHANNEL_MAP15.
> +	 * Thus, initialize the register size for them only once.
> +	 */
> +	[AD4170_CHAN_SETUP_REG(0) ... AD4170_CHAN_MAP_REG(AD4170_MAX_CHANNELS - 1)] = 2,
> +	/*
> +	 * MISC, AFE, FILTER, FILTER_FS, OFFSET, and GAIN register addresses are
> +	 * also interleaved but MISC, AFE, FILTER, FILTER_FS, OFFSET are 16-bit
> +	 * while OFFSET, GAIN are 24-bit registers so we can't init them all to
> +	 * the same size.
> +	 */
> +	/* Init MISC register size */
> +	[AD4170_MISC_REG(0)] = 2,
> +	[AD4170_MISC_REG(1)] = 2,
> +	[AD4170_MISC_REG(2)] = 2,
> +	[AD4170_MISC_REG(3)] = 2,
> +	[AD4170_MISC_REG(4)] = 2,
> +	[AD4170_MISC_REG(5)] = 2,
> +	[AD4170_MISC_REG(6)] = 2,
> +	[AD4170_MISC_REG(7)] = 2,
> +	/* Init AFE register size */
> +	[AD4170_AFE_REG(0)] = 2,
> +	[AD4170_AFE_REG(1)] = 2,
> +	[AD4170_AFE_REG(2)] = 2,
> +	[AD4170_AFE_REG(3)] = 2,
> +	[AD4170_AFE_REG(4)] = 2,
> +	[AD4170_AFE_REG(5)] = 2,
> +	[AD4170_AFE_REG(6)] = 2,
> +	[AD4170_AFE_REG(7)] = 2,
> +	/* Init FILTER register size */
> +	[AD4170_FILTER_REG(0)]	= 2,
> +	[AD4170_FILTER_REG(1)]	= 2,
> +	[AD4170_FILTER_REG(2)]	= 2,
> +	[AD4170_FILTER_REG(3)]	= 2,
> +	[AD4170_FILTER_REG(4)]	= 2,
> +	[AD4170_FILTER_REG(5)]	= 2,
> +	[AD4170_FILTER_REG(6)]	= 2,
> +	[AD4170_FILTER_REG(7)]	= 2,
> +	/* Init FILTER_FS register size */
> +	[AD4170_FILTER_FS_REG(0)]	= 2,
> +	[AD4170_FILTER_FS_REG(1)]	= 2,
> +	[AD4170_FILTER_FS_REG(2)]	= 2,
> +	[AD4170_FILTER_FS_REG(3)]	= 2,
> +	[AD4170_FILTER_FS_REG(4)]	= 2,
> +	[AD4170_FILTER_FS_REG(5)]	= 2,
> +	[AD4170_FILTER_FS_REG(6)]	= 2,
> +	[AD4170_FILTER_FS_REG(7)]	= 2,
> +	/* Init OFFSET register size */
> +	[AD4170_OFFSET_REG(0)]	= 3,
> +	[AD4170_OFFSET_REG(1)]	= 3,
> +	[AD4170_OFFSET_REG(2)]	= 3,
> +	[AD4170_OFFSET_REG(3)]	= 3,
> +	[AD4170_OFFSET_REG(4)]	= 3,
> +	[AD4170_OFFSET_REG(5)]	= 3,
> +	[AD4170_OFFSET_REG(6)]	= 3,
> +	[AD4170_OFFSET_REG(7)]	= 3,
> +	/* Init GAIN register size */
> +	[AD4170_GAIN_REG(0)]	= 3,
> +	[AD4170_GAIN_REG(1)]	= 3,
> +	[AD4170_GAIN_REG(2)]	= 3,
> +	[AD4170_GAIN_REG(3)]	= 3,
> +	[AD4170_GAIN_REG(4)]	= 3,
> +	[AD4170_GAIN_REG(5)]	= 3,
> +	[AD4170_GAIN_REG(6)]	= 3,
> +	[AD4170_GAIN_REG(7)]	= 3,
> +	[AD4170_V_BIAS_REG]	= 2,
> +	[AD4170_CURRENT_SRC_REG(0) ... AD4170_CURRENT_SRC_REG(AD4170_NUM_CURRENT_SRC - 1)] = 2,

Another way to do this is to make 3 regmaps, one for each word size.

It's a bit more work to set up in the first place, but then makes
using it easier. (see ad4695 for an example)

> +};

