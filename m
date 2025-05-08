Return-Path: <devicetree+bounces-175079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B7CAAFC0C
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 15:51:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A3341BC5AAE
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 13:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10A1A22D781;
	Thu,  8 May 2025 13:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ojI6nTSz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188DE221DB3
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 13:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746712260; cv=none; b=eFUPVTv89Uu/sUFB9tdo8DeaxtwwifldCcDXnPp56rlExa2hgqECLMITX1LsEukTvVDgiF8iqTiNN0GvRijxWEZmzijD3W4GdsV9il6rBazSsETXAqj8pYuqxuamcdFr38XFRaf1XNz0TfFVusFFYuG6OLVlmGSd4D4ItcBcXRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746712260; c=relaxed/simple;
	bh=lJyOeEHegvLhoKBd+hxBA2/76N09zRsPJWC0/e4pNcQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o2NKbJICnAYqi5s4c2rZnFJNn27pdrnclIaRflwy7Z7SPOR2Cu7moYrh/wqkp42LZyPfuTCOpOgyzzfkGHTpqBsDPQtVgNHHPJfAYcERqmo1Ue4tBHWWIN8lWF/aYIy4PDCKKi0097gyVEODTjuAUlxVf0aCkrDsVg1gcVnPG1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ojI6nTSz; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3fea67e64caso912984b6e.2
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 06:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746712257; x=1747317057; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ouj0qfvFepL9kOLcYrh4tsGA66IJWwOPF0qOB3iRvnM=;
        b=ojI6nTSzB0FAs45s8pBE4cuCm4RNFUzDbu6brVJPpeCqTiK1rHpJMug416boPAsCBp
         T8cj653RqLyjvVhcF0HQp+UkFGlaQdPCdV6XwR7aIl1LH1M0y7Kj1x9GDbzu3NBEoikJ
         5zC5y32kaQH32kEk0RvxfRGYhL6ncUqoPbvs7YH9jmjHl4FNeTY+ithJvc3GQjJhcmMN
         hlLrtIsq2lh9/8y7T3nlQcqPGkMavbhSM1f0oy0Fx77dcgEohn8GbEQe5ks6e4A+T0/w
         xmi28YkRmKPVMAT9ERHaoGqjsbAef7U0UfYbXJ3V0HCYmiKa0fmcB92PmahuOHlSl/TJ
         LCsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746712257; x=1747317057;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ouj0qfvFepL9kOLcYrh4tsGA66IJWwOPF0qOB3iRvnM=;
        b=BmD7++529s+4f+qyb7LI5SkNoah9+2ACijkjfzucS3PQ/sgEJMtD+o8D7VMWmf076Q
         qhrx7OgG6ZTQK+Oo7b8wJPNf+U3Vx6ZzUtRn8mDd4q8a/V6BJc7iPPeLNXOXEyLtEc+M
         WNbh2IPCgNAhuCD231GlZeNZbGFtLW5hLYQCZvgwkWW9rlluJaIlI+L+9Ni09mbylwVd
         U5v0ZG7z0fKrvLPiJlGiMBG+IaIq2Le558FbEEF6d3MzmJuBdy7/Iv6JQpgutGw7K6qs
         LHRX52uqndxV5Kazwq0UvdSzKdXCTKx3ajp54essSz7D0aJmEObPZH5sJabPeMV8WjT9
         QOcw==
X-Forwarded-Encrypted: i=1; AJvYcCVh0iZMNKvhY1iAxyxvYlWV+QNM9m/KB+BiGC77ls3SNz4/dLwovE2gj7JZltSsURm5/MJONVSTn2XJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwFYl87xbPKTA7GEQOq4sern5QtcFT9FSIJndlUEyZjJOOhAbKr
	HGdhd2bndb9iqVWQo7OWTQrjxgJK7334UF5vglOPgXwqxhRUMy3snyRFPolobZk=
X-Gm-Gg: ASbGnctXKgHuaz38zhgz5O6gzM+AKgzb+YyH/xDu+gsSttx7qs/S7ncQaQy8ejOFrY0
	oZazMrolc7k8z6zsOpf8hBKYNwlgFlNMGCRJKrbQJbTFjGAAait665wFI+q5T6X6TjOfspY9cqm
	vyPRJWn7RSOowreGc8bFCB2U4DqRrvTQp/pTWVt2c2xeOEgSF5Tyy6EJZyBcSKbGdeV154zBK1E
	Nt0OdYQBJ3MAFXZjlKstk6TQacx8PZ8M/JPTWXG7RB5Ig/ddUuz6rwMeBxkEqFB5OKSJmx0B0wZ
	m5yEJBzBzY2ITmn2VjHFbMdLiVB7Pt+OpXhsZS1rOQUKW0CwHFolgh3xOUuPwnMbOA5pHrOe4q9
	S93el5VurDeeCZvEd9w==
X-Google-Smtp-Source: AGHT+IHCPN64NvcV87IbwF3LkvQkpqFNuSONFbX3+kLtH8kqD7JwExKv4iDlgXtZ/SWM+8ccZ3oj8w==
X-Received: by 2002:a05:6808:6f96:b0:403:371d:e56b with SMTP id 5614622812f47-40377f88f0dmr2261392b6e.32.1746712257128;
        Thu, 08 May 2025 06:50:57 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:1120:d1cf:c64a:ac7e? ([2600:8803:e7e4:1d00:1120:d1cf:c64a:ac7e])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4036f3406fbsm1247028b6e.22.2025.05.08.06.50.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 06:50:56 -0700 (PDT)
Message-ID: <7f5f75c1-7750-4966-9362-2a46c5e5ba3e@baylibre.com>
Date: Thu, 8 May 2025 08:50:56 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] iio: adc: ad7606: add gain calibration support
To: Angelo Dureghello <adureghello@baylibre.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250506-wip-bl-ad7606-calibration-v3-0-6eb7b6e72307@baylibre.com>
 <20250506-wip-bl-ad7606-calibration-v3-5-6eb7b6e72307@baylibre.com>
 <c999800bb5f6c1f2687ff9b257079dcf719dd084.camel@gmail.com>
 <qaiqdak4pieewavl2ff4mpr2ywhw2bvnoob55buiinkisacar5@q6jhlb5klcf6>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <qaiqdak4pieewavl2ff4mpr2ywhw2bvnoob55buiinkisacar5@q6jhlb5klcf6>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 5/8/25 4:16 AM, Angelo Dureghello wrote:
> Hi all,
> On 07.05.2025 07:14, Nuno Sá wrote:
>> On Tue, 2025-05-06 at 23:03 +0200, Angelo Dureghello wrote:
>>> From: Angelo Dureghello <adureghello@baylibre.com>
>>>

...

>>> +static int ad7606_chan_calib_gain_setup(struct iio_dev *indio_dev,
>>> +					struct iio_chan_spec *chan)
>>> +{
>>> +	struct ad7606_state *st = iio_priv(indio_dev);
>>> +	unsigned int num_channels = st->chip_info->num_adc_channels;
>>> +	struct device *dev = st->dev;
>>> +	int ret;
>>> +
>>> +	device_for_each_child_node_scoped(dev, child) {
>>> +		u32 reg, r_gain;
>>> +
> 
> working on further features, i noticed this function is called
> for each channel, that is not correct, so need to fix this,
> will send a v4.

Why is this not correct? Each input could have an amplifier with different
series resistor value so this seems correct to me.

> 
> Regards,
> angelo
> 
>>> +		ret = fwnode_property_read_u32(child, "reg", &reg);
>>> +		if (ret)
>>> +			return ret;
>>> +
>>> +		/* channel number (here) is from 1 to num_channels */
>>> +		if (reg < 1 || reg > num_channels) {
>>> +			dev_warn(dev, "wrong ch number (ignoring): %d\n", reg);
>>> +			continue;
>>> +		}
>>> +
>>
>> Sorry Angelo, just realized this now. Any reason for not treating the above as a real
>> invalid argument? It's minor and not a big deal but odd enough...
>>
>> - Nuno Sá
>>
>>> +		ret = fwnode_property_read_u32(child, "adi,rfilter-ohms",
>>> +					       &r_gain);
>>> +		if (ret == -EINVAL)
>>> +			/* Keep the default register value. */
>>> +			continue;
>>> +		if (ret)
>>> +			return ret;
>>> +
>>> +		if (r_gain > AD7606_CALIB_GAIN_MAX)
>>> +			return dev_err_probe(st->dev, -EINVAL,
>>> +					     "wrong gain calibration value.");
>>> +
>>> +		/* Chan reg is 1-based index. */
>>> +		ret = st->bops->reg_write(st, AD7606_CALIB_GAIN(reg - 1),
>>> +			DIV_ROUND_CLOSEST(r_gain, AD7606_CALIB_GAIN_STEP));
>>> +		if (ret)
>>> +			return ret;
>>> +	}
>>> +
>>> +	return 0;
>>> +}
>>> +

