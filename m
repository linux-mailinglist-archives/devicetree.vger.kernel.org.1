Return-Path: <devicetree+bounces-98981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8588B9683F4
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 12:02:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 149101F21124
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 10:02:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E44AB13BC26;
	Mon,  2 Sep 2024 10:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GbdhIL4J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E5A1311B6
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 10:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725271327; cv=none; b=oAIifiNLH2MsCbm8/5E8Jr9oPeDqcaTBxF0O4ttWRaOARJX1odh3Mcl5VcTTAFk3XS9PFs1SYviIhZmh2JaesMIcrPww69KRj/rEIFND4SwNqDGuq2w7uwVnHalJhoS0DEooW0diABnkQn2dk6m1J+gLXU+9+gKDsU1MqnYzb/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725271327; c=relaxed/simple;
	bh=EBknvpDUrij4cpLfzBdffa1oujXZf/ajfnRsM0wrQio=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RJZuJY64geIEeznLAvPpOqfj5gAZWCCJposa46qKDn4yFR2FLp+GvO5fZh5c1nsCphLXCVE6Yb0YXG4TtQ5gxH4wbbAOV/hY5GKf1X6O8TK7wIb/71j/djbh/ZivwejOWp6vSTxQRAhqQD2Vpgmw8iYrscHrddu+5ZdIxMCyoGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GbdhIL4J; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5c23c559defso359444a12.3
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 03:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725271324; x=1725876124; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=azCIJs0Yes3UGBt+MS43513CbCpSEhJdQPA/Vui0QvE=;
        b=GbdhIL4JUQ4EMqShlXt+cfZM881W/GyuHb/ImSbQEmjMHpKQGs2IeiXUiHjJobzTnx
         aJZgk1AG1A9puNQg36xKk6LtQmokuv/3MWHhMDLXZIaybO8I64nvwpBVMfM49MPYQW9Q
         NGx8rcZPNbTaUc5vjEs08r5ZypH6zkRsUWuxTxV6FLCjIfwESwmjejF0Uk0/C2jHr5Cj
         nexagsKjE7TU+I9XiI2PQREuEAdEXFJagG7yEMlUIovwABU14K7c5yr0fzaeHqGR+rWv
         3Km9HgDrJ+PubKafgWFQ8rpmubcPWD/BRemUZ8jEY4KTjnBwk1KroDPfi45V5DDgP5HA
         AAkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725271324; x=1725876124;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=azCIJs0Yes3UGBt+MS43513CbCpSEhJdQPA/Vui0QvE=;
        b=loEe2bPVejoKHuQnR+scTLNP64/TgyPXP8QPHy8pStPyuzrhc6RoNG9Fwb+1PsMWzb
         9r1YEm2dAjbcGiMh1xEsUUpfVkfPvfhvFJzeZmXmxCqbDvtnc4vVV9VQlEf8VA6AgIab
         4/JiqBD7U7SwF/RWCmpw5W+4LeIabT79B2VxhpfDJDq55VOChVC0CbESuY120sJBbhet
         2Zj9kwaUqpjBKLZLDh3doX58ZYf+6P8HjXH39+0Z9l+DaK78h0ChVvE3AofthoKPHYQN
         dBcX/C/AhQsY5nefCFJOUcs7qxypGnYJLbzl8b6umc4aWy4c52DqGn2HbQXm4kg60yjt
         +c9A==
X-Forwarded-Encrypted: i=1; AJvYcCW+62fdtMG3DUaA1+oaByTPZZ8AxQVjq/Vm6wCbpwInxdbRyJVkUcziVnVtMrp67lEmZ95VSNP87561@vger.kernel.org
X-Gm-Message-State: AOJu0YyoisH6aemF2BSUYBLpAgko2QFIQ1iMdQvHSbqdVgrEHf7CNN37
	QoM/lHN5FE4wKwUJ7W580CYw9B+DeCH0341ji/65Q33XcGcCfHopxOy3xDnos9E=
X-Google-Smtp-Source: AGHT+IETNIV8jXmXuTCEzIyDws1SHg/IJcZqr8A8sztUFROxV3ILjfFsLc9fgtmtMi4l37rswX3tSA==
X-Received: by 2002:a05:6402:3583:b0:5a2:7cfe:2371 with SMTP id 4fb4d7f45d1cf-5c22f902d00mr3927077a12.3.1725271324024;
        Mon, 02 Sep 2024 03:02:04 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c25bcb46f0sm1414180a12.60.2024.09.02.03.02.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Sep 2024 03:02:03 -0700 (PDT)
Message-ID: <884facf9-09dd-4454-9f39-67335b4e8c5f@linaro.org>
Date: Mon, 2 Sep 2024 12:02:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] dt-bindings: pinctrl: qcom: add missing type to GPIO
 hogs
To: Bartosz Golaszewski <brgl@bgdev.pl>,
 Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
 Bjorn Andersson <andersson@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Daire McNamara <daire.mcnamara@microchip.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Conor Dooley <conor.dooley@microchip.com>, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-riscv@lists.infradead.org
References: <20240828-dt-bindings-gpio-hog-v1-0-63b83e47d804@linaro.org>
 <20240828-dt-bindings-gpio-hog-v1-2-63b83e47d804@linaro.org>
 <CACRpkdZzF5yJQnnDsjU8cTr9Fpe7wZZXoW3K-wFYuAq2vv8XxA@mail.gmail.com>
 <CAMRc=Mcv9nfiG7N-ttS_A=Ay-5Wv2mYpT+41G1u8G4GrMQAuEA@mail.gmail.com>
 <CAMRc=Md9+pmiDSzjhNXBOzZeBLCemvxCzFMAyfFH_Qi329jG9Q@mail.gmail.com>
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
In-Reply-To: <CAMRc=Md9+pmiDSzjhNXBOzZeBLCemvxCzFMAyfFH_Qi329jG9Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 02/09/2024 11:51, Bartosz Golaszewski wrote:
> On Mon, Sep 2, 2024 at 11:50 AM Bartosz Golaszewski <brgl@bgdev.pl> wrote:
>>
>> On Sat, Aug 31, 2024 at 12:32 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>>>
>>> On Wed, Aug 28, 2024 at 11:36 AM Krzysztof Kozlowski
>>> <krzysztof.kozlowski@linaro.org> wrote:
>>>
>>>> GPIO hog nodes should define type, otherwise "dummy-hog" boolean
>>>> properties would be allowed.
>>>>
>>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>
>>> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>>>
>>> I suppose it's best of Bartosz applies this to the GPIO tree with
>>> the rest of the series?
>>>
>>> Yours,
>>> Linus Walleij
>>
>> Ah, I picked up the GPIO changes separately. No problem, I'll pick
>> this one up as well.
>>
>> Bart
> 
> Nope, I cannot, this doesn't apply to the GPIO tree.

Hm, probably there is something in pinctrl tree.

@Linus, can you grab pinctrl bits?

Best regards,
Krzysztof


