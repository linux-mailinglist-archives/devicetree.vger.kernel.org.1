Return-Path: <devicetree+bounces-138513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF10A10BBF
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 17:05:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 513F7165F00
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 16:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACBB418952C;
	Tue, 14 Jan 2025 16:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HiDp/Cxi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2CD15C15C
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 16:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736870706; cv=none; b=H1uN8IoTz3mboXkXI36eKDNwwPSitcowuLT73vagQmVDVIr0r70hzxqkT/w72UF+vPhwEXdSQpQuZZ/N2wkfY36kVhKy338zEdacSR07WotO4dXjvuus+0g7YgD3Rhp5JZrCs3gtL+vwwFHtEFT1nswfB94LEN2MGOO+J0u35tE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736870706; c=relaxed/simple;
	bh=uhdLgpV/BmxgeAcEClI5pB1nbFwpdZKaJ3yd0iPmXeQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hJzkBSO50QhPPP2mVYRgs0ssbnOyAB+tFhZakDuaCKUnXNd3F/mcERZykonpHt7mcYwzyJBRsfYgRi8gmUXBkl6GuxgonCZ0CCZR8n/IAafFxoKJoDvVIht/kq9Wq4VCenvKPIRjQsdiw322d7VRQt9s2Mt+iR2eYzmuSdash08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HiDp/Cxi; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-71e173ed85bso2368599a34.3
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 08:05:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736870703; x=1737475503; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gM/Ylpi8BGtTMa4TdQBKQwwvtVllJ24sITQPrHbwGvI=;
        b=HiDp/Cxiv2eGVvRm5d7QUxSs8474AMBPAw0hyxXZsDA2j8O+j/cvq+AcrjCN/0kJ+6
         AD7rqwMnwp626Yx60agqFklf4+SI98LCrmBnoWu9SOcK05af18/SEbCjWcRXJerLhLaQ
         RVt/gv+QukwBYHpuRGuClXnoDVykSUJ4lmPeEZhZvJOUhjKnk83kLDXJpyJ/4Zwaktrl
         pz/oRCDxj7nc/PXlx0Jl2kf/hx+W2V/q6Vpv/Qw5ychl9q0o6ilAhylbOb5EUYEtSxus
         ImMtc+uSexo2snY4P/DySRmvfdQ7V5uZgRdG3aR4LIBUuGCE9QSt1FQtMIgAouY7xSek
         ZUOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736870703; x=1737475503;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gM/Ylpi8BGtTMa4TdQBKQwwvtVllJ24sITQPrHbwGvI=;
        b=DWjpYxpSFoiTDBfxc2BS+fGtiIFuQwDuoFMG0yX9lPxjgJE8FcZ3gofFImgJhmRvFD
         q4U1jyt4sza7SI9nQPc7l8Rju02aoB6G19jmhT3Og0fHo61RWwheW+TfCl5gU3iieU/m
         uunuunzz+Rg07I28eXeiSb9/fmBf96/zEDP/1kN5/ALPJ+jkk1EXmyV5VtsPnGR5HUKa
         bweAGXQNY56XnjtHzL5N9GP55CWd2fGXYrdTA/Ilmncziw+htHZZn8RnhaXdMU7g/fRd
         71RUmAES0EuZNaxAHKbxoRDf7IuSTiEXb2sbRNymcsIlc2+l71OoHylrbf62WU9lER2Q
         LMrA==
X-Forwarded-Encrypted: i=1; AJvYcCXSqjOriigjShr4ryAqsVDVSzuhb4L6VFXikqQWobLDFjkvyIe5df7Aj5rDeGn9XDOWKX3SfkSwWORZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzqTKXVS3GpfEak8P5QgM8cb3cKr9zROaLnEsyJhH/erh23gGaD
	UnEekrIWsZHoHmj/dlBiR5c91HDUzKFEFoSfnEnvvvyEX/RjdazfxAH6Z8oVCz4=
X-Gm-Gg: ASbGncshbytQgjYSQW8PBvl51aDccFqUSLXRKg6nAXC70wOGTkIvFW7fxc014AkAvb/
	0cEXU1bWliWD1f3Paef0XSbFcC+mR/im7AJpmyS0ns4/sg0w8uFafBnPY+6ossR5cpoRlUgIDgv
	mAnqoZkIUCAGZDSq1CD56rLGP1T3Ahm1kHjY6KvHCHiGj9jdxFzxRr45rj4OjHrU07UmMptLice
	LmrZAb3m+JLFKMTeo6bn8Re0r4lNgEW9JHzWC716Ug/jo4fx9vYfE7Ra5Yon6Fu+unOmtVhVbhf
	nd+8O7Ah6mik0RL/4A==
X-Google-Smtp-Source: AGHT+IGLuN/S04Wr5iZ7apUvKcieZi+/rsslDQGiueNokxdD4hhgllY2eGR0IzRM09ZopJdyRw0gZw==
X-Received: by 2002:a05:6871:2085:b0:296:fff8:817 with SMTP id 586e51a60fabf-2aa06982e2emr16289903fac.35.1736870703303;
        Tue, 14 Jan 2025 08:05:03 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2ad809a759dsm5199843fac.33.2025.01.14.08.05.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jan 2025 08:05:02 -0800 (PST)
Message-ID: <e5e8eba7-2455-488b-a36f-e246844e11fd@baylibre.com>
Date: Tue, 14 Jan 2025 10:05:02 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 01/15] dt-bindings: iio: adc: ad7768-1: add
 synchronization over SPI property
To: 20250112120530.1950a265@jic23-huawei.smtp.subspace.kernel.org,
	Jonathan Cameron <jic23@kernel.org>
Cc: dc7f6461-6fce-4dbd-9be4-f7814053e7dc@baylibre.com,
 Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, lars@metafoo.de,
 Michael.Hennerich@analog.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, marcelo.schmitt1@gmail.com
References: <cover.1736201898.git.Jonathan.Santos@analog.com>
 <bde43579b41199f0c17f07dfacefcb137028e66e.1736201898.git.Jonathan.Santos@analog.com>
 <dc7f6461-6fce-4dbd-9be4-f7814053e7dc@baylibre.com>
 <Z4Lx5myE2OPDie6n@JSANTO12-L01.ad.analog.com>
 <20250112121229.5bc7545c@jic23-huawei>
 <Z4WtbRG3gWQCwTmE@JSANTO12-L01.ad.analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <Z4WtbRG3gWQCwTmE@JSANTO12-L01.ad.analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/13/25 6:18 PM, Jonathan Santos wrote:
> On 01/12, Jonathan Cameron wrote:
>> On Sat, 11 Jan 2025 19:34:14 -0300
>> Jonathan Santos <jonath4nns@gmail.com> wrote:
>>
>>> On 01/07, David Lechner wrote:
>>>> On 1/7/25 9:24 AM, Jonathan Santos wrote:  
>>>>> Add adi,sync-in-spi property to enable synchronization over SPI.
>>>>> This should be used in the case when the GPIO cannot provide a
>>>>> pulse synchronous with the base MCLK signal.
>>>>>
>>>>> User can choose between SPI, GPIO synchronization or neither of them,
>>>>> but only if a external pulse can be provided, for example, by another
>>>>> device in a multidevice setup.
>>>>>   
>>>>
>>>> While we are fixing up these bindings, we could add some more trivial things,
>>>> like power supplies.
>>>>
>>>> Also, the interrupt property could use a description since the chip has multiple
>>>> output pins. I assume it means the /DRDY pin?
>>>>   
>>>
>>> Right! Yes, the interrupt pin refers to the /DRDY.
>>>
>>>>> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
>>>>> ---
>>>>>  .../bindings/iio/adc/adi,ad7768-1.yaml        | 24 ++++++++++++++++++-
>>>>>  1 file changed, 23 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.yaml
>>>>> index 3ce59d4d065f..55cec27bfe60 100644
>>>>> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.yaml
>>>>> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.yaml
>>>>> @@ -47,6 +47,15 @@ properties:
>>>>>        in any way, for example if the filter decimation rate changes.
>>>>>        As the line is active low, it should be marked GPIO_ACTIVE_LOW.
>>>>>  
>>>>> +  adi,sync-in-spi:  
>>>>
>>>> If this is saying that SYNC_OUT is connected to SYNC_IN, then I think the name
>>>> should be something like adi,sync-in-sync-out. SPI seems irrelevant here since
>>>> we should just be describing how things are wired up, not how it is being used.
>>>>
>>>> But if we also need to consider the case where SYNC_OUT of one chip is connected
>>>> to SYNC_IN of another chip, we might want to consider using trigger-source
>>>> bindings instead (recently standardized in dtschema).
>>>>   
>>>
>>> Do you mean the trigger-sources used for LEDs? I can try to see if it works, but would it
>>> handle the non-GPIO case? While testing a multidevice setup, I found it simpler to 
>>> have a single device to manage everything. It lets us toggle the GPIO or /SYNC_OUT
>>> without referencing another device and makes simultaneous buffered reads easier.
>>
>> Daisy-chain mode (figure 131)?  In that case we normally end up with a single presented device
>> with a 'lot' of channels. (See the electric car style battery charging chips, those can
>> be chained in very large numbers!)
>>
> 
> Actually, it is more like Figure 133 , but the premise is similar. We
> have here a Quad setup.
> 
>> Probably similar for figure 133 (which is a dual SPI setup) as the SPI clock must
>> be shared so we still see it over a single interface.
>>
> 
> We could view them as a single device with multiple channels, and since
> the goal is to read them simultaneously with buffered reads, some parameters
> such as sampling frequency should be equal to all devices.
> 
> However, there are some implications: If we do the above, we have
> limitations in the customization of the "channels", they would have
> the same filter, frequency modulator and scale (we plan to add support
> for ADAQ776x-1 series, which include PGA and AAF gain).
> 
> To customize them separetely, we would need to assert only the
> corresponding chip select, which is only possible with different
> instances, as far as I know.

FYI, I've been discussing with the HDL folks at ADI about how we could make a
multi-bus SPI controller, similar to controllers used for parallel SPI flash
memories that are used as a single logical device. So that is the solution I
am hoping for here. It would would allow a single IIO device instance for
multiple chips. But the SPI controller would allow addressing individual chips
for configuration and addressing all chips at the same time for reading sample
data.

> 
>> If those are the only two options then keeping this within the driver is fine.
>> For daisy chain there are examples in tree and it normally means we have to
>> have a DT parameter that says how long the chain is, though we maybe can
>> do that with per channel nodes as well if those make sense here.
>>
>> Jonathan
>>
> 
> Those are the options in the datasheet and in hardware so far. I was 
> considering other scenarios in case the user combine them differently.
> I believe keping within the driver covers the main cases. 
> 

