Return-Path: <devicetree+bounces-128908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 923E79E9C9D
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 18:07:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 532DA1885257
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 17:07:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AC9714F9FB;
	Mon,  9 Dec 2024 17:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="lgmtZFvm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454EB14A60F
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 17:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733764033; cv=none; b=U5ztyHbANWHKBbDJ0mHvu4fYbhlDMTjZhx/hhBQnJeSM7yaiL3qPkqf4DLtUtd7KhMl3oP4h2c4vHEAKtaG20WKfR1QRlDw/9hFDlamE/2Hf9JiL1ru5EqEY+vC335EtFpPQVxTZCgd7iYIpfi5iLodo1YaFYTMcQOS+1IMhyXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733764033; c=relaxed/simple;
	bh=6QHNFoOyCLLCOprlGxwgr4wtXY/9BMMhCylqPIU9iec=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Hjkd3Q5Z2HWuFtFiS0gjOUnh/BuvoBmG9UfG5QdmRDkRyKOBbg3Ia8LpQ/XekeVQ/9HRh+D4/dHDdY+kZXwoyPVjANl3u8WiCicmhinAuKaJxtYA1DwdDO/o17DJIJhsc9WVM9yRTDla/1p73KkI0jvjSrHjZs4GyiUEJhcJ3fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=lgmtZFvm; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-71decc7de4eso336328a34.2
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 09:07:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733764030; x=1734368830; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ts2tIWXtXU2E7gTgnS4zrXEWacYOhqUWs3qs84T0QwA=;
        b=lgmtZFvm54fQTMIg4rf9hMBLTNpe5tf0wS4PQPiWCsc7rG1I9xPYjIpI2pSwHVHUx/
         KJKCjRVf5z/YcB7b8ieZyWpxb2+hEVWxrwqkaN5EVsQg5UQ7GtP//z67vL6y/TcO1jrr
         G3zEIIGaWrpftBb5OPtRQoaRtofFBDUiulCZLWBwrnPIY/D1pRX5hcBTI4W8niOZfD+0
         MK65xljLXgPFcivcKuaivGJNlpoci65r5s9On9Yp8pLbHqFxhrSV3oLJahZbZsl93wby
         w3NCPv4wd8Xlz7JM86lmjNsn2IQ4eeK5+JZStx1bKpaZTiDZdVhJ9BMhXWn+4VwIg/Cw
         Op4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733764030; x=1734368830;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ts2tIWXtXU2E7gTgnS4zrXEWacYOhqUWs3qs84T0QwA=;
        b=j/Khq5VNyi8+3M8/boESnlq5cKlrCzFRd/8hhM4URQGoiIzKT9XVL/n2P065mQggRV
         vflpnW/5VTf2tKT9JueeeZA81xqNhQpd6MeS0PnuD4mx3XcSEn7YwS8ThMZ77BL3eyHR
         +PwbYdq2qJYsWhgBNr2RtB+8LjX+QYiqdaMSxebOakn6axSH5J5oAxBJkKGS4bOljesE
         LGODFgMhQX9RUptrB8fjmNVblOpv1OtGCz0ZPrLT16rhKWAmqQgL4bYaKjrjRixGoWUs
         MzRSvbYO8xEzgkXRo3yso16tyfILXSwnpiZnU0ooSPIcqMXycpJf6XruFAr/HvUuwZ5K
         A45g==
X-Forwarded-Encrypted: i=1; AJvYcCVu9LiLfUmS11/N6G59xhlYKq+nbxdJjMkD9VWt8gsFdWcICU2p0KmJMvGmn/YusnLTXHXr32ttp502@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4cn01RvdVyfwB9UaGNU/f+zhj/OIkphXs2Fvw2713jyLcGXQM
	N8om1s7yVPnIIGeS3OWm3jlFfGHHniEORDLyytxP8zXCMAj9Lbm1JK/0R8BNqb8=
X-Gm-Gg: ASbGncvHmVfIYulPMk4ciMApjXxF62KRji64YzrNQ9GVf6QKn0etlG+uqBaOg6Za0qV
	8KheODYqqAL9gsGAUURCjvfJz4VUFHVwOtU/Vvaptl4WIacasvtJ6QL0sbUdWOB2hqMzDcxlaVv
	z0WT1akzbNasjuLE+qEsv/XIASur/0XDj2QIVn/V5RJSqIsD4BNVuzxBWu+p4C1XbtL9a7k40BZ
	XAXCipW9wyGblGs+R+I/3PaqUSUZ6TzfV7M4e+XkaT8Dq38q3TqBxfttvN+XLXbmZCjzLeuBz/O
	jg+rhrWLJbo=
X-Google-Smtp-Source: AGHT+IFr1v3eMTCDoHKwzSdd6E2ceD6LV8bAwZtXDNnskXWEMJJtepd+JZw7mMw4KfxBhmpg8tG+ng==
X-Received: by 2002:a05:6830:f83:b0:71d:62bc:85ec with SMTP id 46e09a7af769-71e021cf6a1mr981278a34.13.1733764030327;
        Mon, 09 Dec 2024 09:07:10 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71dfd1dad2asm232242a34.41.2024.12.09.09.07.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2024 09:07:09 -0800 (PST)
Message-ID: <09902fa0-5a83-4d9b-aa86-f4ee7c0a46d0@baylibre.com>
Date: Mon, 9 Dec 2024 11:07:07 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/3] iio: adc: ad7192: Add sync gpio
To: Jonathan Cameron <jic23@kernel.org>
Cc: Alisa-Dariana Roman <alisadariana@gmail.com>,
 Alisa-Dariana Roman <alisa.roman@analog.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Michael Hennerich <michael.hennerich@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
References: <20241128125811.11913-1-alisa.roman@analog.com>
 <20241128125811.11913-4-alisa.roman@analog.com>
 <20241130183839.1fd5884f@jic23-huawei>
 <6435f696-40fe-4ff9-ae76-1f121fe7604f@baylibre.com>
 <20241208184337.79c701db@jic23-huawei>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241208184337.79c701db@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/8/24 12:43 PM, Jonathan Cameron wrote:
> On Mon, 2 Dec 2024 16:21:43 -0600
> David Lechner <dlechner@baylibre.com> wrote:
> 
>> On 11/30/24 12:38 PM, Jonathan Cameron wrote:
>>> On Thu, 28 Nov 2024 14:55:03 +0200
>>> Alisa-Dariana Roman <alisadariana@gmail.com> wrote:
>>>   
>>>> Add support for the SYNC pin of AD719x devices. This pin is controlled
>>>> through a GPIO. The pin allows synchronization of digital filters and
>>>> analog modulators when using multiple devices.
>>>>
>>>> Signed-off-by: Alisa-Dariana Roman <alisa.roman@analog.com>  
>>> Hi.
>>>
>>> Like all userspace ABI, this needs documentation.
>>>
>>> It's an unusual feature, so some usecases would help.
>>>
>>> It is also cross multiple devices which makes this odd as only one device
>>> can presumably acquire the gpio?
>>>
>>> An alternative would be to look at how to do this with a 'wrapper' sort of device
>>> so that we have one instance to which this applies.
>>>
>>> I'm not sure that helps that much though as we'd still need some for of
>>> 'I'm setup for all channels, now you can go' ABI.
>>>
>>> Jonathan
>>>   
>>
>> Giving userspace direct control over the /SYNC pin without coordinating
>> with the rest of the driver does seem like it could be asking for trouble.
>>
>> It seems like the only time you would want to actually toggle the /SYNC
>> pin is when starting a buffered read.
>>
>> 1. Deassert /SYNC so that no conversions can be triggered.
>> 2. Enable buffered reads for all chips connected to the same GPIO.
>> 3. Assert /SYNC to start all conversions at the same time.
>>
>> So it could make sense to integrate this into the buffer pre/post enable
>> callbacks somehow instead of adding a new sysfs attribute.
>>
>> For the "wrapper" device, maybe we could do something with configfs to
>> enable dynamically connecting multiple device instances? We might not
>> need to actually create a separate device in sysfs, but just do something
>> so that enabling a buffered read on the first chip will enable buffered
>> reads on all of the chips in the group.
>>
>> It seems like we have some other chips that are currently being worked on
>> that also have the possibility of some sort of multi-chip synchronization
>> like this so it would be nice to come up with a general solution.
> 
> Most of the multichip cases we've had before have been chained, rather
> than separate data interfaces, hence I don't recall us needing something
> like this before.
> 
>>
>> Another use case for a general synchronized buffered read/write between
>> multiple chips would be the AD3552R DAC. Recently, while adding support
>> for an IIO backend for this chip, we saw that the AXI DAC backend has a
>> synchronization feature like this where you set an "arm" bit on all AXI
>> DAC instances. Then when you enable streaming to the first chip, it also
>> triggers all of the other AXI DAC blocks to start streaming at the same
>> time. We ended up not implementing that feature since the IIO subsystem
>> doesn't really support this yet, but could be a good one to look at as a
>> similar feature with a different implementation to help us find a general
>> solution.
>>
> This feels like a case where we need a prototype to poke holes in.
> It's not totally dissimilar from the hardware trigger stuff that
> exists in a few devices. Some of the stm parts for instance where the
> triggering is entirely within the chip.  Maybe we could make something
> like that work.  So the driver instance that has the sync pin registers
> a trigger that the other devices use.   It's a bit ugly though and we'd
> still need a dt-binding to let us know 'which' devices are connected
> to that sync pin.
> 
> Jonathan
> 
> 

A shared trigger was one of the ideas that crossed my mind as well.
Are you suggesting that the "main" chip would have the sync-gpios
property in it's .dts node and then the other chips would have a
trigger-sources = <&main_adc>; property instead of the sync-gpios
property? (FYI, trigger-sources/#trigger-source-cells are becoming
are becoming general properties with the SPI offload work I have
been doing, so should be available to use soon-ish).

Now, to try to poke a hole in this idea...

It seems like most (all?) triggers are set up to trigger an individual
sample. But in this case, the /SYNC pin would just be triggering the
start of a buffered read, so triggering multiple samples. Does this
still fit within the definition of a struct iio_trigger?

One way to possibly make it work without a struct iio_trigger could
work like this:
* During probe, "main" chips sets /SYNC so that chips won't sample
  data.
* Set up and enable a buffered read for all non-main chips that have
  the /SYNC pin connected to a common GPIO. Chips don't actually start
  sampling when buffer is enabled due to /SYNC pin state.
* Enable the buffer on the "main" chip last. This changes the /SYNC
  pin state in the buffer pre/post enable and all chips start
  sampling at the same time.
* Read from all buffers for as long as you want.
* Similarly, to stop, the "main" chip should have it's buffer disabled
  first, which changes the /SYNC pin state causing all chips to stop
  sampling.
* Then other buffers can be disabled.

Alternately, we could have a struct iio_trigger and expose control of
the /SYNC pin state as a sysfs attribute on the trigger. This would be
more like what Alisa-Dariana has proposed already.

It could work like this:
* Set up and enable a buffered read for all chips that have the /SYNC pin
  connected to a common GPIO. Chips don't actually start sampling when
  buffer is enabled due to /SYNC pin state.
* Write to a new trigger sysfs attribute to start sampling on all chips at
  the same time.
* Read from all buffers for as long as you want.
* Write to the trigger sysfs attribute to stop sampling on all chips at
  the same time.
* Disable buffers on all chips.


