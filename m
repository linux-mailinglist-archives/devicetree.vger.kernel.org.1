Return-Path: <devicetree+bounces-217998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D74B5A076
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 20:25:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DE1F43AB689
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 18:25:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDE1329B8E0;
	Tue, 16 Sep 2025 18:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="GR7IxHe2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0A4276022
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 18:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758047109; cv=none; b=RRtwSpeiLZpvfdZphLDCZ8tlAsydrQYZ1HF+99g9PyzTlwvZCq//zSwl0PJjj7NORyu9k75dqeXZ6+0MhYP/HO37filrb8MsvsialChKP4aPreLtTjyEdIcd0qHcSH9AqbpdG8Mz8SbHUlx9AHYwW5NMiFMqvQqanXzBzT4P7x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758047109; c=relaxed/simple;
	bh=+e76aTp+v6cqlnZlJkMeajHlEFsyhJb6FbUzYujsbSg=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=IRECVBIWosmedl6oBRSmCQS+d6zfDSLuflqq4meSlg7Jc5X8LRslvz3EI2VZDVmwcgRU9rYFTwyGzdi9KnW4p+J7gNf3dwEjU7HGseiXsyszj0YNC4ToDR/emEMCkAuB7LY+xXXqsy3Dn5tCT4Szps38BO3GKpsjdI6CIB/kC4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=GR7IxHe2; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-75731ec93bcso876561a34.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758047107; x=1758651907; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZI25bRNq4nG5NBqXuj1oTfosjmau8mB8Q825iL0RJfM=;
        b=GR7IxHe2wHPtOqyNxkUHZxXD6+RCHjk2iBppGta9wDh3hGqlwIJsMlFi1zTXhR45q2
         W44I0AdL2XG9mZeBznNhM4cRGtbV4BGfbFz2o4XpL9C0ze4OK/ZFaSQ7u6p8CfU7GZyU
         sPmmYv4l1YXBaqRz2TzI+MD55TeM3ztiJZfibfB3eKWi3ctqjSKCQF6KKsctOR6J19Wm
         qnxyZIKoW0XrJHCUvqZbaHE0vqY2EDYfrjPMAuu0Kc6f34GWaPE8C1LAYV3axii1/TkP
         llsE+kACq7frcBGe75sXrf/HDV4Kz7tNeyY9FpvBJsczVN93ilYIQsEEhQj38T2rlKZu
         gvbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758047107; x=1758651907;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZI25bRNq4nG5NBqXuj1oTfosjmau8mB8Q825iL0RJfM=;
        b=H9ESrZIOjwT7MhAi5IRHk3HMFWNVEDL1qdzMBqY5qAqs+aXIB0jPG65C7rUZ7GiP7d
         DsQF17J/ZEJy+hYpVjKxQVNFOsii6X95Nd+tl7ToXbXxcmCtU2kfuwWIfxz5PqR/69P0
         3oPn4V+lwmJIaPUr0haBroy5USuUTufUQxZfahv2TpUmNtvuIzVkKHUpm7x2gArwKPjT
         tun+2xyXtNqCTwdGCt79u98cM5PzVA57yhc552v9bcPemhAi03uDbd5Ee+Np/BWGkgka
         YmMIega9nRSgY7cxKQiYiesFfK3ZvKayW+dJZjOuwRU0cS2kU8Q9LTJJjNcI8/Xgp2po
         aY8Q==
X-Forwarded-Encrypted: i=1; AJvYcCW1VGtdDMU0fHKgHIMfoStobCax5cr+unBV+QdElnLeW9yIySaYUDmAXVZq3lFYTSdZYA+Qjhug1kHM@vger.kernel.org
X-Gm-Message-State: AOJu0YyCYnPDWFnptTP4BejBBtRMos6wLySEP0rVCmcMtSDR3wCcHVV1
	jsneQn0x/xrHIYzg6gL/gNiFiKQJHndE5vgmU6GQ/FZdYevzP9AU+Kol4XgpGnGeGG0=
X-Gm-Gg: ASbGncumI3litsmUp6CdPSCGzruqkBe010cxTFZQDHTVdi6C10LYXhoG/9ICK09txvC
	F1ObJp7dwXO86Qlgrif6/e3ecvu3vpQMQXBuRxawqJtdnWCexLHav0g52h4UTdE1t2apDxEn3a5
	zBtnAbcGHihplXSv0gfjAtCadb1OwjHAAZod9jbkxjfYqfWy1uaI3zxsSWdSLPp3A4VWu4M7yem
	Z+tyVUs+Ae5BrWBjJ3sizjJbG6SO0mYD5eXbWYtLI3BuAqlcpfpuKIbcPeXw3xXCzr82y11WmHv
	j3XZFIqLAaCyc60ug8X6nxpAp56jRtY3Hg++lU3SYuL/BH4VEKIhR5Rmf/0JT/WWH4Ynt/2i7kb
	YOYsWQvjU9sMUJOkI07K3NOwqzj+N0mYsIAFL8FBQOn1a+YdM/gqOQLgw6bn5LNjmeB5AYi/Z/G
	k=
X-Google-Smtp-Source: AGHT+IF643CpHFx29t/Z+6BhdiG9EaxDfZhXkshJwRQ+K8ELK6hxFozg1PhbWggbBmhEDb8LzI9YZQ==
X-Received: by 2002:a05:6808:17aa:b0:438:26fc:b635 with SMTP id 5614622812f47-43b8d7146c5mr7867054b6e.0.1758047107030;
        Tue, 16 Sep 2025 11:25:07 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:70a1:e065:6248:ef8b? ([2600:8803:e7e4:1d00:70a1:e065:6248:ef8b])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-43b8292d101sm3376016b6e.9.2025.09.16.11.25.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 11:25:06 -0700 (PDT)
Message-ID: <8454842b-6fdf-4b4e-b424-d622301906a6@baylibre.com>
Date: Tue, 16 Sep 2025 13:25:04 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 2/3] iio: adc: max14001: New driver
From: David Lechner <dlechner@baylibre.com>
To: Marilene Andrade Garcia <marilene.agarcia@gmail.com>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: Kim Seer Paller <kimseer.paller@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Marcelo Schmitt <marcelo.schmitt1@gmail.com>,
 Marcelo Schmitt <Marcelo.Schmitt@analog.com>,
 Ceclan Dumitru <dumitru.ceclan@analog.com>,
 Jonathan Santos <Jonathan.Santos@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>
References: <cover.1757971454.git.marilene.agarcia@gmail.com>
 <c257f7feb92dcf33bf7a55810fe69d13890374d5.1757971454.git.marilene.agarcia@gmail.com>
 <2d5ef36b-ae37-453d-a19b-76fc97b7f14f@baylibre.com>
Content-Language: en-US
In-Reply-To: <2d5ef36b-ae37-453d-a19b-76fc97b7f14f@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/16/25 1:04 PM, David Lechner wrote:
> On 9/15/25 5:16 PM, Marilene Andrade Garcia wrote:

...

>> +static const struct iio_chan_spec max14001_channel[] = {
>> +	{
>> +		.type = IIO_VOLTAGE,
>> +		.indexed = 1,
>> +		.channel = 0,
>> +		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
>> +				      BIT(IIO_CHAN_INFO_AVERAGE_RAW) |
> 
> I think there was some discussion about this last time [1] that it
> would actually make sense to have the average as a separate channel.
> 
> There are a few reasons for this. If we add buffered read support
> later, we could only read the average in a buffered read if it is
> a separate channel. And the average channel should have an extra
> control that is either the -3 dB low pass filter point (using existing
> ABI) or the averaging window size (potentially new ABI).
> 
> If we don't care about ever reading the filtered and not filtered
> value at the same time, we could just have a single channel and only
> ever read from the FADC register and ignore the ADC register.
> 
> In either case, we would not need IIO_CHAN_INFO_AVERAGE_RAW.
> 
> [1]: https://lore.kernel.org/linux-iio/20250903171105.00003dcd@huawei.com/
> 
I thought about this some more while I was eating lunch and
I think I like the second option the best. We keep things simple
with just one channel for now. And if anyone ever does need to
read both filtered and unfiltered at the same time, we can add
it, but if that never happens, then we won't have wasted time
implementing it.

