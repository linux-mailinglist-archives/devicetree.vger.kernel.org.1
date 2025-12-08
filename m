Return-Path: <devicetree+bounces-245244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E780ECADAC8
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 17:01:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DFE9430542CE
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 16:00:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A90EA198E91;
	Mon,  8 Dec 2025 16:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="WgmFqYBX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0C013AD26
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 16:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765209656; cv=none; b=U2P/PyP0An3sBvKqc1sDHYbRjQ0sL+qYvjbX0aHTHL3SaFx8YGmKRJosuYwXgfOngETqJws/peG2rY9hZDNTG4ZFGUbwRu4PDv7j0PjnhvIcv6ug5JSffE6XgU7p4f5TH4hhYUenzSU6S5gBAB1jybCM8NDiL6crtOqKw2AB4iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765209656; c=relaxed/simple;
	bh=LdoCgD3MTRH3yYjbXefNZb45ZEWT0zHJXg42mYMYdeY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hOum0+5egFTdtU2ueE0ZJKp7fA8vUy5ajs3TYKP+8hxNCDeXw+78TZawJEnOtqVNCsgWmOV+qDxdlTY4/nrXnybxAyHYPnynY0i3ePGme5L9RFbKtzCny37RSSIBrjgkH/FkWGuG+ToXZH6f08QtvUTeL1bGhYp2QaPj95V5LVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=WgmFqYBX; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-4537407477aso2866903b6e.1
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 08:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1765209652; x=1765814452; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vb8kv7WulIa1PhAKmcfXnjUtbS5rXcHJMm4whpAi0o8=;
        b=WgmFqYBX2Qn05NpKWwcMp1+Q77qf/NHqwNFoCqnyV30u0KtUVNlglBUrYr/qVGo/oH
         /XuNJTtgrJnJmUubt0Ng/0/lh4uj5WW53RkpWQy5ofud+dX9nOHkuYkfNyLii5Ow/hbE
         tCUrva/0srIDyjctSjT8izs4e2S5OD8y38qIHri6pW9aOBByM17r/8Ih8uuyiBfNHni4
         us7KJvyTaNqVNkSjCvxZNTP5ydnxPFv9b/ELgHrvgNzZeu7tI5QfI8aj1I3QLEWAFu1l
         4MpwBsCyvz/tBU35PU7utfktITPAtFsJXmEk5QdG0G+IzkUAAUUcCRIPvw4P8WUsm1RI
         FveA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765209652; x=1765814452;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vb8kv7WulIa1PhAKmcfXnjUtbS5rXcHJMm4whpAi0o8=;
        b=Zra7K/QowrrL8uLujKsrn2vHsgmeZgydvpJu+rdxNziHDIsolYbC3aY6hrQzXbMOgP
         Mo7XBuT7PNBwDAJT17fFIDYsKnAUIIyxEztu9G2ydocJovfKgDRVQQBt545kfFr/Bi9o
         hmVoAEqdlYXFSy+aeIbB+PwSWe0Xs5DjgzOjrOql+srX1nVWsDLHEXrmE8PQCVUgAEI0
         r1ktZ2p41bW5eBVsYeWL1jDTXbPE7SiaixThbJh4A2sZ0T7XCkVzjLCnfx0SeSj3X9R7
         IfXHU/zuvccQH3O9E47cjZvy7PKeWwtwO6qj0UnwLmDpzA6zfLeoDGKh+jN7fd/JrsIE
         R2Jg==
X-Forwarded-Encrypted: i=1; AJvYcCUty7CWtTn4DvcbA8xX/GXUDeTPNIy9Er/Cq7G1z2K8bSf742adsLRkjB92eayTHXRADyXrE1aZ9Grk@vger.kernel.org
X-Gm-Message-State: AOJu0YyuVtfax/xSuUasRt9md/dZ5ngyBDf5In5exvAFwXYXI7ae8CkD
	zQYNW8UCqXjnNwhigdcseMe6w3A1ltqM1hwEKDSMsrXup7eTua3C1KDUgh3bTvZMbsQ=
X-Gm-Gg: ASbGncso15+PeMA2+WSujU2l05wd7KK+yy6nxkzp+6TjPC78GkrkEXkI9l0dcmS0x3F
	lnpVenlQNT6aeQ/jV+P2P+vmSUv9Z3svpRMV4FASeYVhKubai2bxpk/zLuhauNk04HKMdknr9ni
	RlQEqtFN+9y6q9tibpwKu6j4S3acZFBcifOiwg/mUbbZLT90aEUkZVJkIyTnzfWQ8DT+HgqEW1G
	fpklUKL2BGNpRJgjQSPEEsV1oDqbuAngIrD1hGJfFQSS7zX/YV2od+AtFfD6miVfl4dKCER/8mj
	iaZwLaXJ8wGPMsSCBnjHje7JFYbIW+Y0OCfXUC1bqiC97Bs8kHj7A8HlU/ia1De/O9tV7fgs2Hr
	CMGLyuoxnqSCtvH06ydhnUslG6RRXtHC1Cf1O0HKRNeKyDevLl6wkhdgeDnyD3B3xAw4Nhj+Oug
	V7LFn9iLRQV+TWFJ4SlaEmKhHMaHxlI2B3z00u7WasV4ZHaECqlACd3GEm6zlW
X-Google-Smtp-Source: AGHT+IH0rhWC5LNha05u9CQfJlj3gJ3mNbv6AOKUlCLbnG5NK7HBNoChThXlb7ygTqe2fo08SfDJ7A==
X-Received: by 2002:a05:6808:c1aa:b0:450:e36:999f with SMTP id 5614622812f47-4539dfdd422mr3538036b6e.21.1765209652233;
        Mon, 08 Dec 2025 08:00:52 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:532a:767c:1f4d:c31a? ([2600:8803:e7e4:500:532a:767c:1f4d:c31a])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c95acadb16sm10111028a34.21.2025.12.08.08.00.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Dec 2025 08:00:51 -0800 (PST)
Message-ID: <04aee30f-908b-4390-934a-e49990217d15@baylibre.com>
Date: Mon, 8 Dec 2025 10:00:50 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] iio: adc: Add ti-ads1018 driver
To: Kurt Borja <kuurtb@gmail.com>, Jonathan Cameron <jic23@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Tobias Sperling <tobias.sperling@softing.com>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20251204-ads1x18-v6-0-2ae4a2f8e90c@gmail.com>
 <20251204-ads1x18-v6-2-2ae4a2f8e90c@gmail.com>
 <20251206200721.5e683a83@jic23-huawei> <DES3ZWAKXXEB.2LQPMDZN4JFCB@gmail.com>
 <5b843df0-138e-4e2e-a70d-beb8a39ed85f@baylibre.com>
 <20251207195613.0e222b3a@jic23-huawei> <DESJEELPCGK3.3H15VL3YAC0RT@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <DESJEELPCGK3.3H15VL3YAC0RT@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/7/25 10:06 PM, Kurt Borja wrote:
> On Sun Dec 7, 2025 at 2:56 PM -05, Jonathan Cameron wrote:
>> On Sun, 7 Dec 2025 11:12:51 -0600
>> David Lechner <dlechner@baylibre.com> wrote:
>>
>>> On 12/7/25 10:02 AM, Kurt Borja wrote:
>>>> On Sat Dec 6, 2025 at 3:07 PM -05, Jonathan Cameron wrote:  
>>>>> On Thu, 04 Dec 2025 13:01:28 -0500
>>>>> Kurt Borja <kuurtb@gmail.com> wrote:
>>>>>  
>>>>>> Add ti-ads1018 driver for Texas Instruments ADS1018 and ADS1118 SPI
>>>>>> analog-to-digital converters.
>>>>>>
>>>>>> These chips' MOSI pin is shared with a data-ready interrupt. Defining
>>>>>> this interrupt in devicetree is optional, therefore we only create an
>>>>>> IIO trigger if one is found.
>>>>>>
>>>>>> Handling this interrupt requires some considerations. When enabling the
>>>>>> trigger the CS line is tied low (active), thus we need to hold
>>>>>> spi_bus_lock() too, to avoid state corruption. This is done inside the
>>>>>> set_trigger_state() callback, to let users use other triggers without
>>>>>> wasting a bus lock.
>>>>>>
>>>>>> Signed-off-by: Kurt Borja <kuurtb@gmail.com>  
>>>>
>>>> ...
>>>>   
>>>>>> +#define ADS1018_VOLT_CHAN(_index, _chan, _realbits) {				\
>>>>>> +	.type = IIO_VOLTAGE,							\
>>>>>> +	.channel = _chan,							\
>>>>>> +	.scan_index = _index,							\
>>>>>> +	.scan_type = {								\
>>>>>> +		.sign = 's',							\
>>>>>> +		.realbits = _realbits,						\
>>>>>> +		.storagebits = 16,						\
>>>>>> +		.shift = 16 - _realbits,					\
>>>>>> +		.endianness = IIO_BE,						\
>>>>>> +	},									\
>>>>>> +	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |				\
>>>>>> +			      BIT(IIO_CHAN_INFO_SCALE) |			\
>>>>>> +			      BIT(IIO_CHAN_INFO_SAMP_FREQ),			\  
>>>>>
>>>>> What motivates per channel sampling frequency?
>>>>>
>>>>> Given you have to write it each time you configure I guess it doesn't matter much
>>>>> either way.  
>>>>
>>>> I guess making it shared by all is simpler too, so I'll go with that.
>>>>   
>>> Just keep in mind that if there is ever some use case we don't know
>>> about that would require a different rate per channel, we can't change
>>> it without breaking usespace. Once the decision is made, we are
>>> locked in. Keeping it per-channel seems more future-proof to me.
>>
>> Only way I can think of that might cause that to matter would be
>> if the complex dance to avoid the onehot buffer restriction is added.
>> Given you gave this response I went looking and that might make
>> sense as an enhancement as the SPI protocol would allow a crafted message
>> sequence to do this efficiently.  Extension of figure 15 where first message
>> sets config and after that they read out channel and set config for next one.
> 
> This is possible, yes. But would the timestamp even make sense in this
> case? Even in the fastest sampling rate, we would have to wait at least
> 1 ms for each channel and the timestamp would become stale.
> 
> That was my reasoning for using the onehot restriction.
> 
> Is that acceptable? Or maybe we would need to disallow the timestamp
> channel if more than one channel is selected?

Yes. We have pretty much the same situation with timestamps on every
other ADC. The timestamp is usually when one full set of samples is
triggered. Not when the actual individual conversions are performed.

> 
>>
>> Given that is sane, I agree with you that we should probably keep these separate.
>> I doubt anyone will use different sampling frequencies even if possible but you
>> never know.
> 
> I'll leave it as is then.
> 
>>
>> Jonathan
>>
>>>
> 
> 


