Return-Path: <devicetree+bounces-58992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6268A3E85
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 22:38:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 550A71F21830
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 20:38:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0164153E3B;
	Sat, 13 Apr 2024 20:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="sWNjn8WG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E107323AD
	for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 20:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713040714; cv=none; b=toXbAk+tisHmL8n7PdYEECY0vQH6TBPOMO/IWWaIGYIyXHeCcviq+VPVT+4mmhJjeefXQ/jnnIjEYGw8hbtPSNU7FeGj0IgNZBpwt3WrAqxoPeLBpo2WYoOcIQb2d5UqtryS1L44ytwIgEcQ1s6Hcsh0otrz9+33vTkKkcfPzV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713040714; c=relaxed/simple;
	bh=xSHBDd4Me8If6WJToj6vLbfBkCsdoFfXtMlxyXeajWA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gkpetqHuOvd8kNd+Z/afUFRoWZzw2qgEt729kOlsfpyO+RLKzDJx41IZR/xRZxkn86jp77XliFN8wf9H6xsuiGXhxp3jc6J1M/HNxXGDcQxbkxVtYFdjNymik7LqeHiHUR//huJQCMIZWKGfWCYegAczNHazRa7HlvRqGe9OsYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=sWNjn8WG; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5aa1fe2ad39so1511070eaf.2
        for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 13:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713040711; x=1713645511; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4x+1HTQ0RIZPFoOKvwxaxcB7QTNcWnf5Og46uHe7Vc8=;
        b=sWNjn8WGASX9oqe22teSyyeGA3QQlo9xNLBOTfWWLP5KlCSCfROKC+nuYdOds9a8Gi
         YD6Yyy744J5GTK77hsX7yeLSlsD1YLubWbBSFPhduQNSIDdwy2cU3o5OBm2eN0SPyr7z
         Ownp2WCAyKWKCPlf0ZDO4b43k9FUgfJjDoX4tsS4kQXfjdeYV10euXfqyiQ95pPof0sI
         UdKhe1LJ1YzYm5mlGw8ikBimleJpNqjTJi8J66VlJTfa1/7IPaWt/h4TY6wtwajSaaPa
         ZK0Knnfnv74Kqf1QqVjk/XVqKJLwBntIjv8Tw81fxMdW4GQNaoSEQss9f/NMLswLnBOC
         05CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713040711; x=1713645511;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4x+1HTQ0RIZPFoOKvwxaxcB7QTNcWnf5Og46uHe7Vc8=;
        b=K+uvCYbzyOwZ8Cj6s0U9r34mpeOigNuVoLo5rjv7aTLJupkEa8QuVwY5YArqzSIk2i
         m4WzUbxxd2vOpXajvhVHwSKYeEKII1GviDL287/DE3gyF/2Yg00TuaEDP2fQ0Nj1heWW
         hnR1coqz6k9XKwF0GlRaUu4j1hLrB9F/HaYbzy69gMbxVNAFj+QNtOzfUtf/KDZU8P62
         IBwxntBD2TwXnqh15PiCiZp6bTI4ll8IaJEdPDw6CI1rQ73LcC0kvVLxTZCduWiG5lCu
         B0nhEJRN8rWpVsjH/Cigss0iXy1c3kuy/HfQtDjDSHg2jDbE8oLYVLy/TsrRSlsXFxQo
         ed7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVbsytUYTz8HSheTXHbOJ+o2bCLnJP6NzAAw+fO/ahET2hlXpkYkDYhgNNGgSA3rPs3DouDIndIkKiWkHRwqXARGdklwqVseWxJ0w==
X-Gm-Message-State: AOJu0YxFcyX9KyQpx3oFuHKbZyeERCDqk0j6Jcv6dLh/cG76yhpORXnc
	thAXVMPG2/6UhwH1bqjfEBcO5UTpu0uH79o150dgt7tLfxh+4xO7BQ7it13uA18=
X-Google-Smtp-Source: AGHT+IEE3c/u83djcsqJvHEGhksxOFX5yvKSmK0dHqgqlZy8nrs2GatIlTEKHognd/sndK9tWI2yYA==
X-Received: by 2002:a05:6820:1ac2:b0:5ac:5c3c:6aca with SMTP id bu2-20020a0568201ac200b005ac5c3c6acamr6011704oob.0.1713040710955;
        Sat, 13 Apr 2024 13:38:30 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id w8-20020a4aaf08000000b005ac80676e8bsm493837oon.46.2024.04.13.13.38.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Apr 2024 13:38:30 -0700 (PDT)
Message-ID: <e8599a44-f89b-4249-8fe2-db73edb74ead@baylibre.com>
Date: Sat, 13 Apr 2024 15:38:29 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] iio: ABI: add ABI file for the LTC2664 DAC
To: Jonathan Cameron <jic23@kernel.org>
Cc: Kim Seer Paller <kimseer.paller@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>,
 Michael Hennerich <michael.hennerich@analog.com>
References: <20240412032102.136071-1-kimseer.paller@analog.com>
 <20240412032102.136071-3-kimseer.paller@analog.com>
 <CAMknhBE9XihK27pRhyPwTNM3VQX=osYdDyCmjNspz1aqe_NVTw@mail.gmail.com>
 <20240413162517.4644b649@jic23-huawei>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20240413162517.4644b649@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 4/13/24 10:25 AM, Jonathan Cameron wrote:
> On Fri, 12 Apr 2024 16:26:17 -0500
> David Lechner <dlechner@baylibre.com> wrote:
> 
>> On Thu, Apr 11, 2024 at 10:21 PM Kim Seer Paller
>> <kimseer.paller@analog.com> wrote:
>>>
>>> Define the sysfs interface for toggle capable channels.
>>>
>>> Toggle enabled channels will have:
>>>
>>>  * out_voltageY_toggle_en  
> The big missing thing in this ABI is a reference to existing precedence.
> You aren't actually defining anything new, it just hasn't yet been generalized
> beyond 1 device (unless you include PSK / FSK DDS drivers that are 'still' after
> 13+ years in staging!)
> 
> This patch needs to be generalizing that documentation from the ltc2688.
> 
> Probably in sysfs-bus-iio-dac
> 
>>
>> It looks like there are 3 toggle modes.
>>
>> Two involve the notion of "enabled" outputs that I assume this attribute is for:
>>
>> 1. Toggling all enabled pins at the same time using a software trigger
>> (global toggle bit)
>> 2. Toggling all enabled pins at the same time using a hardware trigger
>> (TGP pin) and toggling pins
>>
> 
> This is presumably the tricky one as that hardware toggle may not be in
> control of the host CPU.
> 
>> The third mode though looks like it uses the same toggle select
>> register for selecting A or B for each channel instead of enabling or
>> disabling each channel.
>>
>> 3. Toggling all pins to A or B based on the toggle select register. No
>> notion of enabled pins here.
>>
>> I haven't looked at the driver implementation, but it sounds like
>> out_voltageY_toggle_en and out_voltageY_symbol would be writing to the
>> same register in conflicting ways. So maybe we need yet another custom
>> attribute to select the currently active toggle mode?
> 
> This one feels like it could be handled as a software optimisation over
> just changing the DAC value directly.
> 
>>
>> In any case, it would be helpful if the documentation below explained
>> a bit better the intention and conditions required to use each
>> attribute (or add a .rst documentation file for these chips to explain
>> how to use it in more detail since this is rather complex feature).
>>
>>>  * out_voltageY_raw0
>>>  * out_voltageY_raw1  
>>
>> I guess there is no enum iio_modifier that fits this. It seems like we
>> could still have out_voltageY_raw for register A so that users that
>> don't need to do any toggling can use standard ABI. And maybe
>> out_voltageY_raw_toggled for register B (question for Jonathan)?
> 
> There is precedence for doing it like this (ltc2688)
> Note that we should only see these attribute for changes specifically
> configured for 'hardware' triggered toggling.
> 
> Note that we cannot have duplicate documentation so we need to create
> a common docs file covering this and existing ltc2688 ABI that overlaps.
> That may need some generalising to cover both parts.
> 
>>
>> Or just have 8 channels instead of 4 where even channels are register
>> A and odd channels are register B?
>>
>>>  * out_voltageY_symbol  
>>
>> "symbol" is a confusing name. It sounds like this just supports
>> toggling one channel individually so _toggle_select would make more
>> sense to me. Are there plans for supporting toggling multiple channels
>> at the same time using a software trigger as well?
> 
> Again, precedence should have been called out.  It's not great ABI
> but it corresponds to earlier work on Frequency Shift Keying DDS devices
> (and I think Phase Shift Keying as well) in which this is call symbol.
> Hence the name.
> 
>>
>>>
>>> The common interface present in all channels is:
>>>
>>>  * out_voltageY_raw (not present in toggle enabled channels)  
>>
>> As mentioned above, I don't think we need to have to make a
>> distinction between toggle enabled channels and not enabled channels.
> 
> Was a while back but I think that last time this turned up we concluded
> we did need a different interface because the current 'toggle value'
> is not in our control.  Hence you are programming one channel that
> does different things - think of it as setting the Max and Min values
> for a generated waveform - perhaps the toggle pin is connected to a PWM
> for example.
> 
>>
>>>  * out_voltageY_raw_available
>>>  * out_voltageY_powerdown  
>>
>> Is _powerdown a standard attribute? I don't see it documented
>> anywhere. Perhaps you meant _en (via IIO_CHAN_INFO_ENABLE)?
> 
> It's there in Documentation/ABI/testing/sysfs-bus-iio
> Different form simple enable (which came much later as ABI) because
> it means entering a powerdown state in which a particular thing happens
> on the output pin.  It is defined alongside powerdown_mode which 
> defines what happens. (often a choice between different impedance / High Z etc)
> 
> 
>>
>>
>>>  * out_voltageY_scale
>>>  * out_voltageY_offset
>>>
>>> Co-developed-by: Michael Hennerich <michael.hennerich@analog.com>
>>> Signed-off-by: Michael Hennerich <michael.hennerich@analog.com>
>>> Signed-off-by: Kim Seer Paller <kimseer.paller@analog.com>
>>> ---
>>>  .../ABI/testing/sysfs-bus-iio-dac-ltc2664     | 30 +++++++++++++++++++
>>>  MAINTAINERS                                   |  1 +
>>>  2 files changed, 31 insertions(+)
>>>  create mode 100644 Documentation/ABI/testing/sysfs-bus-iio-dac-ltc2664
>>>
>>> diff --git a/Documentation/ABI/testing/sysfs-bus-iio-dac-ltc2664 b/Documentation/ABI/testing/sysfs-bus-iio-dac-ltc2664
>>> new file mode 100644
>>> index 000000000..4b656b7af
>>> --- /dev/null
>>> +++ b/Documentation/ABI/testing/sysfs-bus-iio-dac-ltc2664
>>> @@ -0,0 +1,30 @@
>>> +What:          /sys/bus/iio/devices/iio:deviceX/out_voltageY_toggle_en
>>> +KernelVersion: 5.18
>>> +Contact:       linux-iio@vger.kernel.org
>>> +Description:
>>> +               Toggle enable. Write 1 to enable toggle or 0 to disable it. This is
>>> +               useful when one wants to change the DAC output codes. The way it should
>>> +               be done is:
>>> +
>>> +               - disable toggle operation;
>>> +               - change out_voltageY_raw0 and out_voltageY_raw1;
>>> +               - enable toggle operation.
>>> +
>>> +What:          /sys/bus/iio/devices/iio:deviceX/out_voltageY_raw0
>>> +What:          /sys/bus/iio/devices/iio:deviceX/out_voltageY_raw1
>>> +KernelVersion: 5.18
>>> +Contact:       linux-iio@vger.kernel.org
>>> +Description:
>>> +               It has the same meaning as out_voltageY_raw. This attribute is
>>> +               specific to toggle enabled channels and refers to the DAC output
>>> +               code in INPUT_A (_raw0) and INPUT_B (_raw1). The same scale and offset
>>> +               as in out_voltageY_raw applies.
>>> +
>>> +What:          /sys/bus/iio/devices/iio:deviceX/out_voltageY_symbol
>>> +KernelVersion: 5.18
>>> +Contact:       linux-iio@vger.kernel.org
>>> +Description:
>>> +               Performs a SW toggle. This attribute is specific to toggle
>>> +               enabled channels and allows to toggle between out_voltageY_raw0
>>> +               and out_voltageY_raw1 through software. Writing 0 will select
>>> +               out_voltageY_raw0 while 1 selects out_voltageY_raw1.
>>> diff --git a/MAINTAINERS b/MAINTAINERS
>>> index bd8645f6e..9ed00b364 100644
>>> --- a/MAINTAINERS
>>> +++ b/MAINTAINERS
>>> @@ -12842,6 +12842,7 @@ M:      Kim Seer Paller <kimseer.paller@analog.com>
>>>  L:     linux-iio@vger.kernel.org
>>>  S:     Supported
>>>  W:     https://ez.analog.com/linux-software-drivers
>>> +F:     Documentation/ABI/testing/sysfs-bus-iio-dac-ltc2664
>>>  F:     Documentation/devicetree/bindings/iio/dac/adi,ltc2664.yaml
>>>
>>>  LTC2688 IIO DAC DRIVER
>>> --
>>> 2.34.1
>>>  
> 

Clearly I have a lot to learn on this one! Thanks for all of the info.


