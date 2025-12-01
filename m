Return-Path: <devicetree+bounces-243491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B93C982EE
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 17:09:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A850734131C
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 16:08:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 132B933468A;
	Mon,  1 Dec 2025 16:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ejKZL7nD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0482933373A
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 16:07:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764605263; cv=none; b=em0wr1duygFLgRZc2J2twphmqXZ/UEAMTvsSmBhcvz7p396T0RLAwiwlre7mcGznxkBs2QouHYhmiLHfM4omaB0/K5wOd4iwn6snwf4le4Vv7GCqQORds4VR73ILV5pN4aZkRyviAbwiiZgzEuFTsQbquzGIQ5qZKuSM+9rasMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764605263; c=relaxed/simple;
	bh=4KqoW2kY6Y0iDicS4AkddU/tL9W9u5yhRKwbjPy3c8g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d2pemy2qxYHeiZauTwQS4OMA3ZYAmpd4Mu3F9VfHx2PQk2LlM5vMnllPLGxoafQ2rroytRhA856LbcVOfeupqWbYy1TVIG8CXhfGjJW/nNnCVbtnLWpW/YZEtEdp2T/xsMSY+PQgnh5szEzkhaQgX+fDnuQe299nqdVsCSzDW9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ejKZL7nD; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7c75fd8067fso2529474a34.2
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 08:07:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1764605260; x=1765210060; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jDr0GYQPVWIPku3v/vQDg4xQ67n9L+U+dEfsUiT0Xbk=;
        b=ejKZL7nDsubd1BrcmsKgOQaVAoebsNbdDRLe9JbXEr7Do9PUTG4Aptg58KErIFJUsm
         eyTqPLNbV259gIXnyPIRXi8KL5Q3bIb4apKcj7A8fW88uCMiKK3f8cwshmA+7RH9THtU
         Mb28vw8+Kxg920iotrc4tul66TzyZ5N/os/JPRczXrn1wb+ghgChrjjVphOMo5bwpK21
         QJp8MJSOXk3aSA6Sk5ljxDCZcdDG5/4HII1zHkeDJntckooNWu9qml7f5BxjL/5Pdm8X
         iMfjyAg4hPL1bp8ELTwiQDaAxaz883swWuWRmGW0e+bN0PzYSLeNYQPa1N617ONpskJT
         49xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764605260; x=1765210060;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jDr0GYQPVWIPku3v/vQDg4xQ67n9L+U+dEfsUiT0Xbk=;
        b=ULQwzaUKOEJGsncHGcecpmOqoE1cqXG+skrjhoQi1h6No152E1opud5vkLEMfZXQEY
         X9DzYbLQf/N5mAWlu4toQHDDunNqbzvOkuJHa3hj2KC1ZukZBTiV/dXvrqEdDskuo0HQ
         UvCC4Y444KuaKLwHZvuHHD3rUcFToLTtLh1l1HNlS/jiOLzKYR86CUmm7T1tuN+WL15T
         eoDupiR2gZSbHVO79WRVHBKz5RvKYkc/b9OUbu9sQgTTcWFu9iSMq6NB9GssGCjFQwU8
         tnpcnNKBMkzuf6g7YezpQUtyZfoIo+QsAPm+CJrtPQe4vPKfx3FCDHYhuAImaQfpRa+6
         ZA2A==
X-Forwarded-Encrypted: i=1; AJvYcCWawYwh3qf9YokEz2qtc+g1yJhGWeaLresiwMGEz7Lqwy8vemx68FaXDW/PAmRcEwFL26FkN9In2lIA@vger.kernel.org
X-Gm-Message-State: AOJu0YxqSVR6nEmSEws+zheDCouNzq/Dc6taiUYKwafhHSxxtGbhGLMQ
	hDn61XOWCHM95DQ94NkgaQqwL+isjWda2hAgElqhaEpg4UWPbMdslTomu/V5yUsNVBQ=
X-Gm-Gg: ASbGncsN5bTd5xaFYqQFOEaJc8TKMIYYXPFUffahAa0IR4D6LAVHyT7NYSxuxsVJvGI
	HeKhvKG3QksGfhVcI8dfLRp91ye1lAqKdDlgS2UfXKqnloQx52wpD986decGt+8VIRviT0Y+pGZ
	KWW+iM+tR8enc6foGFeSE6CTCrdN93LGI3L55zqZJ2n3dac6EMs7+KYxJfEGDt2RujEUdnyN/X1
	WleuWhbeEe6eIV5oBx6sIwlTBI0epqa1JYqsokkXE2wGzPnWxkwk/B5aXYV7XbdAP/Tn7sZ2mCp
	xR5nLtD7CSKCqdPBF0hHglkKnuQMYAHAjz2ylHVtGfCxVkG5lf9DPTHA7BAx4w4WXcTn1JKqLB2
	aVKBKCNZBP/yYhatPu2oJWvRnaML1owVOP/iKEPJDUui9pX2C3o3ug3j0DDrkCYxIvG9CsQYA+z
	LMAs0fMOFubT5ctvZ+aHAzTJd26syEnomMrNr+F0aCDPvUOOUSU5yMPR3jHA==
X-Google-Smtp-Source: AGHT+IHpbx0FCT24QrZNWptZAIGWfpVX2b3pIYnPENscCSvHxtedYLd1GigO8m2QJ6Zn/I5u+9WClQ==
X-Received: by 2002:a05:6830:915:b0:7c7:4bd:d527 with SMTP id 46e09a7af769-7c7c4466fa9mr10570580a34.21.1764605259959;
        Mon, 01 Dec 2025 08:07:39 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:b67b:16c:f7ae:4908? ([2600:8803:e7e4:500:b67b:16c:f7ae:4908])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c90f5ffad8sm4717328a34.12.2025.12.01.08.07.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 08:07:39 -0800 (PST)
Message-ID: <18fbf486-c1cc-4cd2-af12-ffa093fa9ce7@baylibre.com>
Date: Mon, 1 Dec 2025 10:07:38 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] iio: adc: Add ti-ads1018 driver
To: Kurt Borja <kuurtb@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Tobias Sperling <tobias.sperling@softing.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20251128-ads1x18-v3-0-a6ebab815b2d@gmail.com>
 <20251128-ads1x18-v3-2-a6ebab815b2d@gmail.com>
 <aSsBdJZDWcadxEHC@smile.fi.intel.com> <DELPNLNPGQSM.1YDTB81AG0RAY@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <DELPNLNPGQSM.1YDTB81AG0RAY@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/29/25 9:31 PM, Kurt Borja wrote:
> On Sat Nov 29, 2025 at 9:21 AM -05, Andy Shevchenko wrote:
> 

...

> 
>>> +static int ads1018_read_unlocked(struct ads1018 *ads1018, __be16 *cnv, bool hold_cs)
>>
>> Hmm... Don't we want to return value in CPU order? I don't know the answer
>> here, and IIRC IIO triggers might be actually good with endianess conversion
>> done, if required, in user space.
> 
> I specified IIO_BE endianness in each channel's .scan_type, so this
> works. However, I don't have issue especifying IIO_CPU and just
> returning CPU order values.
> 

Usually, we want to change the data as little as possible, so leaving
it as IIO_BE is fine.

> ...
> 
>>> + * Context: Expects iio_device_claim_direct() is held.
>>
>> Jonathan et al., do we have lockdep assert available for this?
>> I really prefer to see the code for it, while comment is good,
>> it is not good enough.
> 
> This would be nice.
> 
> ...
> 
>>> +	if (iio_device_claim_buffer_mode(indio_dev))
>>> +		goto out_notify_done;
>>> +
>>> +	if (iio_trigger_using_own(indio_dev)) {
>>> +		disable_irq(ads1018->drdy_irq);
>>> +		ret = ads1018_read_unlocked(ads1018, &scan.conv, true);
>>> +		enable_irq(ads1018->drdy_irq);
>>> +	} else {
>>> +		ret = spi_read(ads1018->spi, ads1018->rx_buf, sizeof(ads1018->rx_buf));
>>> +		scan.conv = ads1018->rx_buf[0];
>>> +	}
>>> +
>>> +	iio_device_release_buffer_mode(indio_dev);
>>> +
>>> +	if (ret)
>>> +		goto out_notify_done;
>>> +
>>> +	iio_push_to_buffers_with_ts(indio_dev, &scan, sizeof(scan), pf->timestamp);
>>> +
>>> +out_notify_done:
>>> +	iio_trigger_notify_done(ads1018->indio_trig);
>>
>> Jonathan et al., maybe we need an ACQUIRE() class for this? It will solve
>> the conditional scoped guard case, no?

No, ACQUIRE() is not scoped, just conditional. I don't think it
will improve anything here.

> 
> ...
> 
> If no one prefers to do it, I can submit a patch implementing this. Same
> for the lockdep issue above.
> 

