Return-Path: <devicetree+bounces-26842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E650E8184D1
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 10:50:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F549285322
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 09:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C99713FFF;
	Tue, 19 Dec 2023 09:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xloQG3Hz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39FF13FEF
	for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 09:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a2358a75b69so430922066b.1
        for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 01:50:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702979421; x=1703584221; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CWCk6bOnxFbeeKOwmKk8IJzJndsJRxpZr20nDzn9e84=;
        b=xloQG3Hzf6aSlY77QnCeAluP25oZ/mAzA4MCW8C3klgXvzVpPEPwjTXRSFG3re7QE6
         TsKUO5kJSdRzonyxonD5+s2o+tkflQgchhf8GqYWlZFtHksIjs0DFu0qXH303lcWdLPz
         AqZqE1kLFF8FvLXKC6EqdeDw7cEI1j77n3nTft3kkitjOmVPeP0ECXcbUZVTKta8GDe5
         jx+bPNVS8NOO9n9kdQkyaVeVQi2hI+ZVESfX6Lv0ShNYn2whfPYEH7XhEYqLVzgUUZ4v
         6dPsKf1ip8bMFI7bDYqoBPLAi6I65jMeZcVtkynE1Z57godOnrGl8ZVr24PebTgeSQvo
         vJGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702979421; x=1703584221;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CWCk6bOnxFbeeKOwmKk8IJzJndsJRxpZr20nDzn9e84=;
        b=enAqDICGtMy84ygKI0zIzSAdCq+VflyAog29juRkUfeVOE0lrwcXEZrie3O+Uv4SrG
         +nI5SM7mywjM33/dQeQQSgl8/c47dkMpfFamtzhbuejKd60KK/YImhA+fnH8e0/If2Sd
         O0O/s2J0xVJxQ5F5XF1FIws1g5q1bpe1Pu2p2MmXUK6HUw+Eu+QYYeZvAO2YUfquRzlu
         UZgEugh4FVpeUdPA7x6iu2lLNUcoc2gVReEtZ70D8dJbQuDxwbT2brl7fkPUiTfa5HQ4
         1xP9WFlVVKb2l84N1l+Nz/6aajVthHlVpGzWbdGpolYloRThH1V2rUUjfVJlRmsuOC1I
         W7Pw==
X-Gm-Message-State: AOJu0Yz8yko9AeUWyIuKOZOMZWumn8z4nvJlXCa3fmanaSJmMsMLRGLw
	bH+99bAT0uNRuA0Q5pico/X8CQ==
X-Google-Smtp-Source: AGHT+IHSqJkE99T/w3PZpkAx+1RKzEq2IeXKOVlSl/21x5rfKVO4aD6uTAozFN4yUbRxXjNONVBHsw==
X-Received: by 2002:a17:906:f0c1:b0:a1f:5526:ead1 with SMTP id dk1-20020a170906f0c100b00a1f5526ead1mr750025ejb.58.1702979421163;
        Tue, 19 Dec 2023 01:50:21 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id e21-20020a17090681d500b00a2370c073f1sm838318ejx.23.2023.12.19.01.50.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Dec 2023 01:50:20 -0800 (PST)
Message-ID: <3d2662be-3a55-4390-bd2a-cfa5cc53510f@linaro.org>
Date: Tue, 19 Dec 2023 10:50:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] dts: iot2050: Support IOT2050-SM variant
Content-Language: en-US
To: Jan Kiszka <jan.kiszka@siemens.com>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Bao Cheng Su <baocheng.su@siemens.com>,
 Chao Zeng <chao.zeng@siemens.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Li Hua Qian <huaqian.li@siemens.com>
References: <cover.1702917360.git.jan.kiszka@siemens.com>
 <11e0b0c8b828254567a8ff89820c067cacad2150.1702917360.git.jan.kiszka@siemens.com>
 <8b3daa3c-dbf8-4286-b04e-011cd9b0efa5@linaro.org>
 <4c31adc5-3fc5-47bc-9766-6d3d1eeddb65@siemens.com>
 <fbb29d81-9ea0-4468-ad47-f6668c2be277@linaro.org>
 <de3f4778-51d6-48ab-9d4d-451f2ba01a3c@siemens.com>
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
In-Reply-To: <de3f4778-51d6-48ab-9d4d-451f2ba01a3c@siemens.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/12/2023 10:03, Jan Kiszka wrote:
> On 19.12.23 09:48, Krzysztof Kozlowski wrote:
>> On 19/12/2023 09:22, Jan Kiszka wrote:
>>>>
>>>>> +			gpios = <&wkup_gpio0 53 GPIO_ACTIVE_HIGH>;
>>>>
>>>> Ditto
>>>>
>>>
>>> This is adjusting the existing LED nodes in k3-am65-iot2050-common.dtsi,
>>> not introducing new ones. We can add the color properties in a separate
>>
>>
>> Then why aren't you overriding by phandle/label?
>>
> 
> We could do that as well if we added labels first (they don't exist so 
> far). Not seeing any difference, though.

Confusion? Your code suggests new node, thus you got review like you got.

> 
>>> patch, but the node names are now part of the kernel ABI. Changing them
>>> would break existing userland.
>>
>> You mean label. Why node names became the ABI? Which interface exposes them?
> 
> root@iot2050-debian:~# ls -l /sys/class/leds/
> total 0
> lrwxrwxrwx 1 root root 0 Dec 19 08:55 mmc0:: -> ../../devices/platform/bus@100000/4fa0000.mmc/leds/mmc0::
> lrwxrwxrwx 1 root root 0 Dec 19 08:55 mmc1:: -> ../../devices/platform/bus@100000/4f80000.mmc/leds/mmc1::
> lrwxrwxrwx 1 root root 0 Dec 14 21:12 status-led-green -> ../../devices/platform/leds/leds/status-led-green
> lrwxrwxrwx 1 root root 0 Dec 19 08:55 status-led-red -> ../../devices/platform/leds/leds/status-led-red
> lrwxrwxrwx 1 root root 0 Dec 19 08:55 user-led1-green -> ../../devices/platform/leds/leds/user-led1-green
> lrwxrwxrwx 1 root root 0 Dec 19 08:55 user-led1-red -> ../../devices/platform/leds/leds/user-led1-red
> lrwxrwxrwx 1 root root 0 Dec 19 08:55 user-led2-green -> ../../devices/platform/leds/leds/user-led2-green
> lrwxrwxrwx 1 root root 0 Dec 19 08:55 user-led2-red -> ../../devices/platform/leds/leds/user-led2-red

I replied too fast previous and did not include answer here:

You have label for that... Somehow all these nodes are half-baked,
without all the expected properties and now you call node name as ABI.
The node name is not the ABI.

Best regards,
Krzysztof


