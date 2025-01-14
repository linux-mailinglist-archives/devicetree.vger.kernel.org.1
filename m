Return-Path: <devicetree+bounces-138398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A215A103C2
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 11:13:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 53AD23A3726
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 10:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D01C722DC4A;
	Tue, 14 Jan 2025 10:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LYLxlR76"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DC033998
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 10:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736849623; cv=none; b=ig/dpvcq3zLz7lfjbDXVb5Pei9RzOCudnMXgtFMfgzYAQD66os8cV4le5BypAu24xoyEtoQNdOvM/FoC869P+pLRkWv52heOlkkfw4WQLoifDHrhNXaodFCYNMgEyqkYWgrhlefRxqkZ/dl+5eUywXa1J1Ndl5zIhgUoKLw5x4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736849623; c=relaxed/simple;
	bh=hojoz5ADLQZcF7RdxfDDw+2MzJAaH5RmDGnu56q01cw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MuGuR+tel0TPcxnrWPpJLXfBjzGPeDm1dUt6t9BIO6Vb7YCEp11kdzBRmoCGOMKkhD2JOOSEuMLsAB1aShC8urnCGvcAaUdPa+NlXXc53s/tbaFIlSldmdBm5aconFPe/OLi1KweLi/a9PMQ4sb+5IhanOhyp265UHjbg3jBynY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LYLxlR76; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5d3cfa1da14so990293a12.1
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 02:13:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736849620; x=1737454420; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=onDwLQJsnBJFPmm1fOiNWOV2V2/OfeEnsevme4QIeyY=;
        b=LYLxlR76LGWu4mV5ZOBsJocAWkkEwPTtwLg3fghWrQirIjwvNzn14d7J4s3KMxct3T
         yEZSOXXGAOcdcOICGX8EnfY/+r2TE0ZiSBnQd41AIYwTcm5Y+m/mdHwrGMhnOPLP9a8F
         nSTLPG5qQNkb5sx3lVrI3twUd1UfGoAxFzAdUhJOfU/0XdozuCogm2lkju98eaxtjlV/
         xwnMUdElFweW9R1rAXfEhBBa4nS5+5EiDFCamlkAMcsSB/ZW0vqwlEzFbv8PYTS+QoYn
         NmnfHdc6ZqQYH54uC/n9dwh6mvfR9HkhzoXQOsuTNgIIG2+orrHniuaCX6oLGVWxh9oz
         UZfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736849620; x=1737454420;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=onDwLQJsnBJFPmm1fOiNWOV2V2/OfeEnsevme4QIeyY=;
        b=ZCQvpuQPdakMRS0DzsPWAuBwKaA9QAYxMfOTXKp78FTQRJUnglzLu1WisSZoRWc6Xu
         pWedGZKgzUe0T8KCgZqxxjP71lmR2o6+hXFgfAzs+AL/VhZhRx7QFUyv9/ROlc9hPRvQ
         NX77QG3etpjEz6u9y8LZtVOcV119P7LiYTvZISSoC2Axd8fZVPHmWYkIf//5gguF/59p
         8VtaKawszcaUq5426Cxc70sPQTW8Jv7sw0EtOJZaWVhGqqekOsPUoOaRX3DgOQT9vlCa
         +P3RQF69RXeQUYvv6RMzRmSkirYbWwFBjP929z2lcoUUHpC2/ZD2e9nAmXAYAASMwizv
         9/2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUoaAe9VabTbhiuSZmy3LXPXxhB+730/0FNhlExIt8zt0pzyHG5r7mp60stftiv8JegqgZCKvrISnMA@vger.kernel.org
X-Gm-Message-State: AOJu0YzYrusKRNYhR3Mn5oM3ZeJbo4HgixvCFN3Ik2rqBr40MAau91Jq
	6cAzehi3V7KrYoDY5kY6IJ26D0pJwtX8zM0l24pPBLvn3HUtx9JWL0s7XzuMCRQ=
X-Gm-Gg: ASbGncvz9Mj6XCLlF/1u2zkURwrETGyJ9JuWKmBZAZsR0R+i5J6zfCa606MXpkoLDZB
	smmFUPqxOLdNrivGox5PdGFSp6nVIMzyz9by2Q/LpYBzB1QzfmJVZr/l7TmgQs+bfGLV5ZVlryi
	J7kZKVlzFPt7cwwMET/ltkpjZQ17YBVLdUUkk9G6HuuqmcJoizwEpbSHr9icQFSzJvtscvJN5NC
	XOANVZw1ma41cfrZJVw3+8I9O+z9g7k/sOKQk9gU2DLTd+GB4VtZa8Ndt6L+ZN+bZuB2pw/4N7O
X-Google-Smtp-Source: AGHT+IGgnkpVyamMUhyft+dfggczs/yHwby6IDz6TiynQnKUxT5g12HieH3ic3vi60H6gnSWHwhdkg==
X-Received: by 2002:a17:907:9621:b0:a99:4a35:2400 with SMTP id a640c23a62f3a-ab2ab73bdccmr944668766b.7.1736849620286;
        Tue, 14 Jan 2025 02:13:40 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab2c95647absm605929966b.118.2025.01.14.02.13.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jan 2025 02:13:39 -0800 (PST)
Message-ID: <581275bf-11f3-4a8a-8e58-75b00c515c79@linaro.org>
Date: Tue, 14 Jan 2025 11:13:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] dt-bindings: clock: convert stm32 rcc bindings to
 json-schema
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20250114091128.528757-1-dario.binacchi@amarulasolutions.com>
 <20250114091128.528757-2-dario.binacchi@amarulasolutions.com>
 <79a90c01-9e21-4e3f-a334-6ba9e1df4150@kernel.org>
 <CABGWkvofUphcXTwBS5UBEoQ1GYpngP7gWi9Ax=WW28XKK0qoYA@mail.gmail.com>
 <54b63cfc-7a51-4b69-8b32-eb7591b2169b@kernel.org>
 <CABGWkvrYUU=HAh4uYNpZSpzeyanfp5a_xjK_178ftQyDKH=cTg@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
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
In-Reply-To: <CABGWkvrYUU=HAh4uYNpZSpzeyanfp5a_xjK_178ftQyDKH=cTg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 14/01/2025 11:00, Dario Binacchi wrote:
> On Tue, Jan 14, 2025 at 10:48 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>
>> On 14/01/2025 10:36, Dario Binacchi wrote:
>>>> Nothing improved here.
>>>
>>> In my humble opinion, there is nothing to improve. Any modification
>>> made causes the tests to fail.
>>>
>>> $ git grep st,stm32f746-rcc arch/
>>> arch/arm/boot/dts/st/stm32f746.dtsi:                    compatible =
>>> "st,stm32f746-rcc", "st,stm32-rcc";
>>> arch/arm/boot/dts/st/stm32f769-disco.dts:       compatible =
>>> "st,stm32f769-rcc", "st,stm32f746-rcc", "st,stm32-rcc";
>>>
>>> Or am I missing something?
>>
>> How can I know what you are missing if you do not show the code?
> 
> Sorry, but I still can't understand. I run multiple tests, trying to

You don't understand that I cannot improve your code if I do not see the
code? So let me rephrase: In order to tell what is wrong with some sort
of code, I need to see it. I cannot tell what is wrong with code without
seeing it.

> modify things
> based on what I understood of your suggestions, but the tests failed
> every time.
> 
> Could you kindly provide an example of what you'd like me to do?
Any qcom binding? Any other SoC binding with multiple devices?

Best regards,
Krzysztof

