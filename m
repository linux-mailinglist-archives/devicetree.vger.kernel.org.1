Return-Path: <devicetree+bounces-172493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDCEAA4E25
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 16:12:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 231871C07DAA
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 14:12:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E09D25DCEE;
	Wed, 30 Apr 2025 14:12:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vapXLKqj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216B82512D9
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 14:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746022321; cv=none; b=okWMv6kaoHS3nwiRYTWg0OxLZRDo+1qxUgzM0YMfws40/nl6mR59v5Vzcsx/keGGuTZ2sll0yIiRAZ035nsn+jdxCZ/3GFzIxek5HCaIY4Vf9I4XmUpi76jNdu38EQk/ft3MpyMkuQ5C9Gtur73A6wV7+Bn5cNKVGOvpyvcxouk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746022321; c=relaxed/simple;
	bh=VTVoggf6JS6pnIcZ+XS3UM8XE+/4dsDQS0s1ZJJWmTg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fshsaObnxEQSQTC+NMLxwN/L7gDKLfUdAG5ECjgVWYzlRSn367O4s29FmIBYPTkjWBQ90P47Jogf18d1TCvfURgiXewIPtzLG6xEJbcq4D004co4xGuyGMqyapXSdBY2XQtkaaSUfyILLE7zIvSG2Lm+dbTV/axvVPnCasHIGHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vapXLKqj; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3f8d2f8d890so4700509b6e.0
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 07:11:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746022318; x=1746627118; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FXr5IaAciIjxJwMtezTJjCywVevxWSVV4iijAA9ygRc=;
        b=vapXLKqjFPve7zCgvVBiqr3aJN3yYSIriPELDGQYzdnd33A6h/ThVUb5wuaFdUfCe8
         VMhJO1UaZNhp7ssB2kiHAxRe76Q+ULaORzyBhK8QBN7Yfuc6WmrIgYyNecyc97ysE7r7
         niqGl5qym5mvTpUD5kZZwrabL2E02F0kjDVehXbh9TMfaEHUKW0XHoHNwIZmBG6xZxwW
         e6GAxdGhx56Zp6zZMz0G6OPW5f3v8dYym87F1Ihs+FMe9wTs/mOBKrRMS8syBbYoWyTM
         uelQIySMxzUjGVtATCieJNDiWwo8SR2fcAiMO5Cwb85/dPc/5SmXGdiordti0QtS0wBu
         Qn8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746022318; x=1746627118;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FXr5IaAciIjxJwMtezTJjCywVevxWSVV4iijAA9ygRc=;
        b=mtYxD21B5rCaWCWQ6Xhk28QKc3xYliWPsEBO35dNaecMvvmMPh/2yX+QQin20FMVpK
         A76oXmCc3mPzKDNS9qAA7bN74BPzrjK68GOlwORjnmpQYgujHKtK/QvN+4Eqo7zytvDx
         HXK078kHXkFV951hR9uARSTny92v7aUqeUrAvjEpUgU35Tg7kHzZaACxWTUkD8b9mneF
         QMtwpnz0MKXKF6vtz4uImm6hSmzqnwvl7KxuO7YpwgwT9WFZLzKYC0znufEoA2ly3dMh
         If1VrXXv6O6Z77n1xJD0G9/9kM8UH2fWXhS5PaJ9WgC2+cMmIOfvB8wCvIo+T7FZTQDm
         r2Eg==
X-Forwarded-Encrypted: i=1; AJvYcCXRKKLGstHJAvD/Q2r0BWkPvMFwXRb2BOLGWvjKOYgBU7rH+7wLJGV7543GavUOX4OjtTEpSw0nTGJ1@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3RE5kuZGWl1R3/+t/5kN77bGqaItbA7cVBk6TFMwHu5SQhJTE
	hOKgtrw5djKbSaf+87jvx2+btow+SD03Rcv2JM8AW1swL3AZwu5vmzzUMS0dudg=
X-Gm-Gg: ASbGncstgRzQJfBQO8nDqVCKcW6Bi+8uJ4JlZlXCzWcvLmB63OOxC1ZdmwgPFxoDC09
	walBNMmKJaYt4B2PuGzrNc9kEgZdNlJD1UvOCRlBCpP7jVINPIDhgavMm88Hvnx7AKRm0Y7D31T
	h0or9f7xgqjc+RPERurav/Z10/33c5C5DOpQ2vVEkUZVDLfw0dcyCzeRSKmgXQiIHlxbFFYmA0N
	N/GI9FpRMMH7cEsA6iD7hl4HKNSH16/6tLze2rWU0zMd7ud269cLEcrkNmP1hCGy0YRY7/BYKbg
	hQYLK6G3JfZ2U7fV9rz+lmJzzpjbRW8/f4VEcBOafS7vx+5XYopX01qiYI5YWiIud8nS20nrDa5
	+o+97lTItPLCnclM=
X-Google-Smtp-Source: AGHT+IGm+YRDzAV25Fg59YboolWAEWJM5fvIS8POZ8P+KjKU4rTAu+9CAE/+oSyEAf7EUAu7s7UD8w==
X-Received: by 2002:a05:6808:8518:b0:3f7:ccac:287f with SMTP id 5614622812f47-402d24e8ef8mr1326804b6e.27.1746022317997;
        Wed, 30 Apr 2025 07:11:57 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:359a:f1e:f988:206a? ([2600:8803:e7e4:1d00:359a:f1e:f988:206a])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40212a598f5sm819181b6e.36.2025.04.30.07.11.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 07:11:57 -0700 (PDT)
Message-ID: <c6e1c555-37c0-484c-a955-39163cd148bb@baylibre.com>
Date: Wed, 30 Apr 2025 09:11:56 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 11/11] iio: adc: ad4080: add driver support
To: "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com>
Cc: "jic23@kernel.org" <jic23@kernel.org>, "robh@kernel.org"
 <robh@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20250425112538.59792-1-antoniu.miclaus@analog.com>
 <20250425112538.59792-12-antoniu.miclaus@analog.com>
 <27e40c72-7c3a-4595-8647-5fd1f428ea9f@baylibre.com>
 <CY4PR03MB3399A9584A631E5C30CF72EC9B832@CY4PR03MB3399.namprd03.prod.outlook.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <CY4PR03MB3399A9584A631E5C30CF72EC9B832@CY4PR03MB3399.namprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/30/25 7:31 AM, Miclaus, Antoniu wrote:
> ...
>>> +	unsigned int num_channels;
>>> +};
>>
>> I guess this is preparing the driver to support more than one chip?
>>
> Yes. It is stated also in the cover letter.
>>> +
>>> +struct ad4080_state {
>>> +	struct spi_device		*spi;
>>
>> It looks like this is only ever used to get &spi->dev. We could drop this and
>> get dev from regmap instead.
> How can I get the dev from regmap?

struct device *dev = regmap_get_device(regmap);

>>> +	struct regmap			*regmap;
>>> +	struct clk			*clk;
>>> +	struct iio_backend		*back;
>>> +	const struct ad4080_chip_info	*info;
>>> +	/*
>>> +	 * Synchronize access to members the of driver state, and ensure
>>> +	 * atomicity of consecutive regmap operations.
>>> +	 */
>>> +	struct mutex			lock;
>>> +	unsigned int			num_lanes;
>>> +	unsigned int			dec_rate;
>>> +	enum ad4080_filter_type		filter_type;
>>> +	bool				lvds_cnv_en;
>>> +};
>>> +
>>> +static const struct regmap_config ad4080_regmap_config = {
>>> +	.reg_bits = 16,
>>> +	.val_bits = 8,
>>> +	.read_flag_mask = BIT(7),
>>> +	.max_register = 0x29,
>>> +};
>>> +
>>> +static int ad4080_reg_access(struct iio_dev *indio_dev, unsigned int reg,
>>> +			     unsigned int writeval, unsigned int *readval)
>>> +{
>>> +	struct ad4080_state *st = iio_priv(indio_dev);
>>> +
>>
>> Missing guard(mutex)(&st->lock); ?
> Aren't regmap operations thread safe? (own internal locking).

For single operations, yes. But I assumed that you added the lock so that when
functions that do multiple regmap read/writes don't have another thread doing
a different regmap operation in the middle.

However, it looks like ad4080_lvds_sync_write() is currently the only function
like this and it is only called during probe. So it seems like the extra mutex
lock isn't currently needed and could be removed from the driver entirely.

>>> +	if (readval)
>>> +		return regmap_read(st->regmap, reg, readval);
>>> +
>>> +	return regmap_write(st->regmap, reg, writeval);
>>> +}


...

>>> +
>>> +static int ad4080_set_dec_rate(struct iio_dev *dev,
>>> +			       const struct iio_chan_spec *chan,
>>> +			       unsigned int mode)
>>> +{
>>> +	struct ad4080_state *st = iio_priv(dev);
>>> +	int ret;
>>> +
>>
>> Don't we need to check for < 2 as well?
>>
>>> +	if (st->filter_type >= SINC_5 && mode >= 512)
>>> +		return -EINVAL;
>>> +
>>> +	guard(mutex)(&st->lock);
>>> +	ret = regmap_update_bits(st->regmap, AD4080_REG_FILTER_CONFIG,
>>> +
>> AD4080_FILTER_CONFIG_SINC_DEC_RATE_MSK,
>>> +
>> FIELD_PREP(AD4080_FILTER_CONFIG_SINC_DEC_RATE_MSK,
>>> +					    (ilog2(mode) - 1)));
>>
>> Otherwise ilog2(mode) - 1 could be < 0.
>>
>>> +	if (ret)
>>> +		return ret;
>>> +
>>> +	st->dec_rate = mode;
>>
>> This saves the value the user entered, not what the hardware is actually doing.
>> It should be saving the power of 2 value instead.
>>
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +static int ad4080_read_raw(struct iio_dev *indio_dev,
>>> +			   struct iio_chan_spec const *chan,
>>> +			   int *val, int *val2, long m)
>>> +{
>>> +	struct ad4080_state *st = iio_priv(indio_dev);
>>> +	int dec_rate;
>>> +
>>> +	switch (m) {
>>> +	case IIO_CHAN_INFO_SCALE:
>>> +		return ad4080_get_scale(st, val, val2);
>>> +	case IIO_CHAN_INFO_SAMP_FREQ:
>>> +		if (st->filter_type == SINC_5_COMP)
>>> +			dec_rate = st->dec_rate * 2;
>>> +		else
>>> +			dec_rate = st->dec_rate;
>>
>> As a concequence of the above, this will return incorrect information if the
>> user didn't enter an exact value.
> Isn't the user constrained by the ad4080_read_avail for entering the dec_rate values?
> The user both writes and reads the actual decimation rate value. The conversions are done inside the functions.

Yes, the oversampling_ratio attribute is calling ad4080_get_dec_rate(), so
that one is OK, but this is the sampling_frequency attribute. Currently
st->dec_rate holds the user-requested value and isn't necessarily the same as
the value that would be returned by ad4080_get_dec_rate(indio_dev, chan).

If we dropped st->dec_rate and used ad4080_get_dec_rate(indio_dev, chan) here
too, that would be an acceptable solution too.

>>
>>> +		if (st->filter_type)
>>> +			*val = DIV_ROUND_CLOSEST(clk_get_rate(st->clk),
>> dec_rate);
>>> +		else
>>> +			*val = clk_get_rate(st->clk);
>>> +		return IIO_VAL_INT;
>>> +	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
>>> +		*val = ad4080_get_dec_rate(indio_dev, chan);
>>> +		return IIO_VAL_INT;
>>> +	default:
>>> +		return -EINVAL;
>>> +	}
>>> +}

...

>>> +static const struct iio_chan_spec ad4080_channels[] = {
>>
>> Array with one element doesn't make sense. It can just be a single struct.
> Isn't indio_dev->channels expecting an array?

No, it expects a pointer. So &ad4080_channel; can be used to get a pointer to
a single struct instance.


