Return-Path: <devicetree+bounces-221632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA84BBA1774
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 23:10:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A2EBC562904
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 21:10:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A740C2773F7;
	Thu, 25 Sep 2025 21:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="W2ffxQAp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6831317A2EB
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758834621; cv=none; b=aLjha2IoaOij7fqh5gzyMm9I5Uyyafa5ExSC2Ho+GlQ9TXOeVf3sNLsLPq6OxySRSou7T7jip4SYxq6/XCwbsSKbls+37z0WF99xiDI5cfv81GQcVXfz1PnLBZA8SwNi5BjEJZBtLbKcgDW6bu1pnPOVeg2yekREqx2pqTbsOoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758834621; c=relaxed/simple;
	bh=n3ephFjtm3KomQZdYKzYZfiy6XEphg37kSPwmipmUdM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kTjoJ1WN7uPBI55wh5B4mnCFk1IjQjfJora3kXVEoGrgdbiMQLmtyZw2pngdr9327eUWCQkCXV4r0oKjsiHkXrflPP9j9wWFbgCSD+KUXiyUzgOufZg7YE91LKflmohQ7SpgXmw+HMPMen485CDqxbeWU2xylv9rFlvYF3RoW6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=W2ffxQAp; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-7a7b084ef77so312006a34.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 14:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758834617; x=1759439417; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aY+e1kBZ45llB4r50CypVH53r6BPQrX3V+QDI/SvX0A=;
        b=W2ffxQApBPv4MQWzzKr+rEqY6sii3eiFpNrq0nzLgrJN3hfkdlgT8sdiloRBOP19MP
         e+VeVtE+qAsMfDSHl/F9AMHThlxvJKUot4XSBZI2d7u60ikVNyFRZEvDhJu0cGov7gwu
         I8onzDYT4Sg5OXrVTwqp5wC4TlIQ7RDEVRyTuecB3TiDvvWAnFbtikCA+sSQ1yIrvEnW
         xOJjM7jDv/ZjivkF9VYmaseJLIu+qfuNnPdZm1C0Usfyx3h/OQV9C8vuUhi8V+B/xMSQ
         X1fBKpQ9hoB5jt5ZETK11LMlvM476snLwlnVx/pd8Dtqa1PZAUkpw5is8M0IlfHFnEuf
         xIow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758834617; x=1759439417;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aY+e1kBZ45llB4r50CypVH53r6BPQrX3V+QDI/SvX0A=;
        b=ldS/Q1nO06+ZavIFWSlcoXQp0sTNZELAfcnNOSq2/yZLcm/HYbVcpz3ES6D64BQ3EM
         JiFm8gXXrfkVdiN3EKwTRwBc2z+a6kH48o6DPmq/DPNH1MVWUIgpvqKIdQKBTnZGZ0mh
         4Gmc85er8IngGgmVKAWBAKvaEGS5JWLbsSTTIWdekEHU4bGdKoyJyZNPnR2l076flMWe
         maatwgWpSpNcJxPhHZIKe6ZSK1XwK9BnnLSWHR1Bhis77iEHEQkcby+xB6A8Hpd7ilC0
         rvBDkGLeEE+hy8V3hT4GJFMibu1L7Epk6199Lqb0w7I/raqsBstFbnTbGbsM2yv52vZ6
         DsCQ==
X-Forwarded-Encrypted: i=1; AJvYcCWn7PwIsw4YmtnHOmD0GbwXCm17hgposIH6q1e8I1J21meBZQas5G80xCe899koTwMtZV9DrbXqkSc0@vger.kernel.org
X-Gm-Message-State: AOJu0YxcHZQumpF9O1sOI2hIhOMzULub2TMexbkgusCsa/ckF7o4wjs8
	Gxbn1XcVpFmwIPPOiz5GvDkC3EWsz3JZlijXrMVAAJYUAS96kozwkjLd0+b1tl3obuQ=
X-Gm-Gg: ASbGncsCY8Rm9wyTLJ1DoPpZhoqUNpTWu33IPmRIonnAh//3/tj4bndqirkNPCFt2LQ
	lyq0qYOK9XQJc6SnYrHdX1HhHgpsVa+EqjsoK+Hr85mJO8gf9v3XlbXogcQpgAt1YCfgWk7VdQI
	UpC2j4ZQVWpUc2aazpvoKNGncKTwt96zhKqXOsoDV6cEE3y9lHDreLL1V1DW0WQ/sawt+XMngJs
	U/RQk+ZNFLyBgjOmvpNW3p5exKKv6VBm3Vq0jp2HyHHUPSXpXr6/6agbEvjp8D1EIV5WOKJTqZJ
	VuAzLuVTj0DmCHNH+GQuew/7X7zX9zzw5NNP6unWNuC/k4OBOxWkt+5yCta5iKoECdZOubE3WF1
	ZDCeRrj3FtZ+U1a+hVk9Vn4qAetNBfXsWjIdmBOPfIT8CWqC6o5qaRxbELgnWL+rPGhIq8gS5V/
	Q=
X-Google-Smtp-Source: AGHT+IH3Xtu0sQM1LN9CiB1yGBe1M2pqUpRj0JdGC5I5tIERbTxkLrAHLtx3WMO78jlzDKd9XqXXww==
X-Received: by 2002:a05:6808:1920:b0:43f:2c27:b720 with SMTP id 5614622812f47-43f4cdb13damr2775767b6e.20.1758834617422;
        Thu, 25 Sep 2025 14:10:17 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:4d99:814b:57f9:f83b? ([2600:8803:e7e4:1d00:4d99:814b:57f9:f83b])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-43f51258ce4sm549871b6e.30.2025.09.25.14.10.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 14:10:15 -0700 (PDT)
Message-ID: <2a503edb-fe9f-4d61-92c0-c1083a028e19@baylibre.com>
Date: Thu, 25 Sep 2025 16:10:14 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] iio: add processed write API
To: Romain Gantois <romain.gantois@bootlin.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>
Cc: Hans de Goede <hansg@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20250925-ltm8054-driver-v2-0-bb61a401a0dc@bootlin.com>
 <20250925-ltm8054-driver-v2-2-bb61a401a0dc@bootlin.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250925-ltm8054-driver-v2-2-bb61a401a0dc@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/25/25 7:37 AM, Romain Gantois wrote:
> Add a function to allow IIO consumers to write a processed value to a
> channel.
> 
> Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
> ---
>  drivers/iio/inkern.c         | 120 +++++++++++++++++++++++++++++++++++++++++++
>  include/linux/iio/consumer.h |  36 +++++++++++++
>  2 files changed, 156 insertions(+)
> 
> diff --git a/drivers/iio/inkern.c b/drivers/iio/inkern.c
> index 2a1ecef2b82007f5ee8e8d0f8b35846bc4d2f94a..a6ec724b7c1fb197e6261c1162f8315deda20fd7 100644
> --- a/drivers/iio/inkern.c
> +++ b/drivers/iio/inkern.c
> @@ -631,6 +631,57 @@ int iio_multiply_value(int *result, s64 multiplier,
>  }
>  EXPORT_SYMBOL_GPL(iio_multiply_value);
>  
> +int iio_divide_by_value(int *result, s64 numerator,
> +			unsigned int type, int val, int val2)
> +{
> +	s64 tmp_num, tmp_den;
> +
> +	switch (type) {
> +	case IIO_VAL_INT:
> +		tmp_num = numerator;
> +		tmp_den = val;
> +		break;
> +	case IIO_VAL_INT_PLUS_MICRO:
> +	case IIO_VAL_INT_PLUS_NANO:
> +		switch (type) {
> +		case IIO_VAL_INT_PLUS_MICRO:
> +			tmp_num = MICRO;
> +			tmp_den = MICRO;
> +			break;
> +
> +		case IIO_VAL_INT_PLUS_NANO:
> +			tmp_num = NANO;
> +			tmp_den = NANO;
> +			break;
> +		}
> +
> +		tmp_num *= (s64)numerator;
> +		tmp_den = (s64)abs(val) * tmp_den + (s64)abs(val2);
> +
> +		if (val < 0 || val2 < 0)
> +			tmp_num *= -1;
> +
> +		break;
> +	case IIO_VAL_FRACTIONAL:
> +		tmp_num = (s64)numerator * (s64)val2;
> +		tmp_den = val;
> +		break;
> +	case IIO_VAL_FRACTIONAL_LOG2:
> +		tmp_num = (s64)numerator << val2;
> +		tmp_den = val;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	if (!tmp_den)
> +		return -ERANGE;
> +
> +	*result = div64_s64(tmp_num, tmp_den);
> +
> +	return IIO_VAL_INT;
> +}
> +
>  static int iio_convert_raw_to_processed_unlocked(struct iio_channel *chan,
>  						 int raw, int *processed,
>  						 unsigned int scale)
> @@ -699,6 +750,53 @@ int iio_convert_raw_to_processed(struct iio_channel *chan, int raw,
>  }
>  EXPORT_SYMBOL_GPL(iio_convert_raw_to_processed);
>  
> +static int iio_convert_processed_to_raw_unlocked(struct iio_channel *chan,
> +						 int processed, int *raw,
> +						 unsigned int scale)
> +{
> +	int scale_type, scale_val, scale_val2;
> +	int offset_type, offset_val, offset_val2;
> +	int ret;
> +
> +	scale_type = iio_channel_read(chan, &scale_val, &scale_val2,
> +				      IIO_CHAN_INFO_SCALE);
> +	if (scale_type >= 0) {
> +		ret = iio_divide_by_value(raw, processed, scale_type, scale_val, scale_val2);
> +		if (ret < 0)
> +			return ret;
> +	} else {
> +		*raw = processed;
> +	}
> +
> +	if (!scale)
> +		return -ERANGE;
> +
> +	*raw = div_s64(*raw, scale);
> +
> +	offset_type = iio_channel_read(chan, &offset_val, &offset_val2,
> +				       IIO_CHAN_INFO_OFFSET);
> +	if (offset_type >= 0) {
> +		switch (offset_type) {
> +		case IIO_VAL_INT:
> +		case IIO_VAL_INT_PLUS_MICRO:
> +		case IIO_VAL_INT_PLUS_NANO:
> +			break;
> +		case IIO_VAL_FRACTIONAL:
> +			offset_val /= offset_val2;
> +			break;
> +		case IIO_VAL_FRACTIONAL_LOG2:
> +			offset_val >>= offset_val2;
> +			break;
> +		default:
> +			return -EINVAL;
> +		}
> +
> +		*raw -= offset_val;
> +	}

There are some rounding biases in this function, but I'm not sure if
it is worth trying to make a perfectly fair function.

> +
> +	return 0;
> +}
> +
>  int iio_read_channel_attribute(struct iio_channel *chan, int *val, int *val2,
>  			       enum iio_chan_info_enum attribute)
>  {
> @@ -1035,3 +1133,25 @@ ssize_t iio_read_channel_label(struct iio_channel *chan, char *buf)
>  	return do_iio_read_channel_label(chan->indio_dev, chan->channel, buf);
>  }
>  EXPORT_SYMBOL_GPL(iio_read_channel_label);
> +
> +int iio_write_channel_processed_scale(struct iio_channel *chan, int val,
> +				      unsigned int scale)
> +{
> +	struct iio_dev_opaque *iio_dev_opaque = to_iio_dev_opaque(chan->indio_dev);
> +	int ret, processed;
> +
> +	scoped_guard(mutex, &iio_dev_opaque->info_exist_lock) {

Can just use regular guard(mutex)() here and save some indent.

> +		if (!chan->indio_dev->info)
> +			return -ENODEV;
> +
> +		ret = iio_convert_processed_to_raw_unlocked(chan, val, &processed, scale);
> +		if (ret)
> +			return ret;
> +
> +		ret = iio_channel_write(chan, processed, 0, IIO_CHAN_INFO_RAW);

And this can return directly.

> +	}
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(iio_write_channel_processed_scale);
> +
> diff --git a/include/linux/iio/consumer.h b/include/linux/iio/consumer.h
> index c8c6261c81f934480e16854412e269207be60adc..dc84b8b4c61911d1a58427f1a9c798cae3954ac1 100644
> --- a/include/linux/iio/consumer.h
> +++ b/include/linux/iio/consumer.h
> @@ -399,6 +399,24 @@ int iio_read_channel_scale(struct iio_channel *chan, int *val,
>  int iio_multiply_value(int *result, s64 multiplier,
>  		       unsigned int type, int val, int val2);
>  
> +/**
> + * iio_divide_by_value() - Divide by an IIO value
> + * @result:	Destination pointer for the division result
> + * @numerator:	Numerator.
> + * @type:	One of the IIO_VAL_* constants. This decides how the @val
> + *		and @val2 parameters are interpreted.
> + * @val:	Denominator.
> + * @val2:	Denominator. @val2 use depends on type.
> + *
> + * Divide an s64 number by an IIO value, storing the result as
> + * IIO_VAL_INT. This is typically used for scaling.
> + *
> + * Returns:
> + * IIO_VAL_INT on success or a negative error-number on failure.
> + */
> +int iio_divide_by_value(int *result, s64 numerator,
> +			unsigned int type, int val, int val2);
> +
>  /**
>   * iio_convert_raw_to_processed() - Converts a raw value to a processed value
>   * @chan:		The channel being queried
> @@ -469,4 +487,22 @@ ssize_t iio_write_channel_ext_info(struct iio_channel *chan, const char *attr,
>   */
>  ssize_t iio_read_channel_label(struct iio_channel *chan, char *buf);
>  
> +/**
> + * iio_write_channel_processed_scale() - scale and write processed value to a given channel
> + * @chan:		The channel being queried.
> + * @val:		Value to write.
> + * @scale:		Scale factor to apply during the conversion

This could be more explicit about what sort of scaling this is.
The function divides by this factor rather than multiplies by it.

> + *
> + * This function writes a processed value to a channel. A processed value means
> + * that this value will have the correct unit and not some device internal
> + * representation. If the device does not support writing a processed value, the
> + * function will query the channel's scale and offset and write an appropriately
> + * transformed raw value.
> + *

Could be helpful even if obvious to most people...

	Context: May sleep.

> + * Return: an error code or 0.
> + *
> + */
> +int iio_write_channel_processed_scale(struct iio_channel *chan, int val,
> +				      unsigned int scale);
> +
>  #endif
> 


