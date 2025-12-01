Return-Path: <devicetree+bounces-243536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 86708C99440
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 22:53:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3973B3A29B7
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 21:53:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A528B285C98;
	Mon,  1 Dec 2025 21:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XRK5sdeB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7200227C842
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 21:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764626004; cv=none; b=smUO4i8+MO7/9j1DD7ztfi6SnyQofI79KAseeK6j8tUl1sW7W2h2kjfFn4GEzU/VZlXj8WInt3zNNuUSg37omLtTkgsBfYpN3lmewu+xtksGTrReUK33AMzvVmR4Swgvm9auO243N6BPGskitU+9PFJdGPFDPGpvJgr7z5dKWDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764626004; c=relaxed/simple;
	bh=5q9Iv//mIpypUaynw8++s+lccd4+l1jE8IYnVDYU7vE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=huLdS4sapOKG8MLTi6rcF9JbDPKIg1ZCiywRCK+P5IGH/SC0VeSPJPQlRGPex3XdZqtOtdwVm98h9eRz6sJCAskDHD3zI9hrd5MqbEKWmNzMfeqVIrkP2iAX+pV6k/8qrHXCiA1L4647Z3c+opm3wrQ1zbaniNMbxfwzqA+ny0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XRK5sdeB; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-3e898ba2a03so3168557fac.0
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 13:53:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1764626001; x=1765230801; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rFhnDBg0kXeD51glLwE29J4X5kSMJanTCsRTgbxRyOo=;
        b=XRK5sdeBGipUVk9GL2VDNJRXpH6y+lixsSeXsVf0z3fkYYbW3mjLwcVmiSa3cu8W1g
         kMpD5YcCSicygQ4JALuLnonzEW9irJMmfgMZM/YwGBWAsS8+WCQXbUpLFLFj5TXZmtgq
         wYQbE6b5XwZXVg4uWBMXT7ypzV/tqki9bgjVJzSXYV3+AKt47AfynXPK0OMiX5SnDN/g
         vr4IA3MBLaH9bJKqttnTjRwm+jZTWt1MkMnfFV8TvJf55pwObWR+lavOzGJyZvmGHDOm
         iAGn7XUJ6CFVsHRo+qi+5BXMTOSfeQh/M5K5a2gbTpzI4G2bpVllYX38/YwTfC7oy8Zb
         6DfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764626001; x=1765230801;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rFhnDBg0kXeD51glLwE29J4X5kSMJanTCsRTgbxRyOo=;
        b=P514aNjIY28+uictyB5802aqvyV+pgSNFKYw0vRvA1AFmPVC5KwVL2LwAiXQ1eOe61
         VDKS5+1GRYIDDdA90puLic08e5G6n6wwm+OVygSaE3V+j/9FwcuP8pWcJuvCTZjQgV7I
         i6kBJdwCQiqIdG//a+wSv3DF7ID62TwR4WjpERJ1UDA4zIQ8J60cIuizwDel93jcHP9D
         PUSybGg4s+It1W7MNvPx+x410N19qhcgyr8W/TVLlwpLSeCnv+g8nRAGa03iWXTjwqIy
         jd1hk34pJivlwDjvkxp9dCZ6NtLIjVsJ2ZKsS6JLFs2LTelqW0F/mH5JtMs14YJHCJbR
         ZLdQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6uW3MhIbAFDcQhVSaZ6mkamyzZGeiUKtbJeDVVx3N8QyVFBLXG6XKU5LMi6pyKcAyPkcMQPQgW/vK@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7Z/GClUU2e3VTZcJYjAuVBH0ZAO7V8DQKU1GLLP2rIx6kU/6K
	U97O+JQq67JDbewntxxnG9EdrXht2xcnPlWRxQk40gGV10UPmrqzpKxH9SanL8beohg=
X-Gm-Gg: ASbGnctsUwdnI+bmSlUgJd5f7Q1Lm+9ZGlNBZayr06Tf0dLWzC12gNu846CB3OYML1i
	11akTZFjOMNrCDjwvj50aDr2K/rNHKp4+UkiMzp92/gX0+ns/nKl0F1n59qp9+W74cZG/eTHB3o
	8yBrbw6F8jYPVDdxSRRC0qZbvYFQGJ72hkDiGEqGu6YRfCjaPbutDuA6d7EHfCrxZ78nLuOQMLF
	IU3hFD7+XRIYKhrHrxT93W6dfq0MHSZdS5fGzQ4h11rbK+rT78rIIqR6CsA/UGxhYKBNzpUXjZU
	RJt4GS5ZcqM30A5iIaVK6+1hp00pZ06t4fiUEeKi2zvDOy7uwigGgl2mJfbfe8q1NUbSzvtoQ5O
	M9QQ+uXUjuvJWKqmWSyc7eQgyROaM+TSHAw2AxKkyCKYanVgiABPXEiGTDeJYkefnzxAQXSkF4O
	2ekI+RAHAhy2lX+whkuD/An4D0zNSUAMaBvPZKUbhm8utUYk7StJ2xPAtBNg==
X-Google-Smtp-Source: AGHT+IEUi4HQD4MeWgmtjcJxdxnSWi94Lov5ZIkoWcpAPeNP+EfY38zUZPLeRZvSH7fA6B55qw8ZqA==
X-Received: by 2002:a05:6870:e0c6:b0:3d4:b76:5080 with SMTP id 586e51a60fabf-3ed1fd9424emr12729233fac.28.1764626001435;
        Mon, 01 Dec 2025 13:53:21 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:b67b:16c:f7ae:4908? ([2600:8803:e7e4:500:b67b:16c:f7ae:4908])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3f0dd05bc9asm6083995fac.22.2025.12.01.13.53.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 13:53:20 -0800 (PST)
Message-ID: <248b009e-0401-4531-b9f0-56771e16bdef@baylibre.com>
Date: Mon, 1 Dec 2025 15:53:19 -0600
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
 <18fbf486-c1cc-4cd2-af12-ffa093fa9ce7@baylibre.com>
 <DEN50VFOIB5O.1ENBKI6JQ0ZC@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <DEN50VFOIB5O.1ENBKI6JQ0ZC@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/1/25 1:47 PM, Kurt Borja wrote:
> On Mon Dec 1, 2025 at 11:07 AM -05, David Lechner wrote:
> 
> ...
> 
>>>>> +	if (iio_device_claim_buffer_mode(indio_dev))
>>>>> +		goto out_notify_done;
>>>>> +
>>>>> +	if (iio_trigger_using_own(indio_dev)) {
>>>>> +		disable_irq(ads1018->drdy_irq);
>>>>> +		ret = ads1018_read_unlocked(ads1018, &scan.conv, true);
>>>>> +		enable_irq(ads1018->drdy_irq);
>>>>> +	} else {
>>>>> +		ret = spi_read(ads1018->spi, ads1018->rx_buf, sizeof(ads1018->rx_buf));
>>>>> +		scan.conv = ads1018->rx_buf[0];
>>>>> +	}
>>>>> +
>>>>> +	iio_device_release_buffer_mode(indio_dev);
>>>>> +
>>>>> +	if (ret)
>>>>> +		goto out_notify_done;
>>>>> +
>>>>> +	iio_push_to_buffers_with_ts(indio_dev, &scan, sizeof(scan), pf->timestamp);
>>>>> +
>>>>> +out_notify_done:
>>>>> +	iio_trigger_notify_done(ads1018->indio_trig);
>>>>
>>>> Jonathan et al., maybe we need an ACQUIRE() class for this? It will solve
>>>> the conditional scoped guard case, no?
>>
>> No, ACQUIRE() is not scoped, just conditional. I don't think it
>> will improve anything here.
> 
> Maybe I'm not understanding the problem fully?
> 
> I interpreted "ACQUIRE() class" as a general GUARD class, i.e.
> 	
> 	guard(iio_trigger_notify)(indio_dev->trig);
> 
> This way drivers may use other cleanup.h helpers cleaner, because of the
> goto problem?
> 
> I do think it's a good idea, like a `defer` keyword. But it is a bit
> unorthodox using guard for non locks.
> 
> 

To take a simple example first:

static int
ads1018_read_raw(struct iio_dev *indio_dev, struct iio_chan_spec const *chan,
		 int *val, int *val2, long mask)
{
	int ret;

	if (!iio_device_claim_direct(indio_dev))
		return -EBUSY;

	ret = ads1018_read_raw_unlocked(indio_dev, chan, val, val2, mask);

	iio_device_release_direct(indio_dev);

	return ret;
}

using ACQUIRE would look like:

static int
ads1018_read_raw(struct iio_dev *indio_dev, struct iio_chan_spec const *chan,
		 int *val, int *val2, long mask)
{
	int ret;

	ACQUIRE(iio_device_claim_direct_mode, claim)(indio_dev);
	if ((ret = ACQUIRE_ERR(iio_device_claim_direct_mode, &claim)))
		return ret;

	return ads1018_read_raw_unlocked(indio_dev, chan, val, val2, mask);
}

It makes it quite more verbose IMHO with little benefit (the direct
return is nice, but comes at at an expense of the rest being less
readable).



And when we need it to be scoped, it adds indent and we have to do
some unusual things still to avoid using goto.

static irqreturn_t ads1018_trigger_handler(int irq, void *p)
{
	struct iio_poll_func *pf = p;
	struct iio_dev *indio_dev = pf->indio_dev;
	struct ads1018 *ads1018 = iio_priv(indio_dev);
	struct {
		__be16 conv;
		aligned_s64 ts;
	} scan = {};
	int ret;

	do {
		ACQUIRE(iio_device_claim_direct_mode, claim)(indio_dev);
		if ((ret = ACQUIRE_ERR(iio_device_claim_direct_mode, &claim)))
			break;

		if (iio_trigger_using_own(indio_dev)) {
			disable_irq(ads1018->drdy_irq);
			ret = ads1018_read_unlocked(ads1018, &scan.conv, true);
			enable_irq(ads1018->drdy_irq);
		} else {
			ret = spi_read(ads1018->spi, ads1018->rx_buf, sizeof(ads1018->rx_buf));
			scan.conv = ads1018->rx_buf[0];
		}
	} while (0);

	if (!ret)
		iio_push_to_buffers_with_ts(indio_dev, &scan, sizeof(scan), pf->timestamp);

	iio_trigger_notify_done(ads1018->indio_trig);

	return IRQ_HANDLED;
}

So unless Jonathan says this is what he wants, I would avoid it.


