Return-Path: <devicetree+bounces-184412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6446EAD3E94
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 18:14:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A945317B523
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 16:13:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11DE324113C;
	Tue, 10 Jun 2025 16:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="umGu3KKN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DF50238C39
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 16:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749571897; cv=none; b=nGXPPg5g01gtq3Yf3KOK4Hkbpq9M9xK49dnFqiPn66Vw7O9Ob08trebP+sh7TmptHExL0Tdma51snNEkmG6+Yo6Fh4T7lnhAXYbN/mPsy8TQrKR870RXwGLFuL8PgAWIcDLNScOedZ2W83IGGvhUb6G4fjdLZgFkiTop/snbpuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749571897; c=relaxed/simple;
	bh=H6kKcbtQyCNsRpuQdzx1Ij4f1xHwXmSeJMEq6Npzo00=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jFHvfE+A1cS50ne5DmUaeGGoiSga4YYAmGdt1sdIzNw9buV34kG4vGNzHhnah6kBv0zSpAHi82E9eaZVlJAN8ZGAjcezu0xX+dFTIcZD7cWX6IhWQnxIbZLgEebhWccJIzr8V5djEcF3G3FWID/Hz1YTXOJetKh4/ppRrJZpG40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=umGu3KKN; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-610d87553b6so734152eaf.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 09:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749571894; x=1750176694; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IjFNPLsLmPIFbKpYACH0ExKk8a2pmT3QZbM6wkI9HdI=;
        b=umGu3KKNhYALIrRlldlf8kTq3fzDvimB2poZztA5A+JFRC7BiP3z8HtHtGUxY2eYcM
         Mzo1Kq4emjXwJV6QSFzJM/TZE1/MrQm+hJdT5la9D9X1IHNVwKXxRMesDCkLcpeoonj1
         CIIO4YjBxiPtclvM49L/JB005AHkkrpkVwTep38KW/C2JQeqcNUYR737KZnM3v6zwYw+
         P0goi4RiLQfvNOvaJB07dgMI3PCkNX+EYKkIcQAlXqPkysJ3OCevACQf6b9QbY3K2nfw
         dFLmo+R5XfEG+5QGVFsZXdDpyCri64IcZmkgt30NCHXUhHgBaCOgFdSE4yt/pEQfNgps
         VBXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749571894; x=1750176694;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IjFNPLsLmPIFbKpYACH0ExKk8a2pmT3QZbM6wkI9HdI=;
        b=F3328Xau9ExPab4MULPYcEUAoMVxBhBQfVmcoLm8X5dL7ACJ0TIys0ZRosAK3CLO1a
         PXnNDMrmD0pXWyetVGngIRdKrkweeo/mDMH5ZcrSavZMxndaNMt+I8BL4kJk3xu4u6Xg
         zqaq4VnNjtKuqb/vk5X5LapZZpGmdC42s8wyjuilcDTv4x4DLofprh54RjRbjoskKKpk
         0y/JNtvgM9SNAFInzRXPx5PyM5eQg7jsIMO5s4q3s+sK7zy99w1VXgwlk5ZSsAcBxODu
         CMQ0f5uP614EOfW1rUkMiNGfVKG2DbmnjSb0nRJjBbdOGyQsMas8MiGzgvVE9BGXyJOX
         KFxg==
X-Forwarded-Encrypted: i=1; AJvYcCXlu/qPQmgaa3hsTYg+B5tNNaSOHE7nan9mZDCPtcW+XS2nh/8EQZX0hf7wfZySh0sCx6uKGe69eOVP@vger.kernel.org
X-Gm-Message-State: AOJu0YyVeWh1E/35vLbBYRBa8Q0Dvp/9N3Tr9fU7+EX2KXalD2JlE4Bc
	6zl/6s9e9pF6FK91WsG9tU8dx6cwacyCXDzg6chmV1bSSNBqGJBAQd6Ae4XEYpZE8aw=
X-Gm-Gg: ASbGnctVcGUkQomWUHYF08+yLoCIArKCrvGi7K/2YGa6v1k69XLlPG6c3gup2WwBAMh
	Ip97vAPS6QgHO+YA5lTCHGrlARqJlXJGjrnBwxIF40h3r540pMJbzreuBoPjHnLrg9d5JQFl4DL
	15kPNlw8GHfECme9bR7SN4BruiO0V1t3QmdXZXexcZTdhRhqHsWfrGHQMW+6BCzeoTi12to7zFQ
	EEH1wMD/eCYk0+SrIXbNnCVpLD0TaZLmA2IRrzbvBWZAdywPp69E3e+yPPA7mNXz3ph+U7p+U6a
	IHz9ox2qmelfINg7dvQxR50OyQsVMBkJd6pWD+avkw1zZm4qBwHLkZVnlyPyWz3oaQnjGUqZVSl
	a0whgc2/1XrxofMXs/fQiGN5wFYrpbyrmNdyT
X-Google-Smtp-Source: AGHT+IEe5j4VAuvAkgd3yNgpCuM13S6tjJh4vDjtrY7qQ16ReDKME1+DnXtNYfBdugeTmqYAaZF+8g==
X-Received: by 2002:a05:6820:2604:b0:60e:d47d:f616 with SMTP id 006d021491bc7-610e2d24dc9mr1981664eaf.3.1749571893530;
        Tue, 10 Jun 2025 09:11:33 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:a49:6255:d8db:1aea? ([2600:8803:e7e4:1d00:a49:6255:d8db:1aea])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7388a0704f4sm2066466a34.58.2025.06.10.09.11.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 09:11:33 -0700 (PDT)
Message-ID: <3d95641d-c1c2-44bc-8478-c60734bcf420@baylibre.com>
Date: Tue, 10 Jun 2025 11:11:32 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] iio: adc: adding support for PAC194X
To: Marius.Cristea@microchip.com, jic23@kernel.org, nuno.sa@analog.com,
 andy@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 broonie@kernel.org, devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250606093929.100118-1-marius.cristea@microchip.com>
 <20250606093929.100118-3-marius.cristea@microchip.com>
 <1c7946f1-d712-4baa-8243-be6a55eec528@baylibre.com>
 <1b8b10816d1f2f34724e77c68de869422d6c84b6.camel@microchip.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <1b8b10816d1f2f34724e77c68de869422d6c84b6.camel@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 6/10/25 10:07 AM, Marius.Cristea@microchip.com wrote:
> On Fri, 2025-06-06 at 12:02 -0500, David Lechner wrote:

...

>>> diff --git a/Documentation/ABI/testing/sysfs-bus-iio-adc-pac1944
>>> b/Documentation/ABI/testing/sysfs-bus-iio-adc-pac1944
>>> new file mode 100644
>>> index 000000000000..ae88eac354a4
>>> --- /dev/null
>>> +++ b/Documentation/ABI/testing/sysfs-bus-iio-adc-pac1944
>>> @@ -0,0 +1,17 @@
>>> +What:               
>>> /sys/bus/iio/devices/iio:deviceX/slow_alert1_cfg
>>> +KernelVersion:       6.16
>>> +Contact:     linux-iio@vger.kernel.org
>>> +Description:
>>> +             A read/write property used to route, inside the PAC
>>> device, a specific ALERT
>>> +             signal to the SLOW/ALERT1 pin. The SLOW/ALERT1 pin
>>> must be configured for the
>>> +             ALERT function in order to control the device
>>> hardware pin (this is the default
>>> +             functionality of the device hardware pin).
>>> +
>>> +What:               
>>> /sys/bus/iio/devices/iio:deviceX/gpio_alert2_cfg
>>> +KernelVersion:       6.16
>>> +Contact:     linux-iio@vger.kernel.org
>>> +Description:
>>> +             A read/write property used to route, inside the PAC
>>> device, a specific ALERT
>>> +             signal to the GPIO/ALERT2 hardware pin. The
>>> GPIO/ALERT2 pin must be configured
>>> +             for ALERT function in order to control the device
>>> hardware pin (this is the
>>> +             default functionality of the device hardware pin).
>>
>>
>> What is the use case for needing these? In otherwords, why can't the
>> driver just
>> make best use of available resources as it sees fit?
>>
> 
> Here inside the PAC the user could choose what limit to be routeed
> outside the chip. For sure, all of the limits could be routed to the
> same hardware pin, but there are some use cases where the user will
> want to connect that output pin to a safety hardware (e.g. over-current
> protection or over-voltage and over-current) and in this case we need a
> way to allow the user to do the setup.
> 

This sounds like it depends on what is wired to the alert pin, so sounds
like something that should be specified in the devicetree.

I.e. in the devicetree, have a bool property microchip,alert1-is-safety
to indicate the ALERT1 pin is wired to the safety hardware. (It could
still be also wired as an interrupt input at the same time - or not,
doesn't really matter.)

Then, on the event attributes add a boolean "safety" attribute to allow
routing the signal to either the pin that was flagged as the safety pin
or not. This would allow the user to chose which signals control the
safety hardware at runtime without them having to know how the hardware
is actually wired up.

>>
>>> subsidiaries
>>> + *
>>> + * Author: Marius Cristea marius.cristea@microchip.com
>>> + *
>>> + * Datasheet for PAC1941, PAC1942, PAC1943 and PAC1944 can be
>>> found here:
>>> + *
>>> https://ww1.microchip.com/downloads/aemDocuments/documents/MSLD/ProductDocuments/DataSheets/PAC194X-Family-Data-Sheet-DS20006543.pdf
>>> + * Datasheet for PAC1951, PAC1952, PAC1953 and PAC1954 can be
>>> found here:
>>> + *
>>> https://ww1.microchip.com/downloads/aemDocuments/documents/MSLD/ProductDocuments/DataSheets/PAC195X-Family-Data-Sheet-DS20006539.pdf
>>> + */
>>> +
>>> +#include <linux/acpi.h>
>>> +#include <linux/bitfield.h>
>>> +#include <linux/delay.h>
>>> +#include <linux/err.h>
>>> +#include <linux/i2c.h>
>>> +#include <linux/iio/iio.h>
>>> +#include <linux/iio/events.h>
>>> +#include <linux/iio/sysfs.h>
>>> +#include <linux/unaligned.h>
>>
>> This seems incomplete. Expecting at least linux/module.h,
>> linux/property.h, etc.
> 
> I will double check. Most probably those module are already included by
> a header.
> 

Even if some things happens to be indirectly included by another
header, we still prefer to have the "primary" header included for
everything that is actually used in this file. E.g. since this
file uses the MODULE_DESCRIPTION() macro, we expect to see
linux/module.h even if another header already includes that
indirectly.

Usually the "primary" header is the one where a symbol/macro is
defined, but not always, e.g. if there is a linux/something.h
that incldues asm/something.h, we would prefer the linux/ one
rather than including the asm/ one directly.


>>
>> ...
>>
>>> +static IIO_DEVICE_ATTR(in_current1_shunt_resistor, 0644,
>>> +                    pac1944_shunt_value_show,
>>> pac1944_shunt_value_store, 0);
>>> +static IIO_DEVICE_ATTR(in_current2_shunt_resistor, 0644,
>>> +                    pac1944_shunt_value_show,
>>> pac1944_shunt_value_store, 1);
>>> +static IIO_DEVICE_ATTR(in_current3_shunt_resistor, 0644,
>>> +                    pac1944_shunt_value_show,
>>> pac1944_shunt_value_store, 2);
>>> +static IIO_DEVICE_ATTR(in_current4_shunt_resistor, 0644,
>>> +                    pac1944_shunt_value_show,
>>> pac1944_shunt_value_store, 3);
>>
>> These are specified in the devicetree. Why are there also sysfs
>> attribtes?
> 
> Yes, you could put a generic shunt resistor into the device tree but
> this resistor will have a tolerance. Because the end user could
> calibrate the system, it could also save the calculated/calibrated
> shunt resistor somewhere and restore that calibrated value each time
> the driver is loaded.
> 

If changing the resistor value changes the measured raw value, we
could probably use one of the existing standard calibration attributes
instead, like calibbias or calibscale.

> 
>>
>>
>>> +/* Available Sample Modes */
>>> +static const char * const pac1944_frequency_avail[] = {
>>> +     "1024_ADAP",
>>> +     "256_ADAP",
>>> +     "64_ADAP",
>>> +     "8_ADAP",
>>> +     "1024",
>>> +     "256",
>>> +     "64",
>>> +     "8",
>>> +     "single_shot_1x",
>>> +     "single_shot_8x",
>>> +     "fast",
>>> +     "burst",
>>> +};
>>
>>>
> ...
>>> +
>>> +static const struct iio_chan_spec_ext_info pac1944_ext_info[] = {
>>> +     IIO_ENUM("sampling_frequency", IIO_SHARED_BY_ALL,
>>> &sampling_mode_enum),
>>> +     {
>>> +             .name = "sampling_frequency_available",
>>> +             .shared = IIO_SHARED_BY_ALL,
>>> +             .read = iio_enum_available_read,
>>> +             .private = (uintptr_t)&sampling_mode_enum,
>>> +     },
>>> +     { }
>>> +};
>>
>> sampling_frequency{_avialable} are already standard attributes in IIO
>> and is
>> defined to be a number in Hz. So we will need to find a way to make
>> this
>> work with the standard attribute (can use IIO_CHAN_INFO_SAMPLE_FREQ,
>> by the way).
>> And figure out how the other parts fit into other existing IIO
>> features.
> 
> I can change to the standard attributes but I still have some question
> related to how to handle the ADAPTIVE sampling frequency that the chip
> supports and that it could be used to lower the power consumption of
> the chip.
> 
>>

From a quick look at one of the datasheets, it sounds like this
"adaptive" mode only applies when using an accumulator. And it doesn't
actually change the sample rate, but rather other factors, like scale
and the accumulator counter incitement. So it seems like it would be
a separate custom boolean attribute.

Also, I noticed that the fast mode and burst mode make the sampling
frequency dependent on the number of enabled channels. So to handle
this, normally, that would mean that IIO_CHAN_INFO_SAMP_FREQ would
need to be IIO_SEPARATE rather than IIO_SHARED_BY_ALL.

But since these chips support can work both ways (there are modes
where sample rate doesn't depend on the number of channels enabled
and there are modes where it does), I'm not sure what the right way
to handle that would be here. Maybe Jonathan will have some suggestion?


