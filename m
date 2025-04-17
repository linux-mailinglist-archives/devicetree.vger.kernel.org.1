Return-Path: <devicetree+bounces-168285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8DDA920D9
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 17:08:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 614587A4402
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 15:06:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5221D25291D;
	Thu, 17 Apr 2025 15:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="k72PNw5+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A4A21D3EA
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 15:07:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744902476; cv=none; b=FvfykPHeQsSBgIe34Uij6jGOV3RxK6vsG67jkb5AB1vqWmEfOlPYOsPFU+VpKaYvwlvRK7RLkaczrs7YWY/2InxR4fAMJRCBJmzED4yrpmh5rmhSlY3v6uBBdpB6wQvIqEFMfzxtO8GNHVXNfy3Ot0CbiTkxourtOlCPIIUK6cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744902476; c=relaxed/simple;
	bh=Y7sBMJl9huCoJbTO8M1vR4VKFo+G40GzBvX0w6rClRQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LaBf2UO/wexlHF53kWr1XZcjfBSjfwRVwY3uSt/0eLJru6GWXdq2rcSkyOQTUSlOQrVE/D1HyKjNhZjLT3SJNkrGuJ8Cwmqa+ws9MSWcfHNIqkZPor6GcqDFYamsHEWx/9srymrrseowDum6ymkFEw/DGv2i2ov22+tPUvZBTxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=k72PNw5+; arc=none smtp.client-ip=209.85.210.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-72c3b863b8eso537696a34.2
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 08:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744902472; x=1745507272; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fO4PGom8r+nn+/7wCMZh1CHX3FkJE/YgsW+Sw+QFjaI=;
        b=k72PNw5+q0fYh1Ii9h+u2kScdyU9nAN+fbiTPZeQrCDmJOO5I2917xkd6mM0KZt+M2
         dyBFDCUW/svxMQadEE+GPC0cEZpee+UrHvWKei8KB3liNZ102VsOn0uaKhtjl7PYWuoO
         cjWsycULv95/gdurn8e1IyyCybDohAAo6q16CDvgZlMubFe8hlY1K33/1eONMZmSAzU6
         AKV0zO4nakjyeWilMsf1j6qeEQLL4b/cQPNzD3KXE0NUOJe5z0WlzOJQPvUBukF95wI9
         ZPbkRCPh0B4chRR8nUUZOPhBXv3eMQPgy2ahElv4Z5zOrG8Mihfdl5kmcOP1kLDW6Nvs
         AKJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744902472; x=1745507272;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fO4PGom8r+nn+/7wCMZh1CHX3FkJE/YgsW+Sw+QFjaI=;
        b=bkbag5ssPZsZ9w1cdnflwj7UESPcq9+NrJNbHi2ta+wwc5G3YdhPOqGwGCFQ7/TV8n
         XkA7Uml48/NJOok2jsuHVsbUUJOEEU55t0/qtJ3mnOU6kwF4LUi1J35Wr5fiWdXt1uTo
         8BFgSw+JsZ0X5Dw6+ulYpN97x7NVF/QMBrHU9DeuhifG7eRDFbX8BsjhqxKyuo2mFTzW
         GP1MH5+HQSWuUTUbC0nFdQRyCDKJOITEuziG/CXwtEN6d5Ow9gHJuXnPS+Rwa0cRrX1a
         LGxT6UZvwWgLhh9a2V7ALfEWQZMhuL0e61CXkTkQPWFZ07+0K7Rpn3cKFkLjGniYTr2s
         lDYg==
X-Forwarded-Encrypted: i=1; AJvYcCU/ttD9aG5lh1jWfS6DAmLoX3ESZIAeVO9rO8JQ7LDvRxZnBdFsC3SJDe28ZmX+jmvGyt68dpIwt8Db@vger.kernel.org
X-Gm-Message-State: AOJu0YzVJtYfgZ/3v3Qd1LrQi4SG+ppVZeXgKf5foJ5wi4AbdRcg6dEv
	+W0xgZOjegeQviwnaNDOnAokpNEY3VhVWIuN9aE9wLw3Hmz3JQwijtm1zu2fA3s=
X-Gm-Gg: ASbGncufEBG2F30kgwdNSO/T/aKamry+Lt+IUrx87EwyJQWzlCWhV/w1ody3T0HKidA
	JerZUQXqm6BlkBe2WS0KShI8Wu8/wet5fxh9h7DUd7yXzijDfkZChy27LNjE4KtIc1cd4Noiv74
	6WqloSF5zuqnNIqhYllbQWKqQRtjgxut7haanw23q9PtAG8JFY0uJo/hX8sX4VtWk6XmwJdK+kn
	4RjJsjOqgLN8xUhdzc3Wa3jZNhl+l7Ot978Q5Lh3NB5F9GMlFmRh48qqvBtZqjgzugcxVrVmnVb
	luUinUkrEkwpWN5TFGuZMXXhj7DWRgGvLoClL/nQwoIwb6GbYfxLvTxJ7eZXBmtz/Zx7yweFycs
	SA3JfeJ0TmzDmx+DOqA==
X-Google-Smtp-Source: AGHT+IEYK1dnPkBo/RCRsPA4Fw4LOSVoCMCliXwjzRUw7NtO1yHMkAzC2RAg+ysD2YBbHrA5uY1uvg==
X-Received: by 2002:a05:6808:800e:b0:401:bcaa:c52f with SMTP id 5614622812f47-401bcaad927mr147985b6e.38.1744902472319;
        Thu, 17 Apr 2025 08:07:52 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:c91b:eea3:7afd:2dee? ([2600:8803:e7e4:1d00:c91b:eea3:7afd:2dee])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-400763bab7bsm3121606b6e.45.2025.04.17.08.07.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Apr 2025 08:07:51 -0700 (PDT)
Message-ID: <d6a636c7-36df-4648-92a1-2db1ff4754e6@baylibre.com>
Date: Thu, 17 Apr 2025 10:07:50 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 02/14] dt-bindings: iio: adc: ad7768-1: add
 trigger-sources property
To: 3027a9b0-cf4a-4e55-80a7-7f0dd2a008e4@baylibre.com
Cc: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, lars@metafoo.de, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, marcelo.schmitt1@gmail.com,
 linus.walleij@linaro.org, brgl@bgdev.pl, lgirdwood@gmail.com,
 broonie@kernel.org
References: <cover.1744325346.git.Jonathan.Santos@analog.com>
 <35481552e9ce39a24a0257ab001c0bcfea1a23be.1744325346.git.Jonathan.Santos@analog.com>
 <3027a9b0-cf4a-4e55-80a7-7f0dd2a008e4@baylibre.com>
 <aABJ4UuFWDsJX6vT@JSANTO12-L01.ad.analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <aABJ4UuFWDsJX6vT@JSANTO12-L01.ad.analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/16/25 7:22 PM, Jonathan Santos wrote:
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
>>
>> ...
>>
>>> @@ -57,6 +80,15 @@ properties:
>>>    "#io-channel-cells":
>>>      const: 1
>>>  
>>> +  "#trigger-source-cells":
>>> +    description: |
>>> +      Indicates the trigger source type for each entry:
>>> +      0 = Synchronization GPIO-based trigger
>>> +      1 = Synchronization device trigger (e.g., another ad7768-1)
>>> +      2 = GPIO3 pin acting as START signal
>>> +      3 = DRDY pin acting as SPI offload trigger
>>> +    const: 1
>>> +
>>
>> 0 and 1 don't sound like trigger outputs that this ADC is providing, so don't
>> seem appropriate here. But the SYNC_OUT pin is missing from this list.
>>
>> Also, outputs could be used to trigger anything, not just SPI offload, so don't
>> need to mention that.
> 
> You mean like this:
> 
> ...
>   "#trigger-source-cells":
>     description: |
>       Cell indicates the trigger output signal: 0 = SYNC_OUT, 1 = GPIO3,
>       2 = DRDY.
> 
>     const: 1
> ...
> 
> It would be like interfacing those output pins for a generic trigger
> usage?
> 
>>

Yes this looks correct now.

I don't think this is the case, but in general, if GPIO3 could be programmed
to have different trigger signals, then we would need a 2nd cell. But IIRC,
it can only be the START signal, so 1 cell should be sufficient in this case.

