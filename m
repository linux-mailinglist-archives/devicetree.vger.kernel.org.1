Return-Path: <devicetree+bounces-58977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E338A3E08
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 19:34:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52DC31C203DF
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 17:34:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 533B04C637;
	Sat, 13 Apr 2024 17:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="IxACskQ4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2115F52F67
	for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 17:33:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713029639; cv=none; b=DLAdwKI9ABzd0ReQElvGry2jIVVYUabOaeLBgI9F1iMbGhZNTQvKh6iRZsjd+ZHGBMfImueeMsc2CEJWC+xJOvw74X0f01px6iHTX33XSHbL/Td3mXMKvB3JjLYbw6Czxg3/87tpnQU5y48Ka1ozMOhp0KGvySSwqyk65vTQsRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713029639; c=relaxed/simple;
	bh=MkeaTZnxqZ9jrAqaSFvVakK85urSq4+qw4OsGe4mfHc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TzmMEPWNOmxuezIpPvUTzwOhoFggpe+TOClbaR3McMNUJ8Gl+l92WPdd68b9HPg44QBHJq/VsVj1oM4kAp55pm9l59BFd93XvyFqYvtigoTQ3ve53/xsBWRPidF1z/VhFSUTLzV3RYMzUVh5G1FbG0Oa1/gMwFm0o/QnLFhQ/ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=IxACskQ4; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-2343ae31a9bso212148fac.1
        for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 10:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1713029636; x=1713634436; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8t85JUL690DnqVA/FAbRfv1UaQuRT2kvgiDMk1Zduak=;
        b=IxACskQ4R3y/P3VGFDdCHwLNjZHIk9mC65Ot+C5uBv7fb1IKUzYRXJY08oFQstnWyi
         eiXmZm45KOGYF9LOittslopzreRz5sVl6SF0wAtP/iDfFBlocEML0lkuoivxtgOTV88x
         zlIDYiT11fRKF7A9z0FuNqioXvGHPPKa9ZhTTNlcLypcE2xmsVBIX+QPQbv/O/YS4TRR
         9lvbmQrlBdDam4lTL6Xhj49t8qIb+jySN99eColw4jobHpHON0DmYOKmT+c4OU9HqkrO
         zsQYXsRb0Na6XDXeryMWsa3xagy5ia2JRksxHollZV/mqlTbLBABgyxLD8WvmXA9UR0p
         8I1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713029636; x=1713634436;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8t85JUL690DnqVA/FAbRfv1UaQuRT2kvgiDMk1Zduak=;
        b=Cmde7crGnjKXBzIdW3J080Ji42grXUlvzoBgdmxkcndJjylR7+u9U+7v53iLY4p7I2
         ydEXkTVPR2ik9Ac0EW2tRDRrFTxcM5jHYwMmuzEy4BsASJDvJeXecVOgfQmE+ATTFqgP
         qBknXs6muzmviBz2+dvPdRa5Pqw6cmjRESQ8vZZpbjxNONB1/HZcYBVBKxWX+m9Crais
         VJW6HReMLK6x/9iQhYdLURTCEqQhBin2VyQuYWeIKLjBA+teoOa/0dNo9UzN5zD29ffx
         QKhvhh2qPL4XZkLoQG/XWgym5WokQkCI8s6Yk8NWwEBJUGjB79qnxgE88CY1bjfgN/xX
         ukDg==
X-Forwarded-Encrypted: i=1; AJvYcCV1bdqHwJKTho1Hz4fUzgPHD+MPmUiWJ1cq+yFK8ikhTtGKG3svnfZv7JT8w0krky2ET9fo8vx0lCNFJBygA1pU8fTCqHUcUeZe9Q==
X-Gm-Message-State: AOJu0YzWeEgoUZp6PyDlMPEAKp4YgsuNtaOjQvTerRKYZ5iKVtxJjgfN
	dYps6Wp45kUKAykS0bh5op175Rv9aVVGVEsWXNEj6ewZVqPcQu7pE0toXFS6ggw=
X-Google-Smtp-Source: AGHT+IEFdSh3ImUHY7CzORWpfHAasaXZPoAUrHHHlwSgVOUpQ8MjmjxUQp+N9G+rXfqdoGPL5QQR4Q==
X-Received: by 2002:a05:6871:7908:b0:233:f867:73a0 with SMTP id pa8-20020a056871790800b00233f86773a0mr3051301oac.22.1713029635863;
        Sat, 13 Apr 2024 10:33:55 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id sf15-20020a056871230f00b0022f6fd4e1d9sm1416383oab.48.2024.04.13.10.33.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Apr 2024 10:33:55 -0700 (PDT)
Message-ID: <87058695-a1a6-4e68-87c5-accdb8451bf4@baylibre.com>
Date: Sat, 13 Apr 2024 12:33:54 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: adc: Add AD4000
To: Jonathan Cameron <jic23@kernel.org>,
 Marcelo Schmitt <marcelo.schmitt1@gmail.com>
Cc: Marcelo Schmitt <marcelo.schmitt@analog.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <cover.1712585500.git.marcelo.schmitt@analog.com>
 <7c877c865f0b7da28d9f1f177b3b2692b0ae20b9.1712585500.git.marcelo.schmitt@analog.com>
 <CAMknhBGKNZhGbD7pQ0Z7SMCWqxqGux0LcO_wW0XGP4hLTOwNBg@mail.gmail.com>
 <ZhVfARtMfOLOPRid@debian-BULLSEYE-live-builder-AMD64>
 <20240413171409.4575fe6f@jic23-huawei>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20240413171409.4575fe6f@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 4/13/24 11:14 AM, Jonathan Cameron wrote:
> On Tue, 9 Apr 2024 12:30:09 -0300
> Marcelo Schmitt <marcelo.schmitt1@gmail.com> wrote:
> 
>> On 04/08, David Lechner wrote:
>>> On Mon, Apr 8, 2024 at 9:32 AM Marcelo Schmitt
>>> <marcelo.schmitt@analog.com> wrote:  
>>>>

...

>>>> +
>>>> +  adi,spi-mode:
>>>> +    $ref: /schemas/types.yaml#/definitions/string
>>>> +    enum: [ single, chain ]  
>>>
>>> It sounds like there are more possible wiring configurations for these
>>> chips that I thought when suggesting reusing this binding from AD7944
>>> so we probably need more options here. (see my reply to the cover
>>> letter for the complete context of these remarks)
>>>
>>> We identified A) an additional wiring configuration where SDI of the
>>> ADC chip is wired to SDO of the SPI controller and B) a potential need
>>> to pin mux between wiring modes to work around SPI controller
>>> limitations perhaps we could omit the adi,spi-mode property and just
>>> use the standard pinctrl properties.
>>>
>>>   pinctrl-names:
> 
> I'm lost on how pinctrl makes sense here.
> Yes you are changing the modes of the pins, but not in a conventional sense
> of some register that is being updated to say now use them like this.
> The mode is dependent on the timing sequence of how the pins are used.
> Otherwise looking at it a different way it's an external wiring thing we
> aren't controlling it at all.  Is pinctrl suitable for that?
> I always thought of it as a way to change configurations of SoC pins.

Yes, this is exactly what I think we need here.

To write to the register, the chip has to be wired like this ("default"):

                                         +-------------+
     +-----------------------------------| SDO         |
     |                                   |             |
     |              +--------------------| CS          |
     |              v                    |             |
     |    +--------------------+         |     HOST    |
     |    |        CNV         |         |             |
     +--->| SDI   AD7944   SDO |-------->| SDI         |
          |        SCK         |         |             |
          +--------------------+         |             |
                    ^                    |             |
                    +--------------------| SCLK        |
                                         +-------------+

But to read sample data, the chip has to be wired in one of these
3 configurations:


3-wire mode ("single"):

                                         +-------------+
                    +--------------------| CS          |
                    v                    |             |
    VIO   +--------------------+         |     HOST    |
     |    |        CNV         |         |             |
     +--->| SDI   AD7944   SDO |-------->| SDI         |
          |        SCK         |         |             |
          +--------------------+         |             |
                    ^                    |             |
                    +--------------------| SCLK        |
                                         +-------------+

4-wire mode ("multi"):
                                         +-------------+
     +-----------------------------------| CS          |
     |                                   |             |
     |              +--------------------| GPIO        |
     |              v                    |             |
     |    +--------------------+         |     HOST    |
     |    |        CNV         |         |             |
     +--->| SDI   AD7944   SDO |-------->| SDI         |
          |        SCK         |         |             |
          +--------------------+         |             |
                    ^                    |             |
                    +--------------------| SCLK        |
                                         +-------------+

Chain mode ("chain"):

                                         +-------------+
                    +--------------------| CS          |
                    v                    |             |
          +--------------------+         |     HOST    |
          |        CNV         |         |             |
     +--->| SDI   AD7944   SDO |-------->| SDI         |
     |    |        SCK         |         |             |
    GND   +--------------------+         |             |
                    ^                    |             |
                    +--------------------| SCLK        |
                                         +-------------+


If we want to be able to both write the register and read data,
some reconfiguration is needed. It might be possible to read data
using the register-write wiring configuration, but that only
works if SDO can be set to the correct state *before* the
CS line changes. This is not something that I think most SPI
controllers can do (e.g. Marcelo mentioned in the cover letter
that RPi always returns SDO to low after every xfer while
the AXI SPI Engine leaves SDO wherever it was last).

> 
> A pointer to some precendence in another driver for using it like this
> would go some way towards convincing me.
> 
> Jonathan
> 


I didn't find much precedence for something like this, but I
found devicetree/bindings/net/mediatek-bluetooth.txt that uses
pinctrl to pull a UART Rx pin low for a bootstrap mode which
sounds very similar to what we need to do here (pull the SPI
controller SDO pin high or low for 3-wire or chain mode).

For example, if we wanted to use 3-wire mode for reading
data, we would set the pinctrl to "default" to write the
register to configure the chip during driver probe. Then
to read data, we would change the pinctrl to "single" before
doing the SPI xfer to ensure that the ADC SDI pin is pulled
high independent of what the SDO line of the SPI controller
is currently doing.



