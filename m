Return-Path: <devicetree+bounces-21807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2888180534A
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 12:46:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57F441C20998
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 11:46:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAA005789C;
	Tue,  5 Dec 2023 11:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EuMD1Tof"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C86A5C6
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 03:46:17 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a1b6d183fb8so263272366b.3
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 03:46:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701776776; x=1702381576; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fv78qdXer+K2cYsHj1Wda5sEYtJwVQWrxcN+J5upI+Q=;
        b=EuMD1TofewDeAUqEMIg4A72gMZ1OGvd53+xhVudomnNN1DGXbPpT6ZJj6UpCzAd2AZ
         obqAdGCsVdh8AK3aGABeoGmC+Toc8KSMxoc0C8XSqz3w1dWkOXJC83wlSiTQg0vMcEPI
         MP2frd9zAADARan0NdZvaWbVrOBUDF104Hwxk9hV7RkJJOMliabuywau7VOrPgk8nG1P
         MjpHeBw1WVdBPMTX2H15pTmoc62FWpO5Ss16RjTxAsA4bYoa4FnqYhSUbhwEj0J1oZ+Y
         EYfeOdFPeXEjenhg+LLi6FOS2mDKNITBKTdFTr2PnD/l64LJb1r0Oxcig+Wx9z1x605/
         lFJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701776776; x=1702381576;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fv78qdXer+K2cYsHj1Wda5sEYtJwVQWrxcN+J5upI+Q=;
        b=k4mlii28SHTRvPCnBmJ9aR4jEuhdDdnS2CTJC9WU+rIEdYDTpYLEW7p2qZCY65iQ0b
         0FnCGKz1fiybBp6D9vWy0c7TP1/IMWr5MUG2t8AxqBz1oNrTQhhp2E60fZF5ah3ykuTn
         DtQ5l/CwI/ajwdgSnV4jZtCVGS1ozxVZyiyM3Nunm5pD3CqcfbS9bIPv9fdlJCWeWP+A
         iUcsDjvpD6VzJ1QZkekiP7+oFuX1D3kRl1TujTXDEugnrSoVW9XjNNfGsUrdFKul5DMu
         Bhvi8g2anYCGbMk+NH4uL74aKehCJqjJcRMS8+g6Ug5OusOQxsdp6ZYgyytW6m37g1Vp
         4o8g==
X-Gm-Message-State: AOJu0YzS2/CE7AaZx56REhOksWO5YbgdD2y+k5XeMOuySkTitqAwW/6g
	puFlMkIEd3VGtplsdhLBa1nLR46fDLhI8WnwXRc=
X-Google-Smtp-Source: AGHT+IGWRKUvM5obHQLzcVz4hI2GDUBIk16ve2NIaGpESEDLDmAeTMDtHL5Fz2O+k/FiRyU3mEQFjQ==
X-Received: by 2002:a17:906:ae98:b0:a04:837e:87af with SMTP id md24-20020a170906ae9800b00a04837e87afmr392643ejb.33.1701776776124;
        Tue, 05 Dec 2023 03:46:16 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id um25-20020a170907cb1900b00a1c904675cfsm579010ejc.29.2023.12.05.03.46.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Dec 2023 03:46:15 -0800 (PST)
Message-ID: <bd878b2a-0704-49dc-a991-e9660940cf08@linaro.org>
Date: Tue, 5 Dec 2023 12:46:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: clock: sophgo: Add CV1800 bindings
Content-Language: en-US
To: Inochi Amaoto <inochiama@outlook.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Chen Wang <unicorn_wang@outlook.com>, Jisheng Zhang <jszhang@kernel.org>,
 qiujingbao.dlmu@gmail.com, dlan@gentoo.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <05d17d6d-490e-4524-ab1c-4ccc27b0d7bc@linaro.org>
 <IA1PR20MB4953F0086FB77F8DC46C8095BB85A@IA1PR20MB4953.namprd20.prod.outlook.com>
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
In-Reply-To: <IA1PR20MB4953F0086FB77F8DC46C8095BB85A@IA1PR20MB4953.namprd20.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/12/2023 12:24, Inochi Amaoto wrote:
>>
>> On 05/12/2023 10:43, Inochi Amaoto wrote:
>>> Add definition for the clock controller of the CV1800 series SoC.
>>>
>>
>> If there is going to be resend:
>>
>> A nit, subject: drop second/last, redundant "bindings". The
>> "dt-bindings" prefix is already stating that these are bindings.
>>
> 
> OK, thanks.
> 
>>> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
>>> Link: https://github.com/milkv-duo/duo-files/blob/main/hardware/CV1800B/CV1800B-CV1801B-Preliminary-Datasheet-full-en.pdf
>>> ---
>>
>>
>>> diff --git a/include/dt-bindings/clock/sophgo,cv1800.h b/include/dt-bindings/clock/sophgo,cv1800.h
>>> new file mode 100644
>>> index 000000000000..6a9897b34978
>>> --- /dev/null
>>> +++ b/include/dt-bindings/clock/sophgo,cv1800.h
>>> @@ -0,0 +1,174 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>
>> Why not dual-license? Checkpatch complains about this, so are you sure
>> you run it?
>>
> 
> Yes, I have run it. It seems I misunderstood the warning message.
> It only tells me it should be (GPL-2.0-only OR .*). And I think
> GPL-2.0 is ok. Thanks for your explanation, I will fix this soon.

GPL-2.0 still does not have OR.

Best regards,
Krzysztof


