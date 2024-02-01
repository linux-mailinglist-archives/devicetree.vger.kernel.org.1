Return-Path: <devicetree+bounces-37524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C495E845429
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 10:38:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0368A1C243F3
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 09:38:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 832E74DA01;
	Thu,  1 Feb 2024 09:35:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fKR08lYb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B79AA4DA0B
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 09:35:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706780138; cv=none; b=TVCySHRFhbYKDGJx5XsNCV//vu7T8STwhIY60oVKphajZ0UMIuJ/Ewgh5h5PlPFZ0IF83daFVA53TaVBVglkbLARfZxQMQRHXNkX0PJg7t6p7aRBgUGFD84IAGBnYXNIcu0cj/S/+m7jxBsUP9ZW2dp1c9NvU6SQZyRqOEe1r3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706780138; c=relaxed/simple;
	bh=ZDllaHl05SCr+3uHdTXuT0oEzPdQZpv371GP17gaYA4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dVLAjeUoRqQLaIW5WP0E3ihV9NyN8bILVD4E6hANWETBTNqP8wAIJ437B00E3M4x+beBQU8xWT+BKDtzpSJ8OcS4WEC8LuMx2oOn3AZMBeD5bSBDOQPobTiVFfoI3NvzwEht2LWN9vSgdFxjlpfZ/OmcAVQ38SSpgnsYKtpIB6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fKR08lYb; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a357cba4a32so85904766b.2
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 01:35:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706780135; x=1707384935; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HyqXM2RqPns7OmdRV2J0tJ30SgtDybOdsbla0qjmeAA=;
        b=fKR08lYbkrM4J9QQBbXECd/bj+lZ7HskbgR+e56PT32P6ImB1dmRWBzf+tnhCvFGL/
         4UdTWMAX1Gv28HIZhhRdIMXTYjAFvy+Q0WOSWOF0onbmanHjitJbsbTHRiMOfWP9Re2w
         Nu03byPtsTflU0tNlNN7l5exUazhMeD81uI/Hg70x0PhLOVlOzxXa2J2PJYTHcEWeQkT
         X0jfGJTRJqYBoHpJxbYTRXKv9u1NrO1LSRo/+OnJkKj4CFx3/roxTqwGKBjWpPR6Bw7E
         TcBqaBa0Ztb2KWifxWwgarcVdjGzrhRhQLQlh1llXhrnptTErb832ZUhRm6zSJR+ggZB
         RVDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706780135; x=1707384935;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HyqXM2RqPns7OmdRV2J0tJ30SgtDybOdsbla0qjmeAA=;
        b=DuuTbdfXVum5aGDe5zJtJehV8L25RG5bQqvpjMrhfQ2aou2C/4fLxc/BdRn99D2ZA/
         yNXTR4azK6+h8/xAZ3/qYuwhwFs32RFFYHDHOLLmTCjIcFjWsd8yCzAUO7mIuO+ttyg7
         273yuccicdx/DhNNg6WMQSttvnUbQ4l53sSQeM0O8hImEoCKwLL6nRDLcuD1e1ytOG+T
         N6+0ly/Qdf0MLoSzOnAz5PNCyK9HUjCQq0XkCHbDKyX74jIL9xF3ClQKLgOCGOVGHtPa
         86MRZYlKQcLgNltLYWjOz5nvfhUYBR/tkN/hs0MomHznGr886cZDsuKAApYOMrFWbrVL
         zO7Q==
X-Gm-Message-State: AOJu0YzK5CxRlZxk8f/Pbp6W2fiYWWHmEWKb5+4tG4qqYCJbXHI++5Mk
	0y7XE0U5UEkYlP/2D0/wC0XlMvWznb5hTY2UrvlaZH7RKf2XxcSLFwaKBYa2MdE=
X-Google-Smtp-Source: AGHT+IFC7C6ZTgZVnlcChUgICQ7l00lXxa3JRgiSmvfPutlq8w7VkeX2Me0z0MaoewEduVjVtCvkrA==
X-Received: by 2002:a17:906:f34f:b0:a35:c518:8808 with SMTP id hg15-20020a170906f34f00b00a35c5188808mr1263470ejb.30.1706780134959;
        Thu, 01 Feb 2024 01:35:34 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXi789qMnuijxBvOmllY3dSeOAsDCkm5lAvjqnc1Swbfmd67t8t/hJp8UXoHUHbkJhXZc3h2M/aed75XjZCbac1cyRQqZCDJJgAUBL44kYI8fYLTFhSnhfWS+c8DlkiGIDL0Gix+rHpsRyQcRhC0hqMKsyD5i6uzRV7gIQAmQghwW+aOkGxvoAqvlCy5BM4BJX5pE1vx9dqiXPEUK6JbCRp/I6QIunSYQ6Vw+gUACWB7MgtG7vxcPtaZw3Ot3ZJqNXzWS1MO/ZKA0hWdpHKjAPo4jAp2V61kKhtibAdSH75WgryFmfJdo83YWBHSvmPufppszpOL+C6fFTTbbK6oqD+n7jq4ryEztLXi4HIlDbVRoRWkMJdf5U+ZJjZRuxkGoLljj6NFadk0HHzQzk=
Received: from [192.168.1.20] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id ty8-20020a170907c70800b00a353d1a19a9sm5929063ejc.191.2024.02.01.01.35.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Feb 2024 01:35:34 -0800 (PST)
Message-ID: <94075be0-b91c-4147-86b1-582b124e71a0@linaro.org>
Date: Thu, 1 Feb 2024 10:35:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] w1: add UART w1 bus driver
Content-Language: en-US
To: Christoph Winklhofer <cj.winklhofer@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20240126-w1-uart-v5-0-1d82bfdc2ae9@gmail.com>
 <20240126-w1-uart-v5-3-1d82bfdc2ae9@gmail.com>
 <092a9986-5ebb-483d-9911-37a93d7cb2dd@kernel.org>
 <ZbtIPo--1hfzNmho@cjw-notebook>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 xsFNBFVDQq4BEAC6KeLOfFsAvFMBsrCrJ2bCalhPv5+KQF2PS2+iwZI8BpRZoV+Bd5kWvN79
 cFgcqTTuNHjAvxtUG8pQgGTHAObYs6xeYJtjUH0ZX6ndJ33FJYf5V3yXqqjcZ30FgHzJCFUu
 JMp7PSyMPzpUXfU12yfcRYVEMQrmplNZssmYhiTeVicuOOypWugZKVLGNm0IweVCaZ/DJDIH
 gNbpvVwjcKYrx85m9cBVEBUGaQP6AT7qlVCkrf50v8bofSIyVa2xmubbAwwFA1oxoOusjPIE
 J3iadrwpFvsZjF5uHAKS+7wHLoW9hVzOnLbX6ajk5Hf8Pb1m+VH/E8bPBNNYKkfTtypTDUCj
 NYcd27tjnXfG+SDs/EXNUAIRefCyvaRG7oRYF3Ec+2RgQDRnmmjCjoQNbFrJvJkFHlPeHaeS
 BosGY+XWKydnmsfY7SSnjAzLUGAFhLd/XDVpb1Een2XucPpKvt9ORF+48gy12FA5GduRLhQU
 vK4tU7ojoem/G23PcowM1CwPurC8sAVsQb9KmwTGh7rVz3ks3w/zfGBy3+WmLg++C2Wct6nM
 Pd8/6CBVjEWqD06/RjI2AnjIq5fSEH/BIfXXfC68nMp9BZoy3So4ZsbOlBmtAPvMYX6U8VwD
 TNeBxJu5Ex0Izf1NV9CzC3nNaFUYOY8KfN01X5SExAoVTr09ewARAQABzTRLcnp5c3p0b2Yg
 S296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+wsGUBBMBCgA+FiEE
 m9B+DgxR+NWWd7dUG5NDfTtBYpsFAmI+BxMCGwMFCRRfreEFCwkIBwIGFQoJCAsCBBYCAwEC
 HgECF4AACgkQG5NDfTtBYptgbhAAjAGunRoOTduBeC7V6GGOQMYIT5n3OuDSzG1oZyM4kyvO
 XeodvvYv49/ng473E8ZFhXfrre+c1olbr1A8pnz9vKVQs9JGVa6wwr/6ddH7/yvcaCQnHRPK
 mnXyP2BViBlyDWQ71UC3N12YCoHE2cVmfrn4JeyK/gHCvcW3hUW4i5rMd5M5WZAeiJj3rvYh
 v8WMKDJOtZFXxwaYGbvFJNDdvdTHc2x2fGaWwmXMJn2xs1ZyFAeHQvrp49mS6PBQZzcx0XL5
 cU9ZjhzOZDn6Apv45/C/lUJvPc3lo/pr5cmlOvPq1AsP6/xRXsEFX/SdvdxJ8w9KtGaxdJuf
 rpzLQ8Ht+H0lY2On1duYhmro8WglOypHy+TusYrDEry2qDNlc/bApQKtd9uqyDZ+rx8bGxyY
 qBP6bvsQx5YACI4p8R0J43tSqWwJTP/R5oPRQW2O1Ye1DEcdeyzZfifrQz58aoZrVQq+innR
 aDwu8qDB5UgmMQ7cjDSeAQABdghq7pqrA4P8lkA7qTG+aw8Z21OoAyZdUNm8NWJoQy8m4nUP
 gmeeQPRc0vjp5JkYPgTqwf08cluqO6vQuYL2YmwVBIbO7cE7LNGkPDA3RYMu+zPY9UUi/ln5
 dcKuEStFZ5eqVyqVoZ9eu3RTCGIXAHe1NcfcMT9HT0DPp3+ieTxFx6RjY3kYTGLOwU0EVUNc
 NAEQAM2StBhJERQvgPcbCzjokShn0cRA4q2SvCOvOXD+0KapXMRFE+/PZeDyfv4dEKuCqeh0
 hihSHlaxTzg3TcqUu54w2xYskG8Fq5tg3gm4kh1Gvh1LijIXX99ABA8eHxOGmLPRIBkXHqJY
 oHtCvPc6sYKNM9xbp6I4yF56xVLmHGJ61KaWKf5KKWYgA9kfHufbja7qR0c6H79LIsiYqf92
 H1HNq1WlQpu/fh4/XAAaV1axHFt/dY/2kU05tLMj8GjeQDz1fHas7augL4argt4e+jum3Nwt
 yupodQBxncKAUbzwKcDrPqUFmfRbJ7ARw8491xQHZDsP82JRj4cOJX32sBg8nO2N5OsFJOcd
 5IE9v6qfllkZDAh1Rb1h6DFYq9dcdPAHl4zOj9EHq99/CpyccOh7SrtWDNFFknCmLpowhct9
 5ZnlavBrDbOV0W47gO33WkXMFI4il4y1+Bv89979rVYn8aBohEgET41SpyQz7fMkcaZU+ok/
 +HYjC/qfDxT7tjKXqBQEscVODaFicsUkjheOD4BfWEcVUqa+XdUEciwG/SgNyxBZepj41oVq
 FPSVE+Ni2tNrW/e16b8mgXNngHSnbsr6pAIXZH3qFW+4TKPMGZ2rZ6zITrMip+12jgw4mGjy
 5y06JZvA02rZT2k9aa7i9dUUFggaanI09jNGbRA/ABEBAAHCwXwEGAEKACYCGwwWIQSb0H4O
 DFH41ZZ3t1Qbk0N9O0FimwUCYDzvagUJFF+UtgAKCRAbk0N9O0Fim9JzD/0auoGtUu4mgnna
 oEEpQEOjgT7l9TVuO3Qa/SeH+E0m55y5Fjpp6ZToc481za3xAcxK/BtIX5Wn1mQ6+szfrJQ6
 59y2io437BeuWIRjQniSxHz1kgtFECiV30yHRgOoQlzUea7FgsnuWdstgfWi6LxstswEzxLZ
 Sj1EqpXYZE4uLjh6dW292sO+j4LEqPYr53hyV4I2LPmptPE9Rb9yCTAbSUlzgjiyyjuXhcwM
 qf3lzsm02y7Ooq+ERVKiJzlvLd9tSe4jRx6Z6LMXhB21fa5DGs/tHAcUF35hSJrvMJzPT/+u
 /oVmYDFZkbLlqs2XpWaVCo2jv8+iHxZZ9FL7F6AHFzqEFdqGnJQqmEApiRqH6b4jRBOgJ+cY
 qc+rJggwMQcJL9F+oDm3wX47nr6jIsEB5ZftdybIzpMZ5V9v45lUwmdnMrSzZVgC4jRGXzsU
 EViBQt2CopXtHtYfPAO5nAkIvKSNp3jmGxZw4aTc5xoAZBLo0OV+Ezo71pg3AYvq0a3/oGRG
 KQ06ztUMRrj8eVtpImjsWCd0bDWRaaR4vqhCHvAG9iWXZu4qh3ipie2Y0oSJygcZT7H3UZxq
 fyYKiqEmRuqsvv6dcbblD8ZLkz1EVZL6djImH5zc5x8qpVxlA0A0i23v5QvN00m6G9NFF0Le
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <ZbtIPo--1hfzNmho@cjw-notebook>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 01/02/2024 08:29, Christoph Winklhofer wrote:
>>> +
>>> +static void w1_uart_remove(struct serdev_device *serdev)
>>> +{
>>> +	struct w1_uart_device *w1dev = serdev_device_get_drvdata(serdev);
>>> +
>>> +	mutex_lock(&w1dev->mutex);
>>> +
>>> +	w1_remove_master_device(&w1dev->bus);
>>> +
>>> +	mutex_unlock(&w1dev->mutex);
>>
>> This is still suspicious. You do not have serdev_device_close and you
>> want to protect from concurrent access but it looks insufficient.
>>
>> This code assumes that:
>>
>> w1_uart_remove()
>>   <-- here concurrent read/write might start
>>   mutex_lock()
>>   w1_remove_master_device()
>>   mutex_unlock()
>>   <-- now w1_uart_serdev_tx_rx() or w1_uart_serdev_receive_buf() can be
>> executed, but device is removed. So what's the point of the mutex here?
>>
>> What exactly is protected by the mutex? So far it looks like only some
>> contents of w1dev, but it does not matter, because it that memory is
>> still valid at this point.
>>
>> After describing what is protected we can think whether it is really
>> protected...
>>
>>
>>>
>>
>> Best regards,
>> Krzysztof
>>
> 
> Yes, it is still suspicious, sorry..
> 
> After w1_uart_remove, serdev is closed and w1dev is released. Therefore
> the w1-callback (w1_uart_serdev_tx_rx) must be finished before returning

I did not even go to end of w1_uart_remove(). In my code above, that
thread is still in w1_uart_remove(), just after unlocking mutex.

> from w1_uart_remove. That was the intention with the lock and trylock.

Then it does not look really protected. To be honest, w1-gpio and other
drivers also might have a race here. You can test it by adding long
sleeps in read/write paths and then trying to unbind device. Maybe this
should be fixed everywhere, but this mutex here brings more questions.


Best regards,
Krzysztof


