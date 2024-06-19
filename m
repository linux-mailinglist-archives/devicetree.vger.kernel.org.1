Return-Path: <devicetree+bounces-77632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C6C90F791
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 22:36:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EC8431C213B1
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 20:36:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22A0B1591FC;
	Wed, 19 Jun 2024 20:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="yDM3gZ38"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2868A15887D
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 20:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718829405; cv=none; b=ILqwCPL6HGUuYbURtvVxbgLjgDmN6w+aNBg87r5vTK+S6+7nF7+07zP7mNnjNf33Bw8e/6tGV6U1xncgpgobKIJq2I0KDqhRjbaRXtbf3FH55Chyb3WNcOLtdADG0JFVlemkFTWDt+B/fpW8OJGjemtNe9aSWNfwLA0VpY6WQBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718829405; c=relaxed/simple;
	bh=YHpZBKOTGpiCGrM0Gky8nUyTgm2aWWdFfAQxJF+pTiI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BzB50a9Eo8Zo8XzSAwrrRA//tqau4d1k+ddHdyidHyzdC+OGN5Api2BTFI5b5NfBOdbPEKvxF/7pmbcPx8f+y4LMrpGC9mxgUFcFvfVwFZmtOzIqQq9ss6tGYrwiXiuhsRdtr6CbJCnYh2bZUOT981oiBslJSqfH1wJz26zxhJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=yDM3gZ38; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-6f9398390fcso80105a34.3
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 13:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718829402; x=1719434202; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7Bhz4UEquitBq09lUPEQydDdFbLGzU2edcWDV1BKWGo=;
        b=yDM3gZ38+SEkhPab9SWoxS1ojy/76ttk668fMn93lvzh2RVce/QPaDWkkX/SGusQ+Z
         0mGDJpLCHhwhPavzTFDCD1po3DoofT1pTvRiuMeW8hexjkQve5VTvJU9fTy9SokTqOa5
         PER1LwZlmGRmxI1Lz92uxjqlLxDbZPdoxrNGKtzAHLbjc1YUpwqLqD+NypPewRp/0dUb
         9gIKEQFOFlVbC0X70A7dtywIH5lD0QtuUTEvtE6FX0wBJjTlVNU8z8oe0aZJSazSuECY
         /3e6tS/iEXoGoIMtygOfc08dLw4SwndW5qSVJTC5MqFp9VFJIvAqDECXwt3T8qd7hguK
         05YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718829402; x=1719434202;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7Bhz4UEquitBq09lUPEQydDdFbLGzU2edcWDV1BKWGo=;
        b=B+JJZHPxeUsxn3RWkCEcelLPQB+HCgIF5V6eRQxjY9mKriRYvGCbR/7diiuCpOZrUA
         MXCPrPL5iUIabzkblh0noPglxPBw3RCVgjjaRLa7CO4C0Y7oy3vndFnKMC8fyx3aIEG2
         dYvGtI+vWvRdwQfbHWFvkWEvc+UaLzkOGChqXDmw9PaKqvbTgji55FhVJ0fjcMRT8q8L
         m5chP8WENoztNErYwb/zDg/6CzqWXQpkxecEtnYjtQg//ldUod2Gr/nSPqbWF7y38s81
         qfsXOPkV1upDg9Q91HjunHed/zdDLoyGxoJfTWyuraBoM+oyc7UgGboImOP276X3a7xf
         Lh8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWOln8IhaSPL0Y9F6BtWrMjylTWxM4FgUaJ0eSX/0p8DoCKXKSXx+cElETp1JYQHltQsAe+DDwsSXkCx4WuDKInhjrH9GWCP9ZmxQ==
X-Gm-Message-State: AOJu0Yx+TGb3dJQ92M8n8YwjzsQ+8pUdeGaaAZNn8XYuT81tGHJ3GDbp
	EJUtl9u7qGNy1qr+kWPKihQaO+n/p9SKJSnLMDc11zDLmHEbFObRLBwR2J9l2vw=
X-Google-Smtp-Source: AGHT+IFB+dmoTZsjm1rjTdd/Rx0XJY6qdj/XU6ksvKxjea18nZLUHV9q0z0ee2VgHzIViuH6JCshyg==
X-Received: by 2002:a05:6870:c0cc:b0:25c:a725:f150 with SMTP id 586e51a60fabf-25ca7261c54mr2212458fac.23.1718829402194;
        Wed, 19 Jun 2024 13:36:42 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-25a6d0fd5a6sm796453fac.56.2024.06.19.13.36.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jun 2024 13:36:41 -0700 (PDT)
Message-ID: <e7a2438a-f6a3-439e-8058-937248dd5b3f@baylibre.com>
Date: Wed, 19 Jun 2024 15:36:41 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/6] spi: Enable controllers to extend the SPI protocol
 with MOSI idle configuration
To: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
Cc: Marcelo Schmitt <marcelo.schmitt@analog.com>, broonie@kernel.org,
 lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nuno.sa@analog.com, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org
References: <cover.1718749981.git.marcelo.schmitt@analog.com>
 <36eefb860f660e2cadb13b00aca04b5a65498993.1718749981.git.marcelo.schmitt@analog.com>
 <63db9349-f453-4a5b-aa09-d1857ddd8b03@baylibre.com>
 <ZnMqOAPc3IXP-eHC@debian-BULLSEYE-live-builder-AMD64>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <ZnMqOAPc3IXP-eHC@debian-BULLSEYE-live-builder-AMD64>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/19/24 1:58 PM, Marcelo Schmitt wrote:
> On 06/19, David Lechner wrote:
>> On 6/18/24 6:10 PM, Marcelo Schmitt wrote:
>>
>>

...

>>
>>> +the peripheral and also when CS is inactive.
>>
>> As I mentioned in a previous review, I think the key detail here is that the
>> MOSI line has to be in the required state during the CS line assertion
>> (falling edge). I didn't really get that from the current wording. The current
>> wording makes it sound like MOSI needs to be high indefinitely longer.
> 
> It may be that we only need MOSI high just before bringing CS low. Though,
> I don't see that info in the datasheets. How much time would MOSI be required
> to be high prior to bringing CS low? The timing diagrams for register access and
> ADC sampling in "3-wire" mode all start and end with MOSI at logical 1 (high).
> I think reg access work if MOSI is brought low after CS gets low, but sample
> read definitely don't work.
> 
> From the info available in datasheets, it looks like MOSI is indeed expected 
> to be high indefinitely amount of time. Except when the controller is clocking
> out data to the peripheral.
> 
> Even if find out the amount of time MOSI would be required high prior to CS low,
> then we would need some sort of MOSI high/low state set with a delay prior to
> active CS. That might be enough to support the AD4000 series of devices but,
> would it be worth the added complexity?
> 

It needs to happen at the same time as setting CPOL for the SCLK line for the
device that is about to have the CS asserted. So I don't think we are breaking
new ground here. Typically, in most datasheets I've seen they tend to say
something like 2 ns before the CS change. So in most cases, I don't think
anyone bothers adding a delay. But if a longer delay was really needed for
a specific peripheral, we could add a SPI xfer with no read/write that has
cs_off=1 and a delay to get the correct state of both MOSI and SCLK a longer
time before the CS change.

>>
>>> index e8e1e798924f..8e50a8559225 100644
>>> --- a/include/linux/spi/spi.h
>>> +++ b/include/linux/spi/spi.h
>>> @@ -599,6 +599,12 @@ struct spi_controller {
>>>  	 * assert/de-assert more than one chip select at once.
>>>  	 */
>>>  #define SPI_CONTROLLER_MULTI_CS		BIT(7)
>>> +	/*
>>> +	 * The spi-controller is capable of keeping the MOSI line low or high
>>> +	 * when not clocking out data.
>>> +	 */
>>> +#define SPI_CONTROLLER_MOSI_IDLE_LOW    BIT(8)  /* Can idle MOSI low */
>>> +#define SPI_CONTROLLER_MOSI_IDLE_HIGH   BIT(9)  /* Can idle MOSI high */
>>
>> I don't see where these are used anywhere else in the series. They
>> seem redundant with SPI_MOSI_IDLE_LOW and SPI_MOSI_IDLE_HIGH.
>>
> Good point.
> They are currently not being used.
> Comparing with what we have for SPI_CONTROLLER_MULTI_CS, I'm thinking it may be
> handy to have dt properties to indicate controller MOSI idle capabilities.
> Does that sound reasonable?

I don't see any properties in spi-controller.yaml related to
SPI_CONTROLLER_MULTI_CS. So I don't see how a property for
the idle capabilities would be useful there.


