Return-Path: <devicetree+bounces-101501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB31972035
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 19:19:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7B0EE1C2352A
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 17:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92F51171066;
	Mon,  9 Sep 2024 17:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="IqkLZb52"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E7516E89B
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 17:19:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725902347; cv=none; b=h2u8yO16Hb9Xc6PtVRRwwPaLAk964jRQXxG2TsiAyoV8/2kkVrs5+Tp/m82JWRyca6JqQHAvhM8ONNgSGSYxQn+qAjGMhTmvPXED1gl6XiJmU7QoXFpkdb/z9s/jbAvY21VYS3B9EYd1LAm2IlE8M2Z45QwumtmRU4uxkD0UDAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725902347; c=relaxed/simple;
	bh=zcm0C4ZqpK3PmqhUxnjNk3x4JNx07lPRvlpecKgWKr8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VCLBQQ9ZeCuCyi26maXDh9PDqKd23Nvjov7JnPwvkccWUlQJs09Dbe8b1+CdL3PH4+btVUWd4p7Ygh0QfHM8WNL4DjrEc5VmrWinzog1PDvKth6M1GehWXNLko/6v5SqehI66Go+o01JgpOzQZRyPzhvNqJWa2njXxTN/2a7lVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=IqkLZb52; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-710da8668b3so1334714a34.1
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 10:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725902343; x=1726507143; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/CDtNOVr0j0m6RG2jXnKn8Ns9ICuFZruD5/noWT7i0E=;
        b=IqkLZb52t2dbhsaTyYshIJnovYAap7rCwImlCBE2wlTTOvNHiCMPE39RjYKz0Rdf8l
         XDTFnUMWbwnEWfuP2NkmutGidjoZJfhcVkW7EdTSkPV9naLHBAuHNV/k8cWbStogx73K
         cHuBawkSy75Inz1hdqrEZdkJ6Ja/tLLznOl6Ff5FLbLJFhEbjELS+oiIUmTYVsmZfLs5
         HHhXffm9dvFdvfHGl1gKjHOTaMNoQ2vCgtf1RC8LRT3mnVBusbOouI7U4w7pPTiqJUUy
         Ed5wwH1MWZanYOL4/jcdSp7isZ6VUKb4uwy6rzcqOt91K1b5oVKYUPz7ZRiR4V2T3Cb+
         GdYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725902343; x=1726507143;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/CDtNOVr0j0m6RG2jXnKn8Ns9ICuFZruD5/noWT7i0E=;
        b=ASfjIAzS5ltS3d5KY4sDYCJkjYam/1fb/98PoPVN8RBH9YCAsBpyhhzf7SWqheTq/m
         wyAFe0QQws0qrwDOg+Wa5B6Vfo4gWPT2xH9209HK57g13NnB04YkftLGLmBnVtfvlax7
         sOEbP1cnuZVTiw67QvfMb5nwDPCUawk0n7MEKLVhh3Vx3rkO51M5H2yCwiu9V+aHM2W8
         xOyJV466KhLlzWWT3Gq+gGytaVTtX4+bM9IwLLMsSxfk2s531L7UO1RP4HDgESqZ99GW
         suq2ibCXRX0hSn6T5NZG6V/87xC8uHsw6YXWbAxhty2vmWehlPM8bA/UoNeKoPX0xrLc
         pgJA==
X-Forwarded-Encrypted: i=1; AJvYcCV8qNbpgTpKqtugDyfmsG4tmtE/49YonQpq51u+sHyiKTJSBbIrXWHnWC2Up+/uyZ3sWGO2QlY7unlC@vger.kernel.org
X-Gm-Message-State: AOJu0YyocpfxjYkvd52njyUd98lYrdYs/DuUZzTuC/jcfDDmvTREfmp+
	bTj7KLegh2BdQmQiN3kK6Tl9DsJA5GUuu01XZp4kHDu7Rv+0yDkNGs0UxgCvDHU=
X-Google-Smtp-Source: AGHT+IG7weU3i+UwAE21jUqaa/U2qmJ07moZgzPO46E0R1xdIS3Obfm71LUZ1zdqhrZRfd7mPzMCmg==
X-Received: by 2002:a05:6830:2c09:b0:70c:a98c:4ed with SMTP id 46e09a7af769-710cc25d895mr14363908a34.20.1725902343317;
        Mon, 09 Sep 2024 10:19:03 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-710d9d5ffc6sm1457036a34.41.2024.09.09.10.19.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2024 10:19:02 -0700 (PDT)
Message-ID: <66090d3e-bf6c-43ee-9dc8-7bca449d448f@baylibre.com>
Date: Mon, 9 Sep 2024 12:19:02 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/9] dt-bindings: iio: dac: ad3552r: add io-backend
 property
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Conor Dooley <conor.dooley@microchip.com>,
 Jonathan Cameron <jic23@kernel.org>
Cc: Angelo Dureghello <adureghello@baylibre.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Olivier Moysan <olivier.moysan@foss.st.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-0-87d669674c00@baylibre.com>
 <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-1-87d669674c00@baylibre.com>
 <20240908132925.331c5175@jic23-huawei>
 <20240909-dwelled-specimen-949f44c8d04d@wendy>
 <1dca9ce52e7c701c7fb6cbbc723e9dff5d0ace8b.camel@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <1dca9ce52e7c701c7fb6cbbc723e9dff5d0ace8b.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 9/9/24 9:03 AM, Nuno Sá wrote:
> On Mon, 2024-09-09 at 13:46 +0100, Conor Dooley wrote:
>> On Sun, Sep 08, 2024 at 01:29:25PM +0100, Jonathan Cameron wrote:
>>> On Thu, 05 Sep 2024 17:17:31 +0200
>>> Angelo Dureghello <adureghello@baylibre.com> wrote:
>>>
>>>> From: Angelo Dureghello <adureghello@baylibre.com>
>>>>
>>>> There is a version AXI DAC IP block (for FPGAs) that provides
>>>> a physical bus for AD3552R and similar chips. This can be used
>>>> instead of a typical SPI controller to be able to use the chip
>>>> in ways that typical SPI controllers are not capable of.
>>>>
>>>> The binding is modified so that either the device is a SPI
>>>> peripheral or it uses an io-backend.
>>>>
>>>> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
>>>
>>>>  
>>>>  required:
>>>>    - compatible
>>>> -  - reg
>>>> -  - spi-max-frequency
>>> Sort of feels like both reg and spi-max-frequency
>>> are valid things to specify. 
>>>
>>> Maybe we have an excellent IP and dodgy wiring so want
>>> to clamp the frequency (long term - don't need to support
>>> in the driver today).
>>>
>>> Maybe we have an axi_dac IP that supports multiple
>>> front end devices?  So maybe just keep reg?
>>
>> I'd like to be convinced that this incarnation of the AXI DAC IP is not
>> a spi controller and that a ref to spi-controller.yaml is not out of
>> place here. It may not be something that you'd ever use generally, given
>> the "weird" interface to it, but it does seem to be one regardless.
>>
> 
> Agreed.. As weird as it get's, it's acting as a spi controller.
> 
>> I'd also really like to know how this fits in with spi-offloads. It
>> /feels/, and I'd like to reiterate the word feels, like a rather similar
>> idea just applied to a DAC instead of an ADC.
> 
> The offload main principle is to replay a spi transfer periodically given an
> input trigger. I'm not so sure we have that same principle in here. In here I
> guess we stream data over the qspi interface based on SCLK which can look
> similar. The difference is that this IP does not need any trigger for any spi
> transfer replay (I think). 
> 

Looking at the AD3552R from a SPI offload perspective of triggered SPI
messages, I think it still works.

The trigger doesn't have to be a clock/PWM. In this case, the trigger would
be whenever the IIO buffer is full and ready to send a burst of data (not
sure if this would be a hardware or software trigger - but it works either
way).

Also, the DAC_CUSTOM_CTRL::ADDRESS register field in the AXI DAC IP core
acts as an offload to record and play back a SPI write transfer.

If we were using the AXI SPI Engine, this would be one SPI message with
two xfers, one for the address write followed by one for the data write.
The size of the data write would be the size of the IIO buffer - or in
the case of a cyclic DMA, the size of the write data would be channel
data size * num channels and the xfer would have a special cyclic offload
flag set.

So I think we could make a single binding that works for the the AXI DAC
backend/offload and the AXI SPI Engine offload. (I don't think it would
be so easy to integrate the AXI DAC into the SPI framework on the driver
side - and hopefully we won't have to, but the DT still could use the
proposed SPI offload bindings.)

    axi_dac: spi@44a70000 {
        compatible = "adi,axi-ad3225r";
        reg = <0x44a70000 0x1000>;
        dmas = <&dac_tx_dma_1 0>;
        dma-names = "tx";
        clocks = <&ref_clk>;
        #spi-offload-cells = <0>;

        #address-cells = <1>;
        #size-cells = <0>;

        dac@0 {
            compatible = "adi,ad3552r";
            reg = <0>;

            spi-max-frequency = <30000000>;
            spi-3-wire;
            spi-tx-bus-width = <4>;
            spi-rx-bus-width = <4>;

            reset-gpios = <&gpio0 92 GPIO_ACTIVE_LOW>;
            spi-offloads = <&axi_dac>;

            #address-cells = <1>;
            #size-cells = <0>;

            channel@0 {
                reg = <0>;
                adi,output-range-microvolt = <(-10000000) (10000000)>;
            };
        };
    };

    axi_spi_engine: spi@44a80000 {
        compatible = "adi,axi-spi-engine-1.00.a";
        reg = <0x44a80000 0x1000>;
        dmas = <&dac_tx_dma_2 0>;
        dma-names = "offload0-tx";
        clocks = <&ref_clk>;
        #spi-offload-cells = <1>;

        #address-cells = <1>;
        #size-cells = <0>;

        dac@0 {
            compatible = "adi,ad3552r";
            reg = <0>;

            spi-max-frequency = <30000000>;
            spi-3-wire;
            spi-tx-bus-width = <4>;
            spi-rx-bus-width = <4>;

            reset-gpios = <&gpio0 92 GPIO_ACTIVE_LOW>;
            spi-offloads = <&axi_spi_engine 0>;

            #address-cells = <1>;
            #size-cells = <0>;

            channel@0 {
                reg = <0>;
                adi,output-range-microvolt = <(-10000000) (10000000)>;
            };
        };
    };


