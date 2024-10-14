Return-Path: <devicetree+bounces-111185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CBB99D8DB
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 23:16:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E062C1F2217D
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 21:16:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B06D156F44;
	Mon, 14 Oct 2024 21:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HswkXmlM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B25BA4683
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 21:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728940565; cv=none; b=mx0qulZzTtPcTnfbCEE+NFYFb453vfhlGpDwiIPE5x6g8tmrT+WhqgxdNWf8oZ2T689swiXRBU7rk1MOxmhGaquXwL/4G85imyUEbqb86aQPnKYkmAlG/7MSfZKrrtil/Hup8lmhhhvaiISw56My9oQDaT1x1m31NCNRfZhMc64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728940565; c=relaxed/simple;
	bh=PNT7KmUtldzIpqspy3EtJ7aA4bhnVjw/L9lrwheULCc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d0GBKCpmPgJ2CjKMZbfN4wmrGyMOr8fxIsZQwbI9ke5n3HZHb34Cykmd4Q2Ae8edeZ9CBzhGFw/+SDoNMU6wzo+eSXGQpuGihQtZrHxTPuMTxbdIr/JTDN3oR7lc37dNHF3d+JvPG7JxU9Povchexp7myleSkjFiCiIp/QiCeT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HswkXmlM; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-717d606ca50so2041956a34.2
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 14:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728940563; x=1729545363; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0ce1GIY1b6+RwP6V6COJLCd1pwfwJxZLHizCPmeaNRY=;
        b=HswkXmlMSHQqDixI/URpYfrGwfL+VOp8akS/SfMwOJMb6YzApTv7eaGc5lyGdPKu89
         aDnYF/J9WTGo6WFAXXDZHoqW77mNMIdOSp/bHroPTWhcpEIfkoRP/1dFVH/1ZQHVTbQn
         xbz+a2XX6LKVnWj93oJS3xtanlo5haRTKIxmaWZ0TuRzPR1AVGuegDxpkHtT3NsGrxG7
         wIyQ2HjYgpAxZtI3/SkslPcBYwHWfIrzBnOs/LnjFmWYedeVsN0kjVfDwL4v+4FNEE64
         jMxHQ/BtWjPA95B051U9wW3NXlKUanDvb4/gp2EuzN6FR9F9dOdwRRpelsdL4DDlWV55
         QG2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728940563; x=1729545363;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0ce1GIY1b6+RwP6V6COJLCd1pwfwJxZLHizCPmeaNRY=;
        b=BTz1vPQSkAUWpf9hQG7aDos+tM7IssBi9sscrI+Afr2CrbkrIxQUld/s4W1kFGaWkO
         U7xpXsvD9wjlCG0sPGpxb0Jj2e+TyxoP3HRLxX/66G8QkZNtt5abkcTFtBOxcyB+3Mjl
         fo3AoMA3X+u6qC3hLac+p2HpRadf8rfC7mwxsk8RmnK2QSVDc1cKMFc6EhV1tbretlPD
         euh8jkM/2ObgtWC/S8wtGTPDJZIuAuRWJayD/bbRw7zTLGzNGYldT/1U8Z4tbpzHQFkT
         weu+Mi68xzaAXLrFYOA3/axBjvYJRNQ2R93rT/mwqoUW4sAX8AfeRa0FDWoerOJpktUp
         QObQ==
X-Forwarded-Encrypted: i=1; AJvYcCXs9yaLuj6lndUPcYd7b+yIphXJZ2f7rUcNuCqT6XT/2O+YVGzosO4XLCuETc8wdB2M66TmeglRruxE@vger.kernel.org
X-Gm-Message-State: AOJu0YwtMb/9J3tegOXGv0NkrVqC33PQyLzOTNnvnJwASXAtsBLb9Q8x
	J6nVn6MzBERVcV4WQUpKyF9b9ig/Nv04MycxwLU3xPYUElI7i3AcflgyD0JxFyc=
X-Google-Smtp-Source: AGHT+IF+zeQij3RixSt43EFgims8S8GqUMFCrkC+x7dsT3Aw/QPn3T9Eb962SdFHuqYXFtPWShD0lA==
X-Received: by 2002:a05:6830:4486:b0:717:d0a1:f15b with SMTP id 46e09a7af769-717d640e836mr8899216a34.4.1728940562787;
        Mon, 14 Oct 2024 14:16:02 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-717d0033a2csm2108717a34.68.2024.10.14.14.15.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2024 14:16:01 -0700 (PDT)
Message-ID: <c3d55f78-5a54-49f8-b6a1-4ed0f24f8666@baylibre.com>
Date: Mon, 14 Oct 2024 16:15:59 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 7/8] iio: dac: ad3552r: add high-speed platform driver
To: Angelo Dureghello <adureghello@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
References: <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-0-eeef0c1e0e56@baylibre.com>
 <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-7-eeef0c1e0e56@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241014-wip-bl-ad3552r-axi-v0-iio-testing-v6-7-eeef0c1e0e56@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/14/24 5:08 AM, Angelo Dureghello wrote:
> From: Angelo Dureghello <adureghello@baylibre.com>
> 
> Add High Speed ad3552r platform driver.
> 

...

> +static int ad3552r_hs_read_raw(struct iio_dev *indio_dev,
> +			       struct iio_chan_spec const *chan,
> +			       int *val, int *val2, long mask)
> +{
> +	struct ad3552r_hs_state *st = iio_priv(indio_dev);
> +	int ret;
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_SAMP_FREQ: {
> +		int sclk;
> +
> +		ret = iio_backend_read_raw(st->back, chan, &sclk, 0,
> +					   IIO_CHAN_INFO_FREQUENCY);

FWIW, this still seems like an odd way to get the stream mode SCLK
rate from the backend to me. How does the backend know that we want
the stream mode clock rate and not some other frequency value? 

> +		if (ret != IIO_VAL_INT)
> +			return -EINVAL;
> +
> +		/* Using 4 lanes (QSPI) */
> +		*val = DIV_ROUND_CLOSEST(sclk * 4 * (1 + st->ddr_mode),

Since DDR is always enabled for buffered reads, I think we should
always be multiplying by 2 here instead of (1 + st->ddr_mode).

Otherwise the sampling frequency attribute will return the wrong
value if it is read when a buffered read is not currently in
progress.

> +					 chan->scan_type.storagebits);

It would probably be more correct to use realbits here instead of
storagebits. Usually realbits is the bits per word being sent over
the SPI bus while storagebits can be larger.

> +
> +		return IIO_VAL_INT;
> +	}
> +	case IIO_CHAN_INFO_RAW:
> +		ret = st->data->bus_reg_read(st->back,
> +				AD3552R_REG_ADDR_CH_DAC_16B(chan->channel),
> +				val, 2);
> +		if (ret)
> +			return ret;
> +
> +		return IIO_VAL_INT;
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +

...

> +static int ad3552r_hs_buffer_postenable(struct iio_dev *indio_dev)
> +{
> +	struct ad3552r_hs_state *st = iio_priv(indio_dev);
> +	struct iio_backend_data_fmt fmt = {
> +		.type = IIO_BACKEND_DATA_UNSIGNED
> +	};
> +	int loop_len, val, err;
> +
> +	/* Inform DAC chip to switch into DDR mode */
> +	err = ad3552r_qspi_update_reg_bits(st,
> +					   AD3552R_REG_ADDR_INTERFACE_CONFIG_D,
> +					   AD3552R_MASK_SPI_CONFIG_DDR,
> +					   AD3552R_MASK_SPI_CONFIG_DDR, 1);
> +	if (err)
> +		return err;
> +
> +	/* Inform DAC IP to go for DDR mode from now on */
> +	err = iio_backend_ddr_enable(st->back);
> +	if (err) {
> +		dev_warn(st->dev, "could not set DDR mode, not streaming");
> +		goto exit_err;
> +	}
> +
> +	st->ddr_mode = true;
> +
> +	switch (*indio_dev->active_scan_mask) {
> +	case AD3552R_CH0_ACTIVE:
> +		st->single_channel = true;
> +		loop_len = 2;
> +		val = AD3552R_REG_ADDR_CH_DAC_16B(0);
> +		break;
> +	case AD3552R_CH1_ACTIVE:
> +		st->single_channel = true;
> +		loop_len = 2;
> +		val = AD3552R_REG_ADDR_CH_DAC_16B(1);
> +		break;
> +	case AD3552R_CH0_CH1_ACTIVE:
> +		st->single_channel = false;
> +		loop_len = 4;
> +		val = AD3552R_REG_ADDR_CH_DAC_16B(1);
> +		break;
> +	default:
> +		err = -EINVAL;
> +		goto exit_err_ddr;
> +	}
> +
> +	err = st->data->bus_reg_write(st->back, AD3552R_REG_ADDR_STREAM_MODE,
> +				      loop_len, 1);

It would be more logical to set this before switching to DDR mode.
No need to do a register write with DDR enabled. 

(And would be necessary for Jonathan's hypothetical 2-SPI-controller
backend.) ;-)

> +	if (err)
> +		goto exit_err_ddr;
> +
> +	err = iio_backend_data_transfer_addr(st->back, val);
> +	if (err)
> +		goto exit_err_ddr;
> +
> +	err = iio_backend_data_format_set(st->back, 0, &fmt);
> +	if (err)
> +		goto exit_err_ddr;
> +
> +	err = iio_backend_data_stream_enable(st->back);
> +	if (err)
> +		goto exit_err_ddr;
> +
> +	return 0;
> +
> +exit_err_ddr:
> +	iio_backend_ddr_disable(st->back);

Does it actually work in this order? In ad3552r_hs_buffer_predisable()
we call ad3552r_qspi_update_reg_bits() first and then iio_backend_ddr_disable().
If DDR affects register writes, then it seems like disabling DDR in the
backend first would cause the register write to disable DDR on the DAC
to fail. So the order in ad3552r_hs_buffer_predisable() seems correct.

Probably can just drop this part and change all goto exit_err_ddr;
to goto exit_err;.

> +
> +exit_err:
> +	ad3552r_qspi_update_reg_bits(st,
> +				     AD3552R_REG_ADDR_INTERFACE_CONFIG_D,
> +				     AD3552R_MASK_SPI_CONFIG_DDR,
> +				     0, 1);
> +
> +	iio_backend_ddr_disable(st->back);
> +
> +	st->ddr_mode = false;
> +
> +	return err;
> +}
> +
> +static int ad3552r_hs_buffer_predisable(struct iio_dev *indio_dev)
> +{
> +	struct ad3552r_hs_state *st = iio_priv(indio_dev);
> +	int err;
> +
> +	err = iio_backend_data_stream_disable(st->back);
> +	if (err)
> +		return err;
> +
> +	/* Inform DAC to set in SDR mode */
> +	err = ad3552r_qspi_update_reg_bits(st,
> +					   AD3552R_REG_ADDR_INTERFACE_CONFIG_D,
> +					   AD3552R_MASK_SPI_CONFIG_DDR,
> +					   0, 1);
> +	if (err)
> +		return err;
> +
> +	err = iio_backend_ddr_disable(st->back);
> +	if (err)
> +		return err;
> +
> +	st->ddr_mode = false;
> +
> +	return 0;
> +}
> +

...

> +
> +#define AD3552R_CHANNEL(ch) { \
> +	.type = IIO_VOLTAGE, \
> +	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW), \
> +	.info_mask_shared_by_all = BIT(IIO_CHAN_INFO_SAMP_FREQ), \

As described in [1], the sampling freq attr should be info_mask_separate
since it is the sample rate per individual sample, not the sample rate
per scan.

[1]: https://lore.kernel.org/linux-iio/20240908164940.7c4ffb8a@jic23-huawei/


> +	.output = 1, \
> +	.indexed = 1, \
> +	.channel = (ch), \
> +	.scan_index = (ch), \
> +	.scan_type = { \
> +		.sign = 'u', \
> +		.realbits = 16, \
> +		.storagebits = 16, \
> +		.endianness = IIO_BE, \
> +	} \
> +}
> +

