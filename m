Return-Path: <devicetree+bounces-178556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 842A0ABC21B
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 17:18:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4937C7A2BA1
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 15:17:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00C112853E2;
	Mon, 19 May 2025 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="GTHes2Bg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEFC284B32
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 15:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747667895; cv=none; b=HCE8zj2s1Qh1NuyK1B4i4jV1la7MrIJUhHIGbKPSKN9BLUdrH3MHZeeEDi+ekKsz8Hgs5U7cleSir7YDEisnPO3edrdhFKPF6OYyMNPfyIwz0GTNXqq9vDMxrwu6rnXYx+1trP7Y+wOwIcAlc6wfPjC12k6CpSF/vQJiXz3K0oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747667895; c=relaxed/simple;
	bh=Rx3zYptxBi5JTCs/R51tw0ZrBBlrd29YDsFqOaDz5Vk=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=mbqI2ALXdOrVklbt7OXyIpABmLvJemQrVhYmQ5GKwBYuFxZPkacZTnLup0DxJudVIy8PFUIMv6zlFvuI2mr74Fc1/O1T0GQH/QvhRZwMpipEQnbTLBStm9FFRxYGDVgAgw9W5jGNpz8r/j0Lm/oBZuzFeGHa68RWPFUQazO+Ni4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=GTHes2Bg; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-72c27166ab3so3839645a34.1
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747667893; x=1748272693; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=T96N+pvFY9kP2MUGK09qDnVnDZb9ZunHgWVFq4RJ2rw=;
        b=GTHes2BgPnmBdPFDjAoD7OA4gn61mvQtvvN5DBJg843uQSPKfU75PiachpKNt8S0qv
         jPLuvH3CdiKM12CAoo1LuM4sSDnmPVHyS58yb0qaF0Eg6WM47DqjI9nF3+rDO7LDVftZ
         rYbq/MggDEaMh1pnFEDehUW1+b6EPVI2cfWcv6eE5p7MXk1474si8A1WetFWbM5Sl4zi
         K+aEJ/VBxkQ91X879Ze+9WJDQRLMqzqyt4Rd/e98rtMEbrsINXeoIpaEPdg0SuBHoGwj
         CDE44dqTQ8GJfaRam0r9DiDPlbL+Ac31c4nrMy50K3HOly/F+iUjsyS/jwODLO5NVLWe
         0FKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747667893; x=1748272693;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T96N+pvFY9kP2MUGK09qDnVnDZb9ZunHgWVFq4RJ2rw=;
        b=xKzTt29g+47Tr6szyCgnsc2vTPPHEvUyp5h+CwIDK4bFHVlqvlDmby4zdhT/7Hdadf
         O1TK22dIbksYD02W1eBQYyhP9QvZ46zy5KH04x+me97F/KTMy1Vxj1w+jdX9M9vcv8JE
         wWqCBmxfpJPkAeB3oCwbq+SreJqBqiNjWO/shmLesfTmmxgz1c5k61GURBCIylzyxB8d
         Disp/+liwH25UgMLBScQU3FBYu4JoxSvMwmGGxQ/StNXf4UmUkpHybaxACmEik+bz4fZ
         hx1fly6G/JGsz9uf0ssqX9t1ziiFtEK7ysruldtZ9rXshnjEUix5usD8LlQV2BPPqYlC
         JPzw==
X-Forwarded-Encrypted: i=1; AJvYcCXXoZ7Bf9HYdj8DPGOFFkygaQ2pAcOJJAePUMXOvNA4KDOYKE/DvprsYa0RHo5H8zeFx6OivSt9Baeq@vger.kernel.org
X-Gm-Message-State: AOJu0YxU5O9iENxBxSyhUtU7e71bTw/nEdyKeVIw2nb2LIiigAgHi6Du
	VAkPYppcBvp9gm51IaEfmLOu0hPVWxvCcKV4bDKi+nYtmhC+vA4mkRWGRADYbXcHD/c=
X-Gm-Gg: ASbGncvDgeu6bjt14kNwChuxL2u0MrJHawTPo+42onN9ytjBcOv0Zqcu5vBmaWUcawn
	Y8dBe+PrZhth+TXamupgCe4yyJqHOfY8aaGekl48nlV9wG5qVuKePWgQ7xe+ehBuHgLlllFRiLO
	MjhoQBlaAGBIWHe+ivkPcgNcPtbNYu9HRVdtY9bh++tgK/4T2sbVo6sZxg7kl5IIt1knx08qfT7
	eoDey5AgfFPpldtjBEZgw+z5CMz9yqfiiZ2hoHol5W2uFksKnjD4RjaKXa5jpAvDq/IjlYCRe69
	NawTjjdrz3KmfYawdwMAWBbIv3zCOvaO1F72/QnJ/ekgDK6SlrdKSeW1lvhcSBHM3BNcgWAUKru
	P5iQ2s5oQsA1k7HoJuJZF6r987Q==
X-Google-Smtp-Source: AGHT+IGB/HriQviRtu/8iWOaRIKaq0ZgLjfc0mLpRi6MUJMPeCnmdmCt3rySX0k7UyROtPzwY/xI2A==
X-Received: by 2002:a05:6830:6018:b0:727:3f3e:53bb with SMTP id 46e09a7af769-734f998b704mr8209365a34.24.1747667893076;
        Mon, 19 May 2025 08:18:13 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:a628:91ca:eb5:d6f5? ([2600:8803:e7e4:1d00:a628:91ca:eb5:d6f5])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-734f6a9a654sm1442928a34.33.2025.05.19.08.18.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 May 2025 08:18:12 -0700 (PDT)
Message-ID: <c95fb95d-f892-4dda-abb1-0b5ac98454c8@baylibre.com>
Date: Mon, 19 May 2025 10:18:11 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/6] iio: adc: ad7405: add ad7405 driver
To: Pop Ioan Daniel <pop.ioan-daniel@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sergiu Cuciurean <sergiu.cuciurean@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 Javier Carrasco <javier.carrasco.cruz@gmail.com>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Tobias Sperling <tobias.sperling@softing.com>,
 Alisa-Dariana Roman <alisadariana@gmail.com>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250519140220.81489-1-pop.ioan-daniel@analog.com>
 <20250519140220.81489-7-pop.ioan-daniel@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250519140220.81489-7-pop.ioan-daniel@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 5/19/25 9:02 AM, Pop Ioan Daniel wrote:
> Add support for the AD7405/ADUM770x, a high performance isolated ADC,
> 1-channel, 16-bit with a second-order Σ-Δ modulator that converts an
> analog input signal into a high speed, single-bit data stream.
> 
> Signed-off-by: Pop Ioan Daniel <pop.ioan-daniel@analog.com>
> ---

...

> +static int ad7405_set_dec_rate(struct iio_dev *indio_dev,
> +			       const struct iio_chan_spec *chan,
> +			       unsigned int dec_rate)
> +{
> +	struct ad7405_state *st = iio_priv(indio_dev);
> +	int ret;

We probably want some range checking here to make sure dec_rate is exactly one of
ad7405_dec_rates before passing it to the backend.

> +
> +	ret = iio_backend_oversampling_ratio_set(st->back, chan->scan_index, dec_rate);
> +	if (ret)
> +		return ret;
> +
> +	st->dec_rate = dec_rate;

Otherwise, this will report back a wrong value to userspace in ad7405_read_raw().

> +
> +	return 0;
> +}
> +
> +static int ad7405_get_scale(struct ad7405_state *st, int *val, int *val2)
> +{
> +	*val = st->info->full_scale_mv;
> +	*val2 = st->info->channel.scan_type.realbits - 1;
> +
> +	return IIO_VAL_FRACTIONAL_LOG2;

Probably not worth having a separate function for this. Can just do it inline.

> +}
> +
> +static int ad7405_read_raw(struct iio_dev *indio_dev,
> +			   const struct iio_chan_spec *chan, int *val,
> +			   int *val2, long info)
> +{
> +	struct ad7405_state *st = iio_priv(indio_dev);
> +
> +	switch (info) {
> +	case IIO_CHAN_INFO_SCALE:
> +		return ad7405_get_scale(st, val, val2);
> +	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
> +		*val = st->dec_rate;
> +		return IIO_VAL_INT;
> +	case IIO_CHAN_INFO_SAMP_FREQ:
> +		*val = DIV_ROUND_CLOSEST_ULL(st->ref_frequency, st->dec_rate);
> +		return IIO_VAL_INT;
> +	case IIO_CHAN_INFO_OFFSET:
> +		*val = 2 << (st->info->channel.scan_type.realbits - 1);

Isn't this supposed to be:

		*val = -(1 << (st->info->channel.scan_type.realbits - 1));

2 was a typo by me, but hopefully, you are testing this and doing the
math to double-check it is correct! I.e. generate a constant voltage signal
and capture some data, then convert it to mV with (raw + offset) * scale to
make sure it matches the voltage being applied to the input.

(I'm only human, so believe the math if disagrees with what I say. :-p)

> +		return IIO_VAL_INT;
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static int ad7405_write_raw(struct iio_dev *indio_dev,
> +			    struct iio_chan_spec const *chan, int val,
> +			    int val2, long info)
> +{
> +	switch (info) {
> +	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:

val can be negative here, which can cause it to turn into a large positive
number when it gets changed to unsigned since the last parameter of
ad7405_set_dec_rate has unsigned type. So we should either check for negative
first here or change the parameter to signed and check in the function.

> +		return ad7405_set_dec_rate(indio_dev, chan, val);
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +


