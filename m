Return-Path: <devicetree+bounces-141256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 974DCA20304
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 02:29:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4C9C164281
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 01:29:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16FCC6BB5B;
	Tue, 28 Jan 2025 01:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iDIwqkM2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D669AF9F8
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 01:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738027792; cv=none; b=j9y3n67oVPcryL7uuy/IMZVQQQ1qRRRoidmlm+sWbakmrrwoymOFOoqFQzURE3srJjgbWXoqS83LVY3YvSe/HBO2Hskg2NCLV4ajxQLXeCKTDFyGIstGPTO0OvE4Zt2kTUX19C5jJTeCl4HMy3OJGIQLc9sGsszIS0tHMHCz8XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738027792; c=relaxed/simple;
	bh=9/bGvL4F17smn7WDTDFIkahQbwnnX7F+HQ1CNr7ZZLM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CHpBPi961w+Ta1HFT1aYs93ZNqWCNiSwfGMmRN1vQUjZhZ4ie12oPw4Tx0VclgYg14XgiblOVm1fzYAhibEux1KNwviozsWcQdxPlIoC5k8vNylMXQgHHGjlvcWDyDlDB+vb4IbTXlFLMPMZVt/2vs7hkZCoN7ooafR6Zxa5f/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=iDIwqkM2; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-71e1d7130a5so2593993a34.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 17:29:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738027789; x=1738632589; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a6y4MxzqmAehNmh2Sb54Nx7dQy95evF+sKrOHq2yxoI=;
        b=iDIwqkM2X1/eIK4J5EF1SLQekVf6C2f29Lv19UFP/XuWd1qISuGmYQXoSmGZBwwVmk
         tvDga29OWm0Bz55XTRGBAJqIyTiYRSrhW33C9qoDhFYKw/Qwc+tKjY5t9ykrtcwceEbM
         +6pcz649aYmly5iCGo/zFTbMJZm/O5E+i3X+Yvk6DTaSm0EydphsvQKfESXjy46QkuYh
         F5XST+2iyOrzK3ZVMmVUgv0txFPZgIn0y9fxBVHUuTYindqBV1dizsvV4MwO2CBr0UBs
         np5tqnUoI/h0Yt5V6WciOo6aCmJqHcUMNGXIg/LGA6xOEfHeXe5LT+LjBY2ayQrLVYpW
         8HAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738027789; x=1738632589;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a6y4MxzqmAehNmh2Sb54Nx7dQy95evF+sKrOHq2yxoI=;
        b=KoSVsanfHz7P7fNKAIwFBU4f2dwC7pD3LBpejhrcxyERPwEmGZeLvpxCx6Qq3Ljida
         gwZ4/Kh3qaDy2+Wag2WsfZDpjPSQmC00PY8bg5Pqr4ixy11hHIDTKpSf47x47WfZx5Ay
         z1yXRKI0cMsQvMhSAfzxTRFixFwnQ51hNmFLyPj0Wk/G7IL6H66/A79KJSmQ99Y/vEmX
         AyZu1Kof6dh7QPr+C48WjmtFswvS3TzpI8RmYfylSZlt+7qqrayV+CazUZfJXndA7lUl
         UVb7t2M7NdHBALqgllRoY9TXaEd4Ud+BF3AGgjGlAOH4zggADVvgdw+GMJVg/YXzTX+2
         mMtA==
X-Forwarded-Encrypted: i=1; AJvYcCXVuBmd3+lis716p/8TJ4NlHDrusqwOXWTVL/M6o3R1E52Y7Zp4R+RzVSNaWvsg5KF0SMf8ramMOACK@vger.kernel.org
X-Gm-Message-State: AOJu0Yyz1m9p68sQzXNiz4x49diUBqyy7S+mHhqiWgMXfa5G80gBkTGU
	tWbW6nVAFR8MX3mnvsJa1MhgPVHyHjWr0uwUfTPpyNrOX+7glmecGImqx6fvMsY=
X-Gm-Gg: ASbGncsE5hmU8MK/oO76TU156nc9Z1d3tRuGW2bRjmPXiGdScTRNqOAR1RAyLBDqB1x
	f5f0+UnazU/y0z8aqm0T6fn+WjiWWfTVu4HVdbUMoNqufSeUPwburdYQMYcd6pcaCAJFZ+CjzMa
	buzekqJm4oL2fFeoV6sRPnPfbQZpJe3Zy8D7OrJtG3eD/hpmSpEYQRWbxTBV+mfvxzI+IR14IVZ
	L3iYCMOxVswjwHfTBlUXQYL+4rDf82888Ly2a+9OnMHqCMa88jmbf35MMsxO0yUXfc6vejaRyO6
	wMAlf0QyofC+NXeTKrvdKI3jc5X2WmFOese+0bjS+g==
X-Google-Smtp-Source: AGHT+IGztRBFKPQ4aWidgULtezyMD2+PtCa0TOriX4E/1tOs0fJW00OSyn3xzwrSeMrWVRCOnduy5Q==
X-Received: by 2002:a05:6830:6986:b0:71f:c1df:12c4 with SMTP id 46e09a7af769-7249da7182dmr25915243a34.11.1738027788862;
        Mon, 27 Jan 2025 17:29:48 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-724ecf8471dsm2683857a34.42.2025.01.27.17.29.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 17:29:48 -0800 (PST)
Message-ID: <9b8204f2-107a-477e-a822-c1649af12d02@baylibre.com>
Date: Mon, 27 Jan 2025 19:29:47 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/16] iio: adc: ad7768-1: convert driver to use regmap
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonath4nns@gmail.com,
 marcelo.schmitt1@gmail.com
References: <cover.1737985435.git.Jonathan.Santos@analog.com>
 <0968f9cfc55c5ac80492a88bbe95fc8ff7208fa5.1737985435.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <0968f9cfc55c5ac80492a88bbe95fc8ff7208fa5.1737985435.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/27/25 9:12 AM, Jonathan Santos wrote:
> Convert the AD7768-1 driver to use the regmap API for register
> access. This change simplifies and standardizes register interactions,
> reducing code duplication and improving maintainability.
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---
> v2 Changes:
> * New patch in v2.
> ---
>  drivers/iio/adc/ad7768-1.c | 82 +++++++++++++++++++++++++++-----------
>  1 file changed, 58 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/iio/adc/ad7768-1.c b/drivers/iio/adc/ad7768-1.c
> index 95ba89435652..fb8d6fae5f8a 100644
> --- a/drivers/iio/adc/ad7768-1.c
> +++ b/drivers/iio/adc/ad7768-1.c
> @@ -12,6 +12,7 @@
>  #include <linux/gpio/consumer.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>
> +#include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/sysfs.h>
>  #include <linux/spi/spi.h>
> @@ -153,6 +154,7 @@ static const struct iio_chan_spec ad7768_channels[] = {
>  
>  struct ad7768_state {
>  	struct spi_device *spi;
> +	struct regmap *regmap;
>  	struct regulator *vref;
>  	struct mutex lock;
>  	struct clk *mclk;
> @@ -176,12 +178,17 @@ struct ad7768_state {
>  	} data __aligned(IIO_DMA_MINALIGN);
>  };
>  
> -static int ad7768_spi_reg_read(struct ad7768_state *st, unsigned int addr,
> -			       unsigned int len)
> +static int ad7768_spi_reg_read(void *context, unsigned int addr,
> +			       unsigned int *val)
>  {
> -	unsigned int shift;
> +	struct iio_dev *dev = context;
> +	struct ad7768_state *st;
> +	unsigned int shift, len;
>  	int ret;
>  
> +	st = iio_priv(dev);

This can be combined with the variable declaration.

> +	/* Regular value size is 1 Byte, but 3 Bytes for ADC data */

Probably not currently needed but COEFF_DATA register is also 3 bytes.

> +	len = (addr == AD7768_REG_ADC_DATA) ? 3 : 1;
>  	shift = 32 - (8 * len);
>  	st->data.d8[0] = AD7768_RD_FLAG_MSK(addr);
>  
> @@ -190,13 +197,19 @@ static int ad7768_spi_reg_read(struct ad7768_state *st, unsigned int addr,
>  	if (ret < 0)
>  		return ret;
>  
> -	return (be32_to_cpu(st->data.d32) >> shift);
> +	*val = be32_to_cpu(st->data.d32) >> shift;
> +
> +	return 0;
>  }
>  
> -static int ad7768_spi_reg_write(struct ad7768_state *st,
> +static int ad7768_spi_reg_write(void *context,
>  				unsigned int addr,
>  				unsigned int val)
>  {
> +	struct iio_dev *dev = context;
> +	struct ad7768_state *st;
> +
> +	st = iio_priv(dev);
>  	st->data.d8[0] = AD7768_WR_FLAG_MSK(addr);
>  	st->data.d8[1] = val & 0xFF;
>  
> @@ -206,16 +219,16 @@ static int ad7768_spi_reg_write(struct ad7768_state *st,
>  static int ad7768_set_mode(struct ad7768_state *st,
>  			   enum ad7768_conv_mode mode)
>  {
> -	int regval;
> +	int regval, ret;
>  
> -	regval = ad7768_spi_reg_read(st, AD7768_REG_CONVERSION, 1);
> -	if (regval < 0)
> -		return regval;
> +	ret = regmap_read(st->regmap, AD7768_REG_CONVERSION, &regval);
> +	if (ret)
> +		return ret;
>  
>  	regval &= ~AD7768_CONV_MODE_MSK;
>  	regval |= AD7768_CONV_MODE(mode);
>  
> -	return ad7768_spi_reg_write(st, AD7768_REG_CONVERSION, regval);
> +	return regmap_write(st->regmap, AD7768_REG_CONVERSION, regval);
>  }
>  
>  static int ad7768_scan_direct(struct iio_dev *indio_dev)
> @@ -234,9 +247,10 @@ static int ad7768_scan_direct(struct iio_dev *indio_dev)
>  	if (!ret)
>  		return -ETIMEDOUT;
>  
> -	readval = ad7768_spi_reg_read(st, AD7768_REG_ADC_DATA, 3);
> -	if (readval < 0)
> -		return readval;
> +	ret = regmap_read(st->regmap, AD7768_REG_ADC_DATA, &readval);
> +	if (ret)
> +		return ret;
> +
>  	/*
>  	 * Any SPI configuration of the AD7768-1 can only be
>  	 * performed in continuous conversion mode.
> @@ -258,13 +272,11 @@ static int ad7768_reg_access(struct iio_dev *indio_dev,
>  
>  	mutex_lock(&st->lock);
>  	if (readval) {
> -		ret = ad7768_spi_reg_read(st, reg, 1);
> -		if (ret < 0)
> +		ret = regmap_read(st->regmap, reg, readval);
> +		if (ret)
>  			goto err_unlock;

Can drop the if and goto.

> -		*readval = ret;
> -		ret = 0;
>  	} else {
> -		ret = ad7768_spi_reg_write(st, reg, writeval);
> +		ret = regmap_write(st->regmap, reg, writeval);
>  	}
>  err_unlock:
>  	mutex_unlock(&st->lock);
> @@ -283,7 +295,7 @@ static int ad7768_set_dig_fil(struct ad7768_state *st,
>  	else
>  		mode = AD7768_DIG_FIL_DEC_RATE(dec_rate);
>  
> -	ret = ad7768_spi_reg_write(st, AD7768_REG_DIGITAL_FILTER, mode);
> +	ret = regmap_write(st->regmap, AD7768_REG_DIGITAL_FILTER, mode);
>  	if (ret < 0)
>  		return ret;
>  
> @@ -320,7 +332,7 @@ static int ad7768_set_freq(struct ad7768_state *st,
>  	 */
>  	pwr_mode = AD7768_PWR_MCLK_DIV(ad7768_clk_config[idx].mclk_div) |
>  		   AD7768_PWR_PWRMODE(ad7768_clk_config[idx].pwrmode);
> -	ret = ad7768_spi_reg_write(st, AD7768_REG_POWER_CLOCK, pwr_mode);
> +	ret = regmap_write(st->regmap, AD7768_REG_POWER_CLOCK, pwr_mode);
>  	if (ret < 0)
>  		return ret;
>  
> @@ -447,11 +459,11 @@ static int ad7768_setup(struct ad7768_state *st)
>  	 * to 10. When the sequence is detected, the reset occurs.
>  	 * See the datasheet, page 70.
>  	 */
> -	ret = ad7768_spi_reg_write(st, AD7768_REG_SYNC_RESET, 0x3);
> +	ret = regmap_write(st->regmap, AD7768_REG_SYNC_RESET, 0x3);
>  	if (ret)
>  		return ret;
>  
> -	ret = ad7768_spi_reg_write(st, AD7768_REG_SYNC_RESET, 0x2);
> +	ret = regmap_write(st->regmap, AD7768_REG_SYNC_RESET, 0x2);
>  	if (ret)
>  		return ret;
>  
> @@ -509,18 +521,19 @@ static int ad7768_buffer_postenable(struct iio_dev *indio_dev)
>  	 * continuous read mode. Subsequent data reads do not require an
>  	 * initial 8-bit write to query the ADC_DATA register.
>  	 */
> -	return ad7768_spi_reg_write(st, AD7768_REG_INTERFACE_FORMAT, 0x01);
> +	return regmap_write(st->regmap, AD7768_REG_INTERFACE_FORMAT, 0x01);
>  }
>  
>  static int ad7768_buffer_predisable(struct iio_dev *indio_dev)
>  {
>  	struct ad7768_state *st = iio_priv(indio_dev);
> +	unsigned int regval;

Intention could be more clear by calling this "unused". Otherwise, it can look
like a bug if you don't fully understand what the comment below means.

>  
>  	/*
>  	 * To exit continuous read mode, perform a single read of the ADC_DATA
>  	 * reg (0x2C), which allows further configuration of the device.
>  	 */
> -	return ad7768_spi_reg_read(st, AD7768_REG_ADC_DATA, 3);
> +	return regmap_read(st->regmap, AD7768_REG_ADC_DATA, &regval);
>  }
>  
>  static const struct iio_buffer_setup_ops ad7768_buffer_ops = {
> @@ -563,6 +576,20 @@ static int ad7768_set_channel_label(struct iio_dev *indio_dev,
>  	return 0;
>  }
>  
> +static const struct regmap_bus ad7768_regmap_bus = {
> +	.reg_write = ad7768_spi_reg_write,
> +	.reg_read = ad7768_spi_reg_read,
> +	.reg_format_endian_default = REGMAP_ENDIAN_BIG,
> +	.val_format_endian_default = REGMAP_ENDIAN_BIG,

The bus read function is calling be32_to_cpu(), so we probably want to remove
that or change the default here.

> +};
> +
> +static const struct regmap_config ad7768_regmap_config = {
> +	.name = "ad7768-1",
> +	.reg_bits = 8,
> +	.val_bits = 8,

Should this be 24 since the largest registers are 24-bit?

Another option could be to just use a regular spi_*() API for that register
instead of regmap_*() and avoid trying to do something that regmap doesn't
really handle.

Or we could possibly use regmap_bulk_read(), but that feels a bit hacky too
since it isn't actually how that function was intended to be used.

> +	.max_register = AD7768_REG_MCLK_COUNTER,
> +};
> +
>  static int ad7768_probe(struct spi_device *spi)
>  {
>  	struct ad7768_state *st;
> @@ -592,6 +619,13 @@ static int ad7768_probe(struct spi_device *spi)
>  
>  	st->spi = spi;
>  
> +	st->regmap = devm_regmap_init(&spi->dev,
> +				      &ad7768_regmap_bus, indio_dev,
> +				      &ad7768_regmap_config);
> +	if (IS_ERR(st->regmap))
> +		return dev_err_probe(&spi->dev, PTR_ERR(st->regmap),
> +				     "Failed to initialize regmap");
> +
>  	st->vref = devm_regulator_get(&spi->dev, "vref");
>  	if (IS_ERR(st->vref))
>  		return PTR_ERR(st->vref);


