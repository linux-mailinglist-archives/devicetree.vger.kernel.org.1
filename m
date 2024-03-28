Return-Path: <devicetree+bounces-52824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCBA88A237
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:34:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 67A392C19E3
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 13:34:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05ADC12F378;
	Mon, 25 Mar 2024 10:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jj7WtGGl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBAD512F380
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 07:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711352835; cv=none; b=lGMxNob2cNjzAg81keO+vl6GPA0WSPWkuNB4SQlkKU3CO+QcJZ+asBn1AZI/zRFJku1q+fgaWnzJtKxu8jgnrbIRDkcO/7MbBSqA4tIEExWLXGBqsZYX/zyxRlm3EazLqAV4kz6QtJkDWElThJsJ4e3gBTm7fD4BeWrAH+fPWac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711352835; c=relaxed/simple;
	bh=IadDbJODmEtaAVub2QWoWHB0ZVeESeDbGUcPX/qppDI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O9FbH7MqCkFGnFgA86vGaY1UhnAFPKUVlaLxHgkzy7AFmpte5+1SGTaMxtDA3V2y3ByXmfOMRdIg4k7cMCqMypiLNPeG/v86LVlD8LHkcR8GAKAnjOc1o44KkKdaGK8zetByJirixwoVEZQHk6ibRifPi025jrd0XjX/5Jd52zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jj7WtGGl; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4148a951567so1388255e9.1
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 00:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711352832; x=1711957632; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=xumhLYs+KVuh95gAounezbHbiVBzO+mJlcvVT7drQOY=;
        b=Jj7WtGGlJUxME3JrY/PuGU0ZFmAtUTrIujZUxokh669XRQTYiQZvw/vpjrLfwmD/7D
         j13gLZi0ypNkUs+k5yoA1yu4PAoAb3O5orrsu9lBtxdUk0QVipLRiO5C+dDGL7YNV+xf
         zsEHQs8FLMPmk+c0Lgz1raV7/+01AulhxUT0XEfJXg31tlPCjTvMvFaR+bPsRJndw9QM
         YicFdD+52Hav0HnDdmcA3nmoKbdHzwgG5EK4k00ctAHZ6Dmc3FbG306XM0KjQryObQFa
         RxIfNsIwnxyAL91lgnwRCVfGs3HL+etfoUL5UnMDFqBqSupiMvxuysneETkCQ8jvMoTI
         a5fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711352832; x=1711957632;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xumhLYs+KVuh95gAounezbHbiVBzO+mJlcvVT7drQOY=;
        b=unhJQ6wtUtvdzPzBThHGAbSEImWpu6Rs2A/xn8Nr6L/JICftYbAN37YRsZtJQpn0xM
         kQR8/3g4C+bO0Pm2oMHueQ8JiHpT1LSryjAaLFu1jmZ1xvyy0T2TXhBZ79fFUHFhEyim
         o3yT+k2n6BDgjIlYJH5Pb8YykWKHpKPUEopewrHqLeXPNqYoKnOXDhfrq4ZIg/8Zxu3J
         /T5uRp+8p+Fht+LsUxsNvyMGF3NpTB/I6UXLujbJxlClibFiyd5e+dYcCnRPSqSEJhUR
         JWQ3njIxoORA7F9SsENc8ZzcORygtNa3R2TmeykI27BUX2eubMFO8MCJ3POmMTUGArIb
         UHwg==
X-Forwarded-Encrypted: i=1; AJvYcCVBkDdyUr1BBLCLSlafH5PziqQLE2cf8AwA4aG+0gTSpmsK8oYUk6kk6CpUyaQdM1Do80wOQ/sVKG8Yk0I4R/eECQQ2ktQLH5HnIw==
X-Gm-Message-State: AOJu0YxS8rUcAKdNfnx990TbDpB0tZD3rN4Ng+FHAfroHUazn/J8wsUO
	voCn0s5k4l6fcJ7v/n4EqCakYLxGjaZA0nU1LIKXUNB/K1ZJb6lLLqVO7ECPjy4=
X-Google-Smtp-Source: AGHT+IHpJeXdI3M0iS2ifybjpRiJElqQI66ICtHYg1M4AfEISfinwlumi/Z2D/IzeqVLQjtPtG0s2Q==
X-Received: by 2002:a05:600c:4505:b0:412:e50f:acaf with SMTP id t5-20020a05600c450500b00412e50facafmr4033909wmo.24.1711352832088;
        Mon, 25 Mar 2024 00:47:12 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id f17-20020a05600c155100b004148a65f12asm1373572wmg.1.2024.03.25.00.47.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Mar 2024 00:47:11 -0700 (PDT)
Message-ID: <ed975a4e-0aa5-4d48-b8be-acc66694dc48@linaro.org>
Date: Mon, 25 Mar 2024 08:47:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] dt-bindings: iio: accel: adxl345: Add spi-3wire
To: Lothar Rubusch <l.rubusch@gmail.com>
Cc: Rob Herring <robh@kernel.org>, lars@metafoo.de,
 Michael.Hennerich@analog.com, jic23@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, eraretuya@gmail.com
References: <20240322003713.6918-1-l.rubusch@gmail.com>
 <20240322003713.6918-4-l.rubusch@gmail.com>
 <20240322021739.GA3418523-robh@kernel.org>
 <CAFXKEHYrRn+vKZB9eX_RFDLanhqLsRwT1b-wxUdeZTrBrshSzA@mail.gmail.com>
 <60ed3d61-1ece-498f-97a2-7b1c618ceacb@linaro.org>
 <CAFXKEHYVhj2yhaEjJmh+qRN8YbtN_LyeQ65YX1aL-4j7FJ=r6Q@mail.gmail.com>
Content-Language: en-US
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
In-Reply-To: <CAFXKEHYVhj2yhaEjJmh+qRN8YbtN_LyeQ65YX1aL-4j7FJ=r6Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 23/03/2024 18:44, Lothar Rubusch wrote:
> On Sat, Mar 23, 2024 at 3:27 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 23/03/2024 13:04, Lothar Rubusch wrote:
>>> On Fri, Mar 22, 2024 at 3:17 AM Rob Herring <robh@kernel.org> wrote:
>>>>
>>>> On Fri, Mar 22, 2024 at 12:37:13AM +0000, Lothar Rubusch wrote:
>>>>> Provide the optional spi-3wire in the example.
>>>>
>>>> That doesn't match the diff as you don't touch the example. But really,
>>>> this should say why you need spi-3wire.
>>>
>>> I understand. The change does not add anything to the example. which
>>> is definitely wrong.
>>> Anyway I'm unsure about this change in particular. I know the spi-3wire
>>> binding exists and can be implemented. Not all spi devices offer it. Not all
>>> drivers implement it. My patch set tries to implement spi-3wire for the
>>> particular accelerometer.
>>> Do I need to add something here to dt-bindings documentation of the
>>> adxl345? Or, as an optional spi feature, is it covered anyway by
>>> documentation of optional spi bindings? So, should I refrase this particular
>>> patch or may I drop it entirely? Could you please clarify.
>>
>> Whether you need to change bindings or not, dtbs_check will tell you.
>> Just run dtbs_check on your DTS.
>>
> 
> I'm not changing upstream DTS. At most, the documentation should
> mention something.

Nothing should stop you testing from downstream DTS...

Best regards,
Krzysztof


