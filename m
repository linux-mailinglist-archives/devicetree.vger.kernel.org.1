Return-Path: <devicetree+bounces-168286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AFDA920F7
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 17:11:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9396F3B16E9
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 15:11:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8569D24290B;
	Thu, 17 Apr 2025 15:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KK68LtVB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EA9723E330
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 15:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744902706; cv=none; b=KlGs432FYVqH6/QXQg8zOczBJgE3eCB4mZ6p11a1kSsyaA0cvoMhbWju+O9cq54ZinP4ApJyr6x1rv2DfQMMCu8WIQ/JT1WiwNDEj3WOdw2hbsn/X44urXQB5DgzHTj0SMIfAf9Nk0qQl5ECae5x8XJ0yjMqOFXszs22I4v9g2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744902706; c=relaxed/simple;
	bh=yvFHMLwK2h2d7JBRpFtpvcsKnr4SEyHazVUWmW6txAk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k3XnjoQncbwHFOixUs2KIl0t8VZ4uf7i9oGW0JSIrnQ9Sj8JkKqVuY/Ri++B8sOnJmodBMMsDd06zAAWXhqXNHl/COWCb4CBK8A0YgziHEsbpbplHFhNukmg8RB5cFl3Fs/hh9lIOp2dfiPe6VMdQZ5rGnLM8mZrYHkmtTV25dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=KK68LtVB; arc=none smtp.client-ip=209.85.161.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-603ff8e915aso174953eaf.3
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 08:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744902703; x=1745507503; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0L9P9esfiiJ15Ss9T0x8gaf9PTvYUA7aID0OiSkQbnc=;
        b=KK68LtVB9dOzv5eLlsNuamTZpDgncgA7558DEPSiFEaFC3tjP/z5VZZVukTPxn5+jD
         gxOIsiAqth74mbd8QyinwTlD5RIEpo0UL+2RnWiepw7IESTmFQizO83RmN8fV1GCsoWD
         3cfca5585rgyPoDmYAjMDoTHcipis+SDJNwdNltvuNdyfv+RPM56fVBTwcwcVx0pHD0s
         SMGh0KfDPEVbjfVpnNlQwpHtYDtGiKVhkKqAs5jY/OkHD4jzO5sSMVaxmQfUNv6zC0sK
         mMjBpKUDjSEi3OYQEp5Fw04YaM0BLpwPHggPjMI1mm72Y+oQnbRFn29gIMoFRKFqxUou
         XCJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744902703; x=1745507503;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0L9P9esfiiJ15Ss9T0x8gaf9PTvYUA7aID0OiSkQbnc=;
        b=kRVskyT7SX23DN+jmFmCzTvMdekyO2l4K5LoDPaePshDKiGWbvk+F56WCWp5ExGyrz
         bQgZLLfSOfXpGDqk1hO/dzBiaPXY9a6q9hOuSf5APFxKWDvxeE3wnezxG9Obah6xGdWK
         8yXicLeSILAB74oIDR/DdlxzBKPNSDcKbXVZjllOaWki8b6kfwiP+uYK6SYMeIqxfp65
         vTmS9G9BnJQsy7BrYo5R9BxZlWLA99K717Wv6Xs/afYBDExnbC/9t7hwN3WReCRrw5nj
         y4tfV9rTAfdVUEoJzmdQ6t3oWvyHfwqbLCGZV5FXPdVVvLojA9xxg5xZr9OYzagKJCU+
         sbIg==
X-Forwarded-Encrypted: i=1; AJvYcCW5nqTM8Dy8hTzeAmaIBE9XGQTnfoWfGz0p03mHWp8fw2a2SiVgl8bWJI+1iBllXfvS0eP2HAKUMuiT@vger.kernel.org
X-Gm-Message-State: AOJu0YwR689zkMBwMgpS2ufkwcRHCLRQvcbrFFElfvwsmV5HWoOZF4G7
	7qJMeYCSU9AQqIDzPHNGmVuW2II/GCG7+BHXT5XTLEh0Lem4Y1yd8Q3iL97O0CM=
X-Gm-Gg: ASbGnctKSTo5DwEfm4CEa6foNQYF88qlQoqdsc0um+IJaIw7TTSU2XEB+nGExrTJ4zC
	zhZnQARzwfrjzBH1oa4Z0bXWIAfaIBGtlqqZ7xc/TmBCD4h25qtnQXSU/eRkGbcgC8mvMHYhwZi
	tq5iBNDzSlp843mq01JUybYY2P4kbXf6p1LUBTyLP29I9d+hFBvzeGxFcl9NOLMQJwPLP9JUe8M
	tt3TB22ky+1xk9UdKke4wVVpGhTh37iJzdD7VtGm1FPigRIncEQ+x2jeR6TDDL/vCEzNpSWXo+Q
	LltCy0tStL6yqryyH2JOWtY4u6Qnf/di/mKUBefmKjnppSNuZ+b+a/iW6Zd0HBXvctePn/dWeVG
	wcbTw9uY67Lg9/0y+eg==
X-Google-Smtp-Source: AGHT+IFStVeBeRR7RoXHH60e1pdUQR3p7PQGLfHkyNvneFyV7pVJ0YJJDGBcw2f+hRUVDosmWlKY/Q==
X-Received: by 2002:a05:6871:d087:b0:2bc:7342:1a6c with SMTP id 586e51a60fabf-2d4d2b37e45mr3858264fac.19.1744902703549;
        Thu, 17 Apr 2025 08:11:43 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:c91b:eea3:7afd:2dee? ([2600:8803:e7e4:1d00:c91b:eea3:7afd:2dee])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72e73e67444sm3208250a34.63.2025.04.17.08.11.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Apr 2025 08:11:41 -0700 (PDT)
Message-ID: <a5729091-af6f-4549-8cda-ca2778346437@baylibre.com>
Date: Thu, 17 Apr 2025 10:11:40 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 02/14] dt-bindings: iio: adc: ad7768-1: add
 trigger-sources property
To: 938b950b-4215-4358-a888-6f6c9aab48e8@baylibre.com
Cc: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, lars@metafoo.de, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, marcelo.schmitt1@gmail.com,
 linus.walleij@linaro.org, brgl@bgdev.pl, lgirdwood@gmail.com,
 broonie@kernel.org
References: <cover.1744325346.git.Jonathan.Santos@analog.com>
 <35481552e9ce39a24a0257ab001c0bcfea1a23be.1744325346.git.Jonathan.Santos@analog.com>
 <938b950b-4215-4358-a888-6f6c9aab48e8@baylibre.com>
 <aABGfv+9KxEt5sAq@JSANTO12-L01.ad.analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <aABGfv+9KxEt5sAq@JSANTO12-L01.ad.analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/16/25 7:08 PM, Jonathan Santos wrote:
> On 04/11, David Lechner wrote:
>> On 4/11/25 10:56 AM, Jonathan Santos wrote:
>>> In addition to GPIO synchronization, The AD7768-1 also supports
>>> synchronization over SPI, which use is recommended when the GPIO
>>> cannot provide a pulse synchronous with the base MCLK signal. It
>>> consists of looping back the SYNC_OUT to the SYNC_IN pin and send
>>> a command via SPI to trigger the synchronization.
>>>
>>> Introduce the 'trigger-sources' property to support SPI-based
>>> synchronization, along with additional optional entries for the SPI
>>> offload trigger and the START signal via GPIO3.
>>>
>>> While at it, add description to the interrupts property.
>>>
>>> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
>>> ---

...

>>> +      Supports up to three entries, each representing a different type of
>>> +      trigger:
>>> +
>>> +        - First entry specifies the device responsible for driving the
>>> +          synchronization (SYNC_IN) pin, as an alternative to adi,sync-in-gpios.
>>> +          This can be a `gpio-trigger` or another `ad7768-1` device. If the
>>> +          device's own SYNC_OUT pin is internally connected to its SYNC_IN pin,
>>> +          reference the device itself or omit this property.
>>> +        - Second entry optionally defines a GPIO3 pin used as a START signal trigger.
>>> +        - Third entry specifies a GPIO line to act as a trigger for SPI offload.
>>
>> SPI offload is part of the SPI controller, not the ADC chip, so doesn't
>> make sense to have that binding here. In that case, the ADC is the
>> trigger-source provider, not consumer.
> 
> Right! Maybe a silly question, but this means we would have then two trigger-sources 
> defined, one in the spi controller node and other in the adc node, right? like
> this:
> 
> spi_controller: spi@44a00000 {
> 	...
> 	trigger-sources = <&offload_trigger_source>;
> 	...
> 	adc0@ {
> 	...
> 		trigger-sources = <&sync_trigger_source>;
> 		#trigger-source-cells = <1>;
> 	...
> 	}
> }

Yes, this looks correct. And for the case of SYNC_OUT connected to SYNC_IN on
the ADC itself, we could omit trigger-sources = <&sync_trigger_source>;.


