Return-Path: <devicetree+bounces-22686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C508086BF
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 12:30:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5EBA1F2271C
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 11:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AD9937D30;
	Thu,  7 Dec 2023 11:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TMgvhwU0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8E1810B
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 03:30:30 -0800 (PST)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-5d3d5b10197so5413797b3.2
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 03:30:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701948630; x=1702553430; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=g6q4WDwdBGnjml+5eYgd3QDalQW3uJ07fD6FI7/knxo=;
        b=TMgvhwU0kWDRMk+6AuNNKQ9ogensEz/SqkJIUNkM5oOZRj8NBSMz0SJWMc/ml9lAJ9
         O7KjeKU63gzJixkJNoUFQI8u0p6fnG/ywHdioLgCN8i/ycPuUL4tg7x4xMOur6t13MRB
         A8opBwq2CS813x6qeg8KS1exToKh+lfHAP2lAXSQ1bZTFWPaJd83VIQe7x5Wk1+DnqdQ
         2F2OL6aJ05Ujk/ZWB91hfje56l0eeOwFmQTvuICEHg6aiohpT/qgX4g2Y5MRg+5lJonA
         jlgmYF3YzuHy/Kvbhix2V4nUmxwbZmM8mnIgJfvTK3SZgwwujbHPMt/Q8dVUc+qLwFTb
         d+GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701948630; x=1702553430;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g6q4WDwdBGnjml+5eYgd3QDalQW3uJ07fD6FI7/knxo=;
        b=MPpy9YBAPHVq0C9u9YFecIkVYSx1HamxRNE3q8kWi0D0cX/Sc0jR8twrrfV7CqJTy9
         ITyxZaqNMqsEMMhcu1kcSXsuJexvM+VqZWmGFogYwoWDOFdM+Rxxu7TwluKX5pO7wNIX
         Nz2i3+/pULtlgDWUlEH2zHi3aboCFPX+z1WVpF9a+ja6zfYJ2PZHLL5u/JJw8k43huTk
         kb4TfAiWGMgKmnHjm+m1tn01XjXUtfeXRxrgLRFuPX2EYmOQmO7FRuR2RGE/cAeRdPcy
         i7K+RDU8ZH01kflv5ju5lXEKUaDhFYwetIb6HuMu7ShR4zWmRterLoePUHXKDGreR523
         zKEQ==
X-Gm-Message-State: AOJu0Ywu1FKOjM4bhdA3mQfb5iZ+BrrTOiwDqN+1OYS6VaVn43FCJHnk
	iKmksFKi8ARJoCLT9luj25IHRA==
X-Google-Smtp-Source: AGHT+IEFIy7YvehhnYQ+9UNjhaSCyrZhwFI5h/22/oROd5dD77gPNDGqvwLUYIU3TUuYWQbM7w7VdA==
X-Received: by 2002:a81:7808:0:b0:5ca:e4a6:bb47 with SMTP id t8-20020a817808000000b005cae4a6bb47mr2179326ywc.35.1701948629850;
        Thu, 07 Dec 2023 03:30:29 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id p3-20020a0dff03000000b005d7647af8ccsm322836ywf.114.2023.12.07.03.30.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Dec 2023 03:30:29 -0800 (PST)
Message-ID: <c864f62e-0ac2-4e5e-83d3-28e493a6f6c0@linaro.org>
Date: Thu, 7 Dec 2023 12:30:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: realtek: Add Realtek DHC RTD SoC
 PCIe PHY
To: =?UTF-8?B?VFlfQ2hhbmdb5by15a2Q6YC4XQ==?= <tychang@realtek.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= <stanley_chang@realtek.com>
References: <20231201105207.11786-1-tychang@realtek.com>
 <20231201105207.11786-2-tychang@realtek.com>
 <01946883-e008-4b4c-8e2a-a73787ad9f23@linaro.org>
 <5e57f7b0f54d4a8aa52ed6e15a9af9f5@realtek.com>
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
In-Reply-To: <5e57f7b0f54d4a8aa52ed6e15a9af9f5@realtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 07/12/2023 11:10, TY_Chang[張子逸] wrote:
> Hi Krzysztof,
> 
> Thank you for the review.
> 
>> On 01/12/2023 11:52, Tzuyi Chang wrote:
>>> +  "#phy-cells":
>>> +    const: 0
>>> +
>>> +  nvmem-cells:
>>> +    maxItems: 1
>>> +    description:
>>> +      Phandle to nvmem cell that contains 'Tx swing trim'
>>> +      tuning parameter value for PCIe phy.
>>> +
>>> +  nvmem-cell-names:
>>> +    items:
>>> +      - const: tx_swing_trim
>>> +
>>> +  realtek,pcie-syscon:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>> +    description: phandle of syscon used to control PCIe MDIO register.
>>
>> Why this does not have reg property but syscon? This looks hacky.
>>
> 
> Our PCIe PHY driver needs to access two registers:
> 1. PCIe MDIO register: Utilized for configuring the PCIe PHY.
> 2. PCIe MAC Link Control and Link Status Register: Use to get the current
>   link speed for calibration purposes.
> 
> Both these registers reside within the PCIe controller registers. The PCIe
> driver has mapped these register address region, so I use regmap to access
> these registers.

Hm, isn't in such case PCIe PHY a child of the PCIe controller? How is
it with resources, like power domains or regulators?

Best regards,
Krzysztof


