Return-Path: <devicetree+bounces-184421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6645DAD3F13
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 18:35:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1CBAA189FADC
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 16:36:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8639241131;
	Tue, 10 Jun 2025 16:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jzhqHtt/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6703435897
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 16:35:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749573349; cv=none; b=i00JAI9IYYsRcSqQUMxSOVrS1ewQtwPQBX/9C+ewELqOWUvvtP3Rgrub3VPq9BCdVQ+gJVe0f4+qkFNTaIiKe2mSsHmdZm++xqGkiIlQv46ugvvA7XGiQwJhD9+s/Pvcg2cJvnE01f7lDqcaPgzcp/YGpxvaSvJnZANwSeKxjJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749573349; c=relaxed/simple;
	bh=BoFxGoKvLCwi0r5nMSq/smpqIiW/LFaahTEZQWqCIsE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Nleo1xS0apzryTKS1PIQh6CSUaBJyZwJGAPt69y1pFjRjbhCEbK8UDVTduZMNM/pqqhztfjlG+RrkmfFa+jifd78ZaotZkc2VhG13yn9o4tjdBYpJTXXKXNntfvmxhm1WhzG5TZul+nuKpN4nQe9b9fw8l+cQvZwUaKPd6iqLks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jzhqHtt/; arc=none smtp.client-ip=209.85.166.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-86cf3a3d4ccso501823839f.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 09:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749573346; x=1750178146; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=337Fs/acVtHLrHpa6wOAa15lKx7cyXodEH1eYODanBI=;
        b=jzhqHtt/a/O83NFuaTjaj75asbusBmiajr/4FC3bfI5ujRR0wm8OaONAjPRmegtCuc
         nuYQskzxhR7PwxjleWHM4/HkTICJUrXB2KwrNtU8xiVCsGe9Spi2jjGzVlzjSV9JZODg
         sxspISGz37Y8fmcX+PU5Hg3R4quLSqoUA+T50KhA20RpbR9TxQAWLP4cTrbV2bdyxM6N
         dF7hNbeti3s4EF90Tp1RyIBJPQUT1SkhLWovmojWNGytn6/127HUINTfvBEKL6DLcy5Y
         DrBdqSSAXF273XdljF85CECHl2ejjIcvSAFkfaxlWpGdJRyb2/AR2DsQGclxqtXmIx88
         o9Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749573346; x=1750178146;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=337Fs/acVtHLrHpa6wOAa15lKx7cyXodEH1eYODanBI=;
        b=YXswN5ESH1J1NyD9ThJD5SObyHztgDXYkVLqH1COqGse7gvmiFYLQemhYfCM+t1Ay4
         /+/v3IXMX6DDzloa1AvPLhQ+cIZojFCoTxZ/fT9fphZ4l12ehJerYO9w8768mQ34AppJ
         u7n3CS0O+/iXcpFdiwBrG0krCxSKN9hYFqXiIe0iq/ufzUUM51abi9qVf8DYfBn6rWMv
         rbGDc7v9+rtXreUylj711AzV+c8Uz23obdT/nrPsZACddQmoUqQAg2F5ahbHzZgBvfbg
         WgSGKXbWjZyMIrECRZJtXNKT/puvZwPI5dkCHEULlS/25eW9zptVqDqFMK7xWXW6EbRV
         Edfw==
X-Forwarded-Encrypted: i=1; AJvYcCXt9riPC67KA8dx2kVdcFBPN62P7TbwXK3AMov8eD/LBUAiSVMBw+TRROLw5v9MRRRJysXR+xpj0uQ9@vger.kernel.org
X-Gm-Message-State: AOJu0YyypCyNPEv7XUi4OSa7JXcv4ZqwgeBiu06G2bA3o41BmEGRlSvU
	2DHcIK+kgsHaKNvUWBFeiko7gGauUkjSDb9gnpvGbNFsseMXTIo7evYu16Cr/RzL+9bX4qjpC5a
	2f78M
X-Gm-Gg: ASbGnctpVnZ7TXZq2Ei4W2uB3ThRr892mzppZVHhOAKPyaUPopXhZo8F5jllHM0uUu/
	ut9i8sM4P41CBvQf5QVYxpg6XJ73wUFP9bS8+TbOotYRPUlcHRU8kzRxbXGuxW9OLvHFJXMNwL+
	HpI1S3Bh5ftu2IH6yy3jv9CLLY5TtLGO+CylxkvSpBdgHhBpsP/48vDFd9LWdxEMZ1vCSQoMfBY
	1APnMaccrS1ctaWgbFuvCkw12HtdJDswN6JVb8qbbcopiTjAxQ34gT1B16CUXtBuXU620IRjnfb
	f+kmu/IufPxM1jf0g/ICTCUkUeQV5yrFWxgOBAIHcRC8ID+UJt7taL6xz1fkMA/9mWA44wfQ7hF
	6xiqiYbsl/x6y6G6RCY1pESDJsKslejptzJvx
X-Google-Smtp-Source: AGHT+IFKN7q+KfnRdAYUgSFfIsNqsRvnCQQh5WKK0QN04pgRZrP7ovwBO6O0oZMuTYIpSjBWFhM7ig==
X-Received: by 2002:a05:6871:5211:b0:2c2:3eb4:e53 with SMTP id 586e51a60fabf-2ea92c312efmr418737fac.37.1749573335756;
        Tue, 10 Jun 2025 09:35:35 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:eb6c:30d1:632b:494? ([2600:8803:e7e4:1d00:eb6c:30d1:632b:494])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2ea073406c7sm2477362fac.36.2025.06.10.09.35.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 09:35:35 -0700 (PDT)
Message-ID: <9fdbcb45-ed9a-4449-9248-9bc1d5593fa9@baylibre.com>
Date: Tue, 10 Jun 2025 11:35:33 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: iio: adc: adding support for PAC194X
To: Marius.Cristea@microchip.com, jic23@kernel.org, nuno.sa@analog.com,
 andy@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 broonie@kernel.org, devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250606093929.100118-1-marius.cristea@microchip.com>
 <20250606093929.100118-2-marius.cristea@microchip.com>
 <92c36ad9-5f8e-4ba7-9af4-9cb640f0aa5c@baylibre.com>
 <d364524bad53f5c665071287f55a96e28dc9b231.camel@microchip.com>
 <db78ac20-9b58-49d1-ba38-cc269eaff254@baylibre.com>
 <a9902463d1f29993f13ce0bc87fcfb05472624d5.camel@microchip.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <a9902463d1f29993f13ce0bc87fcfb05472624d5.camel@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 6/10/25 11:04 AM, Marius.Cristea@microchip.com wrote:
> On Tue, 2025-06-10 at 10:22 -0500, David Lechner wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you
>> know the content is safe
>>
>> On 6/10/25 9:46 AM, Marius.Cristea@microchip.com wrote:
>>> Hi David,
>>>
>>>    Thank you for the feedback. Please see my comments below...
>>>

...

>>>>
>>>> Using Jonathan's suggestion from v2 to just have a single
>>>> property
>>>> with 3 different
>>>> ranges to chose from seems simpler that this. It would only
>>>> require
>>>> one property
>>>> and would be self-documenting. The description could be shortened
>>>> to
>>>> just a couple
>>>> of lines.
>>>
>>> I was thinking to add the range for this property, but it looks
>>> (for me
>>> at least) more complicated from the checking point of view. The
>>> driver
>>> is supporting two family of devices that has, each, 3 different
>>> voltage
>>> range as an input.
>>>
>>
>> Usually, having a consistent binding for the same thing among similar
>> devices is more important than how easy it is to implement in the
>> driver.
>>
>> Since this seems to be a common pattern, we could probably justify an
>> iio_property_match_ranges() helper function that would simplify the
>> implementation in drivers that would need to use such a property.
>> Then
>> in each driver it would just be a matter of making a static const
>> array
>> lookup table of ranges for each device and calling the helper
>> function.
> 
> Sorry for not explaining very well. I have implemented the range into
> the driver and I was working well, but I had issues defining the range
> into the device binding and the checker was failing. That was the
> reason that I've dropped the range from the binding. Also I had some
> issues enforcing a certain "available" ranges for a particular part
> into the binding.

What did you try?

The usual way is to define all possibilities and then limit it by compatible.
I think something like this should work:

patternProperties:
  "^channel@[1-4]$":
    properties:
      microchip,input-range-microvolt:
       items:
          - enum: [-32000000, -16000000, -9000000, -4500000, 0]
          - enum: [4500000, 9000000, 16000000, 32000000]


allOf:
  - if:
      properties:
        compatible:
          pattern: "^microchip,pac194"
     then:
       patternProperties:
        "^channel@[1-4]$":
          properties:
            microchip,input-range-microvolt:
              oneOf:
                - items:
                    - const: 0
                    - const: 9000000
                - items:
                    - const: -9000000
                    - const: 9000000
                - items:
                    - const: -4500000
                    - const: 4500000
              default:
                items:
                  - const: 0
                  - const: 9000000
  - if:
      properties:
        compatible:
          pattern: "^microchip,pac195"
     then:
       patternProperties:
        "^channel@[1-4]$":
          properties:
            microchip,input-range-microvolt:
              oneOf:
                - items:
                    - const: 0
                    - const: 32000000
                - items:
                    - const: -32000000
                    - const: 32000000
                - items:
                    - const: -16000000
                    - const: 16000000
              default:
                items:
                  - const: 0
                  - const: 32000000



