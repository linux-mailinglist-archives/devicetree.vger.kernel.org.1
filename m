Return-Path: <devicetree+bounces-218015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77131B5A160
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 21:23:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 31FCE524C59
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 19:23:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7837E3016E6;
	Tue, 16 Sep 2025 19:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="U2FvcY23"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DE0E2D2383
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 19:23:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758050592; cv=none; b=h5fh+HLzFDBchC0OiYJ7V9IFSsgp63f/07INI04K0UIqUfua2FAWIB6Mzhec3CTK6NnduI1+ep1bdlPsH3JOFWdAeasaSYwk3aPKHZrDseNDF92xCaglsW/afQibxMOKc46W3MdAYTqe43E9HkeTwT6mu4OugVF7aP/iClQRkqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758050592; c=relaxed/simple;
	bh=YC8yC8EkT75hFHr/FbdShk4F5U3DDZ2cuWERcjLqWNo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vo1UJu0bR8/luuH7tsuBKdPuzmyP9a+MnqF2VK6cDpBDQkZ2mgQsZ1diL2bdhFv2qUsEMjGOTSInfZihSTaJQDLXnnpQXe12ZEWO/YF/IR+L9cb9il7YrEnu1WyKh8xK88CAe3gVEBvlliBbqOSkDXn+USvt/4/GKTQxe+PmJfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=U2FvcY23; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-757fda06b0cso1689070a34.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 12:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758050587; x=1758655387; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ndEfo094lSvy62IAprmxo1mwUZWSJf0/xtVgiQTCUv4=;
        b=U2FvcY23hcSV9j6GQDXjqoL1u2et5ynDTh7rXq+nTbcXWLcUH35+Wp4ItMbtsSqIAs
         hBpkOBazl6pSqq8HMBB6ygknEHmVpoVcKvlOg9lQ3rkM8PYjs09SM9YR9tirXi8CPsxR
         8Yu5N2s7xU8WZYYhOBJtGfwinqOQ9ZdUfgUdh7GOdVvuBNkIqnWelLX7O19G0DNDD8Rl
         q5bv+A5q+IRJ4wGMfVnmnj1AgALl9BlOswwlZ7mCNl1c/pgQfFa6Z2s3+Yhkl3KLsJ9S
         0Kx3mvanhalNaXUCGl4R4v6vDJMvRMxXAkgiyJTRcKMEYpzOUl1SzysAx2pruAZ6sm5P
         PPWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758050587; x=1758655387;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ndEfo094lSvy62IAprmxo1mwUZWSJf0/xtVgiQTCUv4=;
        b=k8VXHeBbxPuCBDP8TC3juaxlvp/ZoZaisEImFImcAJ3I5ZnLhm1pFpZOxpzton7irl
         8UJ81ScP8RpR16A9vNWmHsd/DRKAEyJXVhqUSCRQ4cDQV4eTfHkh50K2Og52ZWfjKxKh
         182A9V0rmndDjXaS3kYhsI566HPpXOl3F8t4uSaPBG5rwyobIkjEkLrV+2eci475zbB/
         Er5O7EnFn9TNyh/zQDxlZGDkD7J8PFVBL5+e2Gh7AsC72lTl3vPa/lgty0B33artTVCI
         RAq5P6TVm1OykjPP+BF7QwmYG7jug36bGcd+iqlBk9yRT1qJ5Zr3Lb1QCuc6VMBC0rXJ
         lTDA==
X-Forwarded-Encrypted: i=1; AJvYcCUOJfJPUkp+DnP+KMvVzYCX7V0KSeNgw8mINGROi+2NivhfCIqY7o9M5Sw6P+CfWm2spBr9+hHHFpmS@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9DEiP4HwxYqBBdPkYUKhRDwcjNGMhDN2TTbysl7dm3593giac
	a9LbT0bGvWjz9zWcGnB4fB35PnCg2A1PzPZXydWwgARENEjnO4vhlAnPuv7u9LyDB7Q=
X-Gm-Gg: ASbGncsM9GchNS50oaKWEkM4WLA3iOdCDDY2uMj+CIy5dZZr/6QcrCDXYPcU983wGFB
	7bEhCnVedMIRabizRoceiBPmewu41nUjoQbafJtdUXCdHRvfgpTWrjUirjp+6QPrAEsr28qZcx2
	1F8DWXrhD+3qLyvuUmYa8svi36usEwk7KZLV8tHVz0PM9UFKQx1uwZkTJ/U4SW2D2RsvQ2MPu78
	G/tvBCw/G/olRZwKw39PWedf85BkuGyp+AFuVzGxsgxA7CkVBFsjpk/JMzpVMu/w91RbORPt078
	g64/z74y6CZkt2T1J9/3r1DvJKBsFS1oNahn92Rt7R+o0ECCgnAJjJnUTmR67uCV+XtVS/XLHI8
	y0EnTCgdzYc4Jkg6AAEWE7PQU9CgAO9FmiRww8AbTxjqpTvAXoI8y99zxKIhkyp7ZgACxUgC/Cf
	0=
X-Google-Smtp-Source: AGHT+IFahDXfOCqPDL5DJRiTlTC8K5W8kCgTUbKQTe8XK7pkQ4Dti/tyYJ5r5j0lRk6m3tCLtofLzA==
X-Received: by 2002:a05:6830:6987:b0:74a:52f8:6f40 with SMTP id 46e09a7af769-75352d93fb0mr9717520a34.8.1758050586672;
        Tue, 16 Sep 2025 12:23:06 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:70a1:e065:6248:ef8b? ([2600:8803:e7e4:1d00:70a1:e065:6248:ef8b])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7524986ca64sm4301216a34.14.2025.09.16.12.23.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 12:23:05 -0700 (PDT)
Message-ID: <decdb75c-b61e-4e0f-bddd-cfc8986f3b6f@baylibre.com>
Date: Tue, 16 Sep 2025 14:23:04 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] iio: add processed write API
To: Romain Gantois <romain.gantois@bootlin.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20250916-ltm8054-driver-v1-0-fd4e781d33b9@bootlin.com>
 <20250916-ltm8054-driver-v1-2-fd4e781d33b9@bootlin.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250916-ltm8054-driver-v1-2-fd4e781d33b9@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/16/25 5:24 AM, Romain Gantois wrote:
> Add a function to allow IIO consumers to write a processed value to a
> channel.
> 
> Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
> ---
>  drivers/iio/inkern.c         | 99 ++++++++++++++++++++++++++++++++++++++++++++
>  include/linux/iio/consumer.h | 17 ++++++++
>  2 files changed, 116 insertions(+)
> 
> diff --git a/drivers/iio/inkern.c b/drivers/iio/inkern.c
> index c174ebb7d5e6d183674b7ffb15c4ce0f65fa3aed..6486fdb7c66a4c84312541f0f42cc24469972a9c 100644
> --- a/drivers/iio/inkern.c
> +++ b/drivers/iio/inkern.c
> @@ -598,6 +598,85 @@ int iio_read_channel_average_raw(struct iio_channel *chan, int *val)
>  }
>  EXPORT_SYMBOL_GPL(iio_read_channel_average_raw);
>  
> +static int iio_convert_processed_to_raw_unlocked(struct iio_channel *chan,
> +						 int processed, int *raw,
> +						 unsigned int scale)
> +{
> +	int scale_type, scale_val, scale_val2;
> +	int offset_type, offset_val, offset_val2;
> +	s64 tmp_num, tmp_den;
> +
> +	scale_type = iio_channel_read(chan, &scale_val, &scale_val2,
> +				      IIO_CHAN_INFO_SCALE);
> +	if (scale_type >= 0) {
> +		switch (scale_type) {
> +		case IIO_VAL_INT:
> +			tmp_num = processed;
> +			tmp_den = scale_val;
> +			break;
> +		case IIO_VAL_INT_PLUS_MICRO:
> +			tmp_num = (s64)processed * 1000000LL;
> +
> +			if (scale_val2 < 0) {
> +				tmp_den = (s64)scale_val * 1000000LL - (s64)scale_val2;
> +				tmp_den *= -1;
> +			} else {
> +				tmp_den = (s64)scale_val * 1000000LL + (s64)scale_val2;
> +			}
> +
> +			break;
> +		case IIO_VAL_INT_PLUS_NANO:
> +			tmp_num = (s64)processed * 1000000000LL;
> +
> +			if (scale_val2 < 0) {
> +				tmp_den = (s64)scale_val * 1000000000LL - (s64)scale_val2;
> +				tmp_den *= -1;
> +			} else {
> +				tmp_den = (s64)scale_val * 1000000000LL + (s64)scale_val2;
> +			}
> +
> +			break;
> +		case IIO_VAL_FRACTIONAL:
> +			tmp_num = (s64)processed * (s64)scale_val2;
> +			tmp_den = scale_val;
> +			break;
> +		case IIO_VAL_FRACTIONAL_LOG2:
> +			tmp_num = (s64)processed << scale_val2;
> +			tmp_den = scale_val;
> +			break;
> +		default:
> +			return -EINVAL;
> +		}
> +
> +		tmp_den *= scale;
> +
> +		*raw = div64_s64(tmp_num, tmp_den);
> +	}

It can be quite tricky to get all of these combinations right. I would
prefer if added some unit tests like we did in [1].

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git/commit/?h=testing&id=c732e60ee10ed0611a59513cbf9c8d35fbe7cf65

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
> +
> +	return 0;
> +}

