Return-Path: <devicetree+bounces-241383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 90416C7D395
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 16:56:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4028F3A9E4D
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 15:56:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C6401339B1;
	Sat, 22 Nov 2025 15:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="c8K2uEHz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283D7156678
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 15:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763827005; cv=none; b=BvvkLYOVY/4ynfheH0l6NKEgF7ZgSKaFkhN7WLyWHXav/h40Oj85UFzY6c2AOaXHp9hXK/jXH57R2GT35pzozKldSnYuhWy1sseHwqK9c4zUgXbWQdXT68CbaCYLPs0G6KLs2H0PFZVe6jb4ifydX09KxJXQVBxP0193QBpPdRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763827005; c=relaxed/simple;
	bh=ie+y1whlCledDNO4BKifk3UZT+pouhtit0vPY/PwHSc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nE9AODPgl6hzihrO/70a/NU5nyZMnruZad8IzTKorsNyoje0WzHf+pgE9a/wT1x0kHQYeIdnr0kC5UauYdkR1n/EwvBtiOMxHJnGYw1CbUAsVPJpTMOFpXmwxS5p+sBmCzpL4aLvn4cTOHJY0pRaHKoHd0MshhBI+27JQjW0HGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=c8K2uEHz; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-450c65f3510so1263711b6e.2
        for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 07:56:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763827002; x=1764431802; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9ZHcY8Rllk0OU8xanbNgWXO0Mtcf4Yt8zfLM7/pOmIw=;
        b=c8K2uEHzJUylYn0k3E1jd+LVLEPeETduhJkomQ83+QdMQcsm7ziqGQQWAK+so1CzSy
         ol/UGGgg71aPvnjI2hXV+cKAxFHJoT+3gXyUUkj5PwCDHQUuc4WaYts/CZvC9p9kLkyn
         lhv18oqQb4yNdhzvN6+qR7sxhFfjR6t/9vaJAtixk2F/cZXLk6Dt/719fwpeuvxDlNMQ
         qDdd/Hi7VYvbtCp3R7LHwozFHZ5vxQO3SvqjCT6KDbEYv+PvBaHFwfHZwk2rjJ75ReEJ
         zpvYFqPkPJiaTMZtKogqT0zMHoURWPYnKK2ZhVb4iY31yYgwWTBkmXk2rN0/2CRSkyX7
         aDaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763827002; x=1764431802;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9ZHcY8Rllk0OU8xanbNgWXO0Mtcf4Yt8zfLM7/pOmIw=;
        b=qt9lqbgI2s2cQmSDogwE3iv7TfSFc4ONtPcIs1pIREg892k/NGT6quCMKTIAIWmPWD
         2dvAFKBpggj7PaJ89tWt1M7RdQYGQTWYN/5vmZc38QD9dxKZHbeK2Acd4bd0l+Xg9BK9
         QdEpY+kq2kFNLwH1LsEYCced+3JSSCuZo3ikh7cajjjrzU4bDA/X5lNEqbqkf77e5MET
         Kq7zWPkAp6eISliGIuIxXqC4W1DwsQUzhF6bD5Sf7afz9/NBmySkLdTG1FMM62vi8IkW
         h71xsbxdmuvY2sCGyToiTYvwuWTbpyAAFCffT25QPgy1CBufqSa3Or/D4oUEHPXiPzF9
         FYJA==
X-Forwarded-Encrypted: i=1; AJvYcCXJqEtMAk271nLvsxcV/QSWroTRTYiwyjAirN1czC/DLuno9KjTRqbaH14UkuItSKohkvlvXojvt5ph@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd2P8h1OUf6IO35djLM77paD0j2rnRH+nfQuClLC9QuNIln6v+
	EdQimr3Dyj0cGKyLnPtwh5a0ydf8npSNE6AovbeCZnWfrXBB22dflbfPo1+3iRAFCUE=
X-Gm-Gg: ASbGnctomBlZwBvnDlxRfjPhXn49cM7RpQlsqHTIIYYGPccNPOSbeEHmhKSs31AIum8
	iLQBA9NCK9eOnTKjoeeQwtrbiKvFdHngaW4OjlRXQF3aBZHCgwEo/KftDwNQLzykBOMsdN0gx3d
	3BoZubFLI5633niXa29lT6gfv3CTNgHR+VDJbdnAmQ48QNGI38Dw0vfoQewj0wI/ROOhp2csIET
	ZIx5RD3x3A1WzmPwSU9gIEwUkhB2v3CKOo550x3i1yL1JXEWAdVszjDXfLGOMhyjUXL4VLZaB2f
	PHcyjW/D1CoU/rSjCM897gfIs6Z2KMsc0h2/s1M+Ng5hOa1hLeyWL9loTrBF2h+EjfygGUrNBmd
	fYvTa3zEk9bsOAYSVz8BjB1oZGOTeyjuMNnqQJ5ASeadIfM4ok2TkxHa6piwYVI4khdJwP6Ej6k
	74pGuIm/Hqy9dbxG+K2cYrJgAmhZQmhNzNDWGcAhVzg4SNBzoPgpuVsYbGlQ9h
X-Google-Smtp-Source: AGHT+IEbBYXdHMf3i8jY5BIL3lnpRc+qC3qPIco0ADXLjxXkH6Y+hu7gbBozoz5OnVkrJbbEY1OSWg==
X-Received: by 2002:a05:6808:1491:b0:450:760b:cc94 with SMTP id 5614622812f47-45112d4aea5mr2560583b6e.49.1763827002096;
        Sat, 22 Nov 2025 07:56:42 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:e782:93d8:7c2f:f9df? ([2600:8803:e7e4:500:e782:93d8:7c2f:f9df])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-450fffbeb51sm2493819b6e.18.2025.11.22.07.56.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Nov 2025 07:56:40 -0800 (PST)
Message-ID: <9fba8701-a9c2-45b4-9bc1-5c49813e72cc@baylibre.com>
Date: Sat, 22 Nov 2025 09:56:38 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] iio: adc: Add ti-ads1x18 driver
To: Kurt Borja <kuurtb@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Tobias Sperling <tobias.sperling@softing.com>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20251121-ads1x18-v1-0-86db080fc9a4@gmail.com>
 <20251121-ads1x18-v1-2-86db080fc9a4@gmail.com>
 <30a7e100-5919-4b5f-86cc-589283acd6cc@baylibre.com>
 <DEESNJT0ZQC0.39LYY6I1KWZ7E@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <DEESNJT0ZQC0.39LYY6I1KWZ7E@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/21/25 6:24 PM, Kurt Borja wrote:
> On Fri Nov 21, 2025 at 5:33 PM -05, David Lechner wrote:
>> On 11/21/25 11:16 AM, Kurt Borja wrote:
>>

...

>> #define ADS1018_CFG_REG			0x0000
> 
> I didn't define these because ads1118 dumps all registers (2) in each
> transfer.

Oh, right, there is basically only one register so we don't have to
address it. :-)


>>
>> It is a bit confusing to have this here rather than in the buffer
>> enable callback since that is also setting the config that triggers
>> the first conversion.
>>
>> Having the spi_bus_lock() and enable_irq() in the buffer enable
>> would make more sense to me too.
> 
> This is the approach ad_sigma_delta takes.
> 

I did some work on that with that module recently. I would not say that
it is an ideal reference. IIRC, it still has some race condition with
enabling/disabling interrupts in some cases. So hopefully we can do better
here.

>>> +
>>> +static int ads1x18_message_init(struct ads1x18 *ads1x18)
>>> +{
>>> +	struct spi_device *spi = ads1x18->spi;
>>> +
>>> +	/*
>>> +	 * We need to keep CS asserted to catch "data-ready" interrupts.
>>> +	 * Otherwise the DOUT/DRDY line enters a Hi-Z state and it can't be
>>> +	 * driven by the ADC.
>>> +	 */
>>> +	ads1x18->xfer.cs_change = 1;
>>
>> I think this is going to be problematic for reading/writing the configuration
>> register and for direct reads of a single sample. My suggestion to make a
> 
> Can you elaborate on why it would be problematic?

This transfer is used for all SPI messages. So it means that CS will still
be high after every transfer, not just the ones during a buffered read where
it is actually needed.

This would be a problem if there were any other devices on the SPI bus.
When the controller communicates with the other device, the ADC will
still be listening and responding because CS is still high.


>>> +
>>> +static int ads1x18_channels_init(struct ads1x18 *ads1x18,
>>> +				 const struct ads1x18_chip_info *info,
>>> +				 struct iio_chan_spec **cs)
>>> +{
>>> +	struct device *dev = &ads1x18->spi->dev;
>>> +	struct iio_chan_spec *channels;
>>> +	int ret, nchans, index = 0;
>>> +
>>> +	nchans = device_get_named_child_node_count(dev, "channel");
>>> +	if (!nchans)
>>> +		return dev_err_probe(dev, -ENODEV,
>>> +				     "No ADC channels described.\n");
>>> +
>>> +	channels = devm_kcalloc(dev, nchans + 2, sizeof(*channels), GFP_KERNEL);
>>> +	if (!channels)
>>> +		return -ENOMEM;
>>> +
>>> +	device_for_each_named_child_node_scoped(dev, child, "channel") {
>>> +		ret = ads1x18_fill_properties(ads1x18, child, &channels[index]);
>>> +		if (ret)
>>> +			return ret;
>>> +
>>> +		channels[index].scan_index = index;
>>> +		ads1x18->bufidx_to_addr[index] = channels[index].address;
>>> +		index++;
>>> +	}
>>
>> There is a small enough number of channels that we shouldn't need any of this.
>> We can just make an array big enough for all channels in struct ads1x18.
> 
> Ack.
> 
> Do you think we should just let every channel be visible in sysfs or
> should we still control visibility with the channel@[0-7] node?

Yes. It is normal to show all channels. The few exceptions, like multiplexed
chips where there can be 100s or 1000s of possible combinations of differential
channels possible. And sometimes for ADCs built into a SoC, we omit the channels
that aren't wired up to something.

It makes it much easier to write userspace software though if every instance
of the ADC has exactly the same attributes, so I try to advocate for that.


>>> +	ads1x18->chip_info = info;
>>> +	mutex_init(&ads1x18->msg_lock);
>>> +	init_completion(&ads1x18->data_ready);
>>> +	spi_set_drvdata(spi, ads1x18);
>>
>> There is no spi_get_drvdata(), so we don't need this.
> 
> I do however use dev_get_drvdata() directly in PM ops.
> 

OK, so dev_set_drvdata() would make it symmetric.


>>
>> I think we could simplify this and avoid needing to use pm runtime (and use
>> even less power!). During probe, put the chip in power down mode. When doing
>> direct reads of a single value, put the chip in single-shot mode. When doing
>> starting a buffered read, put it in continuous mode and when the buffered read
>> is stopped, put it back in shutdown mode.
> 
> These chips only have two modes single-shot (low-power) and continuous.
> Are you suggesting we shut it down using the vdd regulator?
> 
> Either way, can't the system go to sleep while in buffer mode? If that's
> the case we should still need these handlers.
> 

I hope not. I would suspect that most IIO drivers are broken in this
regard. I've never attempted to try to implement suspend/resume in an
IIO driver yet because I didn't have an application that required it
and it would be very difficult to get right without very extensive
testing.


